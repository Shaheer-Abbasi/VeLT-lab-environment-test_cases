; ModuleID = 'src/truncate.bc'
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
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [275 x i8] c"Shrink or extend the size of each FILE to the specified size\0A\0AA FILE argument that does not exist is created.\0A\0AIf a FILE is larger than the specified size, the extra data is lost.\0AIf a FILE is shorter, it is extended and the sparse extended part (hole)\0Areads as zero bytes.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"  -c, --no-create        do not create any files\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"  -o, --io-blocks        treat SIZE as number of IO blocks instead of bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"  -r, --reference=RFILE  base size on RFILE\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"  -s, --size=SIZE        set or adjust the file size by SIZE bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [191 x i8] c"\0ASIZE may also be prefixed by one of the following modifying characters:\0A'+' extend by, '-' reduce by, '<' at most, '>' at least,\0A'/' round down to multiple of, '%' round up to multiple of.\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"cor:s:\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@no_create = internal unnamed_addr global i1 false, align 1, !dbg !166
@block_mode = internal unnamed_addr global i1 false, align 1, !dbg !167
@optarg = external local_unnamed_addr global i8*, align 8
@ref_file = internal unnamed_addr global i8* null, align 8, !dbg !69
@.str.15 = private unnamed_addr constant [38 x i8] c"multiple relative modifiers specified\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"EgGkKmMPQRtTYZ0\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Invalid number\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [33 x i8] c"you must specify either %s or %s\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"--size\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"--reference\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"you must specify a relative %s with %s\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"%s was specified but %s was not\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"--io-blocks\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"cannot get the size of %s\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"cannot open %s for writing\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !71
@.str.34 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.56 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.61 = private unnamed_addr constant [216 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y,R,Q (powers of 1024) or KB,MB,... (powers of 1000).\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0A\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.65 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.66 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.68 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"io-blocks\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.77 = private unnamed_addr constant [46 x i8] c"overflow in %jd * %td byte blocks for file %s\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"%s has unusable, apparently negative size\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"overflow extending size of file %s\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"failed to truncate %s at %jd bytes\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), align 8, !dbg !168
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !173
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !178
@.str.42 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.44 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !180
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.46 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !215
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !186
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !211
@.str.1.52 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.54 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.53 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !213
@.str.4.47 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.48 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.49 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !220
@.str.81 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.82 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !226
@.str.85 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.86 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.87 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.88 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.89 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.90 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.91 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.92 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.93 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.94 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.88, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.94, i32 0, i32 0), i8* null], align 8, !dbg !262
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !274
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !292
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !322
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !329
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !294
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !331
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !280
@.str.10.97 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.95 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.98 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.96 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !299
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.108 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.109 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.110 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.111 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.112 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.113 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.114 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.115 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.116 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.117 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.118 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.119 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.120 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.121 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.126 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.127 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.128 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.129 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.130 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.131 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.132 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !337
@exit_failure = dso_local global i32 1, align 4, !dbg !345
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.143 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.144 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.161 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !351
@.str.166 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.167 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !463 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !467, metadata !DIExpression()), !dbg !468
  %3 = icmp eq i32 %0, 0, !dbg !469
  br i1 %3, label %9, label %4, !dbg !471

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !472, !tbaa !474
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !472
  %7 = load i8*, i8** @program_name, align 8, !dbg !472, !tbaa !474
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !472
  br label %65, !dbg !472

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !478
  %11 = load i8*, i8** @program_name, align 8, !dbg !478, !tbaa !474
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !478
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([275 x i8], [275 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !480
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !480, !tbaa !474
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !480
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 noundef 5) #33, !dbg !481
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !481, !tbaa !474
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #33, !dbg !481
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !485
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !485
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !486
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !486
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !487
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !487
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !488
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !488
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !489
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !489
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #33, !dbg !490
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !490
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @.str.61, i64 0, i64 0), i32 noundef 5) #33, !dbg !491
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !491, !tbaa !474
  %27 = tail call i32 @fputs_unlocked(i8* noundef %25, %struct._IO_FILE* noundef %26) #33, !dbg !491
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([191 x i8], [191 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #33, !dbg !494
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !494, !tbaa !474
  %30 = tail call i32 @fputs_unlocked(i8* noundef %28, %struct._IO_FILE* noundef %29), !dbg !494
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !495, metadata !DIExpression()) #33, !dbg !512
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !514
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #33, !dbg !514
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !500, metadata !DIExpression()) #33, !dbg !515
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %31, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !515
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #33, !dbg !512
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !508, metadata !DIExpression()) #33, !dbg !512
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !516
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !508, metadata !DIExpression()) #33, !dbg !512
  br label %33, !dbg !517

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !508, metadata !DIExpression()) #33, !dbg !512
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !525
  call void @llvm.dbg.value(metadata i8* %34, metadata !524, metadata !DIExpression()) #33, !dbg !525
  %36 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %34) #34, !dbg !527
  %37 = icmp eq i32 %36, 0, !dbg !528
  br i1 %37, label %43, label %38, !dbg !517

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !529
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !508, metadata !DIExpression()) #33, !dbg !512
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !530
  %41 = load i8*, i8** %40, align 8, !dbg !530, !tbaa !531
  %42 = icmp eq i8* %41, null, !dbg !533
  br i1 %42, label %43, label %33, !dbg !534, !llvm.loop !535

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %35, %33 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !537
  %46 = load i8*, i8** %45, align 8, !dbg !537, !tbaa !539
  %47 = icmp eq i8* %46, null, !dbg !540
  %48 = select i1 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %46, !dbg !541
  call void @llvm.dbg.value(metadata i8* %48, metadata !507, metadata !DIExpression()) #33, !dbg !512
  tail call void @emit_bug_reporting_address() #33, !dbg !542
  %49 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !543
  call void @llvm.dbg.value(metadata i8* %49, metadata !510, metadata !DIExpression()) #33, !dbg !512
  %50 = icmp eq i8* %49, null, !dbg !544
  br i1 %50, label %58, label %51, !dbg !546

51:                                               ; preds = %43
  %52 = tail call i32 @strncmp(i8* noundef nonnull %49, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i64 noundef 3) #34, !dbg !547
  %53 = icmp eq i32 %52, 0, !dbg !547
  br i1 %53, label %58, label %54, !dbg !548

54:                                               ; preds = %51
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #33, !dbg !549
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !549, !tbaa !474
  %57 = tail call i32 @fputs_unlocked(i8* noundef %55, %struct._IO_FILE* noundef %56) #33, !dbg !549
  br label %58, !dbg !551

58:                                               ; preds = %43, %51, %54
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !524, metadata !DIExpression()) #33, !dbg !552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !511, metadata !DIExpression()) #33, !dbg !512
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #33, !dbg !554
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %59, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !554
  %61 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #33, !dbg !555
  %62 = icmp eq i8* %48, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), !dbg !555
  %63 = select i1 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !555
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %61, i8* noundef %48, i8* noundef %63) #33, !dbg !555
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #33, !dbg !556
  br label %65

65:                                               ; preds = %58, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !557
  unreachable, !dbg !557
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !558 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !562 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !73 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !78, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %0, metadata !79, metadata !DIExpression()), !dbg !567
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !568, !tbaa !569
  %3 = icmp eq i32 %2, -1, !dbg !571
  br i1 %3, label %4, label %16, !dbg !572

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #33, !dbg !573
  call void @llvm.dbg.value(metadata i8* %5, metadata !80, metadata !DIExpression()), !dbg !574
  %6 = icmp eq i8* %5, null, !dbg !575
  br i1 %6, label %14, label %7, !dbg !576

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !577, !tbaa !578
  %9 = icmp eq i8 %8, 0, !dbg !577
  br i1 %9, label %14, label %10, !dbg !579

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !518, metadata !DIExpression()) #33, !dbg !580
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), metadata !524, metadata !DIExpression()) #33, !dbg !580
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #34, !dbg !582
  %12 = icmp eq i32 %11, 0, !dbg !583
  %13 = zext i1 %12 to i32, !dbg !579
  br label %14, !dbg !579

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !584, !tbaa !569
  br label %16, !dbg !585

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !586
  %18 = icmp eq i32 %17, 0, !dbg !586
  br i1 %18, label %22, label %19, !dbg !588

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !474
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !589
  br label %121, !dbg !591

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !83, metadata !DIExpression()), !dbg !567
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #34, !dbg !592
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !593
  call void @llvm.dbg.value(metadata i8* %24, metadata !84, metadata !DIExpression()), !dbg !567
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !594
  call void @llvm.dbg.value(metadata i8* %25, metadata !85, metadata !DIExpression()), !dbg !567
  %26 = icmp eq i8* %25, null, !dbg !595
  br i1 %26, label %53, label %27, !dbg !596

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !597
  br i1 %28, label %53, label %29, !dbg !598

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !86, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 0, metadata !90, metadata !DIExpression()), !dbg !599
  %30 = icmp ult i8* %24, %25, !dbg !600
  br i1 %30, label %31, label %53, !dbg !601

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !567
  %33 = load i16*, i16** %32, align 8, !tbaa !474
  br label %34, !dbg !601

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !86, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 %36, metadata !90, metadata !DIExpression()), !dbg !599
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !602
  call void @llvm.dbg.value(metadata i8* %37, metadata !86, metadata !DIExpression()), !dbg !599
  %38 = load i8, i8* %35, align 1, !dbg !602, !tbaa !578
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !602
  %41 = load i16, i16* %40, align 2, !dbg !602, !tbaa !603
  %42 = lshr i16 %41, 13, !dbg !605
  %43 = and i16 %42, 1, !dbg !605
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !606
  call void @llvm.dbg.value(metadata i64 %45, metadata !90, metadata !DIExpression()), !dbg !599
  %46 = icmp ult i8* %37, %25, !dbg !600
  %47 = icmp ult i64 %45, 2, !dbg !607
  %48 = select i1 %46, i1 %47, i1 false, !dbg !607
  br i1 %48, label %34, label %49, !dbg !601, !llvm.loop !608

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !609
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !611
  %52 = xor i1 %50, true, !dbg !611
  br label %53, !dbg !611

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !567
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !83, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %54, metadata !85, metadata !DIExpression()), !dbg !567
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #34, !dbg !612
  call void @llvm.dbg.value(metadata i64 %56, metadata !91, metadata !DIExpression()), !dbg !567
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !613
  call void @llvm.dbg.value(metadata i8* %57, metadata !92, metadata !DIExpression()), !dbg !567
  br label %58, !dbg !614

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !567
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !83, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %59, metadata !92, metadata !DIExpression()), !dbg !567
  %61 = load i8, i8* %59, align 1, !dbg !615, !tbaa !578
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !616

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !617
  %64 = load i8, i8* %63, align 1, !dbg !620, !tbaa !578
  %65 = icmp ne i8 %64, 45, !dbg !621
  %66 = select i1 %65, i1 %60, i1 false, !dbg !622
  br label %67, !dbg !622

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !83, metadata !DIExpression()), !dbg !567
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !623
  %70 = load i16*, i16** %69, align 8, !dbg !623, !tbaa !474
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !623
  %73 = load i16, i16* %72, align 2, !dbg !623, !tbaa !603
  %74 = and i16 %73, 8192, !dbg !623
  %75 = icmp eq i16 %74, 0, !dbg !623
  br i1 %75, label %89, label %76, !dbg !625

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !626
  br i1 %77, label %91, label %78, !dbg !629

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !630
  %80 = load i8, i8* %79, align 1, !dbg !630, !tbaa !578
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !630
  %83 = load i16, i16* %82, align 2, !dbg !630, !tbaa !603
  %84 = and i16 %83, 8192, !dbg !630
  %85 = icmp eq i16 %84, 0, !dbg !630
  br i1 %85, label %86, label %91, !dbg !631

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !632
  br i1 %88, label %89, label %91, !dbg !632

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !634
  call void @llvm.dbg.value(metadata i8* %90, metadata !92, metadata !DIExpression()), !dbg !567
  br label %58, !dbg !614, !llvm.loop !635

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !637
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !474
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !637
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !524, metadata !DIExpression()) #33, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !650
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !652
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !149, metadata !DIExpression()), !dbg !567
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i64 noundef 6) #34, !dbg !658
  %96 = icmp eq i32 %95, 0, !dbg !658
  br i1 %96, label %100, label %97, !dbg !660

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i64 noundef 9) #34, !dbg !661
  %99 = icmp eq i32 %98, 0, !dbg !661
  br i1 %99, label %100, label %103, !dbg !662

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !663
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !663
  br label %106, !dbg !665

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !666
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !666
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !474
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !668
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !474
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !669
  %111 = ptrtoint i8* %59 to i64, !dbg !670
  %112 = sub i64 %111, %92, !dbg !670
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !474
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !670
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !474
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !671
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !474
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !672
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !474
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !673
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !674
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
declare !dbg !675 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !679 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !683 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !689 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !694, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i8** %1, metadata !695, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i8 0, metadata !696, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i64 -1, metadata !698, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i32 0, metadata !699, metadata !DIExpression()), !dbg !755
  %5 = load i8*, i8** %1, align 8, !dbg !756, !tbaa !474
  tail call void @set_program_name(i8* noundef %5) #33, !dbg !757
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #33, !dbg !758
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #33, !dbg !759
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #33, !dbg !760
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !761
  br label %10, !dbg !762

10:                                               ; preds = %77, %2
  %11 = phi i32 [ %78, %77 ], [ 0, %2 ]
  %12 = phi i64 [ %80, %77 ], [ undef, %2 ]
  %13 = phi i1 [ true, %77 ], [ false, %2 ]
  br label %14, !dbg !762

14:                                               ; preds = %30, %10
  call void @llvm.dbg.value(metadata i8 poison, metadata !696, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i64 %12, metadata !697, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i32 %11, metadata !699, metadata !DIExpression()), !dbg !755
  %15 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #33, !dbg !763
  call void @llvm.dbg.value(metadata i32 %15, metadata !701, metadata !DIExpression()), !dbg !755
  switch i32 %15, label %92 [
    i32 -1, label %93
    i32 99, label %26
    i32 111, label %27
    i32 114, label %28
    i32 115, label %16
    i32 -2, label %87
    i32 -3, label %88
  ], !dbg !762

16:                                               ; preds = %14
  %17 = tail call i16** @__ctype_b_loc() #36, !dbg !755
  %18 = load i16*, i16** %17, align 8, !dbg !764, !tbaa !474
  %19 = load i8*, i8** @optarg, align 8, !dbg !764, !tbaa !474
  %20 = load i8, i8* %19, align 1, !dbg !764, !tbaa !578
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i16, i16* %18, i64 %21, !dbg !764
  %23 = load i16, i16* %22, align 2, !dbg !764, !tbaa !603
  %24 = and i16 %23, 8192, !dbg !764
  %25 = icmp eq i16 %24, 0, !dbg !767
  br i1 %25, label %41, label %31, !dbg !767

26:                                               ; preds = %14
  store i1 true, i1* @no_create, align 1, !dbg !768
  br label %30, !dbg !769

27:                                               ; preds = %14
  store i1 true, i1* @block_mode, align 1, !dbg !770
  br label %30, !dbg !771

28:                                               ; preds = %14
  %29 = load i8*, i8** @optarg, align 8, !dbg !772, !tbaa !474
  store i8* %29, i8** @ref_file, align 8, !dbg !773, !tbaa !474
  br label %30, !dbg !774

30:                                               ; preds = %28, %27, %26
  br label %14, !dbg !755, !llvm.loop !775

31:                                               ; preds = %16, %31
  %32 = phi i8* [ %33, %31 ], [ %19, %16 ]
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !777
  store i8* %33, i8** @optarg, align 8, !dbg !777, !tbaa !474
  %34 = load i16*, i16** %17, align 8, !dbg !764, !tbaa !474
  %35 = load i8, i8* %33, align 1, !dbg !764, !tbaa !578
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i16, i16* %34, i64 %36, !dbg !764
  %38 = load i16, i16* %37, align 2, !dbg !764, !tbaa !603
  %39 = and i16 %38, 8192, !dbg !764
  %40 = icmp eq i16 %39, 0, !dbg !767
  br i1 %40, label %41, label %31, !dbg !767, !llvm.loop !778

41:                                               ; preds = %31, %16
  %42 = phi i8* [ %19, %16 ], [ %33, %31 ], !dbg !764
  %43 = phi i8 [ %20, %16 ], [ %35, %31 ], !dbg !764
  switch i8 %43, label %50 [
    i8 60, label %47
    i8 62, label %44
    i8 47, label %45
    i8 37, label %46
  ], !dbg !779

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 2, metadata !699, metadata !DIExpression()), !dbg !755
  br label %47, !dbg !780

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 4, metadata !699, metadata !DIExpression()), !dbg !755
  br label %47, !dbg !782

46:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 5, metadata !699, metadata !DIExpression()), !dbg !755
  br label %47, !dbg !783

47:                                               ; preds = %41, %44, %45, %46
  %48 = phi i32 [ 5, %46 ], [ 4, %45 ], [ 2, %44 ], [ 3, %41 ]
  %49 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !784
  store i8* %49, i8** @optarg, align 8, !dbg !784, !tbaa !474
  br label %50, !dbg !785

50:                                               ; preds = %47, %41
  %51 = phi i8* [ %42, %41 ], [ %49, %47 ], !dbg !785
  %52 = phi i32 [ %11, %41 ], [ %48, %47 ], !dbg !755
  call void @llvm.dbg.value(metadata i32 %52, metadata !699, metadata !DIExpression()), !dbg !755
  %53 = load i16*, i16** %17, align 8, !dbg !785, !tbaa !474
  %54 = load i8, i8* %51, align 1, !dbg !785, !tbaa !578
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i16, i16* %53, i64 %55, !dbg !785
  %57 = load i16, i16* %56, align 2, !dbg !785, !tbaa !603
  %58 = and i16 %57, 8192, !dbg !785
  %59 = icmp eq i16 %58, 0, !dbg !786
  br i1 %59, label %70, label %60, !dbg !786

60:                                               ; preds = %50, %60
  %61 = phi i8* [ %62, %60 ], [ %51, %50 ]
  %62 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !787
  store i8* %62, i8** @optarg, align 8, !dbg !787, !tbaa !474
  %63 = load i16*, i16** %17, align 8, !dbg !785, !tbaa !474
  %64 = load i8, i8* %62, align 1, !dbg !785, !tbaa !578
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i16, i16* %63, i64 %65, !dbg !785
  %67 = load i16, i16* %66, align 2, !dbg !785, !tbaa !603
  %68 = and i16 %67, 8192, !dbg !785
  %69 = icmp eq i16 %68, 0, !dbg !786
  br i1 %69, label %70, label %60, !dbg !786, !llvm.loop !788

70:                                               ; preds = %60, %50
  %71 = phi i8* [ %51, %50 ], [ %62, %60 ], !dbg !785
  %72 = phi i8 [ %54, %50 ], [ %64, %60 ], !dbg !785
  switch i8 %72, label %77 [
    i8 43, label %73
    i8 45, label %73
  ], !dbg !789

73:                                               ; preds = %70, %70
  %74 = icmp eq i32 %52, 0, !dbg !791
  br i1 %74, label %77, label %75, !dbg !794

75:                                               ; preds = %73
  %76 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #33, !dbg !795
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %76) #33, !dbg !795
  tail call void @usage(i32 noundef 1) #37, !dbg !797
  unreachable, !dbg !797

77:                                               ; preds = %73, %70
  %78 = phi i32 [ %52, %70 ], [ 1, %73 ], !dbg !755
  call void @llvm.dbg.value(metadata i32 %78, metadata !699, metadata !DIExpression()), !dbg !755
  %79 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #33, !dbg !798
  %80 = tail call i64 @xdectoimax(i8* noundef nonnull %71, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* noundef %79, i32 noundef 0) #33, !dbg !799
  call void @llvm.dbg.value(metadata i64 %80, metadata !697, metadata !DIExpression()), !dbg !755
  %81 = and i32 %78, -2, !dbg !800
  %82 = icmp eq i32 %81, 4, !dbg !800
  %83 = icmp eq i64 %80, 0
  %84 = select i1 %82, i1 %83, i1 false, !dbg !800
  br i1 %84, label %85, label %10, !dbg !800, !llvm.loop !775

85:                                               ; preds = %77
  %86 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #33, !dbg !802
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %86) #33, !dbg !802
  unreachable, !dbg !802

87:                                               ; preds = %14
  tail call void @usage(i32 noundef 0) #37, !dbg !803
  unreachable, !dbg !803

88:                                               ; preds = %14
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !804, !tbaa !474
  %90 = load i8*, i8** @Version, align 8, !dbg !804, !tbaa !474
  %91 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)) #33, !dbg !804
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* noundef %90, i8* noundef %91, i8* noundef null) #33, !dbg !804
  tail call void @exit(i32 noundef 0) #35, !dbg !804
  unreachable, !dbg !804

92:                                               ; preds = %14
  tail call void @usage(i32 noundef 1) #37, !dbg !805
  unreachable, !dbg !805

93:                                               ; preds = %14
  %94 = load i32, i32* @optind, align 4, !dbg !806, !tbaa !569
  %95 = sext i32 %94 to i64, !dbg !807
  %96 = getelementptr inbounds i8*, i8** %1, i64 %95, !dbg !807
  call void @llvm.dbg.value(metadata i8** %96, metadata !695, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %94), metadata !694, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !755
  %97 = load i8*, i8** @ref_file, align 8, !dbg !808, !tbaa !474
  %98 = icmp eq i8* %97, null, !dbg !808
  %99 = xor i1 %98, true, !dbg !810
  %100 = or i1 %13, %99, !dbg !810
  br i1 %100, label %105, label %101, !dbg !810

101:                                              ; preds = %93
  %102 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #33, !dbg !811
  %103 = tail call i8* @quote_n(i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #33, !dbg !811
  %104 = tail call i8* @quote_n(i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)) #33, !dbg !811
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %102, i8* noundef %103, i8* noundef %104) #33, !dbg !811
  tail call void @usage(i32 noundef 1) #37, !dbg !813
  unreachable, !dbg !813

105:                                              ; preds = %93
  br i1 %98, label %114, label %106, !dbg !814

106:                                              ; preds = %105
  %107 = xor i1 %13, true, !dbg !816
  %108 = icmp ne i32 %11, 0
  %109 = select i1 %107, i1 true, i1 %108, !dbg !816
  br i1 %109, label %114, label %110, !dbg !816

110:                                              ; preds = %106
  %111 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #33, !dbg !817
  %112 = tail call i8* @quote_n(i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #33, !dbg !817
  %113 = tail call i8* @quote_n(i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)) #33, !dbg !817
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %111, i8* noundef %112, i8* noundef %113) #33, !dbg !817
  tail call void @usage(i32 noundef 1) #37, !dbg !819
  unreachable, !dbg !819

114:                                              ; preds = %106, %105
  %115 = load i1, i1* @block_mode, align 1, !dbg !820
  %116 = xor i1 %115, true, !dbg !822
  %117 = or i1 %13, %116, !dbg !822
  br i1 %117, label %122, label %118, !dbg !822

118:                                              ; preds = %114
  %119 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #33, !dbg !823
  %120 = tail call i8* @quote_n(i32 noundef 0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0)) #33, !dbg !823
  %121 = tail call i8* @quote_n(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #33, !dbg !823
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %119, i8* noundef %120, i8* noundef %121) #33, !dbg !823
  tail call void @usage(i32 noundef 1) #37, !dbg !825
  unreachable, !dbg !825

122:                                              ; preds = %114
  %123 = icmp slt i32 %94, %0, !dbg !826
  br i1 %123, label %126, label %124, !dbg !828

124:                                              ; preds = %122
  %125 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #33, !dbg !829
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %125) #33, !dbg !829
  tail call void @usage(i32 noundef 1) #37, !dbg !831
  unreachable, !dbg !831

126:                                              ; preds = %122
  br i1 %98, label %167, label %127, !dbg !832

127:                                              ; preds = %126
  %128 = bitcast %struct.stat* %4 to i8*, !dbg !833
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %128) #33, !dbg !833
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !702, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i64 -1, metadata !740, metadata !DIExpression()), !dbg !835
  %129 = call i32 @stat(i8* noundef nonnull %97, %struct.stat* noundef nonnull %4) #33, !dbg !836
  %130 = icmp eq i32 %129, 0, !dbg !838
  br i1 %130, label %137, label %131, !dbg !839

131:                                              ; preds = %127
  %132 = tail call i32* @__errno_location() #36, !dbg !840
  %133 = load i32, i32* %132, align 4, !dbg !840, !tbaa !569
  %134 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i32 noundef 5) #33, !dbg !840
  %135 = load i8*, i8** @ref_file, align 8, !dbg !840, !tbaa !474
  %136 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %135) #33, !dbg !840
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %133, i8* noundef %134, i8* noundef %136) #33, !dbg !840
  unreachable, !dbg !840

137:                                              ; preds = %127
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !841, metadata !DIExpression()), !dbg !848
  %138 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 2, !dbg !850
  %139 = load i32, i32* %138, align 8, !dbg !850, !tbaa !851
  %140 = and i32 %139, 53248, !dbg !850
  %141 = icmp eq i32 %140, 32768, !dbg !855
  br i1 %141, label %153, label %142, !dbg !856

142:                                              ; preds = %137
  %143 = load i8*, i8** @ref_file, align 8, !dbg !857, !tbaa !474
  %144 = tail call i32 (i8*, i32, ...) @open(i8* noundef %143, i32 noundef 0) #33, !dbg !858
  call void @llvm.dbg.value(metadata i32 %144, metadata !741, metadata !DIExpression()), !dbg !859
  %145 = icmp sgt i32 %144, -1, !dbg !860
  br i1 %145, label %146, label %157, !dbg !861

146:                                              ; preds = %142
  %147 = tail call i64 @lseek(i32 noundef %144, i64 noundef 0, i32 noundef 2) #33, !dbg !862
  call void @llvm.dbg.value(metadata i64 %147, metadata !744, metadata !DIExpression()), !dbg !863
  %148 = tail call i32* @__errno_location() #36, !dbg !864
  %149 = load i32, i32* %148, align 4, !dbg !864, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %149, metadata !747, metadata !DIExpression()), !dbg !863
  %150 = tail call i32 @close(i32 noundef %144) #33, !dbg !865
  %151 = icmp sgt i64 %147, -1, !dbg !866
  br i1 %151, label %163, label %152, !dbg !868

152:                                              ; preds = %146
  store i32 %149, i32* %148, align 4, !dbg !869, !tbaa !569
  br label %157

153:                                              ; preds = %137
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !871
  %155 = load i64, i64* %154, align 8, !dbg !871, !tbaa !872
  call void @llvm.dbg.value(metadata i64 %155, metadata !740, metadata !DIExpression()), !dbg !835
  %156 = icmp slt i64 %155, 0, !dbg !873
  br i1 %156, label %157, label %163, !dbg !875

157:                                              ; preds = %152, %142, %153
  %158 = tail call i32* @__errno_location() #36, !dbg !876
  %159 = load i32, i32* %158, align 4, !dbg !876, !tbaa !569
  %160 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i32 noundef 5) #33, !dbg !876
  %161 = load i8*, i8** @ref_file, align 8, !dbg !876, !tbaa !474
  %162 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %161) #33, !dbg !876
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %159, i8* noundef %160, i8* noundef %162) #33, !dbg !876
  unreachable, !dbg !876

163:                                              ; preds = %146, %153
  %164 = phi i64 [ %155, %153 ], [ %147, %146 ]
  %165 = select i1 %13, i64 %164, i64 -1
  %166 = select i1 %13, i64 %12, i64 %164
  call void @llvm.dbg.value(metadata i64 %166, metadata !697, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i64 %165, metadata !698, metadata !DIExpression()), !dbg !755
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %128) #33, !dbg !877
  br label %167, !dbg !878

167:                                              ; preds = %163, %126
  %168 = phi i64 [ %165, %163 ], [ -1, %126 ], !dbg !755
  %169 = phi i64 [ %166, %163 ], [ %12, %126 ]
  call void @llvm.dbg.value(metadata i64 %169, metadata !697, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i64 %168, metadata !698, metadata !DIExpression()), !dbg !755
  %170 = load i1, i1* @no_create, align 1, !dbg !879
  %171 = select i1 %170, i32 2049, i32 2113, !dbg !880
  call void @llvm.dbg.value(metadata i32 %171, metadata !748, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i8 poison, metadata !749, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i8** %96, metadata !695, metadata !DIExpression()), !dbg !755
  %172 = load i8*, i8** %96, align 8, !dbg !881, !tbaa !474
  call void @llvm.dbg.value(metadata i8* %172, metadata !750, metadata !DIExpression()), !dbg !882
  %173 = icmp eq i8* %172, null, !dbg !883
  br i1 %173, label %187, label %174, !dbg !883

174:                                              ; preds = %167
  %175 = bitcast %struct.stat* %3 to i8*
  %176 = icmp ne i32 %11, 0
  %177 = icmp slt i64 %168, 0
  %178 = and i1 %176, %177
  %179 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 9
  %180 = icmp slt i64 %169, 0
  %181 = icmp eq i64 %169, -1
  %182 = sub i64 0, %169
  %183 = icmp eq i32 %11, 0
  %184 = icmp sgt i64 %168, -1
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 2
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  br label %190, !dbg !883

187:                                              ; preds = %301, %167
  %188 = phi i1 [ false, %167 ], [ %302, %301 ]
  %189 = zext i1 %188 to i32, !dbg !884
  ret i32 %189, !dbg !885

190:                                              ; preds = %174, %301
  %191 = phi i8* [ %172, %174 ], [ %304, %301 ]
  %192 = phi i1 [ false, %174 ], [ %302, %301 ]
  %193 = phi i8** [ %96, %174 ], [ %303, %301 ]
  call void @llvm.dbg.value(metadata i8** %193, metadata !695, metadata !DIExpression()), !dbg !755
  %194 = tail call i32 (i8*, i32, ...) @open(i8* noundef nonnull %191, i32 noundef %171, i32 noundef 438) #33, !dbg !886
  call void @llvm.dbg.value(metadata i32 %194, metadata !752, metadata !DIExpression()), !dbg !887
  %195 = icmp slt i32 %194, 0, !dbg !888
  br i1 %195, label %196, label %202, !dbg !890

196:                                              ; preds = %190
  %197 = load i1, i1* @no_create, align 1, !dbg !891
  %198 = tail call i32* @__errno_location() #36, !dbg !894
  br i1 %197, label %199, label %295, !dbg !895

199:                                              ; preds = %196
  %200 = load i32, i32* %198, align 4, !dbg !896, !tbaa !569
  %201 = icmp eq i32 %200, 2, !dbg !897
  br i1 %201, label %301, label %295, !dbg !898

202:                                              ; preds = %190
  call void @llvm.dbg.value(metadata i32 %194, metadata !899, metadata !DIExpression()) #33, !dbg !924
  call void @llvm.dbg.value(metadata i8* %191, metadata !904, metadata !DIExpression()) #33, !dbg !924
  call void @llvm.dbg.value(metadata i64 %169, metadata !905, metadata !DIExpression()) #33, !dbg !924
  call void @llvm.dbg.value(metadata i64 %168, metadata !906, metadata !DIExpression()) #33, !dbg !924
  call void @llvm.dbg.value(metadata i32 %11, metadata !907, metadata !DIExpression()) #33, !dbg !924
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %175) #33, !dbg !927
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !908, metadata !DIExpression()) #33, !dbg !928
  %203 = load i1, i1* @block_mode, align 1, !dbg !929
  %204 = select i1 %203, i1 true, i1 %178, !dbg !931
  br i1 %204, label %205, label %232, !dbg !931

205:                                              ; preds = %202
  %206 = call i32 @fstat(i32 noundef %194, %struct.stat* noundef nonnull %3) #33, !dbg !932
  %207 = icmp eq i32 %206, 0, !dbg !933
  br i1 %207, label %213, label %208, !dbg !934

208:                                              ; preds = %205
  %209 = tail call i32* @__errno_location() #36, !dbg !935
  %210 = load i32, i32* %209, align 4, !dbg !935, !tbaa !569
  %211 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i64 0, i64 0), i32 noundef 5) #33, !dbg !935
  %212 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %191) #33, !dbg !935
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %210, i8* noundef %211, i8* noundef %212) #33, !dbg !935
  br label %288, !dbg !937

213:                                              ; preds = %205
  %214 = load i1, i1* @block_mode, align 1, !dbg !938
  br i1 %214, label %215, label %232, !dbg !939

215:                                              ; preds = %213
  %216 = load i32, i32* %179, align 8, !dbg !940, !tbaa !941
  %217 = icmp sgt i32 %216, 0, !dbg !940
  %218 = select i1 %217, i32 %216, i32 512, !dbg !940
  %219 = zext i32 %218 to i64, !dbg !940
  call void @llvm.dbg.value(metadata i64 %219, metadata !910, metadata !DIExpression()) #33, !dbg !942
  call void @llvm.dbg.value(metadata i64 %169, metadata !913, metadata !DIExpression()) #33, !dbg !942
  br i1 %180, label %220, label %224, !dbg !943

220:                                              ; preds = %215
  br i1 %181, label %227, label %221, !dbg !943

221:                                              ; preds = %220
  %222 = udiv i64 -9223372036854775808, %182, !dbg !943
  %223 = icmp ult i64 %222, %219, !dbg !943
  br i1 %223, label %229, label %227, !dbg !943

224:                                              ; preds = %215
  %225 = udiv i64 9223372036854775807, %219, !dbg !943
  %226 = icmp ult i64 %225, %169, !dbg !943
  br i1 %226, label %229, label %227, !dbg !943

227:                                              ; preds = %224, %221, %220
  call void @llvm.dbg.value(metadata !DIArgList(i64 %219, i64 %169), metadata !905, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)) #33, !dbg !924
  %228 = mul i64 %169, %219, !dbg !943
  call void @llvm.dbg.value(metadata i64 %228, metadata !905, metadata !DIExpression()) #33, !dbg !924
  br label %232, !dbg !945

229:                                              ; preds = %224, %221
  call void @llvm.dbg.value(metadata i64 %228, metadata !905, metadata !DIExpression()) #33, !dbg !924
  %230 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.77, i64 0, i64 0), i32 noundef 5) #33, !dbg !946
  %231 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %191) #33, !dbg !946
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %230, i64 noundef %169, i64 noundef %219, i8* noundef %231) #33, !dbg !946
  br label %288

232:                                              ; preds = %202, %227, %213
  %233 = phi i64 [ %169, %213 ], [ %228, %227 ], [ %169, %202 ]
  call void @llvm.dbg.value(metadata i64 %233, metadata !905, metadata !DIExpression()) #33, !dbg !924
  br i1 %183, label %277, label %234, !dbg !948

234:                                              ; preds = %232
  br i1 %184, label %253, label %235, !dbg !949

235:                                              ; preds = %234
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !841, metadata !DIExpression()) #33, !dbg !950
  %236 = load i32, i32* %185, align 8, !dbg !955, !tbaa !851
  %237 = and i32 %236, 53248, !dbg !955
  %238 = icmp eq i32 %237, 32768, !dbg !956
  br i1 %238, label %239, label %245, !dbg !957

239:                                              ; preds = %235
  %240 = load i64, i64* %186, align 8, !dbg !958, !tbaa !872
  call void @llvm.dbg.value(metadata i64 %240, metadata !914, metadata !DIExpression()) #33, !dbg !960
  %241 = icmp slt i64 %240, 0, !dbg !961
  br i1 %241, label %242, label %253, !dbg !963

242:                                              ; preds = %239
  %243 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #33, !dbg !964
  %244 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %191) #33, !dbg !964
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %243, i8* noundef %244) #33, !dbg !964
  br label %288, !dbg !966

245:                                              ; preds = %235
  %246 = tail call i64 @lseek(i32 noundef %194, i64 noundef 0, i32 noundef 2) #33, !dbg !967
  call void @llvm.dbg.value(metadata i64 %246, metadata !914, metadata !DIExpression()) #33, !dbg !960
  %247 = icmp slt i64 %246, 0, !dbg !969
  br i1 %247, label %248, label %253, !dbg !971

248:                                              ; preds = %245
  %249 = tail call i32* @__errno_location() #36, !dbg !972
  %250 = load i32, i32* %249, align 4, !dbg !972, !tbaa !569
  %251 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i32 noundef 5) #33, !dbg !972
  %252 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %191) #33, !dbg !972
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %250, i8* noundef %251, i8* noundef %252) #33, !dbg !972
  br label %288, !dbg !974

253:                                              ; preds = %245, %239, %234
  %254 = phi i64 [ %240, %239 ], [ %246, %245 ], [ %168, %234 ], !dbg !975
  call void @llvm.dbg.value(metadata i64 %254, metadata !914, metadata !DIExpression()) #33, !dbg !960
  switch i32 %11, label %269 [
    i32 2, label %255
    i32 3, label %258
    i32 4, label %261
    i32 5, label %264
  ], !dbg !976

255:                                              ; preds = %253
  %256 = icmp sgt i64 %254, %233, !dbg !977
  %257 = select i1 %256, i64 %254, i64 %233, !dbg !977
  call void @llvm.dbg.value(metadata i64 %257, metadata !909, metadata !DIExpression()) #33, !dbg !924
  br label %277, !dbg !978

258:                                              ; preds = %253
  %259 = icmp slt i64 %254, %233, !dbg !979
  %260 = select i1 %259, i64 %254, i64 %233, !dbg !979
  call void @llvm.dbg.value(metadata i64 %260, metadata !909, metadata !DIExpression()) #33, !dbg !924
  br label %277, !dbg !980

261:                                              ; preds = %253
  %262 = srem i64 %254, %233, !dbg !981
  %263 = sub nsw i64 %254, %262, !dbg !982
  call void @llvm.dbg.value(metadata i64 %263, metadata !909, metadata !DIExpression()) #33, !dbg !924
  br label %277, !dbg !983

264:                                              ; preds = %253
  %265 = srem i64 %254, %233, !dbg !984
  call void @llvm.dbg.value(metadata i64 %265, metadata !917, metadata !DIExpression()) #33, !dbg !985
  %266 = icmp eq i64 %265, 0, !dbg !986
  %267 = sub nsw i64 %233, %265, !dbg !987
  %268 = select i1 %266, i64 0, i64 %267, !dbg !987
  call void @llvm.dbg.value(metadata i64 %268, metadata !905, metadata !DIExpression()) #33, !dbg !924
  br label %269, !dbg !988

269:                                              ; preds = %264, %253
  %270 = phi i64 [ %268, %264 ], [ %233, %253 ], !dbg !924
  call void @llvm.dbg.value(metadata i64 %270, metadata !905, metadata !DIExpression()) #33, !dbg !924
  %271 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %254, i64 %270) #33, !dbg !989
  %272 = extractvalue { i64, i1 } %271, 1, !dbg !989
  %273 = extractvalue { i64, i1 } %271, 0, !dbg !989
  call void @llvm.dbg.value(metadata i64 %273, metadata !909, metadata !DIExpression()) #33, !dbg !924
  br i1 %272, label %274, label %277, !dbg !991

274:                                              ; preds = %269
  %275 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i64 0, i64 0), i32 noundef 5) #33, !dbg !992
  %276 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %191) #33, !dbg !992
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %275, i8* noundef %276) #33, !dbg !992
  br label %288, !dbg !994

277:                                              ; preds = %269, %261, %258, %255, %232
  %278 = phi i64 [ %233, %232 ], [ %273, %269 ], [ %263, %261 ], [ %260, %258 ], [ %257, %255 ], !dbg !995
  call void @llvm.dbg.value(metadata i64 %278, metadata !909, metadata !DIExpression()) #33, !dbg !924
  %279 = icmp sgt i64 %278, 0, !dbg !996
  %280 = select i1 %279, i64 %278, i64 0, !dbg !996
  call void @llvm.dbg.value(metadata i64 %280, metadata !909, metadata !DIExpression()) #33, !dbg !924
  %281 = tail call i32 @ftruncate(i32 noundef %194, i64 noundef %280) #33, !dbg !997
  %282 = icmp eq i32 %281, 0, !dbg !999
  br i1 %282, label %288, label %283, !dbg !1000

283:                                              ; preds = %277
  %284 = tail call i32* @__errno_location() #36, !dbg !1001
  %285 = load i32, i32* %284, align 4, !dbg !1001, !tbaa !569
  %286 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i64 0, i64 0), i32 noundef 5) #33, !dbg !1001
  %287 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %191) #33, !dbg !1001
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %285, i8* noundef %286, i8* noundef %287, i64 noundef %280) #33, !dbg !1001
  br label %288, !dbg !1003

288:                                              ; preds = %208, %229, %242, %248, %274, %277, %283
  %289 = phi i1 [ true, %208 ], [ true, %283 ], [ true, %229 ], [ false, %277 ], [ true, %274 ], [ true, %248 ], [ true, %242 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %175) #33, !dbg !1004
  %290 = or i1 %192, %289, !dbg !1005
  call void @llvm.dbg.value(metadata i1 %290, metadata !749, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !755
  %291 = tail call i32 @close(i32 noundef %194) #33, !dbg !1006
  %292 = icmp eq i32 %291, 0, !dbg !1008
  br i1 %292, label %301, label %293, !dbg !1009

293:                                              ; preds = %288
  %294 = tail call i32* @__errno_location() #36, !dbg !1010
  call void @llvm.dbg.value(metadata i8 1, metadata !749, metadata !DIExpression()), !dbg !755
  br label %295, !dbg !1012

295:                                              ; preds = %199, %196, %293
  %296 = phi i32* [ %294, %293 ], [ %198, %199 ], [ %198, %196 ]
  %297 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), %293 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), %199 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), %196 ]
  %298 = load i32, i32* %296, align 4, !dbg !1013, !tbaa !569
  %299 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %297, i32 noundef 5) #33, !dbg !1013
  %300 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %191) #33, !dbg !1013
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %298, i8* noundef %299, i8* noundef %300) #33, !dbg !1013
  br label %301, !dbg !1014

301:                                              ; preds = %295, %288, %199
  %302 = phi i1 [ %192, %199 ], [ %290, %288 ], [ true, %295 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !749, metadata !DIExpression()), !dbg !755
  %303 = getelementptr inbounds i8*, i8** %193, i64 1, !dbg !1014
  call void @llvm.dbg.value(metadata i8** %303, metadata !695, metadata !DIExpression()), !dbg !755
  %304 = load i8*, i8** %303, align 8, !dbg !881, !tbaa !474
  call void @llvm.dbg.value(metadata i8* %304, metadata !750, metadata !DIExpression()), !dbg !882
  %305 = icmp eq i8* %304, null, !dbg !883
  br i1 %305, label %187, label %190, !dbg !883, !llvm.loop !1015
}

; Function Attrs: nounwind
declare !dbg !1017 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1020 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1021 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1024 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1030 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree
declare !dbg !1036 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !1040 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1044 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1047 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !1050 i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !1053 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i8* %0, i8** @file_name, align 8, !dbg !1057, !tbaa !474
  ret void, !dbg !1058
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1059 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1063, metadata !DIExpression()), !dbg !1064
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1065, !tbaa !1066
  ret void, !dbg !1068
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1069 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1074, !tbaa !474
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !1075
  %3 = icmp eq i32 %2, 0, !dbg !1076
  br i1 %3, label %22, label %4, !dbg !1077

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1078, !tbaa !1066, !range !1079
  %6 = icmp eq i8 %5, 0, !dbg !1078
  br i1 %6, label %11, label %7, !dbg !1080

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !1081
  %9 = load i32, i32* %8, align 4, !dbg !1081, !tbaa !569
  %10 = icmp eq i32 %9, 32, !dbg !1082
  br i1 %10, label %22, label %11, !dbg !1083

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 noundef 5) #33, !dbg !1084
  call void @llvm.dbg.value(metadata i8* %12, metadata !1071, metadata !DIExpression()), !dbg !1085
  %13 = load i8*, i8** @file_name, align 8, !dbg !1086, !tbaa !474
  %14 = icmp eq i8* %13, null, !dbg !1086
  %15 = tail call i32* @__errno_location() #36, !dbg !1088
  %16 = load i32, i32* %15, align 4, !dbg !1088, !tbaa !569
  br i1 %14, label %19, label %17, !dbg !1089

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !1090
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.44, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !1090
  br label %20, !dbg !1090

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.45, i64 0, i64 0), i8* noundef %12) #33, !dbg !1091
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1092, !tbaa !569
  tail call void @_exit(i32 noundef %21) #35, !dbg !1093
  unreachable, !dbg !1093

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1094, !tbaa !474
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !1096
  %25 = icmp eq i32 %24, 0, !dbg !1097
  br i1 %25, label %28, label %26, !dbg !1098

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1099, !tbaa !569
  tail call void @_exit(i32 noundef %27) #35, !dbg !1100
  unreachable, !dbg !1100

28:                                               ; preds = %22
  ret void, !dbg !1101
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1102 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1106, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 %1, metadata !1107, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %2, metadata !1108, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1109, metadata !DIExpression()), !dbg !1111
  tail call fastcc void @flush_stdout(), !dbg !1112
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1113, !tbaa !474
  %7 = icmp eq void ()* %6, null, !dbg !1113
  br i1 %7, label %9, label %8, !dbg !1115

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !1116
  br label %13, !dbg !1116

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1117, !tbaa !474
  %11 = tail call i8* @getprogname() #34, !dbg !1117
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* noundef %11) #33, !dbg !1117
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1119
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1119
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1119, !tbaa.struct !1120
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1119
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1119
  ret void, !dbg !1121
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1122 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i32 1, metadata !1126, metadata !DIExpression()) #33, !dbg !1129
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !1132
  %2 = icmp slt i32 %1, 0, !dbg !1133
  br i1 %2, label %6, label %3, !dbg !1134

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1135, !tbaa !474
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !1135
  br label %6, !dbg !1135

6:                                                ; preds = %3, %0
  ret void, !dbg !1136
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1137 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1139, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i32 %1, metadata !1140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %2, metadata !1141, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1142, metadata !DIExpression()), !dbg !1144
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1145, !tbaa !474
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1146
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1147, metadata !DIExpression()) #33, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %2, metadata !1188, metadata !DIExpression()) #33, !dbg !1190
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1192
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1192, !noalias !1193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1192
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !1192
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1192, !noalias !1193
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1197, !tbaa !569
  %12 = add i32 %11, 1, !dbg !1197
  store i32 %12, i32* @error_message_count, align 4, !dbg !1197, !tbaa !569
  %13 = icmp eq i32 %1, 0, !dbg !1198
  br i1 %13, label %24, label %14, !dbg !1200

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1201, metadata !DIExpression()) #33, !dbg !1209
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1211
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1211
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1205, metadata !DIExpression()) #33, !dbg !1212
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1213
  call void @llvm.dbg.value(metadata i8* %16, metadata !1204, metadata !DIExpression()) #33, !dbg !1209
  %17 = icmp eq i8* %16, null, !dbg !1214
  br i1 %17, label %18, label %20, !dbg !1216

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.48, i64 0, i64 0), i32 noundef 5) #33, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %19, metadata !1204, metadata !DIExpression()) #33, !dbg !1209
  br label %20, !dbg !1218

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1209
  call void @llvm.dbg.value(metadata i8* %21, metadata !1204, metadata !DIExpression()) #33, !dbg !1209
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1219, !tbaa !474
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.49, i64 0, i64 0), i8* noundef %21) #33, !dbg !1219
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1220
  br label %24, !dbg !1221

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1222, !tbaa !474
  call void @llvm.dbg.value(metadata i32 10, metadata !1223, metadata !DIExpression()) #33, !dbg !1230
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1229, metadata !DIExpression()) #33, !dbg !1230
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1232
  %27 = load i8*, i8** %26, align 8, !dbg !1232, !tbaa !1233
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1232
  %29 = load i8*, i8** %28, align 8, !dbg !1232, !tbaa !1235
  %30 = icmp ult i8* %27, %29, !dbg !1232
  br i1 %30, label %33, label %31, !dbg !1232, !prof !1236

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1232
  br label %35, !dbg !1232

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1232
  store i8* %34, i8** %26, align 8, !dbg !1232, !tbaa !1233
  store i8 10, i8* %27, align 1, !dbg !1232, !tbaa !578
  br label %35, !dbg !1232

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1237, !tbaa !474
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1237
  %38 = icmp eq i32 %0, 0, !dbg !1238
  br i1 %38, label %40, label %39, !dbg !1240

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !1241
  unreachable, !dbg !1241

40:                                               ; preds = %35
  ret void, !dbg !1242
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1243 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1247 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1250 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1253 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1257, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %1, metadata !1258, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8* %2, metadata !1259, metadata !DIExpression()), !dbg !1261
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1262
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1262
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1260, metadata !DIExpression()), !dbg !1263
  call void @llvm.va_start(i8* nonnull %6), !dbg !1264
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1265
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1265, !tbaa.struct !1120
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #38, !dbg !1265
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1265
  call void @llvm.va_end(i8* nonnull %6), !dbg !1266
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1267
  ret void, !dbg !1267
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !188 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !205, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i32 %1, metadata !206, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i8* %2, metadata !207, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i32 %3, metadata !208, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i8* %4, metadata !209, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !210, metadata !DIExpression()), !dbg !1269
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1270, !tbaa !569
  %9 = icmp eq i32 %8, 0, !dbg !1270
  br i1 %9, label %24, label %10, !dbg !1272

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1273, !tbaa !569
  %12 = icmp eq i32 %11, %3, !dbg !1276
  br i1 %12, label %13, label %23, !dbg !1277

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1278, !tbaa !474
  %15 = icmp eq i8* %14, %2, !dbg !1279
  br i1 %15, label %39, label %16, !dbg !1280

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1281
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1282
  br i1 %19, label %20, label %23, !dbg !1282

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !1283
  %22 = icmp eq i32 %21, 0, !dbg !1284
  br i1 %22, label %39, label %23, !dbg !1285

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1286, !tbaa !474
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1287, !tbaa !569
  br label %24, !dbg !1288

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1289
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1290, !tbaa !474
  %26 = icmp eq void ()* %25, null, !dbg !1290
  br i1 %26, label %28, label %27, !dbg !1292

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !1293
  br label %32, !dbg !1293

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1294, !tbaa !474
  %30 = tail call i8* @getprogname() #34, !dbg !1294
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.52, i64 0, i64 0), i8* noundef %30) #33, !dbg !1294
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1296, !tbaa !474
  %34 = icmp eq i8* %2, null, !dbg !1296
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.53, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.54, i64 0, i64 0), !dbg !1296
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !1296
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1297
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1297
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1297, !tbaa.struct !1120
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1297
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1297
  br label %39, !dbg !1298

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1298
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1299 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1303, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %1, metadata !1304, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %2, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %3, metadata !1306, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %4, metadata !1307, metadata !DIExpression()), !dbg !1309
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1310
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1310
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1308, metadata !DIExpression()), !dbg !1311
  call void @llvm.va_start(i8* nonnull %8), !dbg !1312
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1313
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1313, !tbaa.struct !1120
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #38, !dbg !1313
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1313
  call void @llvm.va_end(i8* nonnull %8), !dbg !1314
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1315
  ret void, !dbg !1315
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1316 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1319, !tbaa !474
  ret i8* %1, !dbg !1320
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1321 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1323, metadata !DIExpression()), !dbg !1326
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !1327
  call void @llvm.dbg.value(metadata i8* %2, metadata !1324, metadata !DIExpression()), !dbg !1326
  %3 = icmp eq i8* %2, null, !dbg !1328
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1328
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %5, metadata !1325, metadata !DIExpression()), !dbg !1326
  %6 = ptrtoint i8* %5 to i64, !dbg !1329
  %7 = ptrtoint i8* %0 to i64, !dbg !1329
  %8 = sub i64 %6, %7, !dbg !1329
  %9 = icmp sgt i64 %8, 6, !dbg !1331
  br i1 %9, label %10, label %19, !dbg !1332

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %11, metadata !1334, metadata !DIExpression()) #33, !dbg !1341
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0), metadata !1339, metadata !DIExpression()) #33, !dbg !1341
  call void @llvm.dbg.value(metadata i64 7, metadata !1340, metadata !DIExpression()) #33, !dbg !1341
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0), i64 7) #33, !dbg !1343
  %13 = icmp eq i32 %12, 0, !dbg !1344
  br i1 %13, label %14, label %19, !dbg !1345

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1323, metadata !DIExpression()), !dbg !1326
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.82, i64 0, i64 0), i64 noundef 3) #34, !dbg !1346
  %16 = icmp eq i32 %15, 0, !dbg !1349
  %17 = select i1 %16, i64 3, i64 0, !dbg !1350
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1350
  br label %19, !dbg !1350

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1326
  call void @llvm.dbg.value(metadata i8* %21, metadata !1325, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %20, metadata !1323, metadata !DIExpression()), !dbg !1326
  store i8* %20, i8** @program_name, align 8, !dbg !1351, !tbaa !474
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1352, !tbaa !474
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1353, !tbaa !474
  ret void, !dbg !1354
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !228 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !235, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %1, metadata !236, metadata !DIExpression()), !dbg !1355
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %5, metadata !237, metadata !DIExpression()), !dbg !1355
  %6 = icmp eq i8* %5, %0, !dbg !1357
  br i1 %6, label %7, label %17, !dbg !1359

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1360
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1360
  %10 = bitcast i64* %4 to i8*, !dbg !1361
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1361
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !243, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1363, metadata !DIExpression()) #33, !dbg !1370
  call void @llvm.dbg.value(metadata i8* %10, metadata !1372, metadata !DIExpression()) #33, !dbg !1380
  call void @llvm.dbg.value(metadata i32 0, metadata !1378, metadata !DIExpression()) #33, !dbg !1380
  call void @llvm.dbg.value(metadata i64 8, metadata !1379, metadata !DIExpression()) #33, !dbg !1380
  store i64 0, i64* %4, align 8, !dbg !1382
  call void @llvm.dbg.value(metadata i32* %3, metadata !238, metadata !DIExpression(DW_OP_deref)), !dbg !1355
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !1383
  %12 = icmp eq i64 %11, 2, !dbg !1385
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !238, metadata !DIExpression()), !dbg !1355
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1386
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1355
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1387
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1387
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1355
  ret i8* %18, !dbg !1387
}

; Function Attrs: nounwind
declare !dbg !1388 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1394 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1399, metadata !DIExpression()), !dbg !1402
  %2 = tail call i32* @__errno_location() #36, !dbg !1403
  %3 = load i32, i32* %2, align 4, !dbg !1403, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %3, metadata !1400, metadata !DIExpression()), !dbg !1402
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1404
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1404
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1404
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #39, !dbg !1405
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1405
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1401, metadata !DIExpression()), !dbg !1402
  store i32 %3, i32* %2, align 4, !dbg !1406, !tbaa !569
  ret %struct.quoting_options* %8, !dbg !1407
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1408 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1414, metadata !DIExpression()), !dbg !1415
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1416
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1416
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1417
  %5 = load i32, i32* %4, align 8, !dbg !1417, !tbaa !1418
  ret i32 %5, !dbg !1420
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1421 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1425, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %1, metadata !1426, metadata !DIExpression()), !dbg !1427
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1428
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1428
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1429
  store i32 %1, i32* %5, align 8, !dbg !1430, !tbaa !1418
  ret void, !dbg !1431
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1432 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1436, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %1, metadata !1437, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %2, metadata !1438, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %1, metadata !1439, metadata !DIExpression()), !dbg !1444
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1445
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1445
  %6 = lshr i8 %1, 5, !dbg !1446
  %7 = zext i8 %6 to i64, !dbg !1446
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1447
  call void @llvm.dbg.value(metadata i32* %8, metadata !1440, metadata !DIExpression()), !dbg !1444
  %9 = and i8 %1, 31, !dbg !1448
  %10 = zext i8 %9 to i32, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %10, metadata !1442, metadata !DIExpression()), !dbg !1444
  %11 = load i32, i32* %8, align 4, !dbg !1449, !tbaa !569
  %12 = lshr i32 %11, %10, !dbg !1450
  %13 = and i32 %12, 1, !dbg !1451
  call void @llvm.dbg.value(metadata i32 %13, metadata !1443, metadata !DIExpression()), !dbg !1444
  %14 = and i32 %2, 1, !dbg !1452
  %15 = xor i32 %13, %14, !dbg !1453
  %16 = shl i32 %15, %10, !dbg !1454
  %17 = xor i32 %16, %11, !dbg !1455
  store i32 %17, i32* %8, align 4, !dbg !1455, !tbaa !569
  ret i32 %13, !dbg !1456
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1457 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1461, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %1, metadata !1462, metadata !DIExpression()), !dbg !1464
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1465
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1467
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1461, metadata !DIExpression()), !dbg !1464
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1468
  %6 = load i32, i32* %5, align 4, !dbg !1468, !tbaa !1469
  call void @llvm.dbg.value(metadata i32 %6, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i32 %1, i32* %5, align 4, !dbg !1470, !tbaa !1469
  ret i32 %6, !dbg !1471
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1472 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1476, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %1, metadata !1477, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %2, metadata !1478, metadata !DIExpression()), !dbg !1479
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1480
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1476, metadata !DIExpression()), !dbg !1479
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1483
  store i32 10, i32* %6, align 8, !dbg !1484, !tbaa !1418
  %7 = icmp ne i8* %1, null, !dbg !1485
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1487
  br i1 %9, label %11, label %10, !dbg !1487

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !1488
  unreachable, !dbg !1488

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1489
  store i8* %1, i8** %12, align 8, !dbg !1490, !tbaa !1491
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1492
  store i8* %2, i8** %13, align 8, !dbg !1493, !tbaa !1494
  ret void, !dbg !1495
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1496 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1500, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i64 %1, metadata !1501, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i8* %2, metadata !1502, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i64 %3, metadata !1503, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1504, metadata !DIExpression()), !dbg !1508
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1509
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1509
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1505, metadata !DIExpression()), !dbg !1508
  %8 = tail call i32* @__errno_location() #36, !dbg !1510
  %9 = load i32, i32* %8, align 4, !dbg !1510, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %9, metadata !1506, metadata !DIExpression()), !dbg !1508
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1511
  %11 = load i32, i32* %10, align 8, !dbg !1511, !tbaa !1418
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1512
  %13 = load i32, i32* %12, align 4, !dbg !1512, !tbaa !1469
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1513
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1514
  %16 = load i8*, i8** %15, align 8, !dbg !1514, !tbaa !1491
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1515
  %18 = load i8*, i8** %17, align 8, !dbg !1515, !tbaa !1494
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1516
  call void @llvm.dbg.value(metadata i64 %19, metadata !1507, metadata !DIExpression()), !dbg !1508
  store i32 %9, i32* %8, align 4, !dbg !1517, !tbaa !569
  ret i64 %19, !dbg !1518
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1519 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1525, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %1, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %2, metadata !1527, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %3, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %4, metadata !1529, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %5, metadata !1530, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32* %6, metadata !1531, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %7, metadata !1532, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %8, metadata !1533, metadata !DIExpression()), !dbg !1587
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !1588
  %18 = icmp eq i64 %17, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i1 %18, metadata !1534, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1587
  call void @llvm.dbg.value(metadata i64 0, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 0, metadata !1536, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* null, metadata !1537, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 0, metadata !1538, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, metadata !1539, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %5, metadata !1540, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, metadata !1542, metadata !DIExpression()), !dbg !1587
  %19 = and i32 %5, 2, !dbg !1590
  %20 = icmp ne i32 %19, 0, !dbg !1590
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
  br label %36, !dbg !1590

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1591
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1592
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1593
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1542, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1540, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1539, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %43, metadata !1538, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %42, metadata !1537, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %41, metadata !1536, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 0, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %40, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %39, metadata !1533, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %38, metadata !1532, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %37, metadata !1529, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.label(metadata !1580), !dbg !1594
  call void @llvm.dbg.value(metadata i8 0, metadata !1543, metadata !DIExpression()), !dbg !1587
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
  ], !dbg !1595

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1540, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 5, metadata !1529, metadata !DIExpression()), !dbg !1587
  br label %111, !dbg !1596

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1540, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 5, metadata !1529, metadata !DIExpression()), !dbg !1587
  br i1 %45, label %111, label %51, !dbg !1596

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1597
  br i1 %52, label %111, label %53, !dbg !1601

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1597, !tbaa !578
  br label %111, !dbg !1597

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.95, i64 0, i64 0), metadata !305, metadata !DIExpression()) #33, !dbg !1602
  call void @llvm.dbg.value(metadata i32 %37, metadata !306, metadata !DIExpression()) #33, !dbg !1602
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.95, i64 0, i64 0), i32 noundef 5) #33, !dbg !1606
  call void @llvm.dbg.value(metadata i8* %55, metadata !307, metadata !DIExpression()) #33, !dbg !1602
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.95, i64 0, i64 0), !dbg !1607
  br i1 %56, label %57, label %66, !dbg !1609

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1610
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1611
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !309, metadata !DIExpression()) #33, !dbg !1612
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1613, metadata !DIExpression()) #33, !dbg !1619
  call void @llvm.dbg.value(metadata i8* %23, metadata !1621, metadata !DIExpression()) #33, !dbg !1626
  call void @llvm.dbg.value(metadata i32 0, metadata !1624, metadata !DIExpression()) #33, !dbg !1626
  call void @llvm.dbg.value(metadata i64 8, metadata !1625, metadata !DIExpression()) #33, !dbg !1626
  store i64 0, i64* %13, align 8, !dbg !1628
  call void @llvm.dbg.value(metadata i32* %12, metadata !308, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1602
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !1629
  %59 = icmp eq i64 %58, 3, !dbg !1631
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !308, metadata !DIExpression()) #33, !dbg !1602
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1632
  %63 = icmp eq i32 %37, 9, !dbg !1632
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.98, i64 0, i64 0), !dbg !1632
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1632
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1633
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1633
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8* %67, metadata !1532, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.98, i64 0, i64 0), metadata !305, metadata !DIExpression()) #33, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %37, metadata !306, metadata !DIExpression()) #33, !dbg !1634
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.98, i64 0, i64 0), i32 noundef 5) #33, !dbg !1636
  call void @llvm.dbg.value(metadata i8* %68, metadata !307, metadata !DIExpression()) #33, !dbg !1634
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.98, i64 0, i64 0), !dbg !1637
  br i1 %69, label %70, label %79, !dbg !1638

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1639
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1640
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !309, metadata !DIExpression()) #33, !dbg !1641
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1613, metadata !DIExpression()) #33, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %26, metadata !1621, metadata !DIExpression()) #33, !dbg !1644
  call void @llvm.dbg.value(metadata i32 0, metadata !1624, metadata !DIExpression()) #33, !dbg !1644
  call void @llvm.dbg.value(metadata i64 8, metadata !1625, metadata !DIExpression()) #33, !dbg !1644
  store i64 0, i64* %11, align 8, !dbg !1646
  call void @llvm.dbg.value(metadata i32* %10, metadata !308, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1634
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !1647
  %72 = icmp eq i64 %71, 3, !dbg !1648
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !308, metadata !DIExpression()) #33, !dbg !1634
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1649
  %76 = icmp eq i32 %37, 9, !dbg !1649
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.98, i64 0, i64 0), !dbg !1649
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1650
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1650
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1533, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %80, metadata !1532, metadata !DIExpression()), !dbg !1587
  br i1 %45, label %97, label %82, !dbg !1651

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1544, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i64 0, metadata !1535, metadata !DIExpression()), !dbg !1587
  %83 = load i8, i8* %80, align 1, !dbg !1653, !tbaa !578
  %84 = icmp eq i8 %83, 0, !dbg !1655
  br i1 %84, label %97, label %85, !dbg !1655

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1544, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i64 %88, metadata !1535, metadata !DIExpression()), !dbg !1587
  %89 = icmp ult i64 %88, %48, !dbg !1656
  br i1 %89, label %90, label %92, !dbg !1659

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1656
  store i8 %86, i8* %91, align 1, !dbg !1656, !tbaa !578
  br label %92, !dbg !1656

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %93, metadata !1535, metadata !DIExpression()), !dbg !1587
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1660
  call void @llvm.dbg.value(metadata i8* %94, metadata !1544, metadata !DIExpression()), !dbg !1652
  %95 = load i8, i8* %94, align 1, !dbg !1653, !tbaa !578
  %96 = icmp eq i8 %95, 0, !dbg !1655
  br i1 %96, label %97, label %85, !dbg !1655, !llvm.loop !1661

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1663
  call void @llvm.dbg.value(metadata i64 %98, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, metadata !1539, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %81, metadata !1537, metadata !DIExpression()), !dbg !1587
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %99, metadata !1538, metadata !DIExpression()), !dbg !1587
  br label %111, !dbg !1665

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1539, metadata !DIExpression()), !dbg !1587
  br label %102, !dbg !1666

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1540, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1539, metadata !DIExpression()), !dbg !1587
  br i1 %45, label %102, label %105, !dbg !1667

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1540, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1539, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 2, metadata !1529, metadata !DIExpression()), !dbg !1587
  br label %111, !dbg !1668

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1540, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1539, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 2, metadata !1529, metadata !DIExpression()), !dbg !1587
  br i1 %45, label %111, label %105, !dbg !1668

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1669
  br i1 %107, label %111, label %108, !dbg !1673

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1669, !tbaa !578
  br label %111, !dbg !1669

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1540, metadata !DIExpression()), !dbg !1587
  br label %111, !dbg !1674

110:                                              ; preds = %36
  call void @abort() #35, !dbg !1675
  unreachable, !dbg !1675

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1663
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.98, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.98, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.98, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.98, i64 0, i64 0), %102 ], !dbg !1587
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1587
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1540, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1539, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %117, metadata !1538, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %116, metadata !1537, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %115, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %114, metadata !1533, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %113, metadata !1532, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %112, metadata !1529, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 0, metadata !1549, metadata !DIExpression()), !dbg !1676
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
  br label %132, !dbg !1677

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1663
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1591
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1676
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %139, metadata !1549, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1542, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %135, metadata !1536, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %134, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %133, metadata !1528, metadata !DIExpression()), !dbg !1587
  %141 = icmp eq i64 %133, -1, !dbg !1678
  br i1 %141, label %142, label %146, !dbg !1679

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1680
  %144 = load i8, i8* %143, align 1, !dbg !1680, !tbaa !578
  %145 = icmp eq i8 %144, 0, !dbg !1681
  br i1 %145, label %596, label %148, !dbg !1682

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1683
  br i1 %147, label %596, label %148, !dbg !1682

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1555, metadata !DIExpression()), !dbg !1684
  br i1 %123, label %149, label %163, !dbg !1685

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1687
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1688
  br i1 %151, label %152, label %154, !dbg !1688

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %153, metadata !1528, metadata !DIExpression()), !dbg !1587
  br label %154, !dbg !1690

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1690
  call void @llvm.dbg.value(metadata i64 %155, metadata !1528, metadata !DIExpression()), !dbg !1587
  %156 = icmp ugt i64 %150, %155, !dbg !1691
  br i1 %156, label %163, label %157, !dbg !1692

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %158, metadata !1694, metadata !DIExpression()) #33, !dbg !1699
  call void @llvm.dbg.value(metadata i8* %116, metadata !1697, metadata !DIExpression()) #33, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %117, metadata !1698, metadata !DIExpression()) #33, !dbg !1699
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !1701
  %160 = icmp ne i32 %159, 0, !dbg !1702
  %161 = or i1 %160, %125, !dbg !1703
  %162 = xor i1 %160, true, !dbg !1703
  br i1 %161, label %163, label %647, !dbg !1703

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1551, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %164, metadata !1528, metadata !DIExpression()), !dbg !1587
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1704
  %167 = load i8, i8* %166, align 1, !dbg !1704, !tbaa !578
  call void @llvm.dbg.value(metadata i8 %167, metadata !1556, metadata !DIExpression()), !dbg !1684
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
  ], !dbg !1705

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1706

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1707

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1554, metadata !DIExpression()), !dbg !1684
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1711
  br i1 %171, label %188, label %172, !dbg !1711

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1713
  br i1 %173, label %174, label %176, !dbg !1717

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1713
  store i8 39, i8* %175, align 1, !dbg !1713, !tbaa !578
  br label %176, !dbg !1713

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %177, metadata !1535, metadata !DIExpression()), !dbg !1587
  %178 = icmp ult i64 %177, %140, !dbg !1718
  br i1 %178, label %179, label %181, !dbg !1721

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1718
  store i8 36, i8* %180, align 1, !dbg !1718, !tbaa !578
  br label %181, !dbg !1718

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %182, metadata !1535, metadata !DIExpression()), !dbg !1587
  %183 = icmp ult i64 %182, %140, !dbg !1722
  br i1 %183, label %184, label %186, !dbg !1725

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1722
  store i8 39, i8* %185, align 1, !dbg !1722, !tbaa !578
  br label %186, !dbg !1722

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %187, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, metadata !1543, metadata !DIExpression()), !dbg !1587
  br label %188, !dbg !1726

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1587
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %189, metadata !1535, metadata !DIExpression()), !dbg !1587
  %191 = icmp ult i64 %189, %140, !dbg !1727
  br i1 %191, label %192, label %194, !dbg !1730

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1727
  store i8 92, i8* %193, align 1, !dbg !1727, !tbaa !578
  br label %194, !dbg !1727

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %195, metadata !1535, metadata !DIExpression()), !dbg !1587
  br i1 %120, label %196, label %499, !dbg !1731

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1733
  %198 = icmp ult i64 %197, %164, !dbg !1734
  br i1 %198, label %199, label %456, !dbg !1735

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1736
  %201 = load i8, i8* %200, align 1, !dbg !1736, !tbaa !578
  %202 = add i8 %201, -48, !dbg !1737
  %203 = icmp ult i8 %202, 10, !dbg !1737
  br i1 %203, label %204, label %456, !dbg !1737

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1738
  br i1 %205, label %206, label %208, !dbg !1742

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1738
  store i8 48, i8* %207, align 1, !dbg !1738, !tbaa !578
  br label %208, !dbg !1738

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %209, metadata !1535, metadata !DIExpression()), !dbg !1587
  %210 = icmp ult i64 %209, %140, !dbg !1743
  br i1 %210, label %211, label %213, !dbg !1746

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1743
  store i8 48, i8* %212, align 1, !dbg !1743, !tbaa !578
  br label %213, !dbg !1743

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %214, metadata !1535, metadata !DIExpression()), !dbg !1587
  br label %456, !dbg !1747

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1748

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1749

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1750

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1752

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1754
  %221 = icmp ult i64 %220, %164, !dbg !1755
  br i1 %221, label %222, label %456, !dbg !1756

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1757
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1758
  %225 = load i8, i8* %224, align 1, !dbg !1758, !tbaa !578
  %226 = icmp eq i8 %225, 63, !dbg !1759
  br i1 %226, label %227, label %456, !dbg !1760

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1761
  %229 = load i8, i8* %228, align 1, !dbg !1761, !tbaa !578
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
  ], !dbg !1762

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1763

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1556, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %220, metadata !1549, metadata !DIExpression()), !dbg !1676
  %232 = icmp ult i64 %134, %140, !dbg !1765
  br i1 %232, label %233, label %235, !dbg !1768

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1765
  store i8 63, i8* %234, align 1, !dbg !1765, !tbaa !578
  br label %235, !dbg !1765

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %236, metadata !1535, metadata !DIExpression()), !dbg !1587
  %237 = icmp ult i64 %236, %140, !dbg !1769
  br i1 %237, label %238, label %240, !dbg !1772

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1769
  store i8 34, i8* %239, align 1, !dbg !1769, !tbaa !578
  br label %240, !dbg !1769

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %241, metadata !1535, metadata !DIExpression()), !dbg !1587
  %242 = icmp ult i64 %241, %140, !dbg !1773
  br i1 %242, label %243, label %245, !dbg !1776

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1773
  store i8 34, i8* %244, align 1, !dbg !1773, !tbaa !578
  br label %245, !dbg !1773

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %246, metadata !1535, metadata !DIExpression()), !dbg !1587
  %247 = icmp ult i64 %246, %140, !dbg !1777
  br i1 %247, label %248, label %250, !dbg !1780

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1777
  store i8 63, i8* %249, align 1, !dbg !1777, !tbaa !578
  br label %250, !dbg !1777

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %251, metadata !1535, metadata !DIExpression()), !dbg !1587
  br label %456, !dbg !1781

252:                                              ; preds = %163
  br label %263, !dbg !1782

253:                                              ; preds = %163
  br label %263, !dbg !1783

254:                                              ; preds = %163
  br label %261, !dbg !1784

255:                                              ; preds = %163
  br label %261, !dbg !1785

256:                                              ; preds = %163
  br label %263, !dbg !1786

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1787

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1788

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1791

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1793

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1794
  call void @llvm.dbg.label(metadata !1581), !dbg !1795
  br i1 %128, label %263, label %638, !dbg !1796

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1794
  call void @llvm.dbg.label(metadata !1583), !dbg !1798
  br i1 %118, label %510, label %467, !dbg !1799

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1800

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1801, !tbaa !578
  %268 = icmp eq i8 %267, 0, !dbg !1803
  br i1 %268, label %269, label %456, !dbg !1804

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1805
  br i1 %270, label %271, label %456, !dbg !1807

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1555, metadata !DIExpression()), !dbg !1684
  br label %272, !dbg !1808

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1555, metadata !DIExpression()), !dbg !1684
  br i1 %126, label %274, label %456, !dbg !1809

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1811

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, metadata !1555, metadata !DIExpression()), !dbg !1684
  br i1 %126, label %276, label %456, !dbg !1812

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1813

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1816
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1818
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1818
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %282, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %281, metadata !1536, metadata !DIExpression()), !dbg !1587
  %283 = icmp ult i64 %134, %282, !dbg !1819
  br i1 %283, label %284, label %286, !dbg !1822

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1819
  store i8 39, i8* %285, align 1, !dbg !1819, !tbaa !578
  br label %286, !dbg !1819

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %287, metadata !1535, metadata !DIExpression()), !dbg !1587
  %288 = icmp ult i64 %287, %282, !dbg !1823
  br i1 %288, label %289, label %291, !dbg !1826

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1823
  store i8 92, i8* %290, align 1, !dbg !1823, !tbaa !578
  br label %291, !dbg !1823

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %292, metadata !1535, metadata !DIExpression()), !dbg !1587
  %293 = icmp ult i64 %292, %282, !dbg !1827
  br i1 %293, label %294, label %296, !dbg !1830

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1827
  store i8 39, i8* %295, align 1, !dbg !1827, !tbaa !578
  br label %296, !dbg !1827

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %297, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, metadata !1543, metadata !DIExpression()), !dbg !1587
  br label %456, !dbg !1831

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1832

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1557, metadata !DIExpression()), !dbg !1833
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !1834
  %301 = load i16*, i16** %300, align 8, !dbg !1834, !tbaa !474
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1834
  %304 = load i16, i16* %303, align 2, !dbg !1834, !tbaa !603
  %305 = and i16 %304, 16384, !dbg !1834
  %306 = icmp ne i16 %305, 0, !dbg !1836
  call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %349, metadata !1557, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %312, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i1 %350, metadata !1555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1684
  br label %352, !dbg !1837

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1838
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1561, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1613, metadata !DIExpression()) #33, !dbg !1840
  call void @llvm.dbg.value(metadata i8* %32, metadata !1621, metadata !DIExpression()) #33, !dbg !1842
  call void @llvm.dbg.value(metadata i32 0, metadata !1624, metadata !DIExpression()) #33, !dbg !1842
  call void @llvm.dbg.value(metadata i64 8, metadata !1625, metadata !DIExpression()) #33, !dbg !1842
  store i64 0, i64* %14, align 8, !dbg !1844
  call void @llvm.dbg.value(metadata i64 0, metadata !1557, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8 1, metadata !1560, metadata !DIExpression()), !dbg !1833
  %308 = icmp eq i64 %164, -1, !dbg !1845
  br i1 %308, label %309, label %311, !dbg !1847

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %310, metadata !1528, metadata !DIExpression()), !dbg !1587
  br label %311, !dbg !1849

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1684
  call void @llvm.dbg.value(metadata i64 %312, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1850
  %313 = sub i64 %312, %139, !dbg !1851
  call void @llvm.dbg.value(metadata i32* %16, metadata !1564, metadata !DIExpression(DW_OP_deref)), !dbg !1852
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %314, metadata !1568, metadata !DIExpression()), !dbg !1852
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1854

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1557, metadata !DIExpression()), !dbg !1833
  %316 = icmp ugt i64 %312, %139, !dbg !1855
  br i1 %316, label %319, label %317, !dbg !1857

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, metadata !1557, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %349, metadata !1557, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %312, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i1 %350, metadata !1555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1684
  br label %352, !dbg !1837

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1560, metadata !DIExpression()), !dbg !1833
  br label %346, !dbg !1860

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1557, metadata !DIExpression()), !dbg !1833
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1862
  %323 = load i8, i8* %322, align 1, !dbg !1862, !tbaa !578
  %324 = icmp eq i8 %323, 0, !dbg !1857
  br i1 %324, label %348, label %325, !dbg !1863

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %326, metadata !1557, metadata !DIExpression()), !dbg !1833
  %327 = add i64 %326, %139, !dbg !1865
  %328 = icmp eq i64 %326, %313, !dbg !1855
  br i1 %328, label %348, label %319, !dbg !1857, !llvm.loop !1866

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1867
  call void @llvm.dbg.value(metadata i64 1, metadata !1569, metadata !DIExpression()), !dbg !1868
  br i1 %331, label %332, label %340, !dbg !1867

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1569, metadata !DIExpression()), !dbg !1868
  %334 = add i64 %333, %139, !dbg !1869
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1871
  %336 = load i8, i8* %335, align 1, !dbg !1871, !tbaa !578
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1872

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %338, metadata !1569, metadata !DIExpression()), !dbg !1868
  %339 = icmp eq i64 %338, %314, !dbg !1874
  br i1 %339, label %340, label %332, !dbg !1875, !llvm.loop !1876

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1878, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %341, metadata !1564, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 %341, metadata !1880, metadata !DIExpression()) #33, !dbg !1888
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !1890
  %343 = icmp ne i32 %342, 0, !dbg !1891
  call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %314, metadata !1557, metadata !DIExpression()), !dbg !1833
  br label %348, !dbg !1892

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, metadata !1557, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1859
  call void @llvm.dbg.label(metadata !1586), !dbg !1893
  %345 = select i1 %118, i32 4, i32 2, !dbg !1894
  br label %643, !dbg !1894

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, metadata !1557, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %349, metadata !1557, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %312, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i1 %350, metadata !1555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1684
  br label %352, !dbg !1837

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1560, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, metadata !1557, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %349, metadata !1557, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %312, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i1 %350, metadata !1555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1684
  %351 = icmp ugt i64 %349, 1, !dbg !1896
  br i1 %351, label %357, label %352, !dbg !1837

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1897
  br i1 %356, label %456, label %357, !dbg !1897

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %361, metadata !1577, metadata !DIExpression()), !dbg !1899
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1900

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1587
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1676
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1901
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1684
  call void @llvm.dbg.value(metadata i8 %369, metadata !1556, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %368, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1551, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %366, metadata !1549, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %364, metadata !1535, metadata !DIExpression()), !dbg !1587
  br i1 %362, label %414, label %370, !dbg !1902

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1907

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1554, metadata !DIExpression()), !dbg !1684
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1910
  br i1 %372, label %389, label %373, !dbg !1910

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1912
  br i1 %374, label %375, label %377, !dbg !1916

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1912
  store i8 39, i8* %376, align 1, !dbg !1912, !tbaa !578
  br label %377, !dbg !1912

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %378, metadata !1535, metadata !DIExpression()), !dbg !1587
  %379 = icmp ult i64 %378, %140, !dbg !1917
  br i1 %379, label %380, label %382, !dbg !1920

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1917
  store i8 36, i8* %381, align 1, !dbg !1917, !tbaa !578
  br label %382, !dbg !1917

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %383, metadata !1535, metadata !DIExpression()), !dbg !1587
  %384 = icmp ult i64 %383, %140, !dbg !1921
  br i1 %384, label %385, label %387, !dbg !1924

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1921
  store i8 39, i8* %386, align 1, !dbg !1921, !tbaa !578
  br label %387, !dbg !1921

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %388, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, metadata !1543, metadata !DIExpression()), !dbg !1587
  br label %389, !dbg !1925

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1587
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %390, metadata !1535, metadata !DIExpression()), !dbg !1587
  %392 = icmp ult i64 %390, %140, !dbg !1926
  br i1 %392, label %393, label %395, !dbg !1929

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1926
  store i8 92, i8* %394, align 1, !dbg !1926, !tbaa !578
  br label %395, !dbg !1926

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %396, metadata !1535, metadata !DIExpression()), !dbg !1587
  %397 = icmp ult i64 %396, %140, !dbg !1930
  br i1 %397, label %398, label %402, !dbg !1933

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1930
  %400 = or i8 %399, 48, !dbg !1930
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1930
  store i8 %400, i8* %401, align 1, !dbg !1930, !tbaa !578
  br label %402, !dbg !1930

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %403, metadata !1535, metadata !DIExpression()), !dbg !1587
  %404 = icmp ult i64 %403, %140, !dbg !1934
  br i1 %404, label %405, label %410, !dbg !1937

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1934
  %407 = and i8 %406, 7, !dbg !1934
  %408 = or i8 %407, 48, !dbg !1934
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1934
  store i8 %408, i8* %409, align 1, !dbg !1934, !tbaa !578
  br label %410, !dbg !1934

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %411, metadata !1535, metadata !DIExpression()), !dbg !1587
  %412 = and i8 %369, 7, !dbg !1938
  %413 = or i8 %412, 48, !dbg !1939
  call void @llvm.dbg.value(metadata i8 %413, metadata !1556, metadata !DIExpression()), !dbg !1684
  br label %421, !dbg !1940

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1941

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1942
  br i1 %416, label %417, label %419, !dbg !1947

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1942
  store i8 92, i8* %418, align 1, !dbg !1942, !tbaa !578
  br label %419, !dbg !1942

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %420, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1684
  br label %421, !dbg !1948

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1587
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1684
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1684
  call void @llvm.dbg.value(metadata i8 %426, metadata !1556, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %425, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1551, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %422, metadata !1535, metadata !DIExpression()), !dbg !1587
  %427 = add i64 %366, 1, !dbg !1949
  %428 = icmp ugt i64 %361, %427, !dbg !1951
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1952

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1953
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1953
  br i1 %432, label %433, label %444, !dbg !1953

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1956
  br i1 %434, label %435, label %437, !dbg !1960

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1956
  store i8 39, i8* %436, align 1, !dbg !1956, !tbaa !578
  br label %437, !dbg !1956

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %438, metadata !1535, metadata !DIExpression()), !dbg !1587
  %439 = icmp ult i64 %438, %140, !dbg !1961
  br i1 %439, label %440, label %442, !dbg !1964

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1961
  store i8 39, i8* %441, align 1, !dbg !1961, !tbaa !578
  br label %442, !dbg !1961

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %443, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, metadata !1543, metadata !DIExpression()), !dbg !1587
  br label %444, !dbg !1965

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1966
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %445, metadata !1535, metadata !DIExpression()), !dbg !1587
  %447 = icmp ult i64 %445, %140, !dbg !1967
  br i1 %447, label %448, label %450, !dbg !1970

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1967
  store i8 %426, i8* %449, align 1, !dbg !1967, !tbaa !578
  br label %450, !dbg !1967

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %451, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %427, metadata !1549, metadata !DIExpression()), !dbg !1676
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1971
  %453 = load i8, i8* %452, align 1, !dbg !1971, !tbaa !578
  call void @llvm.dbg.value(metadata i8 %453, metadata !1556, metadata !DIExpression()), !dbg !1684
  br label %363, !dbg !1972, !llvm.loop !1973

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1556, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i1 %358, metadata !1555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %425, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1551, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %366, metadata !1549, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %422, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %360, metadata !1528, metadata !DIExpression()), !dbg !1587
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1976
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1587
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1591
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1676
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1684
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %465, metadata !1556, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1551, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %462, metadata !1549, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %459, metadata !1536, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %458, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %457, metadata !1528, metadata !DIExpression()), !dbg !1587
  br i1 %121, label %478, label %467, !dbg !1977

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
  br i1 %131, label %479, label %499, !dbg !1979

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1980

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
  %490 = lshr i8 %481, 5, !dbg !1981
  %491 = zext i8 %490 to i64, !dbg !1981
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1982
  %493 = load i32, i32* %492, align 4, !dbg !1982, !tbaa !569
  %494 = and i8 %481, 31, !dbg !1983
  %495 = zext i8 %494 to i32, !dbg !1983
  %496 = shl nuw i32 1, %495, !dbg !1984
  %497 = and i32 %493, %496, !dbg !1984
  %498 = icmp eq i32 %497, 0, !dbg !1984
  br i1 %498, label %499, label %510, !dbg !1985

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
  br i1 %165, label %510, label %546, !dbg !1986

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1976
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1587
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1591
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1987
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1684
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %518, metadata !1556, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %516, metadata !1549, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %513, metadata !1536, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %512, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %511, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.label(metadata !1584), !dbg !1988
  br i1 %119, label %638, label %520, !dbg !1989

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1554, metadata !DIExpression()), !dbg !1684
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1991
  br i1 %521, label %538, label %522, !dbg !1991

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1993
  br i1 %523, label %524, label %526, !dbg !1997

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1993
  store i8 39, i8* %525, align 1, !dbg !1993, !tbaa !578
  br label %526, !dbg !1993

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %527, metadata !1535, metadata !DIExpression()), !dbg !1587
  %528 = icmp ult i64 %527, %519, !dbg !1998
  br i1 %528, label %529, label %531, !dbg !2001

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1998
  store i8 36, i8* %530, align 1, !dbg !1998, !tbaa !578
  br label %531, !dbg !1998

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %532, metadata !1535, metadata !DIExpression()), !dbg !1587
  %533 = icmp ult i64 %532, %519, !dbg !2002
  br i1 %533, label %534, label %536, !dbg !2005

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2002
  store i8 39, i8* %535, align 1, !dbg !2002, !tbaa !578
  br label %536, !dbg !2002

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %537, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, metadata !1543, metadata !DIExpression()), !dbg !1587
  br label %538, !dbg !2006

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1684
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %539, metadata !1535, metadata !DIExpression()), !dbg !1587
  %541 = icmp ult i64 %539, %519, !dbg !2007
  br i1 %541, label %542, label %544, !dbg !2010

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2007
  store i8 92, i8* %543, align 1, !dbg !2007, !tbaa !578
  br label %544, !dbg !2007

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %556, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %555, metadata !1556, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %552, metadata !1549, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %549, metadata !1536, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %548, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %547, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.label(metadata !1585), !dbg !2011
  br label %570, !dbg !2012

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1976
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1587
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1591
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1987
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2015
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %555, metadata !1556, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %552, metadata !1549, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %549, metadata !1536, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %548, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %547, metadata !1528, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.label(metadata !1585), !dbg !2011
  %557 = xor i1 %551, true, !dbg !2012
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2012
  br i1 %558, label %570, label %559, !dbg !2012

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2016
  br i1 %560, label %561, label %563, !dbg !2020

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2016
  store i8 39, i8* %562, align 1, !dbg !2016, !tbaa !578
  br label %563, !dbg !2016

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %564, metadata !1535, metadata !DIExpression()), !dbg !1587
  %565 = icmp ult i64 %564, %556, !dbg !2021
  br i1 %565, label %566, label %568, !dbg !2024

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2021
  store i8 39, i8* %567, align 1, !dbg !2021, !tbaa !578
  br label %568, !dbg !2021

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %569, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, metadata !1543, metadata !DIExpression()), !dbg !1587
  br label %570, !dbg !2025

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1684
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %578, metadata !1535, metadata !DIExpression()), !dbg !1587
  %580 = icmp ult i64 %578, %571, !dbg !2026
  br i1 %580, label %581, label %583, !dbg !2029

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2026
  store i8 %572, i8* %582, align 1, !dbg !2026, !tbaa !578
  br label %583, !dbg !2026

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %584, metadata !1535, metadata !DIExpression()), !dbg !1587
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2030
  call void @llvm.dbg.value(metadata i8 poison, metadata !1542, metadata !DIExpression()), !dbg !1587
  br label %586, !dbg !2031

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1976
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1587
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1591
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1987
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %593, metadata !1549, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 poison, metadata !1543, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1542, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %589, metadata !1536, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %588, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %587, metadata !1528, metadata !DIExpression()), !dbg !1587
  %595 = add i64 %593, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %595, metadata !1549, metadata !DIExpression()), !dbg !1676
  br label %132, !dbg !2033, !llvm.loop !2034

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1526, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1542, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1541, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 undef, metadata !1536, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 undef, metadata !1535, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 undef, metadata !1528, metadata !DIExpression()), !dbg !1587
  %597 = icmp eq i64 %134, 0, !dbg !2036
  %598 = and i1 %126, %597, !dbg !2038
  %599 = and i1 %598, %119, !dbg !2038
  br i1 %599, label %638, label %600, !dbg !2038

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2039
  %602 = or i1 %119, %601, !dbg !2039
  %603 = xor i1 %136, true, !dbg !2039
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2039
  br i1 %604, label %612, label %605, !dbg !2039

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2041

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2043
  br label %653, !dbg !2045

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2046
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2048
  br i1 %611, label %36, label %612, !dbg !2048

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2049
  %615 = or i1 %614, %613, !dbg !2051
  br i1 %615, label %631, label %616, !dbg !2051

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1537, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %134, metadata !1535, metadata !DIExpression()), !dbg !1587
  %617 = load i8, i8* %116, align 1, !dbg !2052, !tbaa !578
  %618 = icmp eq i8 %617, 0, !dbg !2055
  br i1 %618, label %631, label %619, !dbg !2055

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1537, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %622, metadata !1535, metadata !DIExpression()), !dbg !1587
  %623 = icmp ult i64 %622, %140, !dbg !2056
  br i1 %623, label %624, label %626, !dbg !2059

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2056
  store i8 %620, i8* %625, align 1, !dbg !2056, !tbaa !578
  br label %626, !dbg !2056

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %627, metadata !1535, metadata !DIExpression()), !dbg !1587
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2060
  call void @llvm.dbg.value(metadata i8* %628, metadata !1537, metadata !DIExpression()), !dbg !1587
  %629 = load i8, i8* %628, align 1, !dbg !2052, !tbaa !578
  %630 = icmp eq i8 %629, 0, !dbg !2055
  br i1 %630, label %631, label %619, !dbg !2055, !llvm.loop !2061

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1663
  call void @llvm.dbg.value(metadata i64 %632, metadata !1535, metadata !DIExpression()), !dbg !1587
  %633 = icmp ult i64 %632, %140, !dbg !2063
  br i1 %633, label %634, label %653, !dbg !2065

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2066
  store i8 0, i8* %635, align 1, !dbg !2067, !tbaa !578
  br label %653, !dbg !2066

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1586), !dbg !1893
  %637 = icmp eq i32 %112, 2, !dbg !2068
  br i1 %637, label %643, label %647, !dbg !1894

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1586), !dbg !1893
  %641 = icmp eq i32 %112, 2, !dbg !2068
  %642 = select i1 %118, i32 4, i32 2, !dbg !1894
  br i1 %641, label %643, label %647, !dbg !1894

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1894

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1529, metadata !DIExpression()), !dbg !1587
  %651 = and i32 %5, -3, !dbg !2069
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2070
  br label %653, !dbg !2071

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2072
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2073 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2075 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2079, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %1, metadata !2080, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2081, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %0, metadata !2083, metadata !DIExpression()) #33, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %1, metadata !2088, metadata !DIExpression()) #33, !dbg !2096
  call void @llvm.dbg.value(metadata i64* null, metadata !2089, metadata !DIExpression()) #33, !dbg !2096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2090, metadata !DIExpression()) #33, !dbg !2096
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2098
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2098
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2091, metadata !DIExpression()) #33, !dbg !2096
  %6 = tail call i32* @__errno_location() #36, !dbg !2099
  %7 = load i32, i32* %6, align 4, !dbg !2099, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %7, metadata !2092, metadata !DIExpression()) #33, !dbg !2096
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2100
  %9 = load i32, i32* %8, align 4, !dbg !2100, !tbaa !1469
  %10 = or i32 %9, 1, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %10, metadata !2093, metadata !DIExpression()) #33, !dbg !2096
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2102
  %12 = load i32, i32* %11, align 8, !dbg !2102, !tbaa !1418
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2103
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2104
  %15 = load i8*, i8** %14, align 8, !dbg !2104, !tbaa !1491
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2105
  %17 = load i8*, i8** %16, align 8, !dbg !2105, !tbaa !1494
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !2106
  %19 = add i64 %18, 1, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %19, metadata !2094, metadata !DIExpression()) #33, !dbg !2096
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #40, !dbg !2108
  call void @llvm.dbg.value(metadata i8* %20, metadata !2095, metadata !DIExpression()) #33, !dbg !2096
  %21 = load i32, i32* %11, align 8, !dbg !2109, !tbaa !1418
  %22 = load i8*, i8** %14, align 8, !dbg !2110, !tbaa !1491
  %23 = load i8*, i8** %16, align 8, !dbg !2111, !tbaa !1494
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !2112
  store i32 %7, i32* %6, align 4, !dbg !2113, !tbaa !569
  ret i8* %20, !dbg !2114
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2084 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2083, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %1, metadata !2088, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64* %2, metadata !2089, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2090, metadata !DIExpression()), !dbg !2115
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2116
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2116
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2091, metadata !DIExpression()), !dbg !2115
  %7 = tail call i32* @__errno_location() #36, !dbg !2117
  %8 = load i32, i32* %7, align 4, !dbg !2117, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %8, metadata !2092, metadata !DIExpression()), !dbg !2115
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2118
  %10 = load i32, i32* %9, align 4, !dbg !2118, !tbaa !1469
  %11 = icmp eq i64* %2, null, !dbg !2119
  %12 = zext i1 %11 to i32, !dbg !2119
  %13 = or i32 %10, %12, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %13, metadata !2093, metadata !DIExpression()), !dbg !2115
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2121
  %15 = load i32, i32* %14, align 8, !dbg !2121, !tbaa !1418
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2122
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2123
  %18 = load i8*, i8** %17, align 8, !dbg !2123, !tbaa !1491
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2124
  %20 = load i8*, i8** %19, align 8, !dbg !2124, !tbaa !1494
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2125
  %22 = add i64 %21, 1, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %22, metadata !2094, metadata !DIExpression()), !dbg !2115
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #40, !dbg !2127
  call void @llvm.dbg.value(metadata i8* %23, metadata !2095, metadata !DIExpression()), !dbg !2115
  %24 = load i32, i32* %14, align 8, !dbg !2128, !tbaa !1418
  %25 = load i8*, i8** %17, align 8, !dbg !2129, !tbaa !1491
  %26 = load i8*, i8** %19, align 8, !dbg !2130, !tbaa !1494
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2131
  store i32 %8, i32* %7, align 4, !dbg !2132, !tbaa !569
  br i1 %11, label %29, label %28, !dbg !2133

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2134, !tbaa !2136
  br label %29, !dbg !2137

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2138
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2139 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2144, !tbaa !474
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2141, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 1, metadata !2142, metadata !DIExpression()), !dbg !2146
  %2 = load i32, i32* @nslots, align 4, !tbaa !569
  call void @llvm.dbg.value(metadata i32 1, metadata !2142, metadata !DIExpression()), !dbg !2146
  %3 = icmp sgt i32 %2, 1, !dbg !2147
  br i1 %3, label %4, label %6, !dbg !2149

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2147
  br label %10, !dbg !2149

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2150
  %8 = load i8*, i8** %7, align 8, !dbg !2150, !tbaa !2152
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2154
  br i1 %9, label %17, label %16, !dbg !2155

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2142, metadata !DIExpression()), !dbg !2146
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2156
  %13 = load i8*, i8** %12, align 8, !dbg !2156, !tbaa !2152
  tail call void @free(i8* noundef %13) #33, !dbg !2157
  %14 = add nuw nsw i64 %11, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %14, metadata !2142, metadata !DIExpression()), !dbg !2146
  %15 = icmp eq i64 %14, %5, !dbg !2147
  br i1 %15, label %6, label %10, !dbg !2149, !llvm.loop !2159

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !2161
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2163, !tbaa !2164
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2165, !tbaa !2152
  br label %17, !dbg !2166

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2167
  br i1 %18, label %21, label %19, !dbg !2169

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2170
  tail call void @free(i8* noundef %20) #33, !dbg !2172
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2173, !tbaa !474
  br label %21, !dbg !2174

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2175, !tbaa !569
  ret void, !dbg !2176
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2177 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2179, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8* %1, metadata !2180, metadata !DIExpression()), !dbg !2181
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2182
  ret i8* %3, !dbg !2183
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2184 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2188, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8* %1, metadata !2189, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i64 %2, metadata !2190, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2191, metadata !DIExpression()), !dbg !2204
  %6 = tail call i32* @__errno_location() #36, !dbg !2205
  %7 = load i32, i32* %6, align 4, !dbg !2205, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %7, metadata !2192, metadata !DIExpression()), !dbg !2204
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2206, !tbaa !474
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2193, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2194, metadata !DIExpression()), !dbg !2204
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2207
  br i1 %9, label %10, label %11, !dbg !2207

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2209
  unreachable, !dbg !2209

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2210, !tbaa !569
  %13 = icmp sgt i32 %12, %0, !dbg !2211
  br i1 %13, label %36, label %14, !dbg !2212

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2213
  call void @llvm.dbg.value(metadata i1 %15, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2214
  %16 = bitcast i64* %5 to i8*, !dbg !2215
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2215
  %17 = sext i32 %12 to i64, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %17, metadata !2198, metadata !DIExpression()), !dbg !2214
  store i64 %17, i64* %5, align 8, !dbg !2217, !tbaa !2136
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2218
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2218
  %20 = add nuw nsw i32 %0, 1, !dbg !2219
  %21 = sub i32 %20, %12, !dbg !2220
  %22 = sext i32 %21 to i64, !dbg !2221
  call void @llvm.dbg.value(metadata i64* %5, metadata !2198, metadata !DIExpression(DW_OP_deref)), !dbg !2214
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !2222
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2222
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2193, metadata !DIExpression()), !dbg !2204
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2223, !tbaa !474
  br i1 %15, label %25, label %26, !dbg !2224

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2225, !tbaa.struct !2227
  br label %26, !dbg !2228

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2229, !tbaa !569
  %28 = sext i32 %27 to i64, !dbg !2230
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2230
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2231
  %31 = load i64, i64* %5, align 8, !dbg !2232, !tbaa !2136
  call void @llvm.dbg.value(metadata i64 %31, metadata !2198, metadata !DIExpression()), !dbg !2214
  %32 = sub nsw i64 %31, %28, !dbg !2233
  %33 = shl i64 %32, 4, !dbg !2234
  call void @llvm.dbg.value(metadata i8* %30, metadata !1621, metadata !DIExpression()) #33, !dbg !2235
  call void @llvm.dbg.value(metadata i32 0, metadata !1624, metadata !DIExpression()) #33, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %33, metadata !1625, metadata !DIExpression()) #33, !dbg !2235
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !2237
  %34 = load i64, i64* %5, align 8, !dbg !2238, !tbaa !2136
  call void @llvm.dbg.value(metadata i64 %34, metadata !2198, metadata !DIExpression()), !dbg !2214
  %35 = trunc i64 %34 to i32, !dbg !2238
  store i32 %35, i32* @nslots, align 4, !dbg !2239, !tbaa !569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2240
  br label %36, !dbg !2241

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2204
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2193, metadata !DIExpression()), !dbg !2204
  %38 = zext i32 %0 to i64, !dbg !2242
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2243
  %40 = load i64, i64* %39, align 8, !dbg !2243, !tbaa !2164
  call void @llvm.dbg.value(metadata i64 %40, metadata !2199, metadata !DIExpression()), !dbg !2244
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2245
  %42 = load i8*, i8** %41, align 8, !dbg !2245, !tbaa !2152
  call void @llvm.dbg.value(metadata i8* %42, metadata !2201, metadata !DIExpression()), !dbg !2244
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2246
  %44 = load i32, i32* %43, align 4, !dbg !2246, !tbaa !1469
  %45 = or i32 %44, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %45, metadata !2202, metadata !DIExpression()), !dbg !2244
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2248
  %47 = load i32, i32* %46, align 8, !dbg !2248, !tbaa !1418
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2249
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2250
  %50 = load i8*, i8** %49, align 8, !dbg !2250, !tbaa !1491
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2251
  %52 = load i8*, i8** %51, align 8, !dbg !2251, !tbaa !1494
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %53, metadata !2203, metadata !DIExpression()), !dbg !2244
  %54 = icmp ugt i64 %40, %53, !dbg !2253
  br i1 %54, label %65, label %55, !dbg !2255

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %56, metadata !2199, metadata !DIExpression()), !dbg !2244
  store i64 %56, i64* %39, align 8, !dbg !2258, !tbaa !2164
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2259
  br i1 %57, label %59, label %58, !dbg !2261

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !2262
  br label %59, !dbg !2262

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #40, !dbg !2263
  call void @llvm.dbg.value(metadata i8* %60, metadata !2201, metadata !DIExpression()), !dbg !2244
  store i8* %60, i8** %41, align 8, !dbg !2264, !tbaa !2152
  %61 = load i32, i32* %46, align 8, !dbg !2265, !tbaa !1418
  %62 = load i8*, i8** %49, align 8, !dbg !2266, !tbaa !1491
  %63 = load i8*, i8** %51, align 8, !dbg !2267, !tbaa !1494
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2268
  br label %65, !dbg !2269

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2244
  call void @llvm.dbg.value(metadata i8* %66, metadata !2201, metadata !DIExpression()), !dbg !2244
  store i32 %7, i32* %6, align 4, !dbg !2270, !tbaa !569
  ret i8* %66, !dbg !2271
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2276, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8* %1, metadata !2277, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i64 %2, metadata !2278, metadata !DIExpression()), !dbg !2279
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2280
  ret i8* %4, !dbg !2281
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2282 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2284, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 0, metadata !2179, metadata !DIExpression()) #33, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %0, metadata !2180, metadata !DIExpression()) #33, !dbg !2286
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2288
  ret i8* %2, !dbg !2289
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2290 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2294, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %1, metadata !2295, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 0, metadata !2276, metadata !DIExpression()) #33, !dbg !2297
  call void @llvm.dbg.value(metadata i8* %0, metadata !2277, metadata !DIExpression()) #33, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %1, metadata !2278, metadata !DIExpression()) #33, !dbg !2297
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2299
  ret i8* %3, !dbg !2300
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2301 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2305, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %1, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %2, metadata !2307, metadata !DIExpression()), !dbg !2309
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2310
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2310
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2308, metadata !DIExpression()), !dbg !2311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2312), !dbg !2315
  call void @llvm.dbg.value(metadata i32 %1, metadata !2316, metadata !DIExpression()) #33, !dbg !2322
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2321, metadata !DIExpression()) #33, !dbg !2324
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2324, !alias.scope !2312
  %6 = icmp eq i32 %1, 10, !dbg !2325
  br i1 %6, label %7, label %8, !dbg !2327

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2328, !noalias !2312
  unreachable, !dbg !2328

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2329
  store i32 %1, i32* %9, align 8, !dbg !2330, !tbaa !1418, !alias.scope !2312
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2331
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2332
  ret i8* %10, !dbg !2333
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2334 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2338, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i32 %1, metadata !2339, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8* %2, metadata !2340, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %3, metadata !2341, metadata !DIExpression()), !dbg !2343
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2344
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2344
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2342, metadata !DIExpression()), !dbg !2345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %1, metadata !2316, metadata !DIExpression()) #33, !dbg !2350
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2321, metadata !DIExpression()) #33, !dbg !2352
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !2352, !alias.scope !2346
  %7 = icmp eq i32 %1, 10, !dbg !2353
  br i1 %7, label %8, label %9, !dbg !2354

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !2355, !noalias !2346
  unreachable, !dbg !2355

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2356
  store i32 %1, i32* %10, align 8, !dbg !2357, !tbaa !1418, !alias.scope !2346
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2358
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2359
  ret i8* %11, !dbg !2360
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2361 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8* %1, metadata !2366, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i32 0, metadata !2305, metadata !DIExpression()) #33, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %0, metadata !2306, metadata !DIExpression()) #33, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %1, metadata !2307, metadata !DIExpression()) #33, !dbg !2368
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2370
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2370
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2308, metadata !DIExpression()) #33, !dbg !2371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372) #33, !dbg !2375
  call void @llvm.dbg.value(metadata i32 %0, metadata !2316, metadata !DIExpression()) #33, !dbg !2376
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2321, metadata !DIExpression()) #33, !dbg !2378
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !2378, !alias.scope !2372
  %5 = icmp eq i32 %0, 10, !dbg !2379
  br i1 %5, label %6, label %7, !dbg !2380

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !2381, !noalias !2372
  unreachable, !dbg !2381

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2382
  store i32 %0, i32* %8, align 8, !dbg !2383, !tbaa !1418, !alias.scope !2372
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2384
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2385
  ret i8* %9, !dbg !2386
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2387 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %1, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %2, metadata !2393, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2338, metadata !DIExpression()) #33, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %0, metadata !2339, metadata !DIExpression()) #33, !dbg !2395
  call void @llvm.dbg.value(metadata i8* %1, metadata !2340, metadata !DIExpression()) #33, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %2, metadata !2341, metadata !DIExpression()) #33, !dbg !2395
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2397
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2397
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2342, metadata !DIExpression()) #33, !dbg !2398
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399) #33, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %0, metadata !2316, metadata !DIExpression()) #33, !dbg !2403
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2321, metadata !DIExpression()) #33, !dbg !2405
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2405, !alias.scope !2399
  %6 = icmp eq i32 %0, 10, !dbg !2406
  br i1 %6, label %7, label %8, !dbg !2407

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2408, !noalias !2399
  unreachable, !dbg !2408

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2409
  store i32 %0, i32* %9, align 8, !dbg !2410, !tbaa !1418, !alias.scope !2399
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2412
  ret i8* %10, !dbg !2413
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2414 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %1, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 %2, metadata !2420, metadata !DIExpression()), !dbg !2422
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2423
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2423
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2425, !tbaa.struct !2426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1436, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 %2, metadata !1437, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 1, metadata !1438, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 %2, metadata !1439, metadata !DIExpression()), !dbg !2427
  %6 = lshr i8 %2, 5, !dbg !2429
  %7 = zext i8 %6 to i64, !dbg !2429
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2430
  call void @llvm.dbg.value(metadata i32* %8, metadata !1440, metadata !DIExpression()), !dbg !2427
  %9 = and i8 %2, 31, !dbg !2431
  %10 = zext i8 %9 to i32, !dbg !2431
  call void @llvm.dbg.value(metadata i32 %10, metadata !1442, metadata !DIExpression()), !dbg !2427
  %11 = load i32, i32* %8, align 4, !dbg !2432, !tbaa !569
  %12 = lshr i32 %11, %10, !dbg !2433
  %13 = and i32 %12, 1, !dbg !2434
  call void @llvm.dbg.value(metadata i32 %13, metadata !1443, metadata !DIExpression()), !dbg !2427
  %14 = xor i32 %13, 1, !dbg !2435
  %15 = shl i32 %14, %10, !dbg !2436
  %16 = xor i32 %15, %11, !dbg !2437
  store i32 %16, i32* %8, align 4, !dbg !2437, !tbaa !569
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2439
  ret i8* %17, !dbg !2440
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2441 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2445, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 %1, metadata !2446, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()) #33, !dbg !2448
  call void @llvm.dbg.value(metadata i64 -1, metadata !2419, metadata !DIExpression()) #33, !dbg !2448
  call void @llvm.dbg.value(metadata i8 %1, metadata !2420, metadata !DIExpression()) #33, !dbg !2448
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2450
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2450
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2421, metadata !DIExpression()) #33, !dbg !2451
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2452, !tbaa.struct !2426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1436, metadata !DIExpression()) #33, !dbg !2453
  call void @llvm.dbg.value(metadata i8 %1, metadata !1437, metadata !DIExpression()) #33, !dbg !2453
  call void @llvm.dbg.value(metadata i32 1, metadata !1438, metadata !DIExpression()) #33, !dbg !2453
  call void @llvm.dbg.value(metadata i8 %1, metadata !1439, metadata !DIExpression()) #33, !dbg !2453
  %5 = lshr i8 %1, 5, !dbg !2455
  %6 = zext i8 %5 to i64, !dbg !2455
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2456
  call void @llvm.dbg.value(metadata i32* %7, metadata !1440, metadata !DIExpression()) #33, !dbg !2453
  %8 = and i8 %1, 31, !dbg !2457
  %9 = zext i8 %8 to i32, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %9, metadata !1442, metadata !DIExpression()) #33, !dbg !2453
  %10 = load i32, i32* %7, align 4, !dbg !2458, !tbaa !569
  %11 = lshr i32 %10, %9, !dbg !2459
  %12 = and i32 %11, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %12, metadata !1443, metadata !DIExpression()) #33, !dbg !2453
  %13 = xor i32 %12, 1, !dbg !2461
  %14 = shl i32 %13, %9, !dbg !2462
  %15 = xor i32 %14, %10, !dbg !2463
  store i32 %15, i32* %7, align 4, !dbg !2463, !tbaa !569
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2464
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2465
  ret i8* %16, !dbg !2466
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2467 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2469, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %0, metadata !2445, metadata !DIExpression()) #33, !dbg !2471
  call void @llvm.dbg.value(metadata i8 58, metadata !2446, metadata !DIExpression()) #33, !dbg !2471
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()) #33, !dbg !2473
  call void @llvm.dbg.value(metadata i64 -1, metadata !2419, metadata !DIExpression()) #33, !dbg !2473
  call void @llvm.dbg.value(metadata i8 58, metadata !2420, metadata !DIExpression()) #33, !dbg !2473
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2475
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2475
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2421, metadata !DIExpression()) #33, !dbg !2476
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2477, !tbaa.struct !2426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1436, metadata !DIExpression()) #33, !dbg !2478
  call void @llvm.dbg.value(metadata i8 58, metadata !1437, metadata !DIExpression()) #33, !dbg !2478
  call void @llvm.dbg.value(metadata i32 1, metadata !1438, metadata !DIExpression()) #33, !dbg !2478
  call void @llvm.dbg.value(metadata i8 58, metadata !1439, metadata !DIExpression()) #33, !dbg !2478
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2480
  call void @llvm.dbg.value(metadata i32* %4, metadata !1440, metadata !DIExpression()) #33, !dbg !2478
  call void @llvm.dbg.value(metadata i32 26, metadata !1442, metadata !DIExpression()) #33, !dbg !2478
  %5 = load i32, i32* %4, align 4, !dbg !2481, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %5, metadata !1443, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2478
  %6 = or i32 %5, 67108864, !dbg !2482
  store i32 %6, i32* %4, align 4, !dbg !2482, !tbaa !569
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !2483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2484
  ret i8* %7, !dbg !2485
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2486 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2488, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i64 %1, metadata !2489, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()) #33, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %1, metadata !2419, metadata !DIExpression()) #33, !dbg !2491
  call void @llvm.dbg.value(metadata i8 58, metadata !2420, metadata !DIExpression()) #33, !dbg !2491
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2493
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2493
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2421, metadata !DIExpression()) #33, !dbg !2494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2495, !tbaa.struct !2426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1436, metadata !DIExpression()) #33, !dbg !2496
  call void @llvm.dbg.value(metadata i8 58, metadata !1437, metadata !DIExpression()) #33, !dbg !2496
  call void @llvm.dbg.value(metadata i32 1, metadata !1438, metadata !DIExpression()) #33, !dbg !2496
  call void @llvm.dbg.value(metadata i8 58, metadata !1439, metadata !DIExpression()) #33, !dbg !2496
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2498
  call void @llvm.dbg.value(metadata i32* %5, metadata !1440, metadata !DIExpression()) #33, !dbg !2496
  call void @llvm.dbg.value(metadata i32 26, metadata !1442, metadata !DIExpression()) #33, !dbg !2496
  %6 = load i32, i32* %5, align 4, !dbg !2499, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %6, metadata !1443, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2496
  %7 = or i32 %6, 67108864, !dbg !2500
  store i32 %7, i32* %5, align 4, !dbg !2500, !tbaa !569
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2501
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2502
  ret i8* %8, !dbg !2503
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2504 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2506, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 %1, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %2, metadata !2508, metadata !DIExpression()), !dbg !2510
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2511
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2509, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i32 %1, metadata !2316, metadata !DIExpression()) #33, !dbg !2513
  call void @llvm.dbg.value(metadata i32 0, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2513
  %6 = icmp eq i32 %1, 10, !dbg !2515
  br i1 %6, label %7, label %8, !dbg !2516

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2517, !noalias !2518
  unreachable, !dbg !2517

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2513
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2521
  store i32 %1, i32* %9, align 8, !dbg !2521, !tbaa.struct !2426
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2521
  %11 = bitcast i32* %10 to i8*, !dbg !2521
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2521
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1436, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 58, metadata !1437, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i32 1, metadata !1438, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 58, metadata !1439, metadata !DIExpression()), !dbg !2522
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2524
  call void @llvm.dbg.value(metadata i32* %12, metadata !1440, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i32 26, metadata !1442, metadata !DIExpression()), !dbg !2522
  %13 = load i32, i32* %12, align 4, !dbg !2525, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %13, metadata !1443, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2522
  %14 = or i32 %13, 67108864, !dbg !2526
  store i32 %14, i32* %12, align 4, !dbg !2526, !tbaa !569
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2527
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2528
  ret i8* %15, !dbg !2529
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2530 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2534, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %1, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %2, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %3, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 %0, metadata !2539, metadata !DIExpression()) #33, !dbg !2549
  call void @llvm.dbg.value(metadata i8* %1, metadata !2544, metadata !DIExpression()) #33, !dbg !2549
  call void @llvm.dbg.value(metadata i8* %2, metadata !2545, metadata !DIExpression()) #33, !dbg !2549
  call void @llvm.dbg.value(metadata i8* %3, metadata !2546, metadata !DIExpression()) #33, !dbg !2549
  call void @llvm.dbg.value(metadata i64 -1, metadata !2547, metadata !DIExpression()) #33, !dbg !2549
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2551
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2551
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2548, metadata !DIExpression()) #33, !dbg !2552
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2553, !tbaa.struct !2426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1476, metadata !DIExpression()) #33, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %1, metadata !1477, metadata !DIExpression()) #33, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %2, metadata !1478, metadata !DIExpression()) #33, !dbg !2554
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1476, metadata !DIExpression()) #33, !dbg !2554
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2556
  store i32 10, i32* %7, align 8, !dbg !2557, !tbaa !1418
  %8 = icmp ne i8* %1, null, !dbg !2558
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2559
  br i1 %10, label %12, label %11, !dbg !2559

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2560
  unreachable, !dbg !2560

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2561
  store i8* %1, i8** %13, align 8, !dbg !2562, !tbaa !1491
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2563
  store i8* %2, i8** %14, align 8, !dbg !2564, !tbaa !1494
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2565
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2566
  ret i8* %15, !dbg !2567
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2540 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2539, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* %1, metadata !2544, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* %2, metadata !2545, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* %3, metadata !2546, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %4, metadata !2547, metadata !DIExpression()), !dbg !2568
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2569
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2569
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2548, metadata !DIExpression()), !dbg !2570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2571, !tbaa.struct !2426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1476, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata i8* %1, metadata !1477, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata i8* %2, metadata !1478, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1476, metadata !DIExpression()) #33, !dbg !2572
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2574
  store i32 10, i32* %8, align 8, !dbg !2575, !tbaa !1418
  %9 = icmp ne i8* %1, null, !dbg !2576
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2577
  br i1 %11, label %13, label %12, !dbg !2577

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !2578
  unreachable, !dbg !2578

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2579
  store i8* %1, i8** %14, align 8, !dbg !2580, !tbaa !1491
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2581
  store i8* %2, i8** %15, align 8, !dbg !2582, !tbaa !1494
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2583
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2584
  ret i8* %16, !dbg !2585
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2586 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2590, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %1, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %2, metadata !2592, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i32 0, metadata !2534, metadata !DIExpression()) #33, !dbg !2594
  call void @llvm.dbg.value(metadata i8* %0, metadata !2535, metadata !DIExpression()) #33, !dbg !2594
  call void @llvm.dbg.value(metadata i8* %1, metadata !2536, metadata !DIExpression()) #33, !dbg !2594
  call void @llvm.dbg.value(metadata i8* %2, metadata !2537, metadata !DIExpression()) #33, !dbg !2594
  call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()) #33, !dbg !2596
  call void @llvm.dbg.value(metadata i8* %0, metadata !2544, metadata !DIExpression()) #33, !dbg !2596
  call void @llvm.dbg.value(metadata i8* %1, metadata !2545, metadata !DIExpression()) #33, !dbg !2596
  call void @llvm.dbg.value(metadata i8* %2, metadata !2546, metadata !DIExpression()) #33, !dbg !2596
  call void @llvm.dbg.value(metadata i64 -1, metadata !2547, metadata !DIExpression()) #33, !dbg !2596
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2598
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2598
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2548, metadata !DIExpression()) #33, !dbg !2599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2600, !tbaa.struct !2426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1476, metadata !DIExpression()) #33, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %0, metadata !1477, metadata !DIExpression()) #33, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %1, metadata !1478, metadata !DIExpression()) #33, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1476, metadata !DIExpression()) #33, !dbg !2601
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2603
  store i32 10, i32* %6, align 8, !dbg !2604, !tbaa !1418
  %7 = icmp ne i8* %0, null, !dbg !2605
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2606
  br i1 %9, label %11, label %10, !dbg !2606

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2607
  unreachable, !dbg !2607

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2608
  store i8* %0, i8** %12, align 8, !dbg !2609, !tbaa !1491
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2610
  store i8* %1, i8** %13, align 8, !dbg !2611, !tbaa !1494
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2613
  ret i8* %14, !dbg !2614
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2615 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2619, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8* %1, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8* %2, metadata !2621, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 %3, metadata !2622, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()) #33, !dbg !2624
  call void @llvm.dbg.value(metadata i8* %0, metadata !2544, metadata !DIExpression()) #33, !dbg !2624
  call void @llvm.dbg.value(metadata i8* %1, metadata !2545, metadata !DIExpression()) #33, !dbg !2624
  call void @llvm.dbg.value(metadata i8* %2, metadata !2546, metadata !DIExpression()) #33, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %3, metadata !2547, metadata !DIExpression()) #33, !dbg !2624
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2626
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2548, metadata !DIExpression()) #33, !dbg !2627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2628, !tbaa.struct !2426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1476, metadata !DIExpression()) #33, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %0, metadata !1477, metadata !DIExpression()) #33, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %1, metadata !1478, metadata !DIExpression()) #33, !dbg !2629
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1476, metadata !DIExpression()) #33, !dbg !2629
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2631
  store i32 10, i32* %7, align 8, !dbg !2632, !tbaa !1418
  %8 = icmp ne i8* %0, null, !dbg !2633
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2634
  br i1 %10, label %12, label %11, !dbg !2634

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2635
  unreachable, !dbg !2635

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2636
  store i8* %0, i8** %13, align 8, !dbg !2637, !tbaa !1491
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2638
  store i8* %1, i8** %14, align 8, !dbg !2639, !tbaa !1494
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2640
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2641
  ret i8* %15, !dbg !2642
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2647, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %1, metadata !2648, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %2, metadata !2649, metadata !DIExpression()), !dbg !2650
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2651
  ret i8* %4, !dbg !2652
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2653 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %1, metadata !2658, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i32 0, metadata !2647, metadata !DIExpression()) #33, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %0, metadata !2648, metadata !DIExpression()) #33, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %1, metadata !2649, metadata !DIExpression()) #33, !dbg !2660
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2662
  ret i8* %3, !dbg !2663
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2664 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* %1, metadata !2669, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 %0, metadata !2647, metadata !DIExpression()) #33, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %1, metadata !2648, metadata !DIExpression()) #33, !dbg !2671
  call void @llvm.dbg.value(metadata i64 -1, metadata !2649, metadata !DIExpression()) #33, !dbg !2671
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2673
  ret i8* %3, !dbg !2674
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2675 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 0, metadata !2668, metadata !DIExpression()) #33, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #33, !dbg !2681
  call void @llvm.dbg.value(metadata i32 0, metadata !2647, metadata !DIExpression()) #33, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %0, metadata !2648, metadata !DIExpression()) #33, !dbg !2683
  call void @llvm.dbg.value(metadata i64 -1, metadata !2649, metadata !DIExpression()) #33, !dbg !2683
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2685
  ret i8* %2, !dbg !2686
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2687 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2726, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %1, metadata !2727, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %2, metadata !2728, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %3, metadata !2729, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8** %4, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i64 %5, metadata !2731, metadata !DIExpression()), !dbg !2732
  %7 = icmp eq i8* %1, null, !dbg !2733
  br i1 %7, label %10, label %8, !dbg !2735

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !2736
  br label %12, !dbg !2736

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.106, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !2737
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.108, i64 0, i64 0), i32 noundef 5) #33, !dbg !2738
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !2738
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.109, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2739
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.110, i64 0, i64 0), i32 noundef 5) #33, !dbg !2740
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.111, i64 0, i64 0)) #33, !dbg !2740
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.109, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2741
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
  ], !dbg !2742

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.112, i64 0, i64 0), i32 noundef 5) #33, !dbg !2743
  %21 = load i8*, i8** %4, align 8, !dbg !2743, !tbaa !474
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !2743
  br label %147, !dbg !2745

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.113, i64 0, i64 0), i32 noundef 5) #33, !dbg !2746
  %25 = load i8*, i8** %4, align 8, !dbg !2746, !tbaa !474
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2746
  %27 = load i8*, i8** %26, align 8, !dbg !2746, !tbaa !474
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !2746
  br label %147, !dbg !2747

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.114, i64 0, i64 0), i32 noundef 5) #33, !dbg !2748
  %31 = load i8*, i8** %4, align 8, !dbg !2748, !tbaa !474
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2748
  %33 = load i8*, i8** %32, align 8, !dbg !2748, !tbaa !474
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2748
  %35 = load i8*, i8** %34, align 8, !dbg !2748, !tbaa !474
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !2748
  br label %147, !dbg !2749

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.115, i64 0, i64 0), i32 noundef 5) #33, !dbg !2750
  %39 = load i8*, i8** %4, align 8, !dbg !2750, !tbaa !474
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2750
  %41 = load i8*, i8** %40, align 8, !dbg !2750, !tbaa !474
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2750
  %43 = load i8*, i8** %42, align 8, !dbg !2750, !tbaa !474
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2750
  %45 = load i8*, i8** %44, align 8, !dbg !2750, !tbaa !474
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !2750
  br label %147, !dbg !2751

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.116, i64 0, i64 0), i32 noundef 5) #33, !dbg !2752
  %49 = load i8*, i8** %4, align 8, !dbg !2752, !tbaa !474
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2752
  %51 = load i8*, i8** %50, align 8, !dbg !2752, !tbaa !474
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2752
  %53 = load i8*, i8** %52, align 8, !dbg !2752, !tbaa !474
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2752
  %55 = load i8*, i8** %54, align 8, !dbg !2752, !tbaa !474
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2752
  %57 = load i8*, i8** %56, align 8, !dbg !2752, !tbaa !474
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !2752
  br label %147, !dbg !2753

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.117, i64 0, i64 0), i32 noundef 5) #33, !dbg !2754
  %61 = load i8*, i8** %4, align 8, !dbg !2754, !tbaa !474
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2754
  %63 = load i8*, i8** %62, align 8, !dbg !2754, !tbaa !474
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2754
  %65 = load i8*, i8** %64, align 8, !dbg !2754, !tbaa !474
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2754
  %67 = load i8*, i8** %66, align 8, !dbg !2754, !tbaa !474
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2754
  %69 = load i8*, i8** %68, align 8, !dbg !2754, !tbaa !474
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2754
  %71 = load i8*, i8** %70, align 8, !dbg !2754, !tbaa !474
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !2754
  br label %147, !dbg !2755

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.118, i64 0, i64 0), i32 noundef 5) #33, !dbg !2756
  %75 = load i8*, i8** %4, align 8, !dbg !2756, !tbaa !474
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2756
  %77 = load i8*, i8** %76, align 8, !dbg !2756, !tbaa !474
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2756
  %79 = load i8*, i8** %78, align 8, !dbg !2756, !tbaa !474
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2756
  %81 = load i8*, i8** %80, align 8, !dbg !2756, !tbaa !474
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2756
  %83 = load i8*, i8** %82, align 8, !dbg !2756, !tbaa !474
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2756
  %85 = load i8*, i8** %84, align 8, !dbg !2756, !tbaa !474
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2756
  %87 = load i8*, i8** %86, align 8, !dbg !2756, !tbaa !474
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !2756
  br label %147, !dbg !2757

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.119, i64 0, i64 0), i32 noundef 5) #33, !dbg !2758
  %91 = load i8*, i8** %4, align 8, !dbg !2758, !tbaa !474
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2758
  %93 = load i8*, i8** %92, align 8, !dbg !2758, !tbaa !474
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2758
  %95 = load i8*, i8** %94, align 8, !dbg !2758, !tbaa !474
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2758
  %97 = load i8*, i8** %96, align 8, !dbg !2758, !tbaa !474
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2758
  %99 = load i8*, i8** %98, align 8, !dbg !2758, !tbaa !474
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2758
  %101 = load i8*, i8** %100, align 8, !dbg !2758, !tbaa !474
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2758
  %103 = load i8*, i8** %102, align 8, !dbg !2758, !tbaa !474
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2758
  %105 = load i8*, i8** %104, align 8, !dbg !2758, !tbaa !474
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !2758
  br label %147, !dbg !2759

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.120, i64 0, i64 0), i32 noundef 5) #33, !dbg !2760
  %109 = load i8*, i8** %4, align 8, !dbg !2760, !tbaa !474
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2760
  %111 = load i8*, i8** %110, align 8, !dbg !2760, !tbaa !474
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2760
  %113 = load i8*, i8** %112, align 8, !dbg !2760, !tbaa !474
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2760
  %115 = load i8*, i8** %114, align 8, !dbg !2760, !tbaa !474
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2760
  %117 = load i8*, i8** %116, align 8, !dbg !2760, !tbaa !474
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2760
  %119 = load i8*, i8** %118, align 8, !dbg !2760, !tbaa !474
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2760
  %121 = load i8*, i8** %120, align 8, !dbg !2760, !tbaa !474
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2760
  %123 = load i8*, i8** %122, align 8, !dbg !2760, !tbaa !474
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2760
  %125 = load i8*, i8** %124, align 8, !dbg !2760, !tbaa !474
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !2760
  br label %147, !dbg !2761

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.121, i64 0, i64 0), i32 noundef 5) #33, !dbg !2762
  %129 = load i8*, i8** %4, align 8, !dbg !2762, !tbaa !474
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2762
  %131 = load i8*, i8** %130, align 8, !dbg !2762, !tbaa !474
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2762
  %133 = load i8*, i8** %132, align 8, !dbg !2762, !tbaa !474
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2762
  %135 = load i8*, i8** %134, align 8, !dbg !2762, !tbaa !474
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2762
  %137 = load i8*, i8** %136, align 8, !dbg !2762, !tbaa !474
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2762
  %139 = load i8*, i8** %138, align 8, !dbg !2762, !tbaa !474
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2762
  %141 = load i8*, i8** %140, align 8, !dbg !2762, !tbaa !474
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2762
  %143 = load i8*, i8** %142, align 8, !dbg !2762, !tbaa !474
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2762
  %145 = load i8*, i8** %144, align 8, !dbg !2762, !tbaa !474
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !2762
  br label %147, !dbg !2763

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2764
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2765 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2769, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %1, metadata !2770, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %2, metadata !2771, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %3, metadata !2772, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8** %4, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 0, metadata !2774, metadata !DIExpression()), !dbg !2775
  br label %6, !dbg !2776

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2778
  call void @llvm.dbg.value(metadata i64 %7, metadata !2774, metadata !DIExpression()), !dbg !2775
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2779
  %9 = load i8*, i8** %8, align 8, !dbg !2779, !tbaa !474
  %10 = icmp eq i8* %9, null, !dbg !2781
  %11 = add i64 %7, 1, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %11, metadata !2774, metadata !DIExpression()), !dbg !2775
  br i1 %10, label %12, label %6, !dbg !2781, !llvm.loop !2783

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2785
  ret void, !dbg !2786
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2787 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2802, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %1, metadata !2803, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %2, metadata !2804, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %3, metadata !2805, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2806, metadata !DIExpression()), !dbg !2811
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2812
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2812
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2808, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 0, metadata !2807, metadata !DIExpression()), !dbg !2810
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2807, metadata !DIExpression()), !dbg !2810
  %11 = load i32, i32* %8, align 8, !dbg !2814
  %12 = icmp sgt i32 %11, -1, !dbg !2814
  br i1 %12, label %20, label %13, !dbg !2814

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2814
  store i32 %14, i32* %8, align 8, !dbg !2814
  %15 = icmp ult i32 %11, -7, !dbg !2814
  br i1 %15, label %16, label %20, !dbg !2814

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2814
  %18 = sext i32 %11 to i64, !dbg !2814
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2814
  br label %24, !dbg !2814

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2814
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2814
  store i8* %23, i8** %10, align 8, !dbg !2814
  br label %24, !dbg !2814

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2814
  %28 = load i8*, i8** %27, align 8, !dbg !2814
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2817
  store i8* %28, i8** %29, align 8, !dbg !2818, !tbaa !474
  %30 = icmp eq i8* %28, null, !dbg !2819
  br i1 %30, label %210, label %31, !dbg !2820

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 1, metadata !2807, metadata !DIExpression()), !dbg !2810
  %32 = icmp sgt i32 %25, -1, !dbg !2814
  br i1 %32, label %40, label %33, !dbg !2814

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2814
  store i32 %34, i32* %8, align 8, !dbg !2814
  %35 = icmp ult i32 %25, -7, !dbg !2814
  br i1 %35, label %36, label %40, !dbg !2814

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2814
  %38 = sext i32 %25 to i64, !dbg !2814
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2814
  br label %44, !dbg !2814

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2814
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2814
  store i8* %43, i8** %10, align 8, !dbg !2814
  br label %44, !dbg !2814

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2814
  %48 = load i8*, i8** %47, align 8, !dbg !2814
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2817
  store i8* %48, i8** %49, align 8, !dbg !2818, !tbaa !474
  %50 = icmp eq i8* %48, null, !dbg !2819
  br i1 %50, label %210, label %51, !dbg !2820

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 2, metadata !2807, metadata !DIExpression()), !dbg !2810
  %52 = icmp sgt i32 %45, -1, !dbg !2814
  br i1 %52, label %60, label %53, !dbg !2814

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2814
  store i32 %54, i32* %8, align 8, !dbg !2814
  %55 = icmp ult i32 %45, -7, !dbg !2814
  br i1 %55, label %56, label %60, !dbg !2814

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2814
  %58 = sext i32 %45 to i64, !dbg !2814
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2814
  br label %64, !dbg !2814

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2814
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2814
  store i8* %63, i8** %10, align 8, !dbg !2814
  br label %64, !dbg !2814

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2814
  %68 = load i8*, i8** %67, align 8, !dbg !2814
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2817
  store i8* %68, i8** %69, align 8, !dbg !2818, !tbaa !474
  %70 = icmp eq i8* %68, null, !dbg !2819
  br i1 %70, label %210, label %71, !dbg !2820

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 3, metadata !2807, metadata !DIExpression()), !dbg !2810
  %72 = icmp sgt i32 %65, -1, !dbg !2814
  br i1 %72, label %80, label %73, !dbg !2814

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2814
  store i32 %74, i32* %8, align 8, !dbg !2814
  %75 = icmp ult i32 %65, -7, !dbg !2814
  br i1 %75, label %76, label %80, !dbg !2814

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2814
  %78 = sext i32 %65 to i64, !dbg !2814
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2814
  br label %84, !dbg !2814

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2814
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2814
  store i8* %83, i8** %10, align 8, !dbg !2814
  br label %84, !dbg !2814

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2814
  %88 = load i8*, i8** %87, align 8, !dbg !2814
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2817
  store i8* %88, i8** %89, align 8, !dbg !2818, !tbaa !474
  %90 = icmp eq i8* %88, null, !dbg !2819
  br i1 %90, label %210, label %91, !dbg !2820

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 4, metadata !2807, metadata !DIExpression()), !dbg !2810
  %92 = icmp sgt i32 %85, -1, !dbg !2814
  br i1 %92, label %100, label %93, !dbg !2814

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2814
  store i32 %94, i32* %8, align 8, !dbg !2814
  %95 = icmp ult i32 %85, -7, !dbg !2814
  br i1 %95, label %96, label %100, !dbg !2814

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2814
  %98 = sext i32 %85 to i64, !dbg !2814
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2814
  br label %104, !dbg !2814

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2814
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2814
  store i8* %103, i8** %10, align 8, !dbg !2814
  br label %104, !dbg !2814

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2814
  %108 = load i8*, i8** %107, align 8, !dbg !2814
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2817
  store i8* %108, i8** %109, align 8, !dbg !2818, !tbaa !474
  %110 = icmp eq i8* %108, null, !dbg !2819
  br i1 %110, label %210, label %111, !dbg !2820

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 5, metadata !2807, metadata !DIExpression()), !dbg !2810
  %112 = icmp sgt i32 %105, -1, !dbg !2814
  br i1 %112, label %120, label %113, !dbg !2814

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2814
  store i32 %114, i32* %8, align 8, !dbg !2814
  %115 = icmp ult i32 %105, -7, !dbg !2814
  br i1 %115, label %116, label %120, !dbg !2814

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2814
  %118 = sext i32 %105 to i64, !dbg !2814
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2814
  br label %124, !dbg !2814

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2814
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2814
  store i8* %123, i8** %10, align 8, !dbg !2814
  br label %124, !dbg !2814

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2814
  %128 = load i8*, i8** %127, align 8, !dbg !2814
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2817
  store i8* %128, i8** %129, align 8, !dbg !2818, !tbaa !474
  %130 = icmp eq i8* %128, null, !dbg !2819
  br i1 %130, label %210, label %131, !dbg !2820

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 6, metadata !2807, metadata !DIExpression()), !dbg !2810
  %132 = icmp sgt i32 %125, -1, !dbg !2814
  br i1 %132, label %140, label %133, !dbg !2814

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2814
  store i32 %134, i32* %8, align 8, !dbg !2814
  %135 = icmp ult i32 %125, -7, !dbg !2814
  br i1 %135, label %136, label %140, !dbg !2814

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2814
  %138 = sext i32 %125 to i64, !dbg !2814
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2814
  br label %144, !dbg !2814

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2814
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2814
  store i8* %143, i8** %10, align 8, !dbg !2814
  br label %144, !dbg !2814

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2814
  %148 = load i8*, i8** %147, align 8, !dbg !2814
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2817
  store i8* %148, i8** %149, align 8, !dbg !2818, !tbaa !474
  %150 = icmp eq i8* %148, null, !dbg !2819
  br i1 %150, label %210, label %151, !dbg !2820

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 7, metadata !2807, metadata !DIExpression()), !dbg !2810
  %152 = icmp sgt i32 %145, -1, !dbg !2814
  br i1 %152, label %160, label %153, !dbg !2814

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2814
  store i32 %154, i32* %8, align 8, !dbg !2814
  %155 = icmp ult i32 %145, -7, !dbg !2814
  br i1 %155, label %156, label %160, !dbg !2814

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2814
  %158 = sext i32 %145 to i64, !dbg !2814
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2814
  br label %164, !dbg !2814

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2814
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2814
  store i8* %163, i8** %10, align 8, !dbg !2814
  br label %164, !dbg !2814

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2814
  %168 = load i8*, i8** %167, align 8, !dbg !2814
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2817
  store i8* %168, i8** %169, align 8, !dbg !2818, !tbaa !474
  %170 = icmp eq i8* %168, null, !dbg !2819
  br i1 %170, label %210, label %171, !dbg !2820

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 8, metadata !2807, metadata !DIExpression()), !dbg !2810
  %172 = icmp sgt i32 %165, -1, !dbg !2814
  br i1 %172, label %180, label %173, !dbg !2814

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2814
  store i32 %174, i32* %8, align 8, !dbg !2814
  %175 = icmp ult i32 %165, -7, !dbg !2814
  br i1 %175, label %176, label %180, !dbg !2814

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2814
  %178 = sext i32 %165 to i64, !dbg !2814
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2814
  br label %184, !dbg !2814

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2814
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2814
  store i8* %183, i8** %10, align 8, !dbg !2814
  br label %184, !dbg !2814

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2814
  %188 = load i8*, i8** %187, align 8, !dbg !2814
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2817
  store i8* %188, i8** %189, align 8, !dbg !2818, !tbaa !474
  %190 = icmp eq i8* %188, null, !dbg !2819
  br i1 %190, label %210, label %191, !dbg !2820

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 9, metadata !2807, metadata !DIExpression()), !dbg !2810
  %192 = icmp sgt i32 %185, -1, !dbg !2814
  br i1 %192, label %200, label %193, !dbg !2814

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2814
  store i32 %194, i32* %8, align 8, !dbg !2814
  %195 = icmp ult i32 %185, -7, !dbg !2814
  br i1 %195, label %196, label %200, !dbg !2814

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2814
  %198 = sext i32 %185 to i64, !dbg !2814
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2814
  br label %203, !dbg !2814

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2814
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2814
  store i8* %202, i8** %10, align 8, !dbg !2814
  br label %203, !dbg !2814

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2814
  %206 = load i8*, i8** %205, align 8, !dbg !2814
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2817
  store i8* %206, i8** %207, align 8, !dbg !2818, !tbaa !474
  %208 = icmp eq i8* %206, null, !dbg !2819
  %209 = select i1 %208, i64 9, i64 10, !dbg !2820
  br label %210, !dbg !2820

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2821
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2822
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2823
  ret void, !dbg !2823
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2824 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2828, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* %1, metadata !2829, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* %2, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* %3, metadata !2831, metadata !DIExpression()), !dbg !2833
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2834
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2834
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.va_start(i8* nonnull %7), !dbg !2836
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2837
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2837
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2837, !tbaa.struct !1120
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2837
  call void @llvm.va_end(i8* nonnull %7), !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2839
  ret void, !dbg !2839
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2840 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2841, !tbaa !474
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.109, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2841
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.126, i64 0, i64 0), i32 noundef 5) #33, !dbg !2842
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.127, i64 0, i64 0)) #33, !dbg !2842
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.128, i64 0, i64 0), i32 noundef 5) #33, !dbg !2843
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.130, i64 0, i64 0)) #33, !dbg !2843
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.131, i64 0, i64 0), i32 noundef 5) #33, !dbg !2844
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.132, i64 0, i64 0)) #33, !dbg !2844
  ret void, !dbg !2845
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2846 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %2, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #33, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %1, metadata !2858, metadata !DIExpression()) #33, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %2, metadata !2859, metadata !DIExpression()) #33, !dbg !2860
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %4, metadata !2863, metadata !DIExpression()) #33, !dbg !2868
  %5 = icmp eq i8* %4, null, !dbg !2870
  br i1 %5, label %6, label %7, !dbg !2872

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2873
  unreachable, !dbg !2873

7:                                                ; preds = %3
  ret i8* %4, !dbg !2874
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2856 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2858, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %2, metadata !2859, metadata !DIExpression()), !dbg !2875
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2876
  call void @llvm.dbg.value(metadata i8* %4, metadata !2863, metadata !DIExpression()) #33, !dbg !2877
  %5 = icmp eq i8* %4, null, !dbg !2879
  br i1 %5, label %6, label %7, !dbg !2880

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2881
  unreachable, !dbg !2881

7:                                                ; preds = %3
  ret i8* %4, !dbg !2882
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2883 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2887, metadata !DIExpression()), !dbg !2888
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %2, metadata !2863, metadata !DIExpression()) #33, !dbg !2890
  %3 = icmp eq i8* %2, null, !dbg !2892
  br i1 %3, label %4, label %5, !dbg !2893

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2894
  unreachable, !dbg !2894

5:                                                ; preds = %1
  ret i8* %2, !dbg !2895
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2896 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()) #33, !dbg !2906
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %2, metadata !2863, metadata !DIExpression()) #33, !dbg !2909
  %3 = icmp eq i8* %2, null, !dbg !2911
  br i1 %3, label %4, label %5, !dbg !2912

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2913
  unreachable, !dbg !2913

5:                                                ; preds = %1
  ret i8* %2, !dbg !2914
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2915 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %0, metadata !2887, metadata !DIExpression()) #33, !dbg !2921
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %2, metadata !2863, metadata !DIExpression()) #33, !dbg !2924
  %3 = icmp eq i8* %2, null, !dbg !2926
  br i1 %3, label %4, label %5, !dbg !2927

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2928
  unreachable, !dbg !2928

5:                                                ; preds = %1
  ret i8* %2, !dbg !2929
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2930 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2934, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %1, metadata !2935, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #33, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %1, metadata !2941, metadata !DIExpression()) #33, !dbg !2942
  %3 = icmp eq i64 %1, 0, !dbg !2944
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2944
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !2945
  call void @llvm.dbg.value(metadata i8* %5, metadata !2863, metadata !DIExpression()) #33, !dbg !2946
  %6 = icmp eq i8* %5, null, !dbg !2948
  br i1 %6, label %7, label %8, !dbg !2949

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2950
  unreachable, !dbg !2950

8:                                                ; preds = %2
  ret i8* %5, !dbg !2951
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2952 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2956, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()) #33, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()) #33, !dbg !2963
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #33, !dbg !2965
  call void @llvm.dbg.value(metadata i64 %1, metadata !2941, metadata !DIExpression()) #33, !dbg !2965
  %3 = icmp eq i64 %1, 0, !dbg !2967
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2967
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %5, metadata !2863, metadata !DIExpression()) #33, !dbg !2969
  %6 = icmp eq i8* %5, null, !dbg !2971
  br i1 %6, label %7, label %8, !dbg !2972

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2973
  unreachable, !dbg !2973

8:                                                ; preds = %2
  ret i8* %5, !dbg !2974
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2975 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 %1, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 %2, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %0, metadata !2983, metadata !DIExpression()) #33, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %1, metadata !2986, metadata !DIExpression()) #33, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %2, metadata !2987, metadata !DIExpression()) #33, !dbg !2988
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %4, metadata !2863, metadata !DIExpression()) #33, !dbg !2991
  %5 = icmp eq i8* %4, null, !dbg !2993
  br i1 %5, label %6, label %7, !dbg !2994

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2995
  unreachable, !dbg !2995

7:                                                ; preds = %3
  ret i8* %4, !dbg !2996
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2997 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3001, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8* null, metadata !2855, metadata !DIExpression()) #33, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %0, metadata !2858, metadata !DIExpression()) #33, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %1, metadata !2859, metadata !DIExpression()) #33, !dbg !3004
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3006
  call void @llvm.dbg.value(metadata i8* %3, metadata !2863, metadata !DIExpression()) #33, !dbg !3007
  %4 = icmp eq i8* %3, null, !dbg !3009
  br i1 %4, label %5, label %6, !dbg !3010

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3011
  unreachable, !dbg !3011

6:                                                ; preds = %2
  ret i8* %3, !dbg !3012
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3013 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %1, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* null, metadata !2979, metadata !DIExpression()) #33, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %0, metadata !2980, metadata !DIExpression()) #33, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()) #33, !dbg !3020
  call void @llvm.dbg.value(metadata i8* null, metadata !2983, metadata !DIExpression()) #33, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %0, metadata !2986, metadata !DIExpression()) #33, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %1, metadata !2987, metadata !DIExpression()) #33, !dbg !3022
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %3, metadata !2863, metadata !DIExpression()) #33, !dbg !3025
  %4 = icmp eq i8* %3, null, !dbg !3027
  br i1 %4, label %5, label %6, !dbg !3028

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3029
  unreachable, !dbg !3029

6:                                                ; preds = %2
  ret i8* %3, !dbg !3030
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3031 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64* %1, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8* %0, metadata !385, metadata !DIExpression()) #33, !dbg !3038
  call void @llvm.dbg.value(metadata i64* %1, metadata !386, metadata !DIExpression()) #33, !dbg !3038
  call void @llvm.dbg.value(metadata i64 1, metadata !387, metadata !DIExpression()) #33, !dbg !3038
  %3 = load i64, i64* %1, align 8, !dbg !3040, !tbaa !2136
  call void @llvm.dbg.value(metadata i64 %3, metadata !388, metadata !DIExpression()) #33, !dbg !3038
  %4 = icmp eq i8* %0, null, !dbg !3041
  br i1 %4, label %5, label %8, !dbg !3043

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3044
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3047
  br label %15, !dbg !3047

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3048
  %10 = add nuw i64 %9, 1, !dbg !3048
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !3048
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3048
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %13, metadata !388, metadata !DIExpression()) #33, !dbg !3038
  br i1 %12, label %14, label %15, !dbg !3051

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !3052
  unreachable, !dbg !3052

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3038
  call void @llvm.dbg.value(metadata i64 %16, metadata !388, metadata !DIExpression()) #33, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #33, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %16, metadata !2858, metadata !DIExpression()) #33, !dbg !3053
  call void @llvm.dbg.value(metadata i64 1, metadata !2859, metadata !DIExpression()) #33, !dbg !3053
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !3055
  call void @llvm.dbg.value(metadata i8* %17, metadata !2863, metadata !DIExpression()) #33, !dbg !3056
  %18 = icmp eq i8* %17, null, !dbg !3058
  br i1 %18, label %19, label %20, !dbg !3059

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !3060
  unreachable, !dbg !3060

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !385, metadata !DIExpression()) #33, !dbg !3038
  store i64 %16, i64* %1, align 8, !dbg !3061, !tbaa !2136
  ret i8* %17, !dbg !3062
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !385, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64* %1, metadata !386, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %2, metadata !387, metadata !DIExpression()), !dbg !3063
  %4 = load i64, i64* %1, align 8, !dbg !3064, !tbaa !2136
  call void @llvm.dbg.value(metadata i64 %4, metadata !388, metadata !DIExpression()), !dbg !3063
  %5 = icmp eq i8* %0, null, !dbg !3065
  br i1 %5, label %6, label %13, !dbg !3066

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3067
  br i1 %7, label %8, label %20, !dbg !3068

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %9, metadata !388, metadata !DIExpression()), !dbg !3063
  %10 = icmp ugt i64 %2, 128, !dbg !3071
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %12, metadata !388, metadata !DIExpression()), !dbg !3063
  br label %20, !dbg !3073

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3074
  %15 = add nuw i64 %14, 1, !dbg !3074
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3074
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3074
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %18, metadata !388, metadata !DIExpression()), !dbg !3063
  br i1 %17, label %19, label %20, !dbg !3075

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !3076
  unreachable, !dbg !3076

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3063
  call void @llvm.dbg.value(metadata i64 %21, metadata !388, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #33, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %21, metadata !2858, metadata !DIExpression()) #33, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %2, metadata !2859, metadata !DIExpression()) #33, !dbg !3077
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %22, metadata !2863, metadata !DIExpression()) #33, !dbg !3080
  %23 = icmp eq i8* %22, null, !dbg !3082
  br i1 %23, label %24, label %25, !dbg !3083

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !3084
  unreachable, !dbg !3084

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !385, metadata !DIExpression()), !dbg !3063
  store i64 %21, i64* %1, align 8, !dbg !3085, !tbaa !2136
  ret i8* %22, !dbg !3086
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !400, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64* %1, metadata !401, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %2, metadata !402, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %3, metadata !403, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %4, metadata !404, metadata !DIExpression()), !dbg !3087
  %6 = load i64, i64* %1, align 8, !dbg !3088, !tbaa !2136
  call void @llvm.dbg.value(metadata i64 %6, metadata !405, metadata !DIExpression()), !dbg !3087
  %7 = ashr i64 %6, 1, !dbg !3089
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3089
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3089
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %10, metadata !406, metadata !DIExpression()), !dbg !3087
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %11, metadata !406, metadata !DIExpression()), !dbg !3087
  %12 = icmp sgt i64 %3, -1, !dbg !3092
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3094
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %15, metadata !406, metadata !DIExpression()), !dbg !3087
  %16 = icmp slt i64 %4, 0, !dbg !3095
  br i1 %16, label %17, label %30, !dbg !3095

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3095
  br i1 %18, label %19, label %24, !dbg !3095

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3095
  %21 = udiv i64 9223372036854775807, %20, !dbg !3095
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3095
  br i1 %23, label %46, label %43, !dbg !3095

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3095
  br i1 %25, label %43, label %26, !dbg !3095

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3095
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3095
  %29 = icmp ult i64 %28, %15, !dbg !3095
  br i1 %29, label %46, label %43, !dbg !3095

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3095
  br i1 %31, label %43, label %32, !dbg !3095

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3095
  br i1 %33, label %34, label %40, !dbg !3095

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3095
  br i1 %35, label %43, label %36, !dbg !3095

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3095
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3095
  %39 = icmp ult i64 %38, %4, !dbg !3095
  br i1 %39, label %46, label %43, !dbg !3095

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3095
  %42 = icmp ult i64 %41, %15, !dbg !3095
  br i1 %42, label %46, label %43, !dbg !3095

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !407, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3087
  %44 = mul i64 %15, %4, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %44, metadata !407, metadata !DIExpression()), !dbg !3087
  %45 = icmp slt i64 %44, 128, !dbg !3095
  br i1 %45, label %46, label %52, !dbg !3095

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !408, metadata !DIExpression()), !dbg !3087
  %48 = sdiv i64 %47, %4, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %48, metadata !406, metadata !DIExpression()), !dbg !3087
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %51, metadata !407, metadata !DIExpression()), !dbg !3087
  br label %52, !dbg !3100

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3087
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3087
  call void @llvm.dbg.value(metadata i64 %54, metadata !407, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %53, metadata !406, metadata !DIExpression()), !dbg !3087
  %55 = icmp eq i8* %0, null, !dbg !3101
  br i1 %55, label %56, label %57, !dbg !3103

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3104, !tbaa !2136
  br label %57, !dbg !3105

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3106
  %59 = icmp slt i64 %58, %2, !dbg !3108
  br i1 %59, label %60, label %97, !dbg !3109

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3110
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3110
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %63, metadata !406, metadata !DIExpression()), !dbg !3087
  br i1 %62, label %96, label %64, !dbg !3111

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3112
  br i1 %66, label %96, label %67, !dbg !3112

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3113

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3113
  br i1 %69, label %70, label %75, !dbg !3113

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3113
  %72 = udiv i64 9223372036854775807, %71, !dbg !3113
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3113
  br i1 %74, label %96, label %94, !dbg !3113

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3113
  br i1 %76, label %94, label %77, !dbg !3113

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3113
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3113
  %80 = icmp ult i64 %79, %63, !dbg !3113
  br i1 %80, label %96, label %94, !dbg !3113

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3113
  br i1 %82, label %94, label %83, !dbg !3113

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3113
  br i1 %84, label %85, label %91, !dbg !3113

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3113
  br i1 %86, label %94, label %87, !dbg !3113

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3113
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3113
  %90 = icmp ult i64 %89, %4, !dbg !3113
  br i1 %90, label %96, label %94, !dbg !3113

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3113
  %93 = icmp ult i64 %92, %63, !dbg !3113
  br i1 %93, label %96, label %94, !dbg !3113

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !407, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3087
  %95 = mul i64 %63, %4, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %95, metadata !407, metadata !DIExpression()), !dbg !3087
  br label %97, !dbg !3114

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !3115
  unreachable, !dbg !3115

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3087
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3087
  call void @llvm.dbg.value(metadata i64 %99, metadata !407, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %98, metadata !406, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* %0, metadata !2934, metadata !DIExpression()) #33, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %99, metadata !2935, metadata !DIExpression()) #33, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #33, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %99, metadata !2941, metadata !DIExpression()) #33, !dbg !3118
  %100 = icmp eq i64 %99, 0, !dbg !3120
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3120
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !3121
  call void @llvm.dbg.value(metadata i8* %102, metadata !2863, metadata !DIExpression()) #33, !dbg !3122
  %103 = icmp eq i8* %102, null, !dbg !3124
  br i1 %103, label %104, label %105, !dbg !3125

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !3126
  unreachable, !dbg !3126

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !400, metadata !DIExpression()), !dbg !3087
  store i64 %98, i64* %1, align 8, !dbg !3127, !tbaa !2136
  ret i8* %102, !dbg !3128
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3129 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3131, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %0, metadata !3133, metadata !DIExpression()) #33, !dbg !3137
  call void @llvm.dbg.value(metadata i64 1, metadata !3136, metadata !DIExpression()) #33, !dbg !3137
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3139
  call void @llvm.dbg.value(metadata i8* %2, metadata !2863, metadata !DIExpression()) #33, !dbg !3140
  %3 = icmp eq i8* %2, null, !dbg !3142
  br i1 %3, label %4, label %5, !dbg !3143

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3144
  unreachable, !dbg !3144

5:                                                ; preds = %1
  ret i8* %2, !dbg !3145
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3134 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3133, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %1, metadata !3136, metadata !DIExpression()), !dbg !3146
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3147
  call void @llvm.dbg.value(metadata i8* %3, metadata !2863, metadata !DIExpression()) #33, !dbg !3148
  %4 = icmp eq i8* %3, null, !dbg !3150
  br i1 %4, label %5, label %6, !dbg !3151

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3152
  unreachable, !dbg !3152

6:                                                ; preds = %2
  ret i8* %3, !dbg !3153
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3154 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %0, metadata !3158, metadata !DIExpression()) #33, !dbg !3162
  call void @llvm.dbg.value(metadata i64 1, metadata !3161, metadata !DIExpression()) #33, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %0, metadata !3164, metadata !DIExpression()) #33, !dbg !3168
  call void @llvm.dbg.value(metadata i64 1, metadata !3167, metadata !DIExpression()) #33, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %0, metadata !3164, metadata !DIExpression()) #33, !dbg !3168
  call void @llvm.dbg.value(metadata i64 1, metadata !3167, metadata !DIExpression()) #33, !dbg !3168
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %2, metadata !2863, metadata !DIExpression()) #33, !dbg !3171
  %3 = icmp eq i8* %2, null, !dbg !3173
  br i1 %3, label %4, label %5, !dbg !3174

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3175
  unreachable, !dbg !3175

5:                                                ; preds = %1
  ret i8* %2, !dbg !3176
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3159 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3158, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %1, metadata !3161, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %0, metadata !3164, metadata !DIExpression()) #33, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %1, metadata !3167, metadata !DIExpression()) #33, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %0, metadata !3164, metadata !DIExpression()) #33, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %1, metadata !3167, metadata !DIExpression()) #33, !dbg !3178
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %3, metadata !2863, metadata !DIExpression()) #33, !dbg !3181
  %4 = icmp eq i8* %3, null, !dbg !3183
  br i1 %4, label %5, label %6, !dbg !3184

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3185
  unreachable, !dbg !3185

6:                                                ; preds = %2
  ret i8* %3, !dbg !3186
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3187 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3191, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3192, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !2887, metadata !DIExpression()) #33, !dbg !3194
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %3, metadata !2863, metadata !DIExpression()) #33, !dbg !3197
  %4 = icmp eq i8* %3, null, !dbg !3199
  br i1 %4, label %5, label %6, !dbg !3200

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3201
  unreachable, !dbg !3201

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3202, metadata !DIExpression()) #33, !dbg !3210
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()) #33, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %1, metadata !3209, metadata !DIExpression()) #33, !dbg !3210
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3212
  ret i8* %3, !dbg !3213
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3214 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !2900, metadata !DIExpression()) #33, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %1, metadata !2902, metadata !DIExpression()) #33, !dbg !3223
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %3, metadata !2863, metadata !DIExpression()) #33, !dbg !3226
  %4 = icmp eq i8* %3, null, !dbg !3228
  br i1 %4, label %5, label %6, !dbg !3229

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3230
  unreachable, !dbg !3230

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3202, metadata !DIExpression()) #33, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()) #33, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %1, metadata !3209, metadata !DIExpression()) #33, !dbg !3231
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3233
  ret i8* %3, !dbg !3234
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3235 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %1, metadata !3240, metadata !DIExpression()), !dbg !3242
  %3 = add nsw i64 %1, 1, !dbg !3243
  call void @llvm.dbg.value(metadata i64 %3, metadata !2900, metadata !DIExpression()) #33, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %3, metadata !2902, metadata !DIExpression()) #33, !dbg !3246
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3248
  call void @llvm.dbg.value(metadata i8* %4, metadata !2863, metadata !DIExpression()) #33, !dbg !3249
  %5 = icmp eq i8* %4, null, !dbg !3251
  br i1 %5, label %6, label %7, !dbg !3252

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3253
  unreachable, !dbg !3253

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3241, metadata !DIExpression()), !dbg !3242
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3254
  store i8 0, i8* %8, align 1, !dbg !3255, !tbaa !578
  call void @llvm.dbg.value(metadata i8* %4, metadata !3202, metadata !DIExpression()) #33, !dbg !3256
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()) #33, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %1, metadata !3209, metadata !DIExpression()) #33, !dbg !3256
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3258
  ret i8* %4, !dbg !3259
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3260 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3262, metadata !DIExpression()), !dbg !3263
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3264
  %3 = add i64 %2, 1, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %0, metadata !3191, metadata !DIExpression()) #33, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %3, metadata !3192, metadata !DIExpression()) #33, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %3, metadata !2887, metadata !DIExpression()) #33, !dbg !3268
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %4, metadata !2863, metadata !DIExpression()) #33, !dbg !3271
  %5 = icmp eq i8* %4, null, !dbg !3273
  br i1 %5, label %6, label %7, !dbg !3274

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3275
  unreachable, !dbg !3275

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3202, metadata !DIExpression()) #33, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()) #33, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %3, metadata !3209, metadata !DIExpression()) #33, !dbg !3276
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !3278
  ret i8* %4, !dbg !3279
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3280 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3285, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %1, metadata !3282, metadata !DIExpression()), !dbg !3286
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.144, i64 0, i64 0), i32 noundef 5) #33, !dbg !3285
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i8* noundef %2) #33, !dbg !3285
  %3 = icmp eq i32 %1, 0, !dbg !3285
  tail call void @llvm.assume(i1 %3), !dbg !3285
  tail call void @abort() #35, !dbg !3287
  unreachable, !dbg !3287
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoimax(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #12 !dbg !3288 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3293, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %1, metadata !3294, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3295, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %3, metadata !3296, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %4, metadata !3297, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %5, metadata !3298, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %6, metadata !3299, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %7, metadata !3300, metadata !DIExpression()), !dbg !3310
  %10 = bitcast i64* %9 to i8*, !dbg !3311
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !3311
  call void @llvm.dbg.value(metadata i64* %9, metadata !3301, metadata !DIExpression(DW_OP_deref)), !dbg !3310
  %11 = call i32 @xstrtoimax(i8* noundef nonnull %0, i8** noundef null, i32 noundef %1, i64* noundef nonnull %9, i8* noundef %4) #33, !dbg !3312
  call void @llvm.dbg.value(metadata i32 %11, metadata !3303, metadata !DIExpression()), !dbg !3310
  %12 = icmp eq i32 %11, 4, !dbg !3313
  br i1 %12, label %42, label %13, !dbg !3315

13:                                               ; preds = %8
  %14 = load i64, i64* %9, align 8, !dbg !3316, !tbaa !2136
  call void @llvm.dbg.value(metadata i64 %14, metadata !3301, metadata !DIExpression()), !dbg !3310
  %15 = icmp slt i64 %14, %2, !dbg !3319
  br i1 %15, label %16, label %21, !dbg !3320

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %2, metadata !3302, metadata !DIExpression()), !dbg !3310
  %17 = and i32 %7, 4, !dbg !3321
  %18 = icmp eq i32 %17, 0, !dbg !3323
  %19 = select i1 %18, i32 75, i32 34, !dbg !3323
  call void @llvm.dbg.value(metadata i32 %19, metadata !3305, metadata !DIExpression()), !dbg !3310
  %20 = icmp eq i32 %11, 0, !dbg !3324
  call void @llvm.dbg.value(metadata i32 undef, metadata !3303, metadata !DIExpression()), !dbg !3310
  br i1 %20, label %35, label %28, !dbg !3326

21:                                               ; preds = %13
  %22 = icmp sgt i64 %14, %3, !dbg !3327
  br i1 %22, label %23, label %28, !dbg !3329

23:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %3, metadata !3302, metadata !DIExpression()), !dbg !3310
  %24 = and i32 %7, 8, !dbg !3330
  %25 = icmp eq i32 %24, 0, !dbg !3332
  %26 = select i1 %25, i32 75, i32 34, !dbg !3332
  call void @llvm.dbg.value(metadata i32 %26, metadata !3305, metadata !DIExpression()), !dbg !3310
  %27 = icmp eq i32 %11, 0, !dbg !3333
  call void @llvm.dbg.value(metadata i32 undef, metadata !3303, metadata !DIExpression()), !dbg !3310
  br i1 %27, label %35, label %28, !dbg !3335

28:                                               ; preds = %23, %16, %21
  %29 = phi i32 [ %19, %16 ], [ %26, %23 ], [ 75, %21 ]
  %30 = phi i64 [ %2, %16 ], [ %3, %23 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !3302, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %11, metadata !3303, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %29, metadata !3305, metadata !DIExpression()), !dbg !3310
  %31 = icmp eq i32 %11, 1, !dbg !3336
  %32 = select i1 %31, i32 %29, i32 0, !dbg !3337
  call void @llvm.dbg.value(metadata i32 %32, metadata !3306, metadata !DIExpression()), !dbg !3310
  %33 = icmp eq i32 %11, 0, !dbg !3338
  br i1 %33, label %47, label %34, !dbg !3339

34:                                               ; preds = %28
  br i1 %31, label %35, label %42, !dbg !3340

35:                                               ; preds = %23, %16, %34
  %36 = phi i64 [ %30, %34 ], [ %3, %23 ], [ %2, %16 ]
  %37 = phi i32 [ %29, %34 ], [ %26, %23 ], [ %19, %16 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3301, metadata !DIExpression()), !dbg !3310
  %38 = icmp slt i64 %14, 0, !dbg !3341
  %39 = select i1 %38, i32 1, i32 2, !dbg !3342
  %40 = and i32 %39, %7, !dbg !3343
  %41 = icmp eq i32 %40, 0, !dbg !3343
  br i1 %41, label %42, label %47, !dbg !3344

42:                                               ; preds = %8, %35, %34
  %43 = phi i32 [ %37, %35 ], [ 0, %34 ], [ 0, %8 ]
  %44 = icmp eq i32 %6, 0, !dbg !3345
  %45 = select i1 %44, i32 1, i32 %6, !dbg !3345
  %46 = call i8* @quote(i8* noundef nonnull %0) #33, !dbg !3346
  call void (i32, i32, i8*, ...) @error(i32 noundef %45, i32 noundef %43, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i8* noundef nonnull %5, i8* noundef %46) #33, !dbg !3346
  unreachable, !dbg !3346

47:                                               ; preds = %35, %28
  %48 = phi i32 [ %37, %35 ], [ %32, %28 ]
  %49 = phi i64 [ %36, %35 ], [ %30, %28 ]
  %50 = tail call i32* @__errno_location() #36, !dbg !3347
  store i32 %48, i32* %50, align 4, !dbg !3348, !tbaa !569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !3349
  ret i64 %49, !dbg !3350
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoimax(i8* noundef nonnull %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %4, i32 noundef %5) local_unnamed_addr #12 !dbg !3351 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3355, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %1, metadata !3356, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %2, metadata !3357, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8* %3, metadata !3358, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8* %4, metadata !3359, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %5, metadata !3360, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8* %0, metadata !3293, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i32 10, metadata !3294, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %2, metadata !3296, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %3, metadata !3297, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %4, metadata !3298, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %5, metadata !3299, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i32 0, metadata !3300, metadata !DIExpression()) #33, !dbg !3362
  %8 = bitcast i64* %7 to i8*, !dbg !3364
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #33, !dbg !3364
  call void @llvm.dbg.value(metadata i64* %7, metadata !3301, metadata !DIExpression(DW_OP_deref)) #33, !dbg !3362
  %9 = call i32 @xstrtoimax(i8* noundef nonnull %0, i8** noundef null, i32 noundef 10, i64* noundef nonnull %7, i8* noundef %3) #33, !dbg !3365
  call void @llvm.dbg.value(metadata i32 %9, metadata !3303, metadata !DIExpression()) #33, !dbg !3362
  %10 = icmp eq i32 %9, 4, !dbg !3366
  br i1 %10, label %23, label %11, !dbg !3367

11:                                               ; preds = %6
  %12 = load i64, i64* %7, align 8, !dbg !3368, !tbaa !2136
  call void @llvm.dbg.value(metadata i64 %12, metadata !3301, metadata !DIExpression()) #33, !dbg !3362
  %13 = icmp slt i64 %12, %1, !dbg !3369
  br i1 %13, label %14, label %16, !dbg !3370

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %1, metadata !3302, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i32 75, metadata !3305, metadata !DIExpression()) #33, !dbg !3362
  %15 = icmp eq i32 %9, 0, !dbg !3371
  call void @llvm.dbg.value(metadata i32 undef, metadata !3303, metadata !DIExpression()) #33, !dbg !3362
  br i1 %15, label %22, label %20, !dbg !3372

16:                                               ; preds = %11
  %17 = icmp sgt i64 %12, %2, !dbg !3373
  br i1 %17, label %18, label %20, !dbg !3374

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 %2, metadata !3302, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i32 75, metadata !3305, metadata !DIExpression()) #33, !dbg !3362
  %19 = icmp eq i32 %9, 0, !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3303, metadata !DIExpression()) #33, !dbg !3362
  br i1 %19, label %22, label %20, !dbg !3376

20:                                               ; preds = %18, %16, %14
  %21 = phi i64 [ %1, %14 ], [ %2, %18 ], [ %12, %16 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !3302, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %9, metadata !3303, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i32 75, metadata !3305, metadata !DIExpression()) #33, !dbg !3362
  call void @llvm.dbg.value(metadata i32 undef, metadata !3306, metadata !DIExpression()) #33, !dbg !3362
  switch i32 %9, label %23 [
    i32 0, label %28
    i32 1, label %22
  ], !dbg !3377

22:                                               ; preds = %20, %18, %14
  call void @llvm.dbg.value(metadata i64 %12, metadata !3301, metadata !DIExpression()) #33, !dbg !3362
  br label %23

23:                                               ; preds = %20, %22, %6
  %24 = phi i32 [ 75, %22 ], [ 0, %6 ], [ 0, %20 ]
  %25 = icmp eq i32 %5, 0, !dbg !3378
  %26 = select i1 %25, i32 1, i32 %5, !dbg !3378
  %27 = call i8* @quote(i8* noundef nonnull %0) #33, !dbg !3379
  call void (i32, i32, i8*, ...) @error(i32 noundef %26, i32 noundef %24, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i8* noundef nonnull %4, i8* noundef %27) #33, !dbg !3379
  unreachable, !dbg !3379

28:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 0, metadata !3306, metadata !DIExpression()) #33, !dbg !3362
  %29 = tail call i32* @__errno_location() #36, !dbg !3380
  store i32 0, i32* %29, align 4, !dbg !3381, !tbaa !569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #33, !dbg !3382
  ret i64 %21, !dbg !3383
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #12 !dbg !3384 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8** %1, metadata !3391, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i32 %2, metadata !3392, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64* %3, metadata !3393, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8* %4, metadata !3394, metadata !DIExpression()), !dbg !3404
  %7 = bitcast i8** %6 to i8*, !dbg !3405
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #33, !dbg !3405
  %8 = icmp eq i8** %1, null, !dbg !3406
  %9 = select i1 %8, i8** %6, i8** %1, !dbg !3406
  call void @llvm.dbg.value(metadata i8** %9, metadata !3396, metadata !DIExpression()), !dbg !3404
  %10 = tail call i32* @__errno_location() #36, !dbg !3407
  store i32 0, i32* %10, align 4, !dbg !3408, !tbaa !569
  %11 = call i64 @strtoimax(i8* noundef %0, i8** noundef %9, i32 noundef %2) #33, !dbg !3409
  call void @llvm.dbg.value(metadata i64 %11, metadata !3397, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3398, metadata !DIExpression()), !dbg !3404
  %12 = load i8*, i8** %9, align 8, !dbg !3410, !tbaa !474
  %13 = icmp eq i8* %12, %0, !dbg !3412
  br i1 %13, label %14, label %23, !dbg !3413

14:                                               ; preds = %5
  %15 = icmp eq i8* %4, null, !dbg !3414
  br i1 %15, label %1077, label %16, !dbg !3417

16:                                               ; preds = %14
  %17 = load i8, i8* %0, align 1, !dbg !3418, !tbaa !578
  %18 = icmp eq i8 %17, 0, !dbg !3418
  br i1 %18, label %1077, label %19, !dbg !3419

19:                                               ; preds = %16
  %20 = zext i8 %17 to i32, !dbg !3418
  %21 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %20) #34, !dbg !3420
  %22 = icmp eq i8* %21, null, !dbg !3420
  br i1 %22, label %1077, label %30, !dbg !3421

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4, !dbg !3422, !tbaa !569
  switch i32 %24, label %1077 [
    i32 0, label %26
    i32 34, label %25
  ], !dbg !3424

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, metadata !3398, metadata !DIExpression()), !dbg !3404
  br label %26, !dbg !3425

26:                                               ; preds = %23, %25
  %27 = phi i32 [ 1, %25 ], [ %24, %23 ], !dbg !3404
  call void @llvm.dbg.value(metadata i32 %27, metadata !3398, metadata !DIExpression()), !dbg !3404
  %28 = icmp eq i8* %4, null, !dbg !3427
  br i1 %28, label %29, label %30, !dbg !3429

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 %11, metadata !3397, metadata !DIExpression()), !dbg !3404
  store i64 %11, i64* %3, align 8, !dbg !3430, !tbaa !2136
  br label %1077, !dbg !3432

30:                                               ; preds = %19, %26
  %31 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %32 = phi i64 [ %11, %26 ], [ 1, %19 ]
  %33 = load i8, i8* %12, align 1, !dbg !3433, !tbaa !578
  %34 = icmp eq i8 %33, 0, !dbg !3434
  br i1 %34, label %1074, label %35, !dbg !3435

35:                                               ; preds = %30
  %36 = zext i8 %33 to i32, !dbg !3433
  %37 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %36) #34, !dbg !3436
  %38 = icmp eq i8* %37, null, !dbg !3436
  br i1 %38, label %39, label %41, !dbg !3438

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %11, metadata !3397, metadata !DIExpression()), !dbg !3404
  store i64 %32, i64* %3, align 8, !dbg !3439, !tbaa !2136
  %40 = or i32 %31, 2, !dbg !3441
  br label %1077, !dbg !3442

41:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !3399, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 1, metadata !3402, metadata !DIExpression()), !dbg !3443
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
  ], !dbg !3444

42:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %43 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #34, !dbg !3445
  %44 = icmp eq i8* %43, null, !dbg !3445
  br i1 %44, label %54, label %45, !dbg !3448

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !3449
  %47 = load i8, i8* %46, align 1, !dbg !3449, !tbaa !578
  switch i8 %47, label %54 [
    i8 105, label %48
    i8 66, label %53
    i8 68, label %53
  ], !dbg !3450

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !3451
  %50 = load i8, i8* %49, align 1, !dbg !3451, !tbaa !578
  %51 = icmp eq i8 %50, 66, !dbg !3454
  %52 = select i1 %51, i64 3, i64 1, !dbg !3455
  br label %54, !dbg !3455

53:                                               ; preds = %45, %45
  call void @llvm.dbg.value(metadata i32 1000, metadata !3399, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 2, metadata !3402, metadata !DIExpression()), !dbg !3443
  br label %54, !dbg !3456

54:                                               ; preds = %48, %42, %45, %53, %41
  %55 = phi i64 [ 1024, %41 ], [ 1024, %45 ], [ 1000, %53 ], [ 1024, %42 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %41 ], [ 1, %45 ], [ 2, %53 ], [ 1, %42 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3402, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 undef, metadata !3399, metadata !DIExpression()), !dbg !3443
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
  ], !dbg !3457

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 7, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 6, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  %58 = icmp slt i64 %32, 0, !dbg !3478
  br i1 %58, label %939, label %945, !dbg !3478

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 8, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 7, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  %60 = icmp slt i64 %32, 0, !dbg !3484
  br i1 %60, label %795, label %801, !dbg !3484

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 9, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 8, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  %62 = icmp slt i64 %32, 0, !dbg !3489
  br i1 %62, label %556, label %562, !dbg !3489

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 10, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 9, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %64 = icmp slt i64 %32, 0, !dbg !3494
  br i1 %64, label %372, label %378, !dbg !3494

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 5, metadata !3465, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3497
  %66 = icmp slt i64 %32, 0, !dbg !3499
  br i1 %66, label %288, label %294, !dbg !3499

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 6, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 5, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  %68 = icmp slt i64 %32, 0, !dbg !3504
  br i1 %68, label %87, label %93, !dbg !3504

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 512, metadata !3474, metadata !DIExpression()), !dbg !3505
  %70 = icmp slt i64 %32, 0, !dbg !3507
  br i1 %70, label %71, label %74, !dbg !3507

71:                                               ; preds = %69
  %72 = add i64 %32, -1, !dbg !3507
  %73 = icmp ult i64 %72, -18014398509481985, !dbg !3507
  br i1 %73, label %1063, label %76, !dbg !3507

74:                                               ; preds = %69
  %75 = icmp ugt i64 %32, 18014398509481983, !dbg !3507
  br i1 %75, label %1063, label %76, !dbg !3507

76:                                               ; preds = %74, %71
  %77 = shl nsw i64 %32, 9, !dbg !3507
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 512), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3505
  br label %1063, !dbg !3508

78:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i32 1024, metadata !3474, metadata !DIExpression()), !dbg !3509
  %79 = icmp slt i64 %32, 0, !dbg !3511
  br i1 %79, label %80, label %83, !dbg !3511

80:                                               ; preds = %78
  %81 = add i64 %32, -1, !dbg !3511
  %82 = icmp ult i64 %81, -9007199254740993, !dbg !3511
  br i1 %82, label %1063, label %85, !dbg !3511

83:                                               ; preds = %78
  %84 = icmp ugt i64 %32, 9007199254740991, !dbg !3511
  br i1 %84, label %1063, label %85, !dbg !3511

85:                                               ; preds = %83, %80
  %86 = shl nsw i64 %32, 10, !dbg !3511
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 1024), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3509
  br label %1063, !dbg !3512

87:                                               ; preds = %67
  %88 = icmp eq i64 %32, -1, !dbg !3504
  br i1 %88, label %96, label %89, !dbg !3504

89:                                               ; preds = %87
  %90 = sub i64 0, %32, !dbg !3504
  %91 = udiv i64 -9223372036854775808, %90, !dbg !3504
  %92 = icmp ult i64 %91, %55, !dbg !3504
  br i1 %92, label %104, label %96, !dbg !3504

93:                                               ; preds = %67
  %94 = udiv i64 9223372036854775807, %55, !dbg !3504
  %95 = icmp ult i64 %94, %32, !dbg !3504
  br i1 %95, label %99, label %96, !dbg !3504

96:                                               ; preds = %87, %89, %93
  %97 = mul i64 %32, %55, !dbg !3504
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3502
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  %98 = icmp slt i64 %97, 0, !dbg !3504
  br i1 %98, label %104, label %99, !dbg !3504

99:                                               ; preds = %93, %96
  %100 = phi i32 [ 0, %96 ], [ 1, %93 ]
  %101 = phi i64 [ %97, %96 ], [ 9223372036854775807, %93 ]
  %102 = udiv i64 9223372036854775807, %55, !dbg !3504
  %103 = icmp ult i64 %102, %101, !dbg !3504
  br i1 %103, label %115, label %110, !dbg !3504

104:                                              ; preds = %89, %96
  %105 = phi i32 [ 0, %96 ], [ 1, %89 ]
  %106 = phi i64 [ %97, %96 ], [ -9223372036854775808, %89 ]
  %107 = sub i64 0, %106, !dbg !3504
  %108 = udiv i64 -9223372036854775808, %107, !dbg !3504
  %109 = icmp slt i64 %108, %55, !dbg !3504
  br i1 %109, label %120, label %110, !dbg !3504

110:                                              ; preds = %99, %104
  %111 = phi i32 [ %105, %104 ], [ %100, %99 ]
  %112 = phi i64 [ %106, %104 ], [ %101, %99 ]
  %113 = mul i64 %112, %55, !dbg !3504
  call void @llvm.dbg.value(metadata !DIArgList(i64 %97, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %111, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  %114 = icmp slt i64 %113, 0, !dbg !3504
  br i1 %114, label %120, label %115, !dbg !3504

115:                                              ; preds = %99, %110
  %116 = phi i32 [ %111, %110 ], [ 1, %99 ]
  %117 = phi i64 [ %113, %110 ], [ 9223372036854775807, %99 ]
  %118 = udiv i64 9223372036854775807, %55, !dbg !3504
  %119 = icmp ult i64 %118, %117, !dbg !3504
  br i1 %119, label %131, label %126, !dbg !3504

120:                                              ; preds = %104, %110
  %121 = phi i32 [ %111, %110 ], [ 1, %104 ]
  %122 = phi i64 [ %113, %110 ], [ -9223372036854775808, %104 ]
  %123 = sub i64 0, %122, !dbg !3504
  %124 = udiv i64 -9223372036854775808, %123, !dbg !3504
  %125 = icmp slt i64 %124, %55, !dbg !3504
  br i1 %125, label %138, label %126, !dbg !3504

126:                                              ; preds = %115, %120
  %127 = phi i32 [ %121, %120 ], [ %116, %115 ]
  %128 = phi i64 [ %122, %120 ], [ %117, %115 ]
  %129 = mul i64 %128, %55, !dbg !3504
  call void @llvm.dbg.value(metadata !DIArgList(i64 %113, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %127, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  %130 = icmp slt i64 %129, 0, !dbg !3504
  br i1 %130, label %138, label %131, !dbg !3504

131:                                              ; preds = %115, %126
  %132 = phi i32 [ %127, %126 ], [ 1, %115 ]
  %133 = phi i64 [ %129, %126 ], [ 9223372036854775807, %115 ]
  %134 = udiv i64 9223372036854775807, %55, !dbg !3504
  %135 = icmp ult i64 %134, %133, !dbg !3504
  br i1 %135, label %136, label %146, !dbg !3504

136:                                              ; preds = %131
  %137 = or i32 %132, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %147, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  br label %151, !dbg !3504

138:                                              ; preds = %120, %126
  %139 = phi i32 [ %127, %126 ], [ 1, %120 ]
  %140 = phi i64 [ %129, %126 ], [ -9223372036854775808, %120 ]
  %141 = sub i64 0, %140, !dbg !3504
  %142 = udiv i64 -9223372036854775808, %141, !dbg !3504
  %143 = icmp slt i64 %142, %55, !dbg !3504
  br i1 %143, label %144, label %146, !dbg !3504

144:                                              ; preds = %138
  %145 = or i32 %139, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %147, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  br label %158, !dbg !3504

146:                                              ; preds = %131, %138
  %147 = phi i32 [ %139, %138 ], [ %132, %131 ]
  %148 = phi i64 [ %140, %138 ], [ %133, %131 ]
  %149 = mul i64 %148, %55, !dbg !3504
  call void @llvm.dbg.value(metadata !DIArgList(i64 %129, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %147, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  %150 = icmp slt i64 %149, 0, !dbg !3504
  br i1 %150, label %158, label %151, !dbg !3504

151:                                              ; preds = %136, %146
  %152 = phi i32 [ %137, %136 ], [ %147, %146 ]
  %153 = phi i64 [ 9223372036854775807, %136 ], [ %149, %146 ]
  %154 = udiv i64 9223372036854775807, %55, !dbg !3504
  %155 = icmp ult i64 %154, %153, !dbg !3504
  br i1 %155, label %156, label %166, !dbg !3504

156:                                              ; preds = %151
  %157 = or i32 %152, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %167, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  br label %171, !dbg !3504

158:                                              ; preds = %146, %144
  %159 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %160 = phi i64 [ -9223372036854775808, %144 ], [ %149, %146 ]
  %161 = sub i64 0, %160, !dbg !3504
  %162 = udiv i64 -9223372036854775808, %161, !dbg !3504
  %163 = icmp slt i64 %162, %55, !dbg !3504
  br i1 %163, label %164, label %166, !dbg !3504

164:                                              ; preds = %158
  %165 = or i32 %159, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %167, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  br label %176, !dbg !3504

166:                                              ; preds = %151, %158
  %167 = phi i32 [ %159, %158 ], [ %152, %151 ]
  %168 = phi i64 [ %160, %158 ], [ %153, %151 ]
  %169 = mul i64 %168, %55, !dbg !3504
  call void @llvm.dbg.value(metadata !DIArgList(i64 %149, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %167, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3502
  %170 = icmp slt i64 %169, 0, !dbg !3504
  br i1 %170, label %176, label %171, !dbg !3504

171:                                              ; preds = %156, %166
  %172 = phi i32 [ %157, %156 ], [ %167, %166 ]
  %173 = phi i64 [ 9223372036854775807, %156 ], [ %169, %166 ]
  %174 = udiv i64 9223372036854775807, %55, !dbg !3504
  %175 = icmp ult i64 %174, %173, !dbg !3504
  br i1 %175, label %186, label %182, !dbg !3504

176:                                              ; preds = %166, %164
  %177 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %178 = phi i64 [ -9223372036854775808, %164 ], [ %169, %166 ]
  %179 = sub i64 0, %178, !dbg !3504
  %180 = udiv i64 -9223372036854775808, %179, !dbg !3504
  %181 = icmp slt i64 %180, %55, !dbg !3504
  br i1 %181, label %186, label %182, !dbg !3504

182:                                              ; preds = %176, %171
  %183 = phi i32 [ %177, %176 ], [ %172, %171 ]
  %184 = phi i64 [ %178, %176 ], [ %173, %171 ]
  %185 = mul i64 %184, %55, !dbg !3504
  call void @llvm.dbg.value(metadata !DIArgList(i64 %169, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3502
  br label %186, !dbg !3514

186:                                              ; preds = %182, %176, %171
  %187 = phi i32 [ %183, %182 ], [ %172, %171 ], [ %177, %176 ]
  %188 = phi i64 [ %185, %182 ], [ 9223372036854775807, %171 ], [ -9223372036854775808, %176 ], !dbg !3502
  %189 = phi i32 [ 0, %182 ], [ 1, %171 ], [ 1, %176 ], !dbg !3502
  %190 = or i32 %189, %187, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %190, metadata !3458, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3500
  br label %1063, !dbg !3515

191:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3463, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 undef, metadata !3464, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3518
  %192 = icmp slt i64 %32, 0, !dbg !3520
  br i1 %192, label %193, label %199, !dbg !3520

193:                                              ; preds = %191
  %194 = icmp eq i64 %32, -1, !dbg !3520
  br i1 %194, label %202, label %195, !dbg !3520

195:                                              ; preds = %193
  %196 = sub i64 0, %32, !dbg !3520
  %197 = udiv i64 -9223372036854775808, %196, !dbg !3520
  %198 = icmp ult i64 %197, %55, !dbg !3520
  br i1 %198, label %210, label %202, !dbg !3520

199:                                              ; preds = %191
  %200 = udiv i64 9223372036854775807, %55, !dbg !3520
  %201 = icmp ult i64 %200, %32, !dbg !3520
  br i1 %201, label %205, label %202, !dbg !3520

202:                                              ; preds = %193, %195, %199
  %203 = mul i64 %32, %55, !dbg !3520
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3518
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3518
  %204 = icmp slt i64 %203, 0, !dbg !3520
  br i1 %204, label %210, label %205, !dbg !3520

205:                                              ; preds = %199, %202
  %206 = phi i32 [ 0, %202 ], [ 1, %199 ]
  %207 = phi i64 [ %203, %202 ], [ 9223372036854775807, %199 ]
  %208 = udiv i64 9223372036854775807, %55, !dbg !3520
  %209 = icmp ult i64 %208, %207, !dbg !3520
  br i1 %209, label %221, label %216, !dbg !3520

210:                                              ; preds = %195, %202
  %211 = phi i32 [ 0, %202 ], [ 1, %195 ]
  %212 = phi i64 [ %203, %202 ], [ -9223372036854775808, %195 ]
  %213 = sub i64 0, %212, !dbg !3520
  %214 = udiv i64 -9223372036854775808, %213, !dbg !3520
  %215 = icmp slt i64 %214, %55, !dbg !3520
  br i1 %215, label %226, label %216, !dbg !3520

216:                                              ; preds = %205, %210
  %217 = phi i32 [ %211, %210 ], [ %206, %205 ]
  %218 = phi i64 [ %212, %210 ], [ %207, %205 ]
  %219 = mul i64 %218, %55, !dbg !3520
  call void @llvm.dbg.value(metadata !DIArgList(i64 %203, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3518
  call void @llvm.dbg.value(metadata i32 %217, metadata !3458, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3518
  %220 = icmp slt i64 %219, 0, !dbg !3520
  br i1 %220, label %226, label %221, !dbg !3520

221:                                              ; preds = %205, %216
  %222 = phi i32 [ %217, %216 ], [ 1, %205 ]
  %223 = phi i64 [ %219, %216 ], [ 9223372036854775807, %205 ]
  %224 = udiv i64 9223372036854775807, %55, !dbg !3520
  %225 = icmp ult i64 %224, %223, !dbg !3520
  br i1 %225, label %236, label %232, !dbg !3520

226:                                              ; preds = %210, %216
  %227 = phi i32 [ %217, %216 ], [ 1, %210 ]
  %228 = phi i64 [ %219, %216 ], [ -9223372036854775808, %210 ]
  %229 = sub i64 0, %228, !dbg !3520
  %230 = udiv i64 -9223372036854775808, %229, !dbg !3520
  %231 = icmp slt i64 %230, %55, !dbg !3520
  br i1 %231, label %236, label %232, !dbg !3520

232:                                              ; preds = %226, %221
  %233 = phi i32 [ %227, %226 ], [ %222, %221 ]
  %234 = phi i64 [ %228, %226 ], [ %223, %221 ]
  %235 = mul i64 %234, %55, !dbg !3520
  call void @llvm.dbg.value(metadata !DIArgList(i64 %219, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3518
  br label %236, !dbg !3521

236:                                              ; preds = %232, %226, %221
  %237 = phi i32 [ %233, %232 ], [ %222, %221 ], [ %227, %226 ]
  %238 = phi i64 [ %235, %232 ], [ 9223372036854775807, %221 ], [ -9223372036854775808, %226 ], !dbg !3518
  %239 = phi i32 [ 0, %232 ], [ 1, %221 ], [ 1, %226 ], !dbg !3518
  %240 = or i32 %239, %237, !dbg !3522
  call void @llvm.dbg.value(metadata i32 %240, metadata !3458, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3516
  br label %1063, !dbg !3515

241:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3463, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 undef, metadata !3464, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 undef, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3523
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3525
  %242 = icmp slt i64 %32, 0, !dbg !3527
  br i1 %242, label %243, label %249, !dbg !3527

243:                                              ; preds = %241
  %244 = icmp eq i64 %32, -1, !dbg !3527
  br i1 %244, label %252, label %245, !dbg !3527

245:                                              ; preds = %243
  %246 = sub i64 0, %32, !dbg !3527
  %247 = udiv i64 -9223372036854775808, %246, !dbg !3527
  %248 = icmp ult i64 %247, %55, !dbg !3527
  br i1 %248, label %1063, label %252, !dbg !3527

249:                                              ; preds = %241
  %250 = udiv i64 9223372036854775807, %55, !dbg !3527
  %251 = icmp ult i64 %250, %32, !dbg !3527
  br i1 %251, label %1063, label %252, !dbg !3527

252:                                              ; preds = %249, %245, %243
  %253 = mul i64 %32, %55, !dbg !3527
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3525
  br label %1063, !dbg !3528

254:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3463, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 undef, metadata !3464, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3531
  %255 = icmp slt i64 %32, 0, !dbg !3533
  br i1 %255, label %256, label %262, !dbg !3533

256:                                              ; preds = %254
  %257 = icmp eq i64 %32, -1, !dbg !3533
  br i1 %257, label %265, label %258, !dbg !3533

258:                                              ; preds = %256
  %259 = sub i64 0, %32, !dbg !3533
  %260 = udiv i64 -9223372036854775808, %259, !dbg !3533
  %261 = icmp ult i64 %260, %55, !dbg !3533
  br i1 %261, label %273, label %265, !dbg !3533

262:                                              ; preds = %254
  %263 = udiv i64 9223372036854775807, %55, !dbg !3533
  %264 = icmp ult i64 %263, %32, !dbg !3533
  br i1 %264, label %268, label %265, !dbg !3533

265:                                              ; preds = %256, %258, %262
  %266 = mul i64 %32, %55, !dbg !3533
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3531
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3531
  %267 = icmp slt i64 %266, 0, !dbg !3533
  br i1 %267, label %273, label %268, !dbg !3533

268:                                              ; preds = %262, %265
  %269 = phi i32 [ 0, %265 ], [ 1, %262 ]
  %270 = phi i64 [ %266, %265 ], [ 9223372036854775807, %262 ]
  %271 = udiv i64 9223372036854775807, %55, !dbg !3533
  %272 = icmp ult i64 %271, %270, !dbg !3533
  br i1 %272, label %283, label %279, !dbg !3533

273:                                              ; preds = %258, %265
  %274 = phi i32 [ 0, %265 ], [ 1, %258 ]
  %275 = phi i64 [ %266, %265 ], [ -9223372036854775808, %258 ]
  %276 = sub i64 0, %275, !dbg !3533
  %277 = udiv i64 -9223372036854775808, %276, !dbg !3533
  %278 = icmp slt i64 %277, %55, !dbg !3533
  br i1 %278, label %283, label %279, !dbg !3533

279:                                              ; preds = %273, %268
  %280 = phi i32 [ %274, %273 ], [ %269, %268 ]
  %281 = phi i64 [ %275, %273 ], [ %270, %268 ]
  %282 = mul i64 %281, %55, !dbg !3533
  call void @llvm.dbg.value(metadata !DIArgList(i64 %266, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3531
  br label %283, !dbg !3534

283:                                              ; preds = %279, %273, %268
  %284 = phi i32 [ %280, %279 ], [ %269, %268 ], [ %274, %273 ]
  %285 = phi i64 [ %282, %279 ], [ 9223372036854775807, %268 ], [ -9223372036854775808, %273 ], !dbg !3531
  %286 = phi i32 [ 0, %279 ], [ 1, %268 ], [ 1, %273 ], !dbg !3531
  %287 = or i32 %286, %284, !dbg !3535
  call void @llvm.dbg.value(metadata i32 %287, metadata !3458, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3529
  br label %1063, !dbg !3515

288:                                              ; preds = %65
  %289 = icmp eq i64 %32, -1, !dbg !3499
  br i1 %289, label %297, label %290, !dbg !3499

290:                                              ; preds = %288
  %291 = sub i64 0, %32, !dbg !3499
  %292 = udiv i64 -9223372036854775808, %291, !dbg !3499
  %293 = icmp ult i64 %292, %55, !dbg !3499
  br i1 %293, label %305, label %297, !dbg !3499

294:                                              ; preds = %65
  %295 = udiv i64 9223372036854775807, %55, !dbg !3499
  %296 = icmp ult i64 %295, %32, !dbg !3499
  br i1 %296, label %300, label %297, !dbg !3499

297:                                              ; preds = %288, %290, %294
  %298 = mul i64 %32, %55, !dbg !3499
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3497
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3497
  %299 = icmp slt i64 %298, 0, !dbg !3499
  br i1 %299, label %305, label %300, !dbg !3499

300:                                              ; preds = %294, %297
  %301 = phi i32 [ 0, %297 ], [ 1, %294 ]
  %302 = phi i64 [ %298, %297 ], [ 9223372036854775807, %294 ]
  %303 = udiv i64 9223372036854775807, %55, !dbg !3499
  %304 = icmp ult i64 %303, %302, !dbg !3499
  br i1 %304, label %316, label %311, !dbg !3499

305:                                              ; preds = %290, %297
  %306 = phi i32 [ 0, %297 ], [ 1, %290 ]
  %307 = phi i64 [ %298, %297 ], [ -9223372036854775808, %290 ]
  %308 = sub i64 0, %307, !dbg !3499
  %309 = udiv i64 -9223372036854775808, %308, !dbg !3499
  %310 = icmp slt i64 %309, %55, !dbg !3499
  br i1 %310, label %321, label %311, !dbg !3499

311:                                              ; preds = %300, %305
  %312 = phi i32 [ %306, %305 ], [ %301, %300 ]
  %313 = phi i64 [ %307, %305 ], [ %302, %300 ]
  %314 = mul i64 %313, %55, !dbg !3499
  call void @llvm.dbg.value(metadata !DIArgList(i64 %298, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %312, metadata !3458, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3497
  %315 = icmp slt i64 %314, 0, !dbg !3499
  br i1 %315, label %321, label %316, !dbg !3499

316:                                              ; preds = %300, %311
  %317 = phi i32 [ %312, %311 ], [ 1, %300 ]
  %318 = phi i64 [ %314, %311 ], [ 9223372036854775807, %300 ]
  %319 = udiv i64 9223372036854775807, %55, !dbg !3499
  %320 = icmp ult i64 %319, %318, !dbg !3499
  br i1 %320, label %332, label %327, !dbg !3499

321:                                              ; preds = %305, %311
  %322 = phi i32 [ %312, %311 ], [ 1, %305 ]
  %323 = phi i64 [ %314, %311 ], [ -9223372036854775808, %305 ]
  %324 = sub i64 0, %323, !dbg !3499
  %325 = udiv i64 -9223372036854775808, %324, !dbg !3499
  %326 = icmp slt i64 %325, %55, !dbg !3499
  br i1 %326, label %339, label %327, !dbg !3499

327:                                              ; preds = %316, %321
  %328 = phi i32 [ %322, %321 ], [ %317, %316 ]
  %329 = phi i64 [ %323, %321 ], [ %318, %316 ]
  %330 = mul i64 %329, %55, !dbg !3499
  call void @llvm.dbg.value(metadata !DIArgList(i64 %314, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %328, metadata !3458, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3497
  %331 = icmp slt i64 %330, 0, !dbg !3499
  br i1 %331, label %339, label %332, !dbg !3499

332:                                              ; preds = %316, %327
  %333 = phi i32 [ %328, %327 ], [ 1, %316 ]
  %334 = phi i64 [ %330, %327 ], [ 9223372036854775807, %316 ]
  %335 = udiv i64 9223372036854775807, %55, !dbg !3499
  %336 = icmp ult i64 %335, %334, !dbg !3499
  br i1 %336, label %337, label %347, !dbg !3499

337:                                              ; preds = %332
  %338 = or i32 %333, 1, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %348, metadata !3458, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3497
  br label %352, !dbg !3499

339:                                              ; preds = %321, %327
  %340 = phi i32 [ %328, %327 ], [ 1, %321 ]
  %341 = phi i64 [ %330, %327 ], [ -9223372036854775808, %321 ]
  %342 = sub i64 0, %341, !dbg !3499
  %343 = udiv i64 -9223372036854775808, %342, !dbg !3499
  %344 = icmp slt i64 %343, %55, !dbg !3499
  br i1 %344, label %345, label %347, !dbg !3499

345:                                              ; preds = %339
  %346 = or i32 %340, 1, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %348, metadata !3458, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3497
  br label %357, !dbg !3499

347:                                              ; preds = %332, %339
  %348 = phi i32 [ %340, %339 ], [ %333, %332 ]
  %349 = phi i64 [ %341, %339 ], [ %334, %332 ]
  %350 = mul i64 %349, %55, !dbg !3499
  call void @llvm.dbg.value(metadata !DIArgList(i64 %330, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %348, metadata !3458, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3497
  %351 = icmp slt i64 %350, 0, !dbg !3499
  br i1 %351, label %357, label %352, !dbg !3499

352:                                              ; preds = %337, %347
  %353 = phi i32 [ %338, %337 ], [ %348, %347 ]
  %354 = phi i64 [ 9223372036854775807, %337 ], [ %350, %347 ]
  %355 = udiv i64 9223372036854775807, %55, !dbg !3499
  %356 = icmp ult i64 %355, %354, !dbg !3499
  br i1 %356, label %367, label %363, !dbg !3499

357:                                              ; preds = %347, %345
  %358 = phi i32 [ %346, %345 ], [ %348, %347 ]
  %359 = phi i64 [ -9223372036854775808, %345 ], [ %350, %347 ]
  %360 = sub i64 0, %359, !dbg !3499
  %361 = udiv i64 -9223372036854775808, %360, !dbg !3499
  %362 = icmp slt i64 %361, %55, !dbg !3499
  br i1 %362, label %367, label %363, !dbg !3499

363:                                              ; preds = %357, %352
  %364 = phi i32 [ %358, %357 ], [ %353, %352 ]
  %365 = phi i64 [ %359, %357 ], [ %354, %352 ]
  %366 = mul i64 %365, %55, !dbg !3499
  call void @llvm.dbg.value(metadata !DIArgList(i64 %350, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3497
  br label %367, !dbg !3537

367:                                              ; preds = %363, %357, %352
  %368 = phi i32 [ %364, %363 ], [ %353, %352 ], [ %358, %357 ]
  %369 = phi i64 [ %366, %363 ], [ 9223372036854775807, %352 ], [ -9223372036854775808, %357 ], !dbg !3497
  %370 = phi i32 [ 0, %363 ], [ 1, %352 ], [ 1, %357 ], !dbg !3497
  %371 = or i32 %370, %368, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %371, metadata !3458, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3495
  br label %1063, !dbg !3515

372:                                              ; preds = %63
  %373 = icmp eq i64 %32, -1, !dbg !3494
  br i1 %373, label %381, label %374, !dbg !3494

374:                                              ; preds = %372
  %375 = sub i64 0, %32, !dbg !3494
  %376 = udiv i64 -9223372036854775808, %375, !dbg !3494
  %377 = icmp ult i64 %376, %55, !dbg !3494
  br i1 %377, label %389, label %381, !dbg !3494

378:                                              ; preds = %63
  %379 = udiv i64 9223372036854775807, %55, !dbg !3494
  %380 = icmp ult i64 %379, %32, !dbg !3494
  br i1 %380, label %384, label %381, !dbg !3494

381:                                              ; preds = %372, %374, %378
  %382 = mul i64 %32, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 8, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %383 = icmp slt i64 %382, 0, !dbg !3494
  br i1 %383, label %389, label %384, !dbg !3494

384:                                              ; preds = %378, %381
  %385 = phi i32 [ 0, %381 ], [ 1, %378 ]
  %386 = phi i64 [ %382, %381 ], [ 9223372036854775807, %378 ]
  %387 = udiv i64 9223372036854775807, %55, !dbg !3494
  %388 = icmp ult i64 %387, %386, !dbg !3494
  br i1 %388, label %400, label %395, !dbg !3494

389:                                              ; preds = %374, %381
  %390 = phi i32 [ 0, %381 ], [ 1, %374 ]
  %391 = phi i64 [ %382, %381 ], [ -9223372036854775808, %374 ]
  %392 = sub i64 0, %391, !dbg !3494
  %393 = udiv i64 -9223372036854775808, %392, !dbg !3494
  %394 = icmp slt i64 %393, %55, !dbg !3494
  br i1 %394, label %405, label %395, !dbg !3494

395:                                              ; preds = %384, %389
  %396 = phi i32 [ %390, %389 ], [ %385, %384 ]
  %397 = phi i64 [ %391, %389 ], [ %386, %384 ]
  %398 = mul i64 %397, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %382, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %396, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 7, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %399 = icmp slt i64 %398, 0, !dbg !3494
  br i1 %399, label %405, label %400, !dbg !3494

400:                                              ; preds = %384, %395
  %401 = phi i32 [ %396, %395 ], [ 1, %384 ]
  %402 = phi i64 [ %398, %395 ], [ 9223372036854775807, %384 ]
  %403 = udiv i64 9223372036854775807, %55, !dbg !3494
  %404 = icmp ult i64 %403, %402, !dbg !3494
  br i1 %404, label %416, label %411, !dbg !3494

405:                                              ; preds = %389, %395
  %406 = phi i32 [ %396, %395 ], [ 1, %389 ]
  %407 = phi i64 [ %398, %395 ], [ -9223372036854775808, %389 ]
  %408 = sub i64 0, %407, !dbg !3494
  %409 = udiv i64 -9223372036854775808, %408, !dbg !3494
  %410 = icmp slt i64 %409, %55, !dbg !3494
  br i1 %410, label %423, label %411, !dbg !3494

411:                                              ; preds = %400, %405
  %412 = phi i32 [ %406, %405 ], [ %401, %400 ]
  %413 = phi i64 [ %407, %405 ], [ %402, %400 ]
  %414 = mul i64 %413, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %398, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %412, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 6, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %415 = icmp slt i64 %414, 0, !dbg !3494
  br i1 %415, label %423, label %416, !dbg !3494

416:                                              ; preds = %400, %411
  %417 = phi i32 [ %412, %411 ], [ 1, %400 ]
  %418 = phi i64 [ %414, %411 ], [ 9223372036854775807, %400 ]
  %419 = udiv i64 9223372036854775807, %55, !dbg !3494
  %420 = icmp ult i64 %419, %418, !dbg !3494
  br i1 %420, label %421, label %431, !dbg !3494

421:                                              ; preds = %416
  %422 = or i32 %417, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %432, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 5, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %436, !dbg !3494

423:                                              ; preds = %405, %411
  %424 = phi i32 [ %412, %411 ], [ 1, %405 ]
  %425 = phi i64 [ %414, %411 ], [ -9223372036854775808, %405 ]
  %426 = sub i64 0, %425, !dbg !3494
  %427 = udiv i64 -9223372036854775808, %426, !dbg !3494
  %428 = icmp slt i64 %427, %55, !dbg !3494
  br i1 %428, label %429, label %431, !dbg !3494

429:                                              ; preds = %423
  %430 = or i32 %424, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %432, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 5, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %443, !dbg !3494

431:                                              ; preds = %416, %423
  %432 = phi i32 [ %424, %423 ], [ %417, %416 ]
  %433 = phi i64 [ %425, %423 ], [ %418, %416 ]
  %434 = mul i64 %433, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %414, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %432, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 5, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %435 = icmp slt i64 %434, 0, !dbg !3494
  br i1 %435, label %443, label %436, !dbg !3494

436:                                              ; preds = %421, %431
  %437 = phi i32 [ %422, %421 ], [ %432, %431 ]
  %438 = phi i64 [ 9223372036854775807, %421 ], [ %434, %431 ]
  %439 = udiv i64 9223372036854775807, %55, !dbg !3494
  %440 = icmp ult i64 %439, %438, !dbg !3494
  br i1 %440, label %441, label %451, !dbg !3494

441:                                              ; preds = %436
  %442 = or i32 %437, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %452, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %456, !dbg !3494

443:                                              ; preds = %431, %429
  %444 = phi i32 [ %430, %429 ], [ %432, %431 ]
  %445 = phi i64 [ -9223372036854775808, %429 ], [ %434, %431 ]
  %446 = sub i64 0, %445, !dbg !3494
  %447 = udiv i64 -9223372036854775808, %446, !dbg !3494
  %448 = icmp slt i64 %447, %55, !dbg !3494
  br i1 %448, label %449, label %451, !dbg !3494

449:                                              ; preds = %443
  %450 = or i32 %444, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %452, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %463, !dbg !3494

451:                                              ; preds = %436, %443
  %452 = phi i32 [ %444, %443 ], [ %437, %436 ]
  %453 = phi i64 [ %445, %443 ], [ %438, %436 ]
  %454 = mul i64 %453, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %434, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %452, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %455 = icmp slt i64 %454, 0, !dbg !3494
  br i1 %455, label %463, label %456, !dbg !3494

456:                                              ; preds = %441, %451
  %457 = phi i32 [ %442, %441 ], [ %452, %451 ]
  %458 = phi i64 [ 9223372036854775807, %441 ], [ %454, %451 ]
  %459 = udiv i64 9223372036854775807, %55, !dbg !3494
  %460 = icmp ult i64 %459, %458, !dbg !3494
  br i1 %460, label %461, label %471, !dbg !3494

461:                                              ; preds = %456
  %462 = or i32 %457, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %472, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %476, !dbg !3494

463:                                              ; preds = %451, %449
  %464 = phi i32 [ %450, %449 ], [ %452, %451 ]
  %465 = phi i64 [ -9223372036854775808, %449 ], [ %454, %451 ]
  %466 = sub i64 0, %465, !dbg !3494
  %467 = udiv i64 -9223372036854775808, %466, !dbg !3494
  %468 = icmp slt i64 %467, %55, !dbg !3494
  br i1 %468, label %469, label %471, !dbg !3494

469:                                              ; preds = %463
  %470 = or i32 %464, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %472, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %483, !dbg !3494

471:                                              ; preds = %456, %463
  %472 = phi i32 [ %464, %463 ], [ %457, %456 ]
  %473 = phi i64 [ %465, %463 ], [ %458, %456 ]
  %474 = mul i64 %473, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %454, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %472, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %475 = icmp slt i64 %474, 0, !dbg !3494
  br i1 %475, label %483, label %476, !dbg !3494

476:                                              ; preds = %461, %471
  %477 = phi i32 [ %462, %461 ], [ %472, %471 ]
  %478 = phi i64 [ 9223372036854775807, %461 ], [ %474, %471 ]
  %479 = udiv i64 9223372036854775807, %55, !dbg !3494
  %480 = icmp ult i64 %479, %478, !dbg !3494
  br i1 %480, label %481, label %491, !dbg !3494

481:                                              ; preds = %476
  %482 = or i32 %477, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %492, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %496, !dbg !3494

483:                                              ; preds = %471, %469
  %484 = phi i32 [ %470, %469 ], [ %472, %471 ]
  %485 = phi i64 [ -9223372036854775808, %469 ], [ %474, %471 ]
  %486 = sub i64 0, %485, !dbg !3494
  %487 = udiv i64 -9223372036854775808, %486, !dbg !3494
  %488 = icmp slt i64 %487, %55, !dbg !3494
  br i1 %488, label %489, label %491, !dbg !3494

489:                                              ; preds = %483
  %490 = or i32 %484, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %492, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %503, !dbg !3494

491:                                              ; preds = %476, %483
  %492 = phi i32 [ %484, %483 ], [ %477, %476 ]
  %493 = phi i64 [ %485, %483 ], [ %478, %476 ]
  %494 = mul i64 %493, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %474, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %492, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %495 = icmp slt i64 %494, 0, !dbg !3494
  br i1 %495, label %503, label %496, !dbg !3494

496:                                              ; preds = %481, %491
  %497 = phi i32 [ %482, %481 ], [ %492, %491 ]
  %498 = phi i64 [ 9223372036854775807, %481 ], [ %494, %491 ]
  %499 = udiv i64 9223372036854775807, %55, !dbg !3494
  %500 = icmp ult i64 %499, %498, !dbg !3494
  br i1 %500, label %501, label %511, !dbg !3494

501:                                              ; preds = %496
  %502 = or i32 %497, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %512, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %516, !dbg !3494

503:                                              ; preds = %491, %489
  %504 = phi i32 [ %490, %489 ], [ %492, %491 ]
  %505 = phi i64 [ -9223372036854775808, %489 ], [ %494, %491 ]
  %506 = sub i64 0, %505, !dbg !3494
  %507 = udiv i64 -9223372036854775808, %506, !dbg !3494
  %508 = icmp slt i64 %507, %55, !dbg !3494
  br i1 %508, label %509, label %511, !dbg !3494

509:                                              ; preds = %503
  %510 = or i32 %504, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %512, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %523, !dbg !3494

511:                                              ; preds = %496, %503
  %512 = phi i32 [ %504, %503 ], [ %497, %496 ]
  %513 = phi i64 [ %505, %503 ], [ %498, %496 ]
  %514 = mul i64 %513, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %494, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %512, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %515 = icmp slt i64 %514, 0, !dbg !3494
  br i1 %515, label %523, label %516, !dbg !3494

516:                                              ; preds = %501, %511
  %517 = phi i32 [ %502, %501 ], [ %512, %511 ]
  %518 = phi i64 [ 9223372036854775807, %501 ], [ %514, %511 ]
  %519 = udiv i64 9223372036854775807, %55, !dbg !3494
  %520 = icmp ult i64 %519, %518, !dbg !3494
  br i1 %520, label %521, label %531, !dbg !3494

521:                                              ; preds = %516
  %522 = or i32 %517, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %532, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %536, !dbg !3494

523:                                              ; preds = %511, %509
  %524 = phi i32 [ %510, %509 ], [ %512, %511 ]
  %525 = phi i64 [ -9223372036854775808, %509 ], [ %514, %511 ]
  %526 = sub i64 0, %525, !dbg !3494
  %527 = udiv i64 -9223372036854775808, %526, !dbg !3494
  %528 = icmp slt i64 %527, %55, !dbg !3494
  br i1 %528, label %529, label %531, !dbg !3494

529:                                              ; preds = %523
  %530 = or i32 %524, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %532, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  br label %541, !dbg !3494

531:                                              ; preds = %516, %523
  %532 = phi i32 [ %524, %523 ], [ %517, %516 ]
  %533 = phi i64 [ %525, %523 ], [ %518, %516 ]
  %534 = mul i64 %533, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %514, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %532, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3492
  %535 = icmp slt i64 %534, 0, !dbg !3494
  br i1 %535, label %541, label %536, !dbg !3494

536:                                              ; preds = %521, %531
  %537 = phi i32 [ %522, %521 ], [ %532, %531 ]
  %538 = phi i64 [ 9223372036854775807, %521 ], [ %534, %531 ]
  %539 = udiv i64 9223372036854775807, %55, !dbg !3494
  %540 = icmp ult i64 %539, %538, !dbg !3494
  br i1 %540, label %551, label %547, !dbg !3494

541:                                              ; preds = %531, %529
  %542 = phi i32 [ %530, %529 ], [ %532, %531 ]
  %543 = phi i64 [ -9223372036854775808, %529 ], [ %534, %531 ]
  %544 = sub i64 0, %543, !dbg !3494
  %545 = udiv i64 -9223372036854775808, %544, !dbg !3494
  %546 = icmp slt i64 %545, %55, !dbg !3494
  br i1 %546, label %551, label %547, !dbg !3494

547:                                              ; preds = %541, %536
  %548 = phi i32 [ %542, %541 ], [ %537, %536 ]
  %549 = phi i64 [ %543, %541 ], [ %538, %536 ]
  %550 = mul i64 %549, %55, !dbg !3494
  call void @llvm.dbg.value(metadata !DIArgList(i64 %534, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3492
  br label %551, !dbg !3539

551:                                              ; preds = %547, %541, %536
  %552 = phi i32 [ %548, %547 ], [ %537, %536 ], [ %542, %541 ]
  %553 = phi i64 [ %550, %547 ], [ 9223372036854775807, %536 ], [ -9223372036854775808, %541 ], !dbg !3492
  %554 = phi i32 [ 0, %547 ], [ 1, %536 ], [ 1, %541 ], !dbg !3492
  %555 = or i32 %554, %552, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %555, metadata !3458, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3490
  br label %1063, !dbg !3515

556:                                              ; preds = %61
  %557 = icmp eq i64 %32, -1, !dbg !3489
  br i1 %557, label %565, label %558, !dbg !3489

558:                                              ; preds = %556
  %559 = sub i64 0, %32, !dbg !3489
  %560 = udiv i64 -9223372036854775808, %559, !dbg !3489
  %561 = icmp ult i64 %560, %55, !dbg !3489
  br i1 %561, label %573, label %565, !dbg !3489

562:                                              ; preds = %61
  %563 = udiv i64 9223372036854775807, %55, !dbg !3489
  %564 = icmp ult i64 %563, %32, !dbg !3489
  br i1 %564, label %568, label %565, !dbg !3489

565:                                              ; preds = %556, %558, %562
  %566 = mul i64 %32, %55, !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3487
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 7, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  %567 = icmp slt i64 %566, 0, !dbg !3489
  br i1 %567, label %573, label %568, !dbg !3489

568:                                              ; preds = %562, %565
  %569 = phi i32 [ 0, %565 ], [ 1, %562 ]
  %570 = phi i64 [ %566, %565 ], [ 9223372036854775807, %562 ]
  %571 = udiv i64 9223372036854775807, %55, !dbg !3489
  %572 = icmp ult i64 %571, %570, !dbg !3489
  br i1 %572, label %584, label %579, !dbg !3489

573:                                              ; preds = %558, %565
  %574 = phi i32 [ 0, %565 ], [ 1, %558 ]
  %575 = phi i64 [ %566, %565 ], [ -9223372036854775808, %558 ]
  %576 = sub i64 0, %575, !dbg !3489
  %577 = udiv i64 -9223372036854775808, %576, !dbg !3489
  %578 = icmp slt i64 %577, %55, !dbg !3489
  br i1 %578, label %589, label %579, !dbg !3489

579:                                              ; preds = %568, %573
  %580 = phi i32 [ %574, %573 ], [ %569, %568 ]
  %581 = phi i64 [ %575, %573 ], [ %570, %568 ]
  %582 = mul i64 %581, %55, !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %566, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %580, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 6, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  %583 = icmp slt i64 %582, 0, !dbg !3489
  br i1 %583, label %589, label %584, !dbg !3489

584:                                              ; preds = %568, %579
  %585 = phi i32 [ %580, %579 ], [ 1, %568 ]
  %586 = phi i64 [ %582, %579 ], [ 9223372036854775807, %568 ]
  %587 = udiv i64 9223372036854775807, %55, !dbg !3489
  %588 = icmp ult i64 %587, %586, !dbg !3489
  br i1 %588, label %600, label %595, !dbg !3489

589:                                              ; preds = %573, %579
  %590 = phi i32 [ %580, %579 ], [ 1, %573 ]
  %591 = phi i64 [ %582, %579 ], [ -9223372036854775808, %573 ]
  %592 = sub i64 0, %591, !dbg !3489
  %593 = udiv i64 -9223372036854775808, %592, !dbg !3489
  %594 = icmp slt i64 %593, %55, !dbg !3489
  br i1 %594, label %607, label %595, !dbg !3489

595:                                              ; preds = %584, %589
  %596 = phi i32 [ %590, %589 ], [ %585, %584 ]
  %597 = phi i64 [ %591, %589 ], [ %586, %584 ]
  %598 = mul i64 %597, %55, !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %582, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %596, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 5, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  %599 = icmp slt i64 %598, 0, !dbg !3489
  br i1 %599, label %607, label %600, !dbg !3489

600:                                              ; preds = %584, %595
  %601 = phi i32 [ %596, %595 ], [ 1, %584 ]
  %602 = phi i64 [ %598, %595 ], [ 9223372036854775807, %584 ]
  %603 = udiv i64 9223372036854775807, %55, !dbg !3489
  %604 = icmp ult i64 %603, %602, !dbg !3489
  br i1 %604, label %605, label %615, !dbg !3489

605:                                              ; preds = %600
  %606 = or i32 %601, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %616, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %620, !dbg !3489

607:                                              ; preds = %589, %595
  %608 = phi i32 [ %596, %595 ], [ 1, %589 ]
  %609 = phi i64 [ %598, %595 ], [ -9223372036854775808, %589 ]
  %610 = sub i64 0, %609, !dbg !3489
  %611 = udiv i64 -9223372036854775808, %610, !dbg !3489
  %612 = icmp slt i64 %611, %55, !dbg !3489
  br i1 %612, label %613, label %615, !dbg !3489

613:                                              ; preds = %607
  %614 = or i32 %608, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %616, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %627, !dbg !3489

615:                                              ; preds = %600, %607
  %616 = phi i32 [ %608, %607 ], [ %601, %600 ]
  %617 = phi i64 [ %609, %607 ], [ %602, %600 ]
  %618 = mul i64 %617, %55, !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %598, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %616, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  %619 = icmp slt i64 %618, 0, !dbg !3489
  br i1 %619, label %627, label %620, !dbg !3489

620:                                              ; preds = %605, %615
  %621 = phi i32 [ %606, %605 ], [ %616, %615 ]
  %622 = phi i64 [ 9223372036854775807, %605 ], [ %618, %615 ]
  %623 = udiv i64 9223372036854775807, %55, !dbg !3489
  %624 = icmp ult i64 %623, %622, !dbg !3489
  br i1 %624, label %625, label %635, !dbg !3489

625:                                              ; preds = %620
  %626 = or i32 %621, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %636, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %640, !dbg !3489

627:                                              ; preds = %615, %613
  %628 = phi i32 [ %614, %613 ], [ %616, %615 ]
  %629 = phi i64 [ -9223372036854775808, %613 ], [ %618, %615 ]
  %630 = sub i64 0, %629, !dbg !3489
  %631 = udiv i64 -9223372036854775808, %630, !dbg !3489
  %632 = icmp slt i64 %631, %55, !dbg !3489
  br i1 %632, label %633, label %635, !dbg !3489

633:                                              ; preds = %627
  %634 = or i32 %628, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %636, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %647, !dbg !3489

635:                                              ; preds = %620, %627
  %636 = phi i32 [ %628, %627 ], [ %621, %620 ]
  %637 = phi i64 [ %629, %627 ], [ %622, %620 ]
  %638 = mul i64 %637, %55, !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %618, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %636, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  %639 = icmp slt i64 %638, 0, !dbg !3489
  br i1 %639, label %647, label %640, !dbg !3489

640:                                              ; preds = %625, %635
  %641 = phi i32 [ %626, %625 ], [ %636, %635 ]
  %642 = phi i64 [ 9223372036854775807, %625 ], [ %638, %635 ]
  %643 = udiv i64 9223372036854775807, %55, !dbg !3489
  %644 = icmp ult i64 %643, %642, !dbg !3489
  br i1 %644, label %645, label %655, !dbg !3489

645:                                              ; preds = %640
  %646 = or i32 %641, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %656, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %660, !dbg !3489

647:                                              ; preds = %635, %633
  %648 = phi i32 [ %634, %633 ], [ %636, %635 ]
  %649 = phi i64 [ -9223372036854775808, %633 ], [ %638, %635 ]
  %650 = sub i64 0, %649, !dbg !3489
  %651 = udiv i64 -9223372036854775808, %650, !dbg !3489
  %652 = icmp slt i64 %651, %55, !dbg !3489
  br i1 %652, label %653, label %655, !dbg !3489

653:                                              ; preds = %647
  %654 = or i32 %648, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %656, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %667, !dbg !3489

655:                                              ; preds = %640, %647
  %656 = phi i32 [ %648, %647 ], [ %641, %640 ]
  %657 = phi i64 [ %649, %647 ], [ %642, %640 ]
  %658 = mul i64 %657, %55, !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %638, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %656, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  %659 = icmp slt i64 %658, 0, !dbg !3489
  br i1 %659, label %667, label %660, !dbg !3489

660:                                              ; preds = %645, %655
  %661 = phi i32 [ %646, %645 ], [ %656, %655 ]
  %662 = phi i64 [ 9223372036854775807, %645 ], [ %658, %655 ]
  %663 = udiv i64 9223372036854775807, %55, !dbg !3489
  %664 = icmp ult i64 %663, %662, !dbg !3489
  br i1 %664, label %665, label %675, !dbg !3489

665:                                              ; preds = %660
  %666 = or i32 %661, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %676, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %680, !dbg !3489

667:                                              ; preds = %655, %653
  %668 = phi i32 [ %654, %653 ], [ %656, %655 ]
  %669 = phi i64 [ -9223372036854775808, %653 ], [ %658, %655 ]
  %670 = sub i64 0, %669, !dbg !3489
  %671 = udiv i64 -9223372036854775808, %670, !dbg !3489
  %672 = icmp slt i64 %671, %55, !dbg !3489
  br i1 %672, label %673, label %675, !dbg !3489

673:                                              ; preds = %667
  %674 = or i32 %668, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %676, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %687, !dbg !3489

675:                                              ; preds = %660, %667
  %676 = phi i32 [ %668, %667 ], [ %661, %660 ]
  %677 = phi i64 [ %669, %667 ], [ %662, %660 ]
  %678 = mul i64 %677, %55, !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %658, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %676, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  %679 = icmp slt i64 %678, 0, !dbg !3489
  br i1 %679, label %687, label %680, !dbg !3489

680:                                              ; preds = %665, %675
  %681 = phi i32 [ %666, %665 ], [ %676, %675 ]
  %682 = phi i64 [ 9223372036854775807, %665 ], [ %678, %675 ]
  %683 = udiv i64 9223372036854775807, %55, !dbg !3489
  %684 = icmp ult i64 %683, %682, !dbg !3489
  br i1 %684, label %685, label %695, !dbg !3489

685:                                              ; preds = %680
  %686 = or i32 %681, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %696, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %700, !dbg !3489

687:                                              ; preds = %675, %673
  %688 = phi i32 [ %674, %673 ], [ %676, %675 ]
  %689 = phi i64 [ -9223372036854775808, %673 ], [ %678, %675 ]
  %690 = sub i64 0, %689, !dbg !3489
  %691 = udiv i64 -9223372036854775808, %690, !dbg !3489
  %692 = icmp slt i64 %691, %55, !dbg !3489
  br i1 %692, label %693, label %695, !dbg !3489

693:                                              ; preds = %687
  %694 = or i32 %688, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %696, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  br label %705, !dbg !3489

695:                                              ; preds = %680, %687
  %696 = phi i32 [ %688, %687 ], [ %681, %680 ]
  %697 = phi i64 [ %689, %687 ], [ %682, %680 ]
  %698 = mul i64 %697, %55, !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %678, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %696, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3487
  %699 = icmp slt i64 %698, 0, !dbg !3489
  br i1 %699, label %705, label %700, !dbg !3489

700:                                              ; preds = %685, %695
  %701 = phi i32 [ %686, %685 ], [ %696, %695 ]
  %702 = phi i64 [ 9223372036854775807, %685 ], [ %698, %695 ]
  %703 = udiv i64 9223372036854775807, %55, !dbg !3489
  %704 = icmp ult i64 %703, %702, !dbg !3489
  br i1 %704, label %715, label %711, !dbg !3489

705:                                              ; preds = %695, %693
  %706 = phi i32 [ %694, %693 ], [ %696, %695 ]
  %707 = phi i64 [ -9223372036854775808, %693 ], [ %698, %695 ]
  %708 = sub i64 0, %707, !dbg !3489
  %709 = udiv i64 -9223372036854775808, %708, !dbg !3489
  %710 = icmp slt i64 %709, %55, !dbg !3489
  br i1 %710, label %715, label %711, !dbg !3489

711:                                              ; preds = %705, %700
  %712 = phi i32 [ %706, %705 ], [ %701, %700 ]
  %713 = phi i64 [ %707, %705 ], [ %702, %700 ]
  %714 = mul i64 %713, %55, !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %698, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3487
  br label %715, !dbg !3541

715:                                              ; preds = %711, %705, %700
  %716 = phi i32 [ %712, %711 ], [ %701, %700 ], [ %706, %705 ]
  %717 = phi i64 [ %714, %711 ], [ 9223372036854775807, %700 ], [ -9223372036854775808, %705 ], !dbg !3487
  %718 = phi i32 [ 0, %711 ], [ 1, %700 ], [ 1, %705 ], !dbg !3487
  %719 = or i32 %718, %716, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %719, metadata !3458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3485
  br label %1063, !dbg !3515

720:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3463, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 undef, metadata !3464, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3544
  %721 = icmp slt i64 %32, 0, !dbg !3546
  br i1 %721, label %722, label %728, !dbg !3546

722:                                              ; preds = %720
  %723 = icmp eq i64 %32, -1, !dbg !3546
  br i1 %723, label %731, label %724, !dbg !3546

724:                                              ; preds = %722
  %725 = sub i64 0, %32, !dbg !3546
  %726 = udiv i64 -9223372036854775808, %725, !dbg !3546
  %727 = icmp ult i64 %726, %55, !dbg !3546
  br i1 %727, label %739, label %731, !dbg !3546

728:                                              ; preds = %720
  %729 = udiv i64 9223372036854775807, %55, !dbg !3546
  %730 = icmp ult i64 %729, %32, !dbg !3546
  br i1 %730, label %734, label %731, !dbg !3546

731:                                              ; preds = %722, %724, %728
  %732 = mul i64 %32, %55, !dbg !3546
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3544
  %733 = icmp slt i64 %732, 0, !dbg !3546
  br i1 %733, label %739, label %734, !dbg !3546

734:                                              ; preds = %728, %731
  %735 = phi i32 [ 0, %731 ], [ 1, %728 ]
  %736 = phi i64 [ %732, %731 ], [ 9223372036854775807, %728 ]
  %737 = udiv i64 9223372036854775807, %55, !dbg !3546
  %738 = icmp ult i64 %737, %736, !dbg !3546
  br i1 %738, label %750, label %745, !dbg !3546

739:                                              ; preds = %724, %731
  %740 = phi i32 [ 0, %731 ], [ 1, %724 ]
  %741 = phi i64 [ %732, %731 ], [ -9223372036854775808, %724 ]
  %742 = sub i64 0, %741, !dbg !3546
  %743 = udiv i64 -9223372036854775808, %742, !dbg !3546
  %744 = icmp slt i64 %743, %55, !dbg !3546
  br i1 %744, label %755, label %745, !dbg !3546

745:                                              ; preds = %734, %739
  %746 = phi i32 [ %740, %739 ], [ %735, %734 ]
  %747 = phi i64 [ %741, %739 ], [ %736, %734 ]
  %748 = mul i64 %747, %55, !dbg !3546
  call void @llvm.dbg.value(metadata !DIArgList(i64 %732, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %746, metadata !3458, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3544
  %749 = icmp slt i64 %748, 0, !dbg !3546
  br i1 %749, label %755, label %750, !dbg !3546

750:                                              ; preds = %734, %745
  %751 = phi i32 [ %746, %745 ], [ 1, %734 ]
  %752 = phi i64 [ %748, %745 ], [ 9223372036854775807, %734 ]
  %753 = udiv i64 9223372036854775807, %55, !dbg !3546
  %754 = icmp ult i64 %753, %752, !dbg !3546
  br i1 %754, label %766, label %761, !dbg !3546

755:                                              ; preds = %739, %745
  %756 = phi i32 [ %746, %745 ], [ 1, %739 ]
  %757 = phi i64 [ %748, %745 ], [ -9223372036854775808, %739 ]
  %758 = sub i64 0, %757, !dbg !3546
  %759 = udiv i64 -9223372036854775808, %758, !dbg !3546
  %760 = icmp slt i64 %759, %55, !dbg !3546
  br i1 %760, label %771, label %761, !dbg !3546

761:                                              ; preds = %750, %755
  %762 = phi i32 [ %756, %755 ], [ %751, %750 ]
  %763 = phi i64 [ %757, %755 ], [ %752, %750 ]
  %764 = mul i64 %763, %55, !dbg !3546
  call void @llvm.dbg.value(metadata !DIArgList(i64 %748, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %762, metadata !3458, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3544
  %765 = icmp slt i64 %764, 0, !dbg !3546
  br i1 %765, label %771, label %766, !dbg !3546

766:                                              ; preds = %750, %761
  %767 = phi i32 [ %762, %761 ], [ 1, %750 ]
  %768 = phi i64 [ %764, %761 ], [ 9223372036854775807, %750 ]
  %769 = udiv i64 9223372036854775807, %55, !dbg !3546
  %770 = icmp ult i64 %769, %768, !dbg !3546
  br i1 %770, label %781, label %777, !dbg !3546

771:                                              ; preds = %755, %761
  %772 = phi i32 [ %762, %761 ], [ 1, %755 ]
  %773 = phi i64 [ %764, %761 ], [ -9223372036854775808, %755 ]
  %774 = sub i64 0, %773, !dbg !3546
  %775 = udiv i64 -9223372036854775808, %774, !dbg !3546
  %776 = icmp slt i64 %775, %55, !dbg !3546
  br i1 %776, label %781, label %777, !dbg !3546

777:                                              ; preds = %771, %766
  %778 = phi i32 [ %772, %771 ], [ %767, %766 ]
  %779 = phi i64 [ %773, %771 ], [ %768, %766 ]
  %780 = mul i64 %779, %55, !dbg !3546
  call void @llvm.dbg.value(metadata !DIArgList(i64 %764, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3544
  br label %781, !dbg !3547

781:                                              ; preds = %777, %771, %766
  %782 = phi i32 [ %778, %777 ], [ %767, %766 ], [ %772, %771 ]
  %783 = phi i64 [ %780, %777 ], [ 9223372036854775807, %766 ], [ -9223372036854775808, %771 ], !dbg !3544
  %784 = phi i32 [ 0, %777 ], [ 1, %766 ], [ 1, %771 ], !dbg !3544
  %785 = or i32 %784, %782, !dbg !3548
  call void @llvm.dbg.value(metadata i32 %785, metadata !3458, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3542
  br label %1063, !dbg !3515

786:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i32 2, metadata !3474, metadata !DIExpression()), !dbg !3549
  %787 = icmp slt i64 %32, 0, !dbg !3551
  br i1 %787, label %788, label %791, !dbg !3551

788:                                              ; preds = %786
  %789 = add i64 %32, -1, !dbg !3551
  %790 = icmp ult i64 %789, -4611686018427387905, !dbg !3551
  br i1 %790, label %1063, label %793, !dbg !3551

791:                                              ; preds = %786
  %792 = icmp ugt i64 %32, 4611686018427387903, !dbg !3551
  br i1 %792, label %1063, label %793, !dbg !3551

793:                                              ; preds = %791, %788
  %794 = shl nsw i64 %32, 1, !dbg !3551
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 2), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3549
  br label %1063, !dbg !3552

795:                                              ; preds = %59
  %796 = icmp eq i64 %32, -1, !dbg !3484
  br i1 %796, label %804, label %797, !dbg !3484

797:                                              ; preds = %795
  %798 = sub i64 0, %32, !dbg !3484
  %799 = udiv i64 -9223372036854775808, %798, !dbg !3484
  %800 = icmp ult i64 %799, %55, !dbg !3484
  br i1 %800, label %812, label %804, !dbg !3484

801:                                              ; preds = %59
  %802 = udiv i64 9223372036854775807, %55, !dbg !3484
  %803 = icmp ult i64 %802, %32, !dbg !3484
  br i1 %803, label %807, label %804, !dbg !3484

804:                                              ; preds = %795, %797, %801
  %805 = mul i64 %32, %55, !dbg !3484
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3482
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 6, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  %806 = icmp slt i64 %805, 0, !dbg !3484
  br i1 %806, label %812, label %807, !dbg !3484

807:                                              ; preds = %801, %804
  %808 = phi i32 [ 0, %804 ], [ 1, %801 ]
  %809 = phi i64 [ %805, %804 ], [ 9223372036854775807, %801 ]
  %810 = udiv i64 9223372036854775807, %55, !dbg !3484
  %811 = icmp ult i64 %810, %809, !dbg !3484
  br i1 %811, label %823, label %818, !dbg !3484

812:                                              ; preds = %797, %804
  %813 = phi i32 [ 0, %804 ], [ 1, %797 ]
  %814 = phi i64 [ %805, %804 ], [ -9223372036854775808, %797 ]
  %815 = sub i64 0, %814, !dbg !3484
  %816 = udiv i64 -9223372036854775808, %815, !dbg !3484
  %817 = icmp slt i64 %816, %55, !dbg !3484
  br i1 %817, label %828, label %818, !dbg !3484

818:                                              ; preds = %807, %812
  %819 = phi i32 [ %813, %812 ], [ %808, %807 ]
  %820 = phi i64 [ %814, %812 ], [ %809, %807 ]
  %821 = mul i64 %820, %55, !dbg !3484
  call void @llvm.dbg.value(metadata !DIArgList(i64 %805, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3482
  call void @llvm.dbg.value(metadata i32 %819, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 5, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  %822 = icmp slt i64 %821, 0, !dbg !3484
  br i1 %822, label %828, label %823, !dbg !3484

823:                                              ; preds = %807, %818
  %824 = phi i32 [ %819, %818 ], [ 1, %807 ]
  %825 = phi i64 [ %821, %818 ], [ 9223372036854775807, %807 ]
  %826 = udiv i64 9223372036854775807, %55, !dbg !3484
  %827 = icmp ult i64 %826, %825, !dbg !3484
  br i1 %827, label %839, label %834, !dbg !3484

828:                                              ; preds = %812, %818
  %829 = phi i32 [ %819, %818 ], [ 1, %812 ]
  %830 = phi i64 [ %821, %818 ], [ -9223372036854775808, %812 ]
  %831 = sub i64 0, %830, !dbg !3484
  %832 = udiv i64 -9223372036854775808, %831, !dbg !3484
  %833 = icmp slt i64 %832, %55, !dbg !3484
  br i1 %833, label %846, label %834, !dbg !3484

834:                                              ; preds = %823, %828
  %835 = phi i32 [ %829, %828 ], [ %824, %823 ]
  %836 = phi i64 [ %830, %828 ], [ %825, %823 ]
  %837 = mul i64 %836, %55, !dbg !3484
  call void @llvm.dbg.value(metadata !DIArgList(i64 %821, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3482
  call void @llvm.dbg.value(metadata i32 %835, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  %838 = icmp slt i64 %837, 0, !dbg !3484
  br i1 %838, label %846, label %839, !dbg !3484

839:                                              ; preds = %823, %834
  %840 = phi i32 [ %835, %834 ], [ 1, %823 ]
  %841 = phi i64 [ %837, %834 ], [ 9223372036854775807, %823 ]
  %842 = udiv i64 9223372036854775807, %55, !dbg !3484
  %843 = icmp ult i64 %842, %841, !dbg !3484
  br i1 %843, label %844, label %854, !dbg !3484

844:                                              ; preds = %839
  %845 = or i32 %840, 1, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %855, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  br label %859, !dbg !3484

846:                                              ; preds = %828, %834
  %847 = phi i32 [ %835, %834 ], [ 1, %828 ]
  %848 = phi i64 [ %837, %834 ], [ -9223372036854775808, %828 ]
  %849 = sub i64 0, %848, !dbg !3484
  %850 = udiv i64 -9223372036854775808, %849, !dbg !3484
  %851 = icmp slt i64 %850, %55, !dbg !3484
  br i1 %851, label %852, label %854, !dbg !3484

852:                                              ; preds = %846
  %853 = or i32 %847, 1, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %855, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  br label %866, !dbg !3484

854:                                              ; preds = %839, %846
  %855 = phi i32 [ %847, %846 ], [ %840, %839 ]
  %856 = phi i64 [ %848, %846 ], [ %841, %839 ]
  %857 = mul i64 %856, %55, !dbg !3484
  call void @llvm.dbg.value(metadata !DIArgList(i64 %837, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3482
  call void @llvm.dbg.value(metadata i32 %855, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  %858 = icmp slt i64 %857, 0, !dbg !3484
  br i1 %858, label %866, label %859, !dbg !3484

859:                                              ; preds = %844, %854
  %860 = phi i32 [ %845, %844 ], [ %855, %854 ]
  %861 = phi i64 [ 9223372036854775807, %844 ], [ %857, %854 ]
  %862 = udiv i64 9223372036854775807, %55, !dbg !3484
  %863 = icmp ult i64 %862, %861, !dbg !3484
  br i1 %863, label %864, label %874, !dbg !3484

864:                                              ; preds = %859
  %865 = or i32 %860, 1, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %875, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  br label %879, !dbg !3484

866:                                              ; preds = %854, %852
  %867 = phi i32 [ %853, %852 ], [ %855, %854 ]
  %868 = phi i64 [ -9223372036854775808, %852 ], [ %857, %854 ]
  %869 = sub i64 0, %868, !dbg !3484
  %870 = udiv i64 -9223372036854775808, %869, !dbg !3484
  %871 = icmp slt i64 %870, %55, !dbg !3484
  br i1 %871, label %872, label %874, !dbg !3484

872:                                              ; preds = %866
  %873 = or i32 %867, 1, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %875, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  br label %886, !dbg !3484

874:                                              ; preds = %859, %866
  %875 = phi i32 [ %867, %866 ], [ %860, %859 ]
  %876 = phi i64 [ %868, %866 ], [ %861, %859 ]
  %877 = mul i64 %876, %55, !dbg !3484
  call void @llvm.dbg.value(metadata !DIArgList(i64 %857, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3482
  call void @llvm.dbg.value(metadata i32 %875, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  %878 = icmp slt i64 %877, 0, !dbg !3484
  br i1 %878, label %886, label %879, !dbg !3484

879:                                              ; preds = %864, %874
  %880 = phi i32 [ %865, %864 ], [ %875, %874 ]
  %881 = phi i64 [ 9223372036854775807, %864 ], [ %877, %874 ]
  %882 = udiv i64 9223372036854775807, %55, !dbg !3484
  %883 = icmp ult i64 %882, %881, !dbg !3484
  br i1 %883, label %884, label %894, !dbg !3484

884:                                              ; preds = %879
  %885 = or i32 %880, 1, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %895, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  br label %899, !dbg !3484

886:                                              ; preds = %874, %872
  %887 = phi i32 [ %873, %872 ], [ %875, %874 ]
  %888 = phi i64 [ -9223372036854775808, %872 ], [ %877, %874 ]
  %889 = sub i64 0, %888, !dbg !3484
  %890 = udiv i64 -9223372036854775808, %889, !dbg !3484
  %891 = icmp slt i64 %890, %55, !dbg !3484
  br i1 %891, label %892, label %894, !dbg !3484

892:                                              ; preds = %886
  %893 = or i32 %887, 1, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %895, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  br label %906, !dbg !3484

894:                                              ; preds = %879, %886
  %895 = phi i32 [ %887, %886 ], [ %880, %879 ]
  %896 = phi i64 [ %888, %886 ], [ %881, %879 ]
  %897 = mul i64 %896, %55, !dbg !3484
  call void @llvm.dbg.value(metadata !DIArgList(i64 %877, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3482
  call void @llvm.dbg.value(metadata i32 %895, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  %898 = icmp slt i64 %897, 0, !dbg !3484
  br i1 %898, label %906, label %899, !dbg !3484

899:                                              ; preds = %884, %894
  %900 = phi i32 [ %885, %884 ], [ %895, %894 ]
  %901 = phi i64 [ 9223372036854775807, %884 ], [ %897, %894 ]
  %902 = udiv i64 9223372036854775807, %55, !dbg !3484
  %903 = icmp ult i64 %902, %901, !dbg !3484
  br i1 %903, label %904, label %914, !dbg !3484

904:                                              ; preds = %899
  %905 = or i32 %900, 1, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %915, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  br label %919, !dbg !3484

906:                                              ; preds = %894, %892
  %907 = phi i32 [ %893, %892 ], [ %895, %894 ]
  %908 = phi i64 [ -9223372036854775808, %892 ], [ %897, %894 ]
  %909 = sub i64 0, %908, !dbg !3484
  %910 = udiv i64 -9223372036854775808, %909, !dbg !3484
  %911 = icmp slt i64 %910, %55, !dbg !3484
  br i1 %911, label %912, label %914, !dbg !3484

912:                                              ; preds = %906
  %913 = or i32 %907, 1, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %915, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  br label %924, !dbg !3484

914:                                              ; preds = %899, %906
  %915 = phi i32 [ %907, %906 ], [ %900, %899 ]
  %916 = phi i64 [ %908, %906 ], [ %901, %899 ]
  %917 = mul i64 %916, %55, !dbg !3484
  call void @llvm.dbg.value(metadata !DIArgList(i64 %897, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3482
  call void @llvm.dbg.value(metadata i32 %915, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3482
  %918 = icmp slt i64 %917, 0, !dbg !3484
  br i1 %918, label %924, label %919, !dbg !3484

919:                                              ; preds = %904, %914
  %920 = phi i32 [ %905, %904 ], [ %915, %914 ]
  %921 = phi i64 [ 9223372036854775807, %904 ], [ %917, %914 ]
  %922 = udiv i64 9223372036854775807, %55, !dbg !3484
  %923 = icmp ult i64 %922, %921, !dbg !3484
  br i1 %923, label %934, label %930, !dbg !3484

924:                                              ; preds = %914, %912
  %925 = phi i32 [ %913, %912 ], [ %915, %914 ]
  %926 = phi i64 [ -9223372036854775808, %912 ], [ %917, %914 ]
  %927 = sub i64 0, %926, !dbg !3484
  %928 = udiv i64 -9223372036854775808, %927, !dbg !3484
  %929 = icmp slt i64 %928, %55, !dbg !3484
  br i1 %929, label %934, label %930, !dbg !3484

930:                                              ; preds = %924, %919
  %931 = phi i32 [ %925, %924 ], [ %920, %919 ]
  %932 = phi i64 [ %926, %924 ], [ %921, %919 ]
  %933 = mul i64 %932, %55, !dbg !3484
  call void @llvm.dbg.value(metadata !DIArgList(i64 %917, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3482
  br label %934, !dbg !3554

934:                                              ; preds = %930, %924, %919
  %935 = phi i32 [ %931, %930 ], [ %920, %919 ], [ %925, %924 ]
  %936 = phi i64 [ %933, %930 ], [ 9223372036854775807, %919 ], [ -9223372036854775808, %924 ], !dbg !3482
  %937 = phi i32 [ 0, %930 ], [ 1, %919 ], [ 1, %924 ], !dbg !3482
  %938 = or i32 %937, %935, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %938, metadata !3458, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3480
  br label %1063, !dbg !3515

939:                                              ; preds = %57
  %940 = icmp eq i64 %32, -1, !dbg !3478
  br i1 %940, label %948, label %941, !dbg !3478

941:                                              ; preds = %939
  %942 = sub i64 0, %32, !dbg !3478
  %943 = udiv i64 -9223372036854775808, %942, !dbg !3478
  %944 = icmp ult i64 %943, %55, !dbg !3478
  br i1 %944, label %956, label %948, !dbg !3478

945:                                              ; preds = %57
  %946 = udiv i64 9223372036854775807, %55, !dbg !3478
  %947 = icmp ult i64 %946, %32, !dbg !3478
  br i1 %947, label %951, label %948, !dbg !3478

948:                                              ; preds = %939, %941, %945
  %949 = mul i64 %32, %55, !dbg !3478
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3476
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 5, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  %950 = icmp slt i64 %949, 0, !dbg !3478
  br i1 %950, label %956, label %951, !dbg !3478

951:                                              ; preds = %945, %948
  %952 = phi i32 [ 0, %948 ], [ 1, %945 ]
  %953 = phi i64 [ %949, %948 ], [ 9223372036854775807, %945 ]
  %954 = udiv i64 9223372036854775807, %55, !dbg !3478
  %955 = icmp ult i64 %954, %953, !dbg !3478
  br i1 %955, label %967, label %962, !dbg !3478

956:                                              ; preds = %941, %948
  %957 = phi i32 [ 0, %948 ], [ 1, %941 ]
  %958 = phi i64 [ %949, %948 ], [ -9223372036854775808, %941 ]
  %959 = sub i64 0, %958, !dbg !3478
  %960 = udiv i64 -9223372036854775808, %959, !dbg !3478
  %961 = icmp slt i64 %960, %55, !dbg !3478
  br i1 %961, label %972, label %962, !dbg !3478

962:                                              ; preds = %951, %956
  %963 = phi i32 [ %957, %956 ], [ %952, %951 ]
  %964 = phi i64 [ %958, %956 ], [ %953, %951 ]
  %965 = mul i64 %964, %55, !dbg !3478
  call void @llvm.dbg.value(metadata !DIArgList(i64 %949, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3476
  call void @llvm.dbg.value(metadata i32 %963, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 4, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  %966 = icmp slt i64 %965, 0, !dbg !3478
  br i1 %966, label %972, label %967, !dbg !3478

967:                                              ; preds = %951, %962
  %968 = phi i32 [ %963, %962 ], [ 1, %951 ]
  %969 = phi i64 [ %965, %962 ], [ 9223372036854775807, %951 ]
  %970 = udiv i64 9223372036854775807, %55, !dbg !3478
  %971 = icmp ult i64 %970, %969, !dbg !3478
  br i1 %971, label %983, label %978, !dbg !3478

972:                                              ; preds = %956, %962
  %973 = phi i32 [ %963, %962 ], [ 1, %956 ]
  %974 = phi i64 [ %965, %962 ], [ -9223372036854775808, %956 ]
  %975 = sub i64 0, %974, !dbg !3478
  %976 = udiv i64 -9223372036854775808, %975, !dbg !3478
  %977 = icmp slt i64 %976, %55, !dbg !3478
  br i1 %977, label %990, label %978, !dbg !3478

978:                                              ; preds = %967, %972
  %979 = phi i32 [ %973, %972 ], [ %968, %967 ]
  %980 = phi i64 [ %974, %972 ], [ %969, %967 ]
  %981 = mul i64 %980, %55, !dbg !3478
  call void @llvm.dbg.value(metadata !DIArgList(i64 %965, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3476
  call void @llvm.dbg.value(metadata i32 %979, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 3, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  %982 = icmp slt i64 %981, 0, !dbg !3478
  br i1 %982, label %990, label %983, !dbg !3478

983:                                              ; preds = %967, %978
  %984 = phi i32 [ %979, %978 ], [ 1, %967 ]
  %985 = phi i64 [ %981, %978 ], [ 9223372036854775807, %967 ]
  %986 = udiv i64 9223372036854775807, %55, !dbg !3478
  %987 = icmp ult i64 %986, %985, !dbg !3478
  br i1 %987, label %988, label %998, !dbg !3478

988:                                              ; preds = %983
  %989 = or i32 %984, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %999, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  br label %1003, !dbg !3478

990:                                              ; preds = %972, %978
  %991 = phi i32 [ %979, %978 ], [ 1, %972 ]
  %992 = phi i64 [ %981, %978 ], [ -9223372036854775808, %972 ]
  %993 = sub i64 0, %992, !dbg !3478
  %994 = udiv i64 -9223372036854775808, %993, !dbg !3478
  %995 = icmp slt i64 %994, %55, !dbg !3478
  br i1 %995, label %996, label %998, !dbg !3478

996:                                              ; preds = %990
  %997 = or i32 %991, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %999, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  br label %1010, !dbg !3478

998:                                              ; preds = %983, %990
  %999 = phi i32 [ %991, %990 ], [ %984, %983 ]
  %1000 = phi i64 [ %992, %990 ], [ %985, %983 ]
  %1001 = mul i64 %1000, %55, !dbg !3478
  call void @llvm.dbg.value(metadata !DIArgList(i64 %981, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3476
  call void @llvm.dbg.value(metadata i32 %999, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 2, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  %1002 = icmp slt i64 %1001, 0, !dbg !3478
  br i1 %1002, label %1010, label %1003, !dbg !3478

1003:                                             ; preds = %988, %998
  %1004 = phi i32 [ %989, %988 ], [ %999, %998 ]
  %1005 = phi i64 [ 9223372036854775807, %988 ], [ %1001, %998 ]
  %1006 = udiv i64 9223372036854775807, %55, !dbg !3478
  %1007 = icmp ult i64 %1006, %1005, !dbg !3478
  br i1 %1007, label %1008, label %1018, !dbg !3478

1008:                                             ; preds = %1003
  %1009 = or i32 %1004, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %1019, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  br label %1023, !dbg !3478

1010:                                             ; preds = %998, %996
  %1011 = phi i32 [ %997, %996 ], [ %999, %998 ]
  %1012 = phi i64 [ -9223372036854775808, %996 ], [ %1001, %998 ]
  %1013 = sub i64 0, %1012, !dbg !3478
  %1014 = udiv i64 -9223372036854775808, %1013, !dbg !3478
  %1015 = icmp slt i64 %1014, %55, !dbg !3478
  br i1 %1015, label %1016, label %1018, !dbg !3478

1016:                                             ; preds = %1010
  %1017 = or i32 %1011, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %1019, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  br label %1030, !dbg !3478

1018:                                             ; preds = %1003, %1010
  %1019 = phi i32 [ %1011, %1010 ], [ %1004, %1003 ]
  %1020 = phi i64 [ %1012, %1010 ], [ %1005, %1003 ]
  %1021 = mul i64 %1020, %55, !dbg !3478
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1001, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3476
  call void @llvm.dbg.value(metadata i32 %1019, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 1, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  %1022 = icmp slt i64 %1021, 0, !dbg !3478
  br i1 %1022, label %1030, label %1023, !dbg !3478

1023:                                             ; preds = %1008, %1018
  %1024 = phi i32 [ %1009, %1008 ], [ %1019, %1018 ]
  %1025 = phi i64 [ 9223372036854775807, %1008 ], [ %1021, %1018 ]
  %1026 = udiv i64 9223372036854775807, %55, !dbg !3478
  %1027 = icmp ult i64 %1026, %1025, !dbg !3478
  br i1 %1027, label %1028, label %1038, !dbg !3478

1028:                                             ; preds = %1023
  %1029 = or i32 %1024, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %1039, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  br label %1043, !dbg !3478

1030:                                             ; preds = %1018, %1016
  %1031 = phi i32 [ %1017, %1016 ], [ %1019, %1018 ]
  %1032 = phi i64 [ -9223372036854775808, %1016 ], [ %1021, %1018 ]
  %1033 = sub i64 0, %1032, !dbg !3478
  %1034 = udiv i64 -9223372036854775808, %1033, !dbg !3478
  %1035 = icmp slt i64 %1034, %55, !dbg !3478
  br i1 %1035, label %1036, label %1038, !dbg !3478

1036:                                             ; preds = %1030
  %1037 = or i32 %1031, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %1039, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  br label %1048, !dbg !3478

1038:                                             ; preds = %1023, %1030
  %1039 = phi i32 [ %1031, %1030 ], [ %1024, %1023 ]
  %1040 = phi i64 [ %1032, %1030 ], [ %1025, %1023 ]
  %1041 = mul i64 %1040, %55, !dbg !3478
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1021, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3476
  call void @llvm.dbg.value(metadata i32 %1039, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64* undef, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3474, metadata !DIExpression()), !dbg !3476
  %1042 = icmp slt i64 %1041, 0, !dbg !3478
  br i1 %1042, label %1048, label %1043, !dbg !3478

1043:                                             ; preds = %1028, %1038
  %1044 = phi i32 [ %1029, %1028 ], [ %1039, %1038 ]
  %1045 = phi i64 [ 9223372036854775807, %1028 ], [ %1041, %1038 ]
  %1046 = udiv i64 9223372036854775807, %55, !dbg !3478
  %1047 = icmp ult i64 %1046, %1045, !dbg !3478
  br i1 %1047, label %1058, label %1054, !dbg !3478

1048:                                             ; preds = %1038, %1036
  %1049 = phi i32 [ %1037, %1036 ], [ %1039, %1038 ]
  %1050 = phi i64 [ -9223372036854775808, %1036 ], [ %1041, %1038 ]
  %1051 = sub i64 0, %1050, !dbg !3478
  %1052 = udiv i64 -9223372036854775808, %1051, !dbg !3478
  %1053 = icmp slt i64 %1052, %55, !dbg !3478
  br i1 %1053, label %1058, label %1054, !dbg !3478

1054:                                             ; preds = %1048, %1043
  %1055 = phi i32 [ %1049, %1048 ], [ %1044, %1043 ]
  %1056 = phi i64 [ %1050, %1048 ], [ %1045, %1043 ]
  %1057 = mul i64 %1056, %55, !dbg !3478
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1041, i32 undef), metadata !3475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3476
  br label %1058, !dbg !3556

1058:                                             ; preds = %1054, %1048, %1043
  %1059 = phi i32 [ %1055, %1054 ], [ %1044, %1043 ], [ %1049, %1048 ]
  %1060 = phi i64 [ %1057, %1054 ], [ 9223372036854775807, %1043 ], [ -9223372036854775808, %1048 ], !dbg !3476
  %1061 = phi i32 [ 0, %1054 ], [ 1, %1043 ], [ 1, %1048 ], !dbg !3476
  %1062 = or i32 %1061, %1059, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %1062, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3466
  br label %1063, !dbg !3515

1063:                                             ; preds = %788, %80, %71, %245, %249, %252, %1058, %934, %781, %715, %551, %367, %283, %236, %186, %54, %74, %76, %83, %85, %791, %793
  %1064 = phi i64 [ %32, %54 ], [ %77, %76 ], [ 9223372036854775807, %74 ], [ %86, %85 ], [ 9223372036854775807, %83 ], [ %794, %793 ], [ 9223372036854775807, %791 ], [ %188, %186 ], [ %238, %236 ], [ %285, %283 ], [ %369, %367 ], [ %553, %551 ], [ %717, %715 ], [ %783, %781 ], [ %936, %934 ], [ %1060, %1058 ], [ %253, %252 ], [ 9223372036854775807, %249 ], [ -9223372036854775808, %245 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %80 ], [ -9223372036854775808, %788 ], !dbg !3404
  %1065 = phi i32 [ 0, %54 ], [ 0, %76 ], [ 1, %74 ], [ 0, %85 ], [ 1, %83 ], [ 0, %793 ], [ 1, %791 ], [ %190, %186 ], [ %240, %236 ], [ %287, %283 ], [ %371, %367 ], [ %555, %551 ], [ %719, %715 ], [ %785, %781 ], [ %938, %934 ], [ %1062, %1058 ], [ 0, %252 ], [ 1, %249 ], [ 1, %245 ], [ 1, %71 ], [ 1, %80 ], [ 1, %788 ], !dbg !3557
  call void @llvm.dbg.value(metadata i32 %1065, metadata !3403, metadata !DIExpression()), !dbg !3443
  %1066 = or i32 %1065, %31, !dbg !3515
  call void @llvm.dbg.value(metadata i32 %1066, metadata !3398, metadata !DIExpression()), !dbg !3404
  %1067 = getelementptr inbounds i8, i8* %12, i64 %56, !dbg !3558
  store i8* %1067, i8** %9, align 8, !dbg !3558, !tbaa !474
  %1068 = load i8, i8* %1067, align 1, !dbg !3559, !tbaa !578
  %1069 = icmp eq i8 %1068, 0, !dbg !3559
  %1070 = or i32 %1066, 2
  %1071 = select i1 %1069, i32 %1066, i32 %1070, !dbg !3561
  call void @llvm.dbg.value(metadata i32 %31, metadata !3398, metadata !DIExpression()), !dbg !3404
  br label %1074

1072:                                             ; preds = %54
  call void @llvm.dbg.value(metadata i64 %11, metadata !3397, metadata !DIExpression()), !dbg !3404
  store i64 %32, i64* %3, align 8, !dbg !3562, !tbaa !2136
  %1073 = or i32 %31, 2, !dbg !3563
  call void @llvm.dbg.value(metadata i32 %31, metadata !3398, metadata !DIExpression()), !dbg !3404
  br label %1077

1074:                                             ; preds = %1063, %30
  %1075 = phi i64 [ %32, %30 ], [ %1064, %1063 ], !dbg !3564
  %1076 = phi i32 [ %31, %30 ], [ %1071, %1063 ], !dbg !3565
  call void @llvm.dbg.value(metadata i32 %1076, metadata !3398, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %1075, metadata !3397, metadata !DIExpression()), !dbg !3404
  store i64 %1075, i64* %3, align 8, !dbg !3566, !tbaa !2136
  br label %1077, !dbg !3567

1077:                                             ; preds = %1072, %23, %14, %16, %19, %1074, %39, %29
  %1078 = phi i32 [ %1076, %1074 ], [ %1073, %1072 ], [ %40, %39 ], [ %27, %29 ], [ 4, %19 ], [ 4, %16 ], [ 4, %14 ], [ 4, %23 ], !dbg !3404
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #33, !dbg !3568
  ret i32 %1078, !dbg !3568
}

; Function Attrs: nounwind
declare !dbg !3569 i64 @strtoimax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3574 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3612, metadata !DIExpression()), !dbg !3617
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !3618
  call void @llvm.dbg.value(metadata i1 undef, metadata !3613, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3617
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3619, metadata !DIExpression()), !dbg !3622
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3624
  %4 = load i32, i32* %3, align 8, !dbg !3624, !tbaa !3625
  %5 = and i32 %4, 32, !dbg !3626
  %6 = icmp eq i32 %5, 0, !dbg !3626
  call void @llvm.dbg.value(metadata i1 %6, metadata !3615, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3617
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !3627
  %8 = icmp eq i32 %7, 0, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %8, metadata !3616, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3617
  br i1 %6, label %9, label %19, !dbg !3629

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %10, metadata !3613, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3617
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3632
  %12 = xor i1 %8, true, !dbg !3632
  %13 = sext i1 %12 to i32, !dbg !3632
  br i1 %11, label %22, label %14, !dbg !3632

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !3633
  %16 = load i32, i32* %15, align 4, !dbg !3633, !tbaa !569
  %17 = icmp ne i32 %16, 9, !dbg !3634
  %18 = sext i1 %17 to i32, !dbg !3635
  br label %22, !dbg !3635

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3636

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !3638
  store i32 0, i32* %21, align 4, !dbg !3640, !tbaa !569
  br label %22, !dbg !3638

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3617
  ret i32 %23, !dbg !3641
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3642 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3680, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 0, metadata !3681, metadata !DIExpression()), !dbg !3684
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3685
  call void @llvm.dbg.value(metadata i32 %2, metadata !3682, metadata !DIExpression()), !dbg !3684
  %3 = icmp slt i32 %2, 0, !dbg !3686
  br i1 %3, label %4, label %6, !dbg !3688

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3689
  br label %24, !dbg !3690

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3691
  %8 = icmp eq i32 %7, 0, !dbg !3691
  br i1 %8, label %13, label %9, !dbg !3693

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3694
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !3695
  %12 = icmp eq i64 %11, -1, !dbg !3696
  br i1 %12, label %16, label %13, !dbg !3697

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3698
  %15 = icmp eq i32 %14, 0, !dbg !3698
  br i1 %15, label %16, label %18, !dbg !3699

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3681, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 0, metadata !3683, metadata !DIExpression()), !dbg !3684
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3700
  call void @llvm.dbg.value(metadata i32 %21, metadata !3683, metadata !DIExpression()), !dbg !3684
  br label %24, !dbg !3701

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !3702
  %20 = load i32, i32* %19, align 4, !dbg !3702, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %20, metadata !3681, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 0, metadata !3683, metadata !DIExpression()), !dbg !3684
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3700
  call void @llvm.dbg.value(metadata i32 %21, metadata !3683, metadata !DIExpression()), !dbg !3684
  %22 = icmp eq i32 %20, 0, !dbg !3703
  br i1 %22, label %24, label %23, !dbg !3701

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3705, !tbaa !569
  call void @llvm.dbg.value(metadata i32 -1, metadata !3683, metadata !DIExpression()), !dbg !3684
  br label %24, !dbg !3707

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3684
  ret i32 %25, !dbg !3708
}

; Function Attrs: nofree nounwind
declare !dbg !3709 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3710 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3711 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3749, metadata !DIExpression()), !dbg !3750
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3751
  br i1 %2, label %6, label %3, !dbg !3753

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3754
  %5 = icmp eq i32 %4, 0, !dbg !3754
  br i1 %5, label %6, label %8, !dbg !3755

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3756
  br label %17, !dbg !3757

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3758, metadata !DIExpression()) #33, !dbg !3763
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3765
  %10 = load i32, i32* %9, align 8, !dbg !3765, !tbaa !3625
  %11 = and i32 %10, 256, !dbg !3767
  %12 = icmp eq i32 %11, 0, !dbg !3767
  br i1 %12, label %15, label %13, !dbg !3768

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !3769
  br label %15, !dbg !3769

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3770
  br label %17, !dbg !3771

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3750
  ret i32 %18, !dbg !3772
}

; Function Attrs: nofree nounwind
declare !dbg !3773 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3774 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3812, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i64 %1, metadata !3813, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 %2, metadata !3814, metadata !DIExpression()), !dbg !3818
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3819
  %5 = load i8*, i8** %4, align 8, !dbg !3819, !tbaa !3820
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3821
  %7 = load i8*, i8** %6, align 8, !dbg !3821, !tbaa !3822
  %8 = icmp eq i8* %5, %7, !dbg !3823
  br i1 %8, label %9, label %28, !dbg !3824

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3825
  %11 = load i8*, i8** %10, align 8, !dbg !3825, !tbaa !1233
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3826
  %13 = load i8*, i8** %12, align 8, !dbg !3826, !tbaa !3827
  %14 = icmp eq i8* %11, %13, !dbg !3828
  br i1 %14, label %15, label %28, !dbg !3829

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3830
  %17 = load i8*, i8** %16, align 8, !dbg !3830, !tbaa !3831
  %18 = icmp eq i8* %17, null, !dbg !3832
  br i1 %18, label %19, label %28, !dbg !3833

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3834
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !3835
  call void @llvm.dbg.value(metadata i64 %21, metadata !3815, metadata !DIExpression()), !dbg !3836
  %22 = icmp eq i64 %21, -1, !dbg !3837
  br i1 %22, label %30, label %23, !dbg !3839

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3840
  %25 = load i32, i32* %24, align 8, !dbg !3841, !tbaa !3625
  %26 = and i32 %25, -17, !dbg !3841
  store i32 %26, i32* %24, align 8, !dbg !3841, !tbaa !3625
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3842
  store i64 %21, i64* %27, align 8, !dbg !3843, !tbaa !3844
  br label %30, !dbg !3845

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3846
  br label %30, !dbg !3847

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3818
  ret i32 %31, !dbg !3848
}

; Function Attrs: nofree nounwind
declare !dbg !3849 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3852 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3857, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8* %1, metadata !3858, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %2, metadata !3859, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3860, metadata !DIExpression()), !dbg !3862
  %5 = icmp eq i8* %1, null, !dbg !3863
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3865
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.161, i64 0, i64 0), i8* %1, !dbg !3865
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3865
  call void @llvm.dbg.value(metadata i64 %8, metadata !3859, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8* %7, metadata !3858, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i32* %6, metadata !3857, metadata !DIExpression()), !dbg !3862
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3866
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3868
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3860, metadata !DIExpression()), !dbg !3862
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %11, metadata !3861, metadata !DIExpression()), !dbg !3862
  %12 = icmp ult i64 %11, -3, !dbg !3870
  br i1 %12, label %13, label %18, !dbg !3872

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !3873
  %15 = icmp eq i32 %14, 0, !dbg !3873
  br i1 %15, label %16, label %30, !dbg !3874

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3875, metadata !DIExpression()) #33, !dbg !3880
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3882, metadata !DIExpression()) #33, !dbg !3887
  call void @llvm.dbg.value(metadata i32 0, metadata !3885, metadata !DIExpression()) #33, !dbg !3887
  call void @llvm.dbg.value(metadata i64 8, metadata !3886, metadata !DIExpression()) #33, !dbg !3887
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3889
  store i64 0, i64* %17, align 1, !dbg !3889
  br label %30, !dbg !3890

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3891
  br i1 %19, label %20, label %21, !dbg !3893

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !3894
  unreachable, !dbg !3894

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3895

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !3897
  br i1 %24, label %30, label %25, !dbg !3898

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3899
  br i1 %26, label %30, label %27, !dbg !3902

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3903, !tbaa !578
  %29 = zext i8 %28 to i32, !dbg !3904
  store i32 %29, i32* %6, align 4, !dbg !3905, !tbaa !569
  br label %30, !dbg !3906

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3862
  ret i64 %31, !dbg !3907
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3908 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !3914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3916, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %1, metadata !3917, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %2, metadata !3918, metadata !DIExpression()), !dbg !3920
  %4 = icmp eq i64 %2, 0, !dbg !3921
  br i1 %4, label %8, label %5, !dbg !3921

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3921
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3921
  br i1 %7, label %13, label %8, !dbg !3921

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3919, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3920
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3919, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3920
  %9 = mul i64 %2, %1, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %9, metadata !3919, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()) #33, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %9, metadata !3926, metadata !DIExpression()) #33, !dbg !3927
  %10 = icmp eq i64 %9, 0, !dbg !3929
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3929
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !3930
  br label %15, !dbg !3931

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3919, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3920
  %14 = tail call i32* @__errno_location() #36, !dbg !3932
  store i32 12, i32* %14, align 4, !dbg !3934, !tbaa !569
  br label %15, !dbg !3935

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3920
  ret i8* %16, !dbg !3936
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3937 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3941, metadata !DIExpression()), !dbg !3946
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3947
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3947
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3942, metadata !DIExpression()), !dbg !3948
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !3949
  %5 = icmp eq i32 %4, 0, !dbg !3949
  br i1 %5, label %6, label %13, !dbg !3951

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3952, metadata !DIExpression()) #33, !dbg !3956
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.166, i64 0, i64 0), metadata !3955, metadata !DIExpression()) #33, !dbg !3956
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.166, i64 0, i64 0), i64 2), !dbg !3959
  %8 = icmp eq i32 %7, 0, !dbg !3960
  br i1 %8, label %12, label %9, !dbg !3961

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3952, metadata !DIExpression()) #33, !dbg !3962
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.167, i64 0, i64 0), metadata !3955, metadata !DIExpression()) #33, !dbg !3962
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.167, i64 0, i64 0), i64 6), !dbg !3964
  %11 = icmp eq i32 %10, 0, !dbg !3965
  br i1 %11, label %12, label %13, !dbg !3966

12:                                               ; preds = %9, %6
  br label %13, !dbg !3967

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3946
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3968
  ret i1 %14, !dbg !3968
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3969 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8* %1, metadata !3974, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i64 %2, metadata !3975, metadata !DIExpression()), !dbg !3976
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !3977
  ret i32 %4, !dbg !3978
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3979 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3983, metadata !DIExpression()), !dbg !3984
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !3985
  ret i8* %2, !dbg !3986
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3989, metadata !DIExpression()), !dbg !3991
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3992
  call void @llvm.dbg.value(metadata i8* %2, metadata !3990, metadata !DIExpression()), !dbg !3991
  ret i8* %2, !dbg !3993
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3994 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3996, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i8* %1, metadata !3997, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i64 %2, metadata !3998, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 %0, metadata !3989, metadata !DIExpression()) #33, !dbg !4004
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4006
  call void @llvm.dbg.value(metadata i8* %4, metadata !3990, metadata !DIExpression()) #33, !dbg !4004
  call void @llvm.dbg.value(metadata i8* %4, metadata !3999, metadata !DIExpression()), !dbg !4003
  %5 = icmp eq i8* %4, null, !dbg !4007
  br i1 %5, label %6, label %9, !dbg !4008

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4009
  br i1 %7, label %19, label %8, !dbg !4012

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4013, !tbaa !578
  br label %19, !dbg !4014

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !4015
  call void @llvm.dbg.value(metadata i64 %10, metadata !4000, metadata !DIExpression()), !dbg !4016
  %11 = icmp ult i64 %10, %2, !dbg !4017
  br i1 %11, label %12, label %14, !dbg !4019

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4020
  call void @llvm.dbg.value(metadata i8* %1, metadata !4022, metadata !DIExpression()) #33, !dbg !4027
  call void @llvm.dbg.value(metadata i8* %4, metadata !4025, metadata !DIExpression()) #33, !dbg !4027
  call void @llvm.dbg.value(metadata i64 %13, metadata !4026, metadata !DIExpression()) #33, !dbg !4027
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !4029
  br label %19, !dbg !4030

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4031
  br i1 %15, label %19, label %16, !dbg !4034

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %1, metadata !4022, metadata !DIExpression()) #33, !dbg !4037
  call void @llvm.dbg.value(metadata i8* %4, metadata !4025, metadata !DIExpression()) #33, !dbg !4037
  call void @llvm.dbg.value(metadata i64 %17, metadata !4026, metadata !DIExpression()) #33, !dbg !4037
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !4039
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4040
  store i8 0, i8* %18, align 1, !dbg !4041, !tbaa !578
  br label %19, !dbg !4042

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4043
  ret i32 %20, !dbg !4044
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

!llvm.dbg.cu = !{!2, !170, !175, !182, !347, !367, !222, !232, !264, !369, !339, !376, !410, !412, !430, !434, !436, !438, !440, !353, !442, !445, !447, !449}
!llvm.ident = !{!451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451}
!llvm.module.flags = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 47, type: !154, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !64, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/truncate.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8bafe287eed9afb172df3b934b446926")
!4 = !{!5, !14, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 58, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "rm_abs", value: 0)
!9 = !DIEnumerator(name: "rm_rel", value: 1)
!10 = !DIEnumerator(name: "rm_min", value: 2)
!11 = !DIEnumerator(name: "rm_max", value: 3)
!12 = !DIEnumerator(name: "rm_rdn", value: 4)
!13 = !DIEnumerator(name: "rm_rup", value: 5)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !6, size: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!17 = !DIEnumerator(name: "_ISupper", value: 256)
!18 = !DIEnumerator(name: "_ISlower", value: 512)
!19 = !DIEnumerator(name: "_ISalpha", value: 1024)
!20 = !DIEnumerator(name: "_ISdigit", value: 2048)
!21 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!22 = !DIEnumerator(name: "_ISspace", value: 8192)
!23 = !DIEnumerator(name: "_ISprint", value: 16384)
!24 = !DIEnumerator(name: "_ISgraph", value: 32768)
!25 = !DIEnumerator(name: "_ISblank", value: 1)
!26 = !DIEnumerator(name: "_IScntrl", value: 2)
!27 = !DIEnumerator(name: "_ISpunct", value: 4)
!28 = !DIEnumerator(name: "_ISalnum", value: 8)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !30, line: 42, baseType: !6, size: 32, elements: !31)
!30 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!32 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!33 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!34 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!35 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!36 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!37 = !DIEnumerator(name: "c_quoting_style", value: 5)
!38 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!39 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!40 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!41 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!42 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!43 = !{!44, !45, !46, !51, !53, !54, !57, !59, !60, !50, !56, !61}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !47, line: 63, baseType: !48)
!47 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !49, line: 152, baseType: !50)
!49 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !62, line: 101, baseType: !63)
!62 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !49, line: 72, baseType: !50)
!64 = !{!65, !67, !69, !71, !0}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "no_create", scope: !2, file: !3, line: 39, type: !60, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "block_mode", scope: !2, file: !3, line: 42, type: !60, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "ref_file", scope: !2, file: !3, line: 45, type: !57, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !73, file: !74, line: 575, type: !44, isLocal: true, isDefinition: true)
!73 = distinct !DISubprogram(name: "oputs_", scope: !74, file: !74, line: 573, type: !75, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!74 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!75 = !DISubroutineType(types: !76)
!76 = !{null, !57, !57}
!77 = !{!78, !79, !80, !83, !84, !85, !86, !90, !91, !92, !93, !95, !148, !149, !150, !152, !153}
!78 = !DILocalVariable(name: "program", arg: 1, scope: !73, file: !74, line: 573, type: !57)
!79 = !DILocalVariable(name: "option", arg: 2, scope: !73, file: !74, line: 573, type: !57)
!80 = !DILocalVariable(name: "term", scope: !81, file: !74, line: 585, type: !57)
!81 = distinct !DILexicalBlock(scope: !82, file: !74, line: 582, column: 5)
!82 = distinct !DILexicalBlock(scope: !73, file: !74, line: 581, column: 7)
!83 = !DILocalVariable(name: "double_space", scope: !73, file: !74, line: 594, type: !60)
!84 = !DILocalVariable(name: "first_word", scope: !73, file: !74, line: 595, type: !57)
!85 = !DILocalVariable(name: "option_text", scope: !73, file: !74, line: 596, type: !57)
!86 = !DILocalVariable(name: "s", scope: !87, file: !74, line: 608, type: !57)
!87 = distinct !DILexicalBlock(scope: !88, file: !74, line: 605, column: 5)
!88 = distinct !DILexicalBlock(scope: !89, file: !74, line: 604, column: 12)
!89 = distinct !DILexicalBlock(scope: !73, file: !74, line: 597, column: 7)
!90 = !DILocalVariable(name: "spaces", scope: !87, file: !74, line: 609, type: !54)
!91 = !DILocalVariable(name: "anchor_len", scope: !73, file: !74, line: 620, type: !54)
!92 = !DILocalVariable(name: "desc_text", scope: !73, file: !74, line: 625, type: !57)
!93 = !DILocalVariable(name: "__ptr", scope: !94, file: !74, line: 644, type: !57)
!94 = distinct !DILexicalBlock(scope: !73, file: !74, line: 644, column: 3)
!95 = !DILocalVariable(name: "__stream", scope: !94, file: !74, line: 644, type: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !98, line: 7, baseType: !99)
!98 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !100, line: 49, size: 1728, elements: !101)
!100 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !117, !119, !120, !121, !122, !123, !125, !129, !132, !134, !137, !140, !141, !142, !143, !144}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !99, file: !100, line: 51, baseType: !44, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !99, file: !100, line: 54, baseType: !51, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !99, file: !100, line: 55, baseType: !51, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !99, file: !100, line: 56, baseType: !51, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !99, file: !100, line: 57, baseType: !51, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !99, file: !100, line: 58, baseType: !51, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !99, file: !100, line: 59, baseType: !51, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !99, file: !100, line: 60, baseType: !51, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !99, file: !100, line: 61, baseType: !51, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !99, file: !100, line: 64, baseType: !51, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !99, file: !100, line: 65, baseType: !51, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !99, file: !100, line: 66, baseType: !51, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !99, file: !100, line: 68, baseType: !115, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !100, line: 36, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !99, file: !100, line: 70, baseType: !118, size: 64, offset: 832)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !99, file: !100, line: 72, baseType: !44, size: 32, offset: 896)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !99, file: !100, line: 73, baseType: !44, size: 32, offset: 928)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !99, file: !100, line: 74, baseType: !48, size: 64, offset: 960)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !99, file: !100, line: 77, baseType: !45, size: 16, offset: 1024)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !99, file: !100, line: 78, baseType: !124, size: 8, offset: 1040)
!124 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !99, file: !100, line: 79, baseType: !126, size: 8, offset: 1048)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 1)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !99, file: !100, line: 81, baseType: !130, size: 64, offset: 1088)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !100, line: 43, baseType: null)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !99, file: !100, line: 89, baseType: !133, size: 64, offset: 1152)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !49, line: 153, baseType: !50)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !99, file: !100, line: 91, baseType: !135, size: 64, offset: 1216)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !100, line: 37, flags: DIFlagFwdDecl)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !99, file: !100, line: 92, baseType: !138, size: 64, offset: 1280)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !100, line: 38, flags: DIFlagFwdDecl)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !99, file: !100, line: 93, baseType: !118, size: 64, offset: 1344)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !99, file: !100, line: 94, baseType: !53, size: 64, offset: 1408)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !99, file: !100, line: 95, baseType: !54, size: 64, offset: 1472)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !99, file: !100, line: 96, baseType: !44, size: 32, offset: 1536)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !99, file: !100, line: 98, baseType: !145, size: 160, offset: 1568)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 20)
!148 = !DILocalVariable(name: "__cnt", scope: !94, file: !74, line: 644, type: !54)
!149 = !DILocalVariable(name: "url_program", scope: !73, file: !74, line: 648, type: !57)
!150 = !DILocalVariable(name: "__ptr", scope: !151, file: !74, line: 686, type: !57)
!151 = distinct !DILexicalBlock(scope: !73, file: !74, line: 686, column: 3)
!152 = !DILocalVariable(name: "__stream", scope: !151, file: !74, line: 686, type: !96)
!153 = !DILocalVariable(name: "__cnt", scope: !151, file: !74, line: 686, type: !54)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 1792, elements: !164)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !157, line: 50, size: 256, elements: !158)
!157 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!158 = !{!159, !160, !161, !163}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !157, line: 52, baseType: !57, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !156, file: !157, line: 55, baseType: !44, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !156, file: !157, line: 56, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !156, file: !157, line: 57, baseType: !44, size: 32, offset: 192)
!164 = !{!165}
!165 = !DISubrange(count: 7)
!166 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!167 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "Version", scope: !170, file: !171, line: 3, type: !57, isLocal: false, isDefinition: true)
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !172, splitDebugInlining: false, nameTableKind: None)
!171 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!172 = !{!168}
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "file_name", scope: !175, file: !176, line: 45, type: !57, isLocal: true, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !177, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!177 = !{!173, !178}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !175, file: !176, line: 55, type: !60, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !182, file: !183, line: 66, type: !217, isLocal: false, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !184, globals: !185, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!184 = !{!53, !59}
!185 = !{!186, !211, !180, !213, !215}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "old_file_name", scope: !188, file: !183, line: 304, type: !57, isLocal: true, isDefinition: true)
!188 = distinct !DISubprogram(name: "verror_at_line", scope: !183, file: !183, line: 298, type: !189, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !204)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !44, !44, !57, !6, !57, !191}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !47, line: 52, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !193, line: 32, baseType: !194)
!193 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !195, baseType: !196)
!195 = !DIFile(filename: "lib/error.c", directory: "/src")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !197, size: 256, elements: !198)
!197 = !DINamespace(name: "std", scope: null)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !196, file: !195, baseType: !53, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !196, file: !195, baseType: !53, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !196, file: !195, baseType: !53, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !196, file: !195, baseType: !44, size: 32, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !196, file: !195, baseType: !44, size: 32, offset: 224)
!204 = !{!205, !206, !207, !208, !209, !210}
!205 = !DILocalVariable(name: "status", arg: 1, scope: !188, file: !183, line: 298, type: !44)
!206 = !DILocalVariable(name: "errnum", arg: 2, scope: !188, file: !183, line: 298, type: !44)
!207 = !DILocalVariable(name: "file_name", arg: 3, scope: !188, file: !183, line: 298, type: !57)
!208 = !DILocalVariable(name: "line_number", arg: 4, scope: !188, file: !183, line: 298, type: !6)
!209 = !DILocalVariable(name: "message", arg: 5, scope: !188, file: !183, line: 298, type: !57)
!210 = !DILocalVariable(name: "args", arg: 6, scope: !188, file: !183, line: 298, type: !191)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "old_line_number", scope: !188, file: !183, line: 305, type: !6, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "error_message_count", scope: !182, file: !183, line: 69, type: !6, isLocal: false, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !182, file: !183, line: 295, type: !44, isLocal: false, isDefinition: true)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null}
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "program_name", scope: !222, file: !223, line: 31, type: !57, isLocal: false, isDefinition: true)
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !224, globals: !225, splitDebugInlining: false, nameTableKind: None)
!223 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!224 = !{!51}
!225 = !{!220}
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "utf07FF", scope: !228, file: !229, line: 46, type: !259, isLocal: true, isDefinition: true)
!228 = distinct !DISubprogram(name: "proper_name_lite", scope: !229, file: !229, line: 38, type: !230, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !234)
!229 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!230 = !DISubroutineType(types: !231)
!231 = !{!57, !57, !57}
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !233, splitDebugInlining: false, nameTableKind: None)
!233 = !{!226}
!234 = !{!235, !236, !237, !238, !243}
!235 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !228, file: !229, line: 38, type: !57)
!236 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !228, file: !229, line: 38, type: !57)
!237 = !DILocalVariable(name: "translation", scope: !228, file: !229, line: 40, type: !57)
!238 = !DILocalVariable(name: "w", scope: !228, file: !229, line: 47, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !240, line: 37, baseType: !241)
!240 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !49, line: 57, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !6)
!243 = !DILocalVariable(name: "mbs", scope: !228, file: !229, line: 48, type: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !245, line: 6, baseType: !246)
!245 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !247, line: 21, baseType: !248)
!247 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 13, size: 64, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !248, file: !247, line: 15, baseType: !44, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !248, file: !247, line: 20, baseType: !252, size: 32, offset: 32)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !247, line: 16, size: 32, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !252, file: !247, line: 18, baseType: !6, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !252, file: !247, line: 19, baseType: !256, size: 32)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 4)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 16, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 2)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !264, file: !265, line: 76, type: !333, isLocal: false, isDefinition: true)
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !266, retainedTypes: !272, globals: !273, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!266 = !{!29, !267, !14}
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !30, line: 254, baseType: !6, size: 32, elements: !268)
!268 = !{!269, !270, !271}
!269 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!270 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!271 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!272 = !{!44, !45, !54}
!273 = !{!262, !274, !280, !292, !294, !299, !322, !329, !331}
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !264, file: !265, line: 92, type: !276, isLocal: false, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 320, elements: !278)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!278 = !{!279}
!279 = !DISubrange(count: 10)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !264, file: !265, line: 1040, type: !282, isLocal: false, isDefinition: true)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !265, line: 56, size: 448, elements: !283)
!283 = !{!284, !285, !286, !290, !291}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !282, file: !265, line: 59, baseType: !29, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !265, line: 62, baseType: !44, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !282, file: !265, line: 66, baseType: !287, size: 256, offset: 64)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 8)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !282, file: !265, line: 69, baseType: !57, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !282, file: !265, line: 72, baseType: !57, size: 64, offset: 384)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !264, file: !265, line: 107, type: !282, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "slot0", scope: !264, file: !265, line: 831, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 256)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "quote", scope: !301, file: !265, line: 228, type: !320, isLocal: true, isDefinition: true)
!301 = distinct !DISubprogram(name: "gettext_quote", scope: !265, file: !265, line: 197, type: !302, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!57, !57, !29}
!304 = !{!305, !306, !307, !308, !309}
!305 = !DILocalVariable(name: "msgid", arg: 1, scope: !301, file: !265, line: 197, type: !57)
!306 = !DILocalVariable(name: "s", arg: 2, scope: !301, file: !265, line: 197, type: !29)
!307 = !DILocalVariable(name: "translation", scope: !301, file: !265, line: 199, type: !57)
!308 = !DILocalVariable(name: "w", scope: !301, file: !265, line: 229, type: !239)
!309 = !DILocalVariable(name: "mbs", scope: !301, file: !265, line: 230, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !245, line: 6, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !247, line: 21, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 13, size: 64, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !312, file: !247, line: 15, baseType: !44, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !312, file: !247, line: 20, baseType: !316, size: 32, offset: 32)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !247, line: 16, size: 32, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !316, file: !247, line: 18, baseType: !6, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !316, file: !247, line: 19, baseType: !256, size: 32)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !321)
!321 = !{!261, !258}
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "slotvec", scope: !264, file: !265, line: 834, type: !324, isLocal: true, isDefinition: true)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !265, line: 823, size: 128, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !325, file: !265, line: 825, baseType: !54, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !325, file: !265, line: 826, baseType: !51, size: 64, offset: 64)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(name: "nslots", scope: !264, file: !265, line: 832, type: !44, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "slotvec0", scope: !264, file: !265, line: 833, type: !325, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 704, elements: !335)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!335 = !{!336}
!336 = !DISubrange(count: 11)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !339, file: !340, line: 26, type: !342, isLocal: false, isDefinition: true)
!339 = distinct !DICompileUnit(language: DW_LANG_C99, file: !340, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !341, splitDebugInlining: false, nameTableKind: None)
!340 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!341 = !{!337}
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 376, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 47)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "exit_failure", scope: !347, file: !348, line: 24, type: !350, isLocal: false, isDefinition: true)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !349, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!349 = !{!345}
!350 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "internal_state", scope: !353, file: !354, line: 97, type: !357, isLocal: true, isDefinition: true)
!353 = distinct !DICompileUnit(language: DW_LANG_C99, file: !354, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !355, globals: !356, splitDebugInlining: false, nameTableKind: None)
!354 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!355 = !{!53, !54, !59}
!356 = !{!351}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !245, line: 6, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !247, line: 21, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 13, size: 64, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !359, file: !247, line: 15, baseType: !44, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !359, file: !247, line: 20, baseType: !363, size: 32, offset: 32)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !247, line: 16, size: 32, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !363, file: !247, line: 18, baseType: !6, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !363, file: !247, line: 19, baseType: !256, size: 32)
!367 = distinct !DICompileUnit(language: DW_LANG_C99, file: !368, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!369 = distinct !DICompileUnit(language: DW_LANG_C99, file: !370, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !371, retainedTypes: !375, splitDebugInlining: false, nameTableKind: None)
!370 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!371 = !{!372}
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !370, line: 40, baseType: !6, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!375 = !{!53}
!376 = distinct !DICompileUnit(language: DW_LANG_C99, file: !377, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !378, retainedTypes: !409, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!378 = !{!379, !391}
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !380, file: !377, line: 188, baseType: !6, size: 32, elements: !389)
!380 = distinct !DISubprogram(name: "x2nrealloc", scope: !377, file: !377, line: 176, type: !381, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !384)
!381 = !DISubroutineType(types: !382)
!382 = !{!53, !53, !383, !54}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!384 = !{!385, !386, !387, !388}
!385 = !DILocalVariable(name: "p", arg: 1, scope: !380, file: !377, line: 176, type: !53)
!386 = !DILocalVariable(name: "pn", arg: 2, scope: !380, file: !377, line: 176, type: !383)
!387 = !DILocalVariable(name: "s", arg: 3, scope: !380, file: !377, line: 176, type: !54)
!388 = !DILocalVariable(name: "n", scope: !380, file: !377, line: 178, type: !54)
!389 = !{!390}
!390 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!391 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !392, file: !377, line: 228, baseType: !6, size: 32, elements: !389)
!392 = distinct !DISubprogram(name: "xpalloc", scope: !377, file: !377, line: 223, type: !393, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !399)
!393 = !DISubroutineType(types: !394)
!394 = !{!53, !53, !395, !396, !398, !396}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !397, line: 130, baseType: !398)
!397 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !55, line: 35, baseType: !50)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408}
!400 = !DILocalVariable(name: "pa", arg: 1, scope: !392, file: !377, line: 223, type: !53)
!401 = !DILocalVariable(name: "pn", arg: 2, scope: !392, file: !377, line: 223, type: !395)
!402 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !392, file: !377, line: 223, type: !396)
!403 = !DILocalVariable(name: "n_max", arg: 4, scope: !392, file: !377, line: 223, type: !398)
!404 = !DILocalVariable(name: "s", arg: 5, scope: !392, file: !377, line: 223, type: !396)
!405 = !DILocalVariable(name: "n0", scope: !392, file: !377, line: 230, type: !396)
!406 = !DILocalVariable(name: "n", scope: !392, file: !377, line: 237, type: !396)
!407 = !DILocalVariable(name: "nbytes", scope: !392, file: !377, line: 248, type: !396)
!408 = !DILocalVariable(name: "adjusted_nbytes", scope: !392, file: !377, line: 252, type: !396)
!409 = !{!51, !53, !60, !50, !56}
!410 = distinct !DICompileUnit(language: DW_LANG_C99, file: !411, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !414, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!414 = !{!415, !423}
!415 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !416, line: 30, baseType: !6, size: 32, elements: !417)
!416 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!417 = !{!418, !419, !420, !421, !422}
!418 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!419 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!420 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!421 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!422 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 24, baseType: !6, size: 32, elements: !425)
!424 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!425 = !{!426, !427, !428, !429}
!426 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!427 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!428 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!429 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!430 = distinct !DICompileUnit(language: DW_LANG_C99, file: !431, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !432, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!432 = !{!415}
!433 = !{!60, !50, !56, !61}
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!436 = distinct !DICompileUnit(language: DW_LANG_C99, file: !437, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!437 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!438 = distinct !DICompileUnit(language: DW_LANG_C99, file: !439, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !375, splitDebugInlining: false, nameTableKind: None)
!439 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !375, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !444, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!444 = !{!60, !56, !53}
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !375, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!451 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!452 = !{i32 7, !"Dwarf Version", i32 5}
!453 = !{i32 2, !"Debug Info Version", i32 3}
!454 = !{i32 1, !"wchar_size", i32 4}
!455 = !{i32 1, !"branch-target-enforcement", i32 0}
!456 = !{i32 1, !"sign-return-address", i32 0}
!457 = !{i32 1, !"sign-return-address-all", i32 0}
!458 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!459 = !{i32 7, !"PIC Level", i32 2}
!460 = !{i32 7, !"PIE Level", i32 2}
!461 = !{i32 7, !"uwtable", i32 1}
!462 = !{i32 7, !"frame-pointer", i32 1}
!463 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 62, type: !464, scopeLine: 63, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !44}
!466 = !{!467}
!467 = !DILocalVariable(name: "status", arg: 1, scope: !463, file: !3, line: 62, type: !44)
!468 = !DILocation(line: 0, scope: !463)
!469 = !DILocation(line: 64, column: 14, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !3, line: 64, column: 7)
!471 = !DILocation(line: 64, column: 7, scope: !463)
!472 = !DILocation(line: 65, column: 5, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 65, column: 5)
!474 = !{!475, !475, i64 0}
!475 = !{!"any pointer", !476, i64 0}
!476 = !{!"omnipotent char", !477, i64 0}
!477 = !{!"Simple C/C++ TBAA"}
!478 = !DILocation(line: 68, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !470, file: !3, line: 67, column: 5)
!480 = !DILocation(line: 69, column: 7, scope: !479)
!481 = !DILocation(line: 736, column: 3, scope: !482, inlinedAt: !484)
!482 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !74, file: !74, line: 734, type: !218, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!483 = !{}
!484 = distinct !DILocation(line: 79, column: 7, scope: !479)
!485 = !DILocation(line: 81, column: 7, scope: !479)
!486 = !DILocation(line: 84, column: 7, scope: !479)
!487 = !DILocation(line: 87, column: 7, scope: !479)
!488 = !DILocation(line: 90, column: 7, scope: !479)
!489 = !DILocation(line: 93, column: 7, scope: !479)
!490 = !DILocation(line: 94, column: 7, scope: !479)
!491 = !DILocation(line: 744, column: 3, scope: !492, inlinedAt: !493)
!492 = distinct !DISubprogram(name: "emit_size_note", scope: !74, file: !74, line: 742, type: !218, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!493 = distinct !DILocation(line: 95, column: 7, scope: !479)
!494 = !DILocation(line: 96, column: 7, scope: !479)
!495 = !DILocalVariable(name: "program", arg: 1, scope: !496, file: !74, line: 836, type: !57)
!496 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !74, file: !74, line: 836, type: !497, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !57}
!499 = !{!495, !500, !507, !508, !510, !511}
!500 = !DILocalVariable(name: "infomap", scope: !496, file: !74, line: 838, type: !501)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 896, elements: !164)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !496, file: !74, line: 838, size: 128, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !503, file: !74, line: 838, baseType: !57, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !503, file: !74, line: 838, baseType: !57, size: 64, offset: 64)
!507 = !DILocalVariable(name: "node", scope: !496, file: !74, line: 848, type: !57)
!508 = !DILocalVariable(name: "map_prog", scope: !496, file: !74, line: 849, type: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!510 = !DILocalVariable(name: "lc_messages", scope: !496, file: !74, line: 861, type: !57)
!511 = !DILocalVariable(name: "url_program", scope: !496, file: !74, line: 874, type: !57)
!512 = !DILocation(line: 0, scope: !496, inlinedAt: !513)
!513 = distinct !DILocation(line: 100, column: 7, scope: !479)
!514 = !DILocation(line: 838, column: 3, scope: !496, inlinedAt: !513)
!515 = !DILocation(line: 838, column: 67, scope: !496, inlinedAt: !513)
!516 = !DILocation(line: 849, column: 36, scope: !496, inlinedAt: !513)
!517 = !DILocation(line: 851, column: 3, scope: !496, inlinedAt: !513)
!518 = !DILocalVariable(name: "__s1", arg: 1, scope: !519, file: !520, line: 1359, type: !57)
!519 = distinct !DISubprogram(name: "streq", scope: !520, file: !520, line: 1359, type: !521, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !523)
!520 = !DIFile(filename: "./lib/string.h", directory: "/src")
!521 = !DISubroutineType(types: !522)
!522 = !{!60, !57, !57}
!523 = !{!518, !524}
!524 = !DILocalVariable(name: "__s2", arg: 2, scope: !519, file: !520, line: 1359, type: !57)
!525 = !DILocation(line: 0, scope: !519, inlinedAt: !526)
!526 = distinct !DILocation(line: 851, column: 33, scope: !496, inlinedAt: !513)
!527 = !DILocation(line: 1361, column: 11, scope: !519, inlinedAt: !526)
!528 = !DILocation(line: 1361, column: 10, scope: !519, inlinedAt: !526)
!529 = !DILocation(line: 852, column: 13, scope: !496, inlinedAt: !513)
!530 = !DILocation(line: 851, column: 20, scope: !496, inlinedAt: !513)
!531 = !{!532, !475, i64 0}
!532 = !{!"infomap", !475, i64 0, !475, i64 8}
!533 = !DILocation(line: 851, column: 10, scope: !496, inlinedAt: !513)
!534 = !DILocation(line: 851, column: 28, scope: !496, inlinedAt: !513)
!535 = distinct !{!535, !517, !529, !536}
!536 = !{!"llvm.loop.mustprogress"}
!537 = !DILocation(line: 854, column: 17, scope: !538, inlinedAt: !513)
!538 = distinct !DILexicalBlock(scope: !496, file: !74, line: 854, column: 7)
!539 = !{!532, !475, i64 8}
!540 = !DILocation(line: 854, column: 7, scope: !538, inlinedAt: !513)
!541 = !DILocation(line: 854, column: 7, scope: !496, inlinedAt: !513)
!542 = !DILocation(line: 857, column: 3, scope: !496, inlinedAt: !513)
!543 = !DILocation(line: 861, column: 29, scope: !496, inlinedAt: !513)
!544 = !DILocation(line: 862, column: 7, scope: !545, inlinedAt: !513)
!545 = distinct !DILexicalBlock(scope: !496, file: !74, line: 862, column: 7)
!546 = !DILocation(line: 862, column: 19, scope: !545, inlinedAt: !513)
!547 = !DILocation(line: 862, column: 22, scope: !545, inlinedAt: !513)
!548 = !DILocation(line: 862, column: 7, scope: !496, inlinedAt: !513)
!549 = !DILocation(line: 868, column: 7, scope: !550, inlinedAt: !513)
!550 = distinct !DILexicalBlock(scope: !545, file: !74, line: 863, column: 5)
!551 = !DILocation(line: 870, column: 5, scope: !550, inlinedAt: !513)
!552 = !DILocation(line: 0, scope: !519, inlinedAt: !553)
!553 = distinct !DILocation(line: 874, column: 29, scope: !496, inlinedAt: !513)
!554 = !DILocation(line: 875, column: 3, scope: !496, inlinedAt: !513)
!555 = !DILocation(line: 877, column: 3, scope: !496, inlinedAt: !513)
!556 = !DILocation(line: 879, column: 1, scope: !496, inlinedAt: !513)
!557 = !DILocation(line: 102, column: 3, scope: !463)
!558 = !DISubprogram(name: "dcgettext", scope: !559, file: !559, line: 51, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!559 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!560 = !DISubroutineType(types: !561)
!561 = !{!51, !57, !57, !44}
!562 = !DISubprogram(name: "fputs_unlocked", scope: !47, file: !47, line: 691, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!563 = !DISubroutineType(types: !564)
!564 = !{!44, !565, !566}
!565 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!566 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!567 = !DILocation(line: 0, scope: !73)
!568 = !DILocation(line: 581, column: 7, scope: !82)
!569 = !{!570, !570, i64 0}
!570 = !{!"int", !476, i64 0}
!571 = !DILocation(line: 581, column: 19, scope: !82)
!572 = !DILocation(line: 581, column: 7, scope: !73)
!573 = !DILocation(line: 585, column: 26, scope: !81)
!574 = !DILocation(line: 0, scope: !81)
!575 = !DILocation(line: 586, column: 23, scope: !81)
!576 = !DILocation(line: 586, column: 28, scope: !81)
!577 = !DILocation(line: 586, column: 32, scope: !81)
!578 = !{!476, !476, i64 0}
!579 = !DILocation(line: 586, column: 38, scope: !81)
!580 = !DILocation(line: 0, scope: !519, inlinedAt: !581)
!581 = distinct !DILocation(line: 586, column: 41, scope: !81)
!582 = !DILocation(line: 1361, column: 11, scope: !519, inlinedAt: !581)
!583 = !DILocation(line: 1361, column: 10, scope: !519, inlinedAt: !581)
!584 = !DILocation(line: 586, column: 19, scope: !81)
!585 = !DILocation(line: 587, column: 5, scope: !81)
!586 = !DILocation(line: 588, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !73, file: !74, line: 588, column: 7)
!588 = !DILocation(line: 588, column: 7, scope: !73)
!589 = !DILocation(line: 590, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !74, line: 589, column: 5)
!591 = !DILocation(line: 591, column: 7, scope: !590)
!592 = !DILocation(line: 595, column: 37, scope: !73)
!593 = !DILocation(line: 595, column: 35, scope: !73)
!594 = !DILocation(line: 596, column: 29, scope: !73)
!595 = !DILocation(line: 597, column: 8, scope: !89)
!596 = !DILocation(line: 597, column: 7, scope: !73)
!597 = !DILocation(line: 604, column: 24, scope: !88)
!598 = !DILocation(line: 604, column: 12, scope: !89)
!599 = !DILocation(line: 0, scope: !87)
!600 = !DILocation(line: 610, column: 16, scope: !87)
!601 = !DILocation(line: 610, column: 7, scope: !87)
!602 = !DILocation(line: 611, column: 21, scope: !87)
!603 = !{!604, !604, i64 0}
!604 = !{!"short", !476, i64 0}
!605 = !DILocation(line: 611, column: 19, scope: !87)
!606 = !DILocation(line: 611, column: 16, scope: !87)
!607 = !DILocation(line: 610, column: 30, scope: !87)
!608 = distinct !{!608, !601, !602, !536}
!609 = !DILocation(line: 612, column: 18, scope: !610)
!610 = distinct !DILexicalBlock(scope: !87, file: !74, line: 612, column: 11)
!611 = !DILocation(line: 612, column: 11, scope: !87)
!612 = !DILocation(line: 620, column: 23, scope: !73)
!613 = !DILocation(line: 625, column: 39, scope: !73)
!614 = !DILocation(line: 626, column: 3, scope: !73)
!615 = !DILocation(line: 626, column: 10, scope: !73)
!616 = !DILocation(line: 626, column: 21, scope: !73)
!617 = !DILocation(line: 628, column: 44, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !74, line: 628, column: 11)
!619 = distinct !DILexicalBlock(scope: !73, file: !74, line: 627, column: 5)
!620 = !DILocation(line: 628, column: 32, scope: !618)
!621 = !DILocation(line: 628, column: 49, scope: !618)
!622 = !DILocation(line: 628, column: 11, scope: !619)
!623 = !DILocation(line: 630, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !74, line: 630, column: 11)
!625 = !DILocation(line: 630, column: 11, scope: !619)
!626 = !DILocation(line: 632, column: 26, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !74, line: 632, column: 15)
!628 = distinct !DILexicalBlock(scope: !624, file: !74, line: 631, column: 9)
!629 = !DILocation(line: 632, column: 34, scope: !627)
!630 = !DILocation(line: 632, column: 37, scope: !627)
!631 = !DILocation(line: 632, column: 15, scope: !628)
!632 = !DILocation(line: 636, column: 29, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !74, line: 636, column: 15)
!634 = !DILocation(line: 640, column: 16, scope: !619)
!635 = distinct !{!635, !614, !636, !536}
!636 = !DILocation(line: 641, column: 5, scope: !73)
!637 = !DILocation(line: 644, column: 3, scope: !73)
!638 = !DILocation(line: 0, scope: !519, inlinedAt: !639)
!639 = distinct !DILocation(line: 648, column: 31, scope: !73)
!640 = !DILocation(line: 0, scope: !519, inlinedAt: !641)
!641 = distinct !DILocation(line: 649, column: 31, scope: !73)
!642 = !DILocation(line: 0, scope: !519, inlinedAt: !643)
!643 = distinct !DILocation(line: 650, column: 31, scope: !73)
!644 = !DILocation(line: 0, scope: !519, inlinedAt: !645)
!645 = distinct !DILocation(line: 651, column: 31, scope: !73)
!646 = !DILocation(line: 0, scope: !519, inlinedAt: !647)
!647 = distinct !DILocation(line: 652, column: 31, scope: !73)
!648 = !DILocation(line: 0, scope: !519, inlinedAt: !649)
!649 = distinct !DILocation(line: 653, column: 31, scope: !73)
!650 = !DILocation(line: 0, scope: !519, inlinedAt: !651)
!651 = distinct !DILocation(line: 654, column: 31, scope: !73)
!652 = !DILocation(line: 0, scope: !519, inlinedAt: !653)
!653 = distinct !DILocation(line: 655, column: 31, scope: !73)
!654 = !DILocation(line: 0, scope: !519, inlinedAt: !655)
!655 = distinct !DILocation(line: 656, column: 31, scope: !73)
!656 = !DILocation(line: 0, scope: !519, inlinedAt: !657)
!657 = distinct !DILocation(line: 657, column: 31, scope: !73)
!658 = !DILocation(line: 663, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !73, file: !74, line: 663, column: 7)
!660 = !DILocation(line: 664, column: 7, scope: !659)
!661 = !DILocation(line: 664, column: 10, scope: !659)
!662 = !DILocation(line: 663, column: 7, scope: !73)
!663 = !DILocation(line: 669, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !74, line: 665, column: 5)
!665 = !DILocation(line: 671, column: 5, scope: !664)
!666 = !DILocation(line: 676, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !659, file: !74, line: 673, column: 5)
!668 = !DILocation(line: 679, column: 3, scope: !73)
!669 = !DILocation(line: 683, column: 3, scope: !73)
!670 = !DILocation(line: 686, column: 3, scope: !73)
!671 = !DILocation(line: 688, column: 3, scope: !73)
!672 = !DILocation(line: 691, column: 3, scope: !73)
!673 = !DILocation(line: 695, column: 3, scope: !73)
!674 = !DILocation(line: 696, column: 1, scope: !73)
!675 = !DISubprogram(name: "setlocale", scope: !676, file: !676, line: 122, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!676 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!677 = !DISubroutineType(types: !678)
!678 = !{!51, !44, !57}
!679 = !DISubprogram(name: "getenv", scope: !680, file: !680, line: 641, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!680 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!681 = !DISubroutineType(types: !682)
!682 = !{!51, !57}
!683 = !DISubprogram(name: "fwrite_unlocked", scope: !47, file: !47, line: 704, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!684 = !DISubroutineType(types: !685)
!685 = !{!54, !686, !54, !54, !566}
!686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!689 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 201, type: !690, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!690 = !DISubroutineType(types: !691)
!691 = !{!44, !44, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!693 = !{!694, !695, !696, !697, !698, !699, !701, !702, !740, !741, !744, !747, !748, !749, !750, !752}
!694 = !DILocalVariable(name: "argc", arg: 1, scope: !689, file: !3, line: 201, type: !44)
!695 = !DILocalVariable(name: "argv", arg: 2, scope: !689, file: !3, line: 201, type: !692)
!696 = !DILocalVariable(name: "got_size", scope: !689, file: !3, line: 203, type: !60)
!697 = !DILocalVariable(name: "size", scope: !689, file: !3, line: 204, type: !46)
!698 = !DILocalVariable(name: "rsize", scope: !689, file: !3, line: 205, type: !46)
!699 = !DILocalVariable(name: "rel_mode", scope: !689, file: !3, line: 206, type: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !3, line: 59, baseType: !5)
!701 = !DILocalVariable(name: "c", scope: !689, file: !3, line: 207, type: !44)
!702 = !DILocalVariable(name: "sb", scope: !703, file: !3, line: 321, type: !705)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 320, column: 5)
!704 = distinct !DILexicalBlock(scope: !689, file: !3, line: 319, column: 7)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !706, line: 44, size: 1024, elements: !707)
!706 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!707 = !{!708, !710, !712, !714, !716, !718, !720, !721, !722, !723, !725, !726, !728, !736, !737, !738}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !705, file: !706, line: 46, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !49, line: 145, baseType: !56)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !705, file: !706, line: 47, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !49, line: 148, baseType: !56)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !705, file: !706, line: 48, baseType: !713, size: 32, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !49, line: 150, baseType: !6)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !705, file: !706, line: 49, baseType: !715, size: 32, offset: 160)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !49, line: 151, baseType: !6)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !705, file: !706, line: 50, baseType: !717, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !49, line: 146, baseType: !6)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !705, file: !706, line: 51, baseType: !719, size: 32, offset: 224)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !49, line: 147, baseType: !6)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !705, file: !706, line: 52, baseType: !709, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !705, file: !706, line: 53, baseType: !709, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !705, file: !706, line: 54, baseType: !48, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !705, file: !706, line: 55, baseType: !724, size: 32, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !49, line: 175, baseType: !44)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !705, file: !706, line: 56, baseType: !44, size: 32, offset: 480)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !705, file: !706, line: 57, baseType: !727, size: 64, offset: 512)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !49, line: 180, baseType: !50)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !705, file: !706, line: 65, baseType: !729, size: 128, offset: 576)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !730, line: 11, size: 128, elements: !731)
!730 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!731 = !{!732, !734}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !729, file: !730, line: 16, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !49, line: 160, baseType: !50)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !729, file: !730, line: 21, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !49, line: 197, baseType: !50)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !705, file: !706, line: 66, baseType: !729, size: 128, offset: 704)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !705, file: !706, line: 67, baseType: !729, size: 128, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !705, file: !706, line: 79, baseType: !739, size: 64, offset: 960)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !260)
!740 = !DILocalVariable(name: "file_size", scope: !703, file: !3, line: 322, type: !46)
!741 = !DILocalVariable(name: "ref_fd", scope: !742, file: !3, line: 329, type: !44)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 328, column: 9)
!743 = distinct !DILexicalBlock(scope: !703, file: !3, line: 325, column: 11)
!744 = !DILocalVariable(name: "file_end", scope: !745, file: !3, line: 332, type: !46)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 331, column: 13)
!746 = distinct !DILexicalBlock(scope: !742, file: !3, line: 330, column: 15)
!747 = !DILocalVariable(name: "saved_errno", scope: !745, file: !3, line: 333, type: !44)
!748 = !DILocalVariable(name: "oflags", scope: !689, file: !3, line: 353, type: !44)
!749 = !DILocalVariable(name: "errors", scope: !689, file: !3, line: 354, type: !60)
!750 = !DILocalVariable(name: "fname", scope: !751, file: !3, line: 356, type: !57)
!751 = distinct !DILexicalBlock(scope: !689, file: !3, line: 356, column: 3)
!752 = !DILocalVariable(name: "fd", scope: !753, file: !3, line: 358, type: !44)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 357, column: 5)
!754 = distinct !DILexicalBlock(scope: !751, file: !3, line: 356, column: 3)
!755 = !DILocation(line: 0, scope: !689)
!756 = !DILocation(line: 210, column: 21, scope: !689)
!757 = !DILocation(line: 210, column: 3, scope: !689)
!758 = !DILocation(line: 211, column: 3, scope: !689)
!759 = !DILocation(line: 212, column: 3, scope: !689)
!760 = !DILocation(line: 213, column: 3, scope: !689)
!761 = !DILocation(line: 215, column: 3, scope: !689)
!762 = !DILocation(line: 217, column: 3, scope: !689)
!763 = !DILocation(line: 217, column: 15, scope: !689)
!764 = !DILocation(line: 235, column: 18, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 220, column: 9)
!766 = distinct !DILexicalBlock(scope: !689, file: !3, line: 218, column: 5)
!767 = !DILocation(line: 235, column: 11, scope: !765)
!768 = !DILocation(line: 222, column: 21, scope: !765)
!769 = !DILocation(line: 223, column: 11, scope: !765)
!770 = !DILocation(line: 226, column: 22, scope: !765)
!771 = !DILocation(line: 227, column: 11, scope: !765)
!772 = !DILocation(line: 230, column: 22, scope: !765)
!773 = !DILocation(line: 230, column: 20, scope: !765)
!774 = !DILocation(line: 231, column: 11, scope: !765)
!775 = distinct !{!775, !762, !776, !536}
!776 = !DILocation(line: 286, column: 5, scope: !689)
!777 = !DILocation(line: 236, column: 19, scope: !765)
!778 = distinct !{!778, !767, !777, !536}
!779 = !DILocation(line: 237, column: 11, scope: !765)
!780 = !DILocation(line: 246, column: 15, scope: !781)
!781 = distinct !DILexicalBlock(scope: !765, file: !3, line: 238, column: 13)
!782 = !DILocation(line: 250, column: 15, scope: !781)
!783 = !DILocation(line: 254, column: 15, scope: !781)
!784 = !DILocation(line: 0, scope: !781)
!785 = !DILocation(line: 257, column: 18, scope: !765)
!786 = !DILocation(line: 257, column: 11, scope: !765)
!787 = !DILocation(line: 258, column: 19, scope: !765)
!788 = distinct !{!788, !786, !787, !536}
!789 = !DILocation(line: 259, column: 30, scope: !790)
!790 = distinct !DILexicalBlock(scope: !765, file: !3, line: 259, column: 15)
!791 = !DILocation(line: 261, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 261, column: 19)
!793 = distinct !DILexicalBlock(scope: !790, file: !3, line: 260, column: 13)
!794 = !DILocation(line: 261, column: 19, scope: !793)
!795 = !DILocation(line: 263, column: 19, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !3, line: 262, column: 17)
!797 = !DILocation(line: 265, column: 19, scope: !796)
!798 = !DILocation(line: 272, column: 30, scope: !765)
!799 = !DILocation(line: 271, column: 18, scope: !765)
!800 = !DILocation(line: 274, column: 35, scope: !801)
!801 = distinct !DILexicalBlock(scope: !765, file: !3, line: 274, column: 15)
!802 = !DILocation(line: 275, column: 13, scope: !801)
!803 = !DILocation(line: 279, column: 9, scope: !765)
!804 = !DILocation(line: 281, column: 9, scope: !765)
!805 = !DILocation(line: 284, column: 11, scope: !765)
!806 = !DILocation(line: 288, column: 11, scope: !689)
!807 = !DILocation(line: 288, column: 8, scope: !689)
!808 = !DILocation(line: 292, column: 8, scope: !809)
!809 = distinct !DILexicalBlock(scope: !689, file: !3, line: 292, column: 7)
!810 = !DILocation(line: 292, column: 17, scope: !809)
!811 = !DILocation(line: 294, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !3, line: 293, column: 5)
!813 = !DILocation(line: 296, column: 7, scope: !812)
!814 = !DILocation(line: 299, column: 16, scope: !815)
!815 = distinct !DILexicalBlock(scope: !689, file: !3, line: 299, column: 7)
!816 = !DILocation(line: 299, column: 28, scope: !815)
!817 = !DILocation(line: 301, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 300, column: 5)
!819 = !DILocation(line: 303, column: 7, scope: !818)
!820 = !DILocation(line: 306, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !689, file: !3, line: 306, column: 7)
!822 = !DILocation(line: 306, column: 18, scope: !821)
!823 = !DILocation(line: 308, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !3, line: 307, column: 5)
!825 = !DILocation(line: 310, column: 7, scope: !824)
!826 = !DILocation(line: 313, column: 12, scope: !827)
!827 = distinct !DILexicalBlock(scope: !689, file: !3, line: 313, column: 7)
!828 = !DILocation(line: 313, column: 7, scope: !689)
!829 = !DILocation(line: 315, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !3, line: 314, column: 5)
!831 = !DILocation(line: 316, column: 7, scope: !830)
!832 = !DILocation(line: 319, column: 7, scope: !689)
!833 = !DILocation(line: 321, column: 7, scope: !703)
!834 = !DILocation(line: 321, column: 19, scope: !703)
!835 = !DILocation(line: 0, scope: !703)
!836 = !DILocation(line: 323, column: 11, scope: !837)
!837 = distinct !DILexicalBlock(scope: !703, file: !3, line: 323, column: 11)
!838 = !DILocation(line: 323, column: 32, scope: !837)
!839 = !DILocation(line: 323, column: 11, scope: !703)
!840 = !DILocation(line: 324, column: 9, scope: !837)
!841 = !DILocalVariable(name: "sb", arg: 1, scope: !842, file: !74, line: 911, type: !845)
!842 = distinct !DISubprogram(name: "usable_st_size", scope: !74, file: !74, line: 911, type: !843, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !847)
!843 = !DISubroutineType(types: !844)
!844 = !{!60, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!847 = !{!841}
!848 = !DILocation(line: 0, scope: !842, inlinedAt: !849)
!849 = distinct !DILocation(line: 325, column: 11, scope: !743)
!850 = !DILocation(line: 913, column: 11, scope: !842, inlinedAt: !849)
!851 = !{!852, !570, i64 16}
!852 = !{!"stat", !853, i64 0, !853, i64 8, !570, i64 16, !570, i64 20, !570, i64 24, !570, i64 28, !853, i64 32, !853, i64 40, !853, i64 48, !570, i64 56, !570, i64 60, !853, i64 64, !854, i64 72, !854, i64 88, !854, i64 104, !476, i64 120}
!853 = !{!"long", !476, i64 0}
!854 = !{!"timespec", !853, i64 0, !853, i64 8}
!855 = !DILocation(line: 913, column: 33, scope: !842, inlinedAt: !849)
!856 = !DILocation(line: 325, column: 11, scope: !703)
!857 = !DILocation(line: 329, column: 30, scope: !742)
!858 = !DILocation(line: 329, column: 24, scope: !742)
!859 = !DILocation(line: 0, scope: !742)
!860 = !DILocation(line: 330, column: 17, scope: !746)
!861 = !DILocation(line: 330, column: 15, scope: !742)
!862 = !DILocation(line: 332, column: 32, scope: !745)
!863 = !DILocation(line: 0, scope: !745)
!864 = !DILocation(line: 333, column: 33, scope: !745)
!865 = !DILocation(line: 334, column: 15, scope: !745)
!866 = !DILocation(line: 335, column: 21, scope: !867)
!867 = distinct !DILexicalBlock(scope: !745, file: !3, line: 335, column: 19)
!868 = !DILocation(line: 335, column: 19, scope: !745)
!869 = !DILocation(line: 340, column: 25, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !3, line: 338, column: 17)
!871 = !DILocation(line: 326, column: 24, scope: !743)
!872 = !{!852, !853, i64 48}
!873 = !DILocation(line: 344, column: 21, scope: !874)
!874 = distinct !DILexicalBlock(scope: !703, file: !3, line: 344, column: 11)
!875 = !DILocation(line: 344, column: 11, scope: !703)
!876 = !DILocation(line: 345, column: 9, scope: !874)
!877 = !DILocation(line: 351, column: 5, scope: !704)
!878 = !DILocation(line: 351, column: 5, scope: !703)
!879 = !DILocation(line: 353, column: 28, scope: !689)
!880 = !DILocation(line: 353, column: 53, scope: !689)
!881 = !DILocation(line: 356, column: 36, scope: !754)
!882 = !DILocation(line: 0, scope: !751)
!883 = !DILocation(line: 356, column: 3, scope: !751)
!884 = !DILocation(line: 383, column: 10, scope: !689)
!885 = !DILocation(line: 384, column: 1, scope: !689)
!886 = !DILocation(line: 358, column: 16, scope: !753)
!887 = !DILocation(line: 0, scope: !753)
!888 = !DILocation(line: 359, column: 14, scope: !889)
!889 = distinct !DILexicalBlock(scope: !753, file: !3, line: 359, column: 11)
!890 = !DILocation(line: 359, column: 11, scope: !753)
!891 = !DILocation(line: 365, column: 17, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 365, column: 15)
!893 = distinct !DILexicalBlock(scope: !889, file: !3, line: 360, column: 9)
!894 = !DILocation(line: 0, scope: !892)
!895 = !DILocation(line: 365, column: 27, scope: !892)
!896 = !DILocation(line: 365, column: 30, scope: !892)
!897 = !DILocation(line: 365, column: 36, scope: !892)
!898 = !DILocation(line: 365, column: 15, scope: !893)
!899 = !DILocalVariable(name: "fd", arg: 1, scope: !900, file: !3, line: 107, type: !44)
!900 = distinct !DISubprogram(name: "do_ftruncate", scope: !3, file: !3, line: 107, type: !901, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{!60, !44, !57, !46, !46, !700}
!903 = !{!899, !904, !905, !906, !907, !908, !909, !910, !913, !914, !917}
!904 = !DILocalVariable(name: "fname", arg: 2, scope: !900, file: !3, line: 107, type: !57)
!905 = !DILocalVariable(name: "ssize", arg: 3, scope: !900, file: !3, line: 107, type: !46)
!906 = !DILocalVariable(name: "rsize", arg: 4, scope: !900, file: !3, line: 107, type: !46)
!907 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !900, file: !3, line: 108, type: !700)
!908 = !DILocalVariable(name: "sb", scope: !900, file: !3, line: 110, type: !705)
!909 = !DILocalVariable(name: "nsize", scope: !900, file: !3, line: 111, type: !46)
!910 = !DILocalVariable(name: "blksize", scope: !911, file: !3, line: 120, type: !398)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 119, column: 5)
!912 = distinct !DILexicalBlock(scope: !900, file: !3, line: 118, column: 7)
!913 = !DILocalVariable(name: "ssize0", scope: !911, file: !3, line: 121, type: !61)
!914 = !DILocalVariable(name: "fsize", scope: !915, file: !3, line: 132, type: !46)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 131, column: 5)
!916 = distinct !DILexicalBlock(scope: !900, file: !3, line: 130, column: 7)
!917 = !DILocalVariable(name: "r", scope: !918, file: !3, line: 174, type: !46)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 172, column: 13)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 171, column: 15)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 170, column: 9)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 166, column: 16)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 164, column: 16)
!923 = distinct !DILexicalBlock(scope: !915, file: !3, line: 162, column: 11)
!924 = !DILocation(line: 0, scope: !900, inlinedAt: !925)
!925 = distinct !DILocation(line: 374, column: 22, scope: !926)
!926 = distinct !DILexicalBlock(scope: !889, file: !3, line: 373, column: 9)
!927 = !DILocation(line: 110, column: 3, scope: !900, inlinedAt: !925)
!928 = !DILocation(line: 110, column: 15, scope: !900, inlinedAt: !925)
!929 = !DILocation(line: 113, column: 8, scope: !930, inlinedAt: !925)
!930 = distinct !DILexicalBlock(scope: !900, file: !3, line: 113, column: 7)
!931 = !DILocation(line: 113, column: 19, scope: !930, inlinedAt: !925)
!932 = !DILocation(line: 113, column: 50, scope: !930, inlinedAt: !925)
!933 = !DILocation(line: 113, column: 66, scope: !930, inlinedAt: !925)
!934 = !DILocation(line: 113, column: 7, scope: !900, inlinedAt: !925)
!935 = !DILocation(line: 115, column: 7, scope: !936, inlinedAt: !925)
!936 = distinct !DILexicalBlock(scope: !930, file: !3, line: 114, column: 5)
!937 = !DILocation(line: 116, column: 7, scope: !936, inlinedAt: !925)
!938 = !DILocation(line: 118, column: 7, scope: !912, inlinedAt: !925)
!939 = !DILocation(line: 118, column: 7, scope: !900, inlinedAt: !925)
!940 = !DILocation(line: 120, column: 27, scope: !911, inlinedAt: !925)
!941 = !{!852, !570, i64 56}
!942 = !DILocation(line: 0, scope: !911, inlinedAt: !925)
!943 = !DILocation(line: 122, column: 11, scope: !944, inlinedAt: !925)
!944 = distinct !DILexicalBlock(scope: !911, file: !3, line: 122, column: 11)
!945 = !DILocation(line: 122, column: 11, scope: !911, inlinedAt: !925)
!946 = !DILocation(line: 124, column: 11, scope: !947, inlinedAt: !925)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 123, column: 9)
!948 = !DILocation(line: 130, column: 7, scope: !900, inlinedAt: !925)
!949 = !DILocation(line: 134, column: 11, scope: !915, inlinedAt: !925)
!950 = !DILocation(line: 0, scope: !842, inlinedAt: !951)
!951 = distinct !DILocation(line: 138, column: 15, scope: !952, inlinedAt: !925)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 138, column: 15)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 137, column: 9)
!954 = distinct !DILexicalBlock(scope: !915, file: !3, line: 134, column: 11)
!955 = !DILocation(line: 913, column: 11, scope: !842, inlinedAt: !951)
!956 = !DILocation(line: 913, column: 33, scope: !842, inlinedAt: !951)
!957 = !DILocation(line: 138, column: 15, scope: !953, inlinedAt: !925)
!958 = !DILocation(line: 140, column: 26, scope: !959, inlinedAt: !925)
!959 = distinct !DILexicalBlock(scope: !952, file: !3, line: 139, column: 13)
!960 = !DILocation(line: 0, scope: !915, inlinedAt: !925)
!961 = !DILocation(line: 141, column: 25, scope: !962, inlinedAt: !925)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 141, column: 19)
!963 = !DILocation(line: 141, column: 19, scope: !959, inlinedAt: !925)
!964 = !DILocation(line: 145, column: 19, scope: !965, inlinedAt: !925)
!965 = distinct !DILexicalBlock(scope: !962, file: !3, line: 142, column: 17)
!966 = !DILocation(line: 147, column: 19, scope: !965, inlinedAt: !925)
!967 = !DILocation(line: 152, column: 23, scope: !968, inlinedAt: !925)
!968 = distinct !DILexicalBlock(scope: !952, file: !3, line: 151, column: 13)
!969 = !DILocation(line: 153, column: 25, scope: !970, inlinedAt: !925)
!970 = distinct !DILexicalBlock(scope: !968, file: !3, line: 153, column: 19)
!971 = !DILocation(line: 153, column: 19, scope: !968, inlinedAt: !925)
!972 = !DILocation(line: 155, column: 19, scope: !973, inlinedAt: !925)
!973 = distinct !DILexicalBlock(scope: !970, file: !3, line: 154, column: 17)
!974 = !DILocation(line: 157, column: 19, scope: !973, inlinedAt: !925)
!975 = !DILocation(line: 0, scope: !954, inlinedAt: !925)
!976 = !DILocation(line: 162, column: 11, scope: !915, inlinedAt: !925)
!977 = !DILocation(line: 163, column: 17, scope: !923, inlinedAt: !925)
!978 = !DILocation(line: 163, column: 9, scope: !923, inlinedAt: !925)
!979 = !DILocation(line: 165, column: 17, scope: !922, inlinedAt: !925)
!980 = !DILocation(line: 165, column: 9, scope: !922, inlinedAt: !925)
!981 = !DILocation(line: 168, column: 31, scope: !921, inlinedAt: !925)
!982 = !DILocation(line: 168, column: 23, scope: !921, inlinedAt: !925)
!983 = !DILocation(line: 168, column: 9, scope: !921, inlinedAt: !925)
!984 = !DILocation(line: 174, column: 31, scope: !918, inlinedAt: !925)
!985 = !DILocation(line: 0, scope: !918, inlinedAt: !925)
!986 = !DILocation(line: 175, column: 25, scope: !918, inlinedAt: !925)
!987 = !DILocation(line: 175, column: 23, scope: !918, inlinedAt: !925)
!988 = !DILocation(line: 176, column: 13, scope: !918, inlinedAt: !925)
!989 = !DILocation(line: 177, column: 15, scope: !990, inlinedAt: !925)
!990 = distinct !DILexicalBlock(scope: !920, file: !3, line: 177, column: 15)
!991 = !DILocation(line: 177, column: 15, scope: !920, inlinedAt: !925)
!992 = !DILocation(line: 179, column: 15, scope: !993, inlinedAt: !925)
!993 = distinct !DILexicalBlock(scope: !990, file: !3, line: 178, column: 13)
!994 = !DILocation(line: 181, column: 15, scope: !993, inlinedAt: !925)
!995 = !DILocation(line: 0, scope: !916, inlinedAt: !925)
!996 = !DILocation(line: 187, column: 7, scope: !900, inlinedAt: !925)
!997 = !DILocation(line: 190, column: 7, scope: !998, inlinedAt: !925)
!998 = distinct !DILexicalBlock(scope: !900, file: !3, line: 190, column: 7)
!999 = !DILocation(line: 190, column: 29, scope: !998, inlinedAt: !925)
!1000 = !DILocation(line: 190, column: 7, scope: !900, inlinedAt: !925)
!1001 = !DILocation(line: 192, column: 7, scope: !1002, inlinedAt: !925)
!1002 = distinct !DILexicalBlock(scope: !998, file: !3, line: 191, column: 5)
!1003 = !DILocation(line: 194, column: 7, scope: !1002, inlinedAt: !925)
!1004 = !DILocation(line: 198, column: 1, scope: !900, inlinedAt: !925)
!1005 = !DILocation(line: 374, column: 18, scope: !926)
!1006 = !DILocation(line: 375, column: 15, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !926, file: !3, line: 375, column: 15)
!1008 = !DILocation(line: 375, column: 26, scope: !1007)
!1009 = !DILocation(line: 375, column: 15, scope: !926)
!1010 = !DILocation(line: 377, column: 15, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 376, column: 13)
!1012 = !DILocation(line: 379, column: 13, scope: !1011)
!1013 = !DILocation(line: 0, scope: !889)
!1014 = !DILocation(line: 356, column: 48, scope: !754)
!1015 = distinct !{!1015, !883, !1016, !536}
!1016 = !DILocation(line: 381, column: 5, scope: !751)
!1017 = !DISubprogram(name: "bindtextdomain", scope: !559, file: !559, line: 86, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!51, !57, !57}
!1020 = !DISubprogram(name: "textdomain", scope: !559, file: !559, line: 82, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1021 = !DISubprogram(name: "atexit", scope: !680, file: !680, line: 602, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!44, !217}
!1024 = !DISubprogram(name: "getopt_long", scope: !157, file: !157, line: 66, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!44, !44, !1027, !57, !1029, !162}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1030 = !DISubprogram(name: "stat", scope: !1031, file: !1031, line: 205, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1031 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!44, !565, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!1036 = !DISubprogram(name: "open", scope: !1037, file: !1037, line: 181, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1037 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!44, !57, !44, null}
!1040 = !DISubprogram(name: "lseek", scope: !1041, file: !1041, line: 339, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1041 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!48, !44, !48, !44}
!1044 = !DISubprogram(name: "close", scope: !1041, file: !1041, line: 358, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!44, !44}
!1047 = !DISubprogram(name: "fstat", scope: !1031, file: !1031, line: 210, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!44, !44, !1035}
!1050 = !DISubprogram(name: "ftruncate", scope: !1041, file: !1041, line: 1049, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!44, !44, !48}
!1053 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !176, file: !176, line: 50, type: !497, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1054)
!1054 = !{!1055}
!1055 = !DILocalVariable(name: "file", arg: 1, scope: !1053, file: !176, line: 50, type: !57)
!1056 = !DILocation(line: 0, scope: !1053)
!1057 = !DILocation(line: 52, column: 13, scope: !1053)
!1058 = !DILocation(line: 53, column: 1, scope: !1053)
!1059 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !176, file: !176, line: 87, type: !1060, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1062)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !60}
!1062 = !{!1063}
!1063 = !DILocalVariable(name: "ignore", arg: 1, scope: !1059, file: !176, line: 87, type: !60)
!1064 = !DILocation(line: 0, scope: !1059)
!1065 = !DILocation(line: 89, column: 16, scope: !1059)
!1066 = !{!1067, !1067, i64 0}
!1067 = !{!"_Bool", !476, i64 0}
!1068 = !DILocation(line: 90, column: 1, scope: !1059)
!1069 = distinct !DISubprogram(name: "close_stdout", scope: !176, file: !176, line: 116, type: !218, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1070)
!1070 = !{!1071}
!1071 = !DILocalVariable(name: "write_error", scope: !1072, file: !176, line: 121, type: !57)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !176, line: 120, column: 5)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !176, line: 118, column: 7)
!1074 = !DILocation(line: 118, column: 21, scope: !1073)
!1075 = !DILocation(line: 118, column: 7, scope: !1073)
!1076 = !DILocation(line: 118, column: 29, scope: !1073)
!1077 = !DILocation(line: 119, column: 7, scope: !1073)
!1078 = !DILocation(line: 119, column: 12, scope: !1073)
!1079 = !{i8 0, i8 2}
!1080 = !DILocation(line: 119, column: 25, scope: !1073)
!1081 = !DILocation(line: 119, column: 28, scope: !1073)
!1082 = !DILocation(line: 119, column: 34, scope: !1073)
!1083 = !DILocation(line: 118, column: 7, scope: !1069)
!1084 = !DILocation(line: 121, column: 33, scope: !1072)
!1085 = !DILocation(line: 0, scope: !1072)
!1086 = !DILocation(line: 122, column: 11, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1072, file: !176, line: 122, column: 11)
!1088 = !DILocation(line: 0, scope: !1087)
!1089 = !DILocation(line: 122, column: 11, scope: !1072)
!1090 = !DILocation(line: 123, column: 9, scope: !1087)
!1091 = !DILocation(line: 126, column: 9, scope: !1087)
!1092 = !DILocation(line: 128, column: 14, scope: !1072)
!1093 = !DILocation(line: 128, column: 7, scope: !1072)
!1094 = !DILocation(line: 133, column: 42, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1069, file: !176, line: 133, column: 7)
!1096 = !DILocation(line: 133, column: 28, scope: !1095)
!1097 = !DILocation(line: 133, column: 50, scope: !1095)
!1098 = !DILocation(line: 133, column: 7, scope: !1069)
!1099 = !DILocation(line: 134, column: 12, scope: !1095)
!1100 = !DILocation(line: 134, column: 5, scope: !1095)
!1101 = !DILocation(line: 135, column: 1, scope: !1069)
!1102 = distinct !DISubprogram(name: "verror", scope: !183, file: !183, line: 251, type: !1103, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !44, !44, !57, !191}
!1105 = !{!1106, !1107, !1108, !1109}
!1106 = !DILocalVariable(name: "status", arg: 1, scope: !1102, file: !183, line: 251, type: !44)
!1107 = !DILocalVariable(name: "errnum", arg: 2, scope: !1102, file: !183, line: 251, type: !44)
!1108 = !DILocalVariable(name: "message", arg: 3, scope: !1102, file: !183, line: 251, type: !57)
!1109 = !DILocalVariable(name: "args", arg: 4, scope: !1102, file: !183, line: 251, type: !191)
!1110 = !DILocation(line: 0, scope: !1102)
!1111 = !DILocation(line: 251, column: 1, scope: !1102)
!1112 = !DILocation(line: 261, column: 3, scope: !1102)
!1113 = !DILocation(line: 265, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1102, file: !183, line: 265, column: 7)
!1115 = !DILocation(line: 265, column: 7, scope: !1102)
!1116 = !DILocation(line: 266, column: 5, scope: !1114)
!1117 = !DILocation(line: 272, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !183, line: 268, column: 5)
!1119 = !DILocation(line: 276, column: 3, scope: !1102)
!1120 = !{i64 0, i64 8, !474, i64 8, i64 8, !474, i64 16, i64 8, !474, i64 24, i64 4, !569, i64 28, i64 4, !569}
!1121 = !DILocation(line: 282, column: 1, scope: !1102)
!1122 = distinct !DISubprogram(name: "flush_stdout", scope: !183, file: !183, line: 163, type: !218, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1123)
!1123 = !{!1124}
!1124 = !DILocalVariable(name: "stdout_fd", scope: !1122, file: !183, line: 166, type: !44)
!1125 = !DILocation(line: 0, scope: !1122)
!1126 = !DILocalVariable(name: "fd", arg: 1, scope: !1127, file: !183, line: 145, type: !44)
!1127 = distinct !DISubprogram(name: "is_open", scope: !183, file: !183, line: 145, type: !1045, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1128)
!1128 = !{!1126}
!1129 = !DILocation(line: 0, scope: !1127, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 182, column: 25, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1122, file: !183, line: 182, column: 7)
!1132 = !DILocation(line: 157, column: 15, scope: !1127, inlinedAt: !1130)
!1133 = !DILocation(line: 182, column: 25, scope: !1131)
!1134 = !DILocation(line: 182, column: 7, scope: !1122)
!1135 = !DILocation(line: 184, column: 5, scope: !1131)
!1136 = !DILocation(line: 185, column: 1, scope: !1122)
!1137 = distinct !DISubprogram(name: "error_tail", scope: !183, file: !183, line: 219, type: !1103, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1138)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DILocalVariable(name: "status", arg: 1, scope: !1137, file: !183, line: 219, type: !44)
!1140 = !DILocalVariable(name: "errnum", arg: 2, scope: !1137, file: !183, line: 219, type: !44)
!1141 = !DILocalVariable(name: "message", arg: 3, scope: !1137, file: !183, line: 219, type: !57)
!1142 = !DILocalVariable(name: "args", arg: 4, scope: !1137, file: !183, line: 219, type: !191)
!1143 = !DILocation(line: 0, scope: !1137)
!1144 = !DILocation(line: 219, column: 1, scope: !1137)
!1145 = !DILocation(line: 229, column: 13, scope: !1137)
!1146 = !DILocation(line: 229, column: 3, scope: !1137)
!1147 = !DILocalVariable(name: "__stream", arg: 1, scope: !1148, file: !1149, line: 132, type: !1152)
!1148 = distinct !DISubprogram(name: "vfprintf", scope: !1149, file: !1149, line: 132, type: !1150, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1187)
!1149 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!44, !1152, !565, !192}
!1152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !98, line: 7, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !100, line: 49, size: 1728, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1155, file: !100, line: 51, baseType: !44, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1155, file: !100, line: 54, baseType: !51, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1155, file: !100, line: 55, baseType: !51, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1155, file: !100, line: 56, baseType: !51, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1155, file: !100, line: 57, baseType: !51, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1155, file: !100, line: 58, baseType: !51, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1155, file: !100, line: 59, baseType: !51, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1155, file: !100, line: 60, baseType: !51, size: 64, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1155, file: !100, line: 61, baseType: !51, size: 64, offset: 512)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1155, file: !100, line: 64, baseType: !51, size: 64, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1155, file: !100, line: 65, baseType: !51, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1155, file: !100, line: 66, baseType: !51, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1155, file: !100, line: 68, baseType: !115, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1155, file: !100, line: 70, baseType: !1171, size: 64, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1155, file: !100, line: 72, baseType: !44, size: 32, offset: 896)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1155, file: !100, line: 73, baseType: !44, size: 32, offset: 928)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1155, file: !100, line: 74, baseType: !48, size: 64, offset: 960)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1155, file: !100, line: 77, baseType: !45, size: 16, offset: 1024)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1155, file: !100, line: 78, baseType: !124, size: 8, offset: 1040)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1155, file: !100, line: 79, baseType: !126, size: 8, offset: 1048)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1155, file: !100, line: 81, baseType: !130, size: 64, offset: 1088)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1155, file: !100, line: 89, baseType: !133, size: 64, offset: 1152)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1155, file: !100, line: 91, baseType: !135, size: 64, offset: 1216)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1155, file: !100, line: 92, baseType: !138, size: 64, offset: 1280)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1155, file: !100, line: 93, baseType: !1171, size: 64, offset: 1344)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1155, file: !100, line: 94, baseType: !53, size: 64, offset: 1408)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1155, file: !100, line: 95, baseType: !54, size: 64, offset: 1472)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1155, file: !100, line: 96, baseType: !44, size: 32, offset: 1536)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1155, file: !100, line: 98, baseType: !145, size: 160, offset: 1568)
!1187 = !{!1147, !1188, !1189}
!1188 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1148, file: !1149, line: 133, type: !565)
!1189 = !DILocalVariable(name: "__ap", arg: 3, scope: !1148, file: !1149, line: 133, type: !192)
!1190 = !DILocation(line: 0, scope: !1148, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 229, column: 3, scope: !1137)
!1192 = !DILocation(line: 135, column: 10, scope: !1148, inlinedAt: !1191)
!1193 = !{!1194, !1196}
!1194 = distinct !{!1194, !1195, !"vfprintf.inline: argument 0"}
!1195 = distinct !{!1195, !"vfprintf.inline"}
!1196 = distinct !{!1196, !1195, !"vfprintf.inline: argument 1"}
!1197 = !DILocation(line: 232, column: 3, scope: !1137)
!1198 = !DILocation(line: 233, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1137, file: !183, line: 233, column: 7)
!1200 = !DILocation(line: 233, column: 7, scope: !1137)
!1201 = !DILocalVariable(name: "errnum", arg: 1, scope: !1202, file: !183, line: 188, type: !44)
!1202 = distinct !DISubprogram(name: "print_errno_message", scope: !183, file: !183, line: 188, type: !464, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1203)
!1203 = !{!1201, !1204, !1205}
!1204 = !DILocalVariable(name: "s", scope: !1202, file: !183, line: 190, type: !57)
!1205 = !DILocalVariable(name: "errbuf", scope: !1202, file: !183, line: 193, type: !1206)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8192, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 1024)
!1209 = !DILocation(line: 0, scope: !1202, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 234, column: 5, scope: !1199)
!1211 = !DILocation(line: 193, column: 3, scope: !1202, inlinedAt: !1210)
!1212 = !DILocation(line: 193, column: 8, scope: !1202, inlinedAt: !1210)
!1213 = !DILocation(line: 195, column: 7, scope: !1202, inlinedAt: !1210)
!1214 = !DILocation(line: 207, column: 9, scope: !1215, inlinedAt: !1210)
!1215 = distinct !DILexicalBlock(scope: !1202, file: !183, line: 207, column: 7)
!1216 = !DILocation(line: 207, column: 7, scope: !1202, inlinedAt: !1210)
!1217 = !DILocation(line: 208, column: 9, scope: !1215, inlinedAt: !1210)
!1218 = !DILocation(line: 208, column: 5, scope: !1215, inlinedAt: !1210)
!1219 = !DILocation(line: 214, column: 3, scope: !1202, inlinedAt: !1210)
!1220 = !DILocation(line: 216, column: 1, scope: !1202, inlinedAt: !1210)
!1221 = !DILocation(line: 234, column: 5, scope: !1199)
!1222 = !DILocation(line: 238, column: 3, scope: !1137)
!1223 = !DILocalVariable(name: "__c", arg: 1, scope: !1224, file: !1225, line: 101, type: !44)
!1224 = distinct !DISubprogram(name: "putc_unlocked", scope: !1225, file: !1225, line: 101, type: !1226, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1228)
!1225 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!44, !44, !1153}
!1228 = !{!1223, !1229}
!1229 = !DILocalVariable(name: "__stream", arg: 2, scope: !1224, file: !1225, line: 101, type: !1153)
!1230 = !DILocation(line: 0, scope: !1224, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 238, column: 3, scope: !1137)
!1232 = !DILocation(line: 103, column: 10, scope: !1224, inlinedAt: !1231)
!1233 = !{!1234, !475, i64 40}
!1234 = !{!"_IO_FILE", !570, i64 0, !475, i64 8, !475, i64 16, !475, i64 24, !475, i64 32, !475, i64 40, !475, i64 48, !475, i64 56, !475, i64 64, !475, i64 72, !475, i64 80, !475, i64 88, !475, i64 96, !475, i64 104, !570, i64 112, !570, i64 116, !853, i64 120, !604, i64 128, !476, i64 130, !476, i64 131, !475, i64 136, !853, i64 144, !475, i64 152, !475, i64 160, !475, i64 168, !475, i64 176, !853, i64 184, !570, i64 192, !476, i64 196}
!1235 = !{!1234, !475, i64 48}
!1236 = !{!"branch_weights", i32 2000, i32 1}
!1237 = !DILocation(line: 240, column: 3, scope: !1137)
!1238 = !DILocation(line: 241, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1137, file: !183, line: 241, column: 7)
!1240 = !DILocation(line: 241, column: 7, scope: !1137)
!1241 = !DILocation(line: 242, column: 5, scope: !1239)
!1242 = !DILocation(line: 243, column: 1, scope: !1137)
!1243 = !DISubprogram(name: "strerror_r", scope: !1244, file: !1244, line: 444, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1244 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!51, !44, !51, !54}
!1247 = !DISubprogram(name: "fflush_unlocked", scope: !47, file: !47, line: 239, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!44, !1153}
!1250 = !DISubprogram(name: "fcntl", scope: !1037, file: !1037, line: 149, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!44, !44, !44, null}
!1253 = distinct !DISubprogram(name: "error", scope: !183, file: !183, line: 285, type: !1254, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !44, !44, !57, null}
!1256 = !{!1257, !1258, !1259, !1260}
!1257 = !DILocalVariable(name: "status", arg: 1, scope: !1253, file: !183, line: 285, type: !44)
!1258 = !DILocalVariable(name: "errnum", arg: 2, scope: !1253, file: !183, line: 285, type: !44)
!1259 = !DILocalVariable(name: "message", arg: 3, scope: !1253, file: !183, line: 285, type: !57)
!1260 = !DILocalVariable(name: "ap", scope: !1253, file: !183, line: 287, type: !191)
!1261 = !DILocation(line: 0, scope: !1253)
!1262 = !DILocation(line: 287, column: 3, scope: !1253)
!1263 = !DILocation(line: 287, column: 11, scope: !1253)
!1264 = !DILocation(line: 288, column: 3, scope: !1253)
!1265 = !DILocation(line: 289, column: 3, scope: !1253)
!1266 = !DILocation(line: 290, column: 3, scope: !1253)
!1267 = !DILocation(line: 291, column: 1, scope: !1253)
!1268 = !DILocation(line: 0, scope: !188)
!1269 = !DILocation(line: 298, column: 1, scope: !188)
!1270 = !DILocation(line: 302, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !188, file: !183, line: 302, column: 7)
!1272 = !DILocation(line: 302, column: 7, scope: !188)
!1273 = !DILocation(line: 307, column: 11, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !183, line: 307, column: 11)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !183, line: 303, column: 5)
!1276 = !DILocation(line: 307, column: 27, scope: !1274)
!1277 = !DILocation(line: 308, column: 11, scope: !1274)
!1278 = !DILocation(line: 308, column: 28, scope: !1274)
!1279 = !DILocation(line: 308, column: 25, scope: !1274)
!1280 = !DILocation(line: 309, column: 15, scope: !1274)
!1281 = !DILocation(line: 309, column: 33, scope: !1274)
!1282 = !DILocation(line: 310, column: 19, scope: !1274)
!1283 = !DILocation(line: 311, column: 22, scope: !1274)
!1284 = !DILocation(line: 311, column: 56, scope: !1274)
!1285 = !DILocation(line: 307, column: 11, scope: !1275)
!1286 = !DILocation(line: 316, column: 21, scope: !1275)
!1287 = !DILocation(line: 317, column: 23, scope: !1275)
!1288 = !DILocation(line: 318, column: 5, scope: !1275)
!1289 = !DILocation(line: 327, column: 3, scope: !188)
!1290 = !DILocation(line: 331, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !188, file: !183, line: 331, column: 7)
!1292 = !DILocation(line: 331, column: 7, scope: !188)
!1293 = !DILocation(line: 332, column: 5, scope: !1291)
!1294 = !DILocation(line: 338, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !183, line: 334, column: 5)
!1296 = !DILocation(line: 346, column: 3, scope: !188)
!1297 = !DILocation(line: 350, column: 3, scope: !188)
!1298 = !DILocation(line: 356, column: 1, scope: !188)
!1299 = distinct !DISubprogram(name: "error_at_line", scope: !183, file: !183, line: 359, type: !1300, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !44, !44, !57, !6, !57, null}
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308}
!1303 = !DILocalVariable(name: "status", arg: 1, scope: !1299, file: !183, line: 359, type: !44)
!1304 = !DILocalVariable(name: "errnum", arg: 2, scope: !1299, file: !183, line: 359, type: !44)
!1305 = !DILocalVariable(name: "file_name", arg: 3, scope: !1299, file: !183, line: 359, type: !57)
!1306 = !DILocalVariable(name: "line_number", arg: 4, scope: !1299, file: !183, line: 360, type: !6)
!1307 = !DILocalVariable(name: "message", arg: 5, scope: !1299, file: !183, line: 360, type: !57)
!1308 = !DILocalVariable(name: "ap", scope: !1299, file: !183, line: 362, type: !191)
!1309 = !DILocation(line: 0, scope: !1299)
!1310 = !DILocation(line: 362, column: 3, scope: !1299)
!1311 = !DILocation(line: 362, column: 11, scope: !1299)
!1312 = !DILocation(line: 363, column: 3, scope: !1299)
!1313 = !DILocation(line: 364, column: 3, scope: !1299)
!1314 = !DILocation(line: 366, column: 3, scope: !1299)
!1315 = !DILocation(line: 367, column: 1, scope: !1299)
!1316 = distinct !DISubprogram(name: "getprogname", scope: !368, file: !368, line: 54, type: !1317, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !483)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!57}
!1319 = !DILocation(line: 58, column: 10, scope: !1316)
!1320 = !DILocation(line: 58, column: 3, scope: !1316)
!1321 = distinct !DISubprogram(name: "set_program_name", scope: !223, file: !223, line: 37, type: !497, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !1322)
!1322 = !{!1323, !1324, !1325}
!1323 = !DILocalVariable(name: "argv0", arg: 1, scope: !1321, file: !223, line: 37, type: !57)
!1324 = !DILocalVariable(name: "slash", scope: !1321, file: !223, line: 44, type: !57)
!1325 = !DILocalVariable(name: "base", scope: !1321, file: !223, line: 45, type: !57)
!1326 = !DILocation(line: 0, scope: !1321)
!1327 = !DILocation(line: 44, column: 23, scope: !1321)
!1328 = !DILocation(line: 45, column: 22, scope: !1321)
!1329 = !DILocation(line: 46, column: 17, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1321, file: !223, line: 46, column: 7)
!1331 = !DILocation(line: 46, column: 9, scope: !1330)
!1332 = !DILocation(line: 46, column: 25, scope: !1330)
!1333 = !DILocation(line: 46, column: 40, scope: !1330)
!1334 = !DILocalVariable(name: "__s1", arg: 1, scope: !1335, file: !520, line: 974, type: !687)
!1335 = distinct !DISubprogram(name: "memeq", scope: !520, file: !520, line: 974, type: !1336, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !1338)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!60, !687, !687, !54}
!1338 = !{!1334, !1339, !1340}
!1339 = !DILocalVariable(name: "__s2", arg: 2, scope: !1335, file: !520, line: 974, type: !687)
!1340 = !DILocalVariable(name: "__n", arg: 3, scope: !1335, file: !520, line: 974, type: !54)
!1341 = !DILocation(line: 0, scope: !1335, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 46, column: 28, scope: !1330)
!1343 = !DILocation(line: 976, column: 11, scope: !1335, inlinedAt: !1342)
!1344 = !DILocation(line: 976, column: 10, scope: !1335, inlinedAt: !1342)
!1345 = !DILocation(line: 46, column: 7, scope: !1321)
!1346 = !DILocation(line: 49, column: 11, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !223, line: 49, column: 11)
!1348 = distinct !DILexicalBlock(scope: !1330, file: !223, line: 47, column: 5)
!1349 = !DILocation(line: 49, column: 36, scope: !1347)
!1350 = !DILocation(line: 49, column: 11, scope: !1348)
!1351 = !DILocation(line: 65, column: 16, scope: !1321)
!1352 = !DILocation(line: 71, column: 27, scope: !1321)
!1353 = !DILocation(line: 74, column: 33, scope: !1321)
!1354 = !DILocation(line: 76, column: 1, scope: !1321)
!1355 = !DILocation(line: 0, scope: !228)
!1356 = !DILocation(line: 40, column: 29, scope: !228)
!1357 = !DILocation(line: 41, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !228, file: !229, line: 41, column: 7)
!1359 = !DILocation(line: 41, column: 7, scope: !228)
!1360 = !DILocation(line: 47, column: 3, scope: !228)
!1361 = !DILocation(line: 48, column: 3, scope: !228)
!1362 = !DILocation(line: 48, column: 13, scope: !228)
!1363 = !DILocalVariable(name: "ps", arg: 1, scope: !1364, file: !1365, line: 1135, type: !1368)
!1364 = distinct !DISubprogram(name: "mbszero", scope: !1365, file: !1365, line: 1135, type: !1366, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !1369)
!1365 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1369 = !{!1363}
!1370 = !DILocation(line: 0, scope: !1364, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 48, column: 18, scope: !228)
!1372 = !DILocalVariable(name: "__dest", arg: 1, scope: !1373, file: !1374, line: 57, type: !53)
!1373 = distinct !DISubprogram(name: "memset", scope: !1374, file: !1374, line: 57, type: !1375, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !1377)
!1374 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!53, !53, !44, !54}
!1377 = !{!1372, !1378, !1379}
!1378 = !DILocalVariable(name: "__ch", arg: 2, scope: !1373, file: !1374, line: 57, type: !44)
!1379 = !DILocalVariable(name: "__len", arg: 3, scope: !1373, file: !1374, line: 57, type: !54)
!1380 = !DILocation(line: 0, scope: !1373, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 1137, column: 3, scope: !1364, inlinedAt: !1371)
!1382 = !DILocation(line: 59, column: 10, scope: !1373, inlinedAt: !1381)
!1383 = !DILocation(line: 49, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !228, file: !229, line: 49, column: 7)
!1385 = !DILocation(line: 49, column: 39, scope: !1384)
!1386 = !DILocation(line: 49, column: 44, scope: !1384)
!1387 = !DILocation(line: 54, column: 1, scope: !228)
!1388 = !DISubprogram(name: "mbrtoc32", scope: !240, file: !240, line: 57, type: !1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!54, !1391, !565, !54, !1393}
!1391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1368)
!1394 = distinct !DISubprogram(name: "clone_quoting_options", scope: !265, file: !265, line: 113, type: !1395, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1398)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1397, !1397}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!1398 = !{!1399, !1400, !1401}
!1399 = !DILocalVariable(name: "o", arg: 1, scope: !1394, file: !265, line: 113, type: !1397)
!1400 = !DILocalVariable(name: "saved_errno", scope: !1394, file: !265, line: 115, type: !44)
!1401 = !DILocalVariable(name: "p", scope: !1394, file: !265, line: 116, type: !1397)
!1402 = !DILocation(line: 0, scope: !1394)
!1403 = !DILocation(line: 115, column: 21, scope: !1394)
!1404 = !DILocation(line: 116, column: 40, scope: !1394)
!1405 = !DILocation(line: 116, column: 31, scope: !1394)
!1406 = !DILocation(line: 118, column: 9, scope: !1394)
!1407 = !DILocation(line: 119, column: 3, scope: !1394)
!1408 = distinct !DISubprogram(name: "get_quoting_style", scope: !265, file: !265, line: 124, type: !1409, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1413)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!29, !1411}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!1413 = !{!1414}
!1414 = !DILocalVariable(name: "o", arg: 1, scope: !1408, file: !265, line: 124, type: !1411)
!1415 = !DILocation(line: 0, scope: !1408)
!1416 = !DILocation(line: 126, column: 11, scope: !1408)
!1417 = !DILocation(line: 126, column: 46, scope: !1408)
!1418 = !{!1419, !476, i64 0}
!1419 = !{!"quoting_options", !476, i64 0, !570, i64 4, !476, i64 8, !475, i64 40, !475, i64 48}
!1420 = !DILocation(line: 126, column: 3, scope: !1408)
!1421 = distinct !DISubprogram(name: "set_quoting_style", scope: !265, file: !265, line: 132, type: !1422, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1424)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !1397, !29}
!1424 = !{!1425, !1426}
!1425 = !DILocalVariable(name: "o", arg: 1, scope: !1421, file: !265, line: 132, type: !1397)
!1426 = !DILocalVariable(name: "s", arg: 2, scope: !1421, file: !265, line: 132, type: !29)
!1427 = !DILocation(line: 0, scope: !1421)
!1428 = !DILocation(line: 134, column: 4, scope: !1421)
!1429 = !DILocation(line: 134, column: 39, scope: !1421)
!1430 = !DILocation(line: 134, column: 45, scope: !1421)
!1431 = !DILocation(line: 135, column: 1, scope: !1421)
!1432 = distinct !DISubprogram(name: "set_char_quoting", scope: !265, file: !265, line: 143, type: !1433, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!44, !1397, !52, !44}
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1442, !1443}
!1436 = !DILocalVariable(name: "o", arg: 1, scope: !1432, file: !265, line: 143, type: !1397)
!1437 = !DILocalVariable(name: "c", arg: 2, scope: !1432, file: !265, line: 143, type: !52)
!1438 = !DILocalVariable(name: "i", arg: 3, scope: !1432, file: !265, line: 143, type: !44)
!1439 = !DILocalVariable(name: "uc", scope: !1432, file: !265, line: 145, type: !59)
!1440 = !DILocalVariable(name: "p", scope: !1432, file: !265, line: 146, type: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1442 = !DILocalVariable(name: "shift", scope: !1432, file: !265, line: 148, type: !44)
!1443 = !DILocalVariable(name: "r", scope: !1432, file: !265, line: 149, type: !6)
!1444 = !DILocation(line: 0, scope: !1432)
!1445 = !DILocation(line: 147, column: 6, scope: !1432)
!1446 = !DILocation(line: 147, column: 62, scope: !1432)
!1447 = !DILocation(line: 147, column: 57, scope: !1432)
!1448 = !DILocation(line: 148, column: 15, scope: !1432)
!1449 = !DILocation(line: 149, column: 21, scope: !1432)
!1450 = !DILocation(line: 149, column: 24, scope: !1432)
!1451 = !DILocation(line: 149, column: 34, scope: !1432)
!1452 = !DILocation(line: 150, column: 13, scope: !1432)
!1453 = !DILocation(line: 150, column: 19, scope: !1432)
!1454 = !DILocation(line: 150, column: 24, scope: !1432)
!1455 = !DILocation(line: 150, column: 6, scope: !1432)
!1456 = !DILocation(line: 151, column: 3, scope: !1432)
!1457 = distinct !DISubprogram(name: "set_quoting_flags", scope: !265, file: !265, line: 159, type: !1458, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!44, !1397, !44}
!1460 = !{!1461, !1462, !1463}
!1461 = !DILocalVariable(name: "o", arg: 1, scope: !1457, file: !265, line: 159, type: !1397)
!1462 = !DILocalVariable(name: "i", arg: 2, scope: !1457, file: !265, line: 159, type: !44)
!1463 = !DILocalVariable(name: "r", scope: !1457, file: !265, line: 163, type: !44)
!1464 = !DILocation(line: 0, scope: !1457)
!1465 = !DILocation(line: 161, column: 8, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1457, file: !265, line: 161, column: 7)
!1467 = !DILocation(line: 161, column: 7, scope: !1457)
!1468 = !DILocation(line: 163, column: 14, scope: !1457)
!1469 = !{!1419, !570, i64 4}
!1470 = !DILocation(line: 164, column: 12, scope: !1457)
!1471 = !DILocation(line: 165, column: 3, scope: !1457)
!1472 = distinct !DISubprogram(name: "set_custom_quoting", scope: !265, file: !265, line: 169, type: !1473, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !1397, !57, !57}
!1475 = !{!1476, !1477, !1478}
!1476 = !DILocalVariable(name: "o", arg: 1, scope: !1472, file: !265, line: 169, type: !1397)
!1477 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1472, file: !265, line: 170, type: !57)
!1478 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1472, file: !265, line: 170, type: !57)
!1479 = !DILocation(line: 0, scope: !1472)
!1480 = !DILocation(line: 172, column: 8, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1472, file: !265, line: 172, column: 7)
!1482 = !DILocation(line: 172, column: 7, scope: !1472)
!1483 = !DILocation(line: 174, column: 6, scope: !1472)
!1484 = !DILocation(line: 174, column: 12, scope: !1472)
!1485 = !DILocation(line: 175, column: 8, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1472, file: !265, line: 175, column: 7)
!1487 = !DILocation(line: 175, column: 19, scope: !1486)
!1488 = !DILocation(line: 176, column: 5, scope: !1486)
!1489 = !DILocation(line: 177, column: 6, scope: !1472)
!1490 = !DILocation(line: 177, column: 17, scope: !1472)
!1491 = !{!1419, !475, i64 40}
!1492 = !DILocation(line: 178, column: 6, scope: !1472)
!1493 = !DILocation(line: 178, column: 18, scope: !1472)
!1494 = !{!1419, !475, i64 48}
!1495 = !DILocation(line: 179, column: 1, scope: !1472)
!1496 = distinct !DISubprogram(name: "quotearg_buffer", scope: !265, file: !265, line: 774, type: !1497, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!54, !51, !54, !57, !54, !1411}
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1500 = !DILocalVariable(name: "buffer", arg: 1, scope: !1496, file: !265, line: 774, type: !51)
!1501 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1496, file: !265, line: 774, type: !54)
!1502 = !DILocalVariable(name: "arg", arg: 3, scope: !1496, file: !265, line: 775, type: !57)
!1503 = !DILocalVariable(name: "argsize", arg: 4, scope: !1496, file: !265, line: 775, type: !54)
!1504 = !DILocalVariable(name: "o", arg: 5, scope: !1496, file: !265, line: 776, type: !1411)
!1505 = !DILocalVariable(name: "p", scope: !1496, file: !265, line: 778, type: !1411)
!1506 = !DILocalVariable(name: "saved_errno", scope: !1496, file: !265, line: 779, type: !44)
!1507 = !DILocalVariable(name: "r", scope: !1496, file: !265, line: 780, type: !54)
!1508 = !DILocation(line: 0, scope: !1496)
!1509 = !DILocation(line: 778, column: 37, scope: !1496)
!1510 = !DILocation(line: 779, column: 21, scope: !1496)
!1511 = !DILocation(line: 781, column: 43, scope: !1496)
!1512 = !DILocation(line: 781, column: 53, scope: !1496)
!1513 = !DILocation(line: 781, column: 60, scope: !1496)
!1514 = !DILocation(line: 782, column: 43, scope: !1496)
!1515 = !DILocation(line: 782, column: 58, scope: !1496)
!1516 = !DILocation(line: 780, column: 14, scope: !1496)
!1517 = !DILocation(line: 783, column: 9, scope: !1496)
!1518 = !DILocation(line: 784, column: 3, scope: !1496)
!1519 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !265, file: !265, line: 251, type: !1520, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1524)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!54, !51, !54, !57, !54, !29, !44, !1522, !57, !57}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1549, !1551, !1554, !1555, !1556, !1557, !1560, !1561, !1564, !1568, !1569, !1577, !1580, !1581, !1583, !1584, !1585, !1586}
!1525 = !DILocalVariable(name: "buffer", arg: 1, scope: !1519, file: !265, line: 251, type: !51)
!1526 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1519, file: !265, line: 251, type: !54)
!1527 = !DILocalVariable(name: "arg", arg: 3, scope: !1519, file: !265, line: 252, type: !57)
!1528 = !DILocalVariable(name: "argsize", arg: 4, scope: !1519, file: !265, line: 252, type: !54)
!1529 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1519, file: !265, line: 253, type: !29)
!1530 = !DILocalVariable(name: "flags", arg: 6, scope: !1519, file: !265, line: 253, type: !44)
!1531 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1519, file: !265, line: 254, type: !1522)
!1532 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1519, file: !265, line: 255, type: !57)
!1533 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1519, file: !265, line: 256, type: !57)
!1534 = !DILocalVariable(name: "unibyte_locale", scope: !1519, file: !265, line: 258, type: !60)
!1535 = !DILocalVariable(name: "len", scope: !1519, file: !265, line: 260, type: !54)
!1536 = !DILocalVariable(name: "orig_buffersize", scope: !1519, file: !265, line: 261, type: !54)
!1537 = !DILocalVariable(name: "quote_string", scope: !1519, file: !265, line: 262, type: !57)
!1538 = !DILocalVariable(name: "quote_string_len", scope: !1519, file: !265, line: 263, type: !54)
!1539 = !DILocalVariable(name: "backslash_escapes", scope: !1519, file: !265, line: 264, type: !60)
!1540 = !DILocalVariable(name: "elide_outer_quotes", scope: !1519, file: !265, line: 265, type: !60)
!1541 = !DILocalVariable(name: "encountered_single_quote", scope: !1519, file: !265, line: 266, type: !60)
!1542 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1519, file: !265, line: 267, type: !60)
!1543 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1519, file: !265, line: 309, type: !60)
!1544 = !DILocalVariable(name: "lq", scope: !1545, file: !265, line: 361, type: !57)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !265, line: 361, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !265, line: 360, column: 13)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !265, line: 333, column: 7)
!1548 = distinct !DILexicalBlock(scope: !1519, file: !265, line: 312, column: 5)
!1549 = !DILocalVariable(name: "i", scope: !1550, file: !265, line: 395, type: !54)
!1550 = distinct !DILexicalBlock(scope: !1519, file: !265, line: 395, column: 3)
!1551 = !DILocalVariable(name: "is_right_quote", scope: !1552, file: !265, line: 397, type: !60)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !265, line: 396, column: 5)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !265, line: 395, column: 3)
!1554 = !DILocalVariable(name: "escaping", scope: !1552, file: !265, line: 398, type: !60)
!1555 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1552, file: !265, line: 399, type: !60)
!1556 = !DILocalVariable(name: "c", scope: !1552, file: !265, line: 417, type: !59)
!1557 = !DILocalVariable(name: "m", scope: !1558, file: !265, line: 598, type: !54)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !265, line: 596, column: 11)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !265, line: 419, column: 9)
!1560 = !DILocalVariable(name: "printable", scope: !1558, file: !265, line: 600, type: !60)
!1561 = !DILocalVariable(name: "mbs", scope: !1562, file: !265, line: 609, type: !310)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !265, line: 608, column: 15)
!1563 = distinct !DILexicalBlock(scope: !1558, file: !265, line: 602, column: 17)
!1564 = !DILocalVariable(name: "w", scope: !1565, file: !265, line: 618, type: !239)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !265, line: 617, column: 19)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !265, line: 616, column: 17)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !265, line: 616, column: 17)
!1568 = !DILocalVariable(name: "bytes", scope: !1565, file: !265, line: 619, type: !54)
!1569 = !DILocalVariable(name: "j", scope: !1570, file: !265, line: 648, type: !54)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !265, line: 648, column: 29)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !265, line: 647, column: 27)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !265, line: 645, column: 29)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !265, line: 636, column: 23)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !265, line: 628, column: 30)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !265, line: 623, column: 30)
!1576 = distinct !DILexicalBlock(scope: !1565, file: !265, line: 621, column: 25)
!1577 = !DILocalVariable(name: "ilim", scope: !1578, file: !265, line: 674, type: !54)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !265, line: 671, column: 15)
!1579 = distinct !DILexicalBlock(scope: !1558, file: !265, line: 670, column: 17)
!1580 = !DILabel(scope: !1519, name: "process_input", file: !265, line: 308)
!1581 = !DILabel(scope: !1582, name: "c_and_shell_escape", file: !265, line: 502)
!1582 = distinct !DILexicalBlock(scope: !1559, file: !265, line: 478, column: 9)
!1583 = !DILabel(scope: !1582, name: "c_escape", file: !265, line: 507)
!1584 = !DILabel(scope: !1552, name: "store_escape", file: !265, line: 709)
!1585 = !DILabel(scope: !1552, name: "store_c", file: !265, line: 712)
!1586 = !DILabel(scope: !1519, name: "force_outer_quoting_style", file: !265, line: 753)
!1587 = !DILocation(line: 0, scope: !1519)
!1588 = !DILocation(line: 258, column: 25, scope: !1519)
!1589 = !DILocation(line: 258, column: 36, scope: !1519)
!1590 = !DILocation(line: 267, column: 3, scope: !1519)
!1591 = !DILocation(line: 261, column: 10, scope: !1519)
!1592 = !DILocation(line: 262, column: 15, scope: !1519)
!1593 = !DILocation(line: 263, column: 10, scope: !1519)
!1594 = !DILocation(line: 308, column: 2, scope: !1519)
!1595 = !DILocation(line: 311, column: 3, scope: !1519)
!1596 = !DILocation(line: 318, column: 11, scope: !1548)
!1597 = !DILocation(line: 319, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !265, line: 319, column: 9)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !265, line: 319, column: 9)
!1600 = distinct !DILexicalBlock(scope: !1548, file: !265, line: 318, column: 11)
!1601 = !DILocation(line: 319, column: 9, scope: !1599)
!1602 = !DILocation(line: 0, scope: !301, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 357, column: 26, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !265, line: 335, column: 11)
!1605 = distinct !DILexicalBlock(scope: !1547, file: !265, line: 334, column: 13)
!1606 = !DILocation(line: 199, column: 29, scope: !301, inlinedAt: !1603)
!1607 = !DILocation(line: 201, column: 19, scope: !1608, inlinedAt: !1603)
!1608 = distinct !DILexicalBlock(scope: !301, file: !265, line: 201, column: 7)
!1609 = !DILocation(line: 201, column: 7, scope: !301, inlinedAt: !1603)
!1610 = !DILocation(line: 229, column: 3, scope: !301, inlinedAt: !1603)
!1611 = !DILocation(line: 230, column: 3, scope: !301, inlinedAt: !1603)
!1612 = !DILocation(line: 230, column: 13, scope: !301, inlinedAt: !1603)
!1613 = !DILocalVariable(name: "ps", arg: 1, scope: !1614, file: !1365, line: 1135, type: !1617)
!1614 = distinct !DISubprogram(name: "mbszero", scope: !1365, file: !1365, line: 1135, type: !1615, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1618)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!1618 = !{!1613}
!1619 = !DILocation(line: 0, scope: !1614, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 230, column: 18, scope: !301, inlinedAt: !1603)
!1621 = !DILocalVariable(name: "__dest", arg: 1, scope: !1622, file: !1374, line: 57, type: !53)
!1622 = distinct !DISubprogram(name: "memset", scope: !1374, file: !1374, line: 57, type: !1375, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1623)
!1623 = !{!1621, !1624, !1625}
!1624 = !DILocalVariable(name: "__ch", arg: 2, scope: !1622, file: !1374, line: 57, type: !44)
!1625 = !DILocalVariable(name: "__len", arg: 3, scope: !1622, file: !1374, line: 57, type: !54)
!1626 = !DILocation(line: 0, scope: !1622, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 1137, column: 3, scope: !1614, inlinedAt: !1620)
!1628 = !DILocation(line: 59, column: 10, scope: !1622, inlinedAt: !1627)
!1629 = !DILocation(line: 231, column: 7, scope: !1630, inlinedAt: !1603)
!1630 = distinct !DILexicalBlock(scope: !301, file: !265, line: 231, column: 7)
!1631 = !DILocation(line: 231, column: 40, scope: !1630, inlinedAt: !1603)
!1632 = !DILocation(line: 231, column: 45, scope: !1630, inlinedAt: !1603)
!1633 = !DILocation(line: 235, column: 1, scope: !301, inlinedAt: !1603)
!1634 = !DILocation(line: 0, scope: !301, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 358, column: 27, scope: !1604)
!1636 = !DILocation(line: 199, column: 29, scope: !301, inlinedAt: !1635)
!1637 = !DILocation(line: 201, column: 19, scope: !1608, inlinedAt: !1635)
!1638 = !DILocation(line: 201, column: 7, scope: !301, inlinedAt: !1635)
!1639 = !DILocation(line: 229, column: 3, scope: !301, inlinedAt: !1635)
!1640 = !DILocation(line: 230, column: 3, scope: !301, inlinedAt: !1635)
!1641 = !DILocation(line: 230, column: 13, scope: !301, inlinedAt: !1635)
!1642 = !DILocation(line: 0, scope: !1614, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 230, column: 18, scope: !301, inlinedAt: !1635)
!1644 = !DILocation(line: 0, scope: !1622, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 1137, column: 3, scope: !1614, inlinedAt: !1643)
!1646 = !DILocation(line: 59, column: 10, scope: !1622, inlinedAt: !1645)
!1647 = !DILocation(line: 231, column: 7, scope: !1630, inlinedAt: !1635)
!1648 = !DILocation(line: 231, column: 40, scope: !1630, inlinedAt: !1635)
!1649 = !DILocation(line: 231, column: 45, scope: !1630, inlinedAt: !1635)
!1650 = !DILocation(line: 235, column: 1, scope: !301, inlinedAt: !1635)
!1651 = !DILocation(line: 360, column: 13, scope: !1547)
!1652 = !DILocation(line: 0, scope: !1545)
!1653 = !DILocation(line: 361, column: 45, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1545, file: !265, line: 361, column: 11)
!1655 = !DILocation(line: 361, column: 11, scope: !1545)
!1656 = !DILocation(line: 362, column: 13, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !265, line: 362, column: 13)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !265, line: 362, column: 13)
!1659 = !DILocation(line: 362, column: 13, scope: !1658)
!1660 = !DILocation(line: 361, column: 52, scope: !1654)
!1661 = distinct !{!1661, !1655, !1662, !536}
!1662 = !DILocation(line: 362, column: 13, scope: !1545)
!1663 = !DILocation(line: 260, column: 10, scope: !1519)
!1664 = !DILocation(line: 365, column: 28, scope: !1547)
!1665 = !DILocation(line: 367, column: 7, scope: !1548)
!1666 = !DILocation(line: 370, column: 7, scope: !1548)
!1667 = !DILocation(line: 376, column: 11, scope: !1548)
!1668 = !DILocation(line: 381, column: 11, scope: !1548)
!1669 = !DILocation(line: 382, column: 9, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !265, line: 382, column: 9)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !265, line: 382, column: 9)
!1672 = distinct !DILexicalBlock(scope: !1548, file: !265, line: 381, column: 11)
!1673 = !DILocation(line: 382, column: 9, scope: !1671)
!1674 = !DILocation(line: 389, column: 7, scope: !1548)
!1675 = !DILocation(line: 392, column: 7, scope: !1548)
!1676 = !DILocation(line: 0, scope: !1550)
!1677 = !DILocation(line: 395, column: 8, scope: !1550)
!1678 = !DILocation(line: 395, column: 34, scope: !1553)
!1679 = !DILocation(line: 395, column: 26, scope: !1553)
!1680 = !DILocation(line: 395, column: 48, scope: !1553)
!1681 = !DILocation(line: 395, column: 55, scope: !1553)
!1682 = !DILocation(line: 395, column: 3, scope: !1550)
!1683 = !DILocation(line: 395, column: 67, scope: !1553)
!1684 = !DILocation(line: 0, scope: !1552)
!1685 = !DILocation(line: 402, column: 11, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1552, file: !265, line: 401, column: 11)
!1687 = !DILocation(line: 404, column: 17, scope: !1686)
!1688 = !DILocation(line: 405, column: 39, scope: !1686)
!1689 = !DILocation(line: 409, column: 32, scope: !1686)
!1690 = !DILocation(line: 405, column: 19, scope: !1686)
!1691 = !DILocation(line: 405, column: 15, scope: !1686)
!1692 = !DILocation(line: 410, column: 11, scope: !1686)
!1693 = !DILocation(line: 410, column: 25, scope: !1686)
!1694 = !DILocalVariable(name: "__s1", arg: 1, scope: !1695, file: !520, line: 974, type: !687)
!1695 = distinct !DISubprogram(name: "memeq", scope: !520, file: !520, line: 974, type: !1336, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1696)
!1696 = !{!1694, !1697, !1698}
!1697 = !DILocalVariable(name: "__s2", arg: 2, scope: !1695, file: !520, line: 974, type: !687)
!1698 = !DILocalVariable(name: "__n", arg: 3, scope: !1695, file: !520, line: 974, type: !54)
!1699 = !DILocation(line: 0, scope: !1695, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 410, column: 14, scope: !1686)
!1701 = !DILocation(line: 976, column: 11, scope: !1695, inlinedAt: !1700)
!1702 = !DILocation(line: 976, column: 10, scope: !1695, inlinedAt: !1700)
!1703 = !DILocation(line: 401, column: 11, scope: !1552)
!1704 = !DILocation(line: 417, column: 25, scope: !1552)
!1705 = !DILocation(line: 418, column: 7, scope: !1552)
!1706 = !DILocation(line: 421, column: 15, scope: !1559)
!1707 = !DILocation(line: 423, column: 15, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !265, line: 423, column: 15)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !265, line: 422, column: 13)
!1710 = distinct !DILexicalBlock(scope: !1559, file: !265, line: 421, column: 15)
!1711 = !DILocation(line: 423, column: 15, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !265, line: 423, column: 15)
!1713 = !DILocation(line: 423, column: 15, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !265, line: 423, column: 15)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !265, line: 423, column: 15)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !265, line: 423, column: 15)
!1717 = !DILocation(line: 423, column: 15, scope: !1715)
!1718 = !DILocation(line: 423, column: 15, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !265, line: 423, column: 15)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !265, line: 423, column: 15)
!1721 = !DILocation(line: 423, column: 15, scope: !1720)
!1722 = !DILocation(line: 423, column: 15, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !265, line: 423, column: 15)
!1724 = distinct !DILexicalBlock(scope: !1716, file: !265, line: 423, column: 15)
!1725 = !DILocation(line: 423, column: 15, scope: !1724)
!1726 = !DILocation(line: 423, column: 15, scope: !1716)
!1727 = !DILocation(line: 423, column: 15, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !265, line: 423, column: 15)
!1729 = distinct !DILexicalBlock(scope: !1708, file: !265, line: 423, column: 15)
!1730 = !DILocation(line: 423, column: 15, scope: !1729)
!1731 = !DILocation(line: 431, column: 19, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1709, file: !265, line: 430, column: 19)
!1733 = !DILocation(line: 431, column: 24, scope: !1732)
!1734 = !DILocation(line: 431, column: 28, scope: !1732)
!1735 = !DILocation(line: 431, column: 38, scope: !1732)
!1736 = !DILocation(line: 431, column: 48, scope: !1732)
!1737 = !DILocation(line: 431, column: 59, scope: !1732)
!1738 = !DILocation(line: 433, column: 19, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !265, line: 433, column: 19)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !265, line: 433, column: 19)
!1741 = distinct !DILexicalBlock(scope: !1732, file: !265, line: 432, column: 17)
!1742 = !DILocation(line: 433, column: 19, scope: !1740)
!1743 = !DILocation(line: 434, column: 19, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !265, line: 434, column: 19)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !265, line: 434, column: 19)
!1746 = !DILocation(line: 434, column: 19, scope: !1745)
!1747 = !DILocation(line: 435, column: 17, scope: !1741)
!1748 = !DILocation(line: 442, column: 20, scope: !1710)
!1749 = !DILocation(line: 447, column: 11, scope: !1559)
!1750 = !DILocation(line: 450, column: 19, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1559, file: !265, line: 448, column: 13)
!1752 = !DILocation(line: 456, column: 19, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1751, file: !265, line: 455, column: 19)
!1754 = !DILocation(line: 456, column: 24, scope: !1753)
!1755 = !DILocation(line: 456, column: 28, scope: !1753)
!1756 = !DILocation(line: 456, column: 38, scope: !1753)
!1757 = !DILocation(line: 456, column: 47, scope: !1753)
!1758 = !DILocation(line: 456, column: 41, scope: !1753)
!1759 = !DILocation(line: 456, column: 52, scope: !1753)
!1760 = !DILocation(line: 455, column: 19, scope: !1751)
!1761 = !DILocation(line: 457, column: 25, scope: !1753)
!1762 = !DILocation(line: 457, column: 17, scope: !1753)
!1763 = !DILocation(line: 464, column: 25, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1753, file: !265, line: 458, column: 19)
!1765 = !DILocation(line: 468, column: 21, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !265, line: 468, column: 21)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !265, line: 468, column: 21)
!1768 = !DILocation(line: 468, column: 21, scope: !1767)
!1769 = !DILocation(line: 469, column: 21, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !265, line: 469, column: 21)
!1771 = distinct !DILexicalBlock(scope: !1764, file: !265, line: 469, column: 21)
!1772 = !DILocation(line: 469, column: 21, scope: !1771)
!1773 = !DILocation(line: 470, column: 21, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !265, line: 470, column: 21)
!1775 = distinct !DILexicalBlock(scope: !1764, file: !265, line: 470, column: 21)
!1776 = !DILocation(line: 470, column: 21, scope: !1775)
!1777 = !DILocation(line: 471, column: 21, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !265, line: 471, column: 21)
!1779 = distinct !DILexicalBlock(scope: !1764, file: !265, line: 471, column: 21)
!1780 = !DILocation(line: 471, column: 21, scope: !1779)
!1781 = !DILocation(line: 472, column: 21, scope: !1764)
!1782 = !DILocation(line: 482, column: 33, scope: !1582)
!1783 = !DILocation(line: 483, column: 33, scope: !1582)
!1784 = !DILocation(line: 485, column: 33, scope: !1582)
!1785 = !DILocation(line: 486, column: 33, scope: !1582)
!1786 = !DILocation(line: 487, column: 33, scope: !1582)
!1787 = !DILocation(line: 490, column: 17, scope: !1582)
!1788 = !DILocation(line: 492, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !265, line: 491, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1582, file: !265, line: 490, column: 17)
!1791 = !DILocation(line: 499, column: 35, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1582, file: !265, line: 499, column: 17)
!1793 = !DILocation(line: 499, column: 57, scope: !1792)
!1794 = !DILocation(line: 0, scope: !1582)
!1795 = !DILocation(line: 502, column: 11, scope: !1582)
!1796 = !DILocation(line: 504, column: 17, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1582, file: !265, line: 503, column: 17)
!1798 = !DILocation(line: 507, column: 11, scope: !1582)
!1799 = !DILocation(line: 508, column: 17, scope: !1582)
!1800 = !DILocation(line: 517, column: 15, scope: !1559)
!1801 = !DILocation(line: 517, column: 40, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1559, file: !265, line: 517, column: 15)
!1803 = !DILocation(line: 517, column: 47, scope: !1802)
!1804 = !DILocation(line: 517, column: 18, scope: !1802)
!1805 = !DILocation(line: 521, column: 17, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1559, file: !265, line: 521, column: 15)
!1807 = !DILocation(line: 521, column: 15, scope: !1559)
!1808 = !DILocation(line: 525, column: 11, scope: !1559)
!1809 = !DILocation(line: 537, column: 15, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1559, file: !265, line: 536, column: 15)
!1811 = !DILocation(line: 536, column: 15, scope: !1559)
!1812 = !DILocation(line: 544, column: 15, scope: !1559)
!1813 = !DILocation(line: 546, column: 19, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !265, line: 545, column: 13)
!1815 = distinct !DILexicalBlock(scope: !1559, file: !265, line: 544, column: 15)
!1816 = !DILocation(line: 549, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !265, line: 549, column: 19)
!1818 = !DILocation(line: 549, column: 30, scope: !1817)
!1819 = !DILocation(line: 558, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !265, line: 558, column: 15)
!1821 = distinct !DILexicalBlock(scope: !1814, file: !265, line: 558, column: 15)
!1822 = !DILocation(line: 558, column: 15, scope: !1821)
!1823 = !DILocation(line: 559, column: 15, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !265, line: 559, column: 15)
!1825 = distinct !DILexicalBlock(scope: !1814, file: !265, line: 559, column: 15)
!1826 = !DILocation(line: 559, column: 15, scope: !1825)
!1827 = !DILocation(line: 560, column: 15, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !265, line: 560, column: 15)
!1829 = distinct !DILexicalBlock(scope: !1814, file: !265, line: 560, column: 15)
!1830 = !DILocation(line: 560, column: 15, scope: !1829)
!1831 = !DILocation(line: 562, column: 13, scope: !1814)
!1832 = !DILocation(line: 602, column: 17, scope: !1558)
!1833 = !DILocation(line: 0, scope: !1558)
!1834 = !DILocation(line: 605, column: 29, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1563, file: !265, line: 603, column: 15)
!1836 = !DILocation(line: 605, column: 41, scope: !1835)
!1837 = !DILocation(line: 670, column: 23, scope: !1579)
!1838 = !DILocation(line: 609, column: 17, scope: !1562)
!1839 = !DILocation(line: 609, column: 27, scope: !1562)
!1840 = !DILocation(line: 0, scope: !1614, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 609, column: 32, scope: !1562)
!1842 = !DILocation(line: 0, scope: !1622, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 1137, column: 3, scope: !1614, inlinedAt: !1841)
!1844 = !DILocation(line: 59, column: 10, scope: !1622, inlinedAt: !1843)
!1845 = !DILocation(line: 613, column: 29, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1562, file: !265, line: 613, column: 21)
!1847 = !DILocation(line: 613, column: 21, scope: !1562)
!1848 = !DILocation(line: 614, column: 29, scope: !1846)
!1849 = !DILocation(line: 614, column: 19, scope: !1846)
!1850 = !DILocation(line: 618, column: 21, scope: !1565)
!1851 = !DILocation(line: 620, column: 54, scope: !1565)
!1852 = !DILocation(line: 0, scope: !1565)
!1853 = !DILocation(line: 619, column: 36, scope: !1565)
!1854 = !DILocation(line: 621, column: 25, scope: !1565)
!1855 = !DILocation(line: 631, column: 38, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1574, file: !265, line: 629, column: 23)
!1857 = !DILocation(line: 631, column: 48, scope: !1856)
!1858 = !DILocation(line: 665, column: 19, scope: !1566)
!1859 = !DILocation(line: 666, column: 15, scope: !1563)
!1860 = !DILocation(line: 626, column: 25, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1575, file: !265, line: 624, column: 23)
!1862 = !DILocation(line: 631, column: 51, scope: !1856)
!1863 = !DILocation(line: 631, column: 25, scope: !1856)
!1864 = !DILocation(line: 632, column: 28, scope: !1856)
!1865 = !DILocation(line: 631, column: 34, scope: !1856)
!1866 = distinct !{!1866, !1863, !1864, !536}
!1867 = !DILocation(line: 646, column: 29, scope: !1572)
!1868 = !DILocation(line: 0, scope: !1570)
!1869 = !DILocation(line: 649, column: 49, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1570, file: !265, line: 648, column: 29)
!1871 = !DILocation(line: 649, column: 39, scope: !1870)
!1872 = !DILocation(line: 649, column: 31, scope: !1870)
!1873 = !DILocation(line: 648, column: 60, scope: !1870)
!1874 = !DILocation(line: 648, column: 50, scope: !1870)
!1875 = !DILocation(line: 648, column: 29, scope: !1570)
!1876 = distinct !{!1876, !1875, !1877, !536}
!1877 = !DILocation(line: 654, column: 33, scope: !1570)
!1878 = !DILocation(line: 657, column: 43, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1573, file: !265, line: 657, column: 29)
!1880 = !DILocalVariable(name: "wc", arg: 1, scope: !1881, file: !1882, line: 865, type: !1885)
!1881 = distinct !DISubprogram(name: "c32isprint", scope: !1882, file: !1882, line: 865, type: !1883, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1887)
!1882 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!44, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1886, line: 20, baseType: !6)
!1886 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1887 = !{!1880}
!1888 = !DILocation(line: 0, scope: !1881, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 657, column: 31, scope: !1879)
!1890 = !DILocation(line: 871, column: 10, scope: !1881, inlinedAt: !1889)
!1891 = !DILocation(line: 657, column: 31, scope: !1879)
!1892 = !DILocation(line: 664, column: 23, scope: !1565)
!1893 = !DILocation(line: 753, column: 2, scope: !1519)
!1894 = !DILocation(line: 756, column: 51, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1519, file: !265, line: 756, column: 7)
!1896 = !DILocation(line: 670, column: 19, scope: !1579)
!1897 = !DILocation(line: 670, column: 45, scope: !1579)
!1898 = !DILocation(line: 674, column: 33, scope: !1578)
!1899 = !DILocation(line: 0, scope: !1578)
!1900 = !DILocation(line: 676, column: 17, scope: !1578)
!1901 = !DILocation(line: 398, column: 12, scope: !1552)
!1902 = !DILocation(line: 678, column: 43, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !265, line: 678, column: 25)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !265, line: 677, column: 19)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !265, line: 676, column: 17)
!1906 = distinct !DILexicalBlock(scope: !1578, file: !265, line: 676, column: 17)
!1907 = !DILocation(line: 680, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !265, line: 680, column: 25)
!1909 = distinct !DILexicalBlock(scope: !1903, file: !265, line: 679, column: 23)
!1910 = !DILocation(line: 680, column: 25, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1908, file: !265, line: 680, column: 25)
!1912 = !DILocation(line: 680, column: 25, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !265, line: 680, column: 25)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !265, line: 680, column: 25)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !265, line: 680, column: 25)
!1916 = !DILocation(line: 680, column: 25, scope: !1914)
!1917 = !DILocation(line: 680, column: 25, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !265, line: 680, column: 25)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !265, line: 680, column: 25)
!1920 = !DILocation(line: 680, column: 25, scope: !1919)
!1921 = !DILocation(line: 680, column: 25, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !265, line: 680, column: 25)
!1923 = distinct !DILexicalBlock(scope: !1915, file: !265, line: 680, column: 25)
!1924 = !DILocation(line: 680, column: 25, scope: !1923)
!1925 = !DILocation(line: 680, column: 25, scope: !1915)
!1926 = !DILocation(line: 680, column: 25, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !265, line: 680, column: 25)
!1928 = distinct !DILexicalBlock(scope: !1908, file: !265, line: 680, column: 25)
!1929 = !DILocation(line: 680, column: 25, scope: !1928)
!1930 = !DILocation(line: 681, column: 25, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !265, line: 681, column: 25)
!1932 = distinct !DILexicalBlock(scope: !1909, file: !265, line: 681, column: 25)
!1933 = !DILocation(line: 681, column: 25, scope: !1932)
!1934 = !DILocation(line: 682, column: 25, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !265, line: 682, column: 25)
!1936 = distinct !DILexicalBlock(scope: !1909, file: !265, line: 682, column: 25)
!1937 = !DILocation(line: 682, column: 25, scope: !1936)
!1938 = !DILocation(line: 683, column: 38, scope: !1909)
!1939 = !DILocation(line: 683, column: 33, scope: !1909)
!1940 = !DILocation(line: 684, column: 23, scope: !1909)
!1941 = !DILocation(line: 685, column: 30, scope: !1903)
!1942 = !DILocation(line: 687, column: 25, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !265, line: 687, column: 25)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !265, line: 687, column: 25)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !265, line: 686, column: 23)
!1946 = distinct !DILexicalBlock(scope: !1903, file: !265, line: 685, column: 30)
!1947 = !DILocation(line: 687, column: 25, scope: !1944)
!1948 = !DILocation(line: 689, column: 23, scope: !1945)
!1949 = !DILocation(line: 690, column: 35, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1904, file: !265, line: 690, column: 25)
!1951 = !DILocation(line: 690, column: 30, scope: !1950)
!1952 = !DILocation(line: 690, column: 25, scope: !1904)
!1953 = !DILocation(line: 692, column: 21, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !265, line: 692, column: 21)
!1955 = distinct !DILexicalBlock(scope: !1904, file: !265, line: 692, column: 21)
!1956 = !DILocation(line: 692, column: 21, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !265, line: 692, column: 21)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !265, line: 692, column: 21)
!1959 = distinct !DILexicalBlock(scope: !1954, file: !265, line: 692, column: 21)
!1960 = !DILocation(line: 692, column: 21, scope: !1958)
!1961 = !DILocation(line: 692, column: 21, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !265, line: 692, column: 21)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !265, line: 692, column: 21)
!1964 = !DILocation(line: 692, column: 21, scope: !1963)
!1965 = !DILocation(line: 692, column: 21, scope: !1959)
!1966 = !DILocation(line: 0, scope: !1904)
!1967 = !DILocation(line: 693, column: 21, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !265, line: 693, column: 21)
!1969 = distinct !DILexicalBlock(scope: !1904, file: !265, line: 693, column: 21)
!1970 = !DILocation(line: 693, column: 21, scope: !1969)
!1971 = !DILocation(line: 694, column: 25, scope: !1904)
!1972 = !DILocation(line: 676, column: 17, scope: !1905)
!1973 = distinct !{!1973, !1974, !1975}
!1974 = !DILocation(line: 676, column: 17, scope: !1906)
!1975 = !DILocation(line: 695, column: 19, scope: !1906)
!1976 = !DILocation(line: 409, column: 30, scope: !1686)
!1977 = !DILocation(line: 702, column: 34, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1552, file: !265, line: 702, column: 11)
!1979 = !DILocation(line: 704, column: 14, scope: !1978)
!1980 = !DILocation(line: 705, column: 14, scope: !1978)
!1981 = !DILocation(line: 705, column: 35, scope: !1978)
!1982 = !DILocation(line: 705, column: 17, scope: !1978)
!1983 = !DILocation(line: 705, column: 47, scope: !1978)
!1984 = !DILocation(line: 705, column: 65, scope: !1978)
!1985 = !DILocation(line: 706, column: 11, scope: !1978)
!1986 = !DILocation(line: 702, column: 11, scope: !1552)
!1987 = !DILocation(line: 395, column: 15, scope: !1550)
!1988 = !DILocation(line: 709, column: 5, scope: !1552)
!1989 = !DILocation(line: 710, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1552, file: !265, line: 710, column: 7)
!1991 = !DILocation(line: 710, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1990, file: !265, line: 710, column: 7)
!1993 = !DILocation(line: 710, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !265, line: 710, column: 7)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !265, line: 710, column: 7)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !265, line: 710, column: 7)
!1997 = !DILocation(line: 710, column: 7, scope: !1995)
!1998 = !DILocation(line: 710, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !265, line: 710, column: 7)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !265, line: 710, column: 7)
!2001 = !DILocation(line: 710, column: 7, scope: !2000)
!2002 = !DILocation(line: 710, column: 7, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !265, line: 710, column: 7)
!2004 = distinct !DILexicalBlock(scope: !1996, file: !265, line: 710, column: 7)
!2005 = !DILocation(line: 710, column: 7, scope: !2004)
!2006 = !DILocation(line: 710, column: 7, scope: !1996)
!2007 = !DILocation(line: 710, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !265, line: 710, column: 7)
!2009 = distinct !DILexicalBlock(scope: !1990, file: !265, line: 710, column: 7)
!2010 = !DILocation(line: 710, column: 7, scope: !2009)
!2011 = !DILocation(line: 712, column: 5, scope: !1552)
!2012 = !DILocation(line: 713, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !265, line: 713, column: 7)
!2014 = distinct !DILexicalBlock(scope: !1552, file: !265, line: 713, column: 7)
!2015 = !DILocation(line: 417, column: 21, scope: !1552)
!2016 = !DILocation(line: 713, column: 7, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !265, line: 713, column: 7)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !265, line: 713, column: 7)
!2019 = distinct !DILexicalBlock(scope: !2013, file: !265, line: 713, column: 7)
!2020 = !DILocation(line: 713, column: 7, scope: !2018)
!2021 = !DILocation(line: 713, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !265, line: 713, column: 7)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !265, line: 713, column: 7)
!2024 = !DILocation(line: 713, column: 7, scope: !2023)
!2025 = !DILocation(line: 713, column: 7, scope: !2019)
!2026 = !DILocation(line: 714, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !265, line: 714, column: 7)
!2028 = distinct !DILexicalBlock(scope: !1552, file: !265, line: 714, column: 7)
!2029 = !DILocation(line: 714, column: 7, scope: !2028)
!2030 = !DILocation(line: 716, column: 11, scope: !1552)
!2031 = !DILocation(line: 718, column: 5, scope: !1553)
!2032 = !DILocation(line: 395, column: 82, scope: !1553)
!2033 = !DILocation(line: 395, column: 3, scope: !1553)
!2034 = distinct !{!2034, !1682, !2035, !536}
!2035 = !DILocation(line: 718, column: 5, scope: !1550)
!2036 = !DILocation(line: 720, column: 11, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1519, file: !265, line: 720, column: 7)
!2038 = !DILocation(line: 720, column: 16, scope: !2037)
!2039 = !DILocation(line: 728, column: 51, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1519, file: !265, line: 728, column: 7)
!2041 = !DILocation(line: 731, column: 11, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2040, file: !265, line: 730, column: 5)
!2043 = !DILocation(line: 732, column: 16, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2042, file: !265, line: 731, column: 11)
!2045 = !DILocation(line: 732, column: 9, scope: !2044)
!2046 = !DILocation(line: 736, column: 18, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !265, line: 736, column: 16)
!2048 = !DILocation(line: 736, column: 29, scope: !2047)
!2049 = !DILocation(line: 745, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1519, file: !265, line: 745, column: 7)
!2051 = !DILocation(line: 745, column: 20, scope: !2050)
!2052 = !DILocation(line: 746, column: 12, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !265, line: 746, column: 5)
!2054 = distinct !DILexicalBlock(scope: !2050, file: !265, line: 746, column: 5)
!2055 = !DILocation(line: 746, column: 5, scope: !2054)
!2056 = !DILocation(line: 747, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !265, line: 747, column: 7)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !265, line: 747, column: 7)
!2059 = !DILocation(line: 747, column: 7, scope: !2058)
!2060 = !DILocation(line: 746, column: 39, scope: !2053)
!2061 = distinct !{!2061, !2055, !2062, !536}
!2062 = !DILocation(line: 747, column: 7, scope: !2054)
!2063 = !DILocation(line: 749, column: 11, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1519, file: !265, line: 749, column: 7)
!2065 = !DILocation(line: 749, column: 7, scope: !1519)
!2066 = !DILocation(line: 750, column: 5, scope: !2064)
!2067 = !DILocation(line: 750, column: 17, scope: !2064)
!2068 = !DILocation(line: 756, column: 21, scope: !1895)
!2069 = !DILocation(line: 760, column: 42, scope: !1519)
!2070 = !DILocation(line: 758, column: 10, scope: !1519)
!2071 = !DILocation(line: 758, column: 3, scope: !1519)
!2072 = !DILocation(line: 762, column: 1, scope: !1519)
!2073 = !DISubprogram(name: "iswprint", scope: !2074, file: !2074, line: 120, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!2074 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2075 = distinct !DISubprogram(name: "quotearg_alloc", scope: !265, file: !265, line: 788, type: !2076, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!51, !57, !54, !1411}
!2078 = !{!2079, !2080, !2081}
!2079 = !DILocalVariable(name: "arg", arg: 1, scope: !2075, file: !265, line: 788, type: !57)
!2080 = !DILocalVariable(name: "argsize", arg: 2, scope: !2075, file: !265, line: 788, type: !54)
!2081 = !DILocalVariable(name: "o", arg: 3, scope: !2075, file: !265, line: 789, type: !1411)
!2082 = !DILocation(line: 0, scope: !2075)
!2083 = !DILocalVariable(name: "arg", arg: 1, scope: !2084, file: !265, line: 801, type: !57)
!2084 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !265, file: !265, line: 801, type: !2085, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!51, !57, !54, !383, !1411}
!2087 = !{!2083, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095}
!2088 = !DILocalVariable(name: "argsize", arg: 2, scope: !2084, file: !265, line: 801, type: !54)
!2089 = !DILocalVariable(name: "size", arg: 3, scope: !2084, file: !265, line: 801, type: !383)
!2090 = !DILocalVariable(name: "o", arg: 4, scope: !2084, file: !265, line: 802, type: !1411)
!2091 = !DILocalVariable(name: "p", scope: !2084, file: !265, line: 804, type: !1411)
!2092 = !DILocalVariable(name: "saved_errno", scope: !2084, file: !265, line: 805, type: !44)
!2093 = !DILocalVariable(name: "flags", scope: !2084, file: !265, line: 807, type: !44)
!2094 = !DILocalVariable(name: "bufsize", scope: !2084, file: !265, line: 808, type: !54)
!2095 = !DILocalVariable(name: "buf", scope: !2084, file: !265, line: 812, type: !51)
!2096 = !DILocation(line: 0, scope: !2084, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 791, column: 10, scope: !2075)
!2098 = !DILocation(line: 804, column: 37, scope: !2084, inlinedAt: !2097)
!2099 = !DILocation(line: 805, column: 21, scope: !2084, inlinedAt: !2097)
!2100 = !DILocation(line: 807, column: 18, scope: !2084, inlinedAt: !2097)
!2101 = !DILocation(line: 807, column: 24, scope: !2084, inlinedAt: !2097)
!2102 = !DILocation(line: 808, column: 72, scope: !2084, inlinedAt: !2097)
!2103 = !DILocation(line: 809, column: 53, scope: !2084, inlinedAt: !2097)
!2104 = !DILocation(line: 810, column: 49, scope: !2084, inlinedAt: !2097)
!2105 = !DILocation(line: 811, column: 49, scope: !2084, inlinedAt: !2097)
!2106 = !DILocation(line: 808, column: 20, scope: !2084, inlinedAt: !2097)
!2107 = !DILocation(line: 811, column: 62, scope: !2084, inlinedAt: !2097)
!2108 = !DILocation(line: 812, column: 15, scope: !2084, inlinedAt: !2097)
!2109 = !DILocation(line: 813, column: 60, scope: !2084, inlinedAt: !2097)
!2110 = !DILocation(line: 815, column: 32, scope: !2084, inlinedAt: !2097)
!2111 = !DILocation(line: 815, column: 47, scope: !2084, inlinedAt: !2097)
!2112 = !DILocation(line: 813, column: 3, scope: !2084, inlinedAt: !2097)
!2113 = !DILocation(line: 816, column: 9, scope: !2084, inlinedAt: !2097)
!2114 = !DILocation(line: 791, column: 3, scope: !2075)
!2115 = !DILocation(line: 0, scope: !2084)
!2116 = !DILocation(line: 804, column: 37, scope: !2084)
!2117 = !DILocation(line: 805, column: 21, scope: !2084)
!2118 = !DILocation(line: 807, column: 18, scope: !2084)
!2119 = !DILocation(line: 807, column: 27, scope: !2084)
!2120 = !DILocation(line: 807, column: 24, scope: !2084)
!2121 = !DILocation(line: 808, column: 72, scope: !2084)
!2122 = !DILocation(line: 809, column: 53, scope: !2084)
!2123 = !DILocation(line: 810, column: 49, scope: !2084)
!2124 = !DILocation(line: 811, column: 49, scope: !2084)
!2125 = !DILocation(line: 808, column: 20, scope: !2084)
!2126 = !DILocation(line: 811, column: 62, scope: !2084)
!2127 = !DILocation(line: 812, column: 15, scope: !2084)
!2128 = !DILocation(line: 813, column: 60, scope: !2084)
!2129 = !DILocation(line: 815, column: 32, scope: !2084)
!2130 = !DILocation(line: 815, column: 47, scope: !2084)
!2131 = !DILocation(line: 813, column: 3, scope: !2084)
!2132 = !DILocation(line: 816, column: 9, scope: !2084)
!2133 = !DILocation(line: 817, column: 7, scope: !2084)
!2134 = !DILocation(line: 818, column: 11, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2084, file: !265, line: 817, column: 7)
!2136 = !{!853, !853, i64 0}
!2137 = !DILocation(line: 818, column: 5, scope: !2135)
!2138 = !DILocation(line: 819, column: 3, scope: !2084)
!2139 = distinct !DISubprogram(name: "quotearg_free", scope: !265, file: !265, line: 837, type: !218, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2140)
!2140 = !{!2141, !2142}
!2141 = !DILocalVariable(name: "sv", scope: !2139, file: !265, line: 839, type: !324)
!2142 = !DILocalVariable(name: "i", scope: !2143, file: !265, line: 840, type: !44)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !265, line: 840, column: 3)
!2144 = !DILocation(line: 839, column: 24, scope: !2139)
!2145 = !DILocation(line: 0, scope: !2139)
!2146 = !DILocation(line: 0, scope: !2143)
!2147 = !DILocation(line: 840, column: 21, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !265, line: 840, column: 3)
!2149 = !DILocation(line: 840, column: 3, scope: !2143)
!2150 = !DILocation(line: 842, column: 13, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2139, file: !265, line: 842, column: 7)
!2152 = !{!2153, !475, i64 8}
!2153 = !{!"slotvec", !853, i64 0, !475, i64 8}
!2154 = !DILocation(line: 842, column: 17, scope: !2151)
!2155 = !DILocation(line: 842, column: 7, scope: !2139)
!2156 = !DILocation(line: 841, column: 17, scope: !2148)
!2157 = !DILocation(line: 841, column: 5, scope: !2148)
!2158 = !DILocation(line: 840, column: 32, scope: !2148)
!2159 = distinct !{!2159, !2149, !2160, !536}
!2160 = !DILocation(line: 841, column: 20, scope: !2143)
!2161 = !DILocation(line: 844, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2151, file: !265, line: 843, column: 5)
!2163 = !DILocation(line: 845, column: 21, scope: !2162)
!2164 = !{!2153, !853, i64 0}
!2165 = !DILocation(line: 846, column: 20, scope: !2162)
!2166 = !DILocation(line: 847, column: 5, scope: !2162)
!2167 = !DILocation(line: 848, column: 10, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2139, file: !265, line: 848, column: 7)
!2169 = !DILocation(line: 848, column: 7, scope: !2139)
!2170 = !DILocation(line: 850, column: 13, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2168, file: !265, line: 849, column: 5)
!2172 = !DILocation(line: 850, column: 7, scope: !2171)
!2173 = !DILocation(line: 851, column: 15, scope: !2171)
!2174 = !DILocation(line: 852, column: 5, scope: !2171)
!2175 = !DILocation(line: 853, column: 10, scope: !2139)
!2176 = !DILocation(line: 854, column: 1, scope: !2139)
!2177 = distinct !DISubprogram(name: "quotearg_n", scope: !265, file: !265, line: 919, type: !677, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2178)
!2178 = !{!2179, !2180}
!2179 = !DILocalVariable(name: "n", arg: 1, scope: !2177, file: !265, line: 919, type: !44)
!2180 = !DILocalVariable(name: "arg", arg: 2, scope: !2177, file: !265, line: 919, type: !57)
!2181 = !DILocation(line: 0, scope: !2177)
!2182 = !DILocation(line: 921, column: 10, scope: !2177)
!2183 = !DILocation(line: 921, column: 3, scope: !2177)
!2184 = distinct !DISubprogram(name: "quotearg_n_options", scope: !265, file: !265, line: 866, type: !2185, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!51, !44, !57, !54, !1411}
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2198, !2199, !2201, !2202, !2203}
!2188 = !DILocalVariable(name: "n", arg: 1, scope: !2184, file: !265, line: 866, type: !44)
!2189 = !DILocalVariable(name: "arg", arg: 2, scope: !2184, file: !265, line: 866, type: !57)
!2190 = !DILocalVariable(name: "argsize", arg: 3, scope: !2184, file: !265, line: 866, type: !54)
!2191 = !DILocalVariable(name: "options", arg: 4, scope: !2184, file: !265, line: 867, type: !1411)
!2192 = !DILocalVariable(name: "saved_errno", scope: !2184, file: !265, line: 869, type: !44)
!2193 = !DILocalVariable(name: "sv", scope: !2184, file: !265, line: 871, type: !324)
!2194 = !DILocalVariable(name: "nslots_max", scope: !2184, file: !265, line: 873, type: !44)
!2195 = !DILocalVariable(name: "preallocated", scope: !2196, file: !265, line: 879, type: !60)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !265, line: 878, column: 5)
!2197 = distinct !DILexicalBlock(scope: !2184, file: !265, line: 877, column: 7)
!2198 = !DILocalVariable(name: "new_nslots", scope: !2196, file: !265, line: 880, type: !396)
!2199 = !DILocalVariable(name: "size", scope: !2200, file: !265, line: 891, type: !54)
!2200 = distinct !DILexicalBlock(scope: !2184, file: !265, line: 890, column: 3)
!2201 = !DILocalVariable(name: "val", scope: !2200, file: !265, line: 892, type: !51)
!2202 = !DILocalVariable(name: "flags", scope: !2200, file: !265, line: 894, type: !44)
!2203 = !DILocalVariable(name: "qsize", scope: !2200, file: !265, line: 895, type: !54)
!2204 = !DILocation(line: 0, scope: !2184)
!2205 = !DILocation(line: 869, column: 21, scope: !2184)
!2206 = !DILocation(line: 871, column: 24, scope: !2184)
!2207 = !DILocation(line: 874, column: 17, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2184, file: !265, line: 874, column: 7)
!2209 = !DILocation(line: 875, column: 5, scope: !2208)
!2210 = !DILocation(line: 877, column: 7, scope: !2197)
!2211 = !DILocation(line: 877, column: 14, scope: !2197)
!2212 = !DILocation(line: 877, column: 7, scope: !2184)
!2213 = !DILocation(line: 879, column: 31, scope: !2196)
!2214 = !DILocation(line: 0, scope: !2196)
!2215 = !DILocation(line: 880, column: 7, scope: !2196)
!2216 = !DILocation(line: 880, column: 26, scope: !2196)
!2217 = !DILocation(line: 880, column: 13, scope: !2196)
!2218 = !DILocation(line: 882, column: 31, scope: !2196)
!2219 = !DILocation(line: 883, column: 33, scope: !2196)
!2220 = !DILocation(line: 883, column: 42, scope: !2196)
!2221 = !DILocation(line: 883, column: 31, scope: !2196)
!2222 = !DILocation(line: 882, column: 22, scope: !2196)
!2223 = !DILocation(line: 882, column: 15, scope: !2196)
!2224 = !DILocation(line: 884, column: 11, scope: !2196)
!2225 = !DILocation(line: 885, column: 15, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2196, file: !265, line: 884, column: 11)
!2227 = !{i64 0, i64 8, !2136, i64 8, i64 8, !474}
!2228 = !DILocation(line: 885, column: 9, scope: !2226)
!2229 = !DILocation(line: 886, column: 20, scope: !2196)
!2230 = !DILocation(line: 886, column: 18, scope: !2196)
!2231 = !DILocation(line: 886, column: 15, scope: !2196)
!2232 = !DILocation(line: 886, column: 32, scope: !2196)
!2233 = !DILocation(line: 886, column: 43, scope: !2196)
!2234 = !DILocation(line: 886, column: 53, scope: !2196)
!2235 = !DILocation(line: 0, scope: !1622, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 886, column: 7, scope: !2196)
!2237 = !DILocation(line: 59, column: 10, scope: !1622, inlinedAt: !2236)
!2238 = !DILocation(line: 887, column: 16, scope: !2196)
!2239 = !DILocation(line: 887, column: 14, scope: !2196)
!2240 = !DILocation(line: 888, column: 5, scope: !2197)
!2241 = !DILocation(line: 888, column: 5, scope: !2196)
!2242 = !DILocation(line: 891, column: 19, scope: !2200)
!2243 = !DILocation(line: 891, column: 25, scope: !2200)
!2244 = !DILocation(line: 0, scope: !2200)
!2245 = !DILocation(line: 892, column: 23, scope: !2200)
!2246 = !DILocation(line: 894, column: 26, scope: !2200)
!2247 = !DILocation(line: 894, column: 32, scope: !2200)
!2248 = !DILocation(line: 896, column: 55, scope: !2200)
!2249 = !DILocation(line: 897, column: 46, scope: !2200)
!2250 = !DILocation(line: 898, column: 55, scope: !2200)
!2251 = !DILocation(line: 899, column: 55, scope: !2200)
!2252 = !DILocation(line: 895, column: 20, scope: !2200)
!2253 = !DILocation(line: 901, column: 14, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2200, file: !265, line: 901, column: 9)
!2255 = !DILocation(line: 901, column: 9, scope: !2200)
!2256 = !DILocation(line: 903, column: 35, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !265, line: 902, column: 7)
!2258 = !DILocation(line: 903, column: 20, scope: !2257)
!2259 = !DILocation(line: 904, column: 17, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !265, line: 904, column: 13)
!2261 = !DILocation(line: 904, column: 13, scope: !2257)
!2262 = !DILocation(line: 905, column: 11, scope: !2260)
!2263 = !DILocation(line: 906, column: 27, scope: !2257)
!2264 = !DILocation(line: 906, column: 19, scope: !2257)
!2265 = !DILocation(line: 907, column: 69, scope: !2257)
!2266 = !DILocation(line: 909, column: 44, scope: !2257)
!2267 = !DILocation(line: 910, column: 44, scope: !2257)
!2268 = !DILocation(line: 907, column: 9, scope: !2257)
!2269 = !DILocation(line: 911, column: 7, scope: !2257)
!2270 = !DILocation(line: 913, column: 11, scope: !2200)
!2271 = !DILocation(line: 914, column: 5, scope: !2200)
!2272 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !265, file: !265, line: 925, type: !2273, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!51, !44, !57, !54}
!2275 = !{!2276, !2277, !2278}
!2276 = !DILocalVariable(name: "n", arg: 1, scope: !2272, file: !265, line: 925, type: !44)
!2277 = !DILocalVariable(name: "arg", arg: 2, scope: !2272, file: !265, line: 925, type: !57)
!2278 = !DILocalVariable(name: "argsize", arg: 3, scope: !2272, file: !265, line: 925, type: !54)
!2279 = !DILocation(line: 0, scope: !2272)
!2280 = !DILocation(line: 927, column: 10, scope: !2272)
!2281 = !DILocation(line: 927, column: 3, scope: !2272)
!2282 = distinct !DISubprogram(name: "quotearg", scope: !265, file: !265, line: 931, type: !681, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2283)
!2283 = !{!2284}
!2284 = !DILocalVariable(name: "arg", arg: 1, scope: !2282, file: !265, line: 931, type: !57)
!2285 = !DILocation(line: 0, scope: !2282)
!2286 = !DILocation(line: 0, scope: !2177, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 933, column: 10, scope: !2282)
!2288 = !DILocation(line: 921, column: 10, scope: !2177, inlinedAt: !2287)
!2289 = !DILocation(line: 933, column: 3, scope: !2282)
!2290 = distinct !DISubprogram(name: "quotearg_mem", scope: !265, file: !265, line: 937, type: !2291, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!51, !57, !54}
!2293 = !{!2294, !2295}
!2294 = !DILocalVariable(name: "arg", arg: 1, scope: !2290, file: !265, line: 937, type: !57)
!2295 = !DILocalVariable(name: "argsize", arg: 2, scope: !2290, file: !265, line: 937, type: !54)
!2296 = !DILocation(line: 0, scope: !2290)
!2297 = !DILocation(line: 0, scope: !2272, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 939, column: 10, scope: !2290)
!2299 = !DILocation(line: 927, column: 10, scope: !2272, inlinedAt: !2298)
!2300 = !DILocation(line: 939, column: 3, scope: !2290)
!2301 = distinct !DISubprogram(name: "quotearg_n_style", scope: !265, file: !265, line: 943, type: !2302, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!51, !44, !29, !57}
!2304 = !{!2305, !2306, !2307, !2308}
!2305 = !DILocalVariable(name: "n", arg: 1, scope: !2301, file: !265, line: 943, type: !44)
!2306 = !DILocalVariable(name: "s", arg: 2, scope: !2301, file: !265, line: 943, type: !29)
!2307 = !DILocalVariable(name: "arg", arg: 3, scope: !2301, file: !265, line: 943, type: !57)
!2308 = !DILocalVariable(name: "o", scope: !2301, file: !265, line: 945, type: !1412)
!2309 = !DILocation(line: 0, scope: !2301)
!2310 = !DILocation(line: 945, column: 3, scope: !2301)
!2311 = !DILocation(line: 945, column: 32, scope: !2301)
!2312 = !{!2313}
!2313 = distinct !{!2313, !2314, !"quoting_options_from_style: argument 0"}
!2314 = distinct !{!2314, !"quoting_options_from_style"}
!2315 = !DILocation(line: 945, column: 36, scope: !2301)
!2316 = !DILocalVariable(name: "style", arg: 1, scope: !2317, file: !265, line: 183, type: !29)
!2317 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !265, file: !265, line: 183, type: !2318, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!282, !29}
!2320 = !{!2316, !2321}
!2321 = !DILocalVariable(name: "o", scope: !2317, file: !265, line: 185, type: !282)
!2322 = !DILocation(line: 0, scope: !2317, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 945, column: 36, scope: !2301)
!2324 = !DILocation(line: 185, column: 26, scope: !2317, inlinedAt: !2323)
!2325 = !DILocation(line: 186, column: 13, scope: !2326, inlinedAt: !2323)
!2326 = distinct !DILexicalBlock(scope: !2317, file: !265, line: 186, column: 7)
!2327 = !DILocation(line: 186, column: 7, scope: !2317, inlinedAt: !2323)
!2328 = !DILocation(line: 187, column: 5, scope: !2326, inlinedAt: !2323)
!2329 = !DILocation(line: 188, column: 5, scope: !2317, inlinedAt: !2323)
!2330 = !DILocation(line: 188, column: 11, scope: !2317, inlinedAt: !2323)
!2331 = !DILocation(line: 946, column: 10, scope: !2301)
!2332 = !DILocation(line: 947, column: 1, scope: !2301)
!2333 = !DILocation(line: 946, column: 3, scope: !2301)
!2334 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !265, file: !265, line: 950, type: !2335, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2337)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!51, !44, !29, !57, !54}
!2337 = !{!2338, !2339, !2340, !2341, !2342}
!2338 = !DILocalVariable(name: "n", arg: 1, scope: !2334, file: !265, line: 950, type: !44)
!2339 = !DILocalVariable(name: "s", arg: 2, scope: !2334, file: !265, line: 950, type: !29)
!2340 = !DILocalVariable(name: "arg", arg: 3, scope: !2334, file: !265, line: 951, type: !57)
!2341 = !DILocalVariable(name: "argsize", arg: 4, scope: !2334, file: !265, line: 951, type: !54)
!2342 = !DILocalVariable(name: "o", scope: !2334, file: !265, line: 953, type: !1412)
!2343 = !DILocation(line: 0, scope: !2334)
!2344 = !DILocation(line: 953, column: 3, scope: !2334)
!2345 = !DILocation(line: 953, column: 32, scope: !2334)
!2346 = !{!2347}
!2347 = distinct !{!2347, !2348, !"quoting_options_from_style: argument 0"}
!2348 = distinct !{!2348, !"quoting_options_from_style"}
!2349 = !DILocation(line: 953, column: 36, scope: !2334)
!2350 = !DILocation(line: 0, scope: !2317, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 953, column: 36, scope: !2334)
!2352 = !DILocation(line: 185, column: 26, scope: !2317, inlinedAt: !2351)
!2353 = !DILocation(line: 186, column: 13, scope: !2326, inlinedAt: !2351)
!2354 = !DILocation(line: 186, column: 7, scope: !2317, inlinedAt: !2351)
!2355 = !DILocation(line: 187, column: 5, scope: !2326, inlinedAt: !2351)
!2356 = !DILocation(line: 188, column: 5, scope: !2317, inlinedAt: !2351)
!2357 = !DILocation(line: 188, column: 11, scope: !2317, inlinedAt: !2351)
!2358 = !DILocation(line: 954, column: 10, scope: !2334)
!2359 = !DILocation(line: 955, column: 1, scope: !2334)
!2360 = !DILocation(line: 954, column: 3, scope: !2334)
!2361 = distinct !DISubprogram(name: "quotearg_style", scope: !265, file: !265, line: 958, type: !2362, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!51, !29, !57}
!2364 = !{!2365, !2366}
!2365 = !DILocalVariable(name: "s", arg: 1, scope: !2361, file: !265, line: 958, type: !29)
!2366 = !DILocalVariable(name: "arg", arg: 2, scope: !2361, file: !265, line: 958, type: !57)
!2367 = !DILocation(line: 0, scope: !2361)
!2368 = !DILocation(line: 0, scope: !2301, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 960, column: 10, scope: !2361)
!2370 = !DILocation(line: 945, column: 3, scope: !2301, inlinedAt: !2369)
!2371 = !DILocation(line: 945, column: 32, scope: !2301, inlinedAt: !2369)
!2372 = !{!2373}
!2373 = distinct !{!2373, !2374, !"quoting_options_from_style: argument 0"}
!2374 = distinct !{!2374, !"quoting_options_from_style"}
!2375 = !DILocation(line: 945, column: 36, scope: !2301, inlinedAt: !2369)
!2376 = !DILocation(line: 0, scope: !2317, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 945, column: 36, scope: !2301, inlinedAt: !2369)
!2378 = !DILocation(line: 185, column: 26, scope: !2317, inlinedAt: !2377)
!2379 = !DILocation(line: 186, column: 13, scope: !2326, inlinedAt: !2377)
!2380 = !DILocation(line: 186, column: 7, scope: !2317, inlinedAt: !2377)
!2381 = !DILocation(line: 187, column: 5, scope: !2326, inlinedAt: !2377)
!2382 = !DILocation(line: 188, column: 5, scope: !2317, inlinedAt: !2377)
!2383 = !DILocation(line: 188, column: 11, scope: !2317, inlinedAt: !2377)
!2384 = !DILocation(line: 946, column: 10, scope: !2301, inlinedAt: !2369)
!2385 = !DILocation(line: 947, column: 1, scope: !2301, inlinedAt: !2369)
!2386 = !DILocation(line: 960, column: 3, scope: !2361)
!2387 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !265, file: !265, line: 964, type: !2388, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!51, !29, !57, !54}
!2390 = !{!2391, !2392, !2393}
!2391 = !DILocalVariable(name: "s", arg: 1, scope: !2387, file: !265, line: 964, type: !29)
!2392 = !DILocalVariable(name: "arg", arg: 2, scope: !2387, file: !265, line: 964, type: !57)
!2393 = !DILocalVariable(name: "argsize", arg: 3, scope: !2387, file: !265, line: 964, type: !54)
!2394 = !DILocation(line: 0, scope: !2387)
!2395 = !DILocation(line: 0, scope: !2334, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 966, column: 10, scope: !2387)
!2397 = !DILocation(line: 953, column: 3, scope: !2334, inlinedAt: !2396)
!2398 = !DILocation(line: 953, column: 32, scope: !2334, inlinedAt: !2396)
!2399 = !{!2400}
!2400 = distinct !{!2400, !2401, !"quoting_options_from_style: argument 0"}
!2401 = distinct !{!2401, !"quoting_options_from_style"}
!2402 = !DILocation(line: 953, column: 36, scope: !2334, inlinedAt: !2396)
!2403 = !DILocation(line: 0, scope: !2317, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 953, column: 36, scope: !2334, inlinedAt: !2396)
!2405 = !DILocation(line: 185, column: 26, scope: !2317, inlinedAt: !2404)
!2406 = !DILocation(line: 186, column: 13, scope: !2326, inlinedAt: !2404)
!2407 = !DILocation(line: 186, column: 7, scope: !2317, inlinedAt: !2404)
!2408 = !DILocation(line: 187, column: 5, scope: !2326, inlinedAt: !2404)
!2409 = !DILocation(line: 188, column: 5, scope: !2317, inlinedAt: !2404)
!2410 = !DILocation(line: 188, column: 11, scope: !2317, inlinedAt: !2404)
!2411 = !DILocation(line: 954, column: 10, scope: !2334, inlinedAt: !2396)
!2412 = !DILocation(line: 955, column: 1, scope: !2334, inlinedAt: !2396)
!2413 = !DILocation(line: 966, column: 3, scope: !2387)
!2414 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !265, file: !265, line: 970, type: !2415, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!51, !57, !54, !52}
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DILocalVariable(name: "arg", arg: 1, scope: !2414, file: !265, line: 970, type: !57)
!2419 = !DILocalVariable(name: "argsize", arg: 2, scope: !2414, file: !265, line: 970, type: !54)
!2420 = !DILocalVariable(name: "ch", arg: 3, scope: !2414, file: !265, line: 970, type: !52)
!2421 = !DILocalVariable(name: "options", scope: !2414, file: !265, line: 972, type: !282)
!2422 = !DILocation(line: 0, scope: !2414)
!2423 = !DILocation(line: 972, column: 3, scope: !2414)
!2424 = !DILocation(line: 972, column: 26, scope: !2414)
!2425 = !DILocation(line: 973, column: 13, scope: !2414)
!2426 = !{i64 0, i64 4, !578, i64 4, i64 4, !569, i64 8, i64 32, !578, i64 40, i64 8, !474, i64 48, i64 8, !474}
!2427 = !DILocation(line: 0, scope: !1432, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 974, column: 3, scope: !2414)
!2429 = !DILocation(line: 147, column: 62, scope: !1432, inlinedAt: !2428)
!2430 = !DILocation(line: 147, column: 57, scope: !1432, inlinedAt: !2428)
!2431 = !DILocation(line: 148, column: 15, scope: !1432, inlinedAt: !2428)
!2432 = !DILocation(line: 149, column: 21, scope: !1432, inlinedAt: !2428)
!2433 = !DILocation(line: 149, column: 24, scope: !1432, inlinedAt: !2428)
!2434 = !DILocation(line: 149, column: 34, scope: !1432, inlinedAt: !2428)
!2435 = !DILocation(line: 150, column: 19, scope: !1432, inlinedAt: !2428)
!2436 = !DILocation(line: 150, column: 24, scope: !1432, inlinedAt: !2428)
!2437 = !DILocation(line: 150, column: 6, scope: !1432, inlinedAt: !2428)
!2438 = !DILocation(line: 975, column: 10, scope: !2414)
!2439 = !DILocation(line: 976, column: 1, scope: !2414)
!2440 = !DILocation(line: 975, column: 3, scope: !2414)
!2441 = distinct !DISubprogram(name: "quotearg_char", scope: !265, file: !265, line: 979, type: !2442, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!51, !57, !52}
!2444 = !{!2445, !2446}
!2445 = !DILocalVariable(name: "arg", arg: 1, scope: !2441, file: !265, line: 979, type: !57)
!2446 = !DILocalVariable(name: "ch", arg: 2, scope: !2441, file: !265, line: 979, type: !52)
!2447 = !DILocation(line: 0, scope: !2441)
!2448 = !DILocation(line: 0, scope: !2414, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 981, column: 10, scope: !2441)
!2450 = !DILocation(line: 972, column: 3, scope: !2414, inlinedAt: !2449)
!2451 = !DILocation(line: 972, column: 26, scope: !2414, inlinedAt: !2449)
!2452 = !DILocation(line: 973, column: 13, scope: !2414, inlinedAt: !2449)
!2453 = !DILocation(line: 0, scope: !1432, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 974, column: 3, scope: !2414, inlinedAt: !2449)
!2455 = !DILocation(line: 147, column: 62, scope: !1432, inlinedAt: !2454)
!2456 = !DILocation(line: 147, column: 57, scope: !1432, inlinedAt: !2454)
!2457 = !DILocation(line: 148, column: 15, scope: !1432, inlinedAt: !2454)
!2458 = !DILocation(line: 149, column: 21, scope: !1432, inlinedAt: !2454)
!2459 = !DILocation(line: 149, column: 24, scope: !1432, inlinedAt: !2454)
!2460 = !DILocation(line: 149, column: 34, scope: !1432, inlinedAt: !2454)
!2461 = !DILocation(line: 150, column: 19, scope: !1432, inlinedAt: !2454)
!2462 = !DILocation(line: 150, column: 24, scope: !1432, inlinedAt: !2454)
!2463 = !DILocation(line: 150, column: 6, scope: !1432, inlinedAt: !2454)
!2464 = !DILocation(line: 975, column: 10, scope: !2414, inlinedAt: !2449)
!2465 = !DILocation(line: 976, column: 1, scope: !2414, inlinedAt: !2449)
!2466 = !DILocation(line: 981, column: 3, scope: !2441)
!2467 = distinct !DISubprogram(name: "quotearg_colon", scope: !265, file: !265, line: 985, type: !681, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2468)
!2468 = !{!2469}
!2469 = !DILocalVariable(name: "arg", arg: 1, scope: !2467, file: !265, line: 985, type: !57)
!2470 = !DILocation(line: 0, scope: !2467)
!2471 = !DILocation(line: 0, scope: !2441, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 987, column: 10, scope: !2467)
!2473 = !DILocation(line: 0, scope: !2414, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 981, column: 10, scope: !2441, inlinedAt: !2472)
!2475 = !DILocation(line: 972, column: 3, scope: !2414, inlinedAt: !2474)
!2476 = !DILocation(line: 972, column: 26, scope: !2414, inlinedAt: !2474)
!2477 = !DILocation(line: 973, column: 13, scope: !2414, inlinedAt: !2474)
!2478 = !DILocation(line: 0, scope: !1432, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 974, column: 3, scope: !2414, inlinedAt: !2474)
!2480 = !DILocation(line: 147, column: 57, scope: !1432, inlinedAt: !2479)
!2481 = !DILocation(line: 149, column: 21, scope: !1432, inlinedAt: !2479)
!2482 = !DILocation(line: 150, column: 6, scope: !1432, inlinedAt: !2479)
!2483 = !DILocation(line: 975, column: 10, scope: !2414, inlinedAt: !2474)
!2484 = !DILocation(line: 976, column: 1, scope: !2414, inlinedAt: !2474)
!2485 = !DILocation(line: 987, column: 3, scope: !2467)
!2486 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !265, file: !265, line: 991, type: !2291, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2487)
!2487 = !{!2488, !2489}
!2488 = !DILocalVariable(name: "arg", arg: 1, scope: !2486, file: !265, line: 991, type: !57)
!2489 = !DILocalVariable(name: "argsize", arg: 2, scope: !2486, file: !265, line: 991, type: !54)
!2490 = !DILocation(line: 0, scope: !2486)
!2491 = !DILocation(line: 0, scope: !2414, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 993, column: 10, scope: !2486)
!2493 = !DILocation(line: 972, column: 3, scope: !2414, inlinedAt: !2492)
!2494 = !DILocation(line: 972, column: 26, scope: !2414, inlinedAt: !2492)
!2495 = !DILocation(line: 973, column: 13, scope: !2414, inlinedAt: !2492)
!2496 = !DILocation(line: 0, scope: !1432, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 974, column: 3, scope: !2414, inlinedAt: !2492)
!2498 = !DILocation(line: 147, column: 57, scope: !1432, inlinedAt: !2497)
!2499 = !DILocation(line: 149, column: 21, scope: !1432, inlinedAt: !2497)
!2500 = !DILocation(line: 150, column: 6, scope: !1432, inlinedAt: !2497)
!2501 = !DILocation(line: 975, column: 10, scope: !2414, inlinedAt: !2492)
!2502 = !DILocation(line: 976, column: 1, scope: !2414, inlinedAt: !2492)
!2503 = !DILocation(line: 993, column: 3, scope: !2486)
!2504 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !265, file: !265, line: 997, type: !2302, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2505)
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DILocalVariable(name: "n", arg: 1, scope: !2504, file: !265, line: 997, type: !44)
!2507 = !DILocalVariable(name: "s", arg: 2, scope: !2504, file: !265, line: 997, type: !29)
!2508 = !DILocalVariable(name: "arg", arg: 3, scope: !2504, file: !265, line: 997, type: !57)
!2509 = !DILocalVariable(name: "options", scope: !2504, file: !265, line: 999, type: !282)
!2510 = !DILocation(line: 0, scope: !2504)
!2511 = !DILocation(line: 999, column: 3, scope: !2504)
!2512 = !DILocation(line: 999, column: 26, scope: !2504)
!2513 = !DILocation(line: 0, scope: !2317, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 1000, column: 13, scope: !2504)
!2515 = !DILocation(line: 186, column: 13, scope: !2326, inlinedAt: !2514)
!2516 = !DILocation(line: 186, column: 7, scope: !2317, inlinedAt: !2514)
!2517 = !DILocation(line: 187, column: 5, scope: !2326, inlinedAt: !2514)
!2518 = !{!2519}
!2519 = distinct !{!2519, !2520, !"quoting_options_from_style: argument 0"}
!2520 = distinct !{!2520, !"quoting_options_from_style"}
!2521 = !DILocation(line: 1000, column: 13, scope: !2504)
!2522 = !DILocation(line: 0, scope: !1432, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 1001, column: 3, scope: !2504)
!2524 = !DILocation(line: 147, column: 57, scope: !1432, inlinedAt: !2523)
!2525 = !DILocation(line: 149, column: 21, scope: !1432, inlinedAt: !2523)
!2526 = !DILocation(line: 150, column: 6, scope: !1432, inlinedAt: !2523)
!2527 = !DILocation(line: 1002, column: 10, scope: !2504)
!2528 = !DILocation(line: 1003, column: 1, scope: !2504)
!2529 = !DILocation(line: 1002, column: 3, scope: !2504)
!2530 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !265, file: !265, line: 1006, type: !2531, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!51, !44, !57, !57, !57}
!2533 = !{!2534, !2535, !2536, !2537}
!2534 = !DILocalVariable(name: "n", arg: 1, scope: !2530, file: !265, line: 1006, type: !44)
!2535 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2530, file: !265, line: 1006, type: !57)
!2536 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2530, file: !265, line: 1007, type: !57)
!2537 = !DILocalVariable(name: "arg", arg: 4, scope: !2530, file: !265, line: 1007, type: !57)
!2538 = !DILocation(line: 0, scope: !2530)
!2539 = !DILocalVariable(name: "n", arg: 1, scope: !2540, file: !265, line: 1014, type: !44)
!2540 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !265, file: !265, line: 1014, type: !2541, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!51, !44, !57, !57, !57, !54}
!2543 = !{!2539, !2544, !2545, !2546, !2547, !2548}
!2544 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2540, file: !265, line: 1014, type: !57)
!2545 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2540, file: !265, line: 1015, type: !57)
!2546 = !DILocalVariable(name: "arg", arg: 4, scope: !2540, file: !265, line: 1016, type: !57)
!2547 = !DILocalVariable(name: "argsize", arg: 5, scope: !2540, file: !265, line: 1016, type: !54)
!2548 = !DILocalVariable(name: "o", scope: !2540, file: !265, line: 1018, type: !282)
!2549 = !DILocation(line: 0, scope: !2540, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 1009, column: 10, scope: !2530)
!2551 = !DILocation(line: 1018, column: 3, scope: !2540, inlinedAt: !2550)
!2552 = !DILocation(line: 1018, column: 26, scope: !2540, inlinedAt: !2550)
!2553 = !DILocation(line: 1018, column: 30, scope: !2540, inlinedAt: !2550)
!2554 = !DILocation(line: 0, scope: !1472, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 1019, column: 3, scope: !2540, inlinedAt: !2550)
!2556 = !DILocation(line: 174, column: 6, scope: !1472, inlinedAt: !2555)
!2557 = !DILocation(line: 174, column: 12, scope: !1472, inlinedAt: !2555)
!2558 = !DILocation(line: 175, column: 8, scope: !1486, inlinedAt: !2555)
!2559 = !DILocation(line: 175, column: 19, scope: !1486, inlinedAt: !2555)
!2560 = !DILocation(line: 176, column: 5, scope: !1486, inlinedAt: !2555)
!2561 = !DILocation(line: 177, column: 6, scope: !1472, inlinedAt: !2555)
!2562 = !DILocation(line: 177, column: 17, scope: !1472, inlinedAt: !2555)
!2563 = !DILocation(line: 178, column: 6, scope: !1472, inlinedAt: !2555)
!2564 = !DILocation(line: 178, column: 18, scope: !1472, inlinedAt: !2555)
!2565 = !DILocation(line: 1020, column: 10, scope: !2540, inlinedAt: !2550)
!2566 = !DILocation(line: 1021, column: 1, scope: !2540, inlinedAt: !2550)
!2567 = !DILocation(line: 1009, column: 3, scope: !2530)
!2568 = !DILocation(line: 0, scope: !2540)
!2569 = !DILocation(line: 1018, column: 3, scope: !2540)
!2570 = !DILocation(line: 1018, column: 26, scope: !2540)
!2571 = !DILocation(line: 1018, column: 30, scope: !2540)
!2572 = !DILocation(line: 0, scope: !1472, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 1019, column: 3, scope: !2540)
!2574 = !DILocation(line: 174, column: 6, scope: !1472, inlinedAt: !2573)
!2575 = !DILocation(line: 174, column: 12, scope: !1472, inlinedAt: !2573)
!2576 = !DILocation(line: 175, column: 8, scope: !1486, inlinedAt: !2573)
!2577 = !DILocation(line: 175, column: 19, scope: !1486, inlinedAt: !2573)
!2578 = !DILocation(line: 176, column: 5, scope: !1486, inlinedAt: !2573)
!2579 = !DILocation(line: 177, column: 6, scope: !1472, inlinedAt: !2573)
!2580 = !DILocation(line: 177, column: 17, scope: !1472, inlinedAt: !2573)
!2581 = !DILocation(line: 178, column: 6, scope: !1472, inlinedAt: !2573)
!2582 = !DILocation(line: 178, column: 18, scope: !1472, inlinedAt: !2573)
!2583 = !DILocation(line: 1020, column: 10, scope: !2540)
!2584 = !DILocation(line: 1021, column: 1, scope: !2540)
!2585 = !DILocation(line: 1020, column: 3, scope: !2540)
!2586 = distinct !DISubprogram(name: "quotearg_custom", scope: !265, file: !265, line: 1024, type: !2587, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!51, !57, !57, !57}
!2589 = !{!2590, !2591, !2592}
!2590 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2586, file: !265, line: 1024, type: !57)
!2591 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2586, file: !265, line: 1024, type: !57)
!2592 = !DILocalVariable(name: "arg", arg: 3, scope: !2586, file: !265, line: 1025, type: !57)
!2593 = !DILocation(line: 0, scope: !2586)
!2594 = !DILocation(line: 0, scope: !2530, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1027, column: 10, scope: !2586)
!2596 = !DILocation(line: 0, scope: !2540, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 1009, column: 10, scope: !2530, inlinedAt: !2595)
!2598 = !DILocation(line: 1018, column: 3, scope: !2540, inlinedAt: !2597)
!2599 = !DILocation(line: 1018, column: 26, scope: !2540, inlinedAt: !2597)
!2600 = !DILocation(line: 1018, column: 30, scope: !2540, inlinedAt: !2597)
!2601 = !DILocation(line: 0, scope: !1472, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 1019, column: 3, scope: !2540, inlinedAt: !2597)
!2603 = !DILocation(line: 174, column: 6, scope: !1472, inlinedAt: !2602)
!2604 = !DILocation(line: 174, column: 12, scope: !1472, inlinedAt: !2602)
!2605 = !DILocation(line: 175, column: 8, scope: !1486, inlinedAt: !2602)
!2606 = !DILocation(line: 175, column: 19, scope: !1486, inlinedAt: !2602)
!2607 = !DILocation(line: 176, column: 5, scope: !1486, inlinedAt: !2602)
!2608 = !DILocation(line: 177, column: 6, scope: !1472, inlinedAt: !2602)
!2609 = !DILocation(line: 177, column: 17, scope: !1472, inlinedAt: !2602)
!2610 = !DILocation(line: 178, column: 6, scope: !1472, inlinedAt: !2602)
!2611 = !DILocation(line: 178, column: 18, scope: !1472, inlinedAt: !2602)
!2612 = !DILocation(line: 1020, column: 10, scope: !2540, inlinedAt: !2597)
!2613 = !DILocation(line: 1021, column: 1, scope: !2540, inlinedAt: !2597)
!2614 = !DILocation(line: 1027, column: 3, scope: !2586)
!2615 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !265, file: !265, line: 1031, type: !2616, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!51, !57, !57, !57, !54}
!2618 = !{!2619, !2620, !2621, !2622}
!2619 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2615, file: !265, line: 1031, type: !57)
!2620 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2615, file: !265, line: 1031, type: !57)
!2621 = !DILocalVariable(name: "arg", arg: 3, scope: !2615, file: !265, line: 1032, type: !57)
!2622 = !DILocalVariable(name: "argsize", arg: 4, scope: !2615, file: !265, line: 1032, type: !54)
!2623 = !DILocation(line: 0, scope: !2615)
!2624 = !DILocation(line: 0, scope: !2540, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 1034, column: 10, scope: !2615)
!2626 = !DILocation(line: 1018, column: 3, scope: !2540, inlinedAt: !2625)
!2627 = !DILocation(line: 1018, column: 26, scope: !2540, inlinedAt: !2625)
!2628 = !DILocation(line: 1018, column: 30, scope: !2540, inlinedAt: !2625)
!2629 = !DILocation(line: 0, scope: !1472, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 1019, column: 3, scope: !2540, inlinedAt: !2625)
!2631 = !DILocation(line: 174, column: 6, scope: !1472, inlinedAt: !2630)
!2632 = !DILocation(line: 174, column: 12, scope: !1472, inlinedAt: !2630)
!2633 = !DILocation(line: 175, column: 8, scope: !1486, inlinedAt: !2630)
!2634 = !DILocation(line: 175, column: 19, scope: !1486, inlinedAt: !2630)
!2635 = !DILocation(line: 176, column: 5, scope: !1486, inlinedAt: !2630)
!2636 = !DILocation(line: 177, column: 6, scope: !1472, inlinedAt: !2630)
!2637 = !DILocation(line: 177, column: 17, scope: !1472, inlinedAt: !2630)
!2638 = !DILocation(line: 178, column: 6, scope: !1472, inlinedAt: !2630)
!2639 = !DILocation(line: 178, column: 18, scope: !1472, inlinedAt: !2630)
!2640 = !DILocation(line: 1020, column: 10, scope: !2540, inlinedAt: !2625)
!2641 = !DILocation(line: 1021, column: 1, scope: !2540, inlinedAt: !2625)
!2642 = !DILocation(line: 1034, column: 3, scope: !2615)
!2643 = distinct !DISubprogram(name: "quote_n_mem", scope: !265, file: !265, line: 1049, type: !2644, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!57, !44, !57, !54}
!2646 = !{!2647, !2648, !2649}
!2647 = !DILocalVariable(name: "n", arg: 1, scope: !2643, file: !265, line: 1049, type: !44)
!2648 = !DILocalVariable(name: "arg", arg: 2, scope: !2643, file: !265, line: 1049, type: !57)
!2649 = !DILocalVariable(name: "argsize", arg: 3, scope: !2643, file: !265, line: 1049, type: !54)
!2650 = !DILocation(line: 0, scope: !2643)
!2651 = !DILocation(line: 1051, column: 10, scope: !2643)
!2652 = !DILocation(line: 1051, column: 3, scope: !2643)
!2653 = distinct !DISubprogram(name: "quote_mem", scope: !265, file: !265, line: 1055, type: !2654, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!57, !57, !54}
!2656 = !{!2657, !2658}
!2657 = !DILocalVariable(name: "arg", arg: 1, scope: !2653, file: !265, line: 1055, type: !57)
!2658 = !DILocalVariable(name: "argsize", arg: 2, scope: !2653, file: !265, line: 1055, type: !54)
!2659 = !DILocation(line: 0, scope: !2653)
!2660 = !DILocation(line: 0, scope: !2643, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1057, column: 10, scope: !2653)
!2662 = !DILocation(line: 1051, column: 10, scope: !2643, inlinedAt: !2661)
!2663 = !DILocation(line: 1057, column: 3, scope: !2653)
!2664 = distinct !DISubprogram(name: "quote_n", scope: !265, file: !265, line: 1061, type: !2665, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!57, !44, !57}
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !265, line: 1061, type: !44)
!2669 = !DILocalVariable(name: "arg", arg: 2, scope: !2664, file: !265, line: 1061, type: !57)
!2670 = !DILocation(line: 0, scope: !2664)
!2671 = !DILocation(line: 0, scope: !2643, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1063, column: 10, scope: !2664)
!2673 = !DILocation(line: 1051, column: 10, scope: !2643, inlinedAt: !2672)
!2674 = !DILocation(line: 1063, column: 3, scope: !2664)
!2675 = distinct !DISubprogram(name: "quote", scope: !265, file: !265, line: 1067, type: !2676, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!57, !57}
!2678 = !{!2679}
!2679 = !DILocalVariable(name: "arg", arg: 1, scope: !2675, file: !265, line: 1067, type: !57)
!2680 = !DILocation(line: 0, scope: !2675)
!2681 = !DILocation(line: 0, scope: !2664, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1069, column: 10, scope: !2675)
!2683 = !DILocation(line: 0, scope: !2643, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 1063, column: 10, scope: !2664, inlinedAt: !2682)
!2685 = !DILocation(line: 1051, column: 10, scope: !2643, inlinedAt: !2684)
!2686 = !DILocation(line: 1069, column: 3, scope: !2675)
!2687 = distinct !DISubprogram(name: "version_etc_arn", scope: !370, file: !370, line: 61, type: !2688, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !2725)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !2690, !57, !57, !57, !2724, !54}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !98, line: 7, baseType: !2692)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !100, line: 49, size: 1728, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2692, file: !100, line: 51, baseType: !44, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2692, file: !100, line: 54, baseType: !51, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2692, file: !100, line: 55, baseType: !51, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2692, file: !100, line: 56, baseType: !51, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2692, file: !100, line: 57, baseType: !51, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2692, file: !100, line: 58, baseType: !51, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2692, file: !100, line: 59, baseType: !51, size: 64, offset: 384)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2692, file: !100, line: 60, baseType: !51, size: 64, offset: 448)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2692, file: !100, line: 61, baseType: !51, size: 64, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2692, file: !100, line: 64, baseType: !51, size: 64, offset: 576)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2692, file: !100, line: 65, baseType: !51, size: 64, offset: 640)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2692, file: !100, line: 66, baseType: !51, size: 64, offset: 704)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2692, file: !100, line: 68, baseType: !115, size: 64, offset: 768)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2692, file: !100, line: 70, baseType: !2708, size: 64, offset: 832)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2692, file: !100, line: 72, baseType: !44, size: 32, offset: 896)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2692, file: !100, line: 73, baseType: !44, size: 32, offset: 928)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2692, file: !100, line: 74, baseType: !48, size: 64, offset: 960)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2692, file: !100, line: 77, baseType: !45, size: 16, offset: 1024)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2692, file: !100, line: 78, baseType: !124, size: 8, offset: 1040)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2692, file: !100, line: 79, baseType: !126, size: 8, offset: 1048)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2692, file: !100, line: 81, baseType: !130, size: 64, offset: 1088)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2692, file: !100, line: 89, baseType: !133, size: 64, offset: 1152)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2692, file: !100, line: 91, baseType: !135, size: 64, offset: 1216)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2692, file: !100, line: 92, baseType: !138, size: 64, offset: 1280)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2692, file: !100, line: 93, baseType: !2708, size: 64, offset: 1344)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2692, file: !100, line: 94, baseType: !53, size: 64, offset: 1408)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2692, file: !100, line: 95, baseType: !54, size: 64, offset: 1472)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2692, file: !100, line: 96, baseType: !44, size: 32, offset: 1536)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2692, file: !100, line: 98, baseType: !145, size: 160, offset: 1568)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731}
!2726 = !DILocalVariable(name: "stream", arg: 1, scope: !2687, file: !370, line: 61, type: !2690)
!2727 = !DILocalVariable(name: "command_name", arg: 2, scope: !2687, file: !370, line: 62, type: !57)
!2728 = !DILocalVariable(name: "package", arg: 3, scope: !2687, file: !370, line: 62, type: !57)
!2729 = !DILocalVariable(name: "version", arg: 4, scope: !2687, file: !370, line: 63, type: !57)
!2730 = !DILocalVariable(name: "authors", arg: 5, scope: !2687, file: !370, line: 64, type: !2724)
!2731 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2687, file: !370, line: 64, type: !54)
!2732 = !DILocation(line: 0, scope: !2687)
!2733 = !DILocation(line: 66, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2687, file: !370, line: 66, column: 7)
!2735 = !DILocation(line: 66, column: 7, scope: !2687)
!2736 = !DILocation(line: 67, column: 5, scope: !2734)
!2737 = !DILocation(line: 69, column: 5, scope: !2734)
!2738 = !DILocation(line: 83, column: 3, scope: !2687)
!2739 = !DILocation(line: 85, column: 3, scope: !2687)
!2740 = !DILocation(line: 88, column: 3, scope: !2687)
!2741 = !DILocation(line: 95, column: 3, scope: !2687)
!2742 = !DILocation(line: 97, column: 3, scope: !2687)
!2743 = !DILocation(line: 105, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2687, file: !370, line: 98, column: 5)
!2745 = !DILocation(line: 106, column: 7, scope: !2744)
!2746 = !DILocation(line: 109, column: 7, scope: !2744)
!2747 = !DILocation(line: 110, column: 7, scope: !2744)
!2748 = !DILocation(line: 113, column: 7, scope: !2744)
!2749 = !DILocation(line: 115, column: 7, scope: !2744)
!2750 = !DILocation(line: 120, column: 7, scope: !2744)
!2751 = !DILocation(line: 122, column: 7, scope: !2744)
!2752 = !DILocation(line: 127, column: 7, scope: !2744)
!2753 = !DILocation(line: 129, column: 7, scope: !2744)
!2754 = !DILocation(line: 134, column: 7, scope: !2744)
!2755 = !DILocation(line: 137, column: 7, scope: !2744)
!2756 = !DILocation(line: 142, column: 7, scope: !2744)
!2757 = !DILocation(line: 145, column: 7, scope: !2744)
!2758 = !DILocation(line: 150, column: 7, scope: !2744)
!2759 = !DILocation(line: 154, column: 7, scope: !2744)
!2760 = !DILocation(line: 159, column: 7, scope: !2744)
!2761 = !DILocation(line: 163, column: 7, scope: !2744)
!2762 = !DILocation(line: 170, column: 7, scope: !2744)
!2763 = !DILocation(line: 174, column: 7, scope: !2744)
!2764 = !DILocation(line: 176, column: 1, scope: !2687)
!2765 = distinct !DISubprogram(name: "version_etc_ar", scope: !370, file: !370, line: 183, type: !2766, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !2690, !57, !57, !57, !2724}
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2774}
!2769 = !DILocalVariable(name: "stream", arg: 1, scope: !2765, file: !370, line: 183, type: !2690)
!2770 = !DILocalVariable(name: "command_name", arg: 2, scope: !2765, file: !370, line: 184, type: !57)
!2771 = !DILocalVariable(name: "package", arg: 3, scope: !2765, file: !370, line: 184, type: !57)
!2772 = !DILocalVariable(name: "version", arg: 4, scope: !2765, file: !370, line: 185, type: !57)
!2773 = !DILocalVariable(name: "authors", arg: 5, scope: !2765, file: !370, line: 185, type: !2724)
!2774 = !DILocalVariable(name: "n_authors", scope: !2765, file: !370, line: 187, type: !54)
!2775 = !DILocation(line: 0, scope: !2765)
!2776 = !DILocation(line: 189, column: 8, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2765, file: !370, line: 189, column: 3)
!2778 = !DILocation(line: 0, scope: !2777)
!2779 = !DILocation(line: 189, column: 23, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2777, file: !370, line: 189, column: 3)
!2781 = !DILocation(line: 189, column: 3, scope: !2777)
!2782 = !DILocation(line: 189, column: 52, scope: !2780)
!2783 = distinct !{!2783, !2781, !2784, !536}
!2784 = !DILocation(line: 190, column: 5, scope: !2777)
!2785 = !DILocation(line: 191, column: 3, scope: !2765)
!2786 = !DILocation(line: 192, column: 1, scope: !2765)
!2787 = distinct !DISubprogram(name: "version_etc_va", scope: !370, file: !370, line: 199, type: !2788, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !2801)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !2690, !57, !57, !57, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !47, line: 52, baseType: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !193, line: 32, baseType: !2792)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2793, baseType: !2794)
!2793 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !197, size: 256, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2794, file: !2793, line: 192, baseType: !53, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2794, file: !2793, line: 192, baseType: !53, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2794, file: !2793, line: 192, baseType: !53, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2794, file: !2793, line: 192, baseType: !44, size: 32, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2794, file: !2793, line: 192, baseType: !44, size: 32, offset: 224)
!2801 = !{!2802, !2803, !2804, !2805, !2806, !2807, !2808}
!2802 = !DILocalVariable(name: "stream", arg: 1, scope: !2787, file: !370, line: 199, type: !2690)
!2803 = !DILocalVariable(name: "command_name", arg: 2, scope: !2787, file: !370, line: 200, type: !57)
!2804 = !DILocalVariable(name: "package", arg: 3, scope: !2787, file: !370, line: 200, type: !57)
!2805 = !DILocalVariable(name: "version", arg: 4, scope: !2787, file: !370, line: 201, type: !57)
!2806 = !DILocalVariable(name: "authors", arg: 5, scope: !2787, file: !370, line: 201, type: !2790)
!2807 = !DILocalVariable(name: "n_authors", scope: !2787, file: !370, line: 203, type: !54)
!2808 = !DILocalVariable(name: "authtab", scope: !2787, file: !370, line: 204, type: !2809)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 640, elements: !278)
!2810 = !DILocation(line: 0, scope: !2787)
!2811 = !DILocation(line: 201, column: 46, scope: !2787)
!2812 = !DILocation(line: 204, column: 3, scope: !2787)
!2813 = !DILocation(line: 204, column: 15, scope: !2787)
!2814 = !DILocation(line: 208, column: 35, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !370, line: 206, column: 3)
!2816 = distinct !DILexicalBlock(scope: !2787, file: !370, line: 206, column: 3)
!2817 = !DILocation(line: 208, column: 14, scope: !2815)
!2818 = !DILocation(line: 208, column: 33, scope: !2815)
!2819 = !DILocation(line: 208, column: 67, scope: !2815)
!2820 = !DILocation(line: 206, column: 3, scope: !2816)
!2821 = !DILocation(line: 0, scope: !2816)
!2822 = !DILocation(line: 211, column: 3, scope: !2787)
!2823 = !DILocation(line: 213, column: 1, scope: !2787)
!2824 = distinct !DISubprogram(name: "version_etc", scope: !370, file: !370, line: 230, type: !2825, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2690, !57, !57, !57, null}
!2827 = !{!2828, !2829, !2830, !2831, !2832}
!2828 = !DILocalVariable(name: "stream", arg: 1, scope: !2824, file: !370, line: 230, type: !2690)
!2829 = !DILocalVariable(name: "command_name", arg: 2, scope: !2824, file: !370, line: 231, type: !57)
!2830 = !DILocalVariable(name: "package", arg: 3, scope: !2824, file: !370, line: 231, type: !57)
!2831 = !DILocalVariable(name: "version", arg: 4, scope: !2824, file: !370, line: 232, type: !57)
!2832 = !DILocalVariable(name: "authors", scope: !2824, file: !370, line: 234, type: !2790)
!2833 = !DILocation(line: 0, scope: !2824)
!2834 = !DILocation(line: 234, column: 3, scope: !2824)
!2835 = !DILocation(line: 234, column: 11, scope: !2824)
!2836 = !DILocation(line: 235, column: 3, scope: !2824)
!2837 = !DILocation(line: 236, column: 3, scope: !2824)
!2838 = !DILocation(line: 237, column: 3, scope: !2824)
!2839 = !DILocation(line: 238, column: 1, scope: !2824)
!2840 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !370, file: !370, line: 241, type: !218, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !483)
!2841 = !DILocation(line: 243, column: 3, scope: !2840)
!2842 = !DILocation(line: 248, column: 3, scope: !2840)
!2843 = !DILocation(line: 254, column: 3, scope: !2840)
!2844 = !DILocation(line: 259, column: 3, scope: !2840)
!2845 = !DILocation(line: 261, column: 1, scope: !2840)
!2846 = distinct !DISubprogram(name: "xnrealloc", scope: !2847, file: !2847, line: 147, type: !2848, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2850)
!2847 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!53, !53, !54, !54}
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "p", arg: 1, scope: !2846, file: !2847, line: 147, type: !53)
!2852 = !DILocalVariable(name: "n", arg: 2, scope: !2846, file: !2847, line: 147, type: !54)
!2853 = !DILocalVariable(name: "s", arg: 3, scope: !2846, file: !2847, line: 147, type: !54)
!2854 = !DILocation(line: 0, scope: !2846)
!2855 = !DILocalVariable(name: "p", arg: 1, scope: !2856, file: !377, line: 83, type: !53)
!2856 = distinct !DISubprogram(name: "xreallocarray", scope: !377, file: !377, line: 83, type: !2848, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2857)
!2857 = !{!2855, !2858, !2859}
!2858 = !DILocalVariable(name: "n", arg: 2, scope: !2856, file: !377, line: 83, type: !54)
!2859 = !DILocalVariable(name: "s", arg: 3, scope: !2856, file: !377, line: 83, type: !54)
!2860 = !DILocation(line: 0, scope: !2856, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 149, column: 10, scope: !2846)
!2862 = !DILocation(line: 85, column: 25, scope: !2856, inlinedAt: !2861)
!2863 = !DILocalVariable(name: "p", arg: 1, scope: !2864, file: !377, line: 37, type: !53)
!2864 = distinct !DISubprogram(name: "check_nonnull", scope: !377, file: !377, line: 37, type: !2865, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!53, !53}
!2867 = !{!2863}
!2868 = !DILocation(line: 0, scope: !2864, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 85, column: 10, scope: !2856, inlinedAt: !2861)
!2870 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !2869)
!2871 = distinct !DILexicalBlock(scope: !2864, file: !377, line: 39, column: 7)
!2872 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !2869)
!2873 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !2869)
!2874 = !DILocation(line: 149, column: 3, scope: !2846)
!2875 = !DILocation(line: 0, scope: !2856)
!2876 = !DILocation(line: 85, column: 25, scope: !2856)
!2877 = !DILocation(line: 0, scope: !2864, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 85, column: 10, scope: !2856)
!2879 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !2878)
!2880 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !2878)
!2881 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !2878)
!2882 = !DILocation(line: 85, column: 3, scope: !2856)
!2883 = distinct !DISubprogram(name: "xmalloc", scope: !377, file: !377, line: 47, type: !2884, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!53, !54}
!2886 = !{!2887}
!2887 = !DILocalVariable(name: "s", arg: 1, scope: !2883, file: !377, line: 47, type: !54)
!2888 = !DILocation(line: 0, scope: !2883)
!2889 = !DILocation(line: 49, column: 25, scope: !2883)
!2890 = !DILocation(line: 0, scope: !2864, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 49, column: 10, scope: !2883)
!2892 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !2891)
!2893 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !2891)
!2894 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !2891)
!2895 = !DILocation(line: 49, column: 3, scope: !2883)
!2896 = distinct !DISubprogram(name: "ximalloc", scope: !377, file: !377, line: 53, type: !2897, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!53, !396}
!2899 = !{!2900}
!2900 = !DILocalVariable(name: "s", arg: 1, scope: !2896, file: !377, line: 53, type: !396)
!2901 = !DILocation(line: 0, scope: !2896)
!2902 = !DILocalVariable(name: "s", arg: 1, scope: !2903, file: !2904, line: 55, type: !396)
!2903 = distinct !DISubprogram(name: "imalloc", scope: !2904, file: !2904, line: 55, type: !2897, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2905)
!2904 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2905 = !{!2902}
!2906 = !DILocation(line: 0, scope: !2903, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 55, column: 25, scope: !2896)
!2908 = !DILocation(line: 57, column: 26, scope: !2903, inlinedAt: !2907)
!2909 = !DILocation(line: 0, scope: !2864, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 55, column: 10, scope: !2896)
!2911 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !2910)
!2912 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !2910)
!2913 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !2910)
!2914 = !DILocation(line: 55, column: 3, scope: !2896)
!2915 = distinct !DISubprogram(name: "xcharalloc", scope: !377, file: !377, line: 59, type: !2916, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!51, !54}
!2918 = !{!2919}
!2919 = !DILocalVariable(name: "n", arg: 1, scope: !2915, file: !377, line: 59, type: !54)
!2920 = !DILocation(line: 0, scope: !2915)
!2921 = !DILocation(line: 0, scope: !2883, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 61, column: 10, scope: !2915)
!2923 = !DILocation(line: 49, column: 25, scope: !2883, inlinedAt: !2922)
!2924 = !DILocation(line: 0, scope: !2864, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 49, column: 10, scope: !2883, inlinedAt: !2922)
!2926 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !2925)
!2927 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !2925)
!2928 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !2925)
!2929 = !DILocation(line: 61, column: 3, scope: !2915)
!2930 = distinct !DISubprogram(name: "xrealloc", scope: !377, file: !377, line: 68, type: !2931, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!53, !53, !54}
!2933 = !{!2934, !2935}
!2934 = !DILocalVariable(name: "p", arg: 1, scope: !2930, file: !377, line: 68, type: !53)
!2935 = !DILocalVariable(name: "s", arg: 2, scope: !2930, file: !377, line: 68, type: !54)
!2936 = !DILocation(line: 0, scope: !2930)
!2937 = !DILocalVariable(name: "ptr", arg: 1, scope: !2938, file: !2939, line: 2057, type: !53)
!2938 = distinct !DISubprogram(name: "rpl_realloc", scope: !2939, file: !2939, line: 2057, type: !2931, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2940)
!2939 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2940 = !{!2937, !2941}
!2941 = !DILocalVariable(name: "size", arg: 2, scope: !2938, file: !2939, line: 2057, type: !54)
!2942 = !DILocation(line: 0, scope: !2938, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 70, column: 25, scope: !2930)
!2944 = !DILocation(line: 2059, column: 24, scope: !2938, inlinedAt: !2943)
!2945 = !DILocation(line: 2059, column: 10, scope: !2938, inlinedAt: !2943)
!2946 = !DILocation(line: 0, scope: !2864, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 70, column: 10, scope: !2930)
!2948 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !2947)
!2949 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !2947)
!2950 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !2947)
!2951 = !DILocation(line: 70, column: 3, scope: !2930)
!2952 = distinct !DISubprogram(name: "xirealloc", scope: !377, file: !377, line: 74, type: !2953, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!53, !53, !396}
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "p", arg: 1, scope: !2952, file: !377, line: 74, type: !53)
!2957 = !DILocalVariable(name: "s", arg: 2, scope: !2952, file: !377, line: 74, type: !396)
!2958 = !DILocation(line: 0, scope: !2952)
!2959 = !DILocalVariable(name: "p", arg: 1, scope: !2960, file: !2904, line: 66, type: !53)
!2960 = distinct !DISubprogram(name: "irealloc", scope: !2904, file: !2904, line: 66, type: !2953, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2961)
!2961 = !{!2959, !2962}
!2962 = !DILocalVariable(name: "s", arg: 2, scope: !2960, file: !2904, line: 66, type: !396)
!2963 = !DILocation(line: 0, scope: !2960, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 76, column: 25, scope: !2952)
!2965 = !DILocation(line: 0, scope: !2938, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 68, column: 26, scope: !2960, inlinedAt: !2964)
!2967 = !DILocation(line: 2059, column: 24, scope: !2938, inlinedAt: !2966)
!2968 = !DILocation(line: 2059, column: 10, scope: !2938, inlinedAt: !2966)
!2969 = !DILocation(line: 0, scope: !2864, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 76, column: 10, scope: !2952)
!2971 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !2970)
!2972 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !2970)
!2973 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !2970)
!2974 = !DILocation(line: 76, column: 3, scope: !2952)
!2975 = distinct !DISubprogram(name: "xireallocarray", scope: !377, file: !377, line: 89, type: !2976, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!53, !53, !396, !396}
!2978 = !{!2979, !2980, !2981}
!2979 = !DILocalVariable(name: "p", arg: 1, scope: !2975, file: !377, line: 89, type: !53)
!2980 = !DILocalVariable(name: "n", arg: 2, scope: !2975, file: !377, line: 89, type: !396)
!2981 = !DILocalVariable(name: "s", arg: 3, scope: !2975, file: !377, line: 89, type: !396)
!2982 = !DILocation(line: 0, scope: !2975)
!2983 = !DILocalVariable(name: "p", arg: 1, scope: !2984, file: !2904, line: 98, type: !53)
!2984 = distinct !DISubprogram(name: "ireallocarray", scope: !2904, file: !2904, line: 98, type: !2976, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2985)
!2985 = !{!2983, !2986, !2987}
!2986 = !DILocalVariable(name: "n", arg: 2, scope: !2984, file: !2904, line: 98, type: !396)
!2987 = !DILocalVariable(name: "s", arg: 3, scope: !2984, file: !2904, line: 98, type: !396)
!2988 = !DILocation(line: 0, scope: !2984, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 91, column: 25, scope: !2975)
!2990 = !DILocation(line: 101, column: 13, scope: !2984, inlinedAt: !2989)
!2991 = !DILocation(line: 0, scope: !2864, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 91, column: 10, scope: !2975)
!2993 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !2992)
!2994 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !2992)
!2995 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !2992)
!2996 = !DILocation(line: 91, column: 3, scope: !2975)
!2997 = distinct !DISubprogram(name: "xnmalloc", scope: !377, file: !377, line: 98, type: !2998, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!53, !54, !54}
!3000 = !{!3001, !3002}
!3001 = !DILocalVariable(name: "n", arg: 1, scope: !2997, file: !377, line: 98, type: !54)
!3002 = !DILocalVariable(name: "s", arg: 2, scope: !2997, file: !377, line: 98, type: !54)
!3003 = !DILocation(line: 0, scope: !2997)
!3004 = !DILocation(line: 0, scope: !2856, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 100, column: 10, scope: !2997)
!3006 = !DILocation(line: 85, column: 25, scope: !2856, inlinedAt: !3005)
!3007 = !DILocation(line: 0, scope: !2864, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 85, column: 10, scope: !2856, inlinedAt: !3005)
!3009 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3008)
!3010 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3008)
!3011 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3008)
!3012 = !DILocation(line: 100, column: 3, scope: !2997)
!3013 = distinct !DISubprogram(name: "xinmalloc", scope: !377, file: !377, line: 104, type: !3014, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!53, !396, !396}
!3016 = !{!3017, !3018}
!3017 = !DILocalVariable(name: "n", arg: 1, scope: !3013, file: !377, line: 104, type: !396)
!3018 = !DILocalVariable(name: "s", arg: 2, scope: !3013, file: !377, line: 104, type: !396)
!3019 = !DILocation(line: 0, scope: !3013)
!3020 = !DILocation(line: 0, scope: !2975, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 106, column: 10, scope: !3013)
!3022 = !DILocation(line: 0, scope: !2984, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 91, column: 25, scope: !2975, inlinedAt: !3021)
!3024 = !DILocation(line: 101, column: 13, scope: !2984, inlinedAt: !3023)
!3025 = !DILocation(line: 0, scope: !2864, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 91, column: 10, scope: !2975, inlinedAt: !3021)
!3027 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3026)
!3028 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3026)
!3029 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3026)
!3030 = !DILocation(line: 106, column: 3, scope: !3013)
!3031 = distinct !DISubprogram(name: "x2realloc", scope: !377, file: !377, line: 116, type: !3032, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!53, !53, !383}
!3034 = !{!3035, !3036}
!3035 = !DILocalVariable(name: "p", arg: 1, scope: !3031, file: !377, line: 116, type: !53)
!3036 = !DILocalVariable(name: "ps", arg: 2, scope: !3031, file: !377, line: 116, type: !383)
!3037 = !DILocation(line: 0, scope: !3031)
!3038 = !DILocation(line: 0, scope: !380, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 118, column: 10, scope: !3031)
!3040 = !DILocation(line: 178, column: 14, scope: !380, inlinedAt: !3039)
!3041 = !DILocation(line: 180, column: 9, scope: !3042, inlinedAt: !3039)
!3042 = distinct !DILexicalBlock(scope: !380, file: !377, line: 180, column: 7)
!3043 = !DILocation(line: 180, column: 7, scope: !380, inlinedAt: !3039)
!3044 = !DILocation(line: 182, column: 13, scope: !3045, inlinedAt: !3039)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !377, line: 182, column: 11)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !377, line: 181, column: 5)
!3047 = !DILocation(line: 182, column: 11, scope: !3046, inlinedAt: !3039)
!3048 = !DILocation(line: 197, column: 11, scope: !3049, inlinedAt: !3039)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !377, line: 197, column: 11)
!3050 = distinct !DILexicalBlock(scope: !3042, file: !377, line: 195, column: 5)
!3051 = !DILocation(line: 197, column: 11, scope: !3050, inlinedAt: !3039)
!3052 = !DILocation(line: 198, column: 9, scope: !3049, inlinedAt: !3039)
!3053 = !DILocation(line: 0, scope: !2856, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 201, column: 7, scope: !380, inlinedAt: !3039)
!3055 = !DILocation(line: 85, column: 25, scope: !2856, inlinedAt: !3054)
!3056 = !DILocation(line: 0, scope: !2864, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 85, column: 10, scope: !2856, inlinedAt: !3054)
!3058 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3057)
!3059 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3057)
!3060 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3057)
!3061 = !DILocation(line: 202, column: 7, scope: !380, inlinedAt: !3039)
!3062 = !DILocation(line: 118, column: 3, scope: !3031)
!3063 = !DILocation(line: 0, scope: !380)
!3064 = !DILocation(line: 178, column: 14, scope: !380)
!3065 = !DILocation(line: 180, column: 9, scope: !3042)
!3066 = !DILocation(line: 180, column: 7, scope: !380)
!3067 = !DILocation(line: 182, column: 13, scope: !3045)
!3068 = !DILocation(line: 182, column: 11, scope: !3046)
!3069 = !DILocation(line: 190, column: 30, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3045, file: !377, line: 183, column: 9)
!3071 = !DILocation(line: 191, column: 16, scope: !3070)
!3072 = !DILocation(line: 191, column: 13, scope: !3070)
!3073 = !DILocation(line: 192, column: 9, scope: !3070)
!3074 = !DILocation(line: 197, column: 11, scope: !3049)
!3075 = !DILocation(line: 197, column: 11, scope: !3050)
!3076 = !DILocation(line: 198, column: 9, scope: !3049)
!3077 = !DILocation(line: 0, scope: !2856, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 201, column: 7, scope: !380)
!3079 = !DILocation(line: 85, column: 25, scope: !2856, inlinedAt: !3078)
!3080 = !DILocation(line: 0, scope: !2864, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 85, column: 10, scope: !2856, inlinedAt: !3078)
!3082 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3081)
!3083 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3081)
!3084 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3081)
!3085 = !DILocation(line: 202, column: 7, scope: !380)
!3086 = !DILocation(line: 203, column: 3, scope: !380)
!3087 = !DILocation(line: 0, scope: !392)
!3088 = !DILocation(line: 230, column: 14, scope: !392)
!3089 = !DILocation(line: 238, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !392, file: !377, line: 238, column: 7)
!3091 = !DILocation(line: 238, column: 7, scope: !392)
!3092 = !DILocation(line: 240, column: 9, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !392, file: !377, line: 240, column: 7)
!3094 = !DILocation(line: 240, column: 18, scope: !3093)
!3095 = !DILocation(line: 253, column: 8, scope: !392)
!3096 = !DILocation(line: 258, column: 27, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !377, line: 257, column: 5)
!3098 = distinct !DILexicalBlock(scope: !392, file: !377, line: 256, column: 7)
!3099 = !DILocation(line: 259, column: 32, scope: !3097)
!3100 = !DILocation(line: 260, column: 5, scope: !3097)
!3101 = !DILocation(line: 262, column: 9, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !392, file: !377, line: 262, column: 7)
!3103 = !DILocation(line: 262, column: 7, scope: !392)
!3104 = !DILocation(line: 263, column: 9, scope: !3102)
!3105 = !DILocation(line: 263, column: 5, scope: !3102)
!3106 = !DILocation(line: 264, column: 9, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !392, file: !377, line: 264, column: 7)
!3108 = !DILocation(line: 264, column: 14, scope: !3107)
!3109 = !DILocation(line: 265, column: 7, scope: !3107)
!3110 = !DILocation(line: 265, column: 11, scope: !3107)
!3111 = !DILocation(line: 266, column: 11, scope: !3107)
!3112 = !DILocation(line: 266, column: 26, scope: !3107)
!3113 = !DILocation(line: 267, column: 14, scope: !3107)
!3114 = !DILocation(line: 264, column: 7, scope: !392)
!3115 = !DILocation(line: 268, column: 5, scope: !3107)
!3116 = !DILocation(line: 0, scope: !2930, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 269, column: 8, scope: !392)
!3118 = !DILocation(line: 0, scope: !2938, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 70, column: 25, scope: !2930, inlinedAt: !3117)
!3120 = !DILocation(line: 2059, column: 24, scope: !2938, inlinedAt: !3119)
!3121 = !DILocation(line: 2059, column: 10, scope: !2938, inlinedAt: !3119)
!3122 = !DILocation(line: 0, scope: !2864, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 70, column: 10, scope: !2930, inlinedAt: !3117)
!3124 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3123)
!3125 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3123)
!3126 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3123)
!3127 = !DILocation(line: 270, column: 7, scope: !392)
!3128 = !DILocation(line: 271, column: 3, scope: !392)
!3129 = distinct !DISubprogram(name: "xzalloc", scope: !377, file: !377, line: 279, type: !2884, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3130)
!3130 = !{!3131}
!3131 = !DILocalVariable(name: "s", arg: 1, scope: !3129, file: !377, line: 279, type: !54)
!3132 = !DILocation(line: 0, scope: !3129)
!3133 = !DILocalVariable(name: "n", arg: 1, scope: !3134, file: !377, line: 294, type: !54)
!3134 = distinct !DISubprogram(name: "xcalloc", scope: !377, file: !377, line: 294, type: !2998, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3135)
!3135 = !{!3133, !3136}
!3136 = !DILocalVariable(name: "s", arg: 2, scope: !3134, file: !377, line: 294, type: !54)
!3137 = !DILocation(line: 0, scope: !3134, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 281, column: 10, scope: !3129)
!3139 = !DILocation(line: 296, column: 25, scope: !3134, inlinedAt: !3138)
!3140 = !DILocation(line: 0, scope: !2864, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 296, column: 10, scope: !3134, inlinedAt: !3138)
!3142 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3141)
!3143 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3141)
!3144 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3141)
!3145 = !DILocation(line: 281, column: 3, scope: !3129)
!3146 = !DILocation(line: 0, scope: !3134)
!3147 = !DILocation(line: 296, column: 25, scope: !3134)
!3148 = !DILocation(line: 0, scope: !2864, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 296, column: 10, scope: !3134)
!3150 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3149)
!3151 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3149)
!3152 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3149)
!3153 = !DILocation(line: 296, column: 3, scope: !3134)
!3154 = distinct !DISubprogram(name: "xizalloc", scope: !377, file: !377, line: 285, type: !2897, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3155)
!3155 = !{!3156}
!3156 = !DILocalVariable(name: "s", arg: 1, scope: !3154, file: !377, line: 285, type: !396)
!3157 = !DILocation(line: 0, scope: !3154)
!3158 = !DILocalVariable(name: "n", arg: 1, scope: !3159, file: !377, line: 300, type: !396)
!3159 = distinct !DISubprogram(name: "xicalloc", scope: !377, file: !377, line: 300, type: !3014, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3160)
!3160 = !{!3158, !3161}
!3161 = !DILocalVariable(name: "s", arg: 2, scope: !3159, file: !377, line: 300, type: !396)
!3162 = !DILocation(line: 0, scope: !3159, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 287, column: 10, scope: !3154)
!3164 = !DILocalVariable(name: "n", arg: 1, scope: !3165, file: !2904, line: 77, type: !396)
!3165 = distinct !DISubprogram(name: "icalloc", scope: !2904, file: !2904, line: 77, type: !3014, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3166)
!3166 = !{!3164, !3167}
!3167 = !DILocalVariable(name: "s", arg: 2, scope: !3165, file: !2904, line: 77, type: !396)
!3168 = !DILocation(line: 0, scope: !3165, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 302, column: 25, scope: !3159, inlinedAt: !3163)
!3170 = !DILocation(line: 91, column: 10, scope: !3165, inlinedAt: !3169)
!3171 = !DILocation(line: 0, scope: !2864, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 302, column: 10, scope: !3159, inlinedAt: !3163)
!3173 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3172)
!3174 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3172)
!3175 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3172)
!3176 = !DILocation(line: 287, column: 3, scope: !3154)
!3177 = !DILocation(line: 0, scope: !3159)
!3178 = !DILocation(line: 0, scope: !3165, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 302, column: 25, scope: !3159)
!3180 = !DILocation(line: 91, column: 10, scope: !3165, inlinedAt: !3179)
!3181 = !DILocation(line: 0, scope: !2864, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 302, column: 10, scope: !3159)
!3183 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3182)
!3184 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3182)
!3185 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3182)
!3186 = !DILocation(line: 302, column: 3, scope: !3159)
!3187 = distinct !DISubprogram(name: "xmemdup", scope: !377, file: !377, line: 310, type: !3188, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!53, !687, !54}
!3190 = !{!3191, !3192}
!3191 = !DILocalVariable(name: "p", arg: 1, scope: !3187, file: !377, line: 310, type: !687)
!3192 = !DILocalVariable(name: "s", arg: 2, scope: !3187, file: !377, line: 310, type: !54)
!3193 = !DILocation(line: 0, scope: !3187)
!3194 = !DILocation(line: 0, scope: !2883, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 312, column: 18, scope: !3187)
!3196 = !DILocation(line: 49, column: 25, scope: !2883, inlinedAt: !3195)
!3197 = !DILocation(line: 0, scope: !2864, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 49, column: 10, scope: !2883, inlinedAt: !3195)
!3199 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3198)
!3200 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3198)
!3201 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3198)
!3202 = !DILocalVariable(name: "__dest", arg: 1, scope: !3203, file: !1374, line: 26, type: !3206)
!3203 = distinct !DISubprogram(name: "memcpy", scope: !1374, file: !1374, line: 26, type: !3204, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3207)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!53, !3206, !686, !54}
!3206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!3207 = !{!3202, !3208, !3209}
!3208 = !DILocalVariable(name: "__src", arg: 2, scope: !3203, file: !1374, line: 26, type: !686)
!3209 = !DILocalVariable(name: "__len", arg: 3, scope: !3203, file: !1374, line: 26, type: !54)
!3210 = !DILocation(line: 0, scope: !3203, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 312, column: 10, scope: !3187)
!3212 = !DILocation(line: 29, column: 10, scope: !3203, inlinedAt: !3211)
!3213 = !DILocation(line: 312, column: 3, scope: !3187)
!3214 = distinct !DISubprogram(name: "ximemdup", scope: !377, file: !377, line: 316, type: !3215, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!53, !687, !396}
!3217 = !{!3218, !3219}
!3218 = !DILocalVariable(name: "p", arg: 1, scope: !3214, file: !377, line: 316, type: !687)
!3219 = !DILocalVariable(name: "s", arg: 2, scope: !3214, file: !377, line: 316, type: !396)
!3220 = !DILocation(line: 0, scope: !3214)
!3221 = !DILocation(line: 0, scope: !2896, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 318, column: 18, scope: !3214)
!3223 = !DILocation(line: 0, scope: !2903, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 55, column: 25, scope: !2896, inlinedAt: !3222)
!3225 = !DILocation(line: 57, column: 26, scope: !2903, inlinedAt: !3224)
!3226 = !DILocation(line: 0, scope: !2864, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 55, column: 10, scope: !2896, inlinedAt: !3222)
!3228 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3227)
!3229 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3227)
!3230 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3227)
!3231 = !DILocation(line: 0, scope: !3203, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 318, column: 10, scope: !3214)
!3233 = !DILocation(line: 29, column: 10, scope: !3203, inlinedAt: !3232)
!3234 = !DILocation(line: 318, column: 3, scope: !3214)
!3235 = distinct !DISubprogram(name: "ximemdup0", scope: !377, file: !377, line: 325, type: !3236, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!51, !687, !396}
!3238 = !{!3239, !3240, !3241}
!3239 = !DILocalVariable(name: "p", arg: 1, scope: !3235, file: !377, line: 325, type: !687)
!3240 = !DILocalVariable(name: "s", arg: 2, scope: !3235, file: !377, line: 325, type: !396)
!3241 = !DILocalVariable(name: "result", scope: !3235, file: !377, line: 327, type: !51)
!3242 = !DILocation(line: 0, scope: !3235)
!3243 = !DILocation(line: 327, column: 30, scope: !3235)
!3244 = !DILocation(line: 0, scope: !2896, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 327, column: 18, scope: !3235)
!3246 = !DILocation(line: 0, scope: !2903, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 55, column: 25, scope: !2896, inlinedAt: !3245)
!3248 = !DILocation(line: 57, column: 26, scope: !2903, inlinedAt: !3247)
!3249 = !DILocation(line: 0, scope: !2864, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 55, column: 10, scope: !2896, inlinedAt: !3245)
!3251 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3250)
!3252 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3250)
!3253 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3250)
!3254 = !DILocation(line: 328, column: 3, scope: !3235)
!3255 = !DILocation(line: 328, column: 13, scope: !3235)
!3256 = !DILocation(line: 0, scope: !3203, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 329, column: 10, scope: !3235)
!3258 = !DILocation(line: 29, column: 10, scope: !3203, inlinedAt: !3257)
!3259 = !DILocation(line: 329, column: 3, scope: !3235)
!3260 = distinct !DISubprogram(name: "xstrdup", scope: !377, file: !377, line: 335, type: !681, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3261)
!3261 = !{!3262}
!3262 = !DILocalVariable(name: "string", arg: 1, scope: !3260, file: !377, line: 335, type: !57)
!3263 = !DILocation(line: 0, scope: !3260)
!3264 = !DILocation(line: 337, column: 27, scope: !3260)
!3265 = !DILocation(line: 337, column: 43, scope: !3260)
!3266 = !DILocation(line: 0, scope: !3187, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 337, column: 10, scope: !3260)
!3268 = !DILocation(line: 0, scope: !2883, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 312, column: 18, scope: !3187, inlinedAt: !3267)
!3270 = !DILocation(line: 49, column: 25, scope: !2883, inlinedAt: !3269)
!3271 = !DILocation(line: 0, scope: !2864, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 49, column: 10, scope: !2883, inlinedAt: !3269)
!3273 = !DILocation(line: 39, column: 8, scope: !2871, inlinedAt: !3272)
!3274 = !DILocation(line: 39, column: 7, scope: !2864, inlinedAt: !3272)
!3275 = !DILocation(line: 40, column: 5, scope: !2871, inlinedAt: !3272)
!3276 = !DILocation(line: 0, scope: !3203, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 312, column: 10, scope: !3187, inlinedAt: !3267)
!3278 = !DILocation(line: 29, column: 10, scope: !3203, inlinedAt: !3277)
!3279 = !DILocation(line: 337, column: 3, scope: !3260)
!3280 = distinct !DISubprogram(name: "xalloc_die", scope: !411, file: !411, line: 32, type: !218, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3281)
!3281 = !{!3282}
!3282 = !DILocalVariable(name: "__errstatus", scope: !3283, file: !411, line: 34, type: !3284)
!3283 = distinct !DILexicalBlock(scope: !3280, file: !411, line: 34, column: 3)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3285 = !DILocation(line: 34, column: 3, scope: !3283)
!3286 = !DILocation(line: 0, scope: !3283)
!3287 = !DILocation(line: 40, column: 3, scope: !3280)
!3288 = distinct !DISubprogram(name: "xnumtoimax", scope: !3289, file: !3289, line: 42, type: !3290, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3292)
!3289 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!61, !57, !44, !61, !61, !57, !57, !44, !44}
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3305, !3306, !3307}
!3293 = !DILocalVariable(name: "n_str", arg: 1, scope: !3288, file: !3289, line: 42, type: !57)
!3294 = !DILocalVariable(name: "base", arg: 2, scope: !3288, file: !3289, line: 42, type: !44)
!3295 = !DILocalVariable(name: "min", arg: 3, scope: !3288, file: !3289, line: 42, type: !61)
!3296 = !DILocalVariable(name: "max", arg: 4, scope: !3288, file: !3289, line: 42, type: !61)
!3297 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3288, file: !3289, line: 43, type: !57)
!3298 = !DILocalVariable(name: "err", arg: 6, scope: !3288, file: !3289, line: 43, type: !57)
!3299 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3288, file: !3289, line: 43, type: !44)
!3300 = !DILocalVariable(name: "flags", arg: 8, scope: !3288, file: !3289, line: 44, type: !44)
!3301 = !DILocalVariable(name: "tnum", scope: !3288, file: !3289, line: 46, type: !61)
!3302 = !DILocalVariable(name: "r", scope: !3288, file: !3289, line: 46, type: !61)
!3303 = !DILocalVariable(name: "s_err", scope: !3288, file: !3289, line: 47, type: !3304)
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !416, line: 43, baseType: !415)
!3305 = !DILocalVariable(name: "overflow_errno", scope: !3288, file: !3289, line: 50, type: !44)
!3306 = !DILocalVariable(name: "e", scope: !3288, file: !3289, line: 75, type: !44)
!3307 = !DILocalVariable(name: "__errstatus", scope: !3308, file: !3289, line: 80, type: !3284)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !3289, line: 80, column: 5)
!3309 = distinct !DILexicalBlock(scope: !3288, file: !3289, line: 77, column: 7)
!3310 = !DILocation(line: 0, scope: !3288)
!3311 = !DILocation(line: 46, column: 3, scope: !3288)
!3312 = !DILocation(line: 47, column: 24, scope: !3288)
!3313 = !DILocation(line: 52, column: 13, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3288, file: !3289, line: 52, column: 7)
!3315 = !DILocation(line: 52, column: 7, scope: !3288)
!3316 = !DILocation(line: 54, column: 11, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !3289, line: 54, column: 11)
!3318 = distinct !DILexicalBlock(scope: !3314, file: !3289, line: 53, column: 5)
!3319 = !DILocation(line: 54, column: 16, scope: !3317)
!3320 = !DILocation(line: 54, column: 11, scope: !3318)
!3321 = !DILocation(line: 57, column: 34, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3317, file: !3289, line: 55, column: 9)
!3323 = !DILocation(line: 57, column: 28, scope: !3322)
!3324 = !DILocation(line: 58, column: 21, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3322, file: !3289, line: 58, column: 15)
!3326 = !DILocation(line: 0, scope: !3322)
!3327 = !DILocation(line: 61, column: 20, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3317, file: !3289, line: 61, column: 16)
!3329 = !DILocation(line: 61, column: 16, scope: !3317)
!3330 = !DILocation(line: 64, column: 34, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3328, file: !3289, line: 62, column: 9)
!3332 = !DILocation(line: 64, column: 28, scope: !3331)
!3333 = !DILocation(line: 65, column: 21, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3331, file: !3289, line: 65, column: 15)
!3335 = !DILocation(line: 0, scope: !3331)
!3336 = !DILocation(line: 75, column: 17, scope: !3288)
!3337 = !DILocation(line: 75, column: 11, scope: !3288)
!3338 = !DILocation(line: 77, column: 16, scope: !3309)
!3339 = !DILocation(line: 78, column: 10, scope: !3309)
!3340 = !DILocation(line: 79, column: 14, scope: !3309)
!3341 = !DILocation(line: 79, column: 31, scope: !3309)
!3342 = !DILocation(line: 79, column: 26, scope: !3309)
!3343 = !DILocation(line: 79, column: 23, scope: !3309)
!3344 = !DILocation(line: 77, column: 7, scope: !3288)
!3345 = !DILocation(line: 80, column: 5, scope: !3309)
!3346 = !DILocation(line: 0, scope: !3309)
!3347 = !DILocation(line: 82, column: 3, scope: !3288)
!3348 = !DILocation(line: 82, column: 9, scope: !3288)
!3349 = !DILocation(line: 84, column: 1, scope: !3288)
!3350 = !DILocation(line: 83, column: 3, scope: !3288)
!3351 = distinct !DISubprogram(name: "xdectoimax", scope: !3289, file: !3289, line: 92, type: !3352, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!61, !57, !61, !61, !57, !57, !44}
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360}
!3355 = !DILocalVariable(name: "n_str", arg: 1, scope: !3351, file: !3289, line: 92, type: !57)
!3356 = !DILocalVariable(name: "min", arg: 2, scope: !3351, file: !3289, line: 92, type: !61)
!3357 = !DILocalVariable(name: "max", arg: 3, scope: !3351, file: !3289, line: 92, type: !61)
!3358 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3351, file: !3289, line: 93, type: !57)
!3359 = !DILocalVariable(name: "err", arg: 5, scope: !3351, file: !3289, line: 93, type: !57)
!3360 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3351, file: !3289, line: 93, type: !44)
!3361 = !DILocation(line: 0, scope: !3351)
!3362 = !DILocation(line: 0, scope: !3288, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 95, column: 10, scope: !3351)
!3364 = !DILocation(line: 46, column: 3, scope: !3288, inlinedAt: !3363)
!3365 = !DILocation(line: 47, column: 24, scope: !3288, inlinedAt: !3363)
!3366 = !DILocation(line: 52, column: 13, scope: !3314, inlinedAt: !3363)
!3367 = !DILocation(line: 52, column: 7, scope: !3288, inlinedAt: !3363)
!3368 = !DILocation(line: 54, column: 11, scope: !3317, inlinedAt: !3363)
!3369 = !DILocation(line: 54, column: 16, scope: !3317, inlinedAt: !3363)
!3370 = !DILocation(line: 54, column: 11, scope: !3318, inlinedAt: !3363)
!3371 = !DILocation(line: 58, column: 21, scope: !3325, inlinedAt: !3363)
!3372 = !DILocation(line: 0, scope: !3322, inlinedAt: !3363)
!3373 = !DILocation(line: 61, column: 20, scope: !3328, inlinedAt: !3363)
!3374 = !DILocation(line: 61, column: 16, scope: !3317, inlinedAt: !3363)
!3375 = !DILocation(line: 65, column: 21, scope: !3334, inlinedAt: !3363)
!3376 = !DILocation(line: 0, scope: !3331, inlinedAt: !3363)
!3377 = !DILocation(line: 78, column: 10, scope: !3309, inlinedAt: !3363)
!3378 = !DILocation(line: 80, column: 5, scope: !3309, inlinedAt: !3363)
!3379 = !DILocation(line: 0, scope: !3309, inlinedAt: !3363)
!3380 = !DILocation(line: 82, column: 3, scope: !3288, inlinedAt: !3363)
!3381 = !DILocation(line: 82, column: 9, scope: !3288, inlinedAt: !3363)
!3382 = !DILocation(line: 84, column: 1, scope: !3288, inlinedAt: !3363)
!3383 = !DILocation(line: 95, column: 3, scope: !3351)
!3384 = distinct !DISubprogram(name: "xstrtoimax", scope: !3385, file: !3385, line: 71, type: !3386, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !3389)
!3385 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!3304, !57, !692, !44, !3388, !57}
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3402, !3403}
!3390 = !DILocalVariable(name: "nptr", arg: 1, scope: !3384, file: !3385, line: 71, type: !57)
!3391 = !DILocalVariable(name: "endptr", arg: 2, scope: !3384, file: !3385, line: 71, type: !692)
!3392 = !DILocalVariable(name: "base", arg: 3, scope: !3384, file: !3385, line: 71, type: !44)
!3393 = !DILocalVariable(name: "val", arg: 4, scope: !3384, file: !3385, line: 72, type: !3388)
!3394 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3384, file: !3385, line: 72, type: !57)
!3395 = !DILocalVariable(name: "t_ptr", scope: !3384, file: !3385, line: 74, type: !51)
!3396 = !DILocalVariable(name: "p", scope: !3384, file: !3385, line: 75, type: !692)
!3397 = !DILocalVariable(name: "tmp", scope: !3384, file: !3385, line: 91, type: !61)
!3398 = !DILocalVariable(name: "err", scope: !3384, file: !3385, line: 92, type: !3304)
!3399 = !DILocalVariable(name: "xbase", scope: !3400, file: !3385, line: 126, type: !44)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3385, line: 119, column: 5)
!3401 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 118, column: 7)
!3402 = !DILocalVariable(name: "suffixes", scope: !3400, file: !3385, line: 127, type: !44)
!3403 = !DILocalVariable(name: "overflow", scope: !3400, file: !3385, line: 156, type: !3304)
!3404 = !DILocation(line: 0, scope: !3384)
!3405 = !DILocation(line: 74, column: 3, scope: !3384)
!3406 = !DILocation(line: 75, column: 14, scope: !3384)
!3407 = !DILocation(line: 90, column: 3, scope: !3384)
!3408 = !DILocation(line: 90, column: 9, scope: !3384)
!3409 = !DILocation(line: 91, column: 20, scope: !3384)
!3410 = !DILocation(line: 94, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 94, column: 7)
!3412 = !DILocation(line: 94, column: 10, scope: !3411)
!3413 = !DILocation(line: 94, column: 7, scope: !3384)
!3414 = !DILocation(line: 98, column: 14, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !3385, line: 98, column: 11)
!3416 = distinct !DILexicalBlock(scope: !3411, file: !3385, line: 95, column: 5)
!3417 = !DILocation(line: 98, column: 29, scope: !3415)
!3418 = !DILocation(line: 98, column: 32, scope: !3415)
!3419 = !DILocation(line: 98, column: 38, scope: !3415)
!3420 = !DILocation(line: 98, column: 41, scope: !3415)
!3421 = !DILocation(line: 98, column: 11, scope: !3416)
!3422 = !DILocation(line: 102, column: 12, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3411, file: !3385, line: 102, column: 12)
!3424 = !DILocation(line: 102, column: 12, scope: !3411)
!3425 = !DILocation(line: 107, column: 5, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3423, file: !3385, line: 103, column: 5)
!3427 = !DILocation(line: 112, column: 8, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3384, file: !3385, line: 112, column: 7)
!3429 = !DILocation(line: 112, column: 7, scope: !3384)
!3430 = !DILocation(line: 114, column: 12, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3428, file: !3385, line: 113, column: 5)
!3432 = !DILocation(line: 115, column: 7, scope: !3431)
!3433 = !DILocation(line: 118, column: 7, scope: !3401)
!3434 = !DILocation(line: 118, column: 11, scope: !3401)
!3435 = !DILocation(line: 118, column: 7, scope: !3384)
!3436 = !DILocation(line: 120, column: 12, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3400, file: !3385, line: 120, column: 11)
!3438 = !DILocation(line: 120, column: 11, scope: !3400)
!3439 = !DILocation(line: 122, column: 16, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3437, file: !3385, line: 121, column: 9)
!3441 = !DILocation(line: 123, column: 22, scope: !3440)
!3442 = !DILocation(line: 123, column: 11, scope: !3440)
!3443 = !DILocation(line: 0, scope: !3400)
!3444 = !DILocation(line: 128, column: 7, scope: !3400)
!3445 = !DILocation(line: 140, column: 15, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3385, line: 140, column: 15)
!3447 = distinct !DILexicalBlock(scope: !3400, file: !3385, line: 129, column: 9)
!3448 = !DILocation(line: 140, column: 15, scope: !3447)
!3449 = !DILocation(line: 141, column: 21, scope: !3446)
!3450 = !DILocation(line: 141, column: 13, scope: !3446)
!3451 = !DILocation(line: 144, column: 21, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !3385, line: 144, column: 21)
!3453 = distinct !DILexicalBlock(scope: !3446, file: !3385, line: 142, column: 15)
!3454 = !DILocation(line: 144, column: 29, scope: !3452)
!3455 = !DILocation(line: 144, column: 21, scope: !3453)
!3456 = !DILocation(line: 152, column: 17, scope: !3453)
!3457 = !DILocation(line: 157, column: 7, scope: !3400)
!3458 = !DILocalVariable(name: "err", scope: !3459, file: !3385, line: 64, type: !3304)
!3459 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3385, file: !3385, line: 62, type: !3460, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!3304, !3388, !44, !44}
!3462 = !{!3463, !3464, !3465, !3458}
!3463 = !DILocalVariable(name: "x", arg: 1, scope: !3459, file: !3385, line: 62, type: !3388)
!3464 = !DILocalVariable(name: "base", arg: 2, scope: !3459, file: !3385, line: 62, type: !44)
!3465 = !DILocalVariable(name: "power", arg: 3, scope: !3459, file: !3385, line: 62, type: !44)
!3466 = !DILocation(line: 0, scope: !3459, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 219, column: 22, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3400, file: !3385, line: 158, column: 9)
!3469 = !DILocalVariable(name: "x", arg: 1, scope: !3470, file: !3385, line: 47, type: !3388)
!3470 = distinct !DISubprogram(name: "bkm_scale", scope: !3385, file: !3385, line: 47, type: !3471, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!3304, !3388, !44}
!3473 = !{!3469, !3474, !3475}
!3474 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3470, file: !3385, line: 47, type: !44)
!3475 = !DILocalVariable(name: "scaled", scope: !3470, file: !3385, line: 49, type: !61)
!3476 = !DILocation(line: 0, scope: !3470, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3467)
!3478 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3477)
!3479 = distinct !DILexicalBlock(scope: !3470, file: !3385, line: 50, column: 7)
!3480 = !DILocation(line: 0, scope: !3459, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 215, column: 22, scope: !3468)
!3482 = !DILocation(line: 0, scope: !3470, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3481)
!3484 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3483)
!3485 = !DILocation(line: 0, scope: !3459, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 202, column: 22, scope: !3468)
!3487 = !DILocation(line: 0, scope: !3470, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3486)
!3489 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3488)
!3490 = !DILocation(line: 0, scope: !3459, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 198, column: 22, scope: !3468)
!3492 = !DILocation(line: 0, scope: !3470, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3491)
!3494 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3493)
!3495 = !DILocation(line: 0, scope: !3459, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 194, column: 22, scope: !3468)
!3497 = !DILocation(line: 0, scope: !3470, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3496)
!3499 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3498)
!3500 = !DILocation(line: 0, scope: !3459, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 175, column: 22, scope: !3468)
!3502 = !DILocation(line: 0, scope: !3470, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3501)
!3504 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3503)
!3505 = !DILocation(line: 0, scope: !3470, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 160, column: 22, scope: !3468)
!3507 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3506)
!3508 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3506)
!3509 = !DILocation(line: 0, scope: !3470, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 167, column: 22, scope: !3468)
!3511 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3510)
!3512 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3510)
!3513 = !DILocation(line: 66, column: 9, scope: !3459, inlinedAt: !3501)
!3514 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3503)
!3515 = !DILocation(line: 227, column: 11, scope: !3400)
!3516 = !DILocation(line: 0, scope: !3459, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 180, column: 22, scope: !3468)
!3518 = !DILocation(line: 0, scope: !3470, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3517)
!3520 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3519)
!3521 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3519)
!3522 = !DILocation(line: 66, column: 9, scope: !3459, inlinedAt: !3517)
!3523 = !DILocation(line: 0, scope: !3459, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 185, column: 22, scope: !3468)
!3525 = !DILocation(line: 0, scope: !3470, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3524)
!3527 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3526)
!3528 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3526)
!3529 = !DILocation(line: 0, scope: !3459, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 190, column: 22, scope: !3468)
!3531 = !DILocation(line: 0, scope: !3470, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3530)
!3533 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3532)
!3534 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3532)
!3535 = !DILocation(line: 66, column: 9, scope: !3459, inlinedAt: !3530)
!3536 = !DILocation(line: 66, column: 9, scope: !3459, inlinedAt: !3496)
!3537 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3498)
!3538 = !DILocation(line: 66, column: 9, scope: !3459, inlinedAt: !3491)
!3539 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3493)
!3540 = !DILocation(line: 66, column: 9, scope: !3459, inlinedAt: !3486)
!3541 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3488)
!3542 = !DILocation(line: 0, scope: !3459, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 207, column: 22, scope: !3468)
!3544 = !DILocation(line: 0, scope: !3470, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 66, column: 12, scope: !3459, inlinedAt: !3543)
!3546 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3545)
!3547 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3545)
!3548 = !DILocation(line: 66, column: 9, scope: !3459, inlinedAt: !3543)
!3549 = !DILocation(line: 0, scope: !3470, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 211, column: 22, scope: !3468)
!3551 = !DILocation(line: 50, column: 7, scope: !3479, inlinedAt: !3550)
!3552 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3550)
!3553 = !DILocation(line: 66, column: 9, scope: !3459, inlinedAt: !3481)
!3554 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3483)
!3555 = !DILocation(line: 66, column: 9, scope: !3459, inlinedAt: !3467)
!3556 = !DILocation(line: 50, column: 7, scope: !3470, inlinedAt: !3477)
!3557 = !DILocation(line: 0, scope: !3468)
!3558 = !DILocation(line: 228, column: 10, scope: !3400)
!3559 = !DILocation(line: 229, column: 11, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3400, file: !3385, line: 229, column: 11)
!3561 = !DILocation(line: 229, column: 11, scope: !3400)
!3562 = !DILocation(line: 223, column: 16, scope: !3468)
!3563 = !DILocation(line: 224, column: 22, scope: !3468)
!3564 = !DILocation(line: 100, column: 11, scope: !3416)
!3565 = !DILocation(line: 92, column: 16, scope: !3384)
!3566 = !DILocation(line: 233, column: 8, scope: !3384)
!3567 = !DILocation(line: 234, column: 3, scope: !3384)
!3568 = !DILocation(line: 235, column: 1, scope: !3384)
!3569 = !DISubprogram(name: "strtoimax", scope: !3570, file: !3570, line: 297, type: !3571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!3570 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!61, !565, !3573, !44}
!3573 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !692)
!3574 = distinct !DISubprogram(name: "close_stream", scope: !435, file: !435, line: 55, type: !3575, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3611)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!44, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !98, line: 7, baseType: !3579)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !100, line: 49, size: 1728, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3579, file: !100, line: 51, baseType: !44, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3579, file: !100, line: 54, baseType: !51, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3579, file: !100, line: 55, baseType: !51, size: 64, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3579, file: !100, line: 56, baseType: !51, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3579, file: !100, line: 57, baseType: !51, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3579, file: !100, line: 58, baseType: !51, size: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3579, file: !100, line: 59, baseType: !51, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3579, file: !100, line: 60, baseType: !51, size: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3579, file: !100, line: 61, baseType: !51, size: 64, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3579, file: !100, line: 64, baseType: !51, size: 64, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3579, file: !100, line: 65, baseType: !51, size: 64, offset: 640)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3579, file: !100, line: 66, baseType: !51, size: 64, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3579, file: !100, line: 68, baseType: !115, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3579, file: !100, line: 70, baseType: !3595, size: 64, offset: 832)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3579, file: !100, line: 72, baseType: !44, size: 32, offset: 896)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3579, file: !100, line: 73, baseType: !44, size: 32, offset: 928)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3579, file: !100, line: 74, baseType: !48, size: 64, offset: 960)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3579, file: !100, line: 77, baseType: !45, size: 16, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3579, file: !100, line: 78, baseType: !124, size: 8, offset: 1040)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3579, file: !100, line: 79, baseType: !126, size: 8, offset: 1048)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3579, file: !100, line: 81, baseType: !130, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3579, file: !100, line: 89, baseType: !133, size: 64, offset: 1152)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3579, file: !100, line: 91, baseType: !135, size: 64, offset: 1216)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3579, file: !100, line: 92, baseType: !138, size: 64, offset: 1280)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3579, file: !100, line: 93, baseType: !3595, size: 64, offset: 1344)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3579, file: !100, line: 94, baseType: !53, size: 64, offset: 1408)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3579, file: !100, line: 95, baseType: !54, size: 64, offset: 1472)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3579, file: !100, line: 96, baseType: !44, size: 32, offset: 1536)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3579, file: !100, line: 98, baseType: !145, size: 160, offset: 1568)
!3611 = !{!3612, !3613, !3615, !3616}
!3612 = !DILocalVariable(name: "stream", arg: 1, scope: !3574, file: !435, line: 55, type: !3577)
!3613 = !DILocalVariable(name: "some_pending", scope: !3574, file: !435, line: 57, type: !3614)
!3614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!3615 = !DILocalVariable(name: "prev_fail", scope: !3574, file: !435, line: 58, type: !3614)
!3616 = !DILocalVariable(name: "fclose_fail", scope: !3574, file: !435, line: 59, type: !3614)
!3617 = !DILocation(line: 0, scope: !3574)
!3618 = !DILocation(line: 57, column: 30, scope: !3574)
!3619 = !DILocalVariable(name: "__stream", arg: 1, scope: !3620, file: !1225, line: 135, type: !3577)
!3620 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1225, file: !1225, line: 135, type: !3575, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3621)
!3621 = !{!3619}
!3622 = !DILocation(line: 0, scope: !3620, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 58, column: 27, scope: !3574)
!3624 = !DILocation(line: 137, column: 10, scope: !3620, inlinedAt: !3623)
!3625 = !{!1234, !570, i64 0}
!3626 = !DILocation(line: 58, column: 43, scope: !3574)
!3627 = !DILocation(line: 59, column: 29, scope: !3574)
!3628 = !DILocation(line: 59, column: 45, scope: !3574)
!3629 = !DILocation(line: 69, column: 17, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3574, file: !435, line: 69, column: 7)
!3631 = !DILocation(line: 57, column: 50, scope: !3574)
!3632 = !DILocation(line: 69, column: 33, scope: !3630)
!3633 = !DILocation(line: 69, column: 53, scope: !3630)
!3634 = !DILocation(line: 69, column: 59, scope: !3630)
!3635 = !DILocation(line: 69, column: 7, scope: !3574)
!3636 = !DILocation(line: 71, column: 11, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3630, file: !435, line: 70, column: 5)
!3638 = !DILocation(line: 72, column: 9, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3637, file: !435, line: 71, column: 11)
!3640 = !DILocation(line: 72, column: 15, scope: !3639)
!3641 = !DILocation(line: 77, column: 1, scope: !3574)
!3642 = distinct !DISubprogram(name: "rpl_fclose", scope: !437, file: !437, line: 58, type: !3643, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !3679)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!44, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !98, line: 7, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !100, line: 49, size: 1728, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3647, file: !100, line: 51, baseType: !44, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3647, file: !100, line: 54, baseType: !51, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3647, file: !100, line: 55, baseType: !51, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3647, file: !100, line: 56, baseType: !51, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3647, file: !100, line: 57, baseType: !51, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3647, file: !100, line: 58, baseType: !51, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3647, file: !100, line: 59, baseType: !51, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3647, file: !100, line: 60, baseType: !51, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3647, file: !100, line: 61, baseType: !51, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3647, file: !100, line: 64, baseType: !51, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3647, file: !100, line: 65, baseType: !51, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3647, file: !100, line: 66, baseType: !51, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3647, file: !100, line: 68, baseType: !115, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3647, file: !100, line: 70, baseType: !3663, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3647, file: !100, line: 72, baseType: !44, size: 32, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3647, file: !100, line: 73, baseType: !44, size: 32, offset: 928)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3647, file: !100, line: 74, baseType: !48, size: 64, offset: 960)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3647, file: !100, line: 77, baseType: !45, size: 16, offset: 1024)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3647, file: !100, line: 78, baseType: !124, size: 8, offset: 1040)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3647, file: !100, line: 79, baseType: !126, size: 8, offset: 1048)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3647, file: !100, line: 81, baseType: !130, size: 64, offset: 1088)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3647, file: !100, line: 89, baseType: !133, size: 64, offset: 1152)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3647, file: !100, line: 91, baseType: !135, size: 64, offset: 1216)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3647, file: !100, line: 92, baseType: !138, size: 64, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3647, file: !100, line: 93, baseType: !3663, size: 64, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3647, file: !100, line: 94, baseType: !53, size: 64, offset: 1408)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3647, file: !100, line: 95, baseType: !54, size: 64, offset: 1472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3647, file: !100, line: 96, baseType: !44, size: 32, offset: 1536)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3647, file: !100, line: 98, baseType: !145, size: 160, offset: 1568)
!3679 = !{!3680, !3681, !3682, !3683}
!3680 = !DILocalVariable(name: "fp", arg: 1, scope: !3642, file: !437, line: 58, type: !3645)
!3681 = !DILocalVariable(name: "saved_errno", scope: !3642, file: !437, line: 60, type: !44)
!3682 = !DILocalVariable(name: "fd", scope: !3642, file: !437, line: 63, type: !44)
!3683 = !DILocalVariable(name: "result", scope: !3642, file: !437, line: 74, type: !44)
!3684 = !DILocation(line: 0, scope: !3642)
!3685 = !DILocation(line: 63, column: 12, scope: !3642)
!3686 = !DILocation(line: 64, column: 10, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3642, file: !437, line: 64, column: 7)
!3688 = !DILocation(line: 64, column: 7, scope: !3642)
!3689 = !DILocation(line: 65, column: 12, scope: !3687)
!3690 = !DILocation(line: 65, column: 5, scope: !3687)
!3691 = !DILocation(line: 70, column: 9, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3642, file: !437, line: 70, column: 7)
!3693 = !DILocation(line: 70, column: 23, scope: !3692)
!3694 = !DILocation(line: 70, column: 33, scope: !3692)
!3695 = !DILocation(line: 70, column: 26, scope: !3692)
!3696 = !DILocation(line: 70, column: 59, scope: !3692)
!3697 = !DILocation(line: 71, column: 7, scope: !3692)
!3698 = !DILocation(line: 71, column: 10, scope: !3692)
!3699 = !DILocation(line: 70, column: 7, scope: !3642)
!3700 = !DILocation(line: 100, column: 12, scope: !3642)
!3701 = !DILocation(line: 105, column: 7, scope: !3642)
!3702 = !DILocation(line: 72, column: 19, scope: !3692)
!3703 = !DILocation(line: 105, column: 19, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3642, file: !437, line: 105, column: 7)
!3705 = !DILocation(line: 107, column: 13, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3704, file: !437, line: 106, column: 5)
!3707 = !DILocation(line: 109, column: 5, scope: !3706)
!3708 = !DILocation(line: 112, column: 1, scope: !3642)
!3709 = !DISubprogram(name: "fileno", scope: !47, file: !47, line: 809, type: !3643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!3710 = !DISubprogram(name: "fclose", scope: !47, file: !47, line: 178, type: !3643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!3711 = distinct !DISubprogram(name: "rpl_fflush", scope: !439, file: !439, line: 130, type: !3712, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !3748)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!44, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !98, line: 7, baseType: !3716)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !100, line: 49, size: 1728, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3716, file: !100, line: 51, baseType: !44, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3716, file: !100, line: 54, baseType: !51, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3716, file: !100, line: 55, baseType: !51, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3716, file: !100, line: 56, baseType: !51, size: 64, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3716, file: !100, line: 57, baseType: !51, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3716, file: !100, line: 58, baseType: !51, size: 64, offset: 320)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3716, file: !100, line: 59, baseType: !51, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3716, file: !100, line: 60, baseType: !51, size: 64, offset: 448)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3716, file: !100, line: 61, baseType: !51, size: 64, offset: 512)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3716, file: !100, line: 64, baseType: !51, size: 64, offset: 576)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3716, file: !100, line: 65, baseType: !51, size: 64, offset: 640)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3716, file: !100, line: 66, baseType: !51, size: 64, offset: 704)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3716, file: !100, line: 68, baseType: !115, size: 64, offset: 768)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3716, file: !100, line: 70, baseType: !3732, size: 64, offset: 832)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3716, file: !100, line: 72, baseType: !44, size: 32, offset: 896)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3716, file: !100, line: 73, baseType: !44, size: 32, offset: 928)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3716, file: !100, line: 74, baseType: !48, size: 64, offset: 960)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3716, file: !100, line: 77, baseType: !45, size: 16, offset: 1024)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3716, file: !100, line: 78, baseType: !124, size: 8, offset: 1040)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3716, file: !100, line: 79, baseType: !126, size: 8, offset: 1048)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3716, file: !100, line: 81, baseType: !130, size: 64, offset: 1088)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3716, file: !100, line: 89, baseType: !133, size: 64, offset: 1152)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3716, file: !100, line: 91, baseType: !135, size: 64, offset: 1216)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3716, file: !100, line: 92, baseType: !138, size: 64, offset: 1280)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3716, file: !100, line: 93, baseType: !3732, size: 64, offset: 1344)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3716, file: !100, line: 94, baseType: !53, size: 64, offset: 1408)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3716, file: !100, line: 95, baseType: !54, size: 64, offset: 1472)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3716, file: !100, line: 96, baseType: !44, size: 32, offset: 1536)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3716, file: !100, line: 98, baseType: !145, size: 160, offset: 1568)
!3748 = !{!3749}
!3749 = !DILocalVariable(name: "stream", arg: 1, scope: !3711, file: !439, line: 130, type: !3714)
!3750 = !DILocation(line: 0, scope: !3711)
!3751 = !DILocation(line: 151, column: 14, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3711, file: !439, line: 151, column: 7)
!3753 = !DILocation(line: 151, column: 22, scope: !3752)
!3754 = !DILocation(line: 151, column: 27, scope: !3752)
!3755 = !DILocation(line: 151, column: 7, scope: !3711)
!3756 = !DILocation(line: 152, column: 12, scope: !3752)
!3757 = !DILocation(line: 152, column: 5, scope: !3752)
!3758 = !DILocalVariable(name: "fp", arg: 1, scope: !3759, file: !439, line: 42, type: !3714)
!3759 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !439, file: !439, line: 42, type: !3760, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3714}
!3762 = !{!3758}
!3763 = !DILocation(line: 0, scope: !3759, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 157, column: 3, scope: !3711)
!3765 = !DILocation(line: 44, column: 12, scope: !3766, inlinedAt: !3764)
!3766 = distinct !DILexicalBlock(scope: !3759, file: !439, line: 44, column: 7)
!3767 = !DILocation(line: 44, column: 19, scope: !3766, inlinedAt: !3764)
!3768 = !DILocation(line: 44, column: 7, scope: !3759, inlinedAt: !3764)
!3769 = !DILocation(line: 46, column: 5, scope: !3766, inlinedAt: !3764)
!3770 = !DILocation(line: 159, column: 10, scope: !3711)
!3771 = !DILocation(line: 159, column: 3, scope: !3711)
!3772 = !DILocation(line: 236, column: 1, scope: !3711)
!3773 = !DISubprogram(name: "fflush", scope: !47, file: !47, line: 230, type: !3712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!3774 = distinct !DISubprogram(name: "rpl_fseeko", scope: !441, file: !441, line: 28, type: !3775, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3811)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!44, !3777, !46, !44}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !98, line: 7, baseType: !3779)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !100, line: 49, size: 1728, elements: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3779, file: !100, line: 51, baseType: !44, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3779, file: !100, line: 54, baseType: !51, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3779, file: !100, line: 55, baseType: !51, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3779, file: !100, line: 56, baseType: !51, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3779, file: !100, line: 57, baseType: !51, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3779, file: !100, line: 58, baseType: !51, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3779, file: !100, line: 59, baseType: !51, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3779, file: !100, line: 60, baseType: !51, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3779, file: !100, line: 61, baseType: !51, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3779, file: !100, line: 64, baseType: !51, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3779, file: !100, line: 65, baseType: !51, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3779, file: !100, line: 66, baseType: !51, size: 64, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3779, file: !100, line: 68, baseType: !115, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3779, file: !100, line: 70, baseType: !3795, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3779, file: !100, line: 72, baseType: !44, size: 32, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3779, file: !100, line: 73, baseType: !44, size: 32, offset: 928)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3779, file: !100, line: 74, baseType: !48, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3779, file: !100, line: 77, baseType: !45, size: 16, offset: 1024)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3779, file: !100, line: 78, baseType: !124, size: 8, offset: 1040)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3779, file: !100, line: 79, baseType: !126, size: 8, offset: 1048)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3779, file: !100, line: 81, baseType: !130, size: 64, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3779, file: !100, line: 89, baseType: !133, size: 64, offset: 1152)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3779, file: !100, line: 91, baseType: !135, size: 64, offset: 1216)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3779, file: !100, line: 92, baseType: !138, size: 64, offset: 1280)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3779, file: !100, line: 93, baseType: !3795, size: 64, offset: 1344)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3779, file: !100, line: 94, baseType: !53, size: 64, offset: 1408)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3779, file: !100, line: 95, baseType: !54, size: 64, offset: 1472)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3779, file: !100, line: 96, baseType: !44, size: 32, offset: 1536)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3779, file: !100, line: 98, baseType: !145, size: 160, offset: 1568)
!3811 = !{!3812, !3813, !3814, !3815}
!3812 = !DILocalVariable(name: "fp", arg: 1, scope: !3774, file: !441, line: 28, type: !3777)
!3813 = !DILocalVariable(name: "offset", arg: 2, scope: !3774, file: !441, line: 28, type: !46)
!3814 = !DILocalVariable(name: "whence", arg: 3, scope: !3774, file: !441, line: 28, type: !44)
!3815 = !DILocalVariable(name: "pos", scope: !3816, file: !441, line: 123, type: !46)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !441, line: 119, column: 5)
!3817 = distinct !DILexicalBlock(scope: !3774, file: !441, line: 55, column: 7)
!3818 = !DILocation(line: 0, scope: !3774)
!3819 = !DILocation(line: 55, column: 12, scope: !3817)
!3820 = !{!1234, !475, i64 16}
!3821 = !DILocation(line: 55, column: 33, scope: !3817)
!3822 = !{!1234, !475, i64 8}
!3823 = !DILocation(line: 55, column: 25, scope: !3817)
!3824 = !DILocation(line: 56, column: 7, scope: !3817)
!3825 = !DILocation(line: 56, column: 15, scope: !3817)
!3826 = !DILocation(line: 56, column: 37, scope: !3817)
!3827 = !{!1234, !475, i64 32}
!3828 = !DILocation(line: 56, column: 29, scope: !3817)
!3829 = !DILocation(line: 57, column: 7, scope: !3817)
!3830 = !DILocation(line: 57, column: 15, scope: !3817)
!3831 = !{!1234, !475, i64 72}
!3832 = !DILocation(line: 57, column: 29, scope: !3817)
!3833 = !DILocation(line: 55, column: 7, scope: !3774)
!3834 = !DILocation(line: 123, column: 26, scope: !3816)
!3835 = !DILocation(line: 123, column: 19, scope: !3816)
!3836 = !DILocation(line: 0, scope: !3816)
!3837 = !DILocation(line: 124, column: 15, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3816, file: !441, line: 124, column: 11)
!3839 = !DILocation(line: 124, column: 11, scope: !3816)
!3840 = !DILocation(line: 135, column: 12, scope: !3816)
!3841 = !DILocation(line: 135, column: 19, scope: !3816)
!3842 = !DILocation(line: 136, column: 12, scope: !3816)
!3843 = !DILocation(line: 136, column: 20, scope: !3816)
!3844 = !{!1234, !853, i64 144}
!3845 = !DILocation(line: 167, column: 7, scope: !3816)
!3846 = !DILocation(line: 169, column: 10, scope: !3774)
!3847 = !DILocation(line: 169, column: 3, scope: !3774)
!3848 = !DILocation(line: 170, column: 1, scope: !3774)
!3849 = !DISubprogram(name: "fseeko", scope: !47, file: !47, line: 736, type: !3850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!44, !3777, !48, !44}
!3852 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !354, file: !354, line: 100, type: !3853, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !3856)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!54, !1392, !57, !54, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!3856 = !{!3857, !3858, !3859, !3860, !3861}
!3857 = !DILocalVariable(name: "pwc", arg: 1, scope: !3852, file: !354, line: 100, type: !1392)
!3858 = !DILocalVariable(name: "s", arg: 2, scope: !3852, file: !354, line: 100, type: !57)
!3859 = !DILocalVariable(name: "n", arg: 3, scope: !3852, file: !354, line: 100, type: !54)
!3860 = !DILocalVariable(name: "ps", arg: 4, scope: !3852, file: !354, line: 100, type: !3855)
!3861 = !DILocalVariable(name: "ret", scope: !3852, file: !354, line: 130, type: !54)
!3862 = !DILocation(line: 0, scope: !3852)
!3863 = !DILocation(line: 105, column: 9, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3852, file: !354, line: 105, column: 7)
!3865 = !DILocation(line: 105, column: 7, scope: !3852)
!3866 = !DILocation(line: 117, column: 10, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3852, file: !354, line: 117, column: 7)
!3868 = !DILocation(line: 117, column: 7, scope: !3852)
!3869 = !DILocation(line: 130, column: 16, scope: !3852)
!3870 = !DILocation(line: 135, column: 11, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3852, file: !354, line: 135, column: 7)
!3872 = !DILocation(line: 135, column: 25, scope: !3871)
!3873 = !DILocation(line: 135, column: 30, scope: !3871)
!3874 = !DILocation(line: 135, column: 7, scope: !3852)
!3875 = !DILocalVariable(name: "ps", arg: 1, scope: !3876, file: !1365, line: 1135, type: !3855)
!3876 = distinct !DISubprogram(name: "mbszero", scope: !1365, file: !1365, line: 1135, type: !3877, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3855}
!3879 = !{!3875}
!3880 = !DILocation(line: 0, scope: !3876, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 137, column: 5, scope: !3871)
!3882 = !DILocalVariable(name: "__dest", arg: 1, scope: !3883, file: !1374, line: 57, type: !53)
!3883 = distinct !DISubprogram(name: "memset", scope: !1374, file: !1374, line: 57, type: !1375, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !3884)
!3884 = !{!3882, !3885, !3886}
!3885 = !DILocalVariable(name: "__ch", arg: 2, scope: !3883, file: !1374, line: 57, type: !44)
!3886 = !DILocalVariable(name: "__len", arg: 3, scope: !3883, file: !1374, line: 57, type: !54)
!3887 = !DILocation(line: 0, scope: !3883, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 1137, column: 3, scope: !3876, inlinedAt: !3881)
!3889 = !DILocation(line: 59, column: 10, scope: !3883, inlinedAt: !3888)
!3890 = !DILocation(line: 137, column: 5, scope: !3871)
!3891 = !DILocation(line: 138, column: 11, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3852, file: !354, line: 138, column: 7)
!3893 = !DILocation(line: 138, column: 7, scope: !3852)
!3894 = !DILocation(line: 139, column: 5, scope: !3892)
!3895 = !DILocation(line: 143, column: 26, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3852, file: !354, line: 143, column: 7)
!3897 = !DILocation(line: 143, column: 41, scope: !3896)
!3898 = !DILocation(line: 143, column: 7, scope: !3852)
!3899 = !DILocation(line: 145, column: 15, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !354, line: 145, column: 11)
!3901 = distinct !DILexicalBlock(scope: !3896, file: !354, line: 144, column: 5)
!3902 = !DILocation(line: 145, column: 11, scope: !3901)
!3903 = !DILocation(line: 146, column: 32, scope: !3900)
!3904 = !DILocation(line: 146, column: 16, scope: !3900)
!3905 = !DILocation(line: 146, column: 14, scope: !3900)
!3906 = !DILocation(line: 146, column: 9, scope: !3900)
!3907 = !DILocation(line: 286, column: 1, scope: !3852)
!3908 = !DISubprogram(name: "mbsinit", scope: !3909, file: !3909, line: 293, type: !3910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!3909 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!44, !3912}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!3914 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !443, file: !443, line: 27, type: !2848, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3915)
!3915 = !{!3916, !3917, !3918, !3919}
!3916 = !DILocalVariable(name: "ptr", arg: 1, scope: !3914, file: !443, line: 27, type: !53)
!3917 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3914, file: !443, line: 27, type: !54)
!3918 = !DILocalVariable(name: "size", arg: 3, scope: !3914, file: !443, line: 27, type: !54)
!3919 = !DILocalVariable(name: "nbytes", scope: !3914, file: !443, line: 29, type: !54)
!3920 = !DILocation(line: 0, scope: !3914)
!3921 = !DILocation(line: 30, column: 7, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3914, file: !443, line: 30, column: 7)
!3923 = !DILocalVariable(name: "ptr", arg: 1, scope: !3924, file: !2939, line: 2057, type: !53)
!3924 = distinct !DISubprogram(name: "rpl_realloc", scope: !2939, file: !2939, line: 2057, type: !2931, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3925)
!3925 = !{!3923, !3926}
!3926 = !DILocalVariable(name: "size", arg: 2, scope: !3924, file: !2939, line: 2057, type: !54)
!3927 = !DILocation(line: 0, scope: !3924, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 37, column: 10, scope: !3914)
!3929 = !DILocation(line: 2059, column: 24, scope: !3924, inlinedAt: !3928)
!3930 = !DILocation(line: 2059, column: 10, scope: !3924, inlinedAt: !3928)
!3931 = !DILocation(line: 37, column: 3, scope: !3914)
!3932 = !DILocation(line: 32, column: 7, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3922, file: !443, line: 31, column: 5)
!3934 = !DILocation(line: 32, column: 13, scope: !3933)
!3935 = !DILocation(line: 33, column: 7, scope: !3933)
!3936 = !DILocation(line: 38, column: 1, scope: !3914)
!3937 = distinct !DISubprogram(name: "hard_locale", scope: !446, file: !446, line: 28, type: !3938, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!60, !44}
!3940 = !{!3941, !3942}
!3941 = !DILocalVariable(name: "category", arg: 1, scope: !3937, file: !446, line: 28, type: !44)
!3942 = !DILocalVariable(name: "locale", scope: !3937, file: !446, line: 30, type: !3943)
!3943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2056, elements: !3944)
!3944 = !{!3945}
!3945 = !DISubrange(count: 257)
!3946 = !DILocation(line: 0, scope: !3937)
!3947 = !DILocation(line: 30, column: 3, scope: !3937)
!3948 = !DILocation(line: 30, column: 8, scope: !3937)
!3949 = !DILocation(line: 32, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3937, file: !446, line: 32, column: 7)
!3951 = !DILocation(line: 32, column: 7, scope: !3937)
!3952 = !DILocalVariable(name: "__s1", arg: 1, scope: !3953, file: !520, line: 1359, type: !57)
!3953 = distinct !DISubprogram(name: "streq", scope: !520, file: !520, line: 1359, type: !521, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !3954)
!3954 = !{!3952, !3955}
!3955 = !DILocalVariable(name: "__s2", arg: 2, scope: !3953, file: !520, line: 1359, type: !57)
!3956 = !DILocation(line: 0, scope: !3953, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 35, column: 9, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3937, file: !446, line: 35, column: 7)
!3959 = !DILocation(line: 1361, column: 11, scope: !3953, inlinedAt: !3957)
!3960 = !DILocation(line: 1361, column: 10, scope: !3953, inlinedAt: !3957)
!3961 = !DILocation(line: 35, column: 29, scope: !3958)
!3962 = !DILocation(line: 0, scope: !3953, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 35, column: 32, scope: !3958)
!3964 = !DILocation(line: 1361, column: 11, scope: !3953, inlinedAt: !3963)
!3965 = !DILocation(line: 1361, column: 10, scope: !3953, inlinedAt: !3963)
!3966 = !DILocation(line: 35, column: 7, scope: !3937)
!3967 = !DILocation(line: 46, column: 3, scope: !3937)
!3968 = !DILocation(line: 47, column: 1, scope: !3937)
!3969 = distinct !DISubprogram(name: "setlocale_null_r", scope: !448, file: !448, line: 154, type: !3970, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !3972)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!44, !44, !51, !54}
!3972 = !{!3973, !3974, !3975}
!3973 = !DILocalVariable(name: "category", arg: 1, scope: !3969, file: !448, line: 154, type: !44)
!3974 = !DILocalVariable(name: "buf", arg: 2, scope: !3969, file: !448, line: 154, type: !51)
!3975 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3969, file: !448, line: 154, type: !54)
!3976 = !DILocation(line: 0, scope: !3969)
!3977 = !DILocation(line: 159, column: 10, scope: !3969)
!3978 = !DILocation(line: 159, column: 3, scope: !3969)
!3979 = distinct !DISubprogram(name: "setlocale_null", scope: !448, file: !448, line: 186, type: !3980, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!57, !44}
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "category", arg: 1, scope: !3979, file: !448, line: 186, type: !44)
!3984 = !DILocation(line: 0, scope: !3979)
!3985 = !DILocation(line: 189, column: 10, scope: !3979)
!3986 = !DILocation(line: 189, column: 3, scope: !3979)
!3987 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !450, file: !450, line: 35, type: !3980, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !3988)
!3988 = !{!3989, !3990}
!3989 = !DILocalVariable(name: "category", arg: 1, scope: !3987, file: !450, line: 35, type: !44)
!3990 = !DILocalVariable(name: "result", scope: !3987, file: !450, line: 37, type: !57)
!3991 = !DILocation(line: 0, scope: !3987)
!3992 = !DILocation(line: 37, column: 24, scope: !3987)
!3993 = !DILocation(line: 62, column: 3, scope: !3987)
!3994 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !450, file: !450, line: 66, type: !3970, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !3995)
!3995 = !{!3996, !3997, !3998, !3999, !4000}
!3996 = !DILocalVariable(name: "category", arg: 1, scope: !3994, file: !450, line: 66, type: !44)
!3997 = !DILocalVariable(name: "buf", arg: 2, scope: !3994, file: !450, line: 66, type: !51)
!3998 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3994, file: !450, line: 66, type: !54)
!3999 = !DILocalVariable(name: "result", scope: !3994, file: !450, line: 111, type: !57)
!4000 = !DILocalVariable(name: "length", scope: !4001, file: !450, line: 125, type: !54)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !450, line: 124, column: 5)
!4002 = distinct !DILexicalBlock(scope: !3994, file: !450, line: 113, column: 7)
!4003 = !DILocation(line: 0, scope: !3994)
!4004 = !DILocation(line: 0, scope: !3987, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 111, column: 24, scope: !3994)
!4006 = !DILocation(line: 37, column: 24, scope: !3987, inlinedAt: !4005)
!4007 = !DILocation(line: 113, column: 14, scope: !4002)
!4008 = !DILocation(line: 113, column: 7, scope: !3994)
!4009 = !DILocation(line: 116, column: 19, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !450, line: 116, column: 11)
!4011 = distinct !DILexicalBlock(scope: !4002, file: !450, line: 114, column: 5)
!4012 = !DILocation(line: 116, column: 11, scope: !4011)
!4013 = !DILocation(line: 120, column: 16, scope: !4010)
!4014 = !DILocation(line: 120, column: 9, scope: !4010)
!4015 = !DILocation(line: 125, column: 23, scope: !4001)
!4016 = !DILocation(line: 0, scope: !4001)
!4017 = !DILocation(line: 126, column: 18, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4001, file: !450, line: 126, column: 11)
!4019 = !DILocation(line: 126, column: 11, scope: !4001)
!4020 = !DILocation(line: 128, column: 39, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4018, file: !450, line: 127, column: 9)
!4022 = !DILocalVariable(name: "__dest", arg: 1, scope: !4023, file: !1374, line: 26, type: !3206)
!4023 = distinct !DISubprogram(name: "memcpy", scope: !1374, file: !1374, line: 26, type: !3204, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4024)
!4024 = !{!4022, !4025, !4026}
!4025 = !DILocalVariable(name: "__src", arg: 2, scope: !4023, file: !1374, line: 26, type: !686)
!4026 = !DILocalVariable(name: "__len", arg: 3, scope: !4023, file: !1374, line: 26, type: !54)
!4027 = !DILocation(line: 0, scope: !4023, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 128, column: 11, scope: !4021)
!4029 = !DILocation(line: 29, column: 10, scope: !4023, inlinedAt: !4028)
!4030 = !DILocation(line: 129, column: 11, scope: !4021)
!4031 = !DILocation(line: 133, column: 23, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !450, line: 133, column: 15)
!4033 = distinct !DILexicalBlock(scope: !4018, file: !450, line: 132, column: 9)
!4034 = !DILocation(line: 133, column: 15, scope: !4033)
!4035 = !DILocation(line: 138, column: 44, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4032, file: !450, line: 134, column: 13)
!4037 = !DILocation(line: 0, scope: !4023, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 138, column: 15, scope: !4036)
!4039 = !DILocation(line: 29, column: 10, scope: !4023, inlinedAt: !4038)
!4040 = !DILocation(line: 139, column: 15, scope: !4036)
!4041 = !DILocation(line: 139, column: 32, scope: !4036)
!4042 = !DILocation(line: 140, column: 13, scope: !4036)
!4043 = !DILocation(line: 0, scope: !4002)
!4044 = !DILocation(line: 145, column: 1, scope: !3994)
