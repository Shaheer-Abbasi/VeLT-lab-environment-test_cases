; ModuleID = 'src/fold.bc'
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
%struct.mbbuf_t = type { i8*, %struct._IO_FILE*, i64, i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Wrap input lines in each FILE, writing to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fold\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"  -b, --bytes\0A         count bytes rather than columns\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"  -c, --characters\0A         count characters rather than columns\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"  -s, --spaces\0A         break after blanks, or in words greater than WIDTH\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"  -w, --width=WIDTH\0A         use WIDTH columns instead of 80\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [36 x i8] c"bcsw:0::1::2::3::4::5::6::7::8::9::\00", align 1, !dbg !0
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !170
@counting_mode = internal unnamed_addr global i32 0, align 4, !dbg !184
@break_spaces = internal unnamed_addr global i1 false, align 1, !dbg !250
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !251
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !84
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@fold_file.line_out = internal global [262144 x i8] zeroinitializer, align 1, !dbg !186
@fold_file.line_in = internal global [262144 x i8] zeroinitializer, align 1, !dbg !243
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@last_character_width = internal unnamed_addr global i32 0, align 4, !dbg !245
@.str.24 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), align 8, !dbg !252
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !257
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !262
@.str.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.28 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.29 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !264
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !300
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !270
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !296
@.str.1.37 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.39 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.38 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !298
@.str.4.32 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.33 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.34 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !305
@.str.63 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.64 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !311
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 8, !dbg !343
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !355
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !373
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !403
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !410
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !375
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !412
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !361
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !380
@.str.85 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.86 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.89 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.90 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.91 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.92 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.93 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.94 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.95 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.96 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.97 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.98 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.99 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.100 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.101 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.106 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.107 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.108 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.109 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.110 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.111 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.112 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !418
@exit_failure = dso_local global i32 1, align 4, !dbg !426
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !432
@.str.142 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !544 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !548, metadata !DIExpression()), !dbg !549
  %3 = icmp eq i32 %0, 0, !dbg !550
  br i1 %3, label %9, label %4, !dbg !552

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !553, !tbaa !555
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !553
  %7 = load i8*, i8** @program_name, align 8, !dbg !553, !tbaa !555
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !553
  br label %62, !dbg !553

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !559
  %11 = load i8*, i8** @program_name, align 8, !dbg !559, !tbaa !555
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #34, !dbg !559
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !561
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !561, !tbaa !555
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !561
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #34, !dbg !562
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !562, !tbaa !555
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #34, !dbg !562
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #34, !dbg !566
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !566, !tbaa !555
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20) #34, !dbg !566
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !569
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !569
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !570
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !570
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #34, !dbg !571
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !571
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #34, !dbg !572
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !572
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #34, !dbg !573
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !573
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #34, !dbg !574
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !574
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !575, metadata !DIExpression()) #34, !dbg !592
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !594
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #34, !dbg !594
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !580, metadata !DIExpression()) #34, !dbg !595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %28, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !595
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !587, metadata !DIExpression()) #34, !dbg !592
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !588, metadata !DIExpression()) #34, !dbg !592
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !596
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !588, metadata !DIExpression()) #34, !dbg !592
  br label %30, !dbg !597

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !588, metadata !DIExpression()) #34, !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !605
  call void @llvm.dbg.value(metadata i8* %31, metadata !604, metadata !DIExpression()) #34, !dbg !605
  %33 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %31) #35, !dbg !607
  %34 = icmp eq i32 %33, 0, !dbg !608
  br i1 %34, label %40, label %35, !dbg !597

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !609
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !588, metadata !DIExpression()) #34, !dbg !592
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !610
  %38 = load i8*, i8** %37, align 8, !dbg !610, !tbaa !611
  %39 = icmp eq i8* %38, null, !dbg !613
  br i1 %39, label %40, label %30, !dbg !614, !llvm.loop !615

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !617
  %43 = load i8*, i8** %42, align 8, !dbg !617, !tbaa !619
  %44 = icmp eq i8* %43, null, !dbg !620
  %45 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %43, !dbg !621
  call void @llvm.dbg.value(metadata i8* %45, metadata !587, metadata !DIExpression()) #34, !dbg !592
  tail call void @emit_bug_reporting_address() #34, !dbg !622
  %46 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !623
  call void @llvm.dbg.value(metadata i8* %46, metadata !590, metadata !DIExpression()) #34, !dbg !592
  %47 = icmp eq i8* %46, null, !dbg !624
  br i1 %47, label %55, label %48, !dbg !626

48:                                               ; preds = %40
  %49 = tail call i32 @strncmp(i8* noundef nonnull %46, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i64 noundef 3) #35, !dbg !627
  %50 = icmp eq i32 %49, 0, !dbg !627
  br i1 %50, label %55, label %51, !dbg !628

51:                                               ; preds = %48
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #34, !dbg !629
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !555
  %54 = tail call i32 @fputs_unlocked(i8* noundef %52, %struct._IO_FILE* noundef %53) #34, !dbg !629
  br label %55, !dbg !631

55:                                               ; preds = %40, %48, %51
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !591, metadata !DIExpression()) #34, !dbg !592
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i32 noundef 5) #34, !dbg !634
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %56, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !634
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i64 0, i64 0), i32 noundef 5) #34, !dbg !635
  %59 = icmp eq i8* %45, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), !dbg !635
  %60 = select i1 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !635
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %58, i8* noundef %45, i8* noundef %60) #34, !dbg !635
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #34, !dbg !636
  br label %62

62:                                               ; preds = %55, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !637
  unreachable, !dbg !637
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !638 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !642 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !86 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !91, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8* %0, metadata !92, metadata !DIExpression()), !dbg !647
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !648, !tbaa !649
  %3 = icmp eq i32 %2, -1, !dbg !651
  br i1 %3, label %4, label %16, !dbg !652

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #34, !dbg !653
  call void @llvm.dbg.value(metadata i8* %5, metadata !93, metadata !DIExpression()), !dbg !654
  %6 = icmp eq i8* %5, null, !dbg !655
  br i1 %6, label %14, label %7, !dbg !656

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !657, !tbaa !658
  %9 = icmp eq i8 %8, 0, !dbg !657
  br i1 %9, label %14, label %10, !dbg !659

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !598, metadata !DIExpression()) #34, !dbg !660
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !660
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #35, !dbg !662
  %12 = icmp eq i32 %11, 0, !dbg !663
  %13 = zext i1 %12 to i32, !dbg !659
  br label %14, !dbg !659

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !664, !tbaa !649
  br label %16, !dbg !665

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !666
  %18 = icmp eq i32 %17, 0, !dbg !666
  br i1 %18, label %22, label %19, !dbg !668

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !555
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !669
  br label %121, !dbg !671

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !96, metadata !DIExpression()), !dbg !647
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #35, !dbg !672
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !673
  call void @llvm.dbg.value(metadata i8* %24, metadata !97, metadata !DIExpression()), !dbg !647
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !674
  call void @llvm.dbg.value(metadata i8* %25, metadata !98, metadata !DIExpression()), !dbg !647
  %26 = icmp eq i8* %25, null, !dbg !675
  br i1 %26, label %53, label %27, !dbg !676

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !677
  br i1 %28, label %53, label %29, !dbg !678

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !99, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 0, metadata !103, metadata !DIExpression()), !dbg !679
  %30 = icmp ult i8* %24, %25, !dbg !680
  br i1 %30, label %31, label %53, !dbg !681

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !647
  %33 = load i16*, i16** %32, align 8, !tbaa !555
  br label %34, !dbg !681

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !99, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 %36, metadata !103, metadata !DIExpression()), !dbg !679
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !682
  call void @llvm.dbg.value(metadata i8* %37, metadata !99, metadata !DIExpression()), !dbg !679
  %38 = load i8, i8* %35, align 1, !dbg !682, !tbaa !658
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !682
  %41 = load i16, i16* %40, align 2, !dbg !682, !tbaa !683
  %42 = lshr i16 %41, 13, !dbg !685
  %43 = and i16 %42, 1, !dbg !685
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !686
  call void @llvm.dbg.value(metadata i64 %45, metadata !103, metadata !DIExpression()), !dbg !679
  %46 = icmp ult i8* %37, %25, !dbg !680
  %47 = icmp ult i64 %45, 2, !dbg !687
  %48 = select i1 %46, i1 %47, i1 false, !dbg !687
  br i1 %48, label %34, label %49, !dbg !681, !llvm.loop !688

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !689
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !691
  %52 = xor i1 %50, true, !dbg !691
  br label %53, !dbg !691

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !647
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !96, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8* %54, metadata !98, metadata !DIExpression()), !dbg !647
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #35, !dbg !692
  call void @llvm.dbg.value(metadata i64 %56, metadata !104, metadata !DIExpression()), !dbg !647
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !693
  call void @llvm.dbg.value(metadata i8* %57, metadata !105, metadata !DIExpression()), !dbg !647
  br label %58, !dbg !694

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !647
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !96, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8* %59, metadata !105, metadata !DIExpression()), !dbg !647
  %61 = load i8, i8* %59, align 1, !dbg !695, !tbaa !658
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !696

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !697
  %64 = load i8, i8* %63, align 1, !dbg !700, !tbaa !658
  %65 = icmp ne i8 %64, 45, !dbg !701
  %66 = select i1 %65, i1 %60, i1 false, !dbg !702
  br label %67, !dbg !702

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !96, metadata !DIExpression()), !dbg !647
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !703
  %70 = load i16*, i16** %69, align 8, !dbg !703, !tbaa !555
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !703
  %73 = load i16, i16* %72, align 2, !dbg !703, !tbaa !683
  %74 = and i16 %73, 8192, !dbg !703
  %75 = icmp eq i16 %74, 0, !dbg !703
  br i1 %75, label %89, label %76, !dbg !705

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !706
  br i1 %77, label %91, label %78, !dbg !709

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !710
  %80 = load i8, i8* %79, align 1, !dbg !710, !tbaa !658
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !710
  %83 = load i16, i16* %82, align 2, !dbg !710, !tbaa !683
  %84 = and i16 %83, 8192, !dbg !710
  %85 = icmp eq i16 %84, 0, !dbg !710
  br i1 %85, label %86, label %91, !dbg !711

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !712
  br i1 %88, label %89, label %91, !dbg !712

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !714
  call void @llvm.dbg.value(metadata i8* %90, metadata !105, metadata !DIExpression()), !dbg !647
  br label %58, !dbg !694, !llvm.loop !715

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !717
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !555
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !717
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !722
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !726
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !728
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !730
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !732
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !734
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !736
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !165, metadata !DIExpression()), !dbg !647
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 noundef 6) #35, !dbg !738
  %96 = icmp eq i32 %95, 0, !dbg !738
  br i1 %96, label %100, label %97, !dbg !740

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 noundef 9) #35, !dbg !741
  %99 = icmp eq i32 %98, 0, !dbg !741
  br i1 %99, label %100, label %103, !dbg !742

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !743
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !743
  br label %106, !dbg !745

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !746
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !746
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !555
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !748
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !555
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !749
  %111 = ptrtoint i8* %59 to i64, !dbg !750
  %112 = sub i64 %111, %92, !dbg !750
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !555
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !750
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !555
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !751
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !555
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !752
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !753, !tbaa !555
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !753
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !754
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
declare !dbg !755 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !759 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !763 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !769 {
  %3 = alloca [2 x i8], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !774, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i8** %1, metadata !775, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i64 80, metadata !776, metadata !DIExpression()), !dbg !786
  %4 = load i8*, i8** %1, align 8, !dbg !787, !tbaa !555
  tail call void @set_program_name(i8* noundef %4) #34, !dbg !788
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !789
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #34, !dbg !790
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #34, !dbg !791
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !792
  call void @llvm.dbg.value(metadata i64 80, metadata !776, metadata !DIExpression()), !dbg !786
  %9 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @shortopts, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #34, !dbg !793
  call void @llvm.dbg.value(metadata i32 %9, metadata !777, metadata !DIExpression()), !dbg !786
  %10 = icmp eq i32 %9, -1, !dbg !794
  br i1 %10, label %43, label %11, !dbg !795

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  br label %14, !dbg !795

14:                                               ; preds = %11, %39
  %15 = phi i32 [ %9, %11 ], [ %41, %39 ]
  %16 = phi i64 [ 80, %11 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !776, metadata !DIExpression()), !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %12) #34, !dbg !796
  call void @llvm.dbg.declare(metadata [2 x i8]* %3, metadata !779, metadata !DIExpression()), !dbg !797
  switch i32 %15, label %38 [
    i32 98, label %19
    i32 99, label %20
    i32 115, label %21
    i32 48, label %22
    i32 49, label %22
    i32 50, label %22
    i32 51, label %22
    i32 52, label %22
    i32 53, label %22
    i32 54, label %22
    i32 55, label %22
    i32 56, label %22
    i32 57, label %22
    i32 119, label %17
    i32 -2, label %33
    i32 -3, label %34
  ], !dbg !798

17:                                               ; preds = %14
  %18 = load i8*, i8** @optarg, align 8, !dbg !799, !tbaa !555
  br label %29, !dbg !798

19:                                               ; preds = %14
  store i32 1, i32* @counting_mode, align 4, !dbg !801, !tbaa !658
  br label %39, !dbg !802

20:                                               ; preds = %14
  store i32 2, i32* @counting_mode, align 4, !dbg !803, !tbaa !658
  br label %39, !dbg !804

21:                                               ; preds = %14
  store i1 true, i1* @break_spaces, align 1, !dbg !805
  br label %39, !dbg !806

22:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %23 = load i8*, i8** @optarg, align 8, !dbg !807, !tbaa !555
  %24 = icmp eq i8* %23, null, !dbg !807
  br i1 %24, label %27, label %25, !dbg !809

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !810
  store i8* %26, i8** @optarg, align 8, !dbg !810, !tbaa !555
  br label %29, !dbg !811

27:                                               ; preds = %22
  %28 = trunc i32 %15 to i8, !dbg !812
  store i8 %28, i8* %12, align 4, !dbg !814, !tbaa !658
  store i8 0, i8* %13, align 1, !dbg !815, !tbaa !658
  store i8* %12, i8** @optarg, align 8, !dbg !816, !tbaa !555
  br label %29

29:                                               ; preds = %17, %25, %27
  %30 = phi i8* [ %18, %17 ], [ %26, %25 ], [ %12, %27 ], !dbg !799
  %31 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #34, !dbg !817
  %32 = call i64 @xnumtoumax(i8* noundef %30, i32 noundef 10, i64 noundef 1, i64 noundef -10, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* noundef %31, i32 noundef 0, i32 noundef 12) #34, !dbg !818
  call void @llvm.dbg.value(metadata i64 %32, metadata !776, metadata !DIExpression()), !dbg !786
  br label %39, !dbg !819

33:                                               ; preds = %14
  call void @usage(i32 noundef 0) #38, !dbg !820
  unreachable, !dbg !820

34:                                               ; preds = %14
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !821, !tbaa !555
  %36 = load i8*, i8** @Version, align 8, !dbg !821, !tbaa !555
  %37 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #34, !dbg !821
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef %36, i8* noundef %37, i8* noundef null) #34, !dbg !821
  call void @exit(i32 noundef 0) #36, !dbg !821
  unreachable, !dbg !821

38:                                               ; preds = %14
  call void @usage(i32 noundef 1) #38, !dbg !822
  unreachable, !dbg !822

39:                                               ; preds = %29, %21, %20, %19
  %40 = phi i64 [ %32, %29 ], [ %16, %21 ], [ %16, %20 ], [ %16, %19 ], !dbg !786
  call void @llvm.dbg.value(metadata i64 %40, metadata !776, metadata !DIExpression()), !dbg !786
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %12) #34, !dbg !823
  %41 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @shortopts, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #34, !dbg !793
  call void @llvm.dbg.value(metadata i32 %41, metadata !777, metadata !DIExpression()), !dbg !786
  %42 = icmp eq i32 %41, -1, !dbg !794
  br i1 %42, label %43, label %14, !dbg !795, !llvm.loop !824

43:                                               ; preds = %39, %2
  %44 = phi i64 [ 80, %2 ], [ %40, %39 ], !dbg !786
  %45 = load i32, i32* @optind, align 4, !dbg !825, !tbaa !649
  %46 = icmp eq i32 %45, %0, !dbg !826
  br i1 %46, label %51, label %47, !dbg !827

47:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32 %45, metadata !782, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i8 poison, metadata !778, metadata !DIExpression()), !dbg !786
  %48 = icmp slt i32 %45, %0, !dbg !829
  br i1 %48, label %49, label %63, !dbg !831

49:                                               ; preds = %47
  %50 = sext i32 %45 to i64, !dbg !831
  br label %53, !dbg !831

51:                                               ; preds = %43
  %52 = call fastcc i1 @fold_file(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 noundef %44), !dbg !832
  call void @llvm.dbg.value(metadata i1 %52, metadata !778, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !786
  br label %63, !dbg !833

53:                                               ; preds = %49, %53
  %54 = phi i64 [ %50, %49 ], [ %60, %53 ]
  %55 = phi i1 [ true, %49 ], [ %59, %53 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !782, metadata !DIExpression()), !dbg !828
  %56 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !834
  %57 = load i8*, i8** %56, align 8, !dbg !834, !tbaa !555
  %58 = call fastcc i1 @fold_file(i8* noundef %57, i64 noundef %44), !dbg !835
  %59 = and i1 %55, %58, !dbg !836
  call void @llvm.dbg.value(metadata i1 %59, metadata !778, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !786
  %60 = add nsw i64 %54, 1, !dbg !837
  call void @llvm.dbg.value(metadata i64 %60, metadata !782, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i8 poison, metadata !778, metadata !DIExpression()), !dbg !786
  %61 = trunc i64 %60 to i32, !dbg !829
  %62 = icmp eq i32 %61, %0, !dbg !829
  br i1 %62, label %63, label %53, !dbg !831, !llvm.loop !838

63:                                               ; preds = %53, %47, %51
  %64 = phi i1 [ %52, %51 ], [ true, %47 ], [ %59, %53 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !778, metadata !DIExpression()), !dbg !786
  %65 = load i1, i1* @have_read_stdin, align 1, !dbg !840
  br i1 %65, label %66, label %73, !dbg !842

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !843, !tbaa !555
  %68 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %67) #34, !dbg !844
  %69 = icmp eq i32 %68, -1, !dbg !845
  br i1 %69, label %70, label %73, !dbg !846

70:                                               ; preds = %66
  %71 = tail call i32* @__errno_location() #37, !dbg !847
  %72 = load i32, i32* %71, align 4, !dbg !847, !tbaa !649
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %72, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #34, !dbg !847
  unreachable, !dbg !847

73:                                               ; preds = %66, %63
  %74 = xor i1 %64, true, !dbg !848
  %75 = zext i1 %74 to i32, !dbg !848
  ret i32 %75, !dbg !849
}

; Function Attrs: nounwind
declare !dbg !850 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !853 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !854 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !857 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i1 @fold_file(i8* noundef %0, i64 noundef %1) unnamed_addr #12 !dbg !188 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__mbstate_t, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.__mbstate_t, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !192, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 %1, metadata !193, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i8* %0, metadata !598, metadata !DIExpression()) #34, !dbg !864
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !864
  %9 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !867
  %10 = icmp eq i32 %9, 0, !dbg !868
  br i1 %10, label %11, label %13, !dbg !869

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !870, !tbaa !555
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !194, metadata !DIExpression()), !dbg !863
  store i1 true, i1* @have_read_stdin, align 1, !dbg !872
  br label %15, !dbg !873

13:                                               ; preds = %2
  %14 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #34, !dbg !874
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !194, metadata !DIExpression()), !dbg !863
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ], !dbg !875
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !194, metadata !DIExpression()), !dbg !863
  %17 = icmp eq %struct._IO_FILE* %16, null, !dbg !876
  br i1 %17, label %18, label %22, !dbg !878

18:                                               ; preds = %15
  %19 = tail call i32* @__errno_location() #37, !dbg !879
  %20 = load i32, i32* %19, align 4, !dbg !879, !tbaa !649
  %21 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #34, !dbg !879
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef %21) #34, !dbg !879
  br label %306, !dbg !881

22:                                               ; preds = %15
  tail call void @fadvise(%struct._IO_FILE* noundef nonnull %16, i32 noundef 2) #34, !dbg !882
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !863
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 262144, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %16, i64 0, i32 0
  %24 = bitcast %struct.__mbstate_t* %7 to i8*
  %25 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %7, i64 0, i32 0
  %26 = bitcast i32* %8 to i8*
  %27 = bitcast %struct.__mbstate_t* %5 to i8*
  %28 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %5, i64 0, i32 0
  %29 = bitcast i32* %6 to i8*
  %30 = bitcast %struct.__mbstate_t* %3 to i8*
  %31 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %3, i64 0, i32 0
  %32 = bitcast i32* %4 to i8*
  br label %33, !dbg !883

33:                                               ; preds = %109, %22
  %34 = phi i64 [ 0, %22 ], [ %103, %109 ], !dbg !863
  %35 = phi i64 [ 0, %22 ], [ %62, %109 ], !dbg !863
  %36 = phi i64 [ 0, %22 ], [ %110, %109 ], !dbg !863
  %37 = phi i64 [ 0, %22 ], [ %111, %109 ], !dbg !863
  call void @llvm.dbg.value(metadata i64 %35, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %34, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %37, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 %36, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !884, metadata !DIExpression()) #34, !dbg !895
  %38 = sub nsw i64 %35, %34, !dbg !897
  call void @llvm.dbg.value(metadata i64 %38, metadata !890, metadata !DIExpression()) #34, !dbg !895
  %39 = icmp slt i64 %38, 4, !dbg !898
  br i1 %39, label %40, label %60, !dbg !899

40:                                               ; preds = %33
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !900, metadata !DIExpression()) #34, !dbg !906
  %41 = load i32, i32* %23, align 8, !dbg !908, !tbaa !909
  %42 = and i32 %41, 16, !dbg !912
  %43 = icmp eq i32 %42, 0, !dbg !912
  br i1 %43, label %44, label %55, !dbg !913

44:                                               ; preds = %40
  %45 = icmp sgt i64 %38, 0, !dbg !914
  br i1 %45, label %46, label %49, !dbg !916

46:                                               ; preds = %44
  %47 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %34, !dbg !917
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), metadata !919, metadata !DIExpression()) #34, !dbg !927
  call void @llvm.dbg.value(metadata i8* %47, metadata !925, metadata !DIExpression()) #34, !dbg !927
  call void @llvm.dbg.value(metadata i64 %38, metadata !926, metadata !DIExpression()) #34, !dbg !927
  %48 = call i8* @__memmove_chk(i8* noundef nonnull getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), i8* noundef nonnull %47, i64 noundef %38, i64 noundef 262144) #34, !dbg !929
  call void @llvm.dbg.value(metadata i64 %38, metadata !891, metadata !DIExpression()) #34, !dbg !930
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i64 [ %38, %46 ], [ 0, %44 ], !dbg !931
  call void @llvm.dbg.value(metadata i64 %50, metadata !891, metadata !DIExpression()) #34, !dbg !930
  %51 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %50, !dbg !932
  %52 = sub nuw nsw i64 262144, %50, !dbg !932
  %53 = call i64 @fread_unlocked(i8* noundef nonnull %51, i64 noundef 1, i64 noundef %52, %struct._IO_FILE* noundef nonnull %16) #34, !dbg !932
  %54 = add i64 %53, %50, !dbg !933
  call void @llvm.dbg.value(metadata i64 %54, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %54, metadata !890, metadata !DIExpression()) #34, !dbg !895
  br label %55, !dbg !934

55:                                               ; preds = %49, %40
  %56 = phi i64 [ 0, %49 ], [ %34, %40 ], !dbg !863
  %57 = phi i64 [ %54, %49 ], [ %35, %40 ], !dbg !863
  %58 = phi i64 [ %54, %49 ], [ %38, %40 ], !dbg !895
  call void @llvm.dbg.value(metadata i64 %57, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %56, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %58, metadata !890, metadata !DIExpression()) #34, !dbg !895
  %59 = icmp slt i64 %58, 1, !dbg !935
  br i1 %59, label %281, label %60, !dbg !937

60:                                               ; preds = %55, %33
  %61 = phi i64 [ %56, %55 ], [ %34, %33 ], !dbg !863
  %62 = phi i64 [ %57, %55 ], [ %35, %33 ], !dbg !863
  call void @llvm.dbg.value(metadata i64 %62, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %61, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  %63 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %61, !dbg !938
  call void @llvm.dbg.value(metadata i8* %63, metadata !939, metadata !DIExpression()) #34, !dbg !959
  call void @llvm.dbg.value(metadata !DIArgList(i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), i64 undef), metadata !944, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !959
  %64 = load i8, i8* %63, align 1, !dbg !961, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %64, metadata !945, metadata !DIExpression()) #34, !dbg !959
  call void @llvm.dbg.value(metadata i8 %64, metadata !962, metadata !DIExpression()) #34, !dbg !967
  %65 = icmp sgt i8 %64, -1, !dbg !970
  br i1 %65, label %66, label %69, !dbg !971

66:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i64 1, metadata !972, metadata !DIExpression()) #34, !dbg !978
  %67 = zext i8 %64 to i64, !dbg !980
  call void @llvm.dbg.value(metadata i64 %67, metadata !977, metadata !DIExpression()) #34, !dbg !978
  %68 = or i64 %67, 1099511627776, !dbg !980
  br label %90, !dbg !981

69:                                               ; preds = %60
  call void @llvm.dbg.value(metadata !DIArgList(i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), i64 %62), metadata !944, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !959
  %70 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %62, !dbg !982
  call void @llvm.dbg.value(metadata i8* %70, metadata !944, metadata !DIExpression()) #34, !dbg !959
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #34, !dbg !983
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %7, metadata !946, metadata !DIExpression()) #34, !dbg !984
  store i32 0, i32* %25, align 4, !dbg !985, !tbaa !986
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #34, !dbg !988
  %71 = ptrtoint i8* %70 to i64, !dbg !989
  %72 = ptrtoint i8* %63 to i64, !dbg !989
  %73 = sub i64 %71, %72, !dbg !989
  call void @llvm.dbg.value(metadata i32* %8, metadata !957, metadata !DIExpression(DW_OP_deref)) #34, !dbg !959
  %74 = call i64 @mbrtoc32(i32* noundef nonnull %8, i8* noundef nonnull %63, i64 noundef %73, %struct.__mbstate_t* noundef nonnull %7) #34, !dbg !990
  call void @llvm.dbg.value(metadata i64 %74, metadata !958, metadata !DIExpression()) #34, !dbg !959
  %75 = icmp slt i64 %74, 0, !dbg !991
  br i1 %75, label %76, label %80, !dbg !993, !prof !994

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i8 %64, metadata !995, metadata !DIExpression()) #34, !dbg !1000
  %77 = zext i8 %64 to i64, !dbg !1002
  %78 = shl nuw nsw i64 %77, 32, !dbg !1002
  %79 = or i64 %78, 1099511627776, !dbg !1002
  br label %88, !dbg !1003

80:                                               ; preds = %69
  %81 = load i32, i32* %8, align 4, !dbg !1004, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %81, metadata !957, metadata !DIExpression()) #34, !dbg !959
  call void @llvm.dbg.value(metadata i32 %81, metadata !977, metadata !DIExpression()) #34, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %74, metadata !972, metadata !DIExpression()) #34, !dbg !1005
  %82 = icmp ne i64 %74, 0, !dbg !1007
  call void @llvm.assume(i1 %82) #34, !dbg !1007
  %83 = icmp ult i64 %74, 5, !dbg !1008
  call void @llvm.assume(i1 %83) #34, !dbg !1008
  %84 = icmp ult i32 %81, 1114112, !dbg !1009
  call void @llvm.assume(i1 %84) #34, !dbg !1009
  %85 = shl nuw nsw i64 %74, 40, !dbg !1010
  %86 = zext i32 %81 to i64, !dbg !1010
  %87 = or i64 %85, %86, !dbg !1010
  br label %88, !dbg !1011

88:                                               ; preds = %80, %76
  %89 = phi i64 [ %79, %76 ], [ %87, %80 ], !dbg !959
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #34, !dbg !1012
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #34, !dbg !1012
  br label %90

90:                                               ; preds = %88, %66
  %91 = phi i64 [ %68, %66 ], [ %89, %88 ], !dbg !959
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !895
  %92 = and i64 %91, 1095216660480, !dbg !1013
  %93 = icmp eq i64 %92, 0, !dbg !1013
  br i1 %93, label %94, label %97, !dbg !1015

94:                                               ; preds = %90
  %95 = lshr i64 %91, 40, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %95, metadata !894, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %91, metadata !894, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !895
  %96 = and i64 %95, 255, !dbg !1017
  call void @llvm.dbg.value(metadata !DIArgList(i64 %61, i64 %96), metadata !200, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  br label %100, !dbg !1018

97:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i64 %61, metadata !200, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  %98 = load i8, i8* %63, align 1, !dbg !1019, !tbaa !658
  %99 = zext i8 %98 to i64, !dbg !1021
  call void @llvm.dbg.value(metadata i8 %98, metadata !894, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !895
  br label %100

100:                                              ; preds = %94, %97
  %101 = phi i64 [ %96, %94 ], [ 1, %97 ]
  %102 = phi i64 [ %91, %94 ], [ %99, %97 ], !dbg !895
  %103 = add nsw i64 %101, %61, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %103, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i32 undef, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !895
  call void @llvm.dbg.value(metadata i64 %62, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %103, metadata !200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !863
  %104 = trunc i64 %102 to i32, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %104, metadata !211, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !863
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %91, metadata !211, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !863
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !863
  switch i32 %104, label %105 [
    i32 -1, label %281
    i32 10, label %108
  ], !dbg !883

105:                                              ; preds = %100
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !863
  call void @llvm.dbg.value(metadata i64 %91, metadata !211, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !863
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !211, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !863
  %106 = lshr i64 %91, 40, !dbg !1023
  call void @llvm.dbg.value(metadata i64 %106, metadata !211, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !863
  %107 = and i64 %106, 255
  br label %112, !dbg !1024

108:                                              ; preds = %100
  call fastcc void @write_out(i64 noundef %36, i1 noundef true), !dbg !1041
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression()), !dbg !863
  br label %109, !dbg !1044

109:                                              ; preds = %108, %263, %274
  %110 = phi i64 [ 0, %108 ], [ %107, %263 ], [ %280, %274 ]
  %111 = phi i64 [ 0, %108 ], [ %140, %263 ], [ %270, %274 ]
  br label %33, !dbg !863, !llvm.loop !1045

112:                                              ; preds = %199, %105
  %113 = phi i64 [ %36, %105 ], [ %200, %199 ], !dbg !863
  %114 = phi i64 [ %37, %105 ], [ %201, %199 ], !dbg !863
  call void @llvm.dbg.value(metadata i64 %114, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 %113, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.label(metadata !239), !dbg !1047
  call void @llvm.dbg.value(metadata i32 %104, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !1048
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1030, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #34, !dbg !1048
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1030, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1048
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1030, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %114, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  %115 = load i32, i32* @counting_mode, align 4, !dbg !1049, !tbaa !658
  %116 = icmp eq i32 %115, 1, !dbg !1050
  br i1 %116, label %137, label %117, !dbg !1024

117:                                              ; preds = %112
  switch i32 %104, label %127 [
    i32 8, label %118
    i32 13, label %269
    i32 9, label %124
  ], !dbg !1051

118:                                              ; preds = %117
  %119 = icmp eq i64 %114, 0, !dbg !1052
  br i1 %119, label %269, label %120, !dbg !1055

120:                                              ; preds = %118
  %121 = load i32, i32* @last_character_width, align 4, !dbg !1056, !tbaa !649
  %122 = sext i32 %121 to i64, !dbg !1056
  %123 = sub i64 %114, %122, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %123, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  br label %139, !dbg !1058

124:                                              ; preds = %117
  %125 = add i64 %114, 8, !dbg !1059
  %126 = and i64 %125, -8, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %126, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  br label %139, !dbg !1061

127:                                              ; preds = %117
  %128 = icmp eq i32 %115, 2, !dbg !1062
  br i1 %128, label %133, label %129, !dbg !1063

129:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 %104, metadata !1064, metadata !DIExpression()) #34, !dbg !1070
  %130 = call i32 @wcwidth(i32 noundef %104) #34, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %130, metadata !1031, metadata !DIExpression()) #34, !dbg !1073
  %131 = icmp slt i32 %130, 0, !dbg !1074
  %132 = select i1 %131, i32 1, i32 %130, !dbg !1075
  br label %133

133:                                              ; preds = %129, %127
  %134 = phi i32 [ %132, %129 ], [ 1, %127 ], !dbg !1076
  store i32 %134, i32* @last_character_width, align 4, !dbg !1076, !tbaa !649
  %135 = zext i32 %134 to i64, !dbg !1077
  %136 = add i64 %114, %135, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %136, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  br label %139

137:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i64 %91, metadata !1030, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1048
  %138 = add i64 %114, %107, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %138, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  br label %139

139:                                              ; preds = %120, %124, %133, %137
  %140 = phi i64 [ %123, %120 ], [ %126, %124 ], [ %136, %133 ], [ %138, %137 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1029, metadata !DIExpression()) #34, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %140, metadata !195, metadata !DIExpression()), !dbg !863
  %141 = icmp ugt i64 %140, %1, !dbg !1080
  br i1 %141, label %142, label %269, !dbg !1081

142:                                              ; preds = %139
  %143 = load i1, i1* @break_spaces, align 1, !dbg !1082
  br i1 %143, label %144, label %261, !dbg !1083

144:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i32 0, metadata !222, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %113, metadata !228, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !229, metadata !DIExpression()), !dbg !1084
  %145 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 %113, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %145, metadata !230, metadata !DIExpression()), !dbg !1084
  %146 = icmp sgt i64 %113, 0, !dbg !1086
  br i1 %146, label %147, label %261, !dbg !1088

147:                                              ; preds = %144
  %148 = ptrtoint i8* %145 to i64
  br label %151, !dbg !1088

149:                                              ; preds = %176
  %150 = icmp eq i32 %187, 0, !dbg !1089
  br i1 %150, label %261, label %191, !dbg !1090

151:                                              ; preds = %147, %176
  %152 = phi i32 [ 0, %147 ], [ %187, %176 ]
  %153 = phi i64 [ %113, %147 ], [ %186, %176 ]
  %154 = phi i8* [ getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), %147 ], [ %189, %176 ]
  call void @llvm.dbg.value(metadata i32 %152, metadata !222, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %153, metadata !228, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %154, metadata !229, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %154, metadata !939, metadata !DIExpression()) #34, !dbg !1091
  call void @llvm.dbg.value(metadata i8* %145, metadata !944, metadata !DIExpression()) #34, !dbg !1091
  %155 = load i8, i8* %154, align 1, !dbg !1094, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %155, metadata !945, metadata !DIExpression()) #34, !dbg !1091
  call void @llvm.dbg.value(metadata i8 %155, metadata !962, metadata !DIExpression()) #34, !dbg !1095
  %156 = icmp sgt i8 %155, -1, !dbg !1097
  br i1 %156, label %157, label %161, !dbg !1098

157:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i64 1, metadata !972, metadata !DIExpression()) #34, !dbg !1099
  %158 = zext i8 %155 to i64, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %158, metadata !977, metadata !DIExpression()) #34, !dbg !1099
  %159 = or i64 %158, 1099511627776, !dbg !1101
  %160 = ptrtoint i8* %154 to i64, !dbg !1102
  br label %176, !dbg !1103

161:                                              ; preds = %151
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #34, !dbg !1104
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %5, metadata !946, metadata !DIExpression()) #34, !dbg !1105
  store i32 0, i32* %28, align 4, !dbg !1106, !tbaa !986
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #34, !dbg !1107
  %162 = ptrtoint i8* %154 to i64, !dbg !1108
  %163 = sub i64 %148, %162, !dbg !1108
  call void @llvm.dbg.value(metadata i32* %6, metadata !957, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1091
  %164 = call i64 @mbrtoc32(i32* noundef nonnull %6, i8* noundef nonnull %154, i64 noundef %163, %struct.__mbstate_t* noundef nonnull %5) #34, !dbg !1109
  call void @llvm.dbg.value(metadata i64 %164, metadata !958, metadata !DIExpression()) #34, !dbg !1091
  %165 = icmp slt i64 %164, 0, !dbg !1110
  br i1 %165, label %174, label %166, !dbg !1111, !prof !994

166:                                              ; preds = %161
  %167 = load i32, i32* %6, align 4, !dbg !1112, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %167, metadata !957, metadata !DIExpression()) #34, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %167, metadata !977, metadata !DIExpression()) #34, !dbg !1113
  call void @llvm.dbg.value(metadata i64 %164, metadata !972, metadata !DIExpression()) #34, !dbg !1113
  %168 = icmp ne i64 %164, 0, !dbg !1115
  call void @llvm.assume(i1 %168) #34, !dbg !1115
  %169 = icmp ult i64 %164, 5, !dbg !1116
  call void @llvm.assume(i1 %169) #34, !dbg !1116
  %170 = icmp ult i32 %167, 1114112, !dbg !1117
  call void @llvm.assume(i1 %170) #34, !dbg !1117
  %171 = shl nuw nsw i64 %164, 40, !dbg !1118
  %172 = zext i32 %167 to i64, !dbg !1118
  %173 = or i64 %171, %172, !dbg !1118
  br label %174, !dbg !1119

174:                                              ; preds = %161, %166
  %175 = phi i64 [ %173, %166 ], [ 1099511627776, %161 ], !dbg !1091
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #34, !dbg !1120
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #34, !dbg !1120
  br label %176

176:                                              ; preds = %157, %174
  %177 = phi i64 [ %160, %157 ], [ %162, %174 ], !dbg !1102
  %178 = phi i64 [ %159, %157 ], [ %175, %174 ], !dbg !1091
  %179 = trunc i64 %178 to i32, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %179, metadata !231, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %178, metadata !231, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1122
  %180 = lshr i64 %178, 40, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %180, metadata !231, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %178, metadata !231, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1122
  call void @llvm.dbg.value(metadata i32 %179, metadata !1123, metadata !DIExpression()) #34, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %179, metadata !1131, metadata !DIExpression()) #34, !dbg !1138
  %181 = call i32 @iswblank(i32 noundef %179) #34, !dbg !1140
  %182 = icmp eq i32 %181, 0, !dbg !1141
  %183 = trunc i64 %180 to i32, !dbg !1102
  %184 = and i32 %183, 255, !dbg !1102
  %185 = sub i64 %177, ptrtoint ([262144 x i8]* @fold_file.line_out to i64), !dbg !1102
  %186 = select i1 %182, i64 %153, i64 %185, !dbg !1102
  %187 = select i1 %182, i32 %152, i32 %184, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %187, metadata !222, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %186, metadata !228, metadata !DIExpression()), !dbg !1084
  %188 = and i64 %180, 255, !dbg !1142
  %189 = getelementptr inbounds i8, i8* %154, i64 %188, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %189, metadata !229, metadata !DIExpression()), !dbg !1084
  %190 = icmp ult i8* %189, %145, !dbg !1086
  br i1 %190, label %151, label %149, !dbg !1088, !llvm.loop !1144

191:                                              ; preds = %149
  %192 = zext i32 %187 to i64
  %193 = add nsw i64 %186, %192, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %193, metadata !228, metadata !DIExpression()), !dbg !1084
  call fastcc void @write_out(i64 noundef %193, i1 noundef true), !dbg !1147
  %194 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 %193, !dbg !1148
  %195 = sub nsw i64 %113, %193, !dbg !1149
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !919, metadata !DIExpression()) #34, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %194, metadata !925, metadata !DIExpression()) #34, !dbg !1150
  call void @llvm.dbg.value(metadata i64 %195, metadata !926, metadata !DIExpression()) #34, !dbg !1150
  %196 = call i8* @__memmove_chk(i8* noundef nonnull getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i8* noundef nonnull %194, i64 noundef %195, i64 noundef 262144) #34, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %195, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !233, metadata !DIExpression()), !dbg !1153
  %197 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 %195, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %197, metadata !236, metadata !DIExpression()), !dbg !1153
  %198 = icmp sgt i64 %195, 0, !dbg !1155
  br i1 %198, label %202, label %199, !dbg !1157

199:                                              ; preds = %256, %191, %268
  %200 = phi i64 [ 0, %268 ], [ %195, %191 ], [ %195, %256 ]
  %201 = phi i64 [ 0, %268 ], [ 0, %191 ], [ %257, %256 ]
  br label %112, !dbg !863

202:                                              ; preds = %191
  %203 = ptrtoint i8* %197 to i64
  br label %204, !dbg !1157

204:                                              ; preds = %202, %256
  %205 = phi i64 [ 0, %202 ], [ %257, %256 ]
  %206 = phi i8* [ getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), %202 ], [ %259, %256 ]
  call void @llvm.dbg.value(metadata i64 %205, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i8* %206, metadata !233, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %206, metadata !939, metadata !DIExpression()) #34, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %197, metadata !944, metadata !DIExpression()) #34, !dbg !1158
  %207 = load i8, i8* %206, align 1, !dbg !1161, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %207, metadata !945, metadata !DIExpression()) #34, !dbg !1158
  call void @llvm.dbg.value(metadata i8 %207, metadata !962, metadata !DIExpression()) #34, !dbg !1162
  %208 = icmp sgt i8 %207, -1, !dbg !1164
  br i1 %208, label %209, label %212, !dbg !1165

209:                                              ; preds = %204
  call void @llvm.dbg.value(metadata i64 1, metadata !972, metadata !DIExpression()) #34, !dbg !1166
  %210 = zext i8 %207 to i64, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %210, metadata !977, metadata !DIExpression()) #34, !dbg !1166
  %211 = or i64 %210, 1099511627776, !dbg !1168
  br label %227, !dbg !1169

212:                                              ; preds = %204
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #34, !dbg !1170
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %3, metadata !946, metadata !DIExpression()) #34, !dbg !1171
  store i32 0, i32* %31, align 4, !dbg !1172, !tbaa !986
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #34, !dbg !1173
  %213 = ptrtoint i8* %206 to i64, !dbg !1174
  %214 = sub i64 %203, %213, !dbg !1174
  call void @llvm.dbg.value(metadata i32* %4, metadata !957, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1158
  %215 = call i64 @mbrtoc32(i32* noundef nonnull %4, i8* noundef nonnull %206, i64 noundef %214, %struct.__mbstate_t* noundef nonnull %3) #34, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %215, metadata !958, metadata !DIExpression()) #34, !dbg !1158
  %216 = icmp slt i64 %215, 0, !dbg !1176
  br i1 %216, label %225, label %217, !dbg !1177, !prof !994

217:                                              ; preds = %212
  %218 = load i32, i32* %4, align 4, !dbg !1178, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %218, metadata !957, metadata !DIExpression()) #34, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %218, metadata !977, metadata !DIExpression()) #34, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %215, metadata !972, metadata !DIExpression()) #34, !dbg !1179
  %219 = icmp ne i64 %215, 0, !dbg !1181
  call void @llvm.assume(i1 %219) #34, !dbg !1181
  %220 = icmp ult i64 %215, 5, !dbg !1182
  call void @llvm.assume(i1 %220) #34, !dbg !1182
  %221 = icmp ult i32 %218, 1114112, !dbg !1183
  call void @llvm.assume(i1 %221) #34, !dbg !1183
  %222 = shl nuw nsw i64 %215, 40, !dbg !1184
  %223 = zext i32 %218 to i64, !dbg !1184
  %224 = or i64 %222, %223, !dbg !1184
  br label %225, !dbg !1185

225:                                              ; preds = %212, %217
  %226 = phi i64 [ %224, %217 ], [ 1099511627776, %212 ], !dbg !1158
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #34, !dbg !1186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #34, !dbg !1186
  br label %227

227:                                              ; preds = %209, %225
  %228 = phi i64 [ %211, %209 ], [ %226, %225 ], !dbg !1158
  call void @llvm.dbg.value(metadata i64 %228, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1187
  %229 = lshr i64 %228, 40, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %229, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %228, metadata !237, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1187
  %230 = trunc i64 %228 to i32
  call void @llvm.dbg.value(metadata i32 %230, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #34, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %228, metadata !1030, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #34, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %228, metadata !1030, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %228, metadata !1030, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %205, metadata !1029, metadata !DIExpression()) #34, !dbg !1189
  %231 = load i32, i32* @counting_mode, align 4, !dbg !1191, !tbaa !658
  %232 = icmp eq i32 %231, 1, !dbg !1192
  br i1 %232, label %253, label %233, !dbg !1193

233:                                              ; preds = %227
  switch i32 %230, label %243 [
    i32 8, label %234
    i32 13, label %256
    i32 9, label %240
  ], !dbg !1194

234:                                              ; preds = %233
  %235 = icmp eq i64 %205, 0, !dbg !1195
  br i1 %235, label %256, label %236, !dbg !1196

236:                                              ; preds = %234
  %237 = load i32, i32* @last_character_width, align 4, !dbg !1197, !tbaa !649
  %238 = sext i32 %237 to i64, !dbg !1197
  %239 = sub i64 %205, %238, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %239, metadata !1029, metadata !DIExpression()) #34, !dbg !1189
  br label %256, !dbg !1199

240:                                              ; preds = %233
  %241 = add i64 %205, 8, !dbg !1200
  %242 = and i64 %241, -8, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %242, metadata !1029, metadata !DIExpression()) #34, !dbg !1189
  br label %256, !dbg !1202

243:                                              ; preds = %233
  %244 = icmp eq i32 %231, 2, !dbg !1203
  br i1 %244, label %249, label %245, !dbg !1204

245:                                              ; preds = %243
  call void @llvm.dbg.value(metadata i32 %230, metadata !1064, metadata !DIExpression()) #34, !dbg !1205
  %246 = call i32 @wcwidth(i32 noundef %230) #34, !dbg !1207
  call void @llvm.dbg.value(metadata i32 %246, metadata !1031, metadata !DIExpression()) #34, !dbg !1208
  %247 = icmp slt i32 %246, 0, !dbg !1209
  %248 = select i1 %247, i32 1, i32 %246, !dbg !1210
  br label %249

249:                                              ; preds = %245, %243
  %250 = phi i32 [ %248, %245 ], [ 1, %243 ], !dbg !1211
  store i32 %250, i32* @last_character_width, align 4, !dbg !1211, !tbaa !649
  %251 = zext i32 %250 to i64, !dbg !1212
  %252 = add i64 %205, %251, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %252, metadata !1029, metadata !DIExpression()) #34, !dbg !1189
  br label %256

253:                                              ; preds = %227
  call void @llvm.dbg.value(metadata i64 %229, metadata !1030, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1189
  %254 = and i64 %229, 255, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %229, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1189
  %255 = add i64 %254, %205, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %255, metadata !1029, metadata !DIExpression()) #34, !dbg !1189
  br label %256

256:                                              ; preds = %233, %234, %236, %240, %249, %253
  %257 = phi i64 [ %239, %236 ], [ 0, %234 ], [ %242, %240 ], [ %252, %249 ], [ %255, %253 ], [ 0, %233 ]
  call void @llvm.dbg.value(metadata i64 %257, metadata !1029, metadata !DIExpression()) #34, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %257, metadata !195, metadata !DIExpression()), !dbg !863
  %258 = and i64 %229, 255, !dbg !1216
  %259 = getelementptr inbounds i8, i8* %206, i64 %258, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %259, metadata !233, metadata !DIExpression()), !dbg !1153
  %260 = icmp ult i8* %259, %197, !dbg !1155
  br i1 %260, label %204, label %199, !dbg !1157, !llvm.loop !1218

261:                                              ; preds = %144, %149, %142
  call void @llvm.dbg.value(metadata i64 %140, metadata !195, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 %113, metadata !196, metadata !DIExpression()), !dbg !863
  %262 = icmp eq i64 %113, 0, !dbg !1220
  br i1 %262, label %263, label %268, !dbg !1222

263:                                              ; preds = %261
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1223, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)) #34, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %91, metadata !1223, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1229
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1223, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !1228, metadata !DIExpression()) #34, !dbg !1229
  %264 = icmp sge i64 %103, %107, !dbg !1232
  call void @llvm.assume(i1 %264) #34, !dbg !1234
  %265 = sub nsw i64 %103, %107, !dbg !1235
  %266 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %265, !dbg !1236
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !1237, metadata !DIExpression()) #34, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %266, metadata !1243, metadata !DIExpression()) #34, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %107, metadata !1244, metadata !DIExpression()) #34, !dbg !1245
  %267 = call i8* @__memcpy_chk(i8* noundef nonnull getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i8* noundef nonnull %266, i64 noundef %107, i64 noundef 262144) #34, !dbg !1247, !alias.scope !1248
  call void @llvm.dbg.value(metadata i64 %107, metadata !196, metadata !DIExpression()), !dbg !863
  br label %109, !dbg !1252

268:                                              ; preds = %261
  call fastcc void @write_out(i64 noundef %113, i1 noundef true), !dbg !1253
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression()), !dbg !863
  br label %199, !dbg !1254

269:                                              ; preds = %117, %118, %139
  %270 = phi i64 [ %140, %139 ], [ 0, %118 ], [ 0, %117 ]
  %271 = add nsw i64 %113, %107, !dbg !1255
  %272 = icmp ugt i64 %271, 262143, !dbg !1257
  br i1 %272, label %273, label %274, !dbg !1258

273:                                              ; preds = %269
  call fastcc void @write_out(i64 noundef %113, i1 noundef false), !dbg !1259
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !863
  br label %274, !dbg !1261

274:                                              ; preds = %273, %269
  %275 = phi i64 [ 0, %273 ], [ %113, %269 ], !dbg !863
  call void @llvm.dbg.value(metadata i64 %275, metadata !196, metadata !DIExpression()), !dbg !863
  %276 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 %275, !dbg !1262
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1223, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)) #34, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %91, metadata !1223, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #34, !dbg !1263
  call void @llvm.dbg.value(metadata !DIArgList(i64 %91, i64 undef), metadata !1223, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #34, !dbg !1263
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !1228, metadata !DIExpression()) #34, !dbg !1263
  %277 = icmp sge i64 %103, %107, !dbg !1265
  call void @llvm.assume(i1 %277) #34, !dbg !1266
  %278 = sub nsw i64 %103, %107, !dbg !1267
  %279 = getelementptr inbounds [262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 %278, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %276, metadata !1237, metadata !DIExpression()) #34, !dbg !1269
  call void @llvm.dbg.value(metadata i8* %279, metadata !1243, metadata !DIExpression()) #34, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %107, metadata !1244, metadata !DIExpression()) #34, !dbg !1269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %276, i8* noundef nonnull align 1 %279, i64 noundef %107, i1 noundef false) #34, !dbg !1271
  %280 = add nsw i64 %275, %107, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %280, metadata !196, metadata !DIExpression()), !dbg !863
  br label %109, !dbg !883

281:                                              ; preds = %55, %100
  %282 = tail call i32* @__errno_location() #37, !dbg !1273
  %283 = load i32, i32* %282, align 4, !dbg !1273, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %283, metadata !210, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !1274, metadata !DIExpression()), !dbg !1277
  %284 = load i32, i32* %23, align 8, !dbg !1280, !tbaa !909
  %285 = and i32 %284, 32, !dbg !1281
  %286 = icmp eq i32 %285, 0, !dbg !1281
  %287 = select i1 %286, i32 0, i32 %283, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %287, metadata !210, metadata !DIExpression()), !dbg !863
  %288 = icmp eq i64 %36, 0, !dbg !1283
  br i1 %288, label %290, label %289, !dbg !1285

289:                                              ; preds = %281
  call fastcc void @write_out(i64 noundef %36, i1 noundef false), !dbg !1286
  br label %290, !dbg !1286

290:                                              ; preds = %289, %281
  call void @llvm.dbg.value(metadata i8* %0, metadata !598, metadata !DIExpression()) #34, !dbg !1287
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), metadata !604, metadata !DIExpression()) #34, !dbg !1287
  %291 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !1290
  %292 = icmp eq i32 %291, 0, !dbg !1291
  br i1 %292, label %293, label %294, !dbg !1292

293:                                              ; preds = %290
  call void @clearerr_unlocked(%struct._IO_FILE* noundef nonnull %16) #34, !dbg !1293
  br label %301, !dbg !1293

294:                                              ; preds = %290
  %295 = call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %16) #34, !dbg !1294
  %296 = icmp eq i32 %295, 0, !dbg !1296
  %297 = icmp ne i32 %287, 0
  %298 = select i1 %296, i1 true, i1 %297, !dbg !1297
  br i1 %298, label %301, label %299, !dbg !1297

299:                                              ; preds = %294
  %300 = load i32, i32* %282, align 4, !dbg !1298, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %300, metadata !210, metadata !DIExpression()), !dbg !863
  br label %301, !dbg !1299

301:                                              ; preds = %294, %299, %293
  %302 = phi i32 [ %287, %293 ], [ %287, %294 ], [ %300, %299 ], !dbg !863
  call void @llvm.dbg.value(metadata i32 %302, metadata !210, metadata !DIExpression()), !dbg !863
  %303 = icmp eq i32 %302, 0, !dbg !1300
  br i1 %303, label %306, label %304, !dbg !1302

304:                                              ; preds = %301
  %305 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #34, !dbg !1303
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %302, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef %305) #34, !dbg !1303
  br label %306, !dbg !1305

306:                                              ; preds = %304, %301, %18
  %307 = phi i1 [ false, %18 ], [ true, %301 ], [ false, %304 ], !dbg !863
  ret i1 %307, !dbg !1306
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1307 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @write_out(i64 noundef %0, i1 noundef %1) unnamed_addr #12 !dbg !1314 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), metadata !1318, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %0, metadata !1319, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i1 %1, metadata !1320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1326
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1327, !tbaa !555
  %4 = tail call i64 @fwrite_unlocked(i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 noundef 1, i64 noundef %0, %struct._IO_FILE* noundef %3), !dbg !1327
  %5 = icmp eq i64 %4, %0, !dbg !1328
  br i1 %5, label %6, label %19, !dbg !1329

6:                                                ; preds = %2
  br i1 %1, label %7, label %28, !dbg !1330

7:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 10, metadata !1331, metadata !DIExpression()) #34, !dbg !1336
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1338, !tbaa !555
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i64 0, i32 5, !dbg !1338
  %10 = load i8*, i8** %9, align 8, !dbg !1338, !tbaa !1339
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i64 0, i32 6, !dbg !1338
  %12 = load i8*, i8** %11, align 8, !dbg !1338, !tbaa !1340
  %13 = icmp ult i8* %10, %12, !dbg !1338
  br i1 %13, label %14, label %16, !dbg !1338, !prof !1341

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1338
  store i8* %15, i8** %9, align 8, !dbg !1338, !tbaa !1339
  store i8 10, i8* %10, align 1, !dbg !1338, !tbaa !658
  br label %28, !dbg !1342

16:                                               ; preds = %7
  %17 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %8, i32 noundef 10) #34, !dbg !1338
  %18 = icmp slt i32 %17, 0, !dbg !1343
  br i1 %18, label %19, label %28, !dbg !1342

19:                                               ; preds = %16, %2
  %20 = tail call i32* @__errno_location() #37, !dbg !1344
  %21 = load i32, i32* %20, align 4, !dbg !1344, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %21, metadata !1347, metadata !DIExpression()) #34, !dbg !1349
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1350, !tbaa !555
  %23 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %22) #34, !dbg !1350
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1351, !tbaa !555
  %25 = tail call i32 @fpurge(%struct._IO_FILE* noundef %24) #34, !dbg !1352
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1353, !tbaa !555
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %26) #34, !dbg !1353
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #34, !dbg !1354
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %21, i8* noundef %27) #34, !dbg !1354
  unreachable, !dbg !1354

28:                                               ; preds = %14, %16, %6
  ret void, !dbg !1355
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !1356 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1361 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind
declare i8* @__memcpy_chk(i8* noalias noundef writeonly, i8* noalias nocapture noundef readonly, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !1363 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1366 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 !dbg !1367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1369, metadata !DIExpression()), !dbg !1370
  store i8* %0, i8** @file_name, align 8, !dbg !1371, !tbaa !555
  ret void, !dbg !1372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1373 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1377, metadata !DIExpression()), !dbg !1378
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1379, !tbaa !1380
  ret void, !dbg !1382
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1383 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1388, !tbaa !555
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !1389
  %3 = icmp eq i32 %2, 0, !dbg !1390
  br i1 %3, label %22, label %4, !dbg !1391

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1392, !tbaa !1380, !range !1393
  %6 = icmp eq i8 %5, 0, !dbg !1392
  br i1 %6, label %11, label %7, !dbg !1394

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !1395
  %9 = load i32, i32* %8, align 4, !dbg !1395, !tbaa !649
  %10 = icmp eq i32 %9, 32, !dbg !1396
  br i1 %10, label %22, label %11, !dbg !1397

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.28, i64 0, i64 0), i32 noundef 5) #34, !dbg !1398
  call void @llvm.dbg.value(metadata i8* %12, metadata !1385, metadata !DIExpression()), !dbg !1399
  %13 = load i8*, i8** @file_name, align 8, !dbg !1400, !tbaa !555
  %14 = icmp eq i8* %13, null, !dbg !1400
  %15 = tail call i32* @__errno_location() #37, !dbg !1402
  %16 = load i32, i32* %15, align 4, !dbg !1402, !tbaa !649
  br i1 %14, label %19, label %17, !dbg !1403

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !1404
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.29, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !1404
  br label %20, !dbg !1404

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.30, i64 0, i64 0), i8* noundef %12) #34, !dbg !1405
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1406, !tbaa !649
  tail call void @_exit(i32 noundef %21) #36, !dbg !1407
  unreachable, !dbg !1407

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1408, !tbaa !555
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !1410
  %25 = icmp eq i32 %24, 0, !dbg !1411
  br i1 %25, label %28, label %26, !dbg !1412

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1413, !tbaa !649
  tail call void @_exit(i32 noundef %27) #36, !dbg !1414
  unreachable, !dbg !1414

28:                                               ; preds = %22
  ret void, !dbg !1415
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1416 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1420, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i32 %1, metadata !1421, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8* %2, metadata !1422, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1423, metadata !DIExpression()), !dbg !1425
  tail call fastcc void @flush_stdout(), !dbg !1426
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1427, !tbaa !555
  %7 = icmp eq void ()* %6, null, !dbg !1427
  br i1 %7, label %9, label %8, !dbg !1429

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !1430
  br label %13, !dbg !1430

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1431, !tbaa !555
  %11 = tail call i8* @getprogname() #35, !dbg !1431
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* noundef %11) #34, !dbg !1431
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1433
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1433
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1433, !tbaa.struct !1434
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1433
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1433
  ret void, !dbg !1435
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1436 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1438, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 1, metadata !1440, metadata !DIExpression()) #34, !dbg !1443
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !1446
  %2 = icmp slt i32 %1, 0, !dbg !1447
  br i1 %2, label %6, label %3, !dbg !1448

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1449, !tbaa !555
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !1449
  br label %6, !dbg !1449

6:                                                ; preds = %3, %0
  ret void, !dbg !1450
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1451 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1453, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %1, metadata !1454, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i8* %2, metadata !1455, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1456, metadata !DIExpression()), !dbg !1458
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1459, !tbaa !555
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1460
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1461, metadata !DIExpression()) #34, !dbg !1504
  call void @llvm.dbg.value(metadata i8* %2, metadata !1502, metadata !DIExpression()) #34, !dbg !1504
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1506
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1506, !noalias !1507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1506
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1506, !noalias !1507
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1511, !tbaa !649
  %12 = add i32 %11, 1, !dbg !1511
  store i32 %12, i32* @error_message_count, align 4, !dbg !1511, !tbaa !649
  %13 = icmp eq i32 %1, 0, !dbg !1512
  br i1 %13, label %24, label %14, !dbg !1514

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1515, metadata !DIExpression()) #34, !dbg !1523
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1525
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1525
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1519, metadata !DIExpression()) #34, !dbg !1526
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1527
  call void @llvm.dbg.value(metadata i8* %16, metadata !1518, metadata !DIExpression()) #34, !dbg !1523
  %17 = icmp eq i8* %16, null, !dbg !1528
  br i1 %17, label %18, label %20, !dbg !1530

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.33, i64 0, i64 0), i32 noundef 5) #34, !dbg !1531
  call void @llvm.dbg.value(metadata i8* %19, metadata !1518, metadata !DIExpression()) #34, !dbg !1523
  br label %20, !dbg !1532

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8* %21, metadata !1518, metadata !DIExpression()) #34, !dbg !1523
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1533, !tbaa !555
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.34, i64 0, i64 0), i8* noundef %21) #34, !dbg !1533
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1534
  br label %24, !dbg !1535

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1536, !tbaa !555
  call void @llvm.dbg.value(metadata i32 10, metadata !1537, metadata !DIExpression()) #34, !dbg !1543
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1542, metadata !DIExpression()) #34, !dbg !1543
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1545
  %27 = load i8*, i8** %26, align 8, !dbg !1545, !tbaa !1339
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1545
  %29 = load i8*, i8** %28, align 8, !dbg !1545, !tbaa !1340
  %30 = icmp ult i8* %27, %29, !dbg !1545
  br i1 %30, label %33, label %31, !dbg !1545, !prof !1341

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1545
  br label %35, !dbg !1545

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1545
  store i8* %34, i8** %26, align 8, !dbg !1545, !tbaa !1339
  store i8 10, i8* %27, align 1, !dbg !1545, !tbaa !658
  br label %35, !dbg !1545

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1546, !tbaa !555
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !1546
  %38 = icmp eq i32 %0, 0, !dbg !1547
  br i1 %38, label %40, label %39, !dbg !1549

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !1550
  unreachable, !dbg !1550

40:                                               ; preds = %35
  ret void, !dbg !1551
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1552 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1556 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1560 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 %1, metadata !1565, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %2, metadata !1566, metadata !DIExpression()), !dbg !1568
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1569
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1569
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1567, metadata !DIExpression()), !dbg !1570
  call void @llvm.va_start(i8* nonnull %6), !dbg !1571
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1572
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1572, !tbaa.struct !1434
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1572
  call void @llvm.va_end(i8* nonnull %6), !dbg !1573
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1574
  ret void, !dbg !1574
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !272 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !290, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %1, metadata !291, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8* %2, metadata !292, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %3, metadata !293, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8* %4, metadata !294, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !295, metadata !DIExpression()), !dbg !1576
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1577, !tbaa !649
  %9 = icmp eq i32 %8, 0, !dbg !1577
  br i1 %9, label %24, label %10, !dbg !1579

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1580, !tbaa !649
  %12 = icmp eq i32 %11, %3, !dbg !1583
  br i1 %12, label %13, label %23, !dbg !1584

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1585, !tbaa !555
  %15 = icmp eq i8* %14, %2, !dbg !1586
  br i1 %15, label %39, label %16, !dbg !1587

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1588
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1589
  br i1 %19, label %20, label %23, !dbg !1589

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1590
  %22 = icmp eq i32 %21, 0, !dbg !1591
  br i1 %22, label %39, label %23, !dbg !1592

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1593, !tbaa !555
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1594, !tbaa !649
  br label %24, !dbg !1595

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1596
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1597, !tbaa !555
  %26 = icmp eq void ()* %25, null, !dbg !1597
  br i1 %26, label %28, label %27, !dbg !1599

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1600
  br label %32, !dbg !1600

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1601, !tbaa !555
  %30 = tail call i8* @getprogname() #35, !dbg !1601
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.37, i64 0, i64 0), i8* noundef %30) #34, !dbg !1601
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1603, !tbaa !555
  %34 = icmp eq i8* %2, null, !dbg !1603
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.39, i64 0, i64 0), !dbg !1603
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1603
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1604
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1604
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1604, !tbaa.struct !1434
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1604
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1604
  br label %39, !dbg !1605

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1605
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1606 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1610, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i32 %1, metadata !1611, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8* %2, metadata !1612, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i32 %3, metadata !1613, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8* %4, metadata !1614, metadata !DIExpression()), !dbg !1616
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1617
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1617
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1615, metadata !DIExpression()), !dbg !1618
  call void @llvm.va_start(i8* nonnull %8), !dbg !1619
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1620
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1620, !tbaa.struct !1434
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1620
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1620
  call void @llvm.va_end(i8* nonnull %8), !dbg !1621
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1622
  ret void, !dbg !1622
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1629, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %1, metadata !1630, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %2, metadata !1631, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %3, metadata !1632, metadata !DIExpression()), !dbg !1633
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #34, !dbg !1634
  ret void, !dbg !1635
}

; Function Attrs: nounwind
declare !dbg !1636 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1639 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1677, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %1, metadata !1678, metadata !DIExpression()), !dbg !1679
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1680
  br i1 %3, label %7, label %4, !dbg !1682

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %5, metadata !1629, metadata !DIExpression()) #34, !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()) #34, !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()) #34, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %1, metadata !1632, metadata !DIExpression()) #34, !dbg !1684
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #34, !dbg !1686
  br label %7, !dbg !1687

7:                                                ; preds = %4, %2
  ret void, !dbg !1688
}

; Function Attrs: nofree nounwind
declare !dbg !1689 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1692 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1730, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 0, metadata !1731, metadata !DIExpression()), !dbg !1734
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %2, metadata !1732, metadata !DIExpression()), !dbg !1734
  %3 = icmp slt i32 %2, 0, !dbg !1736
  br i1 %3, label %4, label %6, !dbg !1738

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1739
  br label %24, !dbg !1740

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1741
  %8 = icmp eq i32 %7, 0, !dbg !1741
  br i1 %8, label %13, label %9, !dbg !1743

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1744
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !1745
  %12 = icmp eq i64 %11, -1, !dbg !1746
  br i1 %12, label %16, label %13, !dbg !1747

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1748
  %15 = icmp eq i32 %14, 0, !dbg !1748
  br i1 %15, label %16, label %18, !dbg !1749

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !1731, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 0, metadata !1733, metadata !DIExpression()), !dbg !1734
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1750
  call void @llvm.dbg.value(metadata i32 %21, metadata !1733, metadata !DIExpression()), !dbg !1734
  br label %24, !dbg !1751

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !1752
  %20 = load i32, i32* %19, align 4, !dbg !1752, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %20, metadata !1731, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 0, metadata !1733, metadata !DIExpression()), !dbg !1734
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1750
  call void @llvm.dbg.value(metadata i32 %21, metadata !1733, metadata !DIExpression()), !dbg !1734
  %22 = icmp eq i32 %20, 0, !dbg !1753
  br i1 %22, label %24, label %23, !dbg !1751

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !1755, !tbaa !649
  call void @llvm.dbg.value(metadata i32 -1, metadata !1733, metadata !DIExpression()), !dbg !1734
  br label %24, !dbg !1757

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1734
  ret i32 %25, !dbg !1758
}

; Function Attrs: nofree nounwind
declare !dbg !1759 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1760 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !1764 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1802, metadata !DIExpression()), !dbg !1803
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1804
  br i1 %2, label %6, label %3, !dbg !1806

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1807
  %5 = icmp eq i32 %4, 0, !dbg !1807
  br i1 %5, label %6, label %8, !dbg !1808

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !1809
  br label %17, !dbg !1810

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1811, metadata !DIExpression()) #34, !dbg !1816
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1818
  %10 = load i32, i32* %9, align 8, !dbg !1818, !tbaa !909
  %11 = and i32 %10, 256, !dbg !1820
  %12 = icmp eq i32 %11, 0, !dbg !1820
  br i1 %12, label %15, label %13, !dbg !1821

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !1822
  br label %15, !dbg !1822

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !1823
  br label %17, !dbg !1824

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !1803
  ret i32 %18, !dbg !1825
}

; Function Attrs: nofree nounwind
declare !dbg !1826 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1827 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1865, metadata !DIExpression()), !dbg !1866
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1867
  ret i32 0, !dbg !1868
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !1869 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1907, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i64 %1, metadata !1908, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i32 %2, metadata !1909, metadata !DIExpression()), !dbg !1913
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1914
  %5 = load i8*, i8** %4, align 8, !dbg !1914, !tbaa !1915
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1916
  %7 = load i8*, i8** %6, align 8, !dbg !1916, !tbaa !1917
  %8 = icmp eq i8* %5, %7, !dbg !1918
  br i1 %8, label %9, label %28, !dbg !1919

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1920
  %11 = load i8*, i8** %10, align 8, !dbg !1920, !tbaa !1339
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !1921
  %13 = load i8*, i8** %12, align 8, !dbg !1921, !tbaa !1922
  %14 = icmp eq i8* %11, %13, !dbg !1923
  br i1 %14, label %15, label %28, !dbg !1924

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !1925
  %17 = load i8*, i8** %16, align 8, !dbg !1925, !tbaa !1926
  %18 = icmp eq i8* %17, null, !dbg !1927
  br i1 %18, label %19, label %28, !dbg !1928

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1929
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %21, metadata !1910, metadata !DIExpression()), !dbg !1931
  %22 = icmp eq i64 %21, -1, !dbg !1932
  br i1 %22, label %30, label %23, !dbg !1934

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1935
  %25 = load i32, i32* %24, align 8, !dbg !1936, !tbaa !909
  %26 = and i32 %25, -17, !dbg !1936
  store i32 %26, i32* %24, align 8, !dbg !1936, !tbaa !909
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !1937
  store i64 %21, i64* %27, align 8, !dbg !1938, !tbaa !1939
  br label %30, !dbg !1940

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !1941
  br label %30, !dbg !1942

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !1913
  ret i32 %31, !dbg !1943
}

; Function Attrs: nofree nounwind
declare !dbg !1944 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !1947 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1950, !tbaa !555
  ret i8* %1, !dbg !1951
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #20 !dbg !1952 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1954, metadata !DIExpression()), !dbg !1957
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !1958
  call void @llvm.dbg.value(metadata i8* %2, metadata !1955, metadata !DIExpression()), !dbg !1957
  %3 = icmp eq i8* %2, null, !dbg !1959
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1959
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1959
  call void @llvm.dbg.value(metadata i8* %5, metadata !1956, metadata !DIExpression()), !dbg !1957
  %6 = ptrtoint i8* %5 to i64, !dbg !1960
  %7 = ptrtoint i8* %0 to i64, !dbg !1960
  %8 = sub i64 %6, %7, !dbg !1960
  %9 = icmp sgt i64 %8, 6, !dbg !1962
  br i1 %9, label %10, label %19, !dbg !1963

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1964
  call void @llvm.dbg.value(metadata i8* %11, metadata !1965, metadata !DIExpression()) #34, !dbg !1972
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), metadata !1970, metadata !DIExpression()) #34, !dbg !1972
  call void @llvm.dbg.value(metadata i64 7, metadata !1971, metadata !DIExpression()) #34, !dbg !1972
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i64 7) #34, !dbg !1974
  %13 = icmp eq i32 %12, 0, !dbg !1975
  br i1 %13, label %14, label %19, !dbg !1976

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1954, metadata !DIExpression()), !dbg !1957
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.64, i64 0, i64 0), i64 noundef 3) #35, !dbg !1977
  %16 = icmp eq i32 %15, 0, !dbg !1980
  %17 = select i1 %16, i64 3, i64 0, !dbg !1981
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1981
  br label %19, !dbg !1981

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1957
  call void @llvm.dbg.value(metadata i8* %21, metadata !1956, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8* %20, metadata !1954, metadata !DIExpression()), !dbg !1957
  store i8* %20, i8** @program_name, align 8, !dbg !1982, !tbaa !555
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1983, !tbaa !555
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1984, !tbaa !555
  ret void, !dbg !1985
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !313 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !320, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8* %1, metadata !321, metadata !DIExpression()), !dbg !1986
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !1987
  call void @llvm.dbg.value(metadata i8* %5, metadata !322, metadata !DIExpression()), !dbg !1986
  %6 = icmp eq i8* %5, %0, !dbg !1988
  br i1 %6, label %7, label %17, !dbg !1990

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1991
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1991
  %10 = bitcast i64* %4 to i8*, !dbg !1992
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1992
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !324, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1994, metadata !DIExpression()) #34, !dbg !2001
  call void @llvm.dbg.value(metadata i8* %10, metadata !2003, metadata !DIExpression()) #34, !dbg !2010
  call void @llvm.dbg.value(metadata i32 0, metadata !2008, metadata !DIExpression()) #34, !dbg !2010
  call void @llvm.dbg.value(metadata i64 8, metadata !2009, metadata !DIExpression()) #34, !dbg !2010
  store i64 0, i64* %4, align 8, !dbg !2012
  call void @llvm.dbg.value(metadata i32* %3, metadata !323, metadata !DIExpression(DW_OP_deref)), !dbg !1986
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !2013
  %12 = icmp eq i64 %11, 2, !dbg !2015
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !323, metadata !DIExpression()), !dbg !1986
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2016
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1986
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2017
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2017
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1986
  ret i8* %18, !dbg !2017
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2018 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2023, metadata !DIExpression()), !dbg !2026
  %2 = tail call i32* @__errno_location() #37, !dbg !2027
  %3 = load i32, i32* %2, align 4, !dbg !2027, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %3, metadata !2024, metadata !DIExpression()), !dbg !2026
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2028
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2028
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2028
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !2029
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2025, metadata !DIExpression()), !dbg !2026
  store i32 %3, i32* %2, align 4, !dbg !2030, !tbaa !649
  ret %struct.quoting_options* %8, !dbg !2031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !2032 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2038, metadata !DIExpression()), !dbg !2039
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2040
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2040
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2041
  %5 = load i32, i32* %4, align 8, !dbg !2041, !tbaa !2042
  ret i32 %5, !dbg !2044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 !dbg !2045 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2049, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %1, metadata !2050, metadata !DIExpression()), !dbg !2051
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2052
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2052
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2053
  store i32 %1, i32* %5, align 8, !dbg !2054, !tbaa !2042
  ret void, !dbg !2055
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2056 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2060, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8 %1, metadata !2061, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %2, metadata !2062, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8 %1, metadata !2063, metadata !DIExpression()), !dbg !2068
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2069
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2069
  %6 = lshr i8 %1, 5, !dbg !2070
  %7 = zext i8 %6 to i64, !dbg !2070
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2071
  call void @llvm.dbg.value(metadata i32* %8, metadata !2064, metadata !DIExpression()), !dbg !2068
  %9 = and i8 %1, 31, !dbg !2072
  %10 = zext i8 %9 to i32, !dbg !2072
  call void @llvm.dbg.value(metadata i32 %10, metadata !2066, metadata !DIExpression()), !dbg !2068
  %11 = load i32, i32* %8, align 4, !dbg !2073, !tbaa !649
  %12 = lshr i32 %11, %10, !dbg !2074
  %13 = and i32 %12, 1, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %13, metadata !2067, metadata !DIExpression()), !dbg !2068
  %14 = and i32 %2, 1, !dbg !2076
  %15 = xor i32 %13, %14, !dbg !2077
  %16 = shl i32 %15, %10, !dbg !2078
  %17 = xor i32 %16, %11, !dbg !2079
  store i32 %17, i32* %8, align 4, !dbg !2079, !tbaa !649
  ret i32 %13, !dbg !2080
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2081 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2085, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %1, metadata !2086, metadata !DIExpression()), !dbg !2088
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2089
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2085, metadata !DIExpression()), !dbg !2088
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2092
  %6 = load i32, i32* %5, align 4, !dbg !2092, !tbaa !2093
  call void @llvm.dbg.value(metadata i32 %6, metadata !2087, metadata !DIExpression()), !dbg !2088
  store i32 %1, i32* %5, align 4, !dbg !2094, !tbaa !2093
  ret i32 %6, !dbg !2095
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2096 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8* %1, metadata !2101, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8* %2, metadata !2102, metadata !DIExpression()), !dbg !2103
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2104
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2106
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2100, metadata !DIExpression()), !dbg !2103
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2107
  store i32 10, i32* %6, align 8, !dbg !2108, !tbaa !2042
  %7 = icmp ne i8* %1, null, !dbg !2109
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2111
  br i1 %9, label %11, label %10, !dbg !2111

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2112
  unreachable, !dbg !2112

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2113
  store i8* %1, i8** %12, align 8, !dbg !2114, !tbaa !2115
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2116
  store i8* %2, i8** %13, align 8, !dbg !2117, !tbaa !2118
  ret void, !dbg !2119
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2120 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2124, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %1, metadata !2125, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* %2, metadata !2126, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %3, metadata !2127, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2128, metadata !DIExpression()), !dbg !2132
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2133
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2133
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2129, metadata !DIExpression()), !dbg !2132
  %8 = tail call i32* @__errno_location() #37, !dbg !2134
  %9 = load i32, i32* %8, align 4, !dbg !2134, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %9, metadata !2130, metadata !DIExpression()), !dbg !2132
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2135
  %11 = load i32, i32* %10, align 8, !dbg !2135, !tbaa !2042
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2136
  %13 = load i32, i32* %12, align 4, !dbg !2136, !tbaa !2093
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2137
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2138
  %16 = load i8*, i8** %15, align 8, !dbg !2138, !tbaa !2115
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2139
  %18 = load i8*, i8** %17, align 8, !dbg !2139, !tbaa !2118
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %19, metadata !2131, metadata !DIExpression()), !dbg !2132
  store i32 %9, i32* %8, align 4, !dbg !2141, !tbaa !649
  ret i64 %19, !dbg !2142
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2143 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2149, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %1, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %2, metadata !2151, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %3, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 %4, metadata !2153, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 %5, metadata !2154, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32* %6, metadata !2155, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %7, metadata !2156, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %8, metadata !2157, metadata !DIExpression()), !dbg !2211
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !2212
  %18 = icmp eq i64 %17, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i1 %18, metadata !2158, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2211
  call void @llvm.dbg.value(metadata i64 0, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 0, metadata !2160, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* null, metadata !2161, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 0, metadata !2162, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 %5, metadata !2164, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2211
  call void @llvm.dbg.value(metadata i8 0, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 1, metadata !2166, metadata !DIExpression()), !dbg !2211
  %19 = and i32 %5, 2, !dbg !2214
  %20 = icmp ne i32 %19, 0, !dbg !2214
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
  br label %36, !dbg !2214

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2215
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2216
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2217
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2163, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %43, metadata !2162, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %42, metadata !2161, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %41, metadata !2160, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 0, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %40, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %39, metadata !2157, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %38, metadata !2156, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 %37, metadata !2153, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.label(metadata !2204), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2211
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
  ], !dbg !2219

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 5, metadata !2153, metadata !DIExpression()), !dbg !2211
  br label %111, !dbg !2220

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 5, metadata !2153, metadata !DIExpression()), !dbg !2211
  br i1 %45, label %111, label %51, !dbg !2220

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2221
  br i1 %52, label %111, label %53, !dbg !2225

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2221, !tbaa !658
  br label %111, !dbg !2221

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), metadata !386, metadata !DIExpression()) #34, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %37, metadata !387, metadata !DIExpression()) #34, !dbg !2226
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !2230
  call void @llvm.dbg.value(metadata i8* %55, metadata !388, metadata !DIExpression()) #34, !dbg !2226
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), !dbg !2231
  br i1 %56, label %57, label %66, !dbg !2233

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2235
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !390, metadata !DIExpression()) #34, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2237, metadata !DIExpression()) #34, !dbg !2243
  call void @llvm.dbg.value(metadata i8* %23, metadata !2245, metadata !DIExpression()) #34, !dbg !2250
  call void @llvm.dbg.value(metadata i32 0, metadata !2248, metadata !DIExpression()) #34, !dbg !2250
  call void @llvm.dbg.value(metadata i64 8, metadata !2249, metadata !DIExpression()) #34, !dbg !2250
  store i64 0, i64* %13, align 8, !dbg !2252
  call void @llvm.dbg.value(metadata i32* %12, metadata !389, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2226
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !2253
  %59 = icmp eq i64 %58, 3, !dbg !2255
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !389, metadata !DIExpression()) #34, !dbg !2226
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2256
  %63 = icmp eq i32 %37, 9, !dbg !2256
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2256
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2256
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2257
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2257
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2226
  call void @llvm.dbg.value(metadata i8* %67, metadata !2156, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), metadata !386, metadata !DIExpression()) #34, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %37, metadata !387, metadata !DIExpression()) #34, !dbg !2258
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 noundef 5) #34, !dbg !2260
  call void @llvm.dbg.value(metadata i8* %68, metadata !388, metadata !DIExpression()) #34, !dbg !2258
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2261
  br i1 %69, label %70, label %79, !dbg !2262

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2263
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2264
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !390, metadata !DIExpression()) #34, !dbg !2265
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2237, metadata !DIExpression()) #34, !dbg !2266
  call void @llvm.dbg.value(metadata i8* %26, metadata !2245, metadata !DIExpression()) #34, !dbg !2268
  call void @llvm.dbg.value(metadata i32 0, metadata !2248, metadata !DIExpression()) #34, !dbg !2268
  call void @llvm.dbg.value(metadata i64 8, metadata !2249, metadata !DIExpression()) #34, !dbg !2268
  store i64 0, i64* %11, align 8, !dbg !2270
  call void @llvm.dbg.value(metadata i32* %10, metadata !389, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2258
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !2271
  %72 = icmp eq i64 %71, 3, !dbg !2272
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !389, metadata !DIExpression()) #34, !dbg !2258
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2273
  %76 = icmp eq i32 %37, 9, !dbg !2273
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2273
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2273
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2274
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2157, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %80, metadata !2156, metadata !DIExpression()), !dbg !2211
  br i1 %45, label %97, label %82, !dbg !2275

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2168, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 0, metadata !2159, metadata !DIExpression()), !dbg !2211
  %83 = load i8, i8* %80, align 1, !dbg !2277, !tbaa !658
  %84 = icmp eq i8 %83, 0, !dbg !2279
  br i1 %84, label %97, label %85, !dbg !2279

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2168, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %88, metadata !2159, metadata !DIExpression()), !dbg !2211
  %89 = icmp ult i64 %88, %48, !dbg !2280
  br i1 %89, label %90, label %92, !dbg !2283

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2280
  store i8 %86, i8* %91, align 1, !dbg !2280, !tbaa !658
  br label %92, !dbg !2280

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %93, metadata !2159, metadata !DIExpression()), !dbg !2211
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %94, metadata !2168, metadata !DIExpression()), !dbg !2276
  %95 = load i8, i8* %94, align 1, !dbg !2277, !tbaa !658
  %96 = icmp eq i8 %95, 0, !dbg !2279
  br i1 %96, label %97, label %85, !dbg !2279, !llvm.loop !2285

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2287
  call void @llvm.dbg.value(metadata i64 %98, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 1, metadata !2163, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %81, metadata !2161, metadata !DIExpression()), !dbg !2211
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %99, metadata !2162, metadata !DIExpression()), !dbg !2211
  br label %111, !dbg !2289

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2163, metadata !DIExpression()), !dbg !2211
  br label %102, !dbg !2290

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2163, metadata !DIExpression()), !dbg !2211
  br i1 %45, label %102, label %105, !dbg !2291

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2163, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 2, metadata !2153, metadata !DIExpression()), !dbg !2211
  br label %111, !dbg !2292

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2163, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 2, metadata !2153, metadata !DIExpression()), !dbg !2211
  br i1 %45, label %111, label %105, !dbg !2292

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2293
  br i1 %107, label %111, label %108, !dbg !2297

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2293, !tbaa !658
  br label %111, !dbg !2293

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2164, metadata !DIExpression()), !dbg !2211
  br label %111, !dbg !2298

110:                                              ; preds = %36
  call void @abort() #36, !dbg !2299
  unreachable, !dbg !2299

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2287
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %102 ], !dbg !2211
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2211
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2163, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %117, metadata !2162, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %116, metadata !2161, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %115, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %114, metadata !2157, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %113, metadata !2156, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 %112, metadata !2153, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2300
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
  br label %132, !dbg !2301

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2287
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2215
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2300
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %139, metadata !2173, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %135, metadata !2160, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %134, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %133, metadata !2152, metadata !DIExpression()), !dbg !2211
  %141 = icmp eq i64 %133, -1, !dbg !2302
  br i1 %141, label %142, label %146, !dbg !2303

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2304
  %144 = load i8, i8* %143, align 1, !dbg !2304, !tbaa !658
  %145 = icmp eq i8 %144, 0, !dbg !2305
  br i1 %145, label %596, label %148, !dbg !2306

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2307
  br i1 %147, label %596, label %148, !dbg !2306

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2175, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2179, metadata !DIExpression()), !dbg !2308
  br i1 %123, label %149, label %163, !dbg !2309

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2311
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2312
  br i1 %151, label %152, label %154, !dbg !2312

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %153, metadata !2152, metadata !DIExpression()), !dbg !2211
  br label %154, !dbg !2314

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2314
  call void @llvm.dbg.value(metadata i64 %155, metadata !2152, metadata !DIExpression()), !dbg !2211
  %156 = icmp ugt i64 %150, %155, !dbg !2315
  br i1 %156, label %163, label %157, !dbg !2316

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2317
  call void @llvm.dbg.value(metadata i8* %158, metadata !2318, metadata !DIExpression()) #34, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %116, metadata !2321, metadata !DIExpression()) #34, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %117, metadata !2322, metadata !DIExpression()) #34, !dbg !2323
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !2325
  %160 = icmp ne i32 %159, 0, !dbg !2326
  %161 = or i1 %160, %125, !dbg !2327
  %162 = xor i1 %160, true, !dbg !2327
  br i1 %161, label %163, label %647, !dbg !2327

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %164, metadata !2152, metadata !DIExpression()), !dbg !2211
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2328
  %167 = load i8, i8* %166, align 1, !dbg !2328, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %167, metadata !2180, metadata !DIExpression()), !dbg !2308
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
  ], !dbg !2329

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2330

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2331

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2178, metadata !DIExpression()), !dbg !2308
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2335
  br i1 %171, label %188, label %172, !dbg !2335

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2337
  br i1 %173, label %174, label %176, !dbg !2341

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2337
  store i8 39, i8* %175, align 1, !dbg !2337, !tbaa !658
  br label %176, !dbg !2337

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %177, metadata !2159, metadata !DIExpression()), !dbg !2211
  %178 = icmp ult i64 %177, %140, !dbg !2342
  br i1 %178, label %179, label %181, !dbg !2345

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2342
  store i8 36, i8* %180, align 1, !dbg !2342, !tbaa !658
  br label %181, !dbg !2342

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %182, metadata !2159, metadata !DIExpression()), !dbg !2211
  %183 = icmp ult i64 %182, %140, !dbg !2346
  br i1 %183, label %184, label %186, !dbg !2349

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2346
  store i8 39, i8* %185, align 1, !dbg !2346, !tbaa !658
  br label %186, !dbg !2346

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %187, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 1, metadata !2167, metadata !DIExpression()), !dbg !2211
  br label %188, !dbg !2350

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2211
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %189, metadata !2159, metadata !DIExpression()), !dbg !2211
  %191 = icmp ult i64 %189, %140, !dbg !2351
  br i1 %191, label %192, label %194, !dbg !2354

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2351
  store i8 92, i8* %193, align 1, !dbg !2351, !tbaa !658
  br label %194, !dbg !2351

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %195, metadata !2159, metadata !DIExpression()), !dbg !2211
  br i1 %120, label %196, label %499, !dbg !2355

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2357
  %198 = icmp ult i64 %197, %164, !dbg !2358
  br i1 %198, label %199, label %456, !dbg !2359

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2360
  %201 = load i8, i8* %200, align 1, !dbg !2360, !tbaa !658
  %202 = add i8 %201, -48, !dbg !2361
  %203 = icmp ult i8 %202, 10, !dbg !2361
  br i1 %203, label %204, label %456, !dbg !2361

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2362
  br i1 %205, label %206, label %208, !dbg !2366

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2362
  store i8 48, i8* %207, align 1, !dbg !2362, !tbaa !658
  br label %208, !dbg !2362

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %209, metadata !2159, metadata !DIExpression()), !dbg !2211
  %210 = icmp ult i64 %209, %140, !dbg !2367
  br i1 %210, label %211, label %213, !dbg !2370

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2367
  store i8 48, i8* %212, align 1, !dbg !2367, !tbaa !658
  br label %213, !dbg !2367

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %214, metadata !2159, metadata !DIExpression()), !dbg !2211
  br label %456, !dbg !2371

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2372

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2373

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2374

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2376

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2378
  %221 = icmp ult i64 %220, %164, !dbg !2379
  br i1 %221, label %222, label %456, !dbg !2380

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2381
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2382
  %225 = load i8, i8* %224, align 1, !dbg !2382, !tbaa !658
  %226 = icmp eq i8 %225, 63, !dbg !2383
  br i1 %226, label %227, label %456, !dbg !2384

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2385
  %229 = load i8, i8* %228, align 1, !dbg !2385, !tbaa !658
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
  ], !dbg !2386

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2387

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2180, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %220, metadata !2173, metadata !DIExpression()), !dbg !2300
  %232 = icmp ult i64 %134, %140, !dbg !2389
  br i1 %232, label %233, label %235, !dbg !2392

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2389
  store i8 63, i8* %234, align 1, !dbg !2389, !tbaa !658
  br label %235, !dbg !2389

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %236, metadata !2159, metadata !DIExpression()), !dbg !2211
  %237 = icmp ult i64 %236, %140, !dbg !2393
  br i1 %237, label %238, label %240, !dbg !2396

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2393
  store i8 34, i8* %239, align 1, !dbg !2393, !tbaa !658
  br label %240, !dbg !2393

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %241, metadata !2159, metadata !DIExpression()), !dbg !2211
  %242 = icmp ult i64 %241, %140, !dbg !2397
  br i1 %242, label %243, label %245, !dbg !2400

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2397
  store i8 34, i8* %244, align 1, !dbg !2397, !tbaa !658
  br label %245, !dbg !2397

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %246, metadata !2159, metadata !DIExpression()), !dbg !2211
  %247 = icmp ult i64 %246, %140, !dbg !2401
  br i1 %247, label %248, label %250, !dbg !2404

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2401
  store i8 63, i8* %249, align 1, !dbg !2401, !tbaa !658
  br label %250, !dbg !2401

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %251, metadata !2159, metadata !DIExpression()), !dbg !2211
  br label %456, !dbg !2405

252:                                              ; preds = %163
  br label %263, !dbg !2406

253:                                              ; preds = %163
  br label %263, !dbg !2407

254:                                              ; preds = %163
  br label %261, !dbg !2408

255:                                              ; preds = %163
  br label %261, !dbg !2409

256:                                              ; preds = %163
  br label %263, !dbg !2410

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2411

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2412

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2415

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2417

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2418
  call void @llvm.dbg.label(metadata !2205), !dbg !2419
  br i1 %128, label %263, label %638, !dbg !2420

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2418
  call void @llvm.dbg.label(metadata !2207), !dbg !2422
  br i1 %118, label %510, label %467, !dbg !2423

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2424

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2425, !tbaa !658
  %268 = icmp eq i8 %267, 0, !dbg !2427
  br i1 %268, label %269, label %456, !dbg !2428

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2429
  br i1 %270, label %271, label %456, !dbg !2431

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2179, metadata !DIExpression()), !dbg !2308
  br label %272, !dbg !2432

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2179, metadata !DIExpression()), !dbg !2308
  br i1 %126, label %274, label %456, !dbg !2433

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2435

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 1, metadata !2179, metadata !DIExpression()), !dbg !2308
  br i1 %126, label %276, label %456, !dbg !2436

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2437

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2440
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2442
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2442
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %282, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %281, metadata !2160, metadata !DIExpression()), !dbg !2211
  %283 = icmp ult i64 %134, %282, !dbg !2443
  br i1 %283, label %284, label %286, !dbg !2446

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2443
  store i8 39, i8* %285, align 1, !dbg !2443, !tbaa !658
  br label %286, !dbg !2443

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %287, metadata !2159, metadata !DIExpression()), !dbg !2211
  %288 = icmp ult i64 %287, %282, !dbg !2447
  br i1 %288, label %289, label %291, !dbg !2450

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2447
  store i8 92, i8* %290, align 1, !dbg !2447, !tbaa !658
  br label %291, !dbg !2447

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %292, metadata !2159, metadata !DIExpression()), !dbg !2211
  %293 = icmp ult i64 %292, %282, !dbg !2451
  br i1 %293, label %294, label %296, !dbg !2454

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2451
  store i8 39, i8* %295, align 1, !dbg !2451, !tbaa !658
  br label %296, !dbg !2451

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %297, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2211
  br label %456, !dbg !2455

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2456

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2181, metadata !DIExpression()), !dbg !2457
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !2458
  %301 = load i16*, i16** %300, align 8, !dbg !2458, !tbaa !555
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2458
  %304 = load i16, i16* %303, align 2, !dbg !2458, !tbaa !683
  %305 = and i16 %304, 16384, !dbg !2458
  %306 = icmp ne i16 %305, 0, !dbg !2460
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %349, metadata !2181, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %312, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i1 %350, metadata !2179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2308
  br label %352, !dbg !2461

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2462
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2185, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2237, metadata !DIExpression()) #34, !dbg !2464
  call void @llvm.dbg.value(metadata i8* %32, metadata !2245, metadata !DIExpression()) #34, !dbg !2466
  call void @llvm.dbg.value(metadata i32 0, metadata !2248, metadata !DIExpression()) #34, !dbg !2466
  call void @llvm.dbg.value(metadata i64 8, metadata !2249, metadata !DIExpression()) #34, !dbg !2466
  store i64 0, i64* %14, align 8, !dbg !2468
  call void @llvm.dbg.value(metadata i64 0, metadata !2181, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 1, metadata !2184, metadata !DIExpression()), !dbg !2457
  %308 = icmp eq i64 %164, -1, !dbg !2469
  br i1 %308, label %309, label %311, !dbg !2471

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %310, metadata !2152, metadata !DIExpression()), !dbg !2211
  br label %311, !dbg !2473

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2308
  call void @llvm.dbg.value(metadata i64 %312, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2474
  %313 = sub i64 %312, %139, !dbg !2475
  call void @llvm.dbg.value(metadata i32* %16, metadata !2188, metadata !DIExpression(DW_OP_deref)), !dbg !2476
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %314, metadata !2192, metadata !DIExpression()), !dbg !2476
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2478

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2181, metadata !DIExpression()), !dbg !2457
  %316 = icmp ugt i64 %312, %139, !dbg !2479
  br i1 %316, label %319, label %317, !dbg !2481

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 0, metadata !2181, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %349, metadata !2181, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %312, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i1 %350, metadata !2179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2308
  br label %352, !dbg !2461

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2184, metadata !DIExpression()), !dbg !2457
  br label %346, !dbg !2484

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2181, metadata !DIExpression()), !dbg !2457
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2486
  %323 = load i8, i8* %322, align 1, !dbg !2486, !tbaa !658
  %324 = icmp eq i8 %323, 0, !dbg !2481
  br i1 %324, label %348, label %325, !dbg !2487

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %326, metadata !2181, metadata !DIExpression()), !dbg !2457
  %327 = add i64 %326, %139, !dbg !2489
  %328 = icmp eq i64 %326, %313, !dbg !2479
  br i1 %328, label %348, label %319, !dbg !2481, !llvm.loop !2490

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2491
  call void @llvm.dbg.value(metadata i64 1, metadata !2193, metadata !DIExpression()), !dbg !2492
  br i1 %331, label %332, label %340, !dbg !2491

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2193, metadata !DIExpression()), !dbg !2492
  %334 = add i64 %333, %139, !dbg !2493
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2495
  %336 = load i8, i8* %335, align 1, !dbg !2495, !tbaa !658
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2496

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %338, metadata !2193, metadata !DIExpression()), !dbg !2492
  %339 = icmp eq i64 %338, %314, !dbg !2498
  br i1 %339, label %340, label %332, !dbg !2499, !llvm.loop !2500

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2502, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %341, metadata !2188, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 %341, metadata !2504, metadata !DIExpression()) #34, !dbg !2507
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !2509
  %343 = icmp ne i32 %342, 0, !dbg !2510
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %314, metadata !2181, metadata !DIExpression()), !dbg !2457
  br label %348, !dbg !2511

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 0, metadata !2181, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2483
  call void @llvm.dbg.label(metadata !2210), !dbg !2512
  %345 = select i1 %118, i32 4, i32 2, !dbg !2513
  br label %643, !dbg !2513

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 0, metadata !2181, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %349, metadata !2181, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %312, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i1 %350, metadata !2179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2308
  br label %352, !dbg !2461

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 0, metadata !2181, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %349, metadata !2181, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %312, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i1 %350, metadata !2179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2308
  %351 = icmp ugt i64 %349, 1, !dbg !2515
  br i1 %351, label %357, label %352, !dbg !2461

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2516
  br i1 %356, label %456, label %357, !dbg !2516

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %361, metadata !2201, metadata !DIExpression()), !dbg !2518
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2519

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2211
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2300
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2520
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2308
  call void @llvm.dbg.value(metadata i8 %369, metadata !2180, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 %368, metadata !2178, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %366, metadata !2173, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %364, metadata !2159, metadata !DIExpression()), !dbg !2211
  br i1 %362, label %414, label %370, !dbg !2521

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2526

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2178, metadata !DIExpression()), !dbg !2308
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2529
  br i1 %372, label %389, label %373, !dbg !2529

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2531
  br i1 %374, label %375, label %377, !dbg !2535

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2531
  store i8 39, i8* %376, align 1, !dbg !2531, !tbaa !658
  br label %377, !dbg !2531

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %378, metadata !2159, metadata !DIExpression()), !dbg !2211
  %379 = icmp ult i64 %378, %140, !dbg !2536
  br i1 %379, label %380, label %382, !dbg !2539

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2536
  store i8 36, i8* %381, align 1, !dbg !2536, !tbaa !658
  br label %382, !dbg !2536

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %383, metadata !2159, metadata !DIExpression()), !dbg !2211
  %384 = icmp ult i64 %383, %140, !dbg !2540
  br i1 %384, label %385, label %387, !dbg !2543

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2540
  store i8 39, i8* %386, align 1, !dbg !2540, !tbaa !658
  br label %387, !dbg !2540

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2543
  call void @llvm.dbg.value(metadata i64 %388, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 1, metadata !2167, metadata !DIExpression()), !dbg !2211
  br label %389, !dbg !2544

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2211
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %390, metadata !2159, metadata !DIExpression()), !dbg !2211
  %392 = icmp ult i64 %390, %140, !dbg !2545
  br i1 %392, label %393, label %395, !dbg !2548

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2545
  store i8 92, i8* %394, align 1, !dbg !2545, !tbaa !658
  br label %395, !dbg !2545

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %396, metadata !2159, metadata !DIExpression()), !dbg !2211
  %397 = icmp ult i64 %396, %140, !dbg !2549
  br i1 %397, label %398, label %402, !dbg !2552

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2549
  %400 = or i8 %399, 48, !dbg !2549
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2549
  store i8 %400, i8* %401, align 1, !dbg !2549, !tbaa !658
  br label %402, !dbg !2549

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %403, metadata !2159, metadata !DIExpression()), !dbg !2211
  %404 = icmp ult i64 %403, %140, !dbg !2553
  br i1 %404, label %405, label %410, !dbg !2556

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2553
  %407 = and i8 %406, 7, !dbg !2553
  %408 = or i8 %407, 48, !dbg !2553
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2553
  store i8 %408, i8* %409, align 1, !dbg !2553, !tbaa !658
  br label %410, !dbg !2553

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %411, metadata !2159, metadata !DIExpression()), !dbg !2211
  %412 = and i8 %369, 7, !dbg !2557
  %413 = or i8 %412, 48, !dbg !2558
  call void @llvm.dbg.value(metadata i8 %413, metadata !2180, metadata !DIExpression()), !dbg !2308
  br label %421, !dbg !2559

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2560

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2561
  br i1 %416, label %417, label %419, !dbg !2566

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2561
  store i8 92, i8* %418, align 1, !dbg !2561, !tbaa !658
  br label %419, !dbg !2561

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %420, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 0, metadata !2175, metadata !DIExpression()), !dbg !2308
  br label %421, !dbg !2567

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2211
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2308
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2308
  call void @llvm.dbg.value(metadata i8 %426, metadata !2180, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 %425, metadata !2178, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %422, metadata !2159, metadata !DIExpression()), !dbg !2211
  %427 = add i64 %366, 1, !dbg !2568
  %428 = icmp ugt i64 %361, %427, !dbg !2570
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2571

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2572
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2572
  br i1 %432, label %433, label %444, !dbg !2572

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2575
  br i1 %434, label %435, label %437, !dbg !2579

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2575
  store i8 39, i8* %436, align 1, !dbg !2575, !tbaa !658
  br label %437, !dbg !2575

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %438, metadata !2159, metadata !DIExpression()), !dbg !2211
  %439 = icmp ult i64 %438, %140, !dbg !2580
  br i1 %439, label %440, label %442, !dbg !2583

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2580
  store i8 39, i8* %441, align 1, !dbg !2580, !tbaa !658
  br label %442, !dbg !2580

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %443, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2211
  br label %444, !dbg !2584

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2585
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %445, metadata !2159, metadata !DIExpression()), !dbg !2211
  %447 = icmp ult i64 %445, %140, !dbg !2586
  br i1 %447, label %448, label %450, !dbg !2589

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2586
  store i8 %426, i8* %449, align 1, !dbg !2586, !tbaa !658
  br label %450, !dbg !2586

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %451, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %427, metadata !2173, metadata !DIExpression()), !dbg !2300
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2590
  %453 = load i8, i8* %452, align 1, !dbg !2590, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %453, metadata !2180, metadata !DIExpression()), !dbg !2308
  br label %363, !dbg !2591, !llvm.loop !2592

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2180, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i1 %358, metadata !2179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2308
  call void @llvm.dbg.value(metadata i8 %425, metadata !2178, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %366, metadata !2173, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %422, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %360, metadata !2152, metadata !DIExpression()), !dbg !2211
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2595
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2211
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2215
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2300
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2308
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 %465, metadata !2180, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2179, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %462, metadata !2173, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %459, metadata !2160, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %458, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %457, metadata !2152, metadata !DIExpression()), !dbg !2211
  br i1 %121, label %478, label %467, !dbg !2596

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
  br i1 %131, label %479, label %499, !dbg !2598

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2599

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
  %490 = lshr i8 %481, 5, !dbg !2600
  %491 = zext i8 %490 to i64, !dbg !2600
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2601
  %493 = load i32, i32* %492, align 4, !dbg !2601, !tbaa !649
  %494 = and i8 %481, 31, !dbg !2602
  %495 = zext i8 %494 to i32, !dbg !2602
  %496 = shl nuw i32 1, %495, !dbg !2603
  %497 = and i32 %493, %496, !dbg !2603
  %498 = icmp eq i32 %497, 0, !dbg !2603
  br i1 %498, label %499, label %510, !dbg !2604

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
  br i1 %165, label %510, label %546, !dbg !2605

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2595
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2211
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2215
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2606
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2308
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 %518, metadata !2180, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2179, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %516, metadata !2173, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %513, metadata !2160, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %512, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %511, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.label(metadata !2208), !dbg !2607
  br i1 %119, label %638, label %520, !dbg !2608

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2178, metadata !DIExpression()), !dbg !2308
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2610
  br i1 %521, label %538, label %522, !dbg !2610

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2612
  br i1 %523, label %524, label %526, !dbg !2616

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2612
  store i8 39, i8* %525, align 1, !dbg !2612, !tbaa !658
  br label %526, !dbg !2612

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %527, metadata !2159, metadata !DIExpression()), !dbg !2211
  %528 = icmp ult i64 %527, %519, !dbg !2617
  br i1 %528, label %529, label %531, !dbg !2620

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2617
  store i8 36, i8* %530, align 1, !dbg !2617, !tbaa !658
  br label %531, !dbg !2617

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %532, metadata !2159, metadata !DIExpression()), !dbg !2211
  %533 = icmp ult i64 %532, %519, !dbg !2621
  br i1 %533, label %534, label %536, !dbg !2624

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2621
  store i8 39, i8* %535, align 1, !dbg !2621, !tbaa !658
  br label %536, !dbg !2621

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %537, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 1, metadata !2167, metadata !DIExpression()), !dbg !2211
  br label %538, !dbg !2625

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2308
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %539, metadata !2159, metadata !DIExpression()), !dbg !2211
  %541 = icmp ult i64 %539, %519, !dbg !2626
  br i1 %541, label %542, label %544, !dbg !2629

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2626
  store i8 92, i8* %543, align 1, !dbg !2626, !tbaa !658
  br label %544, !dbg !2626

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %556, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 %555, metadata !2180, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2179, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %552, metadata !2173, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %549, metadata !2160, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %548, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %547, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.label(metadata !2209), !dbg !2630
  br label %570, !dbg !2631

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2595
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2211
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2215
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2606
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2634
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 %555, metadata !2180, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2179, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %552, metadata !2173, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %549, metadata !2160, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %548, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %547, metadata !2152, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.label(metadata !2209), !dbg !2630
  %557 = xor i1 %551, true, !dbg !2631
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2631
  br i1 %558, label %570, label %559, !dbg !2631

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2635
  br i1 %560, label %561, label %563, !dbg !2639

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2635
  store i8 39, i8* %562, align 1, !dbg !2635, !tbaa !658
  br label %563, !dbg !2635

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %564, metadata !2159, metadata !DIExpression()), !dbg !2211
  %565 = icmp ult i64 %564, %556, !dbg !2640
  br i1 %565, label %566, label %568, !dbg !2643

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2640
  store i8 39, i8* %567, align 1, !dbg !2640, !tbaa !658
  br label %568, !dbg !2640

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %569, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2211
  br label %570, !dbg !2644

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2308
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %578, metadata !2159, metadata !DIExpression()), !dbg !2211
  %580 = icmp ult i64 %578, %571, !dbg !2645
  br i1 %580, label %581, label %583, !dbg !2648

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2645
  store i8 %572, i8* %582, align 1, !dbg !2645, !tbaa !658
  br label %583, !dbg !2645

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %584, metadata !2159, metadata !DIExpression()), !dbg !2211
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2649
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2211
  br label %586, !dbg !2650

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2595
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2211
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2215
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2606
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %593, metadata !2173, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 poison, metadata !2167, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %589, metadata !2160, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %588, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %587, metadata !2152, metadata !DIExpression()), !dbg !2211
  %595 = add i64 %593, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %595, metadata !2173, metadata !DIExpression()), !dbg !2300
  br label %132, !dbg !2652, !llvm.loop !2653

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2150, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 undef, metadata !2160, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 undef, metadata !2159, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 undef, metadata !2152, metadata !DIExpression()), !dbg !2211
  %597 = icmp eq i64 %134, 0, !dbg !2655
  %598 = and i1 %126, %597, !dbg !2657
  %599 = and i1 %598, %119, !dbg !2657
  br i1 %599, label %638, label %600, !dbg !2657

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2658
  %602 = or i1 %119, %601, !dbg !2658
  %603 = xor i1 %136, true, !dbg !2658
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2658
  br i1 %604, label %612, label %605, !dbg !2658

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2660

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2662
  br label %653, !dbg !2664

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2665
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2667
  br i1 %611, label %36, label %612, !dbg !2667

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2668
  %615 = or i1 %614, %613, !dbg !2670
  br i1 %615, label %631, label %616, !dbg !2670

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2161, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %134, metadata !2159, metadata !DIExpression()), !dbg !2211
  %617 = load i8, i8* %116, align 1, !dbg !2671, !tbaa !658
  %618 = icmp eq i8 %617, 0, !dbg !2674
  br i1 %618, label %631, label %619, !dbg !2674

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2161, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i64 %622, metadata !2159, metadata !DIExpression()), !dbg !2211
  %623 = icmp ult i64 %622, %140, !dbg !2675
  br i1 %623, label %624, label %626, !dbg !2678

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2675
  store i8 %620, i8* %625, align 1, !dbg !2675, !tbaa !658
  br label %626, !dbg !2675

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %627, metadata !2159, metadata !DIExpression()), !dbg !2211
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2679
  call void @llvm.dbg.value(metadata i8* %628, metadata !2161, metadata !DIExpression()), !dbg !2211
  %629 = load i8, i8* %628, align 1, !dbg !2671, !tbaa !658
  %630 = icmp eq i8 %629, 0, !dbg !2674
  br i1 %630, label %631, label %619, !dbg !2674, !llvm.loop !2680

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2287
  call void @llvm.dbg.value(metadata i64 %632, metadata !2159, metadata !DIExpression()), !dbg !2211
  %633 = icmp ult i64 %632, %140, !dbg !2682
  br i1 %633, label %634, label %653, !dbg !2684

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2685
  store i8 0, i8* %635, align 1, !dbg !2686, !tbaa !658
  br label %653, !dbg !2685

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2210), !dbg !2512
  %637 = icmp eq i32 %112, 2, !dbg !2687
  br i1 %637, label %643, label %647, !dbg !2513

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2210), !dbg !2512
  %641 = icmp eq i32 %112, 2, !dbg !2687
  %642 = select i1 %118, i32 4, i32 2, !dbg !2513
  br i1 %641, label %643, label %647, !dbg !2513

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2513

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2153, metadata !DIExpression()), !dbg !2211
  %651 = and i32 %5, -3, !dbg !2688
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2689
  br label %653, !dbg !2690

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2691
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2692 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2693 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %1, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2699, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()) #34, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %1, metadata !2706, metadata !DIExpression()) #34, !dbg !2714
  call void @llvm.dbg.value(metadata i64* null, metadata !2707, metadata !DIExpression()) #34, !dbg !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2708, metadata !DIExpression()) #34, !dbg !2714
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2716
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2709, metadata !DIExpression()) #34, !dbg !2714
  %6 = tail call i32* @__errno_location() #37, !dbg !2717
  %7 = load i32, i32* %6, align 4, !dbg !2717, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %7, metadata !2710, metadata !DIExpression()) #34, !dbg !2714
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2718
  %9 = load i32, i32* %8, align 4, !dbg !2718, !tbaa !2093
  %10 = or i32 %9, 1, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %10, metadata !2711, metadata !DIExpression()) #34, !dbg !2714
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2720
  %12 = load i32, i32* %11, align 8, !dbg !2720, !tbaa !2042
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2721
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2722
  %15 = load i8*, i8** %14, align 8, !dbg !2722, !tbaa !2115
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2723
  %17 = load i8*, i8** %16, align 8, !dbg !2723, !tbaa !2118
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !2724
  %19 = add i64 %18, 1, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %19, metadata !2712, metadata !DIExpression()) #34, !dbg !2714
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #41, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %20, metadata !2713, metadata !DIExpression()) #34, !dbg !2714
  %21 = load i32, i32* %11, align 8, !dbg !2727, !tbaa !2042
  %22 = load i8*, i8** %14, align 8, !dbg !2728, !tbaa !2115
  %23 = load i8*, i8** %16, align 8, !dbg !2729, !tbaa !2118
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !2730
  store i32 %7, i32* %6, align 4, !dbg !2731, !tbaa !649
  ret i8* %20, !dbg !2732
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2702 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %1, metadata !2706, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64* %2, metadata !2707, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2708, metadata !DIExpression()), !dbg !2733
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2734
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2709, metadata !DIExpression()), !dbg !2733
  %7 = tail call i32* @__errno_location() #37, !dbg !2735
  %8 = load i32, i32* %7, align 4, !dbg !2735, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %8, metadata !2710, metadata !DIExpression()), !dbg !2733
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2736
  %10 = load i32, i32* %9, align 4, !dbg !2736, !tbaa !2093
  %11 = icmp eq i64* %2, null, !dbg !2737
  %12 = zext i1 %11 to i32, !dbg !2737
  %13 = or i32 %10, %12, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %13, metadata !2711, metadata !DIExpression()), !dbg !2733
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2739
  %15 = load i32, i32* %14, align 8, !dbg !2739, !tbaa !2042
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2740
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2741
  %18 = load i8*, i8** %17, align 8, !dbg !2741, !tbaa !2115
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2742
  %20 = load i8*, i8** %19, align 8, !dbg !2742, !tbaa !2118
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2743
  %22 = add i64 %21, 1, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %22, metadata !2712, metadata !DIExpression()), !dbg !2733
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #41, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %23, metadata !2713, metadata !DIExpression()), !dbg !2733
  %24 = load i32, i32* %14, align 8, !dbg !2746, !tbaa !2042
  %25 = load i8*, i8** %17, align 8, !dbg !2747, !tbaa !2115
  %26 = load i8*, i8** %19, align 8, !dbg !2748, !tbaa !2118
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2749
  store i32 %8, i32* %7, align 4, !dbg !2750, !tbaa !649
  br i1 %11, label %29, label %28, !dbg !2751

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2752, !tbaa !2754
  br label %29, !dbg !2755

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2756
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2757 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2762, !tbaa !555
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2759, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i32 1, metadata !2760, metadata !DIExpression()), !dbg !2764
  %2 = load i32, i32* @nslots, align 4, !tbaa !649
  call void @llvm.dbg.value(metadata i32 1, metadata !2760, metadata !DIExpression()), !dbg !2764
  %3 = icmp sgt i32 %2, 1, !dbg !2765
  br i1 %3, label %4, label %6, !dbg !2767

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2765
  br label %10, !dbg !2767

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2768
  %8 = load i8*, i8** %7, align 8, !dbg !2768, !tbaa !2770
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2772
  br i1 %9, label %17, label %16, !dbg !2773

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2760, metadata !DIExpression()), !dbg !2764
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2774
  %13 = load i8*, i8** %12, align 8, !dbg !2774, !tbaa !2770
  tail call void @free(i8* noundef %13) #34, !dbg !2775
  %14 = add nuw nsw i64 %11, 1, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %14, metadata !2760, metadata !DIExpression()), !dbg !2764
  %15 = icmp eq i64 %14, %5, !dbg !2765
  br i1 %15, label %6, label %10, !dbg !2767, !llvm.loop !2777

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !2779
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2781, !tbaa !2782
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2783, !tbaa !2770
  br label %17, !dbg !2784

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2785
  br i1 %18, label %21, label %19, !dbg !2787

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2788
  tail call void @free(i8* noundef %20) #34, !dbg !2790
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2791, !tbaa !555
  br label %21, !dbg !2792

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2793, !tbaa !649
  ret void, !dbg !2794
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2795 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2797, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %1, metadata !2798, metadata !DIExpression()), !dbg !2799
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2800
  ret i8* %3, !dbg !2801
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2802 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2806, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8* %1, metadata !2807, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i64 %2, metadata !2808, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2809, metadata !DIExpression()), !dbg !2822
  %6 = tail call i32* @__errno_location() #37, !dbg !2823
  %7 = load i32, i32* %6, align 4, !dbg !2823, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %7, metadata !2810, metadata !DIExpression()), !dbg !2822
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2824, !tbaa !555
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2811, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2812, metadata !DIExpression()), !dbg !2822
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2825
  br i1 %9, label %10, label %11, !dbg !2825

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2827
  unreachable, !dbg !2827

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2828, !tbaa !649
  %13 = icmp sgt i32 %12, %0, !dbg !2829
  br i1 %13, label %36, label %14, !dbg !2830

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2831
  call void @llvm.dbg.value(metadata i1 %15, metadata !2813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2832
  %16 = bitcast i64* %5 to i8*, !dbg !2833
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2833
  %17 = sext i32 %12 to i64, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %17, metadata !2816, metadata !DIExpression()), !dbg !2832
  store i64 %17, i64* %5, align 8, !dbg !2835, !tbaa !2754
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2836
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2836
  %20 = add nuw nsw i32 %0, 1, !dbg !2837
  %21 = sub i32 %20, %12, !dbg !2838
  %22 = sext i32 %21 to i64, !dbg !2839
  call void @llvm.dbg.value(metadata i64* %5, metadata !2816, metadata !DIExpression(DW_OP_deref)), !dbg !2832
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !2840
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2840
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2811, metadata !DIExpression()), !dbg !2822
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2841, !tbaa !555
  br i1 %15, label %25, label %26, !dbg !2842

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2843, !tbaa.struct !2845
  br label %26, !dbg !2846

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2847, !tbaa !649
  %28 = sext i32 %27 to i64, !dbg !2848
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2848
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2849
  %31 = load i64, i64* %5, align 8, !dbg !2850, !tbaa !2754
  call void @llvm.dbg.value(metadata i64 %31, metadata !2816, metadata !DIExpression()), !dbg !2832
  %32 = sub nsw i64 %31, %28, !dbg !2851
  %33 = shl i64 %32, 4, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %30, metadata !2245, metadata !DIExpression()) #34, !dbg !2853
  call void @llvm.dbg.value(metadata i32 0, metadata !2248, metadata !DIExpression()) #34, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %33, metadata !2249, metadata !DIExpression()) #34, !dbg !2853
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !2855
  %34 = load i64, i64* %5, align 8, !dbg !2856, !tbaa !2754
  call void @llvm.dbg.value(metadata i64 %34, metadata !2816, metadata !DIExpression()), !dbg !2832
  %35 = trunc i64 %34 to i32, !dbg !2856
  store i32 %35, i32* @nslots, align 4, !dbg !2857, !tbaa !649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2858
  br label %36, !dbg !2859

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2822
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2811, metadata !DIExpression()), !dbg !2822
  %38 = zext i32 %0 to i64, !dbg !2860
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2861
  %40 = load i64, i64* %39, align 8, !dbg !2861, !tbaa !2782
  call void @llvm.dbg.value(metadata i64 %40, metadata !2817, metadata !DIExpression()), !dbg !2862
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2863
  %42 = load i8*, i8** %41, align 8, !dbg !2863, !tbaa !2770
  call void @llvm.dbg.value(metadata i8* %42, metadata !2819, metadata !DIExpression()), !dbg !2862
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2864
  %44 = load i32, i32* %43, align 4, !dbg !2864, !tbaa !2093
  %45 = or i32 %44, 1, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %45, metadata !2820, metadata !DIExpression()), !dbg !2862
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2866
  %47 = load i32, i32* %46, align 8, !dbg !2866, !tbaa !2042
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2867
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2868
  %50 = load i8*, i8** %49, align 8, !dbg !2868, !tbaa !2115
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2869
  %52 = load i8*, i8** %51, align 8, !dbg !2869, !tbaa !2118
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %53, metadata !2821, metadata !DIExpression()), !dbg !2862
  %54 = icmp ugt i64 %40, %53, !dbg !2871
  br i1 %54, label %65, label %55, !dbg !2873

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2874
  call void @llvm.dbg.value(metadata i64 %56, metadata !2817, metadata !DIExpression()), !dbg !2862
  store i64 %56, i64* %39, align 8, !dbg !2876, !tbaa !2782
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2877
  br i1 %57, label %59, label %58, !dbg !2879

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !2880
  br label %59, !dbg !2880

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #41, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %60, metadata !2819, metadata !DIExpression()), !dbg !2862
  store i8* %60, i8** %41, align 8, !dbg !2882, !tbaa !2770
  %61 = load i32, i32* %46, align 8, !dbg !2883, !tbaa !2042
  %62 = load i8*, i8** %49, align 8, !dbg !2884, !tbaa !2115
  %63 = load i8*, i8** %51, align 8, !dbg !2885, !tbaa !2118
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2886
  br label %65, !dbg !2887

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2862
  call void @llvm.dbg.value(metadata i8* %66, metadata !2819, metadata !DIExpression()), !dbg !2862
  store i32 %7, i32* %6, align 4, !dbg !2888, !tbaa !649
  ret i8* %66, !dbg !2889
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2890 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2894, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8* %1, metadata !2895, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %2, metadata !2896, metadata !DIExpression()), !dbg !2897
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2898
  ret i8* %4, !dbg !2899
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2900 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 0, metadata !2797, metadata !DIExpression()) #34, !dbg !2904
  call void @llvm.dbg.value(metadata i8* %0, metadata !2798, metadata !DIExpression()) #34, !dbg !2904
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2906
  ret i8* %2, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2912, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %1, metadata !2913, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 0, metadata !2894, metadata !DIExpression()) #34, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %0, metadata !2895, metadata !DIExpression()) #34, !dbg !2915
  call void @llvm.dbg.value(metadata i64 %1, metadata !2896, metadata !DIExpression()) #34, !dbg !2915
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2917
  ret i8* %3, !dbg !2918
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2919 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2923, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 %1, metadata !2924, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8* %2, metadata !2925, metadata !DIExpression()), !dbg !2927
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2928
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2928
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2926, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2930), !dbg !2933
  call void @llvm.dbg.value(metadata i32 %1, metadata !2934, metadata !DIExpression()) #34, !dbg !2940
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2939, metadata !DIExpression()) #34, !dbg !2942
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2942, !alias.scope !2930
  %6 = icmp eq i32 %1, 10, !dbg !2943
  br i1 %6, label %7, label %8, !dbg !2945

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2946, !noalias !2930
  unreachable, !dbg !2946

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2947
  store i32 %1, i32* %9, align 8, !dbg !2948, !tbaa !2042, !alias.scope !2930
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2949
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2950
  ret i8* %10, !dbg !2951
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2952 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2956, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %1, metadata !2957, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %2, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %3, metadata !2959, metadata !DIExpression()), !dbg !2961
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2962
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2962
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2960, metadata !DIExpression()), !dbg !2963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2964), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %1, metadata !2934, metadata !DIExpression()) #34, !dbg !2968
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2939, metadata !DIExpression()) #34, !dbg !2970
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !2970, !alias.scope !2964
  %7 = icmp eq i32 %1, 10, !dbg !2971
  br i1 %7, label %8, label %9, !dbg !2972

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2973, !noalias !2964
  unreachable, !dbg !2973

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2974
  store i32 %1, i32* %10, align 8, !dbg !2975, !tbaa !2042, !alias.scope !2964
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2976
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2977
  ret i8* %11, !dbg !2978
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2979 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2983, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* %1, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 0, metadata !2923, metadata !DIExpression()) #34, !dbg !2986
  call void @llvm.dbg.value(metadata i32 %0, metadata !2924, metadata !DIExpression()) #34, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %1, metadata !2925, metadata !DIExpression()) #34, !dbg !2986
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2988
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2988
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2926, metadata !DIExpression()) #34, !dbg !2989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2990) #34, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %0, metadata !2934, metadata !DIExpression()) #34, !dbg !2994
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2939, metadata !DIExpression()) #34, !dbg !2996
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !2996, !alias.scope !2990
  %5 = icmp eq i32 %0, 10, !dbg !2997
  br i1 %5, label %6, label %7, !dbg !2998

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !2999, !noalias !2990
  unreachable, !dbg !2999

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3000
  store i32 %0, i32* %8, align 8, !dbg !3001, !tbaa !2042, !alias.scope !2990
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3002
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3003
  ret i8* %9, !dbg !3004
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3005 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %1, metadata !3010, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %2, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 0, metadata !2956, metadata !DIExpression()) #34, !dbg !3013
  call void @llvm.dbg.value(metadata i32 %0, metadata !2957, metadata !DIExpression()) #34, !dbg !3013
  call void @llvm.dbg.value(metadata i8* %1, metadata !2958, metadata !DIExpression()) #34, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %2, metadata !2959, metadata !DIExpression()) #34, !dbg !3013
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3015
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3015
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2960, metadata !DIExpression()) #34, !dbg !3016
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3017) #34, !dbg !3020
  call void @llvm.dbg.value(metadata i32 %0, metadata !2934, metadata !DIExpression()) #34, !dbg !3021
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2939, metadata !DIExpression()) #34, !dbg !3023
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3023, !alias.scope !3017
  %6 = icmp eq i32 %0, 10, !dbg !3024
  br i1 %6, label %7, label %8, !dbg !3025

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3026, !noalias !3017
  unreachable, !dbg !3026

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3027
  store i32 %0, i32* %9, align 8, !dbg !3028, !tbaa !2042, !alias.scope !3017
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3029
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3030
  ret i8* %10, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3032 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i8 %2, metadata !3038, metadata !DIExpression()), !dbg !3040
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3041
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3041
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3043, !tbaa.struct !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2060, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 %2, metadata !2061, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 1, metadata !2062, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 %2, metadata !2063, metadata !DIExpression()), !dbg !3045
  %6 = lshr i8 %2, 5, !dbg !3047
  %7 = zext i8 %6 to i64, !dbg !3047
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3048
  call void @llvm.dbg.value(metadata i32* %8, metadata !2064, metadata !DIExpression()), !dbg !3045
  %9 = and i8 %2, 31, !dbg !3049
  %10 = zext i8 %9 to i32, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %10, metadata !2066, metadata !DIExpression()), !dbg !3045
  %11 = load i32, i32* %8, align 4, !dbg !3050, !tbaa !649
  %12 = lshr i32 %11, %10, !dbg !3051
  %13 = and i32 %12, 1, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %13, metadata !2067, metadata !DIExpression()), !dbg !3045
  %14 = xor i32 %13, 1, !dbg !3053
  %15 = shl i32 %14, %10, !dbg !3054
  %16 = xor i32 %15, %11, !dbg !3055
  store i32 %16, i32* %8, align 4, !dbg !3055, !tbaa !649
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3057
  ret i8* %17, !dbg !3058
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3059 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8 %1, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()) #34, !dbg !3066
  call void @llvm.dbg.value(metadata i64 -1, metadata !3037, metadata !DIExpression()) #34, !dbg !3066
  call void @llvm.dbg.value(metadata i8 %1, metadata !3038, metadata !DIExpression()) #34, !dbg !3066
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3068
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3068
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3039, metadata !DIExpression()) #34, !dbg !3069
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3070, !tbaa.struct !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2060, metadata !DIExpression()) #34, !dbg !3071
  call void @llvm.dbg.value(metadata i8 %1, metadata !2061, metadata !DIExpression()) #34, !dbg !3071
  call void @llvm.dbg.value(metadata i32 1, metadata !2062, metadata !DIExpression()) #34, !dbg !3071
  call void @llvm.dbg.value(metadata i8 %1, metadata !2063, metadata !DIExpression()) #34, !dbg !3071
  %5 = lshr i8 %1, 5, !dbg !3073
  %6 = zext i8 %5 to i64, !dbg !3073
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3074
  call void @llvm.dbg.value(metadata i32* %7, metadata !2064, metadata !DIExpression()) #34, !dbg !3071
  %8 = and i8 %1, 31, !dbg !3075
  %9 = zext i8 %8 to i32, !dbg !3075
  call void @llvm.dbg.value(metadata i32 %9, metadata !2066, metadata !DIExpression()) #34, !dbg !3071
  %10 = load i32, i32* %7, align 4, !dbg !3076, !tbaa !649
  %11 = lshr i32 %10, %9, !dbg !3077
  %12 = and i32 %11, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %12, metadata !2067, metadata !DIExpression()) #34, !dbg !3071
  %13 = xor i32 %12, 1, !dbg !3079
  %14 = shl i32 %13, %9, !dbg !3080
  %15 = xor i32 %14, %10, !dbg !3081
  store i32 %15, i32* %7, align 4, !dbg !3081, !tbaa !649
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3082
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3083
  ret i8* %16, !dbg !3084
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3085 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8* %0, metadata !3063, metadata !DIExpression()) #34, !dbg !3089
  call void @llvm.dbg.value(metadata i8 58, metadata !3064, metadata !DIExpression()) #34, !dbg !3089
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()) #34, !dbg !3091
  call void @llvm.dbg.value(metadata i64 -1, metadata !3037, metadata !DIExpression()) #34, !dbg !3091
  call void @llvm.dbg.value(metadata i8 58, metadata !3038, metadata !DIExpression()) #34, !dbg !3091
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3093
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3093
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3039, metadata !DIExpression()) #34, !dbg !3094
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3095, !tbaa.struct !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2060, metadata !DIExpression()) #34, !dbg !3096
  call void @llvm.dbg.value(metadata i8 58, metadata !2061, metadata !DIExpression()) #34, !dbg !3096
  call void @llvm.dbg.value(metadata i32 1, metadata !2062, metadata !DIExpression()) #34, !dbg !3096
  call void @llvm.dbg.value(metadata i8 58, metadata !2063, metadata !DIExpression()) #34, !dbg !3096
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3098
  call void @llvm.dbg.value(metadata i32* %4, metadata !2064, metadata !DIExpression()) #34, !dbg !3096
  call void @llvm.dbg.value(metadata i32 26, metadata !2066, metadata !DIExpression()) #34, !dbg !3096
  %5 = load i32, i32* %4, align 4, !dbg !3099, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %5, metadata !2067, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3096
  %6 = or i32 %5, 67108864, !dbg !3100
  store i32 %6, i32* %4, align 4, !dbg !3100, !tbaa !649
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !3101
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3102
  ret i8* %7, !dbg !3103
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3104 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()) #34, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()) #34, !dbg !3109
  call void @llvm.dbg.value(metadata i8 58, metadata !3038, metadata !DIExpression()) #34, !dbg !3109
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3111
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3111
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3039, metadata !DIExpression()) #34, !dbg !3112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3113, !tbaa.struct !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2060, metadata !DIExpression()) #34, !dbg !3114
  call void @llvm.dbg.value(metadata i8 58, metadata !2061, metadata !DIExpression()) #34, !dbg !3114
  call void @llvm.dbg.value(metadata i32 1, metadata !2062, metadata !DIExpression()) #34, !dbg !3114
  call void @llvm.dbg.value(metadata i8 58, metadata !2063, metadata !DIExpression()) #34, !dbg !3114
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3116
  call void @llvm.dbg.value(metadata i32* %5, metadata !2064, metadata !DIExpression()) #34, !dbg !3114
  call void @llvm.dbg.value(metadata i32 26, metadata !2066, metadata !DIExpression()) #34, !dbg !3114
  %6 = load i32, i32* %5, align 4, !dbg !3117, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %6, metadata !2067, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3114
  %7 = or i32 %6, 67108864, !dbg !3118
  store i32 %7, i32* %5, align 4, !dbg !3118, !tbaa !649
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3119
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3120
  ret i8* %8, !dbg !3121
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3122 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %1, metadata !3125, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %2, metadata !3126, metadata !DIExpression()), !dbg !3128
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3129
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3129
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3127, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %1, metadata !2934, metadata !DIExpression()) #34, !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !2939, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3131
  %6 = icmp eq i32 %1, 10, !dbg !3133
  br i1 %6, label %7, label %8, !dbg !3134

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3135, !noalias !3136
  unreachable, !dbg !3135

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2939, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3131
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3139
  store i32 %1, i32* %9, align 8, !dbg !3139, !tbaa.struct !3044
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3139
  %11 = bitcast i32* %10 to i8*, !dbg !3139
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2060, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 58, metadata !2061, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 1, metadata !2062, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 58, metadata !2063, metadata !DIExpression()), !dbg !3140
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3142
  call void @llvm.dbg.value(metadata i32* %12, metadata !2064, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 26, metadata !2066, metadata !DIExpression()), !dbg !3140
  %13 = load i32, i32* %12, align 4, !dbg !3143, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %13, metadata !2067, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3140
  %14 = or i32 %13, 67108864, !dbg !3144
  store i32 %14, i32* %12, align 4, !dbg !3144, !tbaa !649
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3145
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3146
  ret i8* %15, !dbg !3147
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3148 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8* %1, metadata !3153, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8* %2, metadata !3154, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8* %3, metadata !3155, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()) #34, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %1, metadata !3162, metadata !DIExpression()) #34, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %2, metadata !3163, metadata !DIExpression()) #34, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %3, metadata !3164, metadata !DIExpression()) #34, !dbg !3167
  call void @llvm.dbg.value(metadata i64 -1, metadata !3165, metadata !DIExpression()) #34, !dbg !3167
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3169
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3169
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3166, metadata !DIExpression()) #34, !dbg !3170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3171, !tbaa.struct !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2100, metadata !DIExpression()) #34, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %1, metadata !2101, metadata !DIExpression()) #34, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %2, metadata !2102, metadata !DIExpression()) #34, !dbg !3172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2100, metadata !DIExpression()) #34, !dbg !3172
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3174
  store i32 10, i32* %7, align 8, !dbg !3175, !tbaa !2042
  %8 = icmp ne i8* %1, null, !dbg !3176
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3177
  br i1 %10, label %12, label %11, !dbg !3177

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3178
  unreachable, !dbg !3178

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3179
  store i8* %1, i8** %13, align 8, !dbg !3180, !tbaa !2115
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3181
  store i8* %2, i8** %14, align 8, !dbg !3182, !tbaa !2118
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3183
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3184
  ret i8* %15, !dbg !3185
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3158 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !3162, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %2, metadata !3163, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %3, metadata !3164, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %4, metadata !3165, metadata !DIExpression()), !dbg !3186
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3187
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3187
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3166, metadata !DIExpression()), !dbg !3188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3189, !tbaa.struct !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2100, metadata !DIExpression()) #34, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %1, metadata !2101, metadata !DIExpression()) #34, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %2, metadata !2102, metadata !DIExpression()) #34, !dbg !3190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2100, metadata !DIExpression()) #34, !dbg !3190
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3192
  store i32 10, i32* %8, align 8, !dbg !3193, !tbaa !2042
  %9 = icmp ne i8* %1, null, !dbg !3194
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3195
  br i1 %11, label %13, label %12, !dbg !3195

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !3196
  unreachable, !dbg !3196

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3197
  store i8* %1, i8** %14, align 8, !dbg !3198, !tbaa !2115
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3199
  store i8* %2, i8** %15, align 8, !dbg !3200, !tbaa !2118
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3201
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3202
  ret i8* %16, !dbg !3203
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3204 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !3209, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %2, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 0, metadata !3152, metadata !DIExpression()) #34, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %0, metadata !3153, metadata !DIExpression()) #34, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %1, metadata !3154, metadata !DIExpression()) #34, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %2, metadata !3155, metadata !DIExpression()) #34, !dbg !3212
  call void @llvm.dbg.value(metadata i32 0, metadata !3157, metadata !DIExpression()) #34, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %0, metadata !3162, metadata !DIExpression()) #34, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %1, metadata !3163, metadata !DIExpression()) #34, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %2, metadata !3164, metadata !DIExpression()) #34, !dbg !3214
  call void @llvm.dbg.value(metadata i64 -1, metadata !3165, metadata !DIExpression()) #34, !dbg !3214
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3216
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3216
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3166, metadata !DIExpression()) #34, !dbg !3217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3218, !tbaa.struct !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2100, metadata !DIExpression()) #34, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %0, metadata !2101, metadata !DIExpression()) #34, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %1, metadata !2102, metadata !DIExpression()) #34, !dbg !3219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2100, metadata !DIExpression()) #34, !dbg !3219
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3221
  store i32 10, i32* %6, align 8, !dbg !3222, !tbaa !2042
  %7 = icmp ne i8* %0, null, !dbg !3223
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3224
  br i1 %9, label %11, label %10, !dbg !3224

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !3225
  unreachable, !dbg !3225

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3226
  store i8* %0, i8** %12, align 8, !dbg !3227, !tbaa !2115
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3228
  store i8* %1, i8** %13, align 8, !dbg !3229, !tbaa !2118
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3230
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3231
  ret i8* %14, !dbg !3232
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3233 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3237, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8* %1, metadata !3238, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8* %2, metadata !3239, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %3, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 0, metadata !3157, metadata !DIExpression()) #34, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %0, metadata !3162, metadata !DIExpression()) #34, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %1, metadata !3163, metadata !DIExpression()) #34, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %2, metadata !3164, metadata !DIExpression()) #34, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %3, metadata !3165, metadata !DIExpression()) #34, !dbg !3242
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3244
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3244
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3166, metadata !DIExpression()) #34, !dbg !3245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3246, !tbaa.struct !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2100, metadata !DIExpression()) #34, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %0, metadata !2101, metadata !DIExpression()) #34, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %1, metadata !2102, metadata !DIExpression()) #34, !dbg !3247
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2100, metadata !DIExpression()) #34, !dbg !3247
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3249
  store i32 10, i32* %7, align 8, !dbg !3250, !tbaa !2042
  %8 = icmp ne i8* %0, null, !dbg !3251
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3252
  br i1 %10, label %12, label %11, !dbg !3252

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3253
  unreachable, !dbg !3253

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3254
  store i8* %0, i8** %13, align 8, !dbg !3255, !tbaa !2115
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3256
  store i8* %1, i8** %14, align 8, !dbg !3257, !tbaa !2118
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3258
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3259
  ret i8* %15, !dbg !3260
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3265, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8* %1, metadata !3266, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i64 %2, metadata !3267, metadata !DIExpression()), !dbg !3268
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3269
  ret i8* %4, !dbg !3270
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3271 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %1, metadata !3276, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 0, metadata !3265, metadata !DIExpression()) #34, !dbg !3278
  call void @llvm.dbg.value(metadata i8* %0, metadata !3266, metadata !DIExpression()) #34, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %1, metadata !3267, metadata !DIExpression()) #34, !dbg !3278
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3280
  ret i8* %3, !dbg !3281
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3286, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 %0, metadata !3265, metadata !DIExpression()) #34, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %1, metadata !3266, metadata !DIExpression()) #34, !dbg !3289
  call void @llvm.dbg.value(metadata i64 -1, metadata !3267, metadata !DIExpression()) #34, !dbg !3289
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3291
  ret i8* %3, !dbg !3292
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 0, metadata !3286, metadata !DIExpression()) #34, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %0, metadata !3287, metadata !DIExpression()) #34, !dbg !3299
  call void @llvm.dbg.value(metadata i32 0, metadata !3265, metadata !DIExpression()) #34, !dbg !3301
  call void @llvm.dbg.value(metadata i8* %0, metadata !3266, metadata !DIExpression()) #34, !dbg !3301
  call void @llvm.dbg.value(metadata i64 -1, metadata !3267, metadata !DIExpression()) #34, !dbg !3301
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3303
  ret i8* %2, !dbg !3304
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3305 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3344, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %1, metadata !3345, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %2, metadata !3346, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %3, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8** %4, metadata !3348, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 %5, metadata !3349, metadata !DIExpression()), !dbg !3350
  %7 = icmp eq i8* %1, null, !dbg !3351
  br i1 %7, label %10, label %8, !dbg !3353

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !3354
  br label %12, !dbg !3354

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.86, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !3355
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.88, i64 0, i64 0), i32 noundef 5) #34, !dbg !3356
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !3356
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.89, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3357
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.90, i64 0, i64 0), i32 noundef 5) #34, !dbg !3358
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.91, i64 0, i64 0)) #34, !dbg !3358
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.89, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3359
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
  ], !dbg !3360

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.92, i64 0, i64 0), i32 noundef 5) #34, !dbg !3361
  %21 = load i8*, i8** %4, align 8, !dbg !3361, !tbaa !555
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !3361
  br label %147, !dbg !3363

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.93, i64 0, i64 0), i32 noundef 5) #34, !dbg !3364
  %25 = load i8*, i8** %4, align 8, !dbg !3364, !tbaa !555
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3364
  %27 = load i8*, i8** %26, align 8, !dbg !3364, !tbaa !555
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !3364
  br label %147, !dbg !3365

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.94, i64 0, i64 0), i32 noundef 5) #34, !dbg !3366
  %31 = load i8*, i8** %4, align 8, !dbg !3366, !tbaa !555
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3366
  %33 = load i8*, i8** %32, align 8, !dbg !3366, !tbaa !555
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3366
  %35 = load i8*, i8** %34, align 8, !dbg !3366, !tbaa !555
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !3366
  br label %147, !dbg !3367

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.95, i64 0, i64 0), i32 noundef 5) #34, !dbg !3368
  %39 = load i8*, i8** %4, align 8, !dbg !3368, !tbaa !555
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3368
  %41 = load i8*, i8** %40, align 8, !dbg !3368, !tbaa !555
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3368
  %43 = load i8*, i8** %42, align 8, !dbg !3368, !tbaa !555
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3368
  %45 = load i8*, i8** %44, align 8, !dbg !3368, !tbaa !555
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !3368
  br label %147, !dbg !3369

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !3370
  %49 = load i8*, i8** %4, align 8, !dbg !3370, !tbaa !555
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3370
  %51 = load i8*, i8** %50, align 8, !dbg !3370, !tbaa !555
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3370
  %53 = load i8*, i8** %52, align 8, !dbg !3370, !tbaa !555
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3370
  %55 = load i8*, i8** %54, align 8, !dbg !3370, !tbaa !555
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3370
  %57 = load i8*, i8** %56, align 8, !dbg !3370, !tbaa !555
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !3370
  br label %147, !dbg !3371

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.97, i64 0, i64 0), i32 noundef 5) #34, !dbg !3372
  %61 = load i8*, i8** %4, align 8, !dbg !3372, !tbaa !555
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3372
  %63 = load i8*, i8** %62, align 8, !dbg !3372, !tbaa !555
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3372
  %65 = load i8*, i8** %64, align 8, !dbg !3372, !tbaa !555
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3372
  %67 = load i8*, i8** %66, align 8, !dbg !3372, !tbaa !555
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3372
  %69 = load i8*, i8** %68, align 8, !dbg !3372, !tbaa !555
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3372
  %71 = load i8*, i8** %70, align 8, !dbg !3372, !tbaa !555
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !3372
  br label %147, !dbg !3373

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.98, i64 0, i64 0), i32 noundef 5) #34, !dbg !3374
  %75 = load i8*, i8** %4, align 8, !dbg !3374, !tbaa !555
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3374
  %77 = load i8*, i8** %76, align 8, !dbg !3374, !tbaa !555
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3374
  %79 = load i8*, i8** %78, align 8, !dbg !3374, !tbaa !555
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3374
  %81 = load i8*, i8** %80, align 8, !dbg !3374, !tbaa !555
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3374
  %83 = load i8*, i8** %82, align 8, !dbg !3374, !tbaa !555
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3374
  %85 = load i8*, i8** %84, align 8, !dbg !3374, !tbaa !555
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3374
  %87 = load i8*, i8** %86, align 8, !dbg !3374, !tbaa !555
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !3374
  br label %147, !dbg !3375

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.99, i64 0, i64 0), i32 noundef 5) #34, !dbg !3376
  %91 = load i8*, i8** %4, align 8, !dbg !3376, !tbaa !555
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3376
  %93 = load i8*, i8** %92, align 8, !dbg !3376, !tbaa !555
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3376
  %95 = load i8*, i8** %94, align 8, !dbg !3376, !tbaa !555
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3376
  %97 = load i8*, i8** %96, align 8, !dbg !3376, !tbaa !555
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3376
  %99 = load i8*, i8** %98, align 8, !dbg !3376, !tbaa !555
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3376
  %101 = load i8*, i8** %100, align 8, !dbg !3376, !tbaa !555
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3376
  %103 = load i8*, i8** %102, align 8, !dbg !3376, !tbaa !555
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3376
  %105 = load i8*, i8** %104, align 8, !dbg !3376, !tbaa !555
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !3376
  br label %147, !dbg !3377

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.100, i64 0, i64 0), i32 noundef 5) #34, !dbg !3378
  %109 = load i8*, i8** %4, align 8, !dbg !3378, !tbaa !555
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3378
  %111 = load i8*, i8** %110, align 8, !dbg !3378, !tbaa !555
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3378
  %113 = load i8*, i8** %112, align 8, !dbg !3378, !tbaa !555
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3378
  %115 = load i8*, i8** %114, align 8, !dbg !3378, !tbaa !555
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3378
  %117 = load i8*, i8** %116, align 8, !dbg !3378, !tbaa !555
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3378
  %119 = load i8*, i8** %118, align 8, !dbg !3378, !tbaa !555
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3378
  %121 = load i8*, i8** %120, align 8, !dbg !3378, !tbaa !555
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3378
  %123 = load i8*, i8** %122, align 8, !dbg !3378, !tbaa !555
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3378
  %125 = load i8*, i8** %124, align 8, !dbg !3378, !tbaa !555
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !3378
  br label %147, !dbg !3379

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.101, i64 0, i64 0), i32 noundef 5) #34, !dbg !3380
  %129 = load i8*, i8** %4, align 8, !dbg !3380, !tbaa !555
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3380
  %131 = load i8*, i8** %130, align 8, !dbg !3380, !tbaa !555
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3380
  %133 = load i8*, i8** %132, align 8, !dbg !3380, !tbaa !555
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3380
  %135 = load i8*, i8** %134, align 8, !dbg !3380, !tbaa !555
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3380
  %137 = load i8*, i8** %136, align 8, !dbg !3380, !tbaa !555
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3380
  %139 = load i8*, i8** %138, align 8, !dbg !3380, !tbaa !555
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3380
  %141 = load i8*, i8** %140, align 8, !dbg !3380, !tbaa !555
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3380
  %143 = load i8*, i8** %142, align 8, !dbg !3380, !tbaa !555
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3380
  %145 = load i8*, i8** %144, align 8, !dbg !3380, !tbaa !555
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !3380
  br label %147, !dbg !3381

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3382
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3383 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3387, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %1, metadata !3388, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %2, metadata !3389, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %3, metadata !3390, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8** %4, metadata !3391, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 0, metadata !3392, metadata !DIExpression()), !dbg !3393
  br label %6, !dbg !3394

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3396
  call void @llvm.dbg.value(metadata i64 %7, metadata !3392, metadata !DIExpression()), !dbg !3393
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3397
  %9 = load i8*, i8** %8, align 8, !dbg !3397, !tbaa !555
  %10 = icmp eq i8* %9, null, !dbg !3399
  %11 = add i64 %7, 1, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %11, metadata !3392, metadata !DIExpression()), !dbg !3393
  br i1 %10, label %12, label %6, !dbg !3399, !llvm.loop !3401

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3403
  ret void, !dbg !3404
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3405 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3420, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8* %1, metadata !3421, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8* %2, metadata !3422, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8* %3, metadata !3423, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3424, metadata !DIExpression()), !dbg !3429
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3430
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3426, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 0, metadata !3425, metadata !DIExpression()), !dbg !3428
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3425, metadata !DIExpression()), !dbg !3428
  %11 = load i32, i32* %8, align 8, !dbg !3432
  %12 = icmp sgt i32 %11, -1, !dbg !3432
  br i1 %12, label %20, label %13, !dbg !3432

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3432
  store i32 %14, i32* %8, align 8, !dbg !3432
  %15 = icmp ult i32 %11, -7, !dbg !3432
  br i1 %15, label %16, label %20, !dbg !3432

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3432
  %18 = sext i32 %11 to i64, !dbg !3432
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3432
  br label %24, !dbg !3432

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3432
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3432
  store i8* %23, i8** %10, align 8, !dbg !3432
  br label %24, !dbg !3432

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3432
  %28 = load i8*, i8** %27, align 8, !dbg !3432
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3435
  store i8* %28, i8** %29, align 8, !dbg !3436, !tbaa !555
  %30 = icmp eq i8* %28, null, !dbg !3437
  br i1 %30, label %210, label %31, !dbg !3438

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 1, metadata !3425, metadata !DIExpression()), !dbg !3428
  %32 = icmp sgt i32 %25, -1, !dbg !3432
  br i1 %32, label %40, label %33, !dbg !3432

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3432
  store i32 %34, i32* %8, align 8, !dbg !3432
  %35 = icmp ult i32 %25, -7, !dbg !3432
  br i1 %35, label %36, label %40, !dbg !3432

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3432
  %38 = sext i32 %25 to i64, !dbg !3432
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3432
  br label %44, !dbg !3432

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3432
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3432
  store i8* %43, i8** %10, align 8, !dbg !3432
  br label %44, !dbg !3432

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3432
  %48 = load i8*, i8** %47, align 8, !dbg !3432
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3435
  store i8* %48, i8** %49, align 8, !dbg !3436, !tbaa !555
  %50 = icmp eq i8* %48, null, !dbg !3437
  br i1 %50, label %210, label %51, !dbg !3438

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 2, metadata !3425, metadata !DIExpression()), !dbg !3428
  %52 = icmp sgt i32 %45, -1, !dbg !3432
  br i1 %52, label %60, label %53, !dbg !3432

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3432
  store i32 %54, i32* %8, align 8, !dbg !3432
  %55 = icmp ult i32 %45, -7, !dbg !3432
  br i1 %55, label %56, label %60, !dbg !3432

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3432
  %58 = sext i32 %45 to i64, !dbg !3432
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3432
  br label %64, !dbg !3432

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3432
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3432
  store i8* %63, i8** %10, align 8, !dbg !3432
  br label %64, !dbg !3432

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3432
  %68 = load i8*, i8** %67, align 8, !dbg !3432
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3435
  store i8* %68, i8** %69, align 8, !dbg !3436, !tbaa !555
  %70 = icmp eq i8* %68, null, !dbg !3437
  br i1 %70, label %210, label %71, !dbg !3438

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 3, metadata !3425, metadata !DIExpression()), !dbg !3428
  %72 = icmp sgt i32 %65, -1, !dbg !3432
  br i1 %72, label %80, label %73, !dbg !3432

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3432
  store i32 %74, i32* %8, align 8, !dbg !3432
  %75 = icmp ult i32 %65, -7, !dbg !3432
  br i1 %75, label %76, label %80, !dbg !3432

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3432
  %78 = sext i32 %65 to i64, !dbg !3432
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3432
  br label %84, !dbg !3432

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3432
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3432
  store i8* %83, i8** %10, align 8, !dbg !3432
  br label %84, !dbg !3432

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3432
  %88 = load i8*, i8** %87, align 8, !dbg !3432
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3435
  store i8* %88, i8** %89, align 8, !dbg !3436, !tbaa !555
  %90 = icmp eq i8* %88, null, !dbg !3437
  br i1 %90, label %210, label %91, !dbg !3438

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 4, metadata !3425, metadata !DIExpression()), !dbg !3428
  %92 = icmp sgt i32 %85, -1, !dbg !3432
  br i1 %92, label %100, label %93, !dbg !3432

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3432
  store i32 %94, i32* %8, align 8, !dbg !3432
  %95 = icmp ult i32 %85, -7, !dbg !3432
  br i1 %95, label %96, label %100, !dbg !3432

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3432
  %98 = sext i32 %85 to i64, !dbg !3432
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3432
  br label %104, !dbg !3432

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3432
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3432
  store i8* %103, i8** %10, align 8, !dbg !3432
  br label %104, !dbg !3432

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3432
  %108 = load i8*, i8** %107, align 8, !dbg !3432
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3435
  store i8* %108, i8** %109, align 8, !dbg !3436, !tbaa !555
  %110 = icmp eq i8* %108, null, !dbg !3437
  br i1 %110, label %210, label %111, !dbg !3438

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 5, metadata !3425, metadata !DIExpression()), !dbg !3428
  %112 = icmp sgt i32 %105, -1, !dbg !3432
  br i1 %112, label %120, label %113, !dbg !3432

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3432
  store i32 %114, i32* %8, align 8, !dbg !3432
  %115 = icmp ult i32 %105, -7, !dbg !3432
  br i1 %115, label %116, label %120, !dbg !3432

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3432
  %118 = sext i32 %105 to i64, !dbg !3432
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3432
  br label %124, !dbg !3432

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3432
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3432
  store i8* %123, i8** %10, align 8, !dbg !3432
  br label %124, !dbg !3432

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3432
  %128 = load i8*, i8** %127, align 8, !dbg !3432
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3435
  store i8* %128, i8** %129, align 8, !dbg !3436, !tbaa !555
  %130 = icmp eq i8* %128, null, !dbg !3437
  br i1 %130, label %210, label %131, !dbg !3438

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 6, metadata !3425, metadata !DIExpression()), !dbg !3428
  %132 = icmp sgt i32 %125, -1, !dbg !3432
  br i1 %132, label %140, label %133, !dbg !3432

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3432
  store i32 %134, i32* %8, align 8, !dbg !3432
  %135 = icmp ult i32 %125, -7, !dbg !3432
  br i1 %135, label %136, label %140, !dbg !3432

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3432
  %138 = sext i32 %125 to i64, !dbg !3432
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3432
  br label %144, !dbg !3432

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3432
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3432
  store i8* %143, i8** %10, align 8, !dbg !3432
  br label %144, !dbg !3432

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3432
  %148 = load i8*, i8** %147, align 8, !dbg !3432
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3435
  store i8* %148, i8** %149, align 8, !dbg !3436, !tbaa !555
  %150 = icmp eq i8* %148, null, !dbg !3437
  br i1 %150, label %210, label %151, !dbg !3438

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 7, metadata !3425, metadata !DIExpression()), !dbg !3428
  %152 = icmp sgt i32 %145, -1, !dbg !3432
  br i1 %152, label %160, label %153, !dbg !3432

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3432
  store i32 %154, i32* %8, align 8, !dbg !3432
  %155 = icmp ult i32 %145, -7, !dbg !3432
  br i1 %155, label %156, label %160, !dbg !3432

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3432
  %158 = sext i32 %145 to i64, !dbg !3432
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3432
  br label %164, !dbg !3432

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3432
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3432
  store i8* %163, i8** %10, align 8, !dbg !3432
  br label %164, !dbg !3432

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3432
  %168 = load i8*, i8** %167, align 8, !dbg !3432
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3435
  store i8* %168, i8** %169, align 8, !dbg !3436, !tbaa !555
  %170 = icmp eq i8* %168, null, !dbg !3437
  br i1 %170, label %210, label %171, !dbg !3438

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 8, metadata !3425, metadata !DIExpression()), !dbg !3428
  %172 = icmp sgt i32 %165, -1, !dbg !3432
  br i1 %172, label %180, label %173, !dbg !3432

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3432
  store i32 %174, i32* %8, align 8, !dbg !3432
  %175 = icmp ult i32 %165, -7, !dbg !3432
  br i1 %175, label %176, label %180, !dbg !3432

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3432
  %178 = sext i32 %165 to i64, !dbg !3432
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3432
  br label %184, !dbg !3432

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3432
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3432
  store i8* %183, i8** %10, align 8, !dbg !3432
  br label %184, !dbg !3432

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3432
  %188 = load i8*, i8** %187, align 8, !dbg !3432
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3435
  store i8* %188, i8** %189, align 8, !dbg !3436, !tbaa !555
  %190 = icmp eq i8* %188, null, !dbg !3437
  br i1 %190, label %210, label %191, !dbg !3438

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3425, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 9, metadata !3425, metadata !DIExpression()), !dbg !3428
  %192 = icmp sgt i32 %185, -1, !dbg !3432
  br i1 %192, label %200, label %193, !dbg !3432

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3432
  store i32 %194, i32* %8, align 8, !dbg !3432
  %195 = icmp ult i32 %185, -7, !dbg !3432
  br i1 %195, label %196, label %200, !dbg !3432

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3432
  %198 = sext i32 %185 to i64, !dbg !3432
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3432
  br label %203, !dbg !3432

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3432
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3432
  store i8* %202, i8** %10, align 8, !dbg !3432
  br label %203, !dbg !3432

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3432
  %206 = load i8*, i8** %205, align 8, !dbg !3432
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3435
  store i8* %206, i8** %207, align 8, !dbg !3436, !tbaa !555
  %208 = icmp eq i8* %206, null, !dbg !3437
  %209 = select i1 %208, i64 9, i64 10, !dbg !3438
  br label %210, !dbg !3438

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3439
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3440
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3441
  ret void, !dbg !3441
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3442 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3446, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8* %1, metadata !3447, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8* %2, metadata !3448, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8* %3, metadata !3449, metadata !DIExpression()), !dbg !3451
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3452
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3452
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3450, metadata !DIExpression()), !dbg !3453
  call void @llvm.va_start(i8* nonnull %7), !dbg !3454
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3455
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3455
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3455, !tbaa.struct !1434
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3455
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3455
  call void @llvm.va_end(i8* nonnull %7), !dbg !3456
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3457
  ret void, !dbg !3457
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3458 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3459, !tbaa !555
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.89, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3459
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.106, i64 0, i64 0), i32 noundef 5) #34, !dbg !3460
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.107, i64 0, i64 0)) #34, !dbg !3460
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.108, i64 0, i64 0), i32 noundef 5) #34, !dbg !3461
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.110, i64 0, i64 0)) #34, !dbg !3461
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.111, i64 0, i64 0), i32 noundef 5) #34, !dbg !3462
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.112, i64 0, i64 0)) #34, !dbg !3462
  ret void, !dbg !3463
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3464 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %1, metadata !3470, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %2, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8* %0, metadata !3473, metadata !DIExpression()) #34, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %1, metadata !3476, metadata !DIExpression()) #34, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %2, metadata !3477, metadata !DIExpression()) #34, !dbg !3478
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %4, metadata !3481, metadata !DIExpression()) #34, !dbg !3486
  %5 = icmp eq i8* %4, null, !dbg !3488
  br i1 %5, label %6, label %7, !dbg !3490

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3491
  unreachable, !dbg !3491

7:                                                ; preds = %3
  ret i8* %4, !dbg !3492
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3474 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3473, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3476, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %2, metadata !3477, metadata !DIExpression()), !dbg !3493
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %4, metadata !3481, metadata !DIExpression()) #34, !dbg !3495
  %5 = icmp eq i8* %4, null, !dbg !3497
  br i1 %5, label %6, label %7, !dbg !3498

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3499
  unreachable, !dbg !3499

7:                                                ; preds = %3
  ret i8* %4, !dbg !3500
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3501 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3505, metadata !DIExpression()), !dbg !3506
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %2, metadata !3481, metadata !DIExpression()) #34, !dbg !3508
  %3 = icmp eq i8* %2, null, !dbg !3510
  br i1 %3, label %4, label %5, !dbg !3511

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3512
  unreachable, !dbg !3512

5:                                                ; preds = %1
  ret i8* %2, !dbg !3513
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3514 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3518, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %0, metadata !3520, metadata !DIExpression()) #34, !dbg !3524
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3526
  call void @llvm.dbg.value(metadata i8* %2, metadata !3481, metadata !DIExpression()) #34, !dbg !3527
  %3 = icmp eq i8* %2, null, !dbg !3529
  br i1 %3, label %4, label %5, !dbg !3530

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3531
  unreachable, !dbg !3531

5:                                                ; preds = %1
  ret i8* %2, !dbg !3532
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3533 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3537, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %0, metadata !3505, metadata !DIExpression()) #34, !dbg !3539
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %2, metadata !3481, metadata !DIExpression()) #34, !dbg !3542
  %3 = icmp eq i8* %2, null, !dbg !3544
  br i1 %3, label %4, label %5, !dbg !3545

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3546
  unreachable, !dbg !3546

5:                                                ; preds = %1
  ret i8* %2, !dbg !3547
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3548 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3552, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i64 %1, metadata !3553, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8* %0, metadata !3555, metadata !DIExpression()) #34, !dbg !3560
  call void @llvm.dbg.value(metadata i64 %1, metadata !3559, metadata !DIExpression()) #34, !dbg !3560
  %3 = icmp eq i64 %1, 0, !dbg !3562
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3562
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3563
  call void @llvm.dbg.value(metadata i8* %5, metadata !3481, metadata !DIExpression()) #34, !dbg !3564
  %6 = icmp eq i8* %5, null, !dbg !3566
  br i1 %6, label %7, label %8, !dbg !3567

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3568
  unreachable, !dbg !3568

8:                                                ; preds = %2
  ret i8* %5, !dbg !3569
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3570 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3574, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %0, metadata !3577, metadata !DIExpression()) #34, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %1, metadata !3580, metadata !DIExpression()) #34, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %0, metadata !3555, metadata !DIExpression()) #34, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %1, metadata !3559, metadata !DIExpression()) #34, !dbg !3583
  %3 = icmp eq i64 %1, 0, !dbg !3585
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3585
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3586
  call void @llvm.dbg.value(metadata i8* %5, metadata !3481, metadata !DIExpression()) #34, !dbg !3587
  %6 = icmp eq i8* %5, null, !dbg !3589
  br i1 %6, label %7, label %8, !dbg !3590

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3591
  unreachable, !dbg !3591

8:                                                ; preds = %2
  ret i8* %5, !dbg !3592
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3593 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3597, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 %1, metadata !3598, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 %2, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8* %0, metadata !3601, metadata !DIExpression()) #34, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %1, metadata !3604, metadata !DIExpression()) #34, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %2, metadata !3605, metadata !DIExpression()) #34, !dbg !3606
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3608
  call void @llvm.dbg.value(metadata i8* %4, metadata !3481, metadata !DIExpression()) #34, !dbg !3609
  %5 = icmp eq i8* %4, null, !dbg !3611
  br i1 %5, label %6, label %7, !dbg !3612

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3613
  unreachable, !dbg !3613

7:                                                ; preds = %3
  ret i8* %4, !dbg !3614
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3615 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3619, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i8* null, metadata !3473, metadata !DIExpression()) #34, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %0, metadata !3476, metadata !DIExpression()) #34, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %1, metadata !3477, metadata !DIExpression()) #34, !dbg !3622
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3624
  call void @llvm.dbg.value(metadata i8* %3, metadata !3481, metadata !DIExpression()) #34, !dbg !3625
  %4 = icmp eq i8* %3, null, !dbg !3627
  br i1 %4, label %5, label %6, !dbg !3628

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3629
  unreachable, !dbg !3629

6:                                                ; preds = %2
  ret i8* %3, !dbg !3630
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3631 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3635, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 %1, metadata !3636, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8* null, metadata !3597, metadata !DIExpression()) #34, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %0, metadata !3598, metadata !DIExpression()) #34, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %1, metadata !3599, metadata !DIExpression()) #34, !dbg !3638
  call void @llvm.dbg.value(metadata i8* null, metadata !3601, metadata !DIExpression()) #34, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %0, metadata !3604, metadata !DIExpression()) #34, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()) #34, !dbg !3640
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %3, metadata !3481, metadata !DIExpression()) #34, !dbg !3643
  %4 = icmp eq i8* %3, null, !dbg !3645
  br i1 %4, label %5, label %6, !dbg !3646

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3647
  unreachable, !dbg !3647

6:                                                ; preds = %2
  ret i8* %3, !dbg !3648
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3649 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3653, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64* %1, metadata !3654, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i8* %0, metadata !477, metadata !DIExpression()) #34, !dbg !3656
  call void @llvm.dbg.value(metadata i64* %1, metadata !478, metadata !DIExpression()) #34, !dbg !3656
  call void @llvm.dbg.value(metadata i64 1, metadata !479, metadata !DIExpression()) #34, !dbg !3656
  %3 = load i64, i64* %1, align 8, !dbg !3658, !tbaa !2754
  call void @llvm.dbg.value(metadata i64 %3, metadata !480, metadata !DIExpression()) #34, !dbg !3656
  %4 = icmp eq i8* %0, null, !dbg !3659
  br i1 %4, label %5, label %8, !dbg !3661

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3662
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3665
  br label %15, !dbg !3665

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3666
  %10 = add nuw i64 %9, 1, !dbg !3666
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !3666
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3666
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %13, metadata !480, metadata !DIExpression()) #34, !dbg !3656
  br i1 %12, label %14, label %15, !dbg !3669

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !3670
  unreachable, !dbg !3670

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3656
  call void @llvm.dbg.value(metadata i64 %16, metadata !480, metadata !DIExpression()) #34, !dbg !3656
  call void @llvm.dbg.value(metadata i8* %0, metadata !3473, metadata !DIExpression()) #34, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %16, metadata !3476, metadata !DIExpression()) #34, !dbg !3671
  call void @llvm.dbg.value(metadata i64 1, metadata !3477, metadata !DIExpression()) #34, !dbg !3671
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %17, metadata !3481, metadata !DIExpression()) #34, !dbg !3674
  %18 = icmp eq i8* %17, null, !dbg !3676
  br i1 %18, label %19, label %20, !dbg !3677

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !3678
  unreachable, !dbg !3678

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !477, metadata !DIExpression()) #34, !dbg !3656
  store i64 %16, i64* %1, align 8, !dbg !3679, !tbaa !2754
  ret i8* %17, !dbg !3680
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !472 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !477, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64* %1, metadata !478, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %2, metadata !479, metadata !DIExpression()), !dbg !3681
  %4 = load i64, i64* %1, align 8, !dbg !3682, !tbaa !2754
  call void @llvm.dbg.value(metadata i64 %4, metadata !480, metadata !DIExpression()), !dbg !3681
  %5 = icmp eq i8* %0, null, !dbg !3683
  br i1 %5, label %6, label %13, !dbg !3684

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3685
  br i1 %7, label %8, label %20, !dbg !3686

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %9, metadata !480, metadata !DIExpression()), !dbg !3681
  %10 = icmp ugt i64 %2, 128, !dbg !3689
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3690
  call void @llvm.dbg.value(metadata i64 %12, metadata !480, metadata !DIExpression()), !dbg !3681
  br label %20, !dbg !3691

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3692
  %15 = add nuw i64 %14, 1, !dbg !3692
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3692
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3692
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3692
  call void @llvm.dbg.value(metadata i64 %18, metadata !480, metadata !DIExpression()), !dbg !3681
  br i1 %17, label %19, label %20, !dbg !3693

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !3694
  unreachable, !dbg !3694

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3681
  call void @llvm.dbg.value(metadata i64 %21, metadata !480, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i8* %0, metadata !3473, metadata !DIExpression()) #34, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %21, metadata !3476, metadata !DIExpression()) #34, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %2, metadata !3477, metadata !DIExpression()) #34, !dbg !3695
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %22, metadata !3481, metadata !DIExpression()) #34, !dbg !3698
  %23 = icmp eq i8* %22, null, !dbg !3700
  br i1 %23, label %24, label %25, !dbg !3701

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !3702
  unreachable, !dbg !3702

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !477, metadata !DIExpression()), !dbg !3681
  store i64 %21, i64* %1, align 8, !dbg !3703, !tbaa !2754
  ret i8* %22, !dbg !3704
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !484 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !489, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64* %1, metadata !490, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %2, metadata !491, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %3, metadata !492, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %4, metadata !493, metadata !DIExpression()), !dbg !3705
  %6 = load i64, i64* %1, align 8, !dbg !3706, !tbaa !2754
  call void @llvm.dbg.value(metadata i64 %6, metadata !494, metadata !DIExpression()), !dbg !3705
  %7 = ashr i64 %6, 1, !dbg !3707
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3707
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3707
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %10, metadata !495, metadata !DIExpression()), !dbg !3705
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %11, metadata !495, metadata !DIExpression()), !dbg !3705
  %12 = icmp sgt i64 %3, -1, !dbg !3710
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3712
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %15, metadata !495, metadata !DIExpression()), !dbg !3705
  %16 = icmp slt i64 %4, 0, !dbg !3713
  br i1 %16, label %17, label %30, !dbg !3713

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3713
  br i1 %18, label %19, label %24, !dbg !3713

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3713
  %21 = udiv i64 9223372036854775807, %20, !dbg !3713
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3713
  br i1 %23, label %46, label %43, !dbg !3713

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3713
  br i1 %25, label %43, label %26, !dbg !3713

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3713
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3713
  %29 = icmp ult i64 %28, %15, !dbg !3713
  br i1 %29, label %46, label %43, !dbg !3713

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3713
  br i1 %31, label %43, label %32, !dbg !3713

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3713
  br i1 %33, label %34, label %40, !dbg !3713

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3713
  br i1 %35, label %43, label %36, !dbg !3713

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3713
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3713
  %39 = icmp ult i64 %38, %4, !dbg !3713
  br i1 %39, label %46, label %43, !dbg !3713

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3713
  %42 = icmp ult i64 %41, %15, !dbg !3713
  br i1 %42, label %46, label %43, !dbg !3713

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !496, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3705
  %44 = mul i64 %15, %4, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %44, metadata !496, metadata !DIExpression()), !dbg !3705
  %45 = icmp slt i64 %44, 128, !dbg !3713
  br i1 %45, label %46, label %52, !dbg !3713

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !497, metadata !DIExpression()), !dbg !3705
  %48 = sdiv i64 %47, %4, !dbg !3714
  call void @llvm.dbg.value(metadata i64 %48, metadata !495, metadata !DIExpression()), !dbg !3705
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %51, metadata !496, metadata !DIExpression()), !dbg !3705
  br label %52, !dbg !3718

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3705
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3705
  call void @llvm.dbg.value(metadata i64 %54, metadata !496, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %53, metadata !495, metadata !DIExpression()), !dbg !3705
  %55 = icmp eq i8* %0, null, !dbg !3719
  br i1 %55, label %56, label %57, !dbg !3721

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3722, !tbaa !2754
  br label %57, !dbg !3723

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3724
  %59 = icmp slt i64 %58, %2, !dbg !3726
  br i1 %59, label %60, label %97, !dbg !3727

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3728
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3728
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %63, metadata !495, metadata !DIExpression()), !dbg !3705
  br i1 %62, label %96, label %64, !dbg !3729

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3730
  br i1 %66, label %96, label %67, !dbg !3730

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3731

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3731
  br i1 %69, label %70, label %75, !dbg !3731

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3731
  %72 = udiv i64 9223372036854775807, %71, !dbg !3731
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3731
  br i1 %74, label %96, label %94, !dbg !3731

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3731
  br i1 %76, label %94, label %77, !dbg !3731

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3731
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3731
  %80 = icmp ult i64 %79, %63, !dbg !3731
  br i1 %80, label %96, label %94, !dbg !3731

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3731
  br i1 %82, label %94, label %83, !dbg !3731

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3731
  br i1 %84, label %85, label %91, !dbg !3731

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3731
  br i1 %86, label %94, label %87, !dbg !3731

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3731
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3731
  %90 = icmp ult i64 %89, %4, !dbg !3731
  br i1 %90, label %96, label %94, !dbg !3731

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3731
  %93 = icmp ult i64 %92, %63, !dbg !3731
  br i1 %93, label %96, label %94, !dbg !3731

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !496, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3705
  %95 = mul i64 %63, %4, !dbg !3731
  call void @llvm.dbg.value(metadata i64 %95, metadata !496, metadata !DIExpression()), !dbg !3705
  br label %97, !dbg !3732

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !3733
  unreachable, !dbg !3733

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3705
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3705
  call void @llvm.dbg.value(metadata i64 %99, metadata !496, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %98, metadata !495, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i8* %0, metadata !3552, metadata !DIExpression()) #34, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %99, metadata !3553, metadata !DIExpression()) #34, !dbg !3734
  call void @llvm.dbg.value(metadata i8* %0, metadata !3555, metadata !DIExpression()) #34, !dbg !3736
  call void @llvm.dbg.value(metadata i64 %99, metadata !3559, metadata !DIExpression()) #34, !dbg !3736
  %100 = icmp eq i64 %99, 0, !dbg !3738
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3738
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !3739
  call void @llvm.dbg.value(metadata i8* %102, metadata !3481, metadata !DIExpression()) #34, !dbg !3740
  %103 = icmp eq i8* %102, null, !dbg !3742
  br i1 %103, label %104, label %105, !dbg !3743

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !3744
  unreachable, !dbg !3744

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !489, metadata !DIExpression()), !dbg !3705
  store i64 %98, i64* %1, align 8, !dbg !3745, !tbaa !2754
  ret i8* %102, !dbg !3746
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3747 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3749, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %0, metadata !3751, metadata !DIExpression()) #34, !dbg !3755
  call void @llvm.dbg.value(metadata i64 1, metadata !3754, metadata !DIExpression()) #34, !dbg !3755
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3757
  call void @llvm.dbg.value(metadata i8* %2, metadata !3481, metadata !DIExpression()) #34, !dbg !3758
  %3 = icmp eq i8* %2, null, !dbg !3760
  br i1 %3, label %4, label %5, !dbg !3761

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3762
  unreachable, !dbg !3762

5:                                                ; preds = %1
  ret i8* %2, !dbg !3763
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3752 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3751, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64 %1, metadata !3754, metadata !DIExpression()), !dbg !3764
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3765
  call void @llvm.dbg.value(metadata i8* %3, metadata !3481, metadata !DIExpression()) #34, !dbg !3766
  %4 = icmp eq i8* %3, null, !dbg !3768
  br i1 %4, label %5, label %6, !dbg !3769

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3770
  unreachable, !dbg !3770

6:                                                ; preds = %2
  ret i8* %3, !dbg !3771
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3772 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %0, metadata !3776, metadata !DIExpression()) #34, !dbg !3780
  call void @llvm.dbg.value(metadata i64 1, metadata !3779, metadata !DIExpression()) #34, !dbg !3780
  call void @llvm.dbg.value(metadata i64 %0, metadata !3782, metadata !DIExpression()) #34, !dbg !3786
  call void @llvm.dbg.value(metadata i64 1, metadata !3785, metadata !DIExpression()) #34, !dbg !3786
  call void @llvm.dbg.value(metadata i64 %0, metadata !3782, metadata !DIExpression()) #34, !dbg !3786
  call void @llvm.dbg.value(metadata i64 1, metadata !3785, metadata !DIExpression()) #34, !dbg !3786
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %2, metadata !3481, metadata !DIExpression()) #34, !dbg !3789
  %3 = icmp eq i8* %2, null, !dbg !3791
  br i1 %3, label %4, label %5, !dbg !3792

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3793
  unreachable, !dbg !3793

5:                                                ; preds = %1
  ret i8* %2, !dbg !3794
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3777 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3776, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %1, metadata !3779, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %0, metadata !3782, metadata !DIExpression()) #34, !dbg !3796
  call void @llvm.dbg.value(metadata i64 %1, metadata !3785, metadata !DIExpression()) #34, !dbg !3796
  call void @llvm.dbg.value(metadata i64 %0, metadata !3782, metadata !DIExpression()) #34, !dbg !3796
  call void @llvm.dbg.value(metadata i64 %1, metadata !3785, metadata !DIExpression()) #34, !dbg !3796
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3798
  call void @llvm.dbg.value(metadata i8* %3, metadata !3481, metadata !DIExpression()) #34, !dbg !3799
  %4 = icmp eq i8* %3, null, !dbg !3801
  br i1 %4, label %5, label %6, !dbg !3802

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3803
  unreachable, !dbg !3803

6:                                                ; preds = %2
  ret i8* %3, !dbg !3804
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3805 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3809, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %1, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %1, metadata !3505, metadata !DIExpression()) #34, !dbg !3812
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3814
  call void @llvm.dbg.value(metadata i8* %3, metadata !3481, metadata !DIExpression()) #34, !dbg !3815
  %4 = icmp eq i8* %3, null, !dbg !3817
  br i1 %4, label %5, label %6, !dbg !3818

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3819
  unreachable, !dbg !3819

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3820, metadata !DIExpression()) #34, !dbg !3825
  call void @llvm.dbg.value(metadata i8* %0, metadata !3823, metadata !DIExpression()) #34, !dbg !3825
  call void @llvm.dbg.value(metadata i64 %1, metadata !3824, metadata !DIExpression()) #34, !dbg !3825
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3827
  ret i8* %3, !dbg !3828
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3829 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3833, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %1, metadata !3834, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %1, metadata !3518, metadata !DIExpression()) #34, !dbg !3836
  call void @llvm.dbg.value(metadata i64 %1, metadata !3520, metadata !DIExpression()) #34, !dbg !3838
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3840
  call void @llvm.dbg.value(metadata i8* %3, metadata !3481, metadata !DIExpression()) #34, !dbg !3841
  %4 = icmp eq i8* %3, null, !dbg !3843
  br i1 %4, label %5, label %6, !dbg !3844

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3845
  unreachable, !dbg !3845

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3820, metadata !DIExpression()) #34, !dbg !3846
  call void @llvm.dbg.value(metadata i8* %0, metadata !3823, metadata !DIExpression()) #34, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %1, metadata !3824, metadata !DIExpression()) #34, !dbg !3846
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3848
  ret i8* %3, !dbg !3849
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3850 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3854, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %1, metadata !3855, metadata !DIExpression()), !dbg !3857
  %3 = add nsw i64 %1, 1, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %3, metadata !3518, metadata !DIExpression()) #34, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %3, metadata !3520, metadata !DIExpression()) #34, !dbg !3861
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3863
  call void @llvm.dbg.value(metadata i8* %4, metadata !3481, metadata !DIExpression()) #34, !dbg !3864
  %5 = icmp eq i8* %4, null, !dbg !3866
  br i1 %5, label %6, label %7, !dbg !3867

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3868
  unreachable, !dbg !3868

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3856, metadata !DIExpression()), !dbg !3857
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3869
  store i8 0, i8* %8, align 1, !dbg !3870, !tbaa !658
  call void @llvm.dbg.value(metadata i8* %4, metadata !3820, metadata !DIExpression()) #34, !dbg !3871
  call void @llvm.dbg.value(metadata i8* %0, metadata !3823, metadata !DIExpression()) #34, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %1, metadata !3824, metadata !DIExpression()) #34, !dbg !3871
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3873
  ret i8* %4, !dbg !3874
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3875 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3877, metadata !DIExpression()), !dbg !3878
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !3879
  %3 = add i64 %2, 1, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %0, metadata !3809, metadata !DIExpression()) #34, !dbg !3881
  call void @llvm.dbg.value(metadata i64 %3, metadata !3810, metadata !DIExpression()) #34, !dbg !3881
  call void @llvm.dbg.value(metadata i64 %3, metadata !3505, metadata !DIExpression()) #34, !dbg !3883
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3885
  call void @llvm.dbg.value(metadata i8* %4, metadata !3481, metadata !DIExpression()) #34, !dbg !3886
  %5 = icmp eq i8* %4, null, !dbg !3888
  br i1 %5, label %6, label %7, !dbg !3889

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3890
  unreachable, !dbg !3890

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3820, metadata !DIExpression()) #34, !dbg !3891
  call void @llvm.dbg.value(metadata i8* %0, metadata !3823, metadata !DIExpression()) #34, !dbg !3891
  call void @llvm.dbg.value(metadata i64 %3, metadata !3824, metadata !DIExpression()) #34, !dbg !3891
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !3893
  ret i8* %4, !dbg !3894
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3895 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3900, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %1, metadata !3897, metadata !DIExpression()), !dbg !3901
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.124, i64 0, i64 0), i32 noundef 5) #34, !dbg !3900
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i64 0, i64 0), i8* noundef %2) #34, !dbg !3900
  %3 = icmp eq i32 %1, 0, !dbg !3900
  tail call void @llvm.assume(i1 %3), !dbg !3900
  tail call void @abort() #36, !dbg !3902
  unreachable, !dbg !3902
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #12 !dbg !3903 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3908, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %1, metadata !3909, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i64 %2, metadata !3910, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i64 %3, metadata !3911, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i8* %5, metadata !3913, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %6, metadata !3914, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %7, metadata !3915, metadata !DIExpression()), !dbg !3925
  %10 = bitcast i64* %9 to i8*, !dbg !3926
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !3926
  call void @llvm.dbg.value(metadata i64* %9, metadata !3916, metadata !DIExpression(DW_OP_deref)), !dbg !3925
  %11 = call i32 @xstrtoumax(i8* noundef nonnull %0, i8** noundef null, i32 noundef %1, i64* noundef nonnull %9, i8* noundef %4) #34, !dbg !3927
  call void @llvm.dbg.value(metadata i32 %11, metadata !3918, metadata !DIExpression()), !dbg !3925
  %12 = icmp eq i32 %11, 4, !dbg !3928
  br i1 %12, label %41, label %13, !dbg !3930

13:                                               ; preds = %8
  %14 = load i64, i64* %9, align 8, !dbg !3931, !tbaa !2754
  call void @llvm.dbg.value(metadata i64 %14, metadata !3916, metadata !DIExpression()), !dbg !3925
  %15 = icmp ult i64 %14, %2, !dbg !3934
  br i1 %15, label %16, label %21, !dbg !3935

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %2, metadata !3917, metadata !DIExpression()), !dbg !3925
  %17 = and i32 %7, 4, !dbg !3936
  %18 = icmp eq i32 %17, 0, !dbg !3938
  %19 = select i1 %18, i32 75, i32 34, !dbg !3938
  call void @llvm.dbg.value(metadata i32 %19, metadata !3920, metadata !DIExpression()), !dbg !3925
  %20 = icmp eq i32 %11, 0, !dbg !3939
  call void @llvm.dbg.value(metadata i32 undef, metadata !3918, metadata !DIExpression()), !dbg !3925
  br i1 %20, label %34, label %28, !dbg !3941

21:                                               ; preds = %13
  %22 = icmp ugt i64 %14, %3, !dbg !3942
  br i1 %22, label %23, label %28, !dbg !3944

23:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %3, metadata !3917, metadata !DIExpression()), !dbg !3925
  %24 = and i32 %7, 8, !dbg !3945
  %25 = icmp eq i32 %24, 0, !dbg !3947
  %26 = select i1 %25, i32 75, i32 34, !dbg !3947
  call void @llvm.dbg.value(metadata i32 %26, metadata !3920, metadata !DIExpression()), !dbg !3925
  %27 = icmp eq i32 %11, 0, !dbg !3948
  call void @llvm.dbg.value(metadata i32 undef, metadata !3918, metadata !DIExpression()), !dbg !3925
  br i1 %27, label %34, label %28, !dbg !3950

28:                                               ; preds = %23, %16, %21
  %29 = phi i32 [ %19, %16 ], [ %26, %23 ], [ 75, %21 ]
  %30 = phi i64 [ %2, %16 ], [ %3, %23 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !3917, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %11, metadata !3918, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %29, metadata !3920, metadata !DIExpression()), !dbg !3925
  %31 = icmp eq i32 %11, 1, !dbg !3951
  %32 = select i1 %31, i32 %29, i32 0, !dbg !3952
  call void @llvm.dbg.value(metadata i32 %32, metadata !3921, metadata !DIExpression()), !dbg !3925
  %33 = icmp eq i32 %11, 0, !dbg !3953
  br i1 %33, label %46, label %34, !dbg !3954

34:                                               ; preds = %16, %23, %28
  %35 = phi i32 [ %32, %28 ], [ %26, %23 ], [ %19, %16 ]
  %36 = phi i1 [ %31, %28 ], [ true, %23 ], [ true, %16 ]
  %37 = phi i64 [ %30, %28 ], [ %3, %23 ], [ %2, %16 ]
  %38 = and i32 %7, 2
  %39 = icmp ne i32 %38, 0
  %40 = and i1 %39, %36, !dbg !3955
  call void @llvm.dbg.value(metadata i64 undef, metadata !3916, metadata !DIExpression()), !dbg !3925
  br i1 %40, label %46, label %41, !dbg !3955

41:                                               ; preds = %8, %34
  %42 = phi i32 [ %35, %34 ], [ 0, %8 ]
  %43 = icmp eq i32 %6, 0, !dbg !3956
  %44 = select i1 %43, i32 1, i32 %6, !dbg !3956
  %45 = call i8* @quote(i8* noundef nonnull %0) #34, !dbg !3957
  call void (i32, i32, i8*, ...) @error(i32 noundef %44, i32 noundef %42, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i64 0, i64 0), i8* noundef nonnull %5, i8* noundef %45) #34, !dbg !3957
  unreachable, !dbg !3957

46:                                               ; preds = %34, %28
  %47 = phi i32 [ %35, %34 ], [ %32, %28 ]
  %48 = phi i64 [ %37, %34 ], [ %30, %28 ]
  %49 = tail call i32* @__errno_location() #37, !dbg !3958
  store i32 %47, i32* %49, align 4, !dbg !3959, !tbaa !649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !3960
  ret i64 %48, !dbg !3961
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(i8* noundef nonnull %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %4, i32 noundef %5) local_unnamed_addr #12 !dbg !3962 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3966, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %1, metadata !3967, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %2, metadata !3968, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8* %3, metadata !3969, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8* %4, metadata !3970, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 %5, metadata !3971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8* %0, metadata !3908, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i32 10, metadata !3909, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i64 %1, metadata !3910, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i64 %2, metadata !3911, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i8* %3, metadata !3912, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i8* %4, metadata !3913, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i32 %5, metadata !3914, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()) #34, !dbg !3973
  %8 = bitcast i64* %7 to i8*, !dbg !3975
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #34, !dbg !3975
  call void @llvm.dbg.value(metadata i64* %7, metadata !3916, metadata !DIExpression(DW_OP_deref)) #34, !dbg !3973
  %9 = call i32 @xstrtoumax(i8* noundef nonnull %0, i8** noundef null, i32 noundef 10, i64* noundef nonnull %7, i8* noundef %3) #34, !dbg !3976
  call void @llvm.dbg.value(metadata i32 %9, metadata !3918, metadata !DIExpression()) #34, !dbg !3973
  %10 = icmp eq i32 %9, 4, !dbg !3977
  br i1 %10, label %25, label %11, !dbg !3978

11:                                               ; preds = %6
  %12 = load i64, i64* %7, align 8, !dbg !3979, !tbaa !2754
  call void @llvm.dbg.value(metadata i64 %12, metadata !3916, metadata !DIExpression()) #34, !dbg !3973
  %13 = icmp ult i64 %12, %1, !dbg !3980
  br i1 %13, label %14, label %16, !dbg !3981

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %1, metadata !3917, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i32 75, metadata !3920, metadata !DIExpression()) #34, !dbg !3973
  %15 = icmp eq i32 %9, 0, !dbg !3982
  call void @llvm.dbg.value(metadata i32 undef, metadata !3918, metadata !DIExpression()) #34, !dbg !3973
  br i1 %15, label %25, label %20, !dbg !3983

16:                                               ; preds = %11
  %17 = icmp ugt i64 %12, %2, !dbg !3984
  br i1 %17, label %18, label %20, !dbg !3985

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 %2, metadata !3917, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i32 75, metadata !3920, metadata !DIExpression()) #34, !dbg !3973
  %19 = icmp eq i32 %9, 0, !dbg !3986
  call void @llvm.dbg.value(metadata i32 undef, metadata !3918, metadata !DIExpression()) #34, !dbg !3973
  br i1 %19, label %25, label %20, !dbg !3987

20:                                               ; preds = %18, %16, %14
  %21 = phi i64 [ %1, %14 ], [ %2, %18 ], [ %12, %16 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !3917, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i32 %9, metadata !3918, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i32 75, metadata !3920, metadata !DIExpression()) #34, !dbg !3973
  %22 = icmp eq i32 %9, 1, !dbg !3988
  %23 = select i1 %22, i32 75, i32 0, !dbg !3989
  call void @llvm.dbg.value(metadata i32 %23, metadata !3921, metadata !DIExpression()) #34, !dbg !3973
  %24 = icmp eq i32 %9, 0, !dbg !3990
  br i1 %24, label %30, label %25, !dbg !3991

25:                                               ; preds = %14, %18, %20, %6
  %26 = phi i32 [ 0, %6 ], [ %23, %20 ], [ 75, %18 ], [ 75, %14 ]
  %27 = icmp eq i32 %5, 0, !dbg !3992
  %28 = select i1 %27, i32 1, i32 %5, !dbg !3992
  %29 = call i8* @quote(i8* noundef nonnull %0) #34, !dbg !3993
  call void (i32, i32, i8*, ...) @error(i32 noundef %28, i32 noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i64 0, i64 0), i8* noundef nonnull %4, i8* noundef %29) #34, !dbg !3993
  unreachable, !dbg !3993

30:                                               ; preds = %20
  %31 = tail call i32* @__errno_location() #37, !dbg !3994
  store i32 %23, i32* %31, align 4, !dbg !3995, !tbaa !649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #34, !dbg !3996
  ret i64 %21, !dbg !3997
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #12 !dbg !3998 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4004, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i8** %1, metadata !4005, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 %2, metadata !4006, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i64* %3, metadata !4007, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i8* %4, metadata !4008, metadata !DIExpression()), !dbg !4022
  %7 = bitcast i8** %6 to i8*, !dbg !4023
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #34, !dbg !4023
  %8 = icmp eq i8** %1, null, !dbg !4024
  call void @llvm.dbg.value(metadata i8** %21, metadata !4010, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i8* %0, metadata !4011, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8 undef, metadata !4014, metadata !DIExpression()), !dbg !4025
  %9 = tail call i16** @__ctype_b_loc() #37, !dbg !4022
  %10 = load i16*, i16** %9, align 8, !tbaa !555
  br label %11, !dbg !4026

11:                                               ; preds = %11, %5
  %12 = phi i8* [ %0, %5 ], [ %19, %11 ], !dbg !4025
  %13 = load i8, i8* %12, align 1, !dbg !4025, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %13, metadata !4014, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8* %12, metadata !4011, metadata !DIExpression()), !dbg !4025
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %10, i64 %14, !dbg !4027
  %16 = load i16, i16* %15, align 2, !dbg !4027, !tbaa !683
  %17 = and i16 %16, 8192, !dbg !4027
  %18 = icmp eq i16 %17, 0, !dbg !4026
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4028
  call void @llvm.dbg.value(metadata i8* %19, metadata !4011, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8 undef, metadata !4014, metadata !DIExpression()), !dbg !4025
  br i1 %18, label %20, label %11, !dbg !4026, !llvm.loop !4029

20:                                               ; preds = %11
  %21 = select i1 %8, i8** %6, i8** %1, !dbg !4024
  %22 = icmp eq i8 %13, 45, !dbg !4031
  br i1 %22, label %23, label %24, !dbg !4033

23:                                               ; preds = %20
  store i8* %0, i8** %21, align 8, !dbg !4034, !tbaa !555
  br label %387

24:                                               ; preds = %20
  %25 = tail call i32* @__errno_location() #37, !dbg !4036
  store i32 0, i32* %25, align 4, !dbg !4037, !tbaa !649
  %26 = call i64 @strtoumax(i8* noundef %0, i8** noundef %21, i32 noundef %2) #34, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %26, metadata !4015, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 0, metadata !4016, metadata !DIExpression()), !dbg !4022
  %27 = load i8*, i8** %21, align 8, !dbg !4039, !tbaa !555
  %28 = icmp eq i8* %27, %0, !dbg !4041
  br i1 %28, label %29, label %38, !dbg !4042

29:                                               ; preds = %24
  %30 = icmp eq i8* %4, null, !dbg !4043
  br i1 %30, label %387, label %31, !dbg !4046

31:                                               ; preds = %29
  %32 = load i8, i8* %0, align 1, !dbg !4047, !tbaa !658
  %33 = icmp eq i8 %32, 0, !dbg !4047
  br i1 %33, label %387, label %34, !dbg !4048

34:                                               ; preds = %31
  %35 = zext i8 %32 to i32, !dbg !4047
  %36 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %35) #35, !dbg !4049
  %37 = icmp eq i8* %36, null, !dbg !4049
  br i1 %37, label %387, label %45, !dbg !4050

38:                                               ; preds = %24
  %39 = load i32, i32* %25, align 4, !dbg !4051, !tbaa !649
  switch i32 %39, label %387 [
    i32 0, label %41
    i32 34, label %40
  ], !dbg !4053

40:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 1, metadata !4016, metadata !DIExpression()), !dbg !4022
  br label %41, !dbg !4054

41:                                               ; preds = %38, %40
  %42 = phi i32 [ 1, %40 ], [ %39, %38 ], !dbg !4022
  call void @llvm.dbg.value(metadata i32 %42, metadata !4016, metadata !DIExpression()), !dbg !4022
  %43 = icmp eq i8* %4, null, !dbg !4056
  br i1 %43, label %44, label %45, !dbg !4058

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 %26, metadata !4015, metadata !DIExpression()), !dbg !4022
  store i64 %26, i64* %3, align 8, !dbg !4059, !tbaa !2754
  br label %387, !dbg !4061

45:                                               ; preds = %34, %41
  %46 = phi i32 [ %42, %41 ], [ 0, %34 ]
  %47 = phi i64 [ %26, %41 ], [ 1, %34 ]
  %48 = load i8, i8* %27, align 1, !dbg !4062, !tbaa !658
  %49 = icmp eq i8 %48, 0, !dbg !4063
  br i1 %49, label %384, label %50, !dbg !4064

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32, !dbg !4062
  %52 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %51) #35, !dbg !4065
  %53 = icmp eq i8* %52, null, !dbg !4065
  br i1 %53, label %54, label %56, !dbg !4067

54:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %26, metadata !4015, metadata !DIExpression()), !dbg !4022
  store i64 %47, i64* %3, align 8, !dbg !4068, !tbaa !2754
  %55 = or i32 %46, 2, !dbg !4070
  br label %387, !dbg !4071

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !4017, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 1, metadata !4020, metadata !DIExpression()), !dbg !4072
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
  ], !dbg !4073

57:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  %58 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #35, !dbg !4074
  %59 = icmp eq i8* %58, null, !dbg !4074
  br i1 %59, label %69, label %60, !dbg !4077

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !4078
  %62 = load i8, i8* %61, align 1, !dbg !4078, !tbaa !658
  switch i8 %62, label %69 [
    i8 105, label %63
    i8 66, label %68
    i8 68, label %68
  ], !dbg !4079

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !4080
  %65 = load i8, i8* %64, align 1, !dbg !4080, !tbaa !658
  %66 = icmp eq i8 %65, 66, !dbg !4083
  %67 = select i1 %66, i64 3, i64 1, !dbg !4084
  br label %69, !dbg !4084

68:                                               ; preds = %60, %60
  call void @llvm.dbg.value(metadata i32 1000, metadata !4017, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 2, metadata !4020, metadata !DIExpression()), !dbg !4072
  br label %69, !dbg !4085

69:                                               ; preds = %63, %57, %60, %68, %56
  %70 = phi i64 [ 1024, %56 ], [ 1024, %60 ], [ 1000, %68 ], [ 1024, %57 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %56 ], [ 1, %60 ], [ 2, %68 ], [ 1, %57 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4020, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 undef, metadata !4017, metadata !DIExpression()), !dbg !4072
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
  ], !dbg !4086

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4105
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4105
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4107
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !4107
  %75 = mul i64 %47, %70, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %75, metadata !4104, metadata !DIExpression()) #34, !dbg !4105
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !4105
  call void @llvm.dbg.value(metadata i1 %74, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i1 %74, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4105
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4105
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76) #34, !dbg !4107
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4107
  %79 = mul i64 %76, %70, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %79, metadata !4104, metadata !DIExpression()) #34, !dbg !4105
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !4105
  %81 = or i1 %74, %78, !dbg !4109
  call void @llvm.dbg.value(metadata i1 %81, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i1 %81, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4105
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4105
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80) #34, !dbg !4107
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !4107
  %84 = mul i64 %80, %70, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %84, metadata !4104, metadata !DIExpression()) #34, !dbg !4105
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !4105
  %86 = or i1 %81, %83, !dbg !4109
  call void @llvm.dbg.value(metadata i1 %86, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i1 %86, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4105
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4105
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85) #34, !dbg !4107
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !4107
  %89 = mul i64 %85, %70, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %89, metadata !4104, metadata !DIExpression()) #34, !dbg !4105
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !4105
  %91 = or i1 %86, %88, !dbg !4109
  call void @llvm.dbg.value(metadata i1 %91, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i1 %91, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4105
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4105
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90) #34, !dbg !4107
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !4107
  %94 = mul i64 %90, %70, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %94, metadata !4104, metadata !DIExpression()) #34, !dbg !4105
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !4105
  %96 = or i1 %91, %93, !dbg !4109
  call void @llvm.dbg.value(metadata i1 %96, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i1 %96, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4105
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4105
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95) #34, !dbg !4107
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !4107
  %99 = mul i64 %95, %70, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %99, metadata !4104, metadata !DIExpression()) #34, !dbg !4105
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4105
  %101 = or i1 %96, %98, !dbg !4109
  call void @llvm.dbg.value(metadata i1 %101, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i1 %101, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4105
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4105
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100) #34, !dbg !4107
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !4107
  %104 = mul i64 %100, %70, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %104, metadata !4104, metadata !DIExpression()) #34, !dbg !4105
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !4105
  %106 = or i1 %101, %103, !dbg !4109
  %107 = zext i1 %106 to i32, !dbg !4109
  call void @llvm.dbg.value(metadata i32 %107, metadata !4087, metadata !DIExpression()) #34, !dbg !4095
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4095
  br label %373, !dbg !4110

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 8, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4113
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4115
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !4115
  %111 = mul i64 %47, %70, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %111, metadata !4104, metadata !DIExpression()) #34, !dbg !4113
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !4113
  call void @llvm.dbg.value(metadata i1 %110, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i1 %110, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4113
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112) #34, !dbg !4115
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4115
  %115 = mul i64 %112, %70, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %115, metadata !4104, metadata !DIExpression()) #34, !dbg !4113
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !4113
  %117 = or i1 %110, %114, !dbg !4116
  call void @llvm.dbg.value(metadata i1 %117, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i1 %117, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4113
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116) #34, !dbg !4115
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !4115
  %120 = mul i64 %116, %70, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %120, metadata !4104, metadata !DIExpression()) #34, !dbg !4113
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !4113
  %122 = or i1 %117, %119, !dbg !4116
  call void @llvm.dbg.value(metadata i1 %122, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i1 %122, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4113
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121) #34, !dbg !4115
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !4115
  %125 = mul i64 %121, %70, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %125, metadata !4104, metadata !DIExpression()) #34, !dbg !4113
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !4113
  %127 = or i1 %122, %124, !dbg !4116
  call void @llvm.dbg.value(metadata i1 %127, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i1 %127, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4113
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126) #34, !dbg !4115
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !4115
  %130 = mul i64 %126, %70, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %130, metadata !4104, metadata !DIExpression()) #34, !dbg !4113
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !4113
  %132 = or i1 %127, %129, !dbg !4116
  call void @llvm.dbg.value(metadata i1 %132, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i1 %132, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4113
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131) #34, !dbg !4115
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !4115
  %135 = mul i64 %131, %70, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %135, metadata !4104, metadata !DIExpression()) #34, !dbg !4113
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !4113
  %137 = or i1 %132, %134, !dbg !4116
  call void @llvm.dbg.value(metadata i1 %137, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i1 %137, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4113
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136) #34, !dbg !4115
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !4115
  %140 = mul i64 %136, %70, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %140, metadata !4104, metadata !DIExpression()) #34, !dbg !4113
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !4113
  %142 = or i1 %137, %139, !dbg !4116
  call void @llvm.dbg.value(metadata i1 %142, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i1 %142, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4113
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141) #34, !dbg !4115
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !4115
  %145 = mul i64 %141, %70, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %145, metadata !4104, metadata !DIExpression()) #34, !dbg !4113
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !4113
  %147 = or i1 %142, %144, !dbg !4116
  %148 = zext i1 %147 to i32, !dbg !4116
  call void @llvm.dbg.value(metadata i32 %148, metadata !4087, metadata !DIExpression()) #34, !dbg !4111
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4111
  br label %373, !dbg !4110

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 9, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 8, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4119
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4119
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4121
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !4121
  %152 = mul i64 %47, %70, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %152, metadata !4104, metadata !DIExpression()) #34, !dbg !4119
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !4119
  call void @llvm.dbg.value(metadata i1 %151, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 8, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i1 %151, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 8, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4119
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4119
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153) #34, !dbg !4121
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !4121
  %156 = mul i64 %153, %70, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %156, metadata !4104, metadata !DIExpression()) #34, !dbg !4119
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !4119
  %158 = or i1 %151, %155, !dbg !4122
  call void @llvm.dbg.value(metadata i1 %158, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i1 %158, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4119
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4119
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157) #34, !dbg !4121
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !4121
  %161 = mul i64 %157, %70, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %161, metadata !4104, metadata !DIExpression()) #34, !dbg !4119
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !4119
  %163 = or i1 %158, %160, !dbg !4122
  call void @llvm.dbg.value(metadata i1 %163, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i1 %163, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4119
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4119
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162) #34, !dbg !4121
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4121
  %166 = mul i64 %162, %70, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %166, metadata !4104, metadata !DIExpression()) #34, !dbg !4119
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4119
  %168 = or i1 %163, %165, !dbg !4122
  call void @llvm.dbg.value(metadata i1 %168, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i1 %168, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4119
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4119
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167) #34, !dbg !4121
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !4121
  %171 = mul i64 %167, %70, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %171, metadata !4104, metadata !DIExpression()) #34, !dbg !4119
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !4119
  %173 = or i1 %168, %170, !dbg !4122
  call void @llvm.dbg.value(metadata i1 %173, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i1 %173, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4119
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4119
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172) #34, !dbg !4121
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !4121
  %176 = mul i64 %172, %70, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %176, metadata !4104, metadata !DIExpression()) #34, !dbg !4119
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !4119
  %178 = or i1 %173, %175, !dbg !4122
  call void @llvm.dbg.value(metadata i1 %178, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i1 %178, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4119
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4119
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177) #34, !dbg !4121
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !4121
  %181 = mul i64 %177, %70, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %181, metadata !4104, metadata !DIExpression()) #34, !dbg !4119
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !4119
  %183 = or i1 %178, %180, !dbg !4122
  call void @llvm.dbg.value(metadata i1 %183, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i1 %183, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4119
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4119
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182) #34, !dbg !4121
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4121
  %186 = mul i64 %182, %70, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %186, metadata !4104, metadata !DIExpression()) #34, !dbg !4119
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !4119
  %188 = or i1 %183, %185, !dbg !4122
  call void @llvm.dbg.value(metadata i1 %188, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i1 %188, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4119
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4119
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187) #34, !dbg !4121
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !4121
  %191 = mul i64 %187, %70, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %191, metadata !4104, metadata !DIExpression()) #34, !dbg !4119
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !4119
  %193 = or i1 %188, %190, !dbg !4122
  %194 = zext i1 %193 to i32, !dbg !4122
  call void @llvm.dbg.value(metadata i32 %194, metadata !4087, metadata !DIExpression()) #34, !dbg !4117
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4117
  br label %373, !dbg !4110

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 10, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 9, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4127
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !4127
  %198 = mul i64 %47, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %198, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !4125
  call void @llvm.dbg.value(metadata i1 %197, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 9, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %197, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 9, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 8, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199) #34, !dbg !4127
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4127
  %202 = mul i64 %199, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %202, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4125
  %204 = or i1 %197, %201, !dbg !4128
  call void @llvm.dbg.value(metadata i1 %204, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 8, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %204, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 8, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203) #34, !dbg !4127
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4127
  %207 = mul i64 %203, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %207, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !4125
  %209 = or i1 %204, %206, !dbg !4128
  call void @llvm.dbg.value(metadata i1 %209, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %209, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 7, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208) #34, !dbg !4127
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !4127
  %212 = mul i64 %208, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %212, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !4125
  %214 = or i1 %209, %211, !dbg !4128
  call void @llvm.dbg.value(metadata i1 %214, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %214, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213) #34, !dbg !4127
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !4127
  %217 = mul i64 %213, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %217, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4125
  %219 = or i1 %214, %216, !dbg !4128
  call void @llvm.dbg.value(metadata i1 %219, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %219, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218) #34, !dbg !4127
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4127
  %222 = mul i64 %218, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %222, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4125
  %224 = or i1 %219, %221, !dbg !4128
  call void @llvm.dbg.value(metadata i1 %224, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %224, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223) #34, !dbg !4127
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4127
  %227 = mul i64 %223, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %227, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4125
  %229 = or i1 %224, %226, !dbg !4128
  call void @llvm.dbg.value(metadata i1 %229, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %229, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228) #34, !dbg !4127
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !4127
  %232 = mul i64 %228, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %232, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !4125
  %234 = or i1 %229, %231, !dbg !4128
  call void @llvm.dbg.value(metadata i1 %234, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %234, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233) #34, !dbg !4127
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4127
  %237 = mul i64 %233, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %237, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4125
  %239 = or i1 %234, %236, !dbg !4128
  call void @llvm.dbg.value(metadata i1 %239, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %239, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4125
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238) #34, !dbg !4127
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4127
  %242 = mul i64 %238, %70, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %242, metadata !4104, metadata !DIExpression()) #34, !dbg !4125
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4125
  %244 = or i1 %239, %241, !dbg !4128
  %245 = zext i1 %244 to i32, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %245, metadata !4087, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4123
  br label %373, !dbg !4110

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4131
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4131
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4133
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !4133
  %249 = mul i64 %47, %70, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %249, metadata !4104, metadata !DIExpression()) #34, !dbg !4131
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !4131
  call void @llvm.dbg.value(metadata i1 %248, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %248, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4131
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4131
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250) #34, !dbg !4133
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !4133
  %253 = mul i64 %250, %70, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %253, metadata !4104, metadata !DIExpression()) #34, !dbg !4131
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !4131
  %255 = or i1 %248, %252, !dbg !4134
  call void @llvm.dbg.value(metadata i1 %255, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %255, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4131
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4131
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254) #34, !dbg !4133
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !4133
  %258 = mul i64 %254, %70, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %258, metadata !4104, metadata !DIExpression()) #34, !dbg !4131
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !4131
  %260 = or i1 %255, %257, !dbg !4134
  call void @llvm.dbg.value(metadata i1 %260, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %260, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4131
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4131
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259) #34, !dbg !4133
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4133
  %263 = mul i64 %259, %70, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %263, metadata !4104, metadata !DIExpression()) #34, !dbg !4131
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4131
  %265 = or i1 %260, %262, !dbg !4134
  call void @llvm.dbg.value(metadata i1 %265, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %265, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4131
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4131
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264) #34, !dbg !4133
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4133
  %268 = mul i64 %264, %70, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %268, metadata !4104, metadata !DIExpression()) #34, !dbg !4131
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4131
  %270 = or i1 %265, %267, !dbg !4134
  %271 = zext i1 %270 to i32, !dbg !4134
  call void @llvm.dbg.value(metadata i32 %271, metadata !4087, metadata !DIExpression()) #34, !dbg !4129
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4129
  br label %373, !dbg !4110

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 6, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4137
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4137
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4139
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !4139
  %275 = mul i64 %47, %70, !dbg !4139
  call void @llvm.dbg.value(metadata i64 %275, metadata !4104, metadata !DIExpression()) #34, !dbg !4137
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !4137
  call void @llvm.dbg.value(metadata i1 %274, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i1 %274, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 5, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4137
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4137
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276) #34, !dbg !4139
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !4139
  %279 = mul i64 %276, %70, !dbg !4139
  call void @llvm.dbg.value(metadata i64 %279, metadata !4104, metadata !DIExpression()) #34, !dbg !4137
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !4137
  %281 = or i1 %274, %278, !dbg !4140
  call void @llvm.dbg.value(metadata i1 %281, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i1 %281, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4137
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4137
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280) #34, !dbg !4139
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !4139
  %284 = mul i64 %280, %70, !dbg !4139
  call void @llvm.dbg.value(metadata i64 %284, metadata !4104, metadata !DIExpression()) #34, !dbg !4137
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !4137
  %286 = or i1 %281, %283, !dbg !4140
  call void @llvm.dbg.value(metadata i1 %286, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i1 %286, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4137
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4137
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285) #34, !dbg !4139
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !4139
  %289 = mul i64 %285, %70, !dbg !4139
  call void @llvm.dbg.value(metadata i64 %289, metadata !4104, metadata !DIExpression()) #34, !dbg !4137
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !4137
  %291 = or i1 %286, %288, !dbg !4140
  call void @llvm.dbg.value(metadata i1 %291, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i1 %291, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4137
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4137
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290) #34, !dbg !4139
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !4139
  %294 = mul i64 %290, %70, !dbg !4139
  call void @llvm.dbg.value(metadata i64 %294, metadata !4104, metadata !DIExpression()) #34, !dbg !4137
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !4137
  %296 = or i1 %291, %293, !dbg !4140
  call void @llvm.dbg.value(metadata i1 %296, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i1 %296, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4137
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4137
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295) #34, !dbg !4139
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !4139
  %299 = mul i64 %295, %70, !dbg !4139
  call void @llvm.dbg.value(metadata i64 %299, metadata !4104, metadata !DIExpression()) #34, !dbg !4137
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !4137
  %301 = or i1 %296, %298, !dbg !4140
  %302 = zext i1 %301 to i32, !dbg !4140
  call void @llvm.dbg.value(metadata i32 %302, metadata !4087, metadata !DIExpression()) #34, !dbg !4135
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4135
  br label %373, !dbg !4110

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4141
  call void @llvm.dbg.value(metadata i32 512, metadata !4103, metadata !DIExpression()) #34, !dbg !4141
  %304 = icmp ugt i64 %47, 36028797018963967, !dbg !4143
  %305 = shl i64 %47, 9, !dbg !4143
  call void @llvm.dbg.value(metadata i64 %305, metadata !4104, metadata !DIExpression()) #34, !dbg !4141
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !4141
  %307 = zext i1 %304 to i32, !dbg !4141
  call void @llvm.dbg.value(metadata i32 %307, metadata !4021, metadata !DIExpression()), !dbg !4072
  br label %373, !dbg !4144

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4145
  call void @llvm.dbg.value(metadata i32 1024, metadata !4103, metadata !DIExpression()) #34, !dbg !4145
  %309 = icmp ugt i64 %47, 18014398509481983, !dbg !4147
  %310 = shl i64 %47, 10, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %310, metadata !4104, metadata !DIExpression()) #34, !dbg !4145
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !4145
  %312 = zext i1 %309 to i32, !dbg !4145
  call void @llvm.dbg.value(metadata i32 %312, metadata !4021, metadata !DIExpression()), !dbg !4072
  br label %373, !dbg !4148

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4092, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 undef, metadata !4093, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4151
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4153
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !4153
  %316 = mul i64 %47, %70, !dbg !4153
  call void @llvm.dbg.value(metadata i64 %316, metadata !4104, metadata !DIExpression()) #34, !dbg !4151
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !4151
  call void @llvm.dbg.value(metadata i1 %315, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i1 %315, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4151
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317) #34, !dbg !4153
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !4153
  %320 = mul i64 %317, %70, !dbg !4153
  call void @llvm.dbg.value(metadata i64 %320, metadata !4104, metadata !DIExpression()) #34, !dbg !4151
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !4151
  %322 = or i1 %315, %319, !dbg !4154
  call void @llvm.dbg.value(metadata i1 %322, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i1 %322, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4151
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321) #34, !dbg !4153
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !4153
  %325 = mul i64 %321, %70, !dbg !4153
  call void @llvm.dbg.value(metadata i64 %325, metadata !4104, metadata !DIExpression()) #34, !dbg !4151
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !4151
  %327 = or i1 %322, %324, !dbg !4154
  %328 = zext i1 %327 to i32, !dbg !4154
  call void @llvm.dbg.value(metadata i32 %328, metadata !4087, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4149
  br label %373, !dbg !4110

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4092, metadata !DIExpression()) #34, !dbg !4155
  call void @llvm.dbg.value(metadata i32 undef, metadata !4093, metadata !DIExpression()) #34, !dbg !4155
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4155
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4155
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4155
  call void @llvm.dbg.value(metadata i32 undef, metadata !4094, metadata !DIExpression()) #34, !dbg !4155
  call void @llvm.dbg.value(metadata i32 undef, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4155
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4157
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4157
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4159
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !4159
  %332 = mul i64 %47, %70, !dbg !4159
  call void @llvm.dbg.value(metadata i64 %332, metadata !4104, metadata !DIExpression()) #34, !dbg !4157
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !4157
  %334 = zext i1 %331 to i32, !dbg !4157
  call void @llvm.dbg.value(metadata i32 %334, metadata !4087, metadata !DIExpression()) #34, !dbg !4155
  call void @llvm.dbg.value(metadata i32 undef, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4155
  br label %373, !dbg !4110

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4092, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 undef, metadata !4093, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4162
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4162
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4164
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !4164
  %338 = mul i64 %47, %70, !dbg !4164
  call void @llvm.dbg.value(metadata i64 %338, metadata !4104, metadata !DIExpression()) #34, !dbg !4162
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !4162
  call void @llvm.dbg.value(metadata i1 %337, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i1 %337, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4162
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4162
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339) #34, !dbg !4164
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !4164
  %342 = mul i64 %339, %70, !dbg !4164
  call void @llvm.dbg.value(metadata i64 %342, metadata !4104, metadata !DIExpression()) #34, !dbg !4162
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !4162
  %344 = or i1 %337, %341, !dbg !4165
  %345 = zext i1 %344 to i32, !dbg !4165
  call void @llvm.dbg.value(metadata i32 %345, metadata !4087, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4160
  br label %373, !dbg !4110

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4092, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 undef, metadata !4093, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 4, metadata !4094, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4168
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4168
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4170
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !4170
  %349 = mul i64 %47, %70, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %349, metadata !4104, metadata !DIExpression()) #34, !dbg !4168
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !4168
  call void @llvm.dbg.value(metadata i1 %348, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i1 %348, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 3, metadata !4094, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4168
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4168
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350) #34, !dbg !4170
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !4170
  %353 = mul i64 %350, %70, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %353, metadata !4104, metadata !DIExpression()) #34, !dbg !4168
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !4168
  %355 = or i1 %348, %352, !dbg !4171
  call void @llvm.dbg.value(metadata i1 %355, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i1 %355, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 2, metadata !4094, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4168
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4168
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354) #34, !dbg !4170
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !4170
  %358 = mul i64 %354, %70, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %358, metadata !4104, metadata !DIExpression()) #34, !dbg !4168
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !4168
  %360 = or i1 %355, %357, !dbg !4171
  call void @llvm.dbg.value(metadata i1 %360, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i1 %360, metadata !4087, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 1, metadata !4094, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4168
  call void @llvm.dbg.value(metadata i32 undef, metadata !4103, metadata !DIExpression()) #34, !dbg !4168
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359) #34, !dbg !4170
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !4170
  %363 = mul i64 %359, %70, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %363, metadata !4104, metadata !DIExpression()) #34, !dbg !4168
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !4168
  %365 = or i1 %360, %362, !dbg !4171
  %366 = zext i1 %365 to i32, !dbg !4171
  call void @llvm.dbg.value(metadata i32 %366, metadata !4087, metadata !DIExpression()) #34, !dbg !4166
  call void @llvm.dbg.value(metadata i32 0, metadata !4094, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4166
  br label %373, !dbg !4110

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4098, metadata !DIExpression()) #34, !dbg !4172
  call void @llvm.dbg.value(metadata i32 2, metadata !4103, metadata !DIExpression()) #34, !dbg !4172
  %368 = shl i64 %47, 1, !dbg !4174
  call void @llvm.dbg.value(metadata i64 %368, metadata !4104, metadata !DIExpression()) #34, !dbg !4172
  %369 = icmp sgt i64 %47, -1, !dbg !4172
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !4172
  %371 = lshr i64 %47, 63, !dbg !4172
  %372 = trunc i64 %371 to i32, !dbg !4172
  call void @llvm.dbg.value(metadata i32 %372, metadata !4021, metadata !DIExpression()), !dbg !4072
  br label %373, !dbg !4175

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %47, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !4022
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !4176
  call void @llvm.dbg.value(metadata i32 %375, metadata !4021, metadata !DIExpression()), !dbg !4072
  %376 = or i32 %375, %46, !dbg !4110
  call void @llvm.dbg.value(metadata i32 %376, metadata !4016, metadata !DIExpression()), !dbg !4022
  %377 = getelementptr inbounds i8, i8* %27, i64 %71, !dbg !4177
  store i8* %377, i8** %21, align 8, !dbg !4177, !tbaa !555
  %378 = load i8, i8* %377, align 1, !dbg !4178, !tbaa !658
  %379 = icmp eq i8 %378, 0, !dbg !4178
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !4180
  call void @llvm.dbg.value(metadata i32 %46, metadata !4016, metadata !DIExpression()), !dbg !4022
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %26, metadata !4015, metadata !DIExpression()), !dbg !4022
  store i64 %47, i64* %3, align 8, !dbg !4181, !tbaa !2754
  %383 = or i32 %46, 2, !dbg !4182
  call void @llvm.dbg.value(metadata i32 %46, metadata !4016, metadata !DIExpression()), !dbg !4022
  br label %387

384:                                              ; preds = %373, %45
  %385 = phi i64 [ %47, %45 ], [ %374, %373 ], !dbg !4183
  %386 = phi i32 [ %46, %45 ], [ %381, %373 ], !dbg !4184
  call void @llvm.dbg.value(metadata i32 %386, metadata !4016, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i64 %385, metadata !4015, metadata !DIExpression()), !dbg !4022
  store i64 %385, i64* %3, align 8, !dbg !4185, !tbaa !2754
  br label %387, !dbg !4186

387:                                              ; preds = %44, %54, %384, %34, %31, %29, %38, %382, %23
  %388 = phi i32 [ 4, %23 ], [ %386, %384 ], [ %383, %382 ], [ %55, %54 ], [ %42, %44 ], [ 4, %34 ], [ 4, %31 ], [ 4, %29 ], [ 4, %38 ], !dbg !4022
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #34, !dbg !4187
  ret i32 %388, !dbg !4187
}

; Function Attrs: nounwind
declare !dbg !4188 i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !4193 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4231, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i8* %1, metadata !4232, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 0, metadata !4234, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i8 0, metadata !4235, metadata !DIExpression()), !dbg !4255
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4256
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #34, !dbg !4256
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4236, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i8* %1, metadata !4240, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8* %4, metadata !4242, metadata !DIExpression()), !dbg !4258
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4259

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4258
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4260
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4255
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4261
  call void @llvm.dbg.value(metadata i32 %11, metadata !4233, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %10, metadata !4234, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i8* %9, metadata !4242, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8* %8, metadata !4240, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8 poison, metadata !4235, metadata !DIExpression()), !dbg !4255
  %12 = load i8, i8* %8, align 1, !dbg !4262, !tbaa !658
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4263

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4233, metadata !DIExpression()), !dbg !4255
  %14 = icmp ult i8* %9, %5, !dbg !4264
  br i1 %14, label %15, label %47, !dbg !4267

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4268
  call void @llvm.dbg.value(metadata i8* %16, metadata !4242, metadata !DIExpression()), !dbg !4258
  store i8 114, i8* %9, align 1, !dbg !4269, !tbaa !658
  br label %47, !dbg !4270

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4233, metadata !DIExpression()), !dbg !4255
  %18 = or i32 %10, 576, !dbg !4271
  call void @llvm.dbg.value(metadata i32 %18, metadata !4234, metadata !DIExpression()), !dbg !4255
  %19 = icmp ult i8* %9, %5, !dbg !4272
  br i1 %19, label %20, label %47, !dbg !4274

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4275
  call void @llvm.dbg.value(metadata i8* %21, metadata !4242, metadata !DIExpression()), !dbg !4258
  store i8 119, i8* %9, align 1, !dbg !4276, !tbaa !658
  br label %47, !dbg !4277

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4233, metadata !DIExpression()), !dbg !4255
  %23 = or i32 %10, 1088, !dbg !4278
  call void @llvm.dbg.value(metadata i32 %23, metadata !4234, metadata !DIExpression()), !dbg !4255
  %24 = icmp ult i8* %9, %5, !dbg !4279
  br i1 %24, label %25, label %47, !dbg !4281

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %26, metadata !4242, metadata !DIExpression()), !dbg !4258
  store i8 97, i8* %9, align 1, !dbg !4283, !tbaa !658
  br label %47, !dbg !4284

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4234, metadata !DIExpression()), !dbg !4255
  %28 = icmp ult i8* %9, %5, !dbg !4285
  br i1 %28, label %29, label %47, !dbg !4287

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4288
  call void @llvm.dbg.value(metadata i8* %30, metadata !4242, metadata !DIExpression()), !dbg !4258
  store i8 98, i8* %9, align 1, !dbg !4289, !tbaa !658
  br label %47, !dbg !4290

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4233, metadata !DIExpression()), !dbg !4255
  %32 = icmp ult i8* %9, %5, !dbg !4291
  br i1 %32, label %33, label %47, !dbg !4293

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4294
  call void @llvm.dbg.value(metadata i8* %34, metadata !4242, metadata !DIExpression()), !dbg !4258
  store i8 43, i8* %9, align 1, !dbg !4295, !tbaa !658
  br label %47, !dbg !4296

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4297
  call void @llvm.dbg.value(metadata i32 %36, metadata !4234, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i8 1, metadata !4235, metadata !DIExpression()), !dbg !4255
  br label %47, !dbg !4298

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4299
  call void @llvm.dbg.value(metadata i32 %38, metadata !4234, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i8 1, metadata !4235, metadata !DIExpression()), !dbg !4255
  br label %47, !dbg !4300

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #35, !dbg !4301
  call void @llvm.dbg.value(metadata i64 %40, metadata !4243, metadata !DIExpression()), !dbg !4302
  %41 = ptrtoint i8* %5 to i64, !dbg !4303
  %42 = ptrtoint i8* %9 to i64, !dbg !4303
  %43 = sub i64 %41, %42, !dbg !4303
  %44 = icmp ugt i64 %40, %43, !dbg !4305
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %45, metadata !4243, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i8* %9, metadata !4307, metadata !DIExpression()) #34, !dbg !4312
  call void @llvm.dbg.value(metadata i8* %8, metadata !4310, metadata !DIExpression()) #34, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %45, metadata !4311, metadata !DIExpression()) #34, !dbg !4312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #34, !dbg !4314
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4315
  call void @llvm.dbg.value(metadata i8* %46, metadata !4242, metadata !DIExpression()), !dbg !4258
  br label %53, !dbg !4316

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4258
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4255
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4255
  call void @llvm.dbg.value(metadata i32 %51, metadata !4233, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %50, metadata !4234, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i8* %49, metadata !4242, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8 poison, metadata !4235, metadata !DIExpression()), !dbg !4255
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4317
  call void @llvm.dbg.value(metadata i8* %52, metadata !4240, metadata !DIExpression()), !dbg !4258
  br label %6, !dbg !4318, !llvm.loop !4319

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4258
  call void @llvm.dbg.value(metadata i8* %54, metadata !4242, metadata !DIExpression()), !dbg !4258
  store i8 0, i8* %54, align 1, !dbg !4321, !tbaa !658
  br i1 %7, label %55, label %66, !dbg !4322

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4323
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #34, !dbg !4324
  call void @llvm.dbg.value(metadata i32 %57, metadata !4248, metadata !DIExpression()), !dbg !4325
  %58 = icmp slt i32 %57, 0, !dbg !4326
  br i1 %58, label %68, label %59, !dbg !4328

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #34, !dbg !4329
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4251, metadata !DIExpression()), !dbg !4325
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4330
  br i1 %61, label %62, label %68, !dbg !4331

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #37, !dbg !4332
  %64 = load i32, i32* %63, align 4, !dbg !4332, !tbaa !649
  call void @llvm.dbg.value(metadata i32 %64, metadata !4252, metadata !DIExpression()), !dbg !4333
  %65 = call i32 @close(i32 noundef %57) #34, !dbg !4334
  store i32 %64, i32* %63, align 4, !dbg !4335, !tbaa !649
  br label %68, !dbg !4336

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4337, metadata !DIExpression()) #34, !dbg !4341
  call void @llvm.dbg.value(metadata i8* %1, metadata !4340, metadata !DIExpression()) #34, !dbg !4341
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #34, !dbg !4343
  br label %68, !dbg !4344

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4255
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #34, !dbg !4345
  ret %struct._IO_FILE* %69, !dbg !4345
}

; Function Attrs: nofree
declare !dbg !4346 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare !dbg !4349 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4352 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4353 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4391, metadata !DIExpression()), !dbg !4396
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !4397
  call void @llvm.dbg.value(metadata i1 undef, metadata !4392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4396
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4398, metadata !DIExpression()), !dbg !4401
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4403
  %4 = load i32, i32* %3, align 8, !dbg !4403, !tbaa !909
  %5 = and i32 %4, 32, !dbg !4404
  %6 = icmp eq i32 %5, 0, !dbg !4404
  call void @llvm.dbg.value(metadata i1 %6, metadata !4394, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4396
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !4405
  %8 = icmp eq i32 %7, 0, !dbg !4406
  call void @llvm.dbg.value(metadata i1 %8, metadata !4395, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4396
  br i1 %6, label %9, label %19, !dbg !4407

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4409
  call void @llvm.dbg.value(metadata i1 %10, metadata !4392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4396
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4410
  %12 = xor i1 %8, true, !dbg !4410
  %13 = sext i1 %12 to i32, !dbg !4410
  br i1 %11, label %22, label %14, !dbg !4410

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !4411
  %16 = load i32, i32* %15, align 4, !dbg !4411, !tbaa !649
  %17 = icmp ne i32 %16, 9, !dbg !4412
  %18 = sext i1 %17 to i32, !dbg !4413
  br label %22, !dbg !4413

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4414

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !4416
  store i32 0, i32* %21, align 4, !dbg !4418, !tbaa !649
  br label %22, !dbg !4416

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4396
  ret i32 %23, !dbg !4419
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4420 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4425, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i8* %1, metadata !4426, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %2, metadata !4427, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4428, metadata !DIExpression()), !dbg !4430
  %5 = icmp eq i8* %1, null, !dbg !4431
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4433
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), i8* %1, !dbg !4433
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4433
  call void @llvm.dbg.value(metadata i64 %8, metadata !4427, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i8* %7, metadata !4426, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32* %6, metadata !4425, metadata !DIExpression()), !dbg !4430
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4434
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4436
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4428, metadata !DIExpression()), !dbg !4430
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !4437
  call void @llvm.dbg.value(metadata i64 %11, metadata !4429, metadata !DIExpression()), !dbg !4430
  %12 = icmp ult i64 %11, -3, !dbg !4438
  br i1 %12, label %13, label %18, !dbg !4440

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !4441
  %15 = icmp eq i32 %14, 0, !dbg !4441
  br i1 %15, label %16, label %30, !dbg !4442

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4443, metadata !DIExpression()) #34, !dbg !4448
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4450, metadata !DIExpression()) #34, !dbg !4455
  call void @llvm.dbg.value(metadata i32 0, metadata !4453, metadata !DIExpression()) #34, !dbg !4455
  call void @llvm.dbg.value(metadata i64 8, metadata !4454, metadata !DIExpression()) #34, !dbg !4455
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4457
  store i64 0, i64* %17, align 1, !dbg !4457
  br label %30, !dbg !4458

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4459
  br i1 %19, label %20, label %21, !dbg !4461

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !4462
  unreachable, !dbg !4462

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4463

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !4465
  br i1 %24, label %30, label %25, !dbg !4466

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4467
  br i1 %26, label %30, label %27, !dbg !4470

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4471, !tbaa !658
  %29 = zext i8 %28 to i32, !dbg !4472
  store i32 %29, i32* %6, align 4, !dbg !4473, !tbaa !649
  br label %30, !dbg !4474

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4430
  ret i64 %31, !dbg !4475
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4476 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4481 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4483, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 %1, metadata !4484, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 %2, metadata !4485, metadata !DIExpression()), !dbg !4487
  %4 = icmp eq i64 %2, 0, !dbg !4488
  br i1 %4, label %8, label %5, !dbg !4488

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4488
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4488
  br i1 %7, label %13, label %8, !dbg !4488

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4486, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4487
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4486, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4487
  %9 = mul i64 %2, %1, !dbg !4488
  call void @llvm.dbg.value(metadata i64 %9, metadata !4486, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i8* %0, metadata !4490, metadata !DIExpression()) #34, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %9, metadata !4493, metadata !DIExpression()) #34, !dbg !4494
  %10 = icmp eq i64 %9, 0, !dbg !4496
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4496
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !4497
  br label %15, !dbg !4498

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4486, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4487
  %14 = tail call i32* @__errno_location() #37, !dbg !4499
  store i32 12, i32* %14, align 4, !dbg !4501, !tbaa !649
  br label %15, !dbg !4502

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4487
  ret i8* %16, !dbg !4503
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4504 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4508, metadata !DIExpression()), !dbg !4513
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4514
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4514
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4509, metadata !DIExpression()), !dbg !4515
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !4516
  %5 = icmp eq i32 %4, 0, !dbg !4516
  br i1 %5, label %6, label %13, !dbg !4518

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4519, metadata !DIExpression()) #34, !dbg !4523
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), metadata !4522, metadata !DIExpression()) #34, !dbg !4523
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), i64 2), !dbg !4526
  %8 = icmp eq i32 %7, 0, !dbg !4527
  br i1 %8, label %12, label %9, !dbg !4528

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4519, metadata !DIExpression()) #34, !dbg !4529
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), metadata !4522, metadata !DIExpression()) #34, !dbg !4529
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 6), !dbg !4531
  %11 = icmp eq i32 %10, 0, !dbg !4532
  br i1 %11, label %12, label %13, !dbg !4533

12:                                               ; preds = %9, %6
  br label %13, !dbg !4534

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4513
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4535
  ret i1 %14, !dbg !4535
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4540, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i8* %1, metadata !4541, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %2, metadata !4542, metadata !DIExpression()), !dbg !4543
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !4544
  ret i32 %4, !dbg !4545
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4550, metadata !DIExpression()), !dbg !4551
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !4552
  ret i8* %2, !dbg !4553
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4554 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4556, metadata !DIExpression()), !dbg !4558
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4559
  call void @llvm.dbg.value(metadata i8* %2, metadata !4557, metadata !DIExpression()), !dbg !4558
  ret i8* %2, !dbg !4560
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4561 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4563, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i8* %1, metadata !4564, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %2, metadata !4565, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 %0, metadata !4556, metadata !DIExpression()) #34, !dbg !4571
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4573
  call void @llvm.dbg.value(metadata i8* %4, metadata !4557, metadata !DIExpression()) #34, !dbg !4571
  call void @llvm.dbg.value(metadata i8* %4, metadata !4566, metadata !DIExpression()), !dbg !4570
  %5 = icmp eq i8* %4, null, !dbg !4574
  br i1 %5, label %6, label %9, !dbg !4575

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4576
  br i1 %7, label %19, label %8, !dbg !4579

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4580, !tbaa !658
  br label %19, !dbg !4581

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !4582
  call void @llvm.dbg.value(metadata i64 %10, metadata !4567, metadata !DIExpression()), !dbg !4583
  %11 = icmp ult i64 %10, %2, !dbg !4584
  br i1 %11, label %12, label %14, !dbg !4586

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4587
  call void @llvm.dbg.value(metadata i8* %1, metadata !4589, metadata !DIExpression()) #34, !dbg !4594
  call void @llvm.dbg.value(metadata i8* %4, metadata !4592, metadata !DIExpression()) #34, !dbg !4594
  call void @llvm.dbg.value(metadata i64 %13, metadata !4593, metadata !DIExpression()) #34, !dbg !4594
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !4596
  br label %19, !dbg !4597

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4598
  br i1 %15, label %19, label %16, !dbg !4601

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4602
  call void @llvm.dbg.value(metadata i8* %1, metadata !4589, metadata !DIExpression()) #34, !dbg !4604
  call void @llvm.dbg.value(metadata i8* %4, metadata !4592, metadata !DIExpression()) #34, !dbg !4604
  call void @llvm.dbg.value(metadata i64 %17, metadata !4593, metadata !DIExpression()) #34, !dbg !4604
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !4606
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4607
  store i8 0, i8* %18, align 1, !dbg !4608, !tbaa !658
  br label %19, !dbg !4609

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4610
  ret i32 %20, !dbg !4611
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
attributes #14 = { argmemonly nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { argmemonly nofree nounwind willreturn writeonly }
attributes #25 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.dbg.cu = !{!2, !254, !259, !266, !428, !448, !451, !453, !456, !458, !460, !307, !317, !345, !462, !420, !468, !499, !501, !512, !519, !521, !434, !523, !526, !528, !530}
!llvm.ident = !{!532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532}
!llvm.module.flags = !{!533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 56, type: !247, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !78, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/fold.c", directory: "/src", checksumkind: CSK_MD5, checksum: "eee9b3e52e2800e339faad5506a934a5")
!4 = !{!5, !11, !18, !33, !47, !56, !60, !63}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 43, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "COUNT_COLUMNS", value: 0)
!9 = !DIEnumerator(name: "COUNT_BYTES", value: 1)
!10 = !DIEnumerator(name: "COUNT_CHARACTERS", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 24, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!15 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!16 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!17 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 46, baseType: !6, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!21 = !DIEnumerator(name: "_ISupper", value: 256)
!22 = !DIEnumerator(name: "_ISlower", value: 512)
!23 = !DIEnumerator(name: "_ISalpha", value: 1024)
!24 = !DIEnumerator(name: "_ISdigit", value: 2048)
!25 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!26 = !DIEnumerator(name: "_ISspace", value: 8192)
!27 = !DIEnumerator(name: "_ISprint", value: 16384)
!28 = !DIEnumerator(name: "_ISgraph", value: 32768)
!29 = !DIEnumerator(name: "_ISblank", value: 1)
!30 = !DIEnumerator(name: "_IScntrl", value: 2)
!31 = !DIEnumerator(name: "_ISpunct", value: 4)
!32 = !DIEnumerator(name: "_ISalnum", value: 8)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !34, line: 42, baseType: !6, size: 32, elements: !35)
!34 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!36 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!37 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!38 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!39 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!40 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!41 = !DIEnumerator(name: "c_quoting_style", value: 5)
!42 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!43 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!44 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!45 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!46 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 44, baseType: !6, size: 32, elements: !49)
!48 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!51 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!52 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!53 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!54 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!55 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 127, baseType: !6, size: 32, elements: !58)
!57 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!58 = !{!59}
!59 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 131, baseType: !6, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 130, baseType: !6, size: 32, elements: !64)
!64 = !{!65}
!65 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!66 = !{!67, !69, !70, !71, !72, !75, !77}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!74 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !{!79, !82, !84, !0, !170, !184, !186, !243, !245}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "break_spaces", scope: !2, file: !3, line: 40, type: !81, isLocal: true, isDefinition: true)
!81 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 51, type: !81, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !86, file: !87, line: 575, type: !70, isLocal: true, isDefinition: true)
!86 = distinct !DISubprogram(name: "oputs_", scope: !87, file: !87, line: 573, type: !88, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!87 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!88 = !DISubroutineType(types: !89)
!89 = !{null, !75, !75}
!90 = !{!91, !92, !93, !96, !97, !98, !99, !103, !104, !105, !106, !108, !164, !165, !166, !168, !169}
!91 = !DILocalVariable(name: "program", arg: 1, scope: !86, file: !87, line: 573, type: !75)
!92 = !DILocalVariable(name: "option", arg: 2, scope: !86, file: !87, line: 573, type: !75)
!93 = !DILocalVariable(name: "term", scope: !94, file: !87, line: 585, type: !75)
!94 = distinct !DILexicalBlock(scope: !95, file: !87, line: 582, column: 5)
!95 = distinct !DILexicalBlock(scope: !86, file: !87, line: 581, column: 7)
!96 = !DILocalVariable(name: "double_space", scope: !86, file: !87, line: 594, type: !81)
!97 = !DILocalVariable(name: "first_word", scope: !86, file: !87, line: 595, type: !75)
!98 = !DILocalVariable(name: "option_text", scope: !86, file: !87, line: 596, type: !75)
!99 = !DILocalVariable(name: "s", scope: !100, file: !87, line: 608, type: !75)
!100 = distinct !DILexicalBlock(scope: !101, file: !87, line: 605, column: 5)
!101 = distinct !DILexicalBlock(scope: !102, file: !87, line: 604, column: 12)
!102 = distinct !DILexicalBlock(scope: !86, file: !87, line: 597, column: 7)
!103 = !DILocalVariable(name: "spaces", scope: !100, file: !87, line: 609, type: !72)
!104 = !DILocalVariable(name: "anchor_len", scope: !86, file: !87, line: 620, type: !72)
!105 = !DILocalVariable(name: "desc_text", scope: !86, file: !87, line: 625, type: !75)
!106 = !DILocalVariable(name: "__ptr", scope: !107, file: !87, line: 644, type: !75)
!107 = distinct !DILexicalBlock(scope: !86, file: !87, line: 644, column: 3)
!108 = !DILocalVariable(name: "__stream", scope: !107, file: !87, line: 644, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !112)
!111 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !114)
!113 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !130, !132, !133, !134, !138, !139, !141, !145, !148, !150, !153, !156, !157, !158, !159, !160}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !112, file: !113, line: 51, baseType: !70, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !112, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !112, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !112, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !112, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !112, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !112, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !112, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !112, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !112, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !112, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !112, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !112, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !113, line: 36, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !112, file: !113, line: 70, baseType: !131, size: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !112, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !112, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !112, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !136, line: 152, baseType: !137)
!136 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!137 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !112, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !112, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!140 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !112, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !112, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !113, line: 43, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !112, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !136, line: 153, baseType: !137)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !112, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !113, line: 37, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !112, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !113, line: 38, flags: DIFlagFwdDecl)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !112, file: !113, line: 93, baseType: !131, size: 64, offset: 1344)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !112, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !112, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !112, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !112, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 160, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 20)
!164 = !DILocalVariable(name: "__cnt", scope: !107, file: !87, line: 644, type: !72)
!165 = !DILocalVariable(name: "url_program", scope: !86, file: !87, line: 648, type: !75)
!166 = !DILocalVariable(name: "__ptr", scope: !167, file: !87, line: 686, type: !75)
!167 = distinct !DILexicalBlock(scope: !86, file: !87, line: 686, column: 3)
!168 = !DILocalVariable(name: "__stream", scope: !167, file: !87, line: 686, type: !109)
!169 = !DILocalVariable(name: "__cnt", scope: !167, file: !87, line: 686, type: !72)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 58, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1792, elements: !182)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !175, line: 50, size: 256, elements: !176)
!175 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!176 = !{!177, !178, !179, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 52, baseType: !75, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !174, file: !175, line: 55, baseType: !70, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !174, file: !175, line: 56, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !174, file: !175, line: 57, baseType: !70, size: 32, offset: 192)
!182 = !{!183}
!183 = !DISubrange(count: 7)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "counting_mode", scope: !2, file: !3, line: 48, type: !5, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "line_out", scope: !188, file: !3, line: 164, type: !240, isLocal: true, isDefinition: true)
!188 = distinct !DISubprogram(name: "fold_file", scope: !3, file: !3, line: 159, type: !189, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!81, !75, !72}
!191 = !{!192, !193, !194, !195, !196, !200, !210, !211, !222, !228, !229, !230, !231, !233, !236, !237, !239}
!192 = !DILocalVariable(name: "filename", arg: 1, scope: !188, file: !3, line: 159, type: !75)
!193 = !DILocalVariable(name: "width", arg: 2, scope: !188, file: !3, line: 159, type: !72)
!194 = !DILocalVariable(name: "istream", scope: !188, file: !3, line: 161, type: !109)
!195 = !DILocalVariable(name: "column", scope: !188, file: !3, line: 162, type: !72)
!196 = !DILocalVariable(name: "offset_out", scope: !188, file: !3, line: 163, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !198, line: 130, baseType: !199)
!198 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !73, line: 35, baseType: !137)
!200 = !DILocalVariable(name: "mbbuf", scope: !188, file: !3, line: 166, type: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !202, line: 50, baseType: !203)
!202 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 43, size: 320, elements: !204)
!204 = !{!205, !206, !207, !208, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !203, file: !202, line: 45, baseType: !67, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !203, file: !202, line: 46, baseType: !109, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !202, line: 47, baseType: !197, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !203, file: !202, line: 48, baseType: !197, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !203, file: !202, line: 49, baseType: !197, size: 64, offset: 256)
!210 = !DILocalVariable(name: "saved_errno", scope: !188, file: !3, line: 167, type: !70)
!211 = !DILocalVariable(name: "g", scope: !188, file: !3, line: 186, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !57, line: 143, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 138, size: 64, elements: !214)
!214 = !{!215, !220, !221}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !213, file: !57, line: 140, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !217, line: 37, baseType: !218)
!217 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !136, line: 57, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !136, line: 42, baseType: !6)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !213, file: !57, line: 141, baseType: !77, size: 8, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !213, file: !57, line: 142, baseType: !77, size: 8, offset: 40)
!222 = !DILocalVariable(name: "space_length", scope: !223, file: !3, line: 205, type: !70)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 204, column: 13)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 203, column: 15)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 199, column: 9)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 198, column: 11)
!227 = distinct !DILexicalBlock(scope: !188, file: !3, line: 188, column: 5)
!228 = !DILocalVariable(name: "logical_end", scope: !223, file: !3, line: 206, type: !197)
!229 = !DILocalVariable(name: "logical_p", scope: !223, file: !3, line: 207, type: !67)
!230 = !DILocalVariable(name: "logical_lim", scope: !223, file: !3, line: 208, type: !67)
!231 = !DILocalVariable(name: "g2", scope: !232, file: !3, line: 210, type: !212)
!232 = distinct !DILexicalBlock(scope: !223, file: !3, line: 210, column: 15)
!233 = !DILocalVariable(name: "printed_p", scope: !234, file: !3, line: 231, type: !67)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 221, column: 17)
!235 = distinct !DILexicalBlock(scope: !223, file: !3, line: 220, column: 19)
!236 = !DILocalVariable(name: "printed_lim", scope: !234, file: !3, line: 232, type: !67)
!237 = !DILocalVariable(name: "g2", scope: !238, file: !3, line: 233, type: !212)
!238 = distinct !DILexicalBlock(scope: !234, file: !3, line: 233, column: 19)
!239 = !DILabel(scope: !227, name: "rescan", file: !3, line: 195)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2097152, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 262144)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "line_in", scope: !188, file: !3, line: 165, type: !240, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "last_character_width", scope: !2, file: !3, line: 54, type: !70, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 288, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 36)
!250 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!251 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "Version", scope: !254, file: !255, line: 3, type: !75, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !256, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!256 = !{!252}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "file_name", scope: !259, file: !260, line: 45, type: !75, isLocal: true, isDefinition: true)
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !261, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!261 = !{!257, !262}
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !259, file: !260, line: 55, type: !81, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !266, file: !267, line: 66, type: !302, isLocal: false, isDefinition: true)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !268, globals: !269, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!268 = !{!69, !77}
!269 = !{!270, !296, !264, !298, !300}
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "old_file_name", scope: !272, file: !267, line: 304, type: !75, isLocal: true, isDefinition: true)
!272 = distinct !DISubprogram(name: "verror_at_line", scope: !267, file: !267, line: 298, type: !273, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !289)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !70, !70, !75, !6, !75, !275}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !276, line: 52, baseType: !277)
!276 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !278, line: 32, baseType: !279)
!278 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !280, baseType: !281)
!280 = !DIFile(filename: "lib/error.c", directory: "/src")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !282, size: 256, elements: !283)
!282 = !DINamespace(name: "std", scope: null)
!283 = !{!284, !285, !286, !287, !288}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !281, file: !280, baseType: !69, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !281, file: !280, baseType: !69, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !281, file: !280, baseType: !69, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !281, file: !280, baseType: !70, size: 32, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !281, file: !280, baseType: !70, size: 32, offset: 224)
!289 = !{!290, !291, !292, !293, !294, !295}
!290 = !DILocalVariable(name: "status", arg: 1, scope: !272, file: !267, line: 298, type: !70)
!291 = !DILocalVariable(name: "errnum", arg: 2, scope: !272, file: !267, line: 298, type: !70)
!292 = !DILocalVariable(name: "file_name", arg: 3, scope: !272, file: !267, line: 298, type: !75)
!293 = !DILocalVariable(name: "line_number", arg: 4, scope: !272, file: !267, line: 298, type: !6)
!294 = !DILocalVariable(name: "message", arg: 5, scope: !272, file: !267, line: 298, type: !75)
!295 = !DILocalVariable(name: "args", arg: 6, scope: !272, file: !267, line: 298, type: !275)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "old_line_number", scope: !272, file: !267, line: 305, type: !6, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "error_message_count", scope: !266, file: !267, line: 69, type: !6, isLocal: false, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !266, file: !267, line: 295, type: !70, isLocal: false, isDefinition: true)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null}
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "program_name", scope: !307, file: !308, line: 31, type: !75, isLocal: false, isDefinition: true)
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !309, globals: !310, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!309 = !{!67}
!310 = !{!305}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "utf07FF", scope: !313, file: !314, line: 46, type: !340, isLocal: true, isDefinition: true)
!313 = distinct !DISubprogram(name: "proper_name_lite", scope: !314, file: !314, line: 38, type: !315, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !319)
!314 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!315 = !DISubroutineType(types: !316)
!316 = !{!75, !75, !75}
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !318, splitDebugInlining: false, nameTableKind: None)
!318 = !{!311}
!319 = !{!320, !321, !322, !323, !324}
!320 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !313, file: !314, line: 38, type: !75)
!321 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !313, file: !314, line: 38, type: !75)
!322 = !DILocalVariable(name: "translation", scope: !313, file: !314, line: 40, type: !75)
!323 = !DILocalVariable(name: "w", scope: !313, file: !314, line: 47, type: !216)
!324 = !DILocalVariable(name: "mbs", scope: !313, file: !314, line: 48, type: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !326, line: 6, baseType: !327)
!326 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !328, line: 21, baseType: !329)
!328 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 13, size: 64, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !329, file: !328, line: 15, baseType: !70, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !329, file: !328, line: 20, baseType: !333, size: 32, offset: 32)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !328, line: 16, size: 32, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !333, file: !328, line: 18, baseType: !6, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !333, file: !328, line: 19, baseType: !337, size: 32)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 4)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 2)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !345, file: !346, line: 76, type: !414, isLocal: false, isDefinition: true)
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !347, retainedTypes: !353, globals: !354, splitDebugInlining: false, nameTableKind: None)
!346 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!347 = !{!33, !348, !18}
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !34, line: 254, baseType: !6, size: 32, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!351 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!352 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!353 = !{!70, !71, !72}
!354 = !{!343, !355, !361, !373, !375, !380, !403, !410, !412}
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !345, file: !346, line: 92, type: !357, isLocal: false, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 320, elements: !359)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!359 = !{!360}
!360 = !DISubrange(count: 10)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !345, file: !346, line: 1040, type: !363, isLocal: false, isDefinition: true)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !346, line: 56, size: 448, elements: !364)
!364 = !{!365, !366, !367, !371, !372}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !363, file: !346, line: 59, baseType: !33, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !346, line: 62, baseType: !70, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !363, file: !346, line: 66, baseType: !368, size: 256, offset: 64)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !363, file: !346, line: 69, baseType: !75, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !363, file: !346, line: 72, baseType: !75, size: 64, offset: 384)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !345, file: !346, line: 107, type: !363, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "slot0", scope: !345, file: !346, line: 831, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 256)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "quote", scope: !382, file: !346, line: 228, type: !401, isLocal: true, isDefinition: true)
!382 = distinct !DISubprogram(name: "gettext_quote", scope: !346, file: !346, line: 197, type: !383, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!75, !75, !33}
!385 = !{!386, !387, !388, !389, !390}
!386 = !DILocalVariable(name: "msgid", arg: 1, scope: !382, file: !346, line: 197, type: !75)
!387 = !DILocalVariable(name: "s", arg: 2, scope: !382, file: !346, line: 197, type: !33)
!388 = !DILocalVariable(name: "translation", scope: !382, file: !346, line: 199, type: !75)
!389 = !DILocalVariable(name: "w", scope: !382, file: !346, line: 229, type: !216)
!390 = !DILocalVariable(name: "mbs", scope: !382, file: !346, line: 230, type: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !326, line: 6, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !328, line: 21, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 13, size: 64, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !393, file: !328, line: 15, baseType: !70, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !393, file: !328, line: 20, baseType: !397, size: 32, offset: 32)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !328, line: 16, size: 32, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !397, file: !328, line: 18, baseType: !6, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !397, file: !328, line: 19, baseType: !337, size: 32)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !402)
!402 = !{!342, !339}
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "slotvec", scope: !345, file: !346, line: 834, type: !405, isLocal: true, isDefinition: true)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !346, line: 823, size: 128, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !406, file: !346, line: 825, baseType: !72, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !406, file: !346, line: 826, baseType: !67, size: 64, offset: 64)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "nslots", scope: !345, file: !346, line: 832, type: !70, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "slotvec0", scope: !345, file: !346, line: 833, type: !406, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 704, elements: !416)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!416 = !{!417}
!417 = !DISubrange(count: 11)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !420, file: !421, line: 26, type: !423, isLocal: false, isDefinition: true)
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !421, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !422, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!422 = !{!418}
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 376, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 47)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "exit_failure", scope: !428, file: !429, line: 24, type: !431, isLocal: false, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !430, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!430 = !{!426}
!431 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "internal_state", scope: !434, file: !435, line: 97, type: !438, isLocal: true, isDefinition: true)
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !436, globals: !437, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!436 = !{!69, !72, !77}
!437 = !{!432}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !326, line: 6, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !328, line: 21, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 13, size: 64, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !440, file: !328, line: 15, baseType: !70, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !440, file: !328, line: 20, baseType: !444, size: 32, offset: 32)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !328, line: 16, size: 32, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !444, file: !328, line: 18, baseType: !6, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !444, file: !328, line: 19, baseType: !337, size: 32)
!448 = distinct !DICompileUnit(language: DW_LANG_C99, file: !449, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !450, splitDebugInlining: false, nameTableKind: None)
!449 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!450 = !{!47}
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!455 = !{!69}
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !463, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !464, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!463 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!464 = !{!465}
!465 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !463, line: 40, baseType: !6, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!468 = distinct !DICompileUnit(language: DW_LANG_C99, file: !469, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !470, retainedTypes: !498, splitDebugInlining: false, nameTableKind: None)
!469 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!470 = !{!471, !483}
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !472, file: !469, line: 188, baseType: !6, size: 32, elements: !481)
!472 = distinct !DISubprogram(name: "x2nrealloc", scope: !469, file: !469, line: 176, type: !473, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !476)
!473 = !DISubroutineType(types: !474)
!474 = !{!69, !69, !475, !72}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!476 = !{!477, !478, !479, !480}
!477 = !DILocalVariable(name: "p", arg: 1, scope: !472, file: !469, line: 176, type: !69)
!478 = !DILocalVariable(name: "pn", arg: 2, scope: !472, file: !469, line: 176, type: !475)
!479 = !DILocalVariable(name: "s", arg: 3, scope: !472, file: !469, line: 176, type: !72)
!480 = !DILocalVariable(name: "n", scope: !472, file: !469, line: 178, type: !72)
!481 = !{!482}
!482 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!483 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !484, file: !469, line: 228, baseType: !6, size: 32, elements: !481)
!484 = distinct !DISubprogram(name: "xpalloc", scope: !469, file: !469, line: 223, type: !485, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !488)
!485 = !DISubroutineType(types: !486)
!486 = !{!69, !69, !487, !197, !199, !197}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497}
!489 = !DILocalVariable(name: "pa", arg: 1, scope: !484, file: !469, line: 223, type: !69)
!490 = !DILocalVariable(name: "pn", arg: 2, scope: !484, file: !469, line: 223, type: !487)
!491 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !484, file: !469, line: 223, type: !197)
!492 = !DILocalVariable(name: "n_max", arg: 4, scope: !484, file: !469, line: 223, type: !199)
!493 = !DILocalVariable(name: "s", arg: 5, scope: !484, file: !469, line: 223, type: !197)
!494 = !DILocalVariable(name: "n0", scope: !484, file: !469, line: 230, type: !197)
!495 = !DILocalVariable(name: "n", scope: !484, file: !469, line: 237, type: !197)
!496 = !DILocalVariable(name: "nbytes", scope: !484, file: !469, line: 248, type: !197)
!497 = !DILocalVariable(name: "adjusted_nbytes", scope: !484, file: !469, line: 252, type: !197)
!498 = !{!67, !69, !81, !137, !74}
!499 = distinct !DICompileUnit(language: DW_LANG_C99, file: !500, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!500 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !502, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !503, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!503 = !{!504, !11}
!504 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !505, line: 30, baseType: !6, size: 32, elements: !506)
!505 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!506 = !{!507, !508, !509, !510, !511}
!507 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!508 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!509 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!510 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!511 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !514, retainedTypes: !515, splitDebugInlining: false, nameTableKind: None)
!513 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!514 = !{!504, !18}
!515 = !{!70, !71, !67, !81, !74, !516}
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !517, line: 102, baseType: !518)
!517 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !136, line: 73, baseType: !74)
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!520 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !525, splitDebugInlining: false, nameTableKind: None)
!524 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!525 = !{!81, !74, !69}
!526 = distinct !DICompileUnit(language: DW_LANG_C99, file: !527, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!527 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!529 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!531 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!532 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!533 = !{i32 7, !"Dwarf Version", i32 5}
!534 = !{i32 2, !"Debug Info Version", i32 3}
!535 = !{i32 1, !"wchar_size", i32 4}
!536 = !{i32 1, !"branch-target-enforcement", i32 0}
!537 = !{i32 1, !"sign-return-address", i32 0}
!538 = !{i32 1, !"sign-return-address-all", i32 0}
!539 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!540 = !{i32 7, !"PIC Level", i32 2}
!541 = !{i32 7, !"PIE Level", i32 2}
!542 = !{i32 7, !"uwtable", i32 1}
!543 = !{i32 7, !"frame-pointer", i32 1}
!544 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 70, type: !545, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !70}
!547 = !{!548}
!548 = !DILocalVariable(name: "status", arg: 1, scope: !544, file: !3, line: 70, type: !70)
!549 = !DILocation(line: 0, scope: !544)
!550 = !DILocation(line: 72, column: 14, scope: !551)
!551 = distinct !DILexicalBlock(scope: !544, file: !3, line: 72, column: 7)
!552 = !DILocation(line: 72, column: 7, scope: !544)
!553 = !DILocation(line: 73, column: 5, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !3, line: 73, column: 5)
!555 = !{!556, !556, i64 0}
!556 = !{!"any pointer", !557, i64 0}
!557 = !{!"omnipotent char", !558, i64 0}
!558 = !{!"Simple C/C++ TBAA"}
!559 = !DILocation(line: 76, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !551, file: !3, line: 75, column: 5)
!561 = !DILocation(line: 80, column: 7, scope: !560)
!562 = !DILocation(line: 729, column: 3, scope: !563, inlinedAt: !565)
!563 = distinct !DISubprogram(name: "emit_stdin_note", scope: !87, file: !87, line: 727, type: !303, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!564 = !{}
!565 = distinct !DILocation(line: 84, column: 7, scope: !560)
!566 = !DILocation(line: 736, column: 3, scope: !567, inlinedAt: !568)
!567 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !87, file: !87, line: 734, type: !303, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!568 = distinct !DILocation(line: 85, column: 7, scope: !560)
!569 = !DILocation(line: 87, column: 7, scope: !560)
!570 = !DILocation(line: 91, column: 7, scope: !560)
!571 = !DILocation(line: 95, column: 7, scope: !560)
!572 = !DILocation(line: 99, column: 7, scope: !560)
!573 = !DILocation(line: 103, column: 7, scope: !560)
!574 = !DILocation(line: 104, column: 7, scope: !560)
!575 = !DILocalVariable(name: "program", arg: 1, scope: !576, file: !87, line: 836, type: !75)
!576 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !87, file: !87, line: 836, type: !577, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !75}
!579 = !{!575, !580, !587, !588, !590, !591}
!580 = !DILocalVariable(name: "infomap", scope: !576, file: !87, line: 838, type: !581)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 896, elements: !182)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !576, file: !87, line: 838, size: 128, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !583, file: !87, line: 838, baseType: !75, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !583, file: !87, line: 838, baseType: !75, size: 64, offset: 64)
!587 = !DILocalVariable(name: "node", scope: !576, file: !87, line: 848, type: !75)
!588 = !DILocalVariable(name: "map_prog", scope: !576, file: !87, line: 849, type: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!590 = !DILocalVariable(name: "lc_messages", scope: !576, file: !87, line: 861, type: !75)
!591 = !DILocalVariable(name: "url_program", scope: !576, file: !87, line: 874, type: !75)
!592 = !DILocation(line: 0, scope: !576, inlinedAt: !593)
!593 = distinct !DILocation(line: 105, column: 7, scope: !560)
!594 = !DILocation(line: 838, column: 3, scope: !576, inlinedAt: !593)
!595 = !DILocation(line: 838, column: 67, scope: !576, inlinedAt: !593)
!596 = !DILocation(line: 849, column: 36, scope: !576, inlinedAt: !593)
!597 = !DILocation(line: 851, column: 3, scope: !576, inlinedAt: !593)
!598 = !DILocalVariable(name: "__s1", arg: 1, scope: !599, file: !600, line: 1359, type: !75)
!599 = distinct !DISubprogram(name: "streq", scope: !600, file: !600, line: 1359, type: !601, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!600 = !DIFile(filename: "./lib/string.h", directory: "/src")
!601 = !DISubroutineType(types: !602)
!602 = !{!81, !75, !75}
!603 = !{!598, !604}
!604 = !DILocalVariable(name: "__s2", arg: 2, scope: !599, file: !600, line: 1359, type: !75)
!605 = !DILocation(line: 0, scope: !599, inlinedAt: !606)
!606 = distinct !DILocation(line: 851, column: 33, scope: !576, inlinedAt: !593)
!607 = !DILocation(line: 1361, column: 11, scope: !599, inlinedAt: !606)
!608 = !DILocation(line: 1361, column: 10, scope: !599, inlinedAt: !606)
!609 = !DILocation(line: 852, column: 13, scope: !576, inlinedAt: !593)
!610 = !DILocation(line: 851, column: 20, scope: !576, inlinedAt: !593)
!611 = !{!612, !556, i64 0}
!612 = !{!"infomap", !556, i64 0, !556, i64 8}
!613 = !DILocation(line: 851, column: 10, scope: !576, inlinedAt: !593)
!614 = !DILocation(line: 851, column: 28, scope: !576, inlinedAt: !593)
!615 = distinct !{!615, !597, !609, !616}
!616 = !{!"llvm.loop.mustprogress"}
!617 = !DILocation(line: 854, column: 17, scope: !618, inlinedAt: !593)
!618 = distinct !DILexicalBlock(scope: !576, file: !87, line: 854, column: 7)
!619 = !{!612, !556, i64 8}
!620 = !DILocation(line: 854, column: 7, scope: !618, inlinedAt: !593)
!621 = !DILocation(line: 854, column: 7, scope: !576, inlinedAt: !593)
!622 = !DILocation(line: 857, column: 3, scope: !576, inlinedAt: !593)
!623 = !DILocation(line: 861, column: 29, scope: !576, inlinedAt: !593)
!624 = !DILocation(line: 862, column: 7, scope: !625, inlinedAt: !593)
!625 = distinct !DILexicalBlock(scope: !576, file: !87, line: 862, column: 7)
!626 = !DILocation(line: 862, column: 19, scope: !625, inlinedAt: !593)
!627 = !DILocation(line: 862, column: 22, scope: !625, inlinedAt: !593)
!628 = !DILocation(line: 862, column: 7, scope: !576, inlinedAt: !593)
!629 = !DILocation(line: 868, column: 7, scope: !630, inlinedAt: !593)
!630 = distinct !DILexicalBlock(scope: !625, file: !87, line: 863, column: 5)
!631 = !DILocation(line: 870, column: 5, scope: !630, inlinedAt: !593)
!632 = !DILocation(line: 0, scope: !599, inlinedAt: !633)
!633 = distinct !DILocation(line: 874, column: 29, scope: !576, inlinedAt: !593)
!634 = !DILocation(line: 875, column: 3, scope: !576, inlinedAt: !593)
!635 = !DILocation(line: 877, column: 3, scope: !576, inlinedAt: !593)
!636 = !DILocation(line: 879, column: 1, scope: !576, inlinedAt: !593)
!637 = !DILocation(line: 107, column: 3, scope: !544)
!638 = !DISubprogram(name: "dcgettext", scope: !639, file: !639, line: 51, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!639 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!640 = !DISubroutineType(types: !641)
!641 = !{!67, !75, !75, !70}
!642 = !DISubprogram(name: "fputs_unlocked", scope: !276, file: !276, line: 691, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!643 = !DISubroutineType(types: !644)
!644 = !{!70, !645, !646}
!645 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!646 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!647 = !DILocation(line: 0, scope: !86)
!648 = !DILocation(line: 581, column: 7, scope: !95)
!649 = !{!650, !650, i64 0}
!650 = !{!"int", !557, i64 0}
!651 = !DILocation(line: 581, column: 19, scope: !95)
!652 = !DILocation(line: 581, column: 7, scope: !86)
!653 = !DILocation(line: 585, column: 26, scope: !94)
!654 = !DILocation(line: 0, scope: !94)
!655 = !DILocation(line: 586, column: 23, scope: !94)
!656 = !DILocation(line: 586, column: 28, scope: !94)
!657 = !DILocation(line: 586, column: 32, scope: !94)
!658 = !{!557, !557, i64 0}
!659 = !DILocation(line: 586, column: 38, scope: !94)
!660 = !DILocation(line: 0, scope: !599, inlinedAt: !661)
!661 = distinct !DILocation(line: 586, column: 41, scope: !94)
!662 = !DILocation(line: 1361, column: 11, scope: !599, inlinedAt: !661)
!663 = !DILocation(line: 1361, column: 10, scope: !599, inlinedAt: !661)
!664 = !DILocation(line: 586, column: 19, scope: !94)
!665 = !DILocation(line: 587, column: 5, scope: !94)
!666 = !DILocation(line: 588, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !86, file: !87, line: 588, column: 7)
!668 = !DILocation(line: 588, column: 7, scope: !86)
!669 = !DILocation(line: 590, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !87, line: 589, column: 5)
!671 = !DILocation(line: 591, column: 7, scope: !670)
!672 = !DILocation(line: 595, column: 37, scope: !86)
!673 = !DILocation(line: 595, column: 35, scope: !86)
!674 = !DILocation(line: 596, column: 29, scope: !86)
!675 = !DILocation(line: 597, column: 8, scope: !102)
!676 = !DILocation(line: 597, column: 7, scope: !86)
!677 = !DILocation(line: 604, column: 24, scope: !101)
!678 = !DILocation(line: 604, column: 12, scope: !102)
!679 = !DILocation(line: 0, scope: !100)
!680 = !DILocation(line: 610, column: 16, scope: !100)
!681 = !DILocation(line: 610, column: 7, scope: !100)
!682 = !DILocation(line: 611, column: 21, scope: !100)
!683 = !{!684, !684, i64 0}
!684 = !{!"short", !557, i64 0}
!685 = !DILocation(line: 611, column: 19, scope: !100)
!686 = !DILocation(line: 611, column: 16, scope: !100)
!687 = !DILocation(line: 610, column: 30, scope: !100)
!688 = distinct !{!688, !681, !682, !616}
!689 = !DILocation(line: 612, column: 18, scope: !690)
!690 = distinct !DILexicalBlock(scope: !100, file: !87, line: 612, column: 11)
!691 = !DILocation(line: 612, column: 11, scope: !100)
!692 = !DILocation(line: 620, column: 23, scope: !86)
!693 = !DILocation(line: 625, column: 39, scope: !86)
!694 = !DILocation(line: 626, column: 3, scope: !86)
!695 = !DILocation(line: 626, column: 10, scope: !86)
!696 = !DILocation(line: 626, column: 21, scope: !86)
!697 = !DILocation(line: 628, column: 44, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !87, line: 628, column: 11)
!699 = distinct !DILexicalBlock(scope: !86, file: !87, line: 627, column: 5)
!700 = !DILocation(line: 628, column: 32, scope: !698)
!701 = !DILocation(line: 628, column: 49, scope: !698)
!702 = !DILocation(line: 628, column: 11, scope: !699)
!703 = !DILocation(line: 630, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !87, line: 630, column: 11)
!705 = !DILocation(line: 630, column: 11, scope: !699)
!706 = !DILocation(line: 632, column: 26, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !87, line: 632, column: 15)
!708 = distinct !DILexicalBlock(scope: !704, file: !87, line: 631, column: 9)
!709 = !DILocation(line: 632, column: 34, scope: !707)
!710 = !DILocation(line: 632, column: 37, scope: !707)
!711 = !DILocation(line: 632, column: 15, scope: !708)
!712 = !DILocation(line: 636, column: 29, scope: !713)
!713 = distinct !DILexicalBlock(scope: !708, file: !87, line: 636, column: 15)
!714 = !DILocation(line: 640, column: 16, scope: !699)
!715 = distinct !{!715, !694, !716, !616}
!716 = !DILocation(line: 641, column: 5, scope: !86)
!717 = !DILocation(line: 644, column: 3, scope: !86)
!718 = !DILocation(line: 0, scope: !599, inlinedAt: !719)
!719 = distinct !DILocation(line: 648, column: 31, scope: !86)
!720 = !DILocation(line: 0, scope: !599, inlinedAt: !721)
!721 = distinct !DILocation(line: 649, column: 31, scope: !86)
!722 = !DILocation(line: 0, scope: !599, inlinedAt: !723)
!723 = distinct !DILocation(line: 650, column: 31, scope: !86)
!724 = !DILocation(line: 0, scope: !599, inlinedAt: !725)
!725 = distinct !DILocation(line: 651, column: 31, scope: !86)
!726 = !DILocation(line: 0, scope: !599, inlinedAt: !727)
!727 = distinct !DILocation(line: 652, column: 31, scope: !86)
!728 = !DILocation(line: 0, scope: !599, inlinedAt: !729)
!729 = distinct !DILocation(line: 653, column: 31, scope: !86)
!730 = !DILocation(line: 0, scope: !599, inlinedAt: !731)
!731 = distinct !DILocation(line: 654, column: 31, scope: !86)
!732 = !DILocation(line: 0, scope: !599, inlinedAt: !733)
!733 = distinct !DILocation(line: 655, column: 31, scope: !86)
!734 = !DILocation(line: 0, scope: !599, inlinedAt: !735)
!735 = distinct !DILocation(line: 656, column: 31, scope: !86)
!736 = !DILocation(line: 0, scope: !599, inlinedAt: !737)
!737 = distinct !DILocation(line: 657, column: 31, scope: !86)
!738 = !DILocation(line: 663, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !86, file: !87, line: 663, column: 7)
!740 = !DILocation(line: 664, column: 7, scope: !739)
!741 = !DILocation(line: 664, column: 10, scope: !739)
!742 = !DILocation(line: 663, column: 7, scope: !86)
!743 = !DILocation(line: 669, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !87, line: 665, column: 5)
!745 = !DILocation(line: 671, column: 5, scope: !744)
!746 = !DILocation(line: 676, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !739, file: !87, line: 673, column: 5)
!748 = !DILocation(line: 679, column: 3, scope: !86)
!749 = !DILocation(line: 683, column: 3, scope: !86)
!750 = !DILocation(line: 686, column: 3, scope: !86)
!751 = !DILocation(line: 688, column: 3, scope: !86)
!752 = !DILocation(line: 691, column: 3, scope: !86)
!753 = !DILocation(line: 695, column: 3, scope: !86)
!754 = !DILocation(line: 696, column: 1, scope: !86)
!755 = !DISubprogram(name: "setlocale", scope: !756, file: !756, line: 122, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!756 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!757 = !DISubroutineType(types: !758)
!758 = !{!67, !70, !75}
!759 = !DISubprogram(name: "getenv", scope: !760, file: !760, line: 641, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!760 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!761 = !DISubroutineType(types: !762)
!762 = !{!67, !75}
!763 = !DISubprogram(name: "fwrite_unlocked", scope: !276, file: !276, line: 704, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!764 = !DISubroutineType(types: !765)
!765 = !{!72, !766, !72, !72, !646}
!766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!769 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 289, type: !770, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!770 = !DISubroutineType(types: !771)
!771 = !{!70, !70, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!773 = !{!774, !775, !776, !777, !778, !779, !782}
!774 = !DILocalVariable(name: "argc", arg: 1, scope: !769, file: !3, line: 289, type: !70)
!775 = !DILocalVariable(name: "argv", arg: 2, scope: !769, file: !3, line: 289, type: !772)
!776 = !DILocalVariable(name: "width", scope: !769, file: !3, line: 291, type: !72)
!777 = !DILocalVariable(name: "optc", scope: !769, file: !3, line: 292, type: !70)
!778 = !DILocalVariable(name: "ok", scope: !769, file: !3, line: 293, type: !81)
!779 = !DILocalVariable(name: "optargbuf", scope: !780, file: !3, line: 305, type: !781)
!780 = distinct !DILexicalBlock(scope: !769, file: !3, line: 304, column: 5)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 16, elements: !341)
!782 = !DILocalVariable(name: "i", scope: !783, file: !3, line: 352, type: !70)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 352, column: 7)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 350, column: 5)
!785 = distinct !DILexicalBlock(scope: !769, file: !3, line: 347, column: 7)
!786 = !DILocation(line: 0, scope: !769)
!787 = !DILocation(line: 296, column: 21, scope: !769)
!788 = !DILocation(line: 296, column: 3, scope: !769)
!789 = !DILocation(line: 297, column: 3, scope: !769)
!790 = !DILocation(line: 298, column: 3, scope: !769)
!791 = !DILocation(line: 299, column: 3, scope: !769)
!792 = !DILocation(line: 301, column: 3, scope: !769)
!793 = !DILocation(line: 303, column: 18, scope: !769)
!794 = !DILocation(line: 303, column: 71, scope: !769)
!795 = !DILocation(line: 303, column: 3, scope: !769)
!796 = !DILocation(line: 305, column: 7, scope: !780)
!797 = !DILocation(line: 305, column: 12, scope: !780)
!798 = !DILocation(line: 307, column: 7, scope: !780)
!799 = !DILocation(line: 333, column: 31, scope: !800)
!800 = distinct !DILexicalBlock(scope: !780, file: !3, line: 308, column: 9)
!801 = !DILocation(line: 310, column: 25, scope: !800)
!802 = !DILocation(line: 311, column: 11, scope: !800)
!803 = !DILocation(line: 314, column: 25, scope: !800)
!804 = !DILocation(line: 315, column: 11, scope: !800)
!805 = !DILocation(line: 318, column: 24, scope: !800)
!806 = !DILocation(line: 319, column: 11, scope: !800)
!807 = !DILocation(line: 323, column: 15, scope: !808)
!808 = distinct !DILexicalBlock(scope: !800, file: !3, line: 323, column: 15)
!809 = !DILocation(line: 323, column: 15, scope: !800)
!810 = !DILocation(line: 324, column: 19, scope: !808)
!811 = !DILocation(line: 324, column: 13, scope: !808)
!812 = !DILocation(line: 327, column: 30, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !3, line: 326, column: 13)
!814 = !DILocation(line: 327, column: 28, scope: !813)
!815 = !DILocation(line: 328, column: 28, scope: !813)
!816 = !DILocation(line: 329, column: 22, scope: !813)
!817 = !DILocation(line: 334, column: 31, scope: !800)
!818 = !DILocation(line: 333, column: 19, scope: !800)
!819 = !DILocation(line: 336, column: 11, scope: !800)
!820 = !DILocation(line: 338, column: 9, scope: !800)
!821 = !DILocation(line: 340, column: 9, scope: !800)
!822 = !DILocation(line: 343, column: 11, scope: !800)
!823 = !DILocation(line: 345, column: 5, scope: !769)
!824 = distinct !{!824, !795, !823, !616}
!825 = !DILocation(line: 347, column: 15, scope: !785)
!826 = !DILocation(line: 347, column: 12, scope: !785)
!827 = !DILocation(line: 347, column: 7, scope: !769)
!828 = !DILocation(line: 0, scope: !783)
!829 = !DILocation(line: 352, column: 30, scope: !830)
!830 = distinct !DILexicalBlock(scope: !783, file: !3, line: 352, column: 7)
!831 = !DILocation(line: 352, column: 7, scope: !783)
!832 = !DILocation(line: 348, column: 10, scope: !785)
!833 = !DILocation(line: 348, column: 5, scope: !785)
!834 = !DILocation(line: 353, column: 26, scope: !830)
!835 = !DILocation(line: 353, column: 15, scope: !830)
!836 = !DILocation(line: 353, column: 12, scope: !830)
!837 = !DILocation(line: 352, column: 39, scope: !830)
!838 = distinct !{!838, !831, !839, !616}
!839 = !DILocation(line: 353, column: 40, scope: !783)
!840 = !DILocation(line: 356, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !769, file: !3, line: 356, column: 7)
!842 = !DILocation(line: 356, column: 23, scope: !841)
!843 = !DILocation(line: 356, column: 34, scope: !841)
!844 = !DILocation(line: 356, column: 26, scope: !841)
!845 = !DILocation(line: 356, column: 41, scope: !841)
!846 = !DILocation(line: 356, column: 7, scope: !769)
!847 = !DILocation(line: 357, column: 5, scope: !841)
!848 = !DILocation(line: 359, column: 10, scope: !769)
!849 = !DILocation(line: 359, column: 3, scope: !769)
!850 = !DISubprogram(name: "bindtextdomain", scope: !639, file: !639, line: 86, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!851 = !DISubroutineType(types: !852)
!852 = !{!67, !75, !75}
!853 = !DISubprogram(name: "textdomain", scope: !639, file: !639, line: 82, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!854 = !DISubprogram(name: "atexit", scope: !760, file: !760, line: 602, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!855 = !DISubroutineType(types: !856)
!856 = !{!70, !302}
!857 = !DISubprogram(name: "getopt_long", scope: !175, file: !175, line: 66, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!858 = !DISubroutineType(types: !859)
!859 = !{!70, !70, !860, !75, !862, !180}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!863 = !DILocation(line: 0, scope: !188)
!864 = !DILocation(line: 0, scope: !599, inlinedAt: !865)
!865 = distinct !DILocation(line: 169, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !188, file: !3, line: 169, column: 7)
!867 = !DILocation(line: 1361, column: 11, scope: !599, inlinedAt: !865)
!868 = !DILocation(line: 1361, column: 10, scope: !599, inlinedAt: !865)
!869 = !DILocation(line: 169, column: 7, scope: !188)
!870 = !DILocation(line: 171, column: 17, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !3, line: 170, column: 5)
!872 = !DILocation(line: 172, column: 23, scope: !871)
!873 = !DILocation(line: 173, column: 5, scope: !871)
!874 = !DILocation(line: 175, column: 15, scope: !866)
!875 = !DILocation(line: 0, scope: !866)
!876 = !DILocation(line: 177, column: 15, scope: !877)
!877 = distinct !DILexicalBlock(scope: !188, file: !3, line: 177, column: 7)
!878 = !DILocation(line: 177, column: 7, scope: !188)
!879 = !DILocation(line: 179, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 178, column: 5)
!881 = !DILocation(line: 180, column: 7, scope: !880)
!882 = !DILocation(line: 183, column: 3, scope: !188)
!883 = !DILocation(line: 187, column: 3, scope: !188)
!884 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !885, file: !202, line: 71, type: !888)
!885 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !202, file: !202, line: 71, type: !886, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!886 = !DISubroutineType(types: !887)
!887 = !{!212, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!889 = !{!884, !890, !891, !894}
!890 = !DILocalVariable(name: "available", scope: !885, file: !202, line: 73, type: !197)
!891 = !DILocalVariable(name: "start", scope: !892, file: !202, line: 77, type: !197)
!892 = distinct !DILexicalBlock(scope: !893, file: !202, line: 76, column: 5)
!893 = distinct !DILexicalBlock(scope: !885, file: !202, line: 75, column: 7)
!894 = !DILocalVariable(name: "g", scope: !885, file: !202, line: 92, type: !212)
!895 = !DILocation(line: 0, scope: !885, inlinedAt: !896)
!896 = distinct !DILocation(line: 187, column: 15, scope: !188)
!897 = !DILocation(line: 73, column: 35, scope: !885, inlinedAt: !896)
!898 = !DILocation(line: 75, column: 17, scope: !893, inlinedAt: !896)
!899 = !DILocation(line: 75, column: 32, scope: !893, inlinedAt: !896)
!900 = !DILocalVariable(name: "__stream", arg: 1, scope: !901, file: !902, line: 128, type: !109)
!901 = distinct !DISubprogram(name: "feof_unlocked", scope: !902, file: !902, line: 128, type: !903, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!902 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!903 = !DISubroutineType(types: !904)
!904 = !{!70, !109}
!905 = !{!900}
!906 = !DILocation(line: 0, scope: !901, inlinedAt: !907)
!907 = distinct !DILocation(line: 75, column: 37, scope: !893, inlinedAt: !896)
!908 = !DILocation(line: 130, column: 10, scope: !901, inlinedAt: !907)
!909 = !{!910, !650, i64 0}
!910 = !{!"_IO_FILE", !650, i64 0, !556, i64 8, !556, i64 16, !556, i64 24, !556, i64 32, !556, i64 40, !556, i64 48, !556, i64 56, !556, i64 64, !556, i64 72, !556, i64 80, !556, i64 88, !556, i64 96, !556, i64 104, !650, i64 112, !650, i64 116, !911, i64 120, !684, i64 128, !557, i64 130, !557, i64 131, !556, i64 136, !911, i64 144, !556, i64 152, !556, i64 160, !556, i64 168, !556, i64 176, !911, i64 184, !650, i64 192, !557, i64 196}
!911 = !{!"long", !557, i64 0}
!912 = !DILocation(line: 75, column: 37, scope: !893, inlinedAt: !896)
!913 = !DILocation(line: 75, column: 7, scope: !885, inlinedAt: !896)
!914 = !DILocation(line: 78, column: 15, scope: !915, inlinedAt: !896)
!915 = distinct !DILexicalBlock(scope: !892, file: !202, line: 78, column: 11)
!916 = !DILocation(line: 78, column: 11, scope: !892, inlinedAt: !896)
!917 = !DILocation(line: 82, column: 49, scope: !918, inlinedAt: !896)
!918 = distinct !DILexicalBlock(scope: !915, file: !202, line: 81, column: 9)
!919 = !DILocalVariable(name: "__dest", arg: 1, scope: !920, file: !921, line: 34, type: !69)
!920 = distinct !DISubprogram(name: "memmove", scope: !921, file: !921, line: 34, type: !922, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !924)
!921 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!922 = !DISubroutineType(types: !923)
!923 = !{!69, !69, !767, !72}
!924 = !{!919, !925, !926}
!925 = !DILocalVariable(name: "__src", arg: 2, scope: !920, file: !921, line: 34, type: !767)
!926 = !DILocalVariable(name: "__len", arg: 3, scope: !920, file: !921, line: 34, type: !72)
!927 = !DILocation(line: 0, scope: !920, inlinedAt: !928)
!928 = distinct !DILocation(line: 82, column: 11, scope: !918, inlinedAt: !896)
!929 = !DILocation(line: 36, column: 10, scope: !920, inlinedAt: !928)
!930 = !DILocation(line: 0, scope: !892, inlinedAt: !896)
!931 = !DILocation(line: 0, scope: !915, inlinedAt: !896)
!932 = !DILocation(line: 85, column: 23, scope: !892, inlinedAt: !896)
!933 = !DILocation(line: 86, column: 41, scope: !892, inlinedAt: !896)
!934 = !DILocation(line: 89, column: 5, scope: !892, inlinedAt: !896)
!935 = !DILocation(line: 90, column: 17, scope: !936, inlinedAt: !896)
!936 = distinct !DILexicalBlock(scope: !885, file: !202, line: 90, column: 7)
!937 = !DILocation(line: 90, column: 7, scope: !885, inlinedAt: !896)
!938 = !DILocation(line: 92, column: 39, scope: !885, inlinedAt: !896)
!939 = !DILocalVariable(name: "p", arg: 1, scope: !940, file: !57, line: 230, type: !75)
!940 = distinct !DISubprogram(name: "mcel_scan", scope: !57, file: !57, line: 230, type: !941, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{!212, !75, !75}
!943 = !{!939, !944, !945, !946, !957, !958}
!944 = !DILocalVariable(name: "lim", arg: 2, scope: !940, file: !57, line: 230, type: !75)
!945 = !DILocalVariable(name: "c", scope: !940, file: !57, line: 235, type: !68)
!946 = !DILocalVariable(name: "mbs", scope: !940, file: !57, line: 244, type: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !326, line: 6, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !328, line: 21, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 13, size: 64, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !949, file: !328, line: 15, baseType: !70, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !949, file: !328, line: 20, baseType: !953, size: 32, offset: 32)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !328, line: 16, size: 32, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !953, file: !328, line: 18, baseType: !6, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !953, file: !328, line: 19, baseType: !337, size: 32)
!957 = !DILocalVariable(name: "ch", scope: !940, file: !57, line: 267, type: !216)
!958 = !DILocalVariable(name: "len", scope: !940, file: !57, line: 268, type: !72)
!959 = !DILocation(line: 0, scope: !940, inlinedAt: !960)
!960 = distinct !DILocation(line: 92, column: 14, scope: !885, inlinedAt: !896)
!961 = !DILocation(line: 235, column: 12, scope: !940, inlinedAt: !960)
!962 = !DILocalVariable(name: "c", arg: 1, scope: !963, file: !57, line: 215, type: !68)
!963 = distinct !DISubprogram(name: "mcel_isbasic", scope: !57, file: !57, line: 215, type: !964, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{!81, !68}
!966 = !{!962}
!967 = !DILocation(line: 0, scope: !963, inlinedAt: !968)
!968 = distinct !DILocation(line: 236, column: 7, scope: !969, inlinedAt: !960)
!969 = distinct !DILexicalBlock(scope: !940, file: !57, line: 236, column: 7)
!970 = !DILocation(line: 217, column: 10, scope: !963, inlinedAt: !968)
!971 = !DILocation(line: 236, column: 7, scope: !940, inlinedAt: !960)
!972 = !DILocalVariable(name: "len", arg: 2, scope: !973, file: !57, line: 167, type: !72)
!973 = distinct !DISubprogram(name: "mcel_ch", scope: !57, file: !57, line: 167, type: !974, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!212, !216, !72}
!976 = !{!977, !972}
!977 = !DILocalVariable(name: "ch", arg: 1, scope: !973, file: !57, line: 167, type: !216)
!978 = !DILocation(line: 0, scope: !973, inlinedAt: !979)
!979 = distinct !DILocation(line: 237, column: 12, scope: !969, inlinedAt: !960)
!980 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !979)
!981 = !DILocation(line: 237, column: 5, scope: !969, inlinedAt: !960)
!982 = !DILocation(line: 93, column: 39, scope: !885, inlinedAt: !896)
!983 = !DILocation(line: 244, column: 3, scope: !940, inlinedAt: !960)
!984 = !DILocation(line: 244, column: 13, scope: !940, inlinedAt: !960)
!985 = !DILocation(line: 244, column: 30, scope: !940, inlinedAt: !960)
!986 = !{!987, !650, i64 0}
!987 = !{!"", !650, i64 0, !557, i64 4}
!988 = !DILocation(line: 267, column: 3, scope: !940, inlinedAt: !960)
!989 = !DILocation(line: 268, column: 38, scope: !940, inlinedAt: !960)
!990 = !DILocation(line: 268, column: 16, scope: !940, inlinedAt: !960)
!991 = !DILocation(line: 274, column: 7, scope: !992, inlinedAt: !960)
!992 = distinct !DILexicalBlock(scope: !940, file: !57, line: 274, column: 7)
!993 = !DILocation(line: 274, column: 7, scope: !940, inlinedAt: !960)
!994 = !{!"branch_weights", i32 1, i32 2000}
!995 = !DILocalVariable(name: "err", arg: 1, scope: !996, file: !57, line: 175, type: !77)
!996 = distinct !DISubprogram(name: "mcel_err", scope: !57, file: !57, line: 175, type: !997, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{!212, !77}
!999 = !{!995}
!1000 = !DILocation(line: 0, scope: !996, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 275, column: 12, scope: !992, inlinedAt: !960)
!1002 = !DILocation(line: 178, column: 3, scope: !996, inlinedAt: !1001)
!1003 = !DILocation(line: 275, column: 5, scope: !992, inlinedAt: !960)
!1004 = !DILocation(line: 279, column: 19, scope: !940, inlinedAt: !960)
!1005 = !DILocation(line: 0, scope: !973, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 279, column: 10, scope: !940, inlinedAt: !960)
!1007 = !DILocation(line: 169, column: 3, scope: !973, inlinedAt: !1006)
!1008 = !DILocation(line: 170, column: 3, scope: !973, inlinedAt: !1006)
!1009 = !DILocation(line: 171, column: 3, scope: !973, inlinedAt: !1006)
!1010 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1006)
!1011 = !DILocation(line: 279, column: 3, scope: !940, inlinedAt: !960)
!1012 = !DILocation(line: 280, column: 1, scope: !940, inlinedAt: !960)
!1013 = !DILocation(line: 94, column: 9, scope: !1014, inlinedAt: !896)
!1014 = distinct !DILexicalBlock(scope: !885, file: !202, line: 94, column: 7)
!1015 = !DILocation(line: 94, column: 7, scope: !885, inlinedAt: !896)
!1016 = !DILocation(line: 92, column: 14, scope: !885, inlinedAt: !896)
!1017 = !DILocation(line: 95, column: 22, scope: !1014, inlinedAt: !896)
!1018 = !DILocation(line: 95, column: 5, scope: !1014, inlinedAt: !896)
!1019 = !DILocation(line: 99, column: 30, scope: !1020, inlinedAt: !896)
!1020 = distinct !DILexicalBlock(scope: !1014, file: !202, line: 97, column: 5)
!1021 = !DILocation(line: 99, column: 14, scope: !1020, inlinedAt: !896)
!1022 = !DILocation(line: 0, scope: !1014, inlinedAt: !896)
!1023 = !DILocation(line: 187, column: 15, scope: !188)
!1024 = !DILocation(line: 117, column: 7, scope: !1025, inlinedAt: !1040)
!1025 = distinct !DISubprogram(name: "adjust_column", scope: !3, file: !3, line: 115, type: !1026, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!72, !72, !212}
!1028 = !{!1029, !1030, !1031}
!1029 = !DILocalVariable(name: "column", arg: 1, scope: !1025, file: !3, line: 115, type: !72)
!1030 = !DILocalVariable(name: "g", arg: 2, scope: !1025, file: !3, line: 115, type: !212)
!1031 = !DILocalVariable(name: "width", scope: !1032, file: !3, line: 134, type: !70)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 133, column: 13)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 130, column: 15)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 129, column: 9)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 126, column: 16)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 124, column: 16)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 119, column: 11)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 118, column: 5)
!1039 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 117, column: 7)
!1040 = distinct !DILocation(line: 196, column: 16, scope: !227)
!1041 = !DILocation(line: 191, column: 11, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 190, column: 9)
!1043 = distinct !DILexicalBlock(scope: !227, file: !3, line: 189, column: 11)
!1044 = !DILocation(line: 193, column: 11, scope: !1042)
!1045 = distinct !{!1045, !883, !1046, !616}
!1046 = !DILocation(line: 265, column: 5, scope: !188)
!1047 = !DILocation(line: 195, column: 5, scope: !227)
!1048 = !DILocation(line: 0, scope: !1025, inlinedAt: !1040)
!1049 = !DILocation(line: 117, column: 7, scope: !1039, inlinedAt: !1040)
!1050 = !DILocation(line: 117, column: 21, scope: !1039, inlinedAt: !1040)
!1051 = !DILocation(line: 119, column: 11, scope: !1038, inlinedAt: !1040)
!1052 = !DILocation(line: 121, column: 22, scope: !1053, inlinedAt: !1040)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 121, column: 15)
!1054 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 120, column: 9)
!1055 = !DILocation(line: 121, column: 15, scope: !1054, inlinedAt: !1040)
!1056 = !DILocation(line: 122, column: 23, scope: !1053, inlinedAt: !1040)
!1057 = !DILocation(line: 122, column: 20, scope: !1053, inlinedAt: !1040)
!1058 = !DILocation(line: 122, column: 13, scope: !1053, inlinedAt: !1040)
!1059 = !DILocation(line: 127, column: 29, scope: !1035, inlinedAt: !1040)
!1060 = !DILocation(line: 127, column: 16, scope: !1035, inlinedAt: !1040)
!1061 = !DILocation(line: 127, column: 9, scope: !1035, inlinedAt: !1040)
!1062 = !DILocation(line: 130, column: 29, scope: !1033, inlinedAt: !1040)
!1063 = !DILocation(line: 130, column: 15, scope: !1034, inlinedAt: !1040)
!1064 = !DILocalVariable(name: "wc", arg: 1, scope: !1065, file: !1066, line: 1004, type: !216)
!1065 = distinct !DISubprogram(name: "c32width", scope: !1066, file: !1066, line: 1004, type: !1067, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1066 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!70, !216}
!1069 = !{!1064}
!1070 = !DILocation(line: 0, scope: !1065, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 134, column: 27, scope: !1032, inlinedAt: !1040)
!1072 = !DILocation(line: 1010, column: 10, scope: !1065, inlinedAt: !1071)
!1073 = !DILocation(line: 0, scope: !1032, inlinedAt: !1040)
!1074 = !DILocation(line: 136, column: 44, scope: !1032, inlinedAt: !1040)
!1075 = !DILocation(line: 136, column: 38, scope: !1032, inlinedAt: !1040)
!1076 = !DILocation(line: 0, scope: !1033, inlinedAt: !1040)
!1077 = !DILocation(line: 138, column: 21, scope: !1034, inlinedAt: !1040)
!1078 = !DILocation(line: 138, column: 18, scope: !1034, inlinedAt: !1040)
!1079 = !DILocation(line: 142, column: 12, scope: !1039, inlinedAt: !1040)
!1080 = !DILocation(line: 198, column: 18, scope: !226)
!1081 = !DILocation(line: 198, column: 11, scope: !227)
!1082 = !DILocation(line: 203, column: 15, scope: !224)
!1083 = !DILocation(line: 203, column: 15, scope: !225)
!1084 = !DILocation(line: 0, scope: !223)
!1085 = !DILocation(line: 208, column: 45, scope: !223)
!1086 = !DILocation(line: 210, column: 41, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !232, file: !3, line: 210, column: 15)
!1088 = !DILocation(line: 210, column: 15, scope: !232)
!1089 = !DILocation(line: 220, column: 19, scope: !235)
!1090 = !DILocation(line: 220, column: 19, scope: !223)
!1091 = !DILocation(line: 0, scope: !940, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 212, column: 24, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 211, column: 17)
!1094 = !DILocation(line: 235, column: 12, scope: !940, inlinedAt: !1092)
!1095 = !DILocation(line: 0, scope: !963, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 236, column: 7, scope: !969, inlinedAt: !1092)
!1097 = !DILocation(line: 217, column: 10, scope: !963, inlinedAt: !1096)
!1098 = !DILocation(line: 236, column: 7, scope: !940, inlinedAt: !1092)
!1099 = !DILocation(line: 0, scope: !973, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 237, column: 12, scope: !969, inlinedAt: !1092)
!1101 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1100)
!1102 = !DILocation(line: 213, column: 23, scope: !1093)
!1103 = !DILocation(line: 237, column: 5, scope: !969, inlinedAt: !1092)
!1104 = !DILocation(line: 244, column: 3, scope: !940, inlinedAt: !1092)
!1105 = !DILocation(line: 244, column: 13, scope: !940, inlinedAt: !1092)
!1106 = !DILocation(line: 244, column: 30, scope: !940, inlinedAt: !1092)
!1107 = !DILocation(line: 267, column: 3, scope: !940, inlinedAt: !1092)
!1108 = !DILocation(line: 268, column: 38, scope: !940, inlinedAt: !1092)
!1109 = !DILocation(line: 268, column: 16, scope: !940, inlinedAt: !1092)
!1110 = !DILocation(line: 274, column: 7, scope: !992, inlinedAt: !1092)
!1111 = !DILocation(line: 274, column: 7, scope: !940, inlinedAt: !1092)
!1112 = !DILocation(line: 279, column: 19, scope: !940, inlinedAt: !1092)
!1113 = !DILocation(line: 0, scope: !973, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 279, column: 10, scope: !940, inlinedAt: !1092)
!1115 = !DILocation(line: 169, column: 3, scope: !973, inlinedAt: !1114)
!1116 = !DILocation(line: 170, column: 3, scope: !973, inlinedAt: !1114)
!1117 = !DILocation(line: 171, column: 3, scope: !973, inlinedAt: !1114)
!1118 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1114)
!1119 = !DILocation(line: 279, column: 3, scope: !940, inlinedAt: !1092)
!1120 = !DILocation(line: 280, column: 1, scope: !940, inlinedAt: !1092)
!1121 = !DILocation(line: 212, column: 24, scope: !1093)
!1122 = !DILocation(line: 0, scope: !232)
!1123 = !DILocalVariable(name: "wc", arg: 1, scope: !1124, file: !87, line: 178, type: !216)
!1124 = distinct !DISubprogram(name: "c32issep", scope: !87, file: !87, line: 178, type: !1125, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!81, !216}
!1127 = !{!1123}
!1128 = !DILocation(line: 0, scope: !1124, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 213, column: 23, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 213, column: 23)
!1131 = !DILocalVariable(name: "wc", arg: 1, scope: !1132, file: !1066, line: 770, type: !1135)
!1132 = distinct !DISubprogram(name: "c32isblank", scope: !1066, file: !1066, line: 770, type: !1133, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!70, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1136, line: 20, baseType: !6)
!1136 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1137 = !{!1131}
!1138 = !DILocation(line: 0, scope: !1132, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 181, column: 13, scope: !1124, inlinedAt: !1129)
!1140 = !DILocation(line: 776, column: 10, scope: !1132, inlinedAt: !1139)
!1141 = !DILocation(line: 181, column: 11, scope: !1124, inlinedAt: !1129)
!1142 = !DILocation(line: 210, column: 69, scope: !1087)
!1143 = !DILocation(line: 210, column: 66, scope: !1087)
!1144 = distinct !{!1144, !1088, !1145, !616}
!1145 = !DILocation(line: 218, column: 17, scope: !232)
!1146 = !DILocation(line: 222, column: 31, scope: !234)
!1147 = !DILocation(line: 224, column: 19, scope: !234)
!1148 = !DILocation(line: 227, column: 47, scope: !234)
!1149 = !DILocation(line: 228, column: 39, scope: !234)
!1150 = !DILocation(line: 0, scope: !920, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 227, column: 19, scope: !234)
!1152 = !DILocation(line: 36, column: 10, scope: !920, inlinedAt: !1151)
!1153 = !DILocation(line: 0, scope: !234)
!1154 = !DILocation(line: 232, column: 49, scope: !234)
!1155 = !DILocation(line: 233, column: 45, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !238, file: !3, line: 233, column: 19)
!1157 = !DILocation(line: 233, column: 19, scope: !238)
!1158 = !DILocation(line: 0, scope: !940, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 236, column: 28, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 235, column: 21)
!1161 = !DILocation(line: 235, column: 12, scope: !940, inlinedAt: !1159)
!1162 = !DILocation(line: 0, scope: !963, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 236, column: 7, scope: !969, inlinedAt: !1159)
!1164 = !DILocation(line: 217, column: 10, scope: !963, inlinedAt: !1163)
!1165 = !DILocation(line: 236, column: 7, scope: !940, inlinedAt: !1159)
!1166 = !DILocation(line: 0, scope: !973, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 237, column: 12, scope: !969, inlinedAt: !1159)
!1168 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1167)
!1169 = !DILocation(line: 237, column: 5, scope: !969, inlinedAt: !1159)
!1170 = !DILocation(line: 244, column: 3, scope: !940, inlinedAt: !1159)
!1171 = !DILocation(line: 244, column: 13, scope: !940, inlinedAt: !1159)
!1172 = !DILocation(line: 244, column: 30, scope: !940, inlinedAt: !1159)
!1173 = !DILocation(line: 267, column: 3, scope: !940, inlinedAt: !1159)
!1174 = !DILocation(line: 268, column: 38, scope: !940, inlinedAt: !1159)
!1175 = !DILocation(line: 268, column: 16, scope: !940, inlinedAt: !1159)
!1176 = !DILocation(line: 274, column: 7, scope: !992, inlinedAt: !1159)
!1177 = !DILocation(line: 274, column: 7, scope: !940, inlinedAt: !1159)
!1178 = !DILocation(line: 279, column: 19, scope: !940, inlinedAt: !1159)
!1179 = !DILocation(line: 0, scope: !973, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 279, column: 10, scope: !940, inlinedAt: !1159)
!1181 = !DILocation(line: 169, column: 3, scope: !973, inlinedAt: !1180)
!1182 = !DILocation(line: 170, column: 3, scope: !973, inlinedAt: !1180)
!1183 = !DILocation(line: 171, column: 3, scope: !973, inlinedAt: !1180)
!1184 = !DILocation(line: 172, column: 3, scope: !973, inlinedAt: !1180)
!1185 = !DILocation(line: 279, column: 3, scope: !940, inlinedAt: !1159)
!1186 = !DILocation(line: 280, column: 1, scope: !940, inlinedAt: !1159)
!1187 = !DILocation(line: 0, scope: !238)
!1188 = !DILocation(line: 236, column: 28, scope: !1160)
!1189 = !DILocation(line: 0, scope: !1025, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 237, column: 32, scope: !1160)
!1191 = !DILocation(line: 117, column: 7, scope: !1039, inlinedAt: !1190)
!1192 = !DILocation(line: 117, column: 21, scope: !1039, inlinedAt: !1190)
!1193 = !DILocation(line: 117, column: 7, scope: !1025, inlinedAt: !1190)
!1194 = !DILocation(line: 119, column: 11, scope: !1038, inlinedAt: !1190)
!1195 = !DILocation(line: 121, column: 22, scope: !1053, inlinedAt: !1190)
!1196 = !DILocation(line: 121, column: 15, scope: !1054, inlinedAt: !1190)
!1197 = !DILocation(line: 122, column: 23, scope: !1053, inlinedAt: !1190)
!1198 = !DILocation(line: 122, column: 20, scope: !1053, inlinedAt: !1190)
!1199 = !DILocation(line: 122, column: 13, scope: !1053, inlinedAt: !1190)
!1200 = !DILocation(line: 127, column: 29, scope: !1035, inlinedAt: !1190)
!1201 = !DILocation(line: 127, column: 16, scope: !1035, inlinedAt: !1190)
!1202 = !DILocation(line: 127, column: 9, scope: !1035, inlinedAt: !1190)
!1203 = !DILocation(line: 130, column: 29, scope: !1033, inlinedAt: !1190)
!1204 = !DILocation(line: 130, column: 15, scope: !1034, inlinedAt: !1190)
!1205 = !DILocation(line: 0, scope: !1065, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 134, column: 27, scope: !1032, inlinedAt: !1190)
!1207 = !DILocation(line: 1010, column: 10, scope: !1065, inlinedAt: !1206)
!1208 = !DILocation(line: 0, scope: !1032, inlinedAt: !1190)
!1209 = !DILocation(line: 136, column: 44, scope: !1032, inlinedAt: !1190)
!1210 = !DILocation(line: 136, column: 38, scope: !1032, inlinedAt: !1190)
!1211 = !DILocation(line: 0, scope: !1033, inlinedAt: !1190)
!1212 = !DILocation(line: 138, column: 21, scope: !1034, inlinedAt: !1190)
!1213 = !DILocation(line: 138, column: 18, scope: !1034, inlinedAt: !1190)
!1214 = !DILocation(line: 142, column: 15, scope: !1039, inlinedAt: !1190)
!1215 = !DILocation(line: 142, column: 12, scope: !1039, inlinedAt: !1190)
!1216 = !DILocation(line: 234, column: 37, scope: !1156)
!1217 = !DILocation(line: 234, column: 34, scope: !1156)
!1218 = distinct !{!1218, !1157, !1219, !616}
!1219 = !DILocation(line: 238, column: 21, scope: !238)
!1220 = !DILocation(line: 243, column: 26, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !225, file: !3, line: 243, column: 15)
!1222 = !DILocation(line: 243, column: 15, scope: !225)
!1223 = !DILocalVariable(name: "g", arg: 2, scope: !1224, file: !202, line: 107, type: !212)
!1224 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !202, file: !202, line: 107, type: !1225, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!67, !888, !212}
!1227 = !{!1228, !1223}
!1228 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1224, file: !202, line: 107, type: !888)
!1229 = !DILocation(line: 0, scope: !1224, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 245, column: 33, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 244, column: 13)
!1232 = !DILocation(line: 109, column: 21, scope: !1233, inlinedAt: !1230)
!1233 = distinct !DILexicalBlock(scope: !1224, file: !202, line: 109, column: 7)
!1234 = !DILocation(line: 109, column: 7, scope: !1224, inlinedAt: !1230)
!1235 = !DILocation(line: 111, column: 41, scope: !1224, inlinedAt: !1230)
!1236 = !DILocation(line: 111, column: 24, scope: !1224, inlinedAt: !1230)
!1237 = !DILocalVariable(name: "__dest", arg: 1, scope: !1238, file: !921, line: 26, type: !1241)
!1238 = distinct !DISubprogram(name: "memcpy", scope: !921, file: !921, line: 26, type: !1239, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1242)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!69, !1241, !766, !72}
!1241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!1242 = !{!1237, !1243, !1244}
!1243 = !DILocalVariable(name: "__src", arg: 2, scope: !1238, file: !921, line: 26, type: !766)
!1244 = !DILocalVariable(name: "__len", arg: 3, scope: !1238, file: !921, line: 26, type: !72)
!1245 = !DILocation(line: 0, scope: !1238, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 245, column: 15, scope: !1231)
!1247 = !DILocation(line: 29, column: 10, scope: !1238, inlinedAt: !1246)
!1248 = !{!1249, !1251}
!1249 = distinct !{!1249, !1250, !"memcpy.inline: argument 0"}
!1250 = distinct !{!1250, !"memcpy.inline"}
!1251 = distinct !{!1251, !1250, !"memcpy.inline: argument 1"}
!1252 = !DILocation(line: 247, column: 15, scope: !1231)
!1253 = !DILocation(line: 250, column: 11, scope: !225)
!1254 = !DILocation(line: 252, column: 11, scope: !225)
!1255 = !DILocation(line: 257, column: 41, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !227, file: !3, line: 257, column: 11)
!1257 = !DILocation(line: 257, column: 27, scope: !1256)
!1258 = !DILocation(line: 257, column: 11, scope: !227)
!1259 = !DILocation(line: 259, column: 11, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 258, column: 9)
!1261 = !DILocation(line: 261, column: 9, scope: !1260)
!1262 = !DILocation(line: 263, column: 24, scope: !227)
!1263 = !DILocation(line: 0, scope: !1224, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 263, column: 38, scope: !227)
!1265 = !DILocation(line: 109, column: 21, scope: !1233, inlinedAt: !1264)
!1266 = !DILocation(line: 109, column: 7, scope: !1224, inlinedAt: !1264)
!1267 = !DILocation(line: 111, column: 41, scope: !1224, inlinedAt: !1264)
!1268 = !DILocation(line: 111, column: 24, scope: !1224, inlinedAt: !1264)
!1269 = !DILocation(line: 0, scope: !1238, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 263, column: 7, scope: !227)
!1271 = !DILocation(line: 29, column: 10, scope: !1238, inlinedAt: !1270)
!1272 = !DILocation(line: 264, column: 18, scope: !227)
!1273 = !DILocation(line: 267, column: 17, scope: !188)
!1274 = !DILocalVariable(name: "__stream", arg: 1, scope: !1275, file: !902, line: 135, type: !109)
!1275 = distinct !DISubprogram(name: "ferror_unlocked", scope: !902, file: !902, line: 135, type: !903, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1276)
!1276 = !{!1274}
!1277 = !DILocation(line: 0, scope: !1275, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 268, column: 8, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !188, file: !3, line: 268, column: 7)
!1280 = !DILocation(line: 137, column: 10, scope: !1275, inlinedAt: !1278)
!1281 = !DILocation(line: 268, column: 8, scope: !1279)
!1282 = !DILocation(line: 268, column: 7, scope: !188)
!1283 = !DILocation(line: 271, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !188, file: !3, line: 271, column: 7)
!1285 = !DILocation(line: 271, column: 7, scope: !188)
!1286 = !DILocation(line: 272, column: 5, scope: !1284)
!1287 = !DILocation(line: 0, scope: !599, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 274, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !188, file: !3, line: 274, column: 7)
!1290 = !DILocation(line: 1361, column: 11, scope: !599, inlinedAt: !1288)
!1291 = !DILocation(line: 1361, column: 10, scope: !599, inlinedAt: !1288)
!1292 = !DILocation(line: 274, column: 7, scope: !188)
!1293 = !DILocation(line: 275, column: 5, scope: !1289)
!1294 = !DILocation(line: 276, column: 12, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 276, column: 12)
!1296 = !DILocation(line: 276, column: 29, scope: !1295)
!1297 = !DILocation(line: 276, column: 34, scope: !1295)
!1298 = !DILocation(line: 277, column: 19, scope: !1295)
!1299 = !DILocation(line: 277, column: 5, scope: !1295)
!1300 = !DILocation(line: 279, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !188, file: !3, line: 279, column: 7)
!1302 = !DILocation(line: 279, column: 7, scope: !188)
!1303 = !DILocation(line: 281, column: 7, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 280, column: 5)
!1305 = !DILocation(line: 282, column: 7, scope: !1304)
!1306 = !DILocation(line: 286, column: 1, scope: !188)
!1307 = !DISubprogram(name: "mbrtoc32", scope: !217, file: !217, line: 57, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!72, !1310, !645, !72, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!1314 = distinct !DISubprogram(name: "write_out", scope: !3, file: !3, line: 147, type: !1315, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1317)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !75, !72, !81}
!1317 = !{!1318, !1319, !1320, !1321, !1324, !1325}
!1318 = !DILocalVariable(name: "line", arg: 1, scope: !1314, file: !3, line: 147, type: !75)
!1319 = !DILocalVariable(name: "line_len", arg: 2, scope: !1314, file: !3, line: 147, type: !72)
!1320 = !DILocalVariable(name: "newline", arg: 3, scope: !1314, file: !3, line: 147, type: !81)
!1321 = !DILocalVariable(name: "__ptr", scope: !1322, file: !3, line: 149, type: !75)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 149, column: 7)
!1323 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 149, column: 7)
!1324 = !DILocalVariable(name: "__stream", scope: !1322, file: !3, line: 149, type: !109)
!1325 = !DILocalVariable(name: "__cnt", scope: !1322, file: !3, line: 149, type: !72)
!1326 = !DILocation(line: 0, scope: !1314)
!1327 = !DILocation(line: 149, column: 7, scope: !1323)
!1328 = !DILocation(line: 149, column: 54, scope: !1323)
!1329 = !DILocation(line: 150, column: 7, scope: !1323)
!1330 = !DILocation(line: 150, column: 19, scope: !1323)
!1331 = !DILocalVariable(name: "__c", arg: 1, scope: !1332, file: !902, line: 108, type: !70)
!1332 = distinct !DISubprogram(name: "putchar_unlocked", scope: !902, file: !902, line: 108, type: !1333, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!70, !70}
!1335 = !{!1331}
!1336 = !DILocation(line: 0, scope: !1332, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 150, column: 22, scope: !1323)
!1338 = !DILocation(line: 110, column: 10, scope: !1332, inlinedAt: !1337)
!1339 = !{!910, !556, i64 40}
!1340 = !{!910, !556, i64 48}
!1341 = !{!"branch_weights", i32 2000, i32 1}
!1342 = !DILocation(line: 149, column: 7, scope: !1314)
!1343 = !DILocation(line: 150, column: 37, scope: !1323)
!1344 = !DILocation(line: 948, column: 21, scope: !1345, inlinedAt: !1348)
!1345 = distinct !DISubprogram(name: "write_error", scope: !87, file: !87, line: 946, type: !303, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1346)
!1346 = !{!1347}
!1347 = !DILocalVariable(name: "saved_errno", scope: !1345, file: !87, line: 948, type: !70)
!1348 = distinct !DILocation(line: 151, column: 5, scope: !1323)
!1349 = !DILocation(line: 0, scope: !1345, inlinedAt: !1348)
!1350 = !DILocation(line: 949, column: 3, scope: !1345, inlinedAt: !1348)
!1351 = !DILocation(line: 950, column: 11, scope: !1345, inlinedAt: !1348)
!1352 = !DILocation(line: 950, column: 3, scope: !1345, inlinedAt: !1348)
!1353 = !DILocation(line: 951, column: 3, scope: !1345, inlinedAt: !1348)
!1354 = !DILocation(line: 952, column: 3, scope: !1345, inlinedAt: !1348)
!1355 = !DILocation(line: 152, column: 1, scope: !1314)
!1356 = !DISubprogram(name: "wcwidth", scope: !1357, file: !1357, line: 368, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1357 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!70, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !73, line: 74, baseType: !6)
!1361 = !DISubprogram(name: "iswblank", scope: !1362, file: !1362, line: 146, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1362 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1363 = !DISubprogram(name: "clearerr_unlocked", scope: !276, file: !276, line: 794, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !109}
!1366 = !DISubprogram(name: "fflush_unlocked", scope: !276, file: !276, line: 239, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1367 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !260, file: !260, line: 50, type: !577, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1368)
!1368 = !{!1369}
!1369 = !DILocalVariable(name: "file", arg: 1, scope: !1367, file: !260, line: 50, type: !75)
!1370 = !DILocation(line: 0, scope: !1367)
!1371 = !DILocation(line: 52, column: 13, scope: !1367)
!1372 = !DILocation(line: 53, column: 1, scope: !1367)
!1373 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !260, file: !260, line: 87, type: !1374, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !81}
!1376 = !{!1377}
!1377 = !DILocalVariable(name: "ignore", arg: 1, scope: !1373, file: !260, line: 87, type: !81)
!1378 = !DILocation(line: 0, scope: !1373)
!1379 = !DILocation(line: 89, column: 16, scope: !1373)
!1380 = !{!1381, !1381, i64 0}
!1381 = !{!"_Bool", !557, i64 0}
!1382 = !DILocation(line: 90, column: 1, scope: !1373)
!1383 = distinct !DISubprogram(name: "close_stdout", scope: !260, file: !260, line: 116, type: !303, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1384)
!1384 = !{!1385}
!1385 = !DILocalVariable(name: "write_error", scope: !1386, file: !260, line: 121, type: !75)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !260, line: 120, column: 5)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !260, line: 118, column: 7)
!1388 = !DILocation(line: 118, column: 21, scope: !1387)
!1389 = !DILocation(line: 118, column: 7, scope: !1387)
!1390 = !DILocation(line: 118, column: 29, scope: !1387)
!1391 = !DILocation(line: 119, column: 7, scope: !1387)
!1392 = !DILocation(line: 119, column: 12, scope: !1387)
!1393 = !{i8 0, i8 2}
!1394 = !DILocation(line: 119, column: 25, scope: !1387)
!1395 = !DILocation(line: 119, column: 28, scope: !1387)
!1396 = !DILocation(line: 119, column: 34, scope: !1387)
!1397 = !DILocation(line: 118, column: 7, scope: !1383)
!1398 = !DILocation(line: 121, column: 33, scope: !1386)
!1399 = !DILocation(line: 0, scope: !1386)
!1400 = !DILocation(line: 122, column: 11, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1386, file: !260, line: 122, column: 11)
!1402 = !DILocation(line: 0, scope: !1401)
!1403 = !DILocation(line: 122, column: 11, scope: !1386)
!1404 = !DILocation(line: 123, column: 9, scope: !1401)
!1405 = !DILocation(line: 126, column: 9, scope: !1401)
!1406 = !DILocation(line: 128, column: 14, scope: !1386)
!1407 = !DILocation(line: 128, column: 7, scope: !1386)
!1408 = !DILocation(line: 133, column: 42, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1383, file: !260, line: 133, column: 7)
!1410 = !DILocation(line: 133, column: 28, scope: !1409)
!1411 = !DILocation(line: 133, column: 50, scope: !1409)
!1412 = !DILocation(line: 133, column: 7, scope: !1383)
!1413 = !DILocation(line: 134, column: 12, scope: !1409)
!1414 = !DILocation(line: 134, column: 5, scope: !1409)
!1415 = !DILocation(line: 135, column: 1, scope: !1383)
!1416 = distinct !DISubprogram(name: "verror", scope: !267, file: !267, line: 251, type: !1417, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !70, !70, !75, !275}
!1419 = !{!1420, !1421, !1422, !1423}
!1420 = !DILocalVariable(name: "status", arg: 1, scope: !1416, file: !267, line: 251, type: !70)
!1421 = !DILocalVariable(name: "errnum", arg: 2, scope: !1416, file: !267, line: 251, type: !70)
!1422 = !DILocalVariable(name: "message", arg: 3, scope: !1416, file: !267, line: 251, type: !75)
!1423 = !DILocalVariable(name: "args", arg: 4, scope: !1416, file: !267, line: 251, type: !275)
!1424 = !DILocation(line: 0, scope: !1416)
!1425 = !DILocation(line: 251, column: 1, scope: !1416)
!1426 = !DILocation(line: 261, column: 3, scope: !1416)
!1427 = !DILocation(line: 265, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1416, file: !267, line: 265, column: 7)
!1429 = !DILocation(line: 265, column: 7, scope: !1416)
!1430 = !DILocation(line: 266, column: 5, scope: !1428)
!1431 = !DILocation(line: 272, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !267, line: 268, column: 5)
!1433 = !DILocation(line: 276, column: 3, scope: !1416)
!1434 = !{i64 0, i64 8, !555, i64 8, i64 8, !555, i64 16, i64 8, !555, i64 24, i64 4, !649, i64 28, i64 4, !649}
!1435 = !DILocation(line: 282, column: 1, scope: !1416)
!1436 = distinct !DISubprogram(name: "flush_stdout", scope: !267, file: !267, line: 163, type: !303, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1437)
!1437 = !{!1438}
!1438 = !DILocalVariable(name: "stdout_fd", scope: !1436, file: !267, line: 166, type: !70)
!1439 = !DILocation(line: 0, scope: !1436)
!1440 = !DILocalVariable(name: "fd", arg: 1, scope: !1441, file: !267, line: 145, type: !70)
!1441 = distinct !DISubprogram(name: "is_open", scope: !267, file: !267, line: 145, type: !1333, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1442)
!1442 = !{!1440}
!1443 = !DILocation(line: 0, scope: !1441, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 182, column: 25, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1436, file: !267, line: 182, column: 7)
!1446 = !DILocation(line: 157, column: 15, scope: !1441, inlinedAt: !1444)
!1447 = !DILocation(line: 182, column: 25, scope: !1445)
!1448 = !DILocation(line: 182, column: 7, scope: !1436)
!1449 = !DILocation(line: 184, column: 5, scope: !1445)
!1450 = !DILocation(line: 185, column: 1, scope: !1436)
!1451 = distinct !DISubprogram(name: "error_tail", scope: !267, file: !267, line: 219, type: !1417, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1452)
!1452 = !{!1453, !1454, !1455, !1456}
!1453 = !DILocalVariable(name: "status", arg: 1, scope: !1451, file: !267, line: 219, type: !70)
!1454 = !DILocalVariable(name: "errnum", arg: 2, scope: !1451, file: !267, line: 219, type: !70)
!1455 = !DILocalVariable(name: "message", arg: 3, scope: !1451, file: !267, line: 219, type: !75)
!1456 = !DILocalVariable(name: "args", arg: 4, scope: !1451, file: !267, line: 219, type: !275)
!1457 = !DILocation(line: 0, scope: !1451)
!1458 = !DILocation(line: 219, column: 1, scope: !1451)
!1459 = !DILocation(line: 229, column: 13, scope: !1451)
!1460 = !DILocation(line: 229, column: 3, scope: !1451)
!1461 = !DILocalVariable(name: "__stream", arg: 1, scope: !1462, file: !1463, line: 132, type: !1466)
!1462 = distinct !DISubprogram(name: "vfprintf", scope: !1463, file: !1463, line: 132, type: !1464, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1501)
!1463 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!70, !1466, !645, !277}
!1466 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1469, file: !113, line: 51, baseType: !70, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1469, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1469, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1469, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1469, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1469, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1469, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1469, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1469, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1469, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1469, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1469, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1469, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1469, file: !113, line: 70, baseType: !1485, size: 64, offset: 832)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1469, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1469, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1469, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1469, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1469, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1469, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1469, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1469, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1469, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1469, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1469, file: !113, line: 93, baseType: !1485, size: 64, offset: 1344)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1469, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1469, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1469, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1469, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1501 = !{!1461, !1502, !1503}
!1502 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1462, file: !1463, line: 133, type: !645)
!1503 = !DILocalVariable(name: "__ap", arg: 3, scope: !1462, file: !1463, line: 133, type: !277)
!1504 = !DILocation(line: 0, scope: !1462, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 229, column: 3, scope: !1451)
!1506 = !DILocation(line: 135, column: 10, scope: !1462, inlinedAt: !1505)
!1507 = !{!1508, !1510}
!1508 = distinct !{!1508, !1509, !"vfprintf.inline: argument 0"}
!1509 = distinct !{!1509, !"vfprintf.inline"}
!1510 = distinct !{!1510, !1509, !"vfprintf.inline: argument 1"}
!1511 = !DILocation(line: 232, column: 3, scope: !1451)
!1512 = !DILocation(line: 233, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1451, file: !267, line: 233, column: 7)
!1514 = !DILocation(line: 233, column: 7, scope: !1451)
!1515 = !DILocalVariable(name: "errnum", arg: 1, scope: !1516, file: !267, line: 188, type: !70)
!1516 = distinct !DISubprogram(name: "print_errno_message", scope: !267, file: !267, line: 188, type: !545, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1517)
!1517 = !{!1515, !1518, !1519}
!1518 = !DILocalVariable(name: "s", scope: !1516, file: !267, line: 190, type: !75)
!1519 = !DILocalVariable(name: "errbuf", scope: !1516, file: !267, line: 193, type: !1520)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8192, elements: !1521)
!1521 = !{!1522}
!1522 = !DISubrange(count: 1024)
!1523 = !DILocation(line: 0, scope: !1516, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 234, column: 5, scope: !1513)
!1525 = !DILocation(line: 193, column: 3, scope: !1516, inlinedAt: !1524)
!1526 = !DILocation(line: 193, column: 8, scope: !1516, inlinedAt: !1524)
!1527 = !DILocation(line: 195, column: 7, scope: !1516, inlinedAt: !1524)
!1528 = !DILocation(line: 207, column: 9, scope: !1529, inlinedAt: !1524)
!1529 = distinct !DILexicalBlock(scope: !1516, file: !267, line: 207, column: 7)
!1530 = !DILocation(line: 207, column: 7, scope: !1516, inlinedAt: !1524)
!1531 = !DILocation(line: 208, column: 9, scope: !1529, inlinedAt: !1524)
!1532 = !DILocation(line: 208, column: 5, scope: !1529, inlinedAt: !1524)
!1533 = !DILocation(line: 214, column: 3, scope: !1516, inlinedAt: !1524)
!1534 = !DILocation(line: 216, column: 1, scope: !1516, inlinedAt: !1524)
!1535 = !DILocation(line: 234, column: 5, scope: !1513)
!1536 = !DILocation(line: 238, column: 3, scope: !1451)
!1537 = !DILocalVariable(name: "__c", arg: 1, scope: !1538, file: !902, line: 101, type: !70)
!1538 = distinct !DISubprogram(name: "putc_unlocked", scope: !902, file: !902, line: 101, type: !1539, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!70, !70, !1467}
!1541 = !{!1537, !1542}
!1542 = !DILocalVariable(name: "__stream", arg: 2, scope: !1538, file: !902, line: 101, type: !1467)
!1543 = !DILocation(line: 0, scope: !1538, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 238, column: 3, scope: !1451)
!1545 = !DILocation(line: 103, column: 10, scope: !1538, inlinedAt: !1544)
!1546 = !DILocation(line: 240, column: 3, scope: !1451)
!1547 = !DILocation(line: 241, column: 7, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1451, file: !267, line: 241, column: 7)
!1549 = !DILocation(line: 241, column: 7, scope: !1451)
!1550 = !DILocation(line: 242, column: 5, scope: !1548)
!1551 = !DILocation(line: 243, column: 1, scope: !1451)
!1552 = !DISubprogram(name: "strerror_r", scope: !1553, file: !1553, line: 444, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1553 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!67, !70, !67, !72}
!1556 = !DISubprogram(name: "fcntl", scope: !1557, file: !1557, line: 149, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1557 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!70, !70, !70, null}
!1560 = distinct !DISubprogram(name: "error", scope: !267, file: !267, line: 285, type: !1561, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !70, !70, !75, null}
!1563 = !{!1564, !1565, !1566, !1567}
!1564 = !DILocalVariable(name: "status", arg: 1, scope: !1560, file: !267, line: 285, type: !70)
!1565 = !DILocalVariable(name: "errnum", arg: 2, scope: !1560, file: !267, line: 285, type: !70)
!1566 = !DILocalVariable(name: "message", arg: 3, scope: !1560, file: !267, line: 285, type: !75)
!1567 = !DILocalVariable(name: "ap", scope: !1560, file: !267, line: 287, type: !275)
!1568 = !DILocation(line: 0, scope: !1560)
!1569 = !DILocation(line: 287, column: 3, scope: !1560)
!1570 = !DILocation(line: 287, column: 11, scope: !1560)
!1571 = !DILocation(line: 288, column: 3, scope: !1560)
!1572 = !DILocation(line: 289, column: 3, scope: !1560)
!1573 = !DILocation(line: 290, column: 3, scope: !1560)
!1574 = !DILocation(line: 291, column: 1, scope: !1560)
!1575 = !DILocation(line: 0, scope: !272)
!1576 = !DILocation(line: 298, column: 1, scope: !272)
!1577 = !DILocation(line: 302, column: 7, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !272, file: !267, line: 302, column: 7)
!1579 = !DILocation(line: 302, column: 7, scope: !272)
!1580 = !DILocation(line: 307, column: 11, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !267, line: 307, column: 11)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !267, line: 303, column: 5)
!1583 = !DILocation(line: 307, column: 27, scope: !1581)
!1584 = !DILocation(line: 308, column: 11, scope: !1581)
!1585 = !DILocation(line: 308, column: 28, scope: !1581)
!1586 = !DILocation(line: 308, column: 25, scope: !1581)
!1587 = !DILocation(line: 309, column: 15, scope: !1581)
!1588 = !DILocation(line: 309, column: 33, scope: !1581)
!1589 = !DILocation(line: 310, column: 19, scope: !1581)
!1590 = !DILocation(line: 311, column: 22, scope: !1581)
!1591 = !DILocation(line: 311, column: 56, scope: !1581)
!1592 = !DILocation(line: 307, column: 11, scope: !1582)
!1593 = !DILocation(line: 316, column: 21, scope: !1582)
!1594 = !DILocation(line: 317, column: 23, scope: !1582)
!1595 = !DILocation(line: 318, column: 5, scope: !1582)
!1596 = !DILocation(line: 327, column: 3, scope: !272)
!1597 = !DILocation(line: 331, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !272, file: !267, line: 331, column: 7)
!1599 = !DILocation(line: 331, column: 7, scope: !272)
!1600 = !DILocation(line: 332, column: 5, scope: !1598)
!1601 = !DILocation(line: 338, column: 7, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !267, line: 334, column: 5)
!1603 = !DILocation(line: 346, column: 3, scope: !272)
!1604 = !DILocation(line: 350, column: 3, scope: !272)
!1605 = !DILocation(line: 356, column: 1, scope: !272)
!1606 = distinct !DISubprogram(name: "error_at_line", scope: !267, file: !267, line: 359, type: !1607, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !1609)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !70, !70, !75, !6, !75, null}
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615}
!1610 = !DILocalVariable(name: "status", arg: 1, scope: !1606, file: !267, line: 359, type: !70)
!1611 = !DILocalVariable(name: "errnum", arg: 2, scope: !1606, file: !267, line: 359, type: !70)
!1612 = !DILocalVariable(name: "file_name", arg: 3, scope: !1606, file: !267, line: 359, type: !75)
!1613 = !DILocalVariable(name: "line_number", arg: 4, scope: !1606, file: !267, line: 360, type: !6)
!1614 = !DILocalVariable(name: "message", arg: 5, scope: !1606, file: !267, line: 360, type: !75)
!1615 = !DILocalVariable(name: "ap", scope: !1606, file: !267, line: 362, type: !275)
!1616 = !DILocation(line: 0, scope: !1606)
!1617 = !DILocation(line: 362, column: 3, scope: !1606)
!1618 = !DILocation(line: 362, column: 11, scope: !1606)
!1619 = !DILocation(line: 363, column: 3, scope: !1606)
!1620 = !DILocation(line: 364, column: 3, scope: !1606)
!1621 = !DILocation(line: 366, column: 3, scope: !1606)
!1622 = !DILocation(line: 367, column: 1, scope: !1606)
!1623 = distinct !DISubprogram(name: "fdadvise", scope: !449, file: !449, line: 25, type: !1624, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !1628)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !70, !1626, !1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !276, line: 63, baseType: !135)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !48, line: 51, baseType: !47)
!1628 = !{!1629, !1630, !1631, !1632}
!1629 = !DILocalVariable(name: "fd", arg: 1, scope: !1623, file: !449, line: 25, type: !70)
!1630 = !DILocalVariable(name: "offset", arg: 2, scope: !1623, file: !449, line: 25, type: !1626)
!1631 = !DILocalVariable(name: "len", arg: 3, scope: !1623, file: !449, line: 25, type: !1626)
!1632 = !DILocalVariable(name: "advice", arg: 4, scope: !1623, file: !449, line: 25, type: !1627)
!1633 = !DILocation(line: 0, scope: !1623)
!1634 = !DILocation(line: 28, column: 3, scope: !1623)
!1635 = !DILocation(line: 30, column: 1, scope: !1623)
!1636 = !DISubprogram(name: "posix_fadvise", scope: !1557, file: !1557, line: 273, type: !1637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!70, !70, !1626, !1626, !70}
!1639 = distinct !DISubprogram(name: "fadvise", scope: !449, file: !449, line: 33, type: !1640, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !1676)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1642, !1627}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1644, file: !113, line: 51, baseType: !70, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1644, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1644, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1644, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1644, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1644, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1644, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1644, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1644, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1644, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1644, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1644, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1644, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1644, file: !113, line: 70, baseType: !1660, size: 64, offset: 832)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1644, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1644, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1644, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1644, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1644, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1644, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1644, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1644, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1644, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1644, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1644, file: !113, line: 93, baseType: !1660, size: 64, offset: 1344)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1644, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1644, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1644, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1644, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1676 = !{!1677, !1678}
!1677 = !DILocalVariable(name: "fp", arg: 1, scope: !1639, file: !449, line: 33, type: !1642)
!1678 = !DILocalVariable(name: "advice", arg: 2, scope: !1639, file: !449, line: 33, type: !1627)
!1679 = !DILocation(line: 0, scope: !1639)
!1680 = !DILocation(line: 35, column: 7, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1639, file: !449, line: 35, column: 7)
!1682 = !DILocation(line: 35, column: 7, scope: !1639)
!1683 = !DILocation(line: 36, column: 15, scope: !1681)
!1684 = !DILocation(line: 0, scope: !1623, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 36, column: 5, scope: !1681)
!1686 = !DILocation(line: 28, column: 3, scope: !1623, inlinedAt: !1685)
!1687 = !DILocation(line: 36, column: 5, scope: !1681)
!1688 = !DILocation(line: 37, column: 1, scope: !1639)
!1689 = !DISubprogram(name: "fileno", scope: !276, file: !276, line: 809, type: !1690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!70, !1642}
!1692 = distinct !DISubprogram(name: "rpl_fclose", scope: !452, file: !452, line: 58, type: !1693, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1729)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!70, !1695}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1697, file: !113, line: 51, baseType: !70, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1697, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1697, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1697, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1697, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1697, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1697, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1697, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1697, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1697, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1697, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1697, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1697, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1697, file: !113, line: 70, baseType: !1713, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1697, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1697, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1697, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1697, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1697, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1697, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1697, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1697, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1697, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1697, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1697, file: !113, line: 93, baseType: !1713, size: 64, offset: 1344)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1697, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1697, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1697, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1697, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1729 = !{!1730, !1731, !1732, !1733}
!1730 = !DILocalVariable(name: "fp", arg: 1, scope: !1692, file: !452, line: 58, type: !1695)
!1731 = !DILocalVariable(name: "saved_errno", scope: !1692, file: !452, line: 60, type: !70)
!1732 = !DILocalVariable(name: "fd", scope: !1692, file: !452, line: 63, type: !70)
!1733 = !DILocalVariable(name: "result", scope: !1692, file: !452, line: 74, type: !70)
!1734 = !DILocation(line: 0, scope: !1692)
!1735 = !DILocation(line: 63, column: 12, scope: !1692)
!1736 = !DILocation(line: 64, column: 10, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1692, file: !452, line: 64, column: 7)
!1738 = !DILocation(line: 64, column: 7, scope: !1692)
!1739 = !DILocation(line: 65, column: 12, scope: !1737)
!1740 = !DILocation(line: 65, column: 5, scope: !1737)
!1741 = !DILocation(line: 70, column: 9, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1692, file: !452, line: 70, column: 7)
!1743 = !DILocation(line: 70, column: 23, scope: !1742)
!1744 = !DILocation(line: 70, column: 33, scope: !1742)
!1745 = !DILocation(line: 70, column: 26, scope: !1742)
!1746 = !DILocation(line: 70, column: 59, scope: !1742)
!1747 = !DILocation(line: 71, column: 7, scope: !1742)
!1748 = !DILocation(line: 71, column: 10, scope: !1742)
!1749 = !DILocation(line: 70, column: 7, scope: !1692)
!1750 = !DILocation(line: 100, column: 12, scope: !1692)
!1751 = !DILocation(line: 105, column: 7, scope: !1692)
!1752 = !DILocation(line: 72, column: 19, scope: !1742)
!1753 = !DILocation(line: 105, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1692, file: !452, line: 105, column: 7)
!1755 = !DILocation(line: 107, column: 13, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1754, file: !452, line: 106, column: 5)
!1757 = !DILocation(line: 109, column: 5, scope: !1756)
!1758 = !DILocation(line: 112, column: 1, scope: !1692)
!1759 = !DISubprogram(name: "fclose", scope: !276, file: !276, line: 178, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1760 = !DISubprogram(name: "lseek", scope: !1761, file: !1761, line: 339, type: !1762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1761 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!135, !70, !135, !70}
!1764 = distinct !DISubprogram(name: "rpl_fflush", scope: !454, file: !454, line: 130, type: !1765, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !1801)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!70, !1767}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1769, file: !113, line: 51, baseType: !70, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1769, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1769, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1769, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1769, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1769, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1769, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1769, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1769, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1769, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1769, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1769, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1769, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1769, file: !113, line: 70, baseType: !1785, size: 64, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1769, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1769, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1769, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1769, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1769, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1769, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1769, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1769, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1769, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1769, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1769, file: !113, line: 93, baseType: !1785, size: 64, offset: 1344)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1769, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1769, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1769, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1769, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "stream", arg: 1, scope: !1764, file: !454, line: 130, type: !1767)
!1803 = !DILocation(line: 0, scope: !1764)
!1804 = !DILocation(line: 151, column: 14, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1764, file: !454, line: 151, column: 7)
!1806 = !DILocation(line: 151, column: 22, scope: !1805)
!1807 = !DILocation(line: 151, column: 27, scope: !1805)
!1808 = !DILocation(line: 151, column: 7, scope: !1764)
!1809 = !DILocation(line: 152, column: 12, scope: !1805)
!1810 = !DILocation(line: 152, column: 5, scope: !1805)
!1811 = !DILocalVariable(name: "fp", arg: 1, scope: !1812, file: !454, line: 42, type: !1767)
!1812 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !454, file: !454, line: 42, type: !1813, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !1815)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !1767}
!1815 = !{!1811}
!1816 = !DILocation(line: 0, scope: !1812, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 157, column: 3, scope: !1764)
!1818 = !DILocation(line: 44, column: 12, scope: !1819, inlinedAt: !1817)
!1819 = distinct !DILexicalBlock(scope: !1812, file: !454, line: 44, column: 7)
!1820 = !DILocation(line: 44, column: 19, scope: !1819, inlinedAt: !1817)
!1821 = !DILocation(line: 44, column: 7, scope: !1812, inlinedAt: !1817)
!1822 = !DILocation(line: 46, column: 5, scope: !1819, inlinedAt: !1817)
!1823 = !DILocation(line: 159, column: 10, scope: !1764)
!1824 = !DILocation(line: 159, column: 3, scope: !1764)
!1825 = !DILocation(line: 236, column: 1, scope: !1764)
!1826 = !DISubprogram(name: "fflush", scope: !276, file: !276, line: 230, type: !1765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1827 = distinct !DISubprogram(name: "fpurge", scope: !457, file: !457, line: 32, type: !1828, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1864)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!70, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1832, file: !113, line: 51, baseType: !70, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1832, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1832, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1832, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1832, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1832, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1832, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1832, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1832, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1832, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1832, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1832, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1832, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1832, file: !113, line: 70, baseType: !1848, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1832, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1832, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1832, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1832, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1832, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1832, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1832, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1832, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1832, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1832, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1832, file: !113, line: 93, baseType: !1848, size: 64, offset: 1344)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1832, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1832, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1832, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1832, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1864 = !{!1865}
!1865 = !DILocalVariable(name: "fp", arg: 1, scope: !1827, file: !457, line: 32, type: !1830)
!1866 = !DILocation(line: 0, scope: !1827)
!1867 = !DILocation(line: 36, column: 3, scope: !1827)
!1868 = !DILocation(line: 38, column: 3, scope: !1827)
!1869 = distinct !DISubprogram(name: "rpl_fseeko", scope: !459, file: !459, line: 28, type: !1870, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !1906)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!70, !1872, !1626, !70}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1874, file: !113, line: 51, baseType: !70, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1874, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1874, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1874, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1874, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1874, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1874, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1874, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1874, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1874, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1874, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1874, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1874, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1874, file: !113, line: 70, baseType: !1890, size: 64, offset: 832)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1874, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1874, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1874, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1874, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1874, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1874, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1874, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1874, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1874, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1874, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1874, file: !113, line: 93, baseType: !1890, size: 64, offset: 1344)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1874, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1874, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1874, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1874, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!1906 = !{!1907, !1908, !1909, !1910}
!1907 = !DILocalVariable(name: "fp", arg: 1, scope: !1869, file: !459, line: 28, type: !1872)
!1908 = !DILocalVariable(name: "offset", arg: 2, scope: !1869, file: !459, line: 28, type: !1626)
!1909 = !DILocalVariable(name: "whence", arg: 3, scope: !1869, file: !459, line: 28, type: !70)
!1910 = !DILocalVariable(name: "pos", scope: !1911, file: !459, line: 123, type: !1626)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !459, line: 119, column: 5)
!1912 = distinct !DILexicalBlock(scope: !1869, file: !459, line: 55, column: 7)
!1913 = !DILocation(line: 0, scope: !1869)
!1914 = !DILocation(line: 55, column: 12, scope: !1912)
!1915 = !{!910, !556, i64 16}
!1916 = !DILocation(line: 55, column: 33, scope: !1912)
!1917 = !{!910, !556, i64 8}
!1918 = !DILocation(line: 55, column: 25, scope: !1912)
!1919 = !DILocation(line: 56, column: 7, scope: !1912)
!1920 = !DILocation(line: 56, column: 15, scope: !1912)
!1921 = !DILocation(line: 56, column: 37, scope: !1912)
!1922 = !{!910, !556, i64 32}
!1923 = !DILocation(line: 56, column: 29, scope: !1912)
!1924 = !DILocation(line: 57, column: 7, scope: !1912)
!1925 = !DILocation(line: 57, column: 15, scope: !1912)
!1926 = !{!910, !556, i64 72}
!1927 = !DILocation(line: 57, column: 29, scope: !1912)
!1928 = !DILocation(line: 55, column: 7, scope: !1869)
!1929 = !DILocation(line: 123, column: 26, scope: !1911)
!1930 = !DILocation(line: 123, column: 19, scope: !1911)
!1931 = !DILocation(line: 0, scope: !1911)
!1932 = !DILocation(line: 124, column: 15, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1911, file: !459, line: 124, column: 11)
!1934 = !DILocation(line: 124, column: 11, scope: !1911)
!1935 = !DILocation(line: 135, column: 12, scope: !1911)
!1936 = !DILocation(line: 135, column: 19, scope: !1911)
!1937 = !DILocation(line: 136, column: 12, scope: !1911)
!1938 = !DILocation(line: 136, column: 20, scope: !1911)
!1939 = !{!910, !911, i64 144}
!1940 = !DILocation(line: 167, column: 7, scope: !1911)
!1941 = !DILocation(line: 169, column: 10, scope: !1869)
!1942 = !DILocation(line: 169, column: 3, scope: !1869)
!1943 = !DILocation(line: 170, column: 1, scope: !1869)
!1944 = !DISubprogram(name: "fseeko", scope: !276, file: !276, line: 736, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!70, !1872, !135, !70}
!1947 = distinct !DISubprogram(name: "getprogname", scope: !461, file: !461, line: 54, type: !1948, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !564)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!75}
!1950 = !DILocation(line: 58, column: 10, scope: !1947)
!1951 = !DILocation(line: 58, column: 3, scope: !1947)
!1952 = distinct !DISubprogram(name: "set_program_name", scope: !308, file: !308, line: 37, type: !577, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !307, retainedNodes: !1953)
!1953 = !{!1954, !1955, !1956}
!1954 = !DILocalVariable(name: "argv0", arg: 1, scope: !1952, file: !308, line: 37, type: !75)
!1955 = !DILocalVariable(name: "slash", scope: !1952, file: !308, line: 44, type: !75)
!1956 = !DILocalVariable(name: "base", scope: !1952, file: !308, line: 45, type: !75)
!1957 = !DILocation(line: 0, scope: !1952)
!1958 = !DILocation(line: 44, column: 23, scope: !1952)
!1959 = !DILocation(line: 45, column: 22, scope: !1952)
!1960 = !DILocation(line: 46, column: 17, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1952, file: !308, line: 46, column: 7)
!1962 = !DILocation(line: 46, column: 9, scope: !1961)
!1963 = !DILocation(line: 46, column: 25, scope: !1961)
!1964 = !DILocation(line: 46, column: 40, scope: !1961)
!1965 = !DILocalVariable(name: "__s1", arg: 1, scope: !1966, file: !600, line: 974, type: !767)
!1966 = distinct !DISubprogram(name: "memeq", scope: !600, file: !600, line: 974, type: !1967, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !307, retainedNodes: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!81, !767, !767, !72}
!1969 = !{!1965, !1970, !1971}
!1970 = !DILocalVariable(name: "__s2", arg: 2, scope: !1966, file: !600, line: 974, type: !767)
!1971 = !DILocalVariable(name: "__n", arg: 3, scope: !1966, file: !600, line: 974, type: !72)
!1972 = !DILocation(line: 0, scope: !1966, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 46, column: 28, scope: !1961)
!1974 = !DILocation(line: 976, column: 11, scope: !1966, inlinedAt: !1973)
!1975 = !DILocation(line: 976, column: 10, scope: !1966, inlinedAt: !1973)
!1976 = !DILocation(line: 46, column: 7, scope: !1952)
!1977 = !DILocation(line: 49, column: 11, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !308, line: 49, column: 11)
!1979 = distinct !DILexicalBlock(scope: !1961, file: !308, line: 47, column: 5)
!1980 = !DILocation(line: 49, column: 36, scope: !1978)
!1981 = !DILocation(line: 49, column: 11, scope: !1979)
!1982 = !DILocation(line: 65, column: 16, scope: !1952)
!1983 = !DILocation(line: 71, column: 27, scope: !1952)
!1984 = !DILocation(line: 74, column: 33, scope: !1952)
!1985 = !DILocation(line: 76, column: 1, scope: !1952)
!1986 = !DILocation(line: 0, scope: !313)
!1987 = !DILocation(line: 40, column: 29, scope: !313)
!1988 = !DILocation(line: 41, column: 19, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !313, file: !314, line: 41, column: 7)
!1990 = !DILocation(line: 41, column: 7, scope: !313)
!1991 = !DILocation(line: 47, column: 3, scope: !313)
!1992 = !DILocation(line: 48, column: 3, scope: !313)
!1993 = !DILocation(line: 48, column: 13, scope: !313)
!1994 = !DILocalVariable(name: "ps", arg: 1, scope: !1995, file: !1996, line: 1135, type: !1999)
!1995 = distinct !DISubprogram(name: "mbszero", scope: !1996, file: !1996, line: 1135, type: !1997, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2000)
!1996 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!2000 = !{!1994}
!2001 = !DILocation(line: 0, scope: !1995, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 48, column: 18, scope: !313)
!2003 = !DILocalVariable(name: "__dest", arg: 1, scope: !2004, file: !921, line: 57, type: !69)
!2004 = distinct !DISubprogram(name: "memset", scope: !921, file: !921, line: 57, type: !2005, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2007)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!69, !69, !70, !72}
!2007 = !{!2003, !2008, !2009}
!2008 = !DILocalVariable(name: "__ch", arg: 2, scope: !2004, file: !921, line: 57, type: !70)
!2009 = !DILocalVariable(name: "__len", arg: 3, scope: !2004, file: !921, line: 57, type: !72)
!2010 = !DILocation(line: 0, scope: !2004, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 1137, column: 3, scope: !1995, inlinedAt: !2002)
!2012 = !DILocation(line: 59, column: 10, scope: !2004, inlinedAt: !2011)
!2013 = !DILocation(line: 49, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !313, file: !314, line: 49, column: 7)
!2015 = !DILocation(line: 49, column: 39, scope: !2014)
!2016 = !DILocation(line: 49, column: 44, scope: !2014)
!2017 = !DILocation(line: 54, column: 1, scope: !313)
!2018 = distinct !DISubprogram(name: "clone_quoting_options", scope: !346, file: !346, line: 113, type: !2019, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2022)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!2021, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2022 = !{!2023, !2024, !2025}
!2023 = !DILocalVariable(name: "o", arg: 1, scope: !2018, file: !346, line: 113, type: !2021)
!2024 = !DILocalVariable(name: "saved_errno", scope: !2018, file: !346, line: 115, type: !70)
!2025 = !DILocalVariable(name: "p", scope: !2018, file: !346, line: 116, type: !2021)
!2026 = !DILocation(line: 0, scope: !2018)
!2027 = !DILocation(line: 115, column: 21, scope: !2018)
!2028 = !DILocation(line: 116, column: 40, scope: !2018)
!2029 = !DILocation(line: 116, column: 31, scope: !2018)
!2030 = !DILocation(line: 118, column: 9, scope: !2018)
!2031 = !DILocation(line: 119, column: 3, scope: !2018)
!2032 = distinct !DISubprogram(name: "get_quoting_style", scope: !346, file: !346, line: 124, type: !2033, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2037)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!33, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!2037 = !{!2038}
!2038 = !DILocalVariable(name: "o", arg: 1, scope: !2032, file: !346, line: 124, type: !2035)
!2039 = !DILocation(line: 0, scope: !2032)
!2040 = !DILocation(line: 126, column: 11, scope: !2032)
!2041 = !DILocation(line: 126, column: 46, scope: !2032)
!2042 = !{!2043, !557, i64 0}
!2043 = !{!"quoting_options", !557, i64 0, !650, i64 4, !557, i64 8, !556, i64 40, !556, i64 48}
!2044 = !DILocation(line: 126, column: 3, scope: !2032)
!2045 = distinct !DISubprogram(name: "set_quoting_style", scope: !346, file: !346, line: 132, type: !2046, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !2021, !33}
!2048 = !{!2049, !2050}
!2049 = !DILocalVariable(name: "o", arg: 1, scope: !2045, file: !346, line: 132, type: !2021)
!2050 = !DILocalVariable(name: "s", arg: 2, scope: !2045, file: !346, line: 132, type: !33)
!2051 = !DILocation(line: 0, scope: !2045)
!2052 = !DILocation(line: 134, column: 4, scope: !2045)
!2053 = !DILocation(line: 134, column: 39, scope: !2045)
!2054 = !DILocation(line: 134, column: 45, scope: !2045)
!2055 = !DILocation(line: 135, column: 1, scope: !2045)
!2056 = distinct !DISubprogram(name: "set_char_quoting", scope: !346, file: !346, line: 143, type: !2057, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!70, !2021, !68, !70}
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2066, !2067}
!2060 = !DILocalVariable(name: "o", arg: 1, scope: !2056, file: !346, line: 143, type: !2021)
!2061 = !DILocalVariable(name: "c", arg: 2, scope: !2056, file: !346, line: 143, type: !68)
!2062 = !DILocalVariable(name: "i", arg: 3, scope: !2056, file: !346, line: 143, type: !70)
!2063 = !DILocalVariable(name: "uc", scope: !2056, file: !346, line: 145, type: !77)
!2064 = !DILocalVariable(name: "p", scope: !2056, file: !346, line: 146, type: !2065)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2066 = !DILocalVariable(name: "shift", scope: !2056, file: !346, line: 148, type: !70)
!2067 = !DILocalVariable(name: "r", scope: !2056, file: !346, line: 149, type: !6)
!2068 = !DILocation(line: 0, scope: !2056)
!2069 = !DILocation(line: 147, column: 6, scope: !2056)
!2070 = !DILocation(line: 147, column: 62, scope: !2056)
!2071 = !DILocation(line: 147, column: 57, scope: !2056)
!2072 = !DILocation(line: 148, column: 15, scope: !2056)
!2073 = !DILocation(line: 149, column: 21, scope: !2056)
!2074 = !DILocation(line: 149, column: 24, scope: !2056)
!2075 = !DILocation(line: 149, column: 34, scope: !2056)
!2076 = !DILocation(line: 150, column: 13, scope: !2056)
!2077 = !DILocation(line: 150, column: 19, scope: !2056)
!2078 = !DILocation(line: 150, column: 24, scope: !2056)
!2079 = !DILocation(line: 150, column: 6, scope: !2056)
!2080 = !DILocation(line: 151, column: 3, scope: !2056)
!2081 = distinct !DISubprogram(name: "set_quoting_flags", scope: !346, file: !346, line: 159, type: !2082, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!70, !2021, !70}
!2084 = !{!2085, !2086, !2087}
!2085 = !DILocalVariable(name: "o", arg: 1, scope: !2081, file: !346, line: 159, type: !2021)
!2086 = !DILocalVariable(name: "i", arg: 2, scope: !2081, file: !346, line: 159, type: !70)
!2087 = !DILocalVariable(name: "r", scope: !2081, file: !346, line: 163, type: !70)
!2088 = !DILocation(line: 0, scope: !2081)
!2089 = !DILocation(line: 161, column: 8, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2081, file: !346, line: 161, column: 7)
!2091 = !DILocation(line: 161, column: 7, scope: !2081)
!2092 = !DILocation(line: 163, column: 14, scope: !2081)
!2093 = !{!2043, !650, i64 4}
!2094 = !DILocation(line: 164, column: 12, scope: !2081)
!2095 = !DILocation(line: 165, column: 3, scope: !2081)
!2096 = distinct !DISubprogram(name: "set_custom_quoting", scope: !346, file: !346, line: 169, type: !2097, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !2021, !75, !75}
!2099 = !{!2100, !2101, !2102}
!2100 = !DILocalVariable(name: "o", arg: 1, scope: !2096, file: !346, line: 169, type: !2021)
!2101 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2096, file: !346, line: 170, type: !75)
!2102 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2096, file: !346, line: 170, type: !75)
!2103 = !DILocation(line: 0, scope: !2096)
!2104 = !DILocation(line: 172, column: 8, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2096, file: !346, line: 172, column: 7)
!2106 = !DILocation(line: 172, column: 7, scope: !2096)
!2107 = !DILocation(line: 174, column: 6, scope: !2096)
!2108 = !DILocation(line: 174, column: 12, scope: !2096)
!2109 = !DILocation(line: 175, column: 8, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2096, file: !346, line: 175, column: 7)
!2111 = !DILocation(line: 175, column: 19, scope: !2110)
!2112 = !DILocation(line: 176, column: 5, scope: !2110)
!2113 = !DILocation(line: 177, column: 6, scope: !2096)
!2114 = !DILocation(line: 177, column: 17, scope: !2096)
!2115 = !{!2043, !556, i64 40}
!2116 = !DILocation(line: 178, column: 6, scope: !2096)
!2117 = !DILocation(line: 178, column: 18, scope: !2096)
!2118 = !{!2043, !556, i64 48}
!2119 = !DILocation(line: 179, column: 1, scope: !2096)
!2120 = distinct !DISubprogram(name: "quotearg_buffer", scope: !346, file: !346, line: 774, type: !2121, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!72, !67, !72, !75, !72, !2035}
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131}
!2124 = !DILocalVariable(name: "buffer", arg: 1, scope: !2120, file: !346, line: 774, type: !67)
!2125 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2120, file: !346, line: 774, type: !72)
!2126 = !DILocalVariable(name: "arg", arg: 3, scope: !2120, file: !346, line: 775, type: !75)
!2127 = !DILocalVariable(name: "argsize", arg: 4, scope: !2120, file: !346, line: 775, type: !72)
!2128 = !DILocalVariable(name: "o", arg: 5, scope: !2120, file: !346, line: 776, type: !2035)
!2129 = !DILocalVariable(name: "p", scope: !2120, file: !346, line: 778, type: !2035)
!2130 = !DILocalVariable(name: "saved_errno", scope: !2120, file: !346, line: 779, type: !70)
!2131 = !DILocalVariable(name: "r", scope: !2120, file: !346, line: 780, type: !72)
!2132 = !DILocation(line: 0, scope: !2120)
!2133 = !DILocation(line: 778, column: 37, scope: !2120)
!2134 = !DILocation(line: 779, column: 21, scope: !2120)
!2135 = !DILocation(line: 781, column: 43, scope: !2120)
!2136 = !DILocation(line: 781, column: 53, scope: !2120)
!2137 = !DILocation(line: 781, column: 60, scope: !2120)
!2138 = !DILocation(line: 782, column: 43, scope: !2120)
!2139 = !DILocation(line: 782, column: 58, scope: !2120)
!2140 = !DILocation(line: 780, column: 14, scope: !2120)
!2141 = !DILocation(line: 783, column: 9, scope: !2120)
!2142 = !DILocation(line: 784, column: 3, scope: !2120)
!2143 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !346, file: !346, line: 251, type: !2144, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2148)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!72, !67, !72, !75, !72, !33, !70, !2146, !75, !75}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2148 = !{!2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2173, !2175, !2178, !2179, !2180, !2181, !2184, !2185, !2188, !2192, !2193, !2201, !2204, !2205, !2207, !2208, !2209, !2210}
!2149 = !DILocalVariable(name: "buffer", arg: 1, scope: !2143, file: !346, line: 251, type: !67)
!2150 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2143, file: !346, line: 251, type: !72)
!2151 = !DILocalVariable(name: "arg", arg: 3, scope: !2143, file: !346, line: 252, type: !75)
!2152 = !DILocalVariable(name: "argsize", arg: 4, scope: !2143, file: !346, line: 252, type: !72)
!2153 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2143, file: !346, line: 253, type: !33)
!2154 = !DILocalVariable(name: "flags", arg: 6, scope: !2143, file: !346, line: 253, type: !70)
!2155 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2143, file: !346, line: 254, type: !2146)
!2156 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2143, file: !346, line: 255, type: !75)
!2157 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2143, file: !346, line: 256, type: !75)
!2158 = !DILocalVariable(name: "unibyte_locale", scope: !2143, file: !346, line: 258, type: !81)
!2159 = !DILocalVariable(name: "len", scope: !2143, file: !346, line: 260, type: !72)
!2160 = !DILocalVariable(name: "orig_buffersize", scope: !2143, file: !346, line: 261, type: !72)
!2161 = !DILocalVariable(name: "quote_string", scope: !2143, file: !346, line: 262, type: !75)
!2162 = !DILocalVariable(name: "quote_string_len", scope: !2143, file: !346, line: 263, type: !72)
!2163 = !DILocalVariable(name: "backslash_escapes", scope: !2143, file: !346, line: 264, type: !81)
!2164 = !DILocalVariable(name: "elide_outer_quotes", scope: !2143, file: !346, line: 265, type: !81)
!2165 = !DILocalVariable(name: "encountered_single_quote", scope: !2143, file: !346, line: 266, type: !81)
!2166 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2143, file: !346, line: 267, type: !81)
!2167 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2143, file: !346, line: 309, type: !81)
!2168 = !DILocalVariable(name: "lq", scope: !2169, file: !346, line: 361, type: !75)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !346, line: 361, column: 11)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !346, line: 360, column: 13)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !346, line: 333, column: 7)
!2172 = distinct !DILexicalBlock(scope: !2143, file: !346, line: 312, column: 5)
!2173 = !DILocalVariable(name: "i", scope: !2174, file: !346, line: 395, type: !72)
!2174 = distinct !DILexicalBlock(scope: !2143, file: !346, line: 395, column: 3)
!2175 = !DILocalVariable(name: "is_right_quote", scope: !2176, file: !346, line: 397, type: !81)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !346, line: 396, column: 5)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !346, line: 395, column: 3)
!2178 = !DILocalVariable(name: "escaping", scope: !2176, file: !346, line: 398, type: !81)
!2179 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2176, file: !346, line: 399, type: !81)
!2180 = !DILocalVariable(name: "c", scope: !2176, file: !346, line: 417, type: !77)
!2181 = !DILocalVariable(name: "m", scope: !2182, file: !346, line: 598, type: !72)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !346, line: 596, column: 11)
!2183 = distinct !DILexicalBlock(scope: !2176, file: !346, line: 419, column: 9)
!2184 = !DILocalVariable(name: "printable", scope: !2182, file: !346, line: 600, type: !81)
!2185 = !DILocalVariable(name: "mbs", scope: !2186, file: !346, line: 609, type: !391)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !346, line: 608, column: 15)
!2187 = distinct !DILexicalBlock(scope: !2182, file: !346, line: 602, column: 17)
!2188 = !DILocalVariable(name: "w", scope: !2189, file: !346, line: 618, type: !216)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !346, line: 617, column: 19)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !346, line: 616, column: 17)
!2191 = distinct !DILexicalBlock(scope: !2186, file: !346, line: 616, column: 17)
!2192 = !DILocalVariable(name: "bytes", scope: !2189, file: !346, line: 619, type: !72)
!2193 = !DILocalVariable(name: "j", scope: !2194, file: !346, line: 648, type: !72)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !346, line: 648, column: 29)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !346, line: 647, column: 27)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !346, line: 645, column: 29)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !346, line: 636, column: 23)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !346, line: 628, column: 30)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !346, line: 623, column: 30)
!2200 = distinct !DILexicalBlock(scope: !2189, file: !346, line: 621, column: 25)
!2201 = !DILocalVariable(name: "ilim", scope: !2202, file: !346, line: 674, type: !72)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !346, line: 671, column: 15)
!2203 = distinct !DILexicalBlock(scope: !2182, file: !346, line: 670, column: 17)
!2204 = !DILabel(scope: !2143, name: "process_input", file: !346, line: 308)
!2205 = !DILabel(scope: !2206, name: "c_and_shell_escape", file: !346, line: 502)
!2206 = distinct !DILexicalBlock(scope: !2183, file: !346, line: 478, column: 9)
!2207 = !DILabel(scope: !2206, name: "c_escape", file: !346, line: 507)
!2208 = !DILabel(scope: !2176, name: "store_escape", file: !346, line: 709)
!2209 = !DILabel(scope: !2176, name: "store_c", file: !346, line: 712)
!2210 = !DILabel(scope: !2143, name: "force_outer_quoting_style", file: !346, line: 753)
!2211 = !DILocation(line: 0, scope: !2143)
!2212 = !DILocation(line: 258, column: 25, scope: !2143)
!2213 = !DILocation(line: 258, column: 36, scope: !2143)
!2214 = !DILocation(line: 267, column: 3, scope: !2143)
!2215 = !DILocation(line: 261, column: 10, scope: !2143)
!2216 = !DILocation(line: 262, column: 15, scope: !2143)
!2217 = !DILocation(line: 263, column: 10, scope: !2143)
!2218 = !DILocation(line: 308, column: 2, scope: !2143)
!2219 = !DILocation(line: 311, column: 3, scope: !2143)
!2220 = !DILocation(line: 318, column: 11, scope: !2172)
!2221 = !DILocation(line: 319, column: 9, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !346, line: 319, column: 9)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !346, line: 319, column: 9)
!2224 = distinct !DILexicalBlock(scope: !2172, file: !346, line: 318, column: 11)
!2225 = !DILocation(line: 319, column: 9, scope: !2223)
!2226 = !DILocation(line: 0, scope: !382, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 357, column: 26, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !346, line: 335, column: 11)
!2229 = distinct !DILexicalBlock(scope: !2171, file: !346, line: 334, column: 13)
!2230 = !DILocation(line: 199, column: 29, scope: !382, inlinedAt: !2227)
!2231 = !DILocation(line: 201, column: 19, scope: !2232, inlinedAt: !2227)
!2232 = distinct !DILexicalBlock(scope: !382, file: !346, line: 201, column: 7)
!2233 = !DILocation(line: 201, column: 7, scope: !382, inlinedAt: !2227)
!2234 = !DILocation(line: 229, column: 3, scope: !382, inlinedAt: !2227)
!2235 = !DILocation(line: 230, column: 3, scope: !382, inlinedAt: !2227)
!2236 = !DILocation(line: 230, column: 13, scope: !382, inlinedAt: !2227)
!2237 = !DILocalVariable(name: "ps", arg: 1, scope: !2238, file: !1996, line: 1135, type: !2241)
!2238 = distinct !DISubprogram(name: "mbszero", scope: !1996, file: !1996, line: 1135, type: !2239, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2242)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!2242 = !{!2237}
!2243 = !DILocation(line: 0, scope: !2238, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 230, column: 18, scope: !382, inlinedAt: !2227)
!2245 = !DILocalVariable(name: "__dest", arg: 1, scope: !2246, file: !921, line: 57, type: !69)
!2246 = distinct !DISubprogram(name: "memset", scope: !921, file: !921, line: 57, type: !2005, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2247)
!2247 = !{!2245, !2248, !2249}
!2248 = !DILocalVariable(name: "__ch", arg: 2, scope: !2246, file: !921, line: 57, type: !70)
!2249 = !DILocalVariable(name: "__len", arg: 3, scope: !2246, file: !921, line: 57, type: !72)
!2250 = !DILocation(line: 0, scope: !2246, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 1137, column: 3, scope: !2238, inlinedAt: !2244)
!2252 = !DILocation(line: 59, column: 10, scope: !2246, inlinedAt: !2251)
!2253 = !DILocation(line: 231, column: 7, scope: !2254, inlinedAt: !2227)
!2254 = distinct !DILexicalBlock(scope: !382, file: !346, line: 231, column: 7)
!2255 = !DILocation(line: 231, column: 40, scope: !2254, inlinedAt: !2227)
!2256 = !DILocation(line: 231, column: 45, scope: !2254, inlinedAt: !2227)
!2257 = !DILocation(line: 235, column: 1, scope: !382, inlinedAt: !2227)
!2258 = !DILocation(line: 0, scope: !382, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 358, column: 27, scope: !2228)
!2260 = !DILocation(line: 199, column: 29, scope: !382, inlinedAt: !2259)
!2261 = !DILocation(line: 201, column: 19, scope: !2232, inlinedAt: !2259)
!2262 = !DILocation(line: 201, column: 7, scope: !382, inlinedAt: !2259)
!2263 = !DILocation(line: 229, column: 3, scope: !382, inlinedAt: !2259)
!2264 = !DILocation(line: 230, column: 3, scope: !382, inlinedAt: !2259)
!2265 = !DILocation(line: 230, column: 13, scope: !382, inlinedAt: !2259)
!2266 = !DILocation(line: 0, scope: !2238, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 230, column: 18, scope: !382, inlinedAt: !2259)
!2268 = !DILocation(line: 0, scope: !2246, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 1137, column: 3, scope: !2238, inlinedAt: !2267)
!2270 = !DILocation(line: 59, column: 10, scope: !2246, inlinedAt: !2269)
!2271 = !DILocation(line: 231, column: 7, scope: !2254, inlinedAt: !2259)
!2272 = !DILocation(line: 231, column: 40, scope: !2254, inlinedAt: !2259)
!2273 = !DILocation(line: 231, column: 45, scope: !2254, inlinedAt: !2259)
!2274 = !DILocation(line: 235, column: 1, scope: !382, inlinedAt: !2259)
!2275 = !DILocation(line: 360, column: 13, scope: !2171)
!2276 = !DILocation(line: 0, scope: !2169)
!2277 = !DILocation(line: 361, column: 45, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2169, file: !346, line: 361, column: 11)
!2279 = !DILocation(line: 361, column: 11, scope: !2169)
!2280 = !DILocation(line: 362, column: 13, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !346, line: 362, column: 13)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !346, line: 362, column: 13)
!2283 = !DILocation(line: 362, column: 13, scope: !2282)
!2284 = !DILocation(line: 361, column: 52, scope: !2278)
!2285 = distinct !{!2285, !2279, !2286, !616}
!2286 = !DILocation(line: 362, column: 13, scope: !2169)
!2287 = !DILocation(line: 260, column: 10, scope: !2143)
!2288 = !DILocation(line: 365, column: 28, scope: !2171)
!2289 = !DILocation(line: 367, column: 7, scope: !2172)
!2290 = !DILocation(line: 370, column: 7, scope: !2172)
!2291 = !DILocation(line: 376, column: 11, scope: !2172)
!2292 = !DILocation(line: 381, column: 11, scope: !2172)
!2293 = !DILocation(line: 382, column: 9, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !346, line: 382, column: 9)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !346, line: 382, column: 9)
!2296 = distinct !DILexicalBlock(scope: !2172, file: !346, line: 381, column: 11)
!2297 = !DILocation(line: 382, column: 9, scope: !2295)
!2298 = !DILocation(line: 389, column: 7, scope: !2172)
!2299 = !DILocation(line: 392, column: 7, scope: !2172)
!2300 = !DILocation(line: 0, scope: !2174)
!2301 = !DILocation(line: 395, column: 8, scope: !2174)
!2302 = !DILocation(line: 395, column: 34, scope: !2177)
!2303 = !DILocation(line: 395, column: 26, scope: !2177)
!2304 = !DILocation(line: 395, column: 48, scope: !2177)
!2305 = !DILocation(line: 395, column: 55, scope: !2177)
!2306 = !DILocation(line: 395, column: 3, scope: !2174)
!2307 = !DILocation(line: 395, column: 67, scope: !2177)
!2308 = !DILocation(line: 0, scope: !2176)
!2309 = !DILocation(line: 402, column: 11, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2176, file: !346, line: 401, column: 11)
!2311 = !DILocation(line: 404, column: 17, scope: !2310)
!2312 = !DILocation(line: 405, column: 39, scope: !2310)
!2313 = !DILocation(line: 409, column: 32, scope: !2310)
!2314 = !DILocation(line: 405, column: 19, scope: !2310)
!2315 = !DILocation(line: 405, column: 15, scope: !2310)
!2316 = !DILocation(line: 410, column: 11, scope: !2310)
!2317 = !DILocation(line: 410, column: 25, scope: !2310)
!2318 = !DILocalVariable(name: "__s1", arg: 1, scope: !2319, file: !600, line: 974, type: !767)
!2319 = distinct !DISubprogram(name: "memeq", scope: !600, file: !600, line: 974, type: !1967, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2320)
!2320 = !{!2318, !2321, !2322}
!2321 = !DILocalVariable(name: "__s2", arg: 2, scope: !2319, file: !600, line: 974, type: !767)
!2322 = !DILocalVariable(name: "__n", arg: 3, scope: !2319, file: !600, line: 974, type: !72)
!2323 = !DILocation(line: 0, scope: !2319, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 410, column: 14, scope: !2310)
!2325 = !DILocation(line: 976, column: 11, scope: !2319, inlinedAt: !2324)
!2326 = !DILocation(line: 976, column: 10, scope: !2319, inlinedAt: !2324)
!2327 = !DILocation(line: 401, column: 11, scope: !2176)
!2328 = !DILocation(line: 417, column: 25, scope: !2176)
!2329 = !DILocation(line: 418, column: 7, scope: !2176)
!2330 = !DILocation(line: 421, column: 15, scope: !2183)
!2331 = !DILocation(line: 423, column: 15, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !346, line: 423, column: 15)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !346, line: 422, column: 13)
!2334 = distinct !DILexicalBlock(scope: !2183, file: !346, line: 421, column: 15)
!2335 = !DILocation(line: 423, column: 15, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !346, line: 423, column: 15)
!2337 = !DILocation(line: 423, column: 15, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !346, line: 423, column: 15)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !346, line: 423, column: 15)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !346, line: 423, column: 15)
!2341 = !DILocation(line: 423, column: 15, scope: !2339)
!2342 = !DILocation(line: 423, column: 15, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !346, line: 423, column: 15)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !346, line: 423, column: 15)
!2345 = !DILocation(line: 423, column: 15, scope: !2344)
!2346 = !DILocation(line: 423, column: 15, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !346, line: 423, column: 15)
!2348 = distinct !DILexicalBlock(scope: !2340, file: !346, line: 423, column: 15)
!2349 = !DILocation(line: 423, column: 15, scope: !2348)
!2350 = !DILocation(line: 423, column: 15, scope: !2340)
!2351 = !DILocation(line: 423, column: 15, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !346, line: 423, column: 15)
!2353 = distinct !DILexicalBlock(scope: !2332, file: !346, line: 423, column: 15)
!2354 = !DILocation(line: 423, column: 15, scope: !2353)
!2355 = !DILocation(line: 431, column: 19, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2333, file: !346, line: 430, column: 19)
!2357 = !DILocation(line: 431, column: 24, scope: !2356)
!2358 = !DILocation(line: 431, column: 28, scope: !2356)
!2359 = !DILocation(line: 431, column: 38, scope: !2356)
!2360 = !DILocation(line: 431, column: 48, scope: !2356)
!2361 = !DILocation(line: 431, column: 59, scope: !2356)
!2362 = !DILocation(line: 433, column: 19, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !346, line: 433, column: 19)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !346, line: 433, column: 19)
!2365 = distinct !DILexicalBlock(scope: !2356, file: !346, line: 432, column: 17)
!2366 = !DILocation(line: 433, column: 19, scope: !2364)
!2367 = !DILocation(line: 434, column: 19, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !346, line: 434, column: 19)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !346, line: 434, column: 19)
!2370 = !DILocation(line: 434, column: 19, scope: !2369)
!2371 = !DILocation(line: 435, column: 17, scope: !2365)
!2372 = !DILocation(line: 442, column: 20, scope: !2334)
!2373 = !DILocation(line: 447, column: 11, scope: !2183)
!2374 = !DILocation(line: 450, column: 19, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2183, file: !346, line: 448, column: 13)
!2376 = !DILocation(line: 456, column: 19, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2375, file: !346, line: 455, column: 19)
!2378 = !DILocation(line: 456, column: 24, scope: !2377)
!2379 = !DILocation(line: 456, column: 28, scope: !2377)
!2380 = !DILocation(line: 456, column: 38, scope: !2377)
!2381 = !DILocation(line: 456, column: 47, scope: !2377)
!2382 = !DILocation(line: 456, column: 41, scope: !2377)
!2383 = !DILocation(line: 456, column: 52, scope: !2377)
!2384 = !DILocation(line: 455, column: 19, scope: !2375)
!2385 = !DILocation(line: 457, column: 25, scope: !2377)
!2386 = !DILocation(line: 457, column: 17, scope: !2377)
!2387 = !DILocation(line: 464, column: 25, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2377, file: !346, line: 458, column: 19)
!2389 = !DILocation(line: 468, column: 21, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !346, line: 468, column: 21)
!2391 = distinct !DILexicalBlock(scope: !2388, file: !346, line: 468, column: 21)
!2392 = !DILocation(line: 468, column: 21, scope: !2391)
!2393 = !DILocation(line: 469, column: 21, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !346, line: 469, column: 21)
!2395 = distinct !DILexicalBlock(scope: !2388, file: !346, line: 469, column: 21)
!2396 = !DILocation(line: 469, column: 21, scope: !2395)
!2397 = !DILocation(line: 470, column: 21, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !346, line: 470, column: 21)
!2399 = distinct !DILexicalBlock(scope: !2388, file: !346, line: 470, column: 21)
!2400 = !DILocation(line: 470, column: 21, scope: !2399)
!2401 = !DILocation(line: 471, column: 21, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !346, line: 471, column: 21)
!2403 = distinct !DILexicalBlock(scope: !2388, file: !346, line: 471, column: 21)
!2404 = !DILocation(line: 471, column: 21, scope: !2403)
!2405 = !DILocation(line: 472, column: 21, scope: !2388)
!2406 = !DILocation(line: 482, column: 33, scope: !2206)
!2407 = !DILocation(line: 483, column: 33, scope: !2206)
!2408 = !DILocation(line: 485, column: 33, scope: !2206)
!2409 = !DILocation(line: 486, column: 33, scope: !2206)
!2410 = !DILocation(line: 487, column: 33, scope: !2206)
!2411 = !DILocation(line: 490, column: 17, scope: !2206)
!2412 = !DILocation(line: 492, column: 21, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !346, line: 491, column: 15)
!2414 = distinct !DILexicalBlock(scope: !2206, file: !346, line: 490, column: 17)
!2415 = !DILocation(line: 499, column: 35, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2206, file: !346, line: 499, column: 17)
!2417 = !DILocation(line: 499, column: 57, scope: !2416)
!2418 = !DILocation(line: 0, scope: !2206)
!2419 = !DILocation(line: 502, column: 11, scope: !2206)
!2420 = !DILocation(line: 504, column: 17, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2206, file: !346, line: 503, column: 17)
!2422 = !DILocation(line: 507, column: 11, scope: !2206)
!2423 = !DILocation(line: 508, column: 17, scope: !2206)
!2424 = !DILocation(line: 517, column: 15, scope: !2183)
!2425 = !DILocation(line: 517, column: 40, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2183, file: !346, line: 517, column: 15)
!2427 = !DILocation(line: 517, column: 47, scope: !2426)
!2428 = !DILocation(line: 517, column: 18, scope: !2426)
!2429 = !DILocation(line: 521, column: 17, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2183, file: !346, line: 521, column: 15)
!2431 = !DILocation(line: 521, column: 15, scope: !2183)
!2432 = !DILocation(line: 525, column: 11, scope: !2183)
!2433 = !DILocation(line: 537, column: 15, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2183, file: !346, line: 536, column: 15)
!2435 = !DILocation(line: 536, column: 15, scope: !2183)
!2436 = !DILocation(line: 544, column: 15, scope: !2183)
!2437 = !DILocation(line: 546, column: 19, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !346, line: 545, column: 13)
!2439 = distinct !DILexicalBlock(scope: !2183, file: !346, line: 544, column: 15)
!2440 = !DILocation(line: 549, column: 19, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !346, line: 549, column: 19)
!2442 = !DILocation(line: 549, column: 30, scope: !2441)
!2443 = !DILocation(line: 558, column: 15, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !346, line: 558, column: 15)
!2445 = distinct !DILexicalBlock(scope: !2438, file: !346, line: 558, column: 15)
!2446 = !DILocation(line: 558, column: 15, scope: !2445)
!2447 = !DILocation(line: 559, column: 15, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !346, line: 559, column: 15)
!2449 = distinct !DILexicalBlock(scope: !2438, file: !346, line: 559, column: 15)
!2450 = !DILocation(line: 559, column: 15, scope: !2449)
!2451 = !DILocation(line: 560, column: 15, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !346, line: 560, column: 15)
!2453 = distinct !DILexicalBlock(scope: !2438, file: !346, line: 560, column: 15)
!2454 = !DILocation(line: 560, column: 15, scope: !2453)
!2455 = !DILocation(line: 562, column: 13, scope: !2438)
!2456 = !DILocation(line: 602, column: 17, scope: !2182)
!2457 = !DILocation(line: 0, scope: !2182)
!2458 = !DILocation(line: 605, column: 29, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2187, file: !346, line: 603, column: 15)
!2460 = !DILocation(line: 605, column: 41, scope: !2459)
!2461 = !DILocation(line: 670, column: 23, scope: !2203)
!2462 = !DILocation(line: 609, column: 17, scope: !2186)
!2463 = !DILocation(line: 609, column: 27, scope: !2186)
!2464 = !DILocation(line: 0, scope: !2238, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 609, column: 32, scope: !2186)
!2466 = !DILocation(line: 0, scope: !2246, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 1137, column: 3, scope: !2238, inlinedAt: !2465)
!2468 = !DILocation(line: 59, column: 10, scope: !2246, inlinedAt: !2467)
!2469 = !DILocation(line: 613, column: 29, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2186, file: !346, line: 613, column: 21)
!2471 = !DILocation(line: 613, column: 21, scope: !2186)
!2472 = !DILocation(line: 614, column: 29, scope: !2470)
!2473 = !DILocation(line: 614, column: 19, scope: !2470)
!2474 = !DILocation(line: 618, column: 21, scope: !2189)
!2475 = !DILocation(line: 620, column: 54, scope: !2189)
!2476 = !DILocation(line: 0, scope: !2189)
!2477 = !DILocation(line: 619, column: 36, scope: !2189)
!2478 = !DILocation(line: 621, column: 25, scope: !2189)
!2479 = !DILocation(line: 631, column: 38, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2198, file: !346, line: 629, column: 23)
!2481 = !DILocation(line: 631, column: 48, scope: !2480)
!2482 = !DILocation(line: 665, column: 19, scope: !2190)
!2483 = !DILocation(line: 666, column: 15, scope: !2187)
!2484 = !DILocation(line: 626, column: 25, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2199, file: !346, line: 624, column: 23)
!2486 = !DILocation(line: 631, column: 51, scope: !2480)
!2487 = !DILocation(line: 631, column: 25, scope: !2480)
!2488 = !DILocation(line: 632, column: 28, scope: !2480)
!2489 = !DILocation(line: 631, column: 34, scope: !2480)
!2490 = distinct !{!2490, !2487, !2488, !616}
!2491 = !DILocation(line: 646, column: 29, scope: !2196)
!2492 = !DILocation(line: 0, scope: !2194)
!2493 = !DILocation(line: 649, column: 49, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2194, file: !346, line: 648, column: 29)
!2495 = !DILocation(line: 649, column: 39, scope: !2494)
!2496 = !DILocation(line: 649, column: 31, scope: !2494)
!2497 = !DILocation(line: 648, column: 60, scope: !2494)
!2498 = !DILocation(line: 648, column: 50, scope: !2494)
!2499 = !DILocation(line: 648, column: 29, scope: !2194)
!2500 = distinct !{!2500, !2499, !2501, !616}
!2501 = !DILocation(line: 654, column: 33, scope: !2194)
!2502 = !DILocation(line: 657, column: 43, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2197, file: !346, line: 657, column: 29)
!2504 = !DILocalVariable(name: "wc", arg: 1, scope: !2505, file: !1066, line: 865, type: !1135)
!2505 = distinct !DISubprogram(name: "c32isprint", scope: !1066, file: !1066, line: 865, type: !1133, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2506)
!2506 = !{!2504}
!2507 = !DILocation(line: 0, scope: !2505, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 657, column: 31, scope: !2503)
!2509 = !DILocation(line: 871, column: 10, scope: !2505, inlinedAt: !2508)
!2510 = !DILocation(line: 657, column: 31, scope: !2503)
!2511 = !DILocation(line: 664, column: 23, scope: !2189)
!2512 = !DILocation(line: 753, column: 2, scope: !2143)
!2513 = !DILocation(line: 756, column: 51, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2143, file: !346, line: 756, column: 7)
!2515 = !DILocation(line: 670, column: 19, scope: !2203)
!2516 = !DILocation(line: 670, column: 45, scope: !2203)
!2517 = !DILocation(line: 674, column: 33, scope: !2202)
!2518 = !DILocation(line: 0, scope: !2202)
!2519 = !DILocation(line: 676, column: 17, scope: !2202)
!2520 = !DILocation(line: 398, column: 12, scope: !2176)
!2521 = !DILocation(line: 678, column: 43, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !346, line: 678, column: 25)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !346, line: 677, column: 19)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !346, line: 676, column: 17)
!2525 = distinct !DILexicalBlock(scope: !2202, file: !346, line: 676, column: 17)
!2526 = !DILocation(line: 680, column: 25, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !346, line: 680, column: 25)
!2528 = distinct !DILexicalBlock(scope: !2522, file: !346, line: 679, column: 23)
!2529 = !DILocation(line: 680, column: 25, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2527, file: !346, line: 680, column: 25)
!2531 = !DILocation(line: 680, column: 25, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !346, line: 680, column: 25)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !346, line: 680, column: 25)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !346, line: 680, column: 25)
!2535 = !DILocation(line: 680, column: 25, scope: !2533)
!2536 = !DILocation(line: 680, column: 25, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !346, line: 680, column: 25)
!2538 = distinct !DILexicalBlock(scope: !2534, file: !346, line: 680, column: 25)
!2539 = !DILocation(line: 680, column: 25, scope: !2538)
!2540 = !DILocation(line: 680, column: 25, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !346, line: 680, column: 25)
!2542 = distinct !DILexicalBlock(scope: !2534, file: !346, line: 680, column: 25)
!2543 = !DILocation(line: 680, column: 25, scope: !2542)
!2544 = !DILocation(line: 680, column: 25, scope: !2534)
!2545 = !DILocation(line: 680, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !346, line: 680, column: 25)
!2547 = distinct !DILexicalBlock(scope: !2527, file: !346, line: 680, column: 25)
!2548 = !DILocation(line: 680, column: 25, scope: !2547)
!2549 = !DILocation(line: 681, column: 25, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !346, line: 681, column: 25)
!2551 = distinct !DILexicalBlock(scope: !2528, file: !346, line: 681, column: 25)
!2552 = !DILocation(line: 681, column: 25, scope: !2551)
!2553 = !DILocation(line: 682, column: 25, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !346, line: 682, column: 25)
!2555 = distinct !DILexicalBlock(scope: !2528, file: !346, line: 682, column: 25)
!2556 = !DILocation(line: 682, column: 25, scope: !2555)
!2557 = !DILocation(line: 683, column: 38, scope: !2528)
!2558 = !DILocation(line: 683, column: 33, scope: !2528)
!2559 = !DILocation(line: 684, column: 23, scope: !2528)
!2560 = !DILocation(line: 685, column: 30, scope: !2522)
!2561 = !DILocation(line: 687, column: 25, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !346, line: 687, column: 25)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !346, line: 687, column: 25)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !346, line: 686, column: 23)
!2565 = distinct !DILexicalBlock(scope: !2522, file: !346, line: 685, column: 30)
!2566 = !DILocation(line: 687, column: 25, scope: !2563)
!2567 = !DILocation(line: 689, column: 23, scope: !2564)
!2568 = !DILocation(line: 690, column: 35, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2523, file: !346, line: 690, column: 25)
!2570 = !DILocation(line: 690, column: 30, scope: !2569)
!2571 = !DILocation(line: 690, column: 25, scope: !2523)
!2572 = !DILocation(line: 692, column: 21, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !346, line: 692, column: 21)
!2574 = distinct !DILexicalBlock(scope: !2523, file: !346, line: 692, column: 21)
!2575 = !DILocation(line: 692, column: 21, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !346, line: 692, column: 21)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !346, line: 692, column: 21)
!2578 = distinct !DILexicalBlock(scope: !2573, file: !346, line: 692, column: 21)
!2579 = !DILocation(line: 692, column: 21, scope: !2577)
!2580 = !DILocation(line: 692, column: 21, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !346, line: 692, column: 21)
!2582 = distinct !DILexicalBlock(scope: !2578, file: !346, line: 692, column: 21)
!2583 = !DILocation(line: 692, column: 21, scope: !2582)
!2584 = !DILocation(line: 692, column: 21, scope: !2578)
!2585 = !DILocation(line: 0, scope: !2523)
!2586 = !DILocation(line: 693, column: 21, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !346, line: 693, column: 21)
!2588 = distinct !DILexicalBlock(scope: !2523, file: !346, line: 693, column: 21)
!2589 = !DILocation(line: 693, column: 21, scope: !2588)
!2590 = !DILocation(line: 694, column: 25, scope: !2523)
!2591 = !DILocation(line: 676, column: 17, scope: !2524)
!2592 = distinct !{!2592, !2593, !2594}
!2593 = !DILocation(line: 676, column: 17, scope: !2525)
!2594 = !DILocation(line: 695, column: 19, scope: !2525)
!2595 = !DILocation(line: 409, column: 30, scope: !2310)
!2596 = !DILocation(line: 702, column: 34, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2176, file: !346, line: 702, column: 11)
!2598 = !DILocation(line: 704, column: 14, scope: !2597)
!2599 = !DILocation(line: 705, column: 14, scope: !2597)
!2600 = !DILocation(line: 705, column: 35, scope: !2597)
!2601 = !DILocation(line: 705, column: 17, scope: !2597)
!2602 = !DILocation(line: 705, column: 47, scope: !2597)
!2603 = !DILocation(line: 705, column: 65, scope: !2597)
!2604 = !DILocation(line: 706, column: 11, scope: !2597)
!2605 = !DILocation(line: 702, column: 11, scope: !2176)
!2606 = !DILocation(line: 395, column: 15, scope: !2174)
!2607 = !DILocation(line: 709, column: 5, scope: !2176)
!2608 = !DILocation(line: 710, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2176, file: !346, line: 710, column: 7)
!2610 = !DILocation(line: 710, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2609, file: !346, line: 710, column: 7)
!2612 = !DILocation(line: 710, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !346, line: 710, column: 7)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !346, line: 710, column: 7)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !346, line: 710, column: 7)
!2616 = !DILocation(line: 710, column: 7, scope: !2614)
!2617 = !DILocation(line: 710, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !346, line: 710, column: 7)
!2619 = distinct !DILexicalBlock(scope: !2615, file: !346, line: 710, column: 7)
!2620 = !DILocation(line: 710, column: 7, scope: !2619)
!2621 = !DILocation(line: 710, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !346, line: 710, column: 7)
!2623 = distinct !DILexicalBlock(scope: !2615, file: !346, line: 710, column: 7)
!2624 = !DILocation(line: 710, column: 7, scope: !2623)
!2625 = !DILocation(line: 710, column: 7, scope: !2615)
!2626 = !DILocation(line: 710, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !346, line: 710, column: 7)
!2628 = distinct !DILexicalBlock(scope: !2609, file: !346, line: 710, column: 7)
!2629 = !DILocation(line: 710, column: 7, scope: !2628)
!2630 = !DILocation(line: 712, column: 5, scope: !2176)
!2631 = !DILocation(line: 713, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !346, line: 713, column: 7)
!2633 = distinct !DILexicalBlock(scope: !2176, file: !346, line: 713, column: 7)
!2634 = !DILocation(line: 417, column: 21, scope: !2176)
!2635 = !DILocation(line: 713, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !346, line: 713, column: 7)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !346, line: 713, column: 7)
!2638 = distinct !DILexicalBlock(scope: !2632, file: !346, line: 713, column: 7)
!2639 = !DILocation(line: 713, column: 7, scope: !2637)
!2640 = !DILocation(line: 713, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !346, line: 713, column: 7)
!2642 = distinct !DILexicalBlock(scope: !2638, file: !346, line: 713, column: 7)
!2643 = !DILocation(line: 713, column: 7, scope: !2642)
!2644 = !DILocation(line: 713, column: 7, scope: !2638)
!2645 = !DILocation(line: 714, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !346, line: 714, column: 7)
!2647 = distinct !DILexicalBlock(scope: !2176, file: !346, line: 714, column: 7)
!2648 = !DILocation(line: 714, column: 7, scope: !2647)
!2649 = !DILocation(line: 716, column: 11, scope: !2176)
!2650 = !DILocation(line: 718, column: 5, scope: !2177)
!2651 = !DILocation(line: 395, column: 82, scope: !2177)
!2652 = !DILocation(line: 395, column: 3, scope: !2177)
!2653 = distinct !{!2653, !2306, !2654, !616}
!2654 = !DILocation(line: 718, column: 5, scope: !2174)
!2655 = !DILocation(line: 720, column: 11, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2143, file: !346, line: 720, column: 7)
!2657 = !DILocation(line: 720, column: 16, scope: !2656)
!2658 = !DILocation(line: 728, column: 51, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2143, file: !346, line: 728, column: 7)
!2660 = !DILocation(line: 731, column: 11, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2659, file: !346, line: 730, column: 5)
!2662 = !DILocation(line: 732, column: 16, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2661, file: !346, line: 731, column: 11)
!2664 = !DILocation(line: 732, column: 9, scope: !2663)
!2665 = !DILocation(line: 736, column: 18, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !346, line: 736, column: 16)
!2667 = !DILocation(line: 736, column: 29, scope: !2666)
!2668 = !DILocation(line: 745, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2143, file: !346, line: 745, column: 7)
!2670 = !DILocation(line: 745, column: 20, scope: !2669)
!2671 = !DILocation(line: 746, column: 12, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !346, line: 746, column: 5)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !346, line: 746, column: 5)
!2674 = !DILocation(line: 746, column: 5, scope: !2673)
!2675 = !DILocation(line: 747, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !346, line: 747, column: 7)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !346, line: 747, column: 7)
!2678 = !DILocation(line: 747, column: 7, scope: !2677)
!2679 = !DILocation(line: 746, column: 39, scope: !2672)
!2680 = distinct !{!2680, !2674, !2681, !616}
!2681 = !DILocation(line: 747, column: 7, scope: !2673)
!2682 = !DILocation(line: 749, column: 11, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2143, file: !346, line: 749, column: 7)
!2684 = !DILocation(line: 749, column: 7, scope: !2143)
!2685 = !DILocation(line: 750, column: 5, scope: !2683)
!2686 = !DILocation(line: 750, column: 17, scope: !2683)
!2687 = !DILocation(line: 756, column: 21, scope: !2514)
!2688 = !DILocation(line: 760, column: 42, scope: !2143)
!2689 = !DILocation(line: 758, column: 10, scope: !2143)
!2690 = !DILocation(line: 758, column: 3, scope: !2143)
!2691 = !DILocation(line: 762, column: 1, scope: !2143)
!2692 = !DISubprogram(name: "iswprint", scope: !1362, file: !1362, line: 120, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!2693 = distinct !DISubprogram(name: "quotearg_alloc", scope: !346, file: !346, line: 788, type: !2694, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!67, !75, !72, !2035}
!2696 = !{!2697, !2698, !2699}
!2697 = !DILocalVariable(name: "arg", arg: 1, scope: !2693, file: !346, line: 788, type: !75)
!2698 = !DILocalVariable(name: "argsize", arg: 2, scope: !2693, file: !346, line: 788, type: !72)
!2699 = !DILocalVariable(name: "o", arg: 3, scope: !2693, file: !346, line: 789, type: !2035)
!2700 = !DILocation(line: 0, scope: !2693)
!2701 = !DILocalVariable(name: "arg", arg: 1, scope: !2702, file: !346, line: 801, type: !75)
!2702 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !346, file: !346, line: 801, type: !2703, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!67, !75, !72, !475, !2035}
!2705 = !{!2701, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713}
!2706 = !DILocalVariable(name: "argsize", arg: 2, scope: !2702, file: !346, line: 801, type: !72)
!2707 = !DILocalVariable(name: "size", arg: 3, scope: !2702, file: !346, line: 801, type: !475)
!2708 = !DILocalVariable(name: "o", arg: 4, scope: !2702, file: !346, line: 802, type: !2035)
!2709 = !DILocalVariable(name: "p", scope: !2702, file: !346, line: 804, type: !2035)
!2710 = !DILocalVariable(name: "saved_errno", scope: !2702, file: !346, line: 805, type: !70)
!2711 = !DILocalVariable(name: "flags", scope: !2702, file: !346, line: 807, type: !70)
!2712 = !DILocalVariable(name: "bufsize", scope: !2702, file: !346, line: 808, type: !72)
!2713 = !DILocalVariable(name: "buf", scope: !2702, file: !346, line: 812, type: !67)
!2714 = !DILocation(line: 0, scope: !2702, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 791, column: 10, scope: !2693)
!2716 = !DILocation(line: 804, column: 37, scope: !2702, inlinedAt: !2715)
!2717 = !DILocation(line: 805, column: 21, scope: !2702, inlinedAt: !2715)
!2718 = !DILocation(line: 807, column: 18, scope: !2702, inlinedAt: !2715)
!2719 = !DILocation(line: 807, column: 24, scope: !2702, inlinedAt: !2715)
!2720 = !DILocation(line: 808, column: 72, scope: !2702, inlinedAt: !2715)
!2721 = !DILocation(line: 809, column: 53, scope: !2702, inlinedAt: !2715)
!2722 = !DILocation(line: 810, column: 49, scope: !2702, inlinedAt: !2715)
!2723 = !DILocation(line: 811, column: 49, scope: !2702, inlinedAt: !2715)
!2724 = !DILocation(line: 808, column: 20, scope: !2702, inlinedAt: !2715)
!2725 = !DILocation(line: 811, column: 62, scope: !2702, inlinedAt: !2715)
!2726 = !DILocation(line: 812, column: 15, scope: !2702, inlinedAt: !2715)
!2727 = !DILocation(line: 813, column: 60, scope: !2702, inlinedAt: !2715)
!2728 = !DILocation(line: 815, column: 32, scope: !2702, inlinedAt: !2715)
!2729 = !DILocation(line: 815, column: 47, scope: !2702, inlinedAt: !2715)
!2730 = !DILocation(line: 813, column: 3, scope: !2702, inlinedAt: !2715)
!2731 = !DILocation(line: 816, column: 9, scope: !2702, inlinedAt: !2715)
!2732 = !DILocation(line: 791, column: 3, scope: !2693)
!2733 = !DILocation(line: 0, scope: !2702)
!2734 = !DILocation(line: 804, column: 37, scope: !2702)
!2735 = !DILocation(line: 805, column: 21, scope: !2702)
!2736 = !DILocation(line: 807, column: 18, scope: !2702)
!2737 = !DILocation(line: 807, column: 27, scope: !2702)
!2738 = !DILocation(line: 807, column: 24, scope: !2702)
!2739 = !DILocation(line: 808, column: 72, scope: !2702)
!2740 = !DILocation(line: 809, column: 53, scope: !2702)
!2741 = !DILocation(line: 810, column: 49, scope: !2702)
!2742 = !DILocation(line: 811, column: 49, scope: !2702)
!2743 = !DILocation(line: 808, column: 20, scope: !2702)
!2744 = !DILocation(line: 811, column: 62, scope: !2702)
!2745 = !DILocation(line: 812, column: 15, scope: !2702)
!2746 = !DILocation(line: 813, column: 60, scope: !2702)
!2747 = !DILocation(line: 815, column: 32, scope: !2702)
!2748 = !DILocation(line: 815, column: 47, scope: !2702)
!2749 = !DILocation(line: 813, column: 3, scope: !2702)
!2750 = !DILocation(line: 816, column: 9, scope: !2702)
!2751 = !DILocation(line: 817, column: 7, scope: !2702)
!2752 = !DILocation(line: 818, column: 11, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2702, file: !346, line: 817, column: 7)
!2754 = !{!911, !911, i64 0}
!2755 = !DILocation(line: 818, column: 5, scope: !2753)
!2756 = !DILocation(line: 819, column: 3, scope: !2702)
!2757 = distinct !DISubprogram(name: "quotearg_free", scope: !346, file: !346, line: 837, type: !303, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2758)
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "sv", scope: !2757, file: !346, line: 839, type: !405)
!2760 = !DILocalVariable(name: "i", scope: !2761, file: !346, line: 840, type: !70)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !346, line: 840, column: 3)
!2762 = !DILocation(line: 839, column: 24, scope: !2757)
!2763 = !DILocation(line: 0, scope: !2757)
!2764 = !DILocation(line: 0, scope: !2761)
!2765 = !DILocation(line: 840, column: 21, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2761, file: !346, line: 840, column: 3)
!2767 = !DILocation(line: 840, column: 3, scope: !2761)
!2768 = !DILocation(line: 842, column: 13, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2757, file: !346, line: 842, column: 7)
!2770 = !{!2771, !556, i64 8}
!2771 = !{!"slotvec", !911, i64 0, !556, i64 8}
!2772 = !DILocation(line: 842, column: 17, scope: !2769)
!2773 = !DILocation(line: 842, column: 7, scope: !2757)
!2774 = !DILocation(line: 841, column: 17, scope: !2766)
!2775 = !DILocation(line: 841, column: 5, scope: !2766)
!2776 = !DILocation(line: 840, column: 32, scope: !2766)
!2777 = distinct !{!2777, !2767, !2778, !616}
!2778 = !DILocation(line: 841, column: 20, scope: !2761)
!2779 = !DILocation(line: 844, column: 7, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2769, file: !346, line: 843, column: 5)
!2781 = !DILocation(line: 845, column: 21, scope: !2780)
!2782 = !{!2771, !911, i64 0}
!2783 = !DILocation(line: 846, column: 20, scope: !2780)
!2784 = !DILocation(line: 847, column: 5, scope: !2780)
!2785 = !DILocation(line: 848, column: 10, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2757, file: !346, line: 848, column: 7)
!2787 = !DILocation(line: 848, column: 7, scope: !2757)
!2788 = !DILocation(line: 850, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2786, file: !346, line: 849, column: 5)
!2790 = !DILocation(line: 850, column: 7, scope: !2789)
!2791 = !DILocation(line: 851, column: 15, scope: !2789)
!2792 = !DILocation(line: 852, column: 5, scope: !2789)
!2793 = !DILocation(line: 853, column: 10, scope: !2757)
!2794 = !DILocation(line: 854, column: 1, scope: !2757)
!2795 = distinct !DISubprogram(name: "quotearg_n", scope: !346, file: !346, line: 919, type: !757, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2796)
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "n", arg: 1, scope: !2795, file: !346, line: 919, type: !70)
!2798 = !DILocalVariable(name: "arg", arg: 2, scope: !2795, file: !346, line: 919, type: !75)
!2799 = !DILocation(line: 0, scope: !2795)
!2800 = !DILocation(line: 921, column: 10, scope: !2795)
!2801 = !DILocation(line: 921, column: 3, scope: !2795)
!2802 = distinct !DISubprogram(name: "quotearg_n_options", scope: !346, file: !346, line: 866, type: !2803, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!67, !70, !75, !72, !2035}
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2816, !2817, !2819, !2820, !2821}
!2806 = !DILocalVariable(name: "n", arg: 1, scope: !2802, file: !346, line: 866, type: !70)
!2807 = !DILocalVariable(name: "arg", arg: 2, scope: !2802, file: !346, line: 866, type: !75)
!2808 = !DILocalVariable(name: "argsize", arg: 3, scope: !2802, file: !346, line: 866, type: !72)
!2809 = !DILocalVariable(name: "options", arg: 4, scope: !2802, file: !346, line: 867, type: !2035)
!2810 = !DILocalVariable(name: "saved_errno", scope: !2802, file: !346, line: 869, type: !70)
!2811 = !DILocalVariable(name: "sv", scope: !2802, file: !346, line: 871, type: !405)
!2812 = !DILocalVariable(name: "nslots_max", scope: !2802, file: !346, line: 873, type: !70)
!2813 = !DILocalVariable(name: "preallocated", scope: !2814, file: !346, line: 879, type: !81)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !346, line: 878, column: 5)
!2815 = distinct !DILexicalBlock(scope: !2802, file: !346, line: 877, column: 7)
!2816 = !DILocalVariable(name: "new_nslots", scope: !2814, file: !346, line: 880, type: !197)
!2817 = !DILocalVariable(name: "size", scope: !2818, file: !346, line: 891, type: !72)
!2818 = distinct !DILexicalBlock(scope: !2802, file: !346, line: 890, column: 3)
!2819 = !DILocalVariable(name: "val", scope: !2818, file: !346, line: 892, type: !67)
!2820 = !DILocalVariable(name: "flags", scope: !2818, file: !346, line: 894, type: !70)
!2821 = !DILocalVariable(name: "qsize", scope: !2818, file: !346, line: 895, type: !72)
!2822 = !DILocation(line: 0, scope: !2802)
!2823 = !DILocation(line: 869, column: 21, scope: !2802)
!2824 = !DILocation(line: 871, column: 24, scope: !2802)
!2825 = !DILocation(line: 874, column: 17, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2802, file: !346, line: 874, column: 7)
!2827 = !DILocation(line: 875, column: 5, scope: !2826)
!2828 = !DILocation(line: 877, column: 7, scope: !2815)
!2829 = !DILocation(line: 877, column: 14, scope: !2815)
!2830 = !DILocation(line: 877, column: 7, scope: !2802)
!2831 = !DILocation(line: 879, column: 31, scope: !2814)
!2832 = !DILocation(line: 0, scope: !2814)
!2833 = !DILocation(line: 880, column: 7, scope: !2814)
!2834 = !DILocation(line: 880, column: 26, scope: !2814)
!2835 = !DILocation(line: 880, column: 13, scope: !2814)
!2836 = !DILocation(line: 882, column: 31, scope: !2814)
!2837 = !DILocation(line: 883, column: 33, scope: !2814)
!2838 = !DILocation(line: 883, column: 42, scope: !2814)
!2839 = !DILocation(line: 883, column: 31, scope: !2814)
!2840 = !DILocation(line: 882, column: 22, scope: !2814)
!2841 = !DILocation(line: 882, column: 15, scope: !2814)
!2842 = !DILocation(line: 884, column: 11, scope: !2814)
!2843 = !DILocation(line: 885, column: 15, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2814, file: !346, line: 884, column: 11)
!2845 = !{i64 0, i64 8, !2754, i64 8, i64 8, !555}
!2846 = !DILocation(line: 885, column: 9, scope: !2844)
!2847 = !DILocation(line: 886, column: 20, scope: !2814)
!2848 = !DILocation(line: 886, column: 18, scope: !2814)
!2849 = !DILocation(line: 886, column: 15, scope: !2814)
!2850 = !DILocation(line: 886, column: 32, scope: !2814)
!2851 = !DILocation(line: 886, column: 43, scope: !2814)
!2852 = !DILocation(line: 886, column: 53, scope: !2814)
!2853 = !DILocation(line: 0, scope: !2246, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 886, column: 7, scope: !2814)
!2855 = !DILocation(line: 59, column: 10, scope: !2246, inlinedAt: !2854)
!2856 = !DILocation(line: 887, column: 16, scope: !2814)
!2857 = !DILocation(line: 887, column: 14, scope: !2814)
!2858 = !DILocation(line: 888, column: 5, scope: !2815)
!2859 = !DILocation(line: 888, column: 5, scope: !2814)
!2860 = !DILocation(line: 891, column: 19, scope: !2818)
!2861 = !DILocation(line: 891, column: 25, scope: !2818)
!2862 = !DILocation(line: 0, scope: !2818)
!2863 = !DILocation(line: 892, column: 23, scope: !2818)
!2864 = !DILocation(line: 894, column: 26, scope: !2818)
!2865 = !DILocation(line: 894, column: 32, scope: !2818)
!2866 = !DILocation(line: 896, column: 55, scope: !2818)
!2867 = !DILocation(line: 897, column: 46, scope: !2818)
!2868 = !DILocation(line: 898, column: 55, scope: !2818)
!2869 = !DILocation(line: 899, column: 55, scope: !2818)
!2870 = !DILocation(line: 895, column: 20, scope: !2818)
!2871 = !DILocation(line: 901, column: 14, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2818, file: !346, line: 901, column: 9)
!2873 = !DILocation(line: 901, column: 9, scope: !2818)
!2874 = !DILocation(line: 903, column: 35, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2872, file: !346, line: 902, column: 7)
!2876 = !DILocation(line: 903, column: 20, scope: !2875)
!2877 = !DILocation(line: 904, column: 17, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2875, file: !346, line: 904, column: 13)
!2879 = !DILocation(line: 904, column: 13, scope: !2875)
!2880 = !DILocation(line: 905, column: 11, scope: !2878)
!2881 = !DILocation(line: 906, column: 27, scope: !2875)
!2882 = !DILocation(line: 906, column: 19, scope: !2875)
!2883 = !DILocation(line: 907, column: 69, scope: !2875)
!2884 = !DILocation(line: 909, column: 44, scope: !2875)
!2885 = !DILocation(line: 910, column: 44, scope: !2875)
!2886 = !DILocation(line: 907, column: 9, scope: !2875)
!2887 = !DILocation(line: 911, column: 7, scope: !2875)
!2888 = !DILocation(line: 913, column: 11, scope: !2818)
!2889 = !DILocation(line: 914, column: 5, scope: !2818)
!2890 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !346, file: !346, line: 925, type: !2891, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!67, !70, !75, !72}
!2893 = !{!2894, !2895, !2896}
!2894 = !DILocalVariable(name: "n", arg: 1, scope: !2890, file: !346, line: 925, type: !70)
!2895 = !DILocalVariable(name: "arg", arg: 2, scope: !2890, file: !346, line: 925, type: !75)
!2896 = !DILocalVariable(name: "argsize", arg: 3, scope: !2890, file: !346, line: 925, type: !72)
!2897 = !DILocation(line: 0, scope: !2890)
!2898 = !DILocation(line: 927, column: 10, scope: !2890)
!2899 = !DILocation(line: 927, column: 3, scope: !2890)
!2900 = distinct !DISubprogram(name: "quotearg", scope: !346, file: !346, line: 931, type: !761, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2901)
!2901 = !{!2902}
!2902 = !DILocalVariable(name: "arg", arg: 1, scope: !2900, file: !346, line: 931, type: !75)
!2903 = !DILocation(line: 0, scope: !2900)
!2904 = !DILocation(line: 0, scope: !2795, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 933, column: 10, scope: !2900)
!2906 = !DILocation(line: 921, column: 10, scope: !2795, inlinedAt: !2905)
!2907 = !DILocation(line: 933, column: 3, scope: !2900)
!2908 = distinct !DISubprogram(name: "quotearg_mem", scope: !346, file: !346, line: 937, type: !2909, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!67, !75, !72}
!2911 = !{!2912, !2913}
!2912 = !DILocalVariable(name: "arg", arg: 1, scope: !2908, file: !346, line: 937, type: !75)
!2913 = !DILocalVariable(name: "argsize", arg: 2, scope: !2908, file: !346, line: 937, type: !72)
!2914 = !DILocation(line: 0, scope: !2908)
!2915 = !DILocation(line: 0, scope: !2890, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 939, column: 10, scope: !2908)
!2917 = !DILocation(line: 927, column: 10, scope: !2890, inlinedAt: !2916)
!2918 = !DILocation(line: 939, column: 3, scope: !2908)
!2919 = distinct !DISubprogram(name: "quotearg_n_style", scope: !346, file: !346, line: 943, type: !2920, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!67, !70, !33, !75}
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DILocalVariable(name: "n", arg: 1, scope: !2919, file: !346, line: 943, type: !70)
!2924 = !DILocalVariable(name: "s", arg: 2, scope: !2919, file: !346, line: 943, type: !33)
!2925 = !DILocalVariable(name: "arg", arg: 3, scope: !2919, file: !346, line: 943, type: !75)
!2926 = !DILocalVariable(name: "o", scope: !2919, file: !346, line: 945, type: !2036)
!2927 = !DILocation(line: 0, scope: !2919)
!2928 = !DILocation(line: 945, column: 3, scope: !2919)
!2929 = !DILocation(line: 945, column: 32, scope: !2919)
!2930 = !{!2931}
!2931 = distinct !{!2931, !2932, !"quoting_options_from_style: argument 0"}
!2932 = distinct !{!2932, !"quoting_options_from_style"}
!2933 = !DILocation(line: 945, column: 36, scope: !2919)
!2934 = !DILocalVariable(name: "style", arg: 1, scope: !2935, file: !346, line: 183, type: !33)
!2935 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !346, file: !346, line: 183, type: !2936, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!363, !33}
!2938 = !{!2934, !2939}
!2939 = !DILocalVariable(name: "o", scope: !2935, file: !346, line: 185, type: !363)
!2940 = !DILocation(line: 0, scope: !2935, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 945, column: 36, scope: !2919)
!2942 = !DILocation(line: 185, column: 26, scope: !2935, inlinedAt: !2941)
!2943 = !DILocation(line: 186, column: 13, scope: !2944, inlinedAt: !2941)
!2944 = distinct !DILexicalBlock(scope: !2935, file: !346, line: 186, column: 7)
!2945 = !DILocation(line: 186, column: 7, scope: !2935, inlinedAt: !2941)
!2946 = !DILocation(line: 187, column: 5, scope: !2944, inlinedAt: !2941)
!2947 = !DILocation(line: 188, column: 5, scope: !2935, inlinedAt: !2941)
!2948 = !DILocation(line: 188, column: 11, scope: !2935, inlinedAt: !2941)
!2949 = !DILocation(line: 946, column: 10, scope: !2919)
!2950 = !DILocation(line: 947, column: 1, scope: !2919)
!2951 = !DILocation(line: 946, column: 3, scope: !2919)
!2952 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !346, file: !346, line: 950, type: !2953, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!67, !70, !33, !75, !72}
!2955 = !{!2956, !2957, !2958, !2959, !2960}
!2956 = !DILocalVariable(name: "n", arg: 1, scope: !2952, file: !346, line: 950, type: !70)
!2957 = !DILocalVariable(name: "s", arg: 2, scope: !2952, file: !346, line: 950, type: !33)
!2958 = !DILocalVariable(name: "arg", arg: 3, scope: !2952, file: !346, line: 951, type: !75)
!2959 = !DILocalVariable(name: "argsize", arg: 4, scope: !2952, file: !346, line: 951, type: !72)
!2960 = !DILocalVariable(name: "o", scope: !2952, file: !346, line: 953, type: !2036)
!2961 = !DILocation(line: 0, scope: !2952)
!2962 = !DILocation(line: 953, column: 3, scope: !2952)
!2963 = !DILocation(line: 953, column: 32, scope: !2952)
!2964 = !{!2965}
!2965 = distinct !{!2965, !2966, !"quoting_options_from_style: argument 0"}
!2966 = distinct !{!2966, !"quoting_options_from_style"}
!2967 = !DILocation(line: 953, column: 36, scope: !2952)
!2968 = !DILocation(line: 0, scope: !2935, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 953, column: 36, scope: !2952)
!2970 = !DILocation(line: 185, column: 26, scope: !2935, inlinedAt: !2969)
!2971 = !DILocation(line: 186, column: 13, scope: !2944, inlinedAt: !2969)
!2972 = !DILocation(line: 186, column: 7, scope: !2935, inlinedAt: !2969)
!2973 = !DILocation(line: 187, column: 5, scope: !2944, inlinedAt: !2969)
!2974 = !DILocation(line: 188, column: 5, scope: !2935, inlinedAt: !2969)
!2975 = !DILocation(line: 188, column: 11, scope: !2935, inlinedAt: !2969)
!2976 = !DILocation(line: 954, column: 10, scope: !2952)
!2977 = !DILocation(line: 955, column: 1, scope: !2952)
!2978 = !DILocation(line: 954, column: 3, scope: !2952)
!2979 = distinct !DISubprogram(name: "quotearg_style", scope: !346, file: !346, line: 958, type: !2980, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!67, !33, !75}
!2982 = !{!2983, !2984}
!2983 = !DILocalVariable(name: "s", arg: 1, scope: !2979, file: !346, line: 958, type: !33)
!2984 = !DILocalVariable(name: "arg", arg: 2, scope: !2979, file: !346, line: 958, type: !75)
!2985 = !DILocation(line: 0, scope: !2979)
!2986 = !DILocation(line: 0, scope: !2919, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 960, column: 10, scope: !2979)
!2988 = !DILocation(line: 945, column: 3, scope: !2919, inlinedAt: !2987)
!2989 = !DILocation(line: 945, column: 32, scope: !2919, inlinedAt: !2987)
!2990 = !{!2991}
!2991 = distinct !{!2991, !2992, !"quoting_options_from_style: argument 0"}
!2992 = distinct !{!2992, !"quoting_options_from_style"}
!2993 = !DILocation(line: 945, column: 36, scope: !2919, inlinedAt: !2987)
!2994 = !DILocation(line: 0, scope: !2935, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 945, column: 36, scope: !2919, inlinedAt: !2987)
!2996 = !DILocation(line: 185, column: 26, scope: !2935, inlinedAt: !2995)
!2997 = !DILocation(line: 186, column: 13, scope: !2944, inlinedAt: !2995)
!2998 = !DILocation(line: 186, column: 7, scope: !2935, inlinedAt: !2995)
!2999 = !DILocation(line: 187, column: 5, scope: !2944, inlinedAt: !2995)
!3000 = !DILocation(line: 188, column: 5, scope: !2935, inlinedAt: !2995)
!3001 = !DILocation(line: 188, column: 11, scope: !2935, inlinedAt: !2995)
!3002 = !DILocation(line: 946, column: 10, scope: !2919, inlinedAt: !2987)
!3003 = !DILocation(line: 947, column: 1, scope: !2919, inlinedAt: !2987)
!3004 = !DILocation(line: 960, column: 3, scope: !2979)
!3005 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !346, file: !346, line: 964, type: !3006, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!67, !33, !75, !72}
!3008 = !{!3009, !3010, !3011}
!3009 = !DILocalVariable(name: "s", arg: 1, scope: !3005, file: !346, line: 964, type: !33)
!3010 = !DILocalVariable(name: "arg", arg: 2, scope: !3005, file: !346, line: 964, type: !75)
!3011 = !DILocalVariable(name: "argsize", arg: 3, scope: !3005, file: !346, line: 964, type: !72)
!3012 = !DILocation(line: 0, scope: !3005)
!3013 = !DILocation(line: 0, scope: !2952, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 966, column: 10, scope: !3005)
!3015 = !DILocation(line: 953, column: 3, scope: !2952, inlinedAt: !3014)
!3016 = !DILocation(line: 953, column: 32, scope: !2952, inlinedAt: !3014)
!3017 = !{!3018}
!3018 = distinct !{!3018, !3019, !"quoting_options_from_style: argument 0"}
!3019 = distinct !{!3019, !"quoting_options_from_style"}
!3020 = !DILocation(line: 953, column: 36, scope: !2952, inlinedAt: !3014)
!3021 = !DILocation(line: 0, scope: !2935, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 953, column: 36, scope: !2952, inlinedAt: !3014)
!3023 = !DILocation(line: 185, column: 26, scope: !2935, inlinedAt: !3022)
!3024 = !DILocation(line: 186, column: 13, scope: !2944, inlinedAt: !3022)
!3025 = !DILocation(line: 186, column: 7, scope: !2935, inlinedAt: !3022)
!3026 = !DILocation(line: 187, column: 5, scope: !2944, inlinedAt: !3022)
!3027 = !DILocation(line: 188, column: 5, scope: !2935, inlinedAt: !3022)
!3028 = !DILocation(line: 188, column: 11, scope: !2935, inlinedAt: !3022)
!3029 = !DILocation(line: 954, column: 10, scope: !2952, inlinedAt: !3014)
!3030 = !DILocation(line: 955, column: 1, scope: !2952, inlinedAt: !3014)
!3031 = !DILocation(line: 966, column: 3, scope: !3005)
!3032 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !346, file: !346, line: 970, type: !3033, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!67, !75, !72, !68}
!3035 = !{!3036, !3037, !3038, !3039}
!3036 = !DILocalVariable(name: "arg", arg: 1, scope: !3032, file: !346, line: 970, type: !75)
!3037 = !DILocalVariable(name: "argsize", arg: 2, scope: !3032, file: !346, line: 970, type: !72)
!3038 = !DILocalVariable(name: "ch", arg: 3, scope: !3032, file: !346, line: 970, type: !68)
!3039 = !DILocalVariable(name: "options", scope: !3032, file: !346, line: 972, type: !363)
!3040 = !DILocation(line: 0, scope: !3032)
!3041 = !DILocation(line: 972, column: 3, scope: !3032)
!3042 = !DILocation(line: 972, column: 26, scope: !3032)
!3043 = !DILocation(line: 973, column: 13, scope: !3032)
!3044 = !{i64 0, i64 4, !658, i64 4, i64 4, !649, i64 8, i64 32, !658, i64 40, i64 8, !555, i64 48, i64 8, !555}
!3045 = !DILocation(line: 0, scope: !2056, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 974, column: 3, scope: !3032)
!3047 = !DILocation(line: 147, column: 62, scope: !2056, inlinedAt: !3046)
!3048 = !DILocation(line: 147, column: 57, scope: !2056, inlinedAt: !3046)
!3049 = !DILocation(line: 148, column: 15, scope: !2056, inlinedAt: !3046)
!3050 = !DILocation(line: 149, column: 21, scope: !2056, inlinedAt: !3046)
!3051 = !DILocation(line: 149, column: 24, scope: !2056, inlinedAt: !3046)
!3052 = !DILocation(line: 149, column: 34, scope: !2056, inlinedAt: !3046)
!3053 = !DILocation(line: 150, column: 19, scope: !2056, inlinedAt: !3046)
!3054 = !DILocation(line: 150, column: 24, scope: !2056, inlinedAt: !3046)
!3055 = !DILocation(line: 150, column: 6, scope: !2056, inlinedAt: !3046)
!3056 = !DILocation(line: 975, column: 10, scope: !3032)
!3057 = !DILocation(line: 976, column: 1, scope: !3032)
!3058 = !DILocation(line: 975, column: 3, scope: !3032)
!3059 = distinct !DISubprogram(name: "quotearg_char", scope: !346, file: !346, line: 979, type: !3060, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!67, !75, !68}
!3062 = !{!3063, !3064}
!3063 = !DILocalVariable(name: "arg", arg: 1, scope: !3059, file: !346, line: 979, type: !75)
!3064 = !DILocalVariable(name: "ch", arg: 2, scope: !3059, file: !346, line: 979, type: !68)
!3065 = !DILocation(line: 0, scope: !3059)
!3066 = !DILocation(line: 0, scope: !3032, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 981, column: 10, scope: !3059)
!3068 = !DILocation(line: 972, column: 3, scope: !3032, inlinedAt: !3067)
!3069 = !DILocation(line: 972, column: 26, scope: !3032, inlinedAt: !3067)
!3070 = !DILocation(line: 973, column: 13, scope: !3032, inlinedAt: !3067)
!3071 = !DILocation(line: 0, scope: !2056, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 974, column: 3, scope: !3032, inlinedAt: !3067)
!3073 = !DILocation(line: 147, column: 62, scope: !2056, inlinedAt: !3072)
!3074 = !DILocation(line: 147, column: 57, scope: !2056, inlinedAt: !3072)
!3075 = !DILocation(line: 148, column: 15, scope: !2056, inlinedAt: !3072)
!3076 = !DILocation(line: 149, column: 21, scope: !2056, inlinedAt: !3072)
!3077 = !DILocation(line: 149, column: 24, scope: !2056, inlinedAt: !3072)
!3078 = !DILocation(line: 149, column: 34, scope: !2056, inlinedAt: !3072)
!3079 = !DILocation(line: 150, column: 19, scope: !2056, inlinedAt: !3072)
!3080 = !DILocation(line: 150, column: 24, scope: !2056, inlinedAt: !3072)
!3081 = !DILocation(line: 150, column: 6, scope: !2056, inlinedAt: !3072)
!3082 = !DILocation(line: 975, column: 10, scope: !3032, inlinedAt: !3067)
!3083 = !DILocation(line: 976, column: 1, scope: !3032, inlinedAt: !3067)
!3084 = !DILocation(line: 981, column: 3, scope: !3059)
!3085 = distinct !DISubprogram(name: "quotearg_colon", scope: !346, file: !346, line: 985, type: !761, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3086)
!3086 = !{!3087}
!3087 = !DILocalVariable(name: "arg", arg: 1, scope: !3085, file: !346, line: 985, type: !75)
!3088 = !DILocation(line: 0, scope: !3085)
!3089 = !DILocation(line: 0, scope: !3059, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 987, column: 10, scope: !3085)
!3091 = !DILocation(line: 0, scope: !3032, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 981, column: 10, scope: !3059, inlinedAt: !3090)
!3093 = !DILocation(line: 972, column: 3, scope: !3032, inlinedAt: !3092)
!3094 = !DILocation(line: 972, column: 26, scope: !3032, inlinedAt: !3092)
!3095 = !DILocation(line: 973, column: 13, scope: !3032, inlinedAt: !3092)
!3096 = !DILocation(line: 0, scope: !2056, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 974, column: 3, scope: !3032, inlinedAt: !3092)
!3098 = !DILocation(line: 147, column: 57, scope: !2056, inlinedAt: !3097)
!3099 = !DILocation(line: 149, column: 21, scope: !2056, inlinedAt: !3097)
!3100 = !DILocation(line: 150, column: 6, scope: !2056, inlinedAt: !3097)
!3101 = !DILocation(line: 975, column: 10, scope: !3032, inlinedAt: !3092)
!3102 = !DILocation(line: 976, column: 1, scope: !3032, inlinedAt: !3092)
!3103 = !DILocation(line: 987, column: 3, scope: !3085)
!3104 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !346, file: !346, line: 991, type: !2909, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3105)
!3105 = !{!3106, !3107}
!3106 = !DILocalVariable(name: "arg", arg: 1, scope: !3104, file: !346, line: 991, type: !75)
!3107 = !DILocalVariable(name: "argsize", arg: 2, scope: !3104, file: !346, line: 991, type: !72)
!3108 = !DILocation(line: 0, scope: !3104)
!3109 = !DILocation(line: 0, scope: !3032, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 993, column: 10, scope: !3104)
!3111 = !DILocation(line: 972, column: 3, scope: !3032, inlinedAt: !3110)
!3112 = !DILocation(line: 972, column: 26, scope: !3032, inlinedAt: !3110)
!3113 = !DILocation(line: 973, column: 13, scope: !3032, inlinedAt: !3110)
!3114 = !DILocation(line: 0, scope: !2056, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 974, column: 3, scope: !3032, inlinedAt: !3110)
!3116 = !DILocation(line: 147, column: 57, scope: !2056, inlinedAt: !3115)
!3117 = !DILocation(line: 149, column: 21, scope: !2056, inlinedAt: !3115)
!3118 = !DILocation(line: 150, column: 6, scope: !2056, inlinedAt: !3115)
!3119 = !DILocation(line: 975, column: 10, scope: !3032, inlinedAt: !3110)
!3120 = !DILocation(line: 976, column: 1, scope: !3032, inlinedAt: !3110)
!3121 = !DILocation(line: 993, column: 3, scope: !3104)
!3122 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !346, file: !346, line: 997, type: !2920, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3123)
!3123 = !{!3124, !3125, !3126, !3127}
!3124 = !DILocalVariable(name: "n", arg: 1, scope: !3122, file: !346, line: 997, type: !70)
!3125 = !DILocalVariable(name: "s", arg: 2, scope: !3122, file: !346, line: 997, type: !33)
!3126 = !DILocalVariable(name: "arg", arg: 3, scope: !3122, file: !346, line: 997, type: !75)
!3127 = !DILocalVariable(name: "options", scope: !3122, file: !346, line: 999, type: !363)
!3128 = !DILocation(line: 0, scope: !3122)
!3129 = !DILocation(line: 999, column: 3, scope: !3122)
!3130 = !DILocation(line: 999, column: 26, scope: !3122)
!3131 = !DILocation(line: 0, scope: !2935, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1000, column: 13, scope: !3122)
!3133 = !DILocation(line: 186, column: 13, scope: !2944, inlinedAt: !3132)
!3134 = !DILocation(line: 186, column: 7, scope: !2935, inlinedAt: !3132)
!3135 = !DILocation(line: 187, column: 5, scope: !2944, inlinedAt: !3132)
!3136 = !{!3137}
!3137 = distinct !{!3137, !3138, !"quoting_options_from_style: argument 0"}
!3138 = distinct !{!3138, !"quoting_options_from_style"}
!3139 = !DILocation(line: 1000, column: 13, scope: !3122)
!3140 = !DILocation(line: 0, scope: !2056, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 1001, column: 3, scope: !3122)
!3142 = !DILocation(line: 147, column: 57, scope: !2056, inlinedAt: !3141)
!3143 = !DILocation(line: 149, column: 21, scope: !2056, inlinedAt: !3141)
!3144 = !DILocation(line: 150, column: 6, scope: !2056, inlinedAt: !3141)
!3145 = !DILocation(line: 1002, column: 10, scope: !3122)
!3146 = !DILocation(line: 1003, column: 1, scope: !3122)
!3147 = !DILocation(line: 1002, column: 3, scope: !3122)
!3148 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !346, file: !346, line: 1006, type: !3149, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!67, !70, !75, !75, !75}
!3151 = !{!3152, !3153, !3154, !3155}
!3152 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !346, line: 1006, type: !70)
!3153 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3148, file: !346, line: 1006, type: !75)
!3154 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3148, file: !346, line: 1007, type: !75)
!3155 = !DILocalVariable(name: "arg", arg: 4, scope: !3148, file: !346, line: 1007, type: !75)
!3156 = !DILocation(line: 0, scope: !3148)
!3157 = !DILocalVariable(name: "n", arg: 1, scope: !3158, file: !346, line: 1014, type: !70)
!3158 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !346, file: !346, line: 1014, type: !3159, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!67, !70, !75, !75, !75, !72}
!3161 = !{!3157, !3162, !3163, !3164, !3165, !3166}
!3162 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3158, file: !346, line: 1014, type: !75)
!3163 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3158, file: !346, line: 1015, type: !75)
!3164 = !DILocalVariable(name: "arg", arg: 4, scope: !3158, file: !346, line: 1016, type: !75)
!3165 = !DILocalVariable(name: "argsize", arg: 5, scope: !3158, file: !346, line: 1016, type: !72)
!3166 = !DILocalVariable(name: "o", scope: !3158, file: !346, line: 1018, type: !363)
!3167 = !DILocation(line: 0, scope: !3158, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 1009, column: 10, scope: !3148)
!3169 = !DILocation(line: 1018, column: 3, scope: !3158, inlinedAt: !3168)
!3170 = !DILocation(line: 1018, column: 26, scope: !3158, inlinedAt: !3168)
!3171 = !DILocation(line: 1018, column: 30, scope: !3158, inlinedAt: !3168)
!3172 = !DILocation(line: 0, scope: !2096, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 1019, column: 3, scope: !3158, inlinedAt: !3168)
!3174 = !DILocation(line: 174, column: 6, scope: !2096, inlinedAt: !3173)
!3175 = !DILocation(line: 174, column: 12, scope: !2096, inlinedAt: !3173)
!3176 = !DILocation(line: 175, column: 8, scope: !2110, inlinedAt: !3173)
!3177 = !DILocation(line: 175, column: 19, scope: !2110, inlinedAt: !3173)
!3178 = !DILocation(line: 176, column: 5, scope: !2110, inlinedAt: !3173)
!3179 = !DILocation(line: 177, column: 6, scope: !2096, inlinedAt: !3173)
!3180 = !DILocation(line: 177, column: 17, scope: !2096, inlinedAt: !3173)
!3181 = !DILocation(line: 178, column: 6, scope: !2096, inlinedAt: !3173)
!3182 = !DILocation(line: 178, column: 18, scope: !2096, inlinedAt: !3173)
!3183 = !DILocation(line: 1020, column: 10, scope: !3158, inlinedAt: !3168)
!3184 = !DILocation(line: 1021, column: 1, scope: !3158, inlinedAt: !3168)
!3185 = !DILocation(line: 1009, column: 3, scope: !3148)
!3186 = !DILocation(line: 0, scope: !3158)
!3187 = !DILocation(line: 1018, column: 3, scope: !3158)
!3188 = !DILocation(line: 1018, column: 26, scope: !3158)
!3189 = !DILocation(line: 1018, column: 30, scope: !3158)
!3190 = !DILocation(line: 0, scope: !2096, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 1019, column: 3, scope: !3158)
!3192 = !DILocation(line: 174, column: 6, scope: !2096, inlinedAt: !3191)
!3193 = !DILocation(line: 174, column: 12, scope: !2096, inlinedAt: !3191)
!3194 = !DILocation(line: 175, column: 8, scope: !2110, inlinedAt: !3191)
!3195 = !DILocation(line: 175, column: 19, scope: !2110, inlinedAt: !3191)
!3196 = !DILocation(line: 176, column: 5, scope: !2110, inlinedAt: !3191)
!3197 = !DILocation(line: 177, column: 6, scope: !2096, inlinedAt: !3191)
!3198 = !DILocation(line: 177, column: 17, scope: !2096, inlinedAt: !3191)
!3199 = !DILocation(line: 178, column: 6, scope: !2096, inlinedAt: !3191)
!3200 = !DILocation(line: 178, column: 18, scope: !2096, inlinedAt: !3191)
!3201 = !DILocation(line: 1020, column: 10, scope: !3158)
!3202 = !DILocation(line: 1021, column: 1, scope: !3158)
!3203 = !DILocation(line: 1020, column: 3, scope: !3158)
!3204 = distinct !DISubprogram(name: "quotearg_custom", scope: !346, file: !346, line: 1024, type: !3205, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!67, !75, !75, !75}
!3207 = !{!3208, !3209, !3210}
!3208 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3204, file: !346, line: 1024, type: !75)
!3209 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3204, file: !346, line: 1024, type: !75)
!3210 = !DILocalVariable(name: "arg", arg: 3, scope: !3204, file: !346, line: 1025, type: !75)
!3211 = !DILocation(line: 0, scope: !3204)
!3212 = !DILocation(line: 0, scope: !3148, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 1027, column: 10, scope: !3204)
!3214 = !DILocation(line: 0, scope: !3158, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 1009, column: 10, scope: !3148, inlinedAt: !3213)
!3216 = !DILocation(line: 1018, column: 3, scope: !3158, inlinedAt: !3215)
!3217 = !DILocation(line: 1018, column: 26, scope: !3158, inlinedAt: !3215)
!3218 = !DILocation(line: 1018, column: 30, scope: !3158, inlinedAt: !3215)
!3219 = !DILocation(line: 0, scope: !2096, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 1019, column: 3, scope: !3158, inlinedAt: !3215)
!3221 = !DILocation(line: 174, column: 6, scope: !2096, inlinedAt: !3220)
!3222 = !DILocation(line: 174, column: 12, scope: !2096, inlinedAt: !3220)
!3223 = !DILocation(line: 175, column: 8, scope: !2110, inlinedAt: !3220)
!3224 = !DILocation(line: 175, column: 19, scope: !2110, inlinedAt: !3220)
!3225 = !DILocation(line: 176, column: 5, scope: !2110, inlinedAt: !3220)
!3226 = !DILocation(line: 177, column: 6, scope: !2096, inlinedAt: !3220)
!3227 = !DILocation(line: 177, column: 17, scope: !2096, inlinedAt: !3220)
!3228 = !DILocation(line: 178, column: 6, scope: !2096, inlinedAt: !3220)
!3229 = !DILocation(line: 178, column: 18, scope: !2096, inlinedAt: !3220)
!3230 = !DILocation(line: 1020, column: 10, scope: !3158, inlinedAt: !3215)
!3231 = !DILocation(line: 1021, column: 1, scope: !3158, inlinedAt: !3215)
!3232 = !DILocation(line: 1027, column: 3, scope: !3204)
!3233 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !346, file: !346, line: 1031, type: !3234, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!67, !75, !75, !75, !72}
!3236 = !{!3237, !3238, !3239, !3240}
!3237 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3233, file: !346, line: 1031, type: !75)
!3238 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3233, file: !346, line: 1031, type: !75)
!3239 = !DILocalVariable(name: "arg", arg: 3, scope: !3233, file: !346, line: 1032, type: !75)
!3240 = !DILocalVariable(name: "argsize", arg: 4, scope: !3233, file: !346, line: 1032, type: !72)
!3241 = !DILocation(line: 0, scope: !3233)
!3242 = !DILocation(line: 0, scope: !3158, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 1034, column: 10, scope: !3233)
!3244 = !DILocation(line: 1018, column: 3, scope: !3158, inlinedAt: !3243)
!3245 = !DILocation(line: 1018, column: 26, scope: !3158, inlinedAt: !3243)
!3246 = !DILocation(line: 1018, column: 30, scope: !3158, inlinedAt: !3243)
!3247 = !DILocation(line: 0, scope: !2096, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1019, column: 3, scope: !3158, inlinedAt: !3243)
!3249 = !DILocation(line: 174, column: 6, scope: !2096, inlinedAt: !3248)
!3250 = !DILocation(line: 174, column: 12, scope: !2096, inlinedAt: !3248)
!3251 = !DILocation(line: 175, column: 8, scope: !2110, inlinedAt: !3248)
!3252 = !DILocation(line: 175, column: 19, scope: !2110, inlinedAt: !3248)
!3253 = !DILocation(line: 176, column: 5, scope: !2110, inlinedAt: !3248)
!3254 = !DILocation(line: 177, column: 6, scope: !2096, inlinedAt: !3248)
!3255 = !DILocation(line: 177, column: 17, scope: !2096, inlinedAt: !3248)
!3256 = !DILocation(line: 178, column: 6, scope: !2096, inlinedAt: !3248)
!3257 = !DILocation(line: 178, column: 18, scope: !2096, inlinedAt: !3248)
!3258 = !DILocation(line: 1020, column: 10, scope: !3158, inlinedAt: !3243)
!3259 = !DILocation(line: 1021, column: 1, scope: !3158, inlinedAt: !3243)
!3260 = !DILocation(line: 1034, column: 3, scope: !3233)
!3261 = distinct !DISubprogram(name: "quote_n_mem", scope: !346, file: !346, line: 1049, type: !3262, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!75, !70, !75, !72}
!3264 = !{!3265, !3266, !3267}
!3265 = !DILocalVariable(name: "n", arg: 1, scope: !3261, file: !346, line: 1049, type: !70)
!3266 = !DILocalVariable(name: "arg", arg: 2, scope: !3261, file: !346, line: 1049, type: !75)
!3267 = !DILocalVariable(name: "argsize", arg: 3, scope: !3261, file: !346, line: 1049, type: !72)
!3268 = !DILocation(line: 0, scope: !3261)
!3269 = !DILocation(line: 1051, column: 10, scope: !3261)
!3270 = !DILocation(line: 1051, column: 3, scope: !3261)
!3271 = distinct !DISubprogram(name: "quote_mem", scope: !346, file: !346, line: 1055, type: !3272, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!75, !75, !72}
!3274 = !{!3275, !3276}
!3275 = !DILocalVariable(name: "arg", arg: 1, scope: !3271, file: !346, line: 1055, type: !75)
!3276 = !DILocalVariable(name: "argsize", arg: 2, scope: !3271, file: !346, line: 1055, type: !72)
!3277 = !DILocation(line: 0, scope: !3271)
!3278 = !DILocation(line: 0, scope: !3261, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 1057, column: 10, scope: !3271)
!3280 = !DILocation(line: 1051, column: 10, scope: !3261, inlinedAt: !3279)
!3281 = !DILocation(line: 1057, column: 3, scope: !3271)
!3282 = distinct !DISubprogram(name: "quote_n", scope: !346, file: !346, line: 1061, type: !3283, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!75, !70, !75}
!3285 = !{!3286, !3287}
!3286 = !DILocalVariable(name: "n", arg: 1, scope: !3282, file: !346, line: 1061, type: !70)
!3287 = !DILocalVariable(name: "arg", arg: 2, scope: !3282, file: !346, line: 1061, type: !75)
!3288 = !DILocation(line: 0, scope: !3282)
!3289 = !DILocation(line: 0, scope: !3261, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 1063, column: 10, scope: !3282)
!3291 = !DILocation(line: 1051, column: 10, scope: !3261, inlinedAt: !3290)
!3292 = !DILocation(line: 1063, column: 3, scope: !3282)
!3293 = distinct !DISubprogram(name: "quote", scope: !346, file: !346, line: 1067, type: !3294, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!75, !75}
!3296 = !{!3297}
!3297 = !DILocalVariable(name: "arg", arg: 1, scope: !3293, file: !346, line: 1067, type: !75)
!3298 = !DILocation(line: 0, scope: !3293)
!3299 = !DILocation(line: 0, scope: !3282, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 1069, column: 10, scope: !3293)
!3301 = !DILocation(line: 0, scope: !3261, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 1063, column: 10, scope: !3282, inlinedAt: !3300)
!3303 = !DILocation(line: 1051, column: 10, scope: !3261, inlinedAt: !3302)
!3304 = !DILocation(line: 1069, column: 3, scope: !3293)
!3305 = distinct !DISubprogram(name: "version_etc_arn", scope: !463, file: !463, line: 61, type: !3306, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3343)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !3308, !75, !75, !75, !3342, !72}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !3310)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3310, file: !113, line: 51, baseType: !70, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3310, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3310, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3310, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3310, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3310, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3310, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3310, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3310, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3310, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3310, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3310, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3310, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3310, file: !113, line: 70, baseType: !3326, size: 64, offset: 832)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3310, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3310, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3310, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3310, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3310, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3310, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3310, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3310, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3310, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3310, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3310, file: !113, line: 93, baseType: !3326, size: 64, offset: 1344)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3310, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3310, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3310, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3310, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349}
!3344 = !DILocalVariable(name: "stream", arg: 1, scope: !3305, file: !463, line: 61, type: !3308)
!3345 = !DILocalVariable(name: "command_name", arg: 2, scope: !3305, file: !463, line: 62, type: !75)
!3346 = !DILocalVariable(name: "package", arg: 3, scope: !3305, file: !463, line: 62, type: !75)
!3347 = !DILocalVariable(name: "version", arg: 4, scope: !3305, file: !463, line: 63, type: !75)
!3348 = !DILocalVariable(name: "authors", arg: 5, scope: !3305, file: !463, line: 64, type: !3342)
!3349 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3305, file: !463, line: 64, type: !72)
!3350 = !DILocation(line: 0, scope: !3305)
!3351 = !DILocation(line: 66, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3305, file: !463, line: 66, column: 7)
!3353 = !DILocation(line: 66, column: 7, scope: !3305)
!3354 = !DILocation(line: 67, column: 5, scope: !3352)
!3355 = !DILocation(line: 69, column: 5, scope: !3352)
!3356 = !DILocation(line: 83, column: 3, scope: !3305)
!3357 = !DILocation(line: 85, column: 3, scope: !3305)
!3358 = !DILocation(line: 88, column: 3, scope: !3305)
!3359 = !DILocation(line: 95, column: 3, scope: !3305)
!3360 = !DILocation(line: 97, column: 3, scope: !3305)
!3361 = !DILocation(line: 105, column: 7, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3305, file: !463, line: 98, column: 5)
!3363 = !DILocation(line: 106, column: 7, scope: !3362)
!3364 = !DILocation(line: 109, column: 7, scope: !3362)
!3365 = !DILocation(line: 110, column: 7, scope: !3362)
!3366 = !DILocation(line: 113, column: 7, scope: !3362)
!3367 = !DILocation(line: 115, column: 7, scope: !3362)
!3368 = !DILocation(line: 120, column: 7, scope: !3362)
!3369 = !DILocation(line: 122, column: 7, scope: !3362)
!3370 = !DILocation(line: 127, column: 7, scope: !3362)
!3371 = !DILocation(line: 129, column: 7, scope: !3362)
!3372 = !DILocation(line: 134, column: 7, scope: !3362)
!3373 = !DILocation(line: 137, column: 7, scope: !3362)
!3374 = !DILocation(line: 142, column: 7, scope: !3362)
!3375 = !DILocation(line: 145, column: 7, scope: !3362)
!3376 = !DILocation(line: 150, column: 7, scope: !3362)
!3377 = !DILocation(line: 154, column: 7, scope: !3362)
!3378 = !DILocation(line: 159, column: 7, scope: !3362)
!3379 = !DILocation(line: 163, column: 7, scope: !3362)
!3380 = !DILocation(line: 170, column: 7, scope: !3362)
!3381 = !DILocation(line: 174, column: 7, scope: !3362)
!3382 = !DILocation(line: 176, column: 1, scope: !3305)
!3383 = distinct !DISubprogram(name: "version_etc_ar", scope: !463, file: !463, line: 183, type: !3384, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !3308, !75, !75, !75, !3342}
!3386 = !{!3387, !3388, !3389, !3390, !3391, !3392}
!3387 = !DILocalVariable(name: "stream", arg: 1, scope: !3383, file: !463, line: 183, type: !3308)
!3388 = !DILocalVariable(name: "command_name", arg: 2, scope: !3383, file: !463, line: 184, type: !75)
!3389 = !DILocalVariable(name: "package", arg: 3, scope: !3383, file: !463, line: 184, type: !75)
!3390 = !DILocalVariable(name: "version", arg: 4, scope: !3383, file: !463, line: 185, type: !75)
!3391 = !DILocalVariable(name: "authors", arg: 5, scope: !3383, file: !463, line: 185, type: !3342)
!3392 = !DILocalVariable(name: "n_authors", scope: !3383, file: !463, line: 187, type: !72)
!3393 = !DILocation(line: 0, scope: !3383)
!3394 = !DILocation(line: 189, column: 8, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3383, file: !463, line: 189, column: 3)
!3396 = !DILocation(line: 0, scope: !3395)
!3397 = !DILocation(line: 189, column: 23, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3395, file: !463, line: 189, column: 3)
!3399 = !DILocation(line: 189, column: 3, scope: !3395)
!3400 = !DILocation(line: 189, column: 52, scope: !3398)
!3401 = distinct !{!3401, !3399, !3402, !616}
!3402 = !DILocation(line: 190, column: 5, scope: !3395)
!3403 = !DILocation(line: 191, column: 3, scope: !3383)
!3404 = !DILocation(line: 192, column: 1, scope: !3383)
!3405 = distinct !DISubprogram(name: "version_etc_va", scope: !463, file: !463, line: 199, type: !3406, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3419)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3308, !75, !75, !75, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !276, line: 52, baseType: !3409)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !278, line: 32, baseType: !3410)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3411, baseType: !3412)
!3411 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !282, size: 256, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3412, file: !3411, line: 192, baseType: !69, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3412, file: !3411, line: 192, baseType: !69, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3412, file: !3411, line: 192, baseType: !69, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3412, file: !3411, line: 192, baseType: !70, size: 32, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3412, file: !3411, line: 192, baseType: !70, size: 32, offset: 224)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3420 = !DILocalVariable(name: "stream", arg: 1, scope: !3405, file: !463, line: 199, type: !3308)
!3421 = !DILocalVariable(name: "command_name", arg: 2, scope: !3405, file: !463, line: 200, type: !75)
!3422 = !DILocalVariable(name: "package", arg: 3, scope: !3405, file: !463, line: 200, type: !75)
!3423 = !DILocalVariable(name: "version", arg: 4, scope: !3405, file: !463, line: 201, type: !75)
!3424 = !DILocalVariable(name: "authors", arg: 5, scope: !3405, file: !463, line: 201, type: !3408)
!3425 = !DILocalVariable(name: "n_authors", scope: !3405, file: !463, line: 203, type: !72)
!3426 = !DILocalVariable(name: "authtab", scope: !3405, file: !463, line: 204, type: !3427)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 640, elements: !359)
!3428 = !DILocation(line: 0, scope: !3405)
!3429 = !DILocation(line: 201, column: 46, scope: !3405)
!3430 = !DILocation(line: 204, column: 3, scope: !3405)
!3431 = !DILocation(line: 204, column: 15, scope: !3405)
!3432 = !DILocation(line: 208, column: 35, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !463, line: 206, column: 3)
!3434 = distinct !DILexicalBlock(scope: !3405, file: !463, line: 206, column: 3)
!3435 = !DILocation(line: 208, column: 14, scope: !3433)
!3436 = !DILocation(line: 208, column: 33, scope: !3433)
!3437 = !DILocation(line: 208, column: 67, scope: !3433)
!3438 = !DILocation(line: 206, column: 3, scope: !3434)
!3439 = !DILocation(line: 0, scope: !3434)
!3440 = !DILocation(line: 211, column: 3, scope: !3405)
!3441 = !DILocation(line: 213, column: 1, scope: !3405)
!3442 = distinct !DISubprogram(name: "version_etc", scope: !463, file: !463, line: 230, type: !3443, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{null, !3308, !75, !75, !75, null}
!3445 = !{!3446, !3447, !3448, !3449, !3450}
!3446 = !DILocalVariable(name: "stream", arg: 1, scope: !3442, file: !463, line: 230, type: !3308)
!3447 = !DILocalVariable(name: "command_name", arg: 2, scope: !3442, file: !463, line: 231, type: !75)
!3448 = !DILocalVariable(name: "package", arg: 3, scope: !3442, file: !463, line: 231, type: !75)
!3449 = !DILocalVariable(name: "version", arg: 4, scope: !3442, file: !463, line: 232, type: !75)
!3450 = !DILocalVariable(name: "authors", scope: !3442, file: !463, line: 234, type: !3408)
!3451 = !DILocation(line: 0, scope: !3442)
!3452 = !DILocation(line: 234, column: 3, scope: !3442)
!3453 = !DILocation(line: 234, column: 11, scope: !3442)
!3454 = !DILocation(line: 235, column: 3, scope: !3442)
!3455 = !DILocation(line: 236, column: 3, scope: !3442)
!3456 = !DILocation(line: 237, column: 3, scope: !3442)
!3457 = !DILocation(line: 238, column: 1, scope: !3442)
!3458 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !463, file: !463, line: 241, type: !303, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !564)
!3459 = !DILocation(line: 243, column: 3, scope: !3458)
!3460 = !DILocation(line: 248, column: 3, scope: !3458)
!3461 = !DILocation(line: 254, column: 3, scope: !3458)
!3462 = !DILocation(line: 259, column: 3, scope: !3458)
!3463 = !DILocation(line: 261, column: 1, scope: !3458)
!3464 = distinct !DISubprogram(name: "xnrealloc", scope: !3465, file: !3465, line: 147, type: !3466, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3468)
!3465 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!69, !69, !72, !72}
!3468 = !{!3469, !3470, !3471}
!3469 = !DILocalVariable(name: "p", arg: 1, scope: !3464, file: !3465, line: 147, type: !69)
!3470 = !DILocalVariable(name: "n", arg: 2, scope: !3464, file: !3465, line: 147, type: !72)
!3471 = !DILocalVariable(name: "s", arg: 3, scope: !3464, file: !3465, line: 147, type: !72)
!3472 = !DILocation(line: 0, scope: !3464)
!3473 = !DILocalVariable(name: "p", arg: 1, scope: !3474, file: !469, line: 83, type: !69)
!3474 = distinct !DISubprogram(name: "xreallocarray", scope: !469, file: !469, line: 83, type: !3466, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3475)
!3475 = !{!3473, !3476, !3477}
!3476 = !DILocalVariable(name: "n", arg: 2, scope: !3474, file: !469, line: 83, type: !72)
!3477 = !DILocalVariable(name: "s", arg: 3, scope: !3474, file: !469, line: 83, type: !72)
!3478 = !DILocation(line: 0, scope: !3474, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 149, column: 10, scope: !3464)
!3480 = !DILocation(line: 85, column: 25, scope: !3474, inlinedAt: !3479)
!3481 = !DILocalVariable(name: "p", arg: 1, scope: !3482, file: !469, line: 37, type: !69)
!3482 = distinct !DISubprogram(name: "check_nonnull", scope: !469, file: !469, line: 37, type: !3483, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!69, !69}
!3485 = !{!3481}
!3486 = !DILocation(line: 0, scope: !3482, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 85, column: 10, scope: !3474, inlinedAt: !3479)
!3488 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3487)
!3489 = distinct !DILexicalBlock(scope: !3482, file: !469, line: 39, column: 7)
!3490 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3487)
!3491 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3487)
!3492 = !DILocation(line: 149, column: 3, scope: !3464)
!3493 = !DILocation(line: 0, scope: !3474)
!3494 = !DILocation(line: 85, column: 25, scope: !3474)
!3495 = !DILocation(line: 0, scope: !3482, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 85, column: 10, scope: !3474)
!3497 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3496)
!3498 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3496)
!3499 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3496)
!3500 = !DILocation(line: 85, column: 3, scope: !3474)
!3501 = distinct !DISubprogram(name: "xmalloc", scope: !469, file: !469, line: 47, type: !3502, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!69, !72}
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "s", arg: 1, scope: !3501, file: !469, line: 47, type: !72)
!3506 = !DILocation(line: 0, scope: !3501)
!3507 = !DILocation(line: 49, column: 25, scope: !3501)
!3508 = !DILocation(line: 0, scope: !3482, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 49, column: 10, scope: !3501)
!3510 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3509)
!3511 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3509)
!3512 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3509)
!3513 = !DILocation(line: 49, column: 3, scope: !3501)
!3514 = distinct !DISubprogram(name: "ximalloc", scope: !469, file: !469, line: 53, type: !3515, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!69, !197}
!3517 = !{!3518}
!3518 = !DILocalVariable(name: "s", arg: 1, scope: !3514, file: !469, line: 53, type: !197)
!3519 = !DILocation(line: 0, scope: !3514)
!3520 = !DILocalVariable(name: "s", arg: 1, scope: !3521, file: !3522, line: 55, type: !197)
!3521 = distinct !DISubprogram(name: "imalloc", scope: !3522, file: !3522, line: 55, type: !3515, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3523)
!3522 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3523 = !{!3520}
!3524 = !DILocation(line: 0, scope: !3521, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 55, column: 25, scope: !3514)
!3526 = !DILocation(line: 57, column: 26, scope: !3521, inlinedAt: !3525)
!3527 = !DILocation(line: 0, scope: !3482, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 55, column: 10, scope: !3514)
!3529 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3528)
!3530 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3528)
!3531 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3528)
!3532 = !DILocation(line: 55, column: 3, scope: !3514)
!3533 = distinct !DISubprogram(name: "xcharalloc", scope: !469, file: !469, line: 59, type: !3534, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!67, !72}
!3536 = !{!3537}
!3537 = !DILocalVariable(name: "n", arg: 1, scope: !3533, file: !469, line: 59, type: !72)
!3538 = !DILocation(line: 0, scope: !3533)
!3539 = !DILocation(line: 0, scope: !3501, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 61, column: 10, scope: !3533)
!3541 = !DILocation(line: 49, column: 25, scope: !3501, inlinedAt: !3540)
!3542 = !DILocation(line: 0, scope: !3482, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 49, column: 10, scope: !3501, inlinedAt: !3540)
!3544 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3543)
!3545 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3543)
!3546 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3543)
!3547 = !DILocation(line: 61, column: 3, scope: !3533)
!3548 = distinct !DISubprogram(name: "xrealloc", scope: !469, file: !469, line: 68, type: !3549, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!69, !69, !72}
!3551 = !{!3552, !3553}
!3552 = !DILocalVariable(name: "p", arg: 1, scope: !3548, file: !469, line: 68, type: !69)
!3553 = !DILocalVariable(name: "s", arg: 2, scope: !3548, file: !469, line: 68, type: !72)
!3554 = !DILocation(line: 0, scope: !3548)
!3555 = !DILocalVariable(name: "ptr", arg: 1, scope: !3556, file: !3557, line: 2057, type: !69)
!3556 = distinct !DISubprogram(name: "rpl_realloc", scope: !3557, file: !3557, line: 2057, type: !3549, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3558)
!3557 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3558 = !{!3555, !3559}
!3559 = !DILocalVariable(name: "size", arg: 2, scope: !3556, file: !3557, line: 2057, type: !72)
!3560 = !DILocation(line: 0, scope: !3556, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 70, column: 25, scope: !3548)
!3562 = !DILocation(line: 2059, column: 24, scope: !3556, inlinedAt: !3561)
!3563 = !DILocation(line: 2059, column: 10, scope: !3556, inlinedAt: !3561)
!3564 = !DILocation(line: 0, scope: !3482, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 70, column: 10, scope: !3548)
!3566 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3565)
!3567 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3565)
!3568 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3565)
!3569 = !DILocation(line: 70, column: 3, scope: !3548)
!3570 = distinct !DISubprogram(name: "xirealloc", scope: !469, file: !469, line: 74, type: !3571, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!69, !69, !197}
!3573 = !{!3574, !3575}
!3574 = !DILocalVariable(name: "p", arg: 1, scope: !3570, file: !469, line: 74, type: !69)
!3575 = !DILocalVariable(name: "s", arg: 2, scope: !3570, file: !469, line: 74, type: !197)
!3576 = !DILocation(line: 0, scope: !3570)
!3577 = !DILocalVariable(name: "p", arg: 1, scope: !3578, file: !3522, line: 66, type: !69)
!3578 = distinct !DISubprogram(name: "irealloc", scope: !3522, file: !3522, line: 66, type: !3571, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3579)
!3579 = !{!3577, !3580}
!3580 = !DILocalVariable(name: "s", arg: 2, scope: !3578, file: !3522, line: 66, type: !197)
!3581 = !DILocation(line: 0, scope: !3578, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 76, column: 25, scope: !3570)
!3583 = !DILocation(line: 0, scope: !3556, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 68, column: 26, scope: !3578, inlinedAt: !3582)
!3585 = !DILocation(line: 2059, column: 24, scope: !3556, inlinedAt: !3584)
!3586 = !DILocation(line: 2059, column: 10, scope: !3556, inlinedAt: !3584)
!3587 = !DILocation(line: 0, scope: !3482, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 76, column: 10, scope: !3570)
!3589 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3588)
!3590 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3588)
!3591 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3588)
!3592 = !DILocation(line: 76, column: 3, scope: !3570)
!3593 = distinct !DISubprogram(name: "xireallocarray", scope: !469, file: !469, line: 89, type: !3594, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3596)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!69, !69, !197, !197}
!3596 = !{!3597, !3598, !3599}
!3597 = !DILocalVariable(name: "p", arg: 1, scope: !3593, file: !469, line: 89, type: !69)
!3598 = !DILocalVariable(name: "n", arg: 2, scope: !3593, file: !469, line: 89, type: !197)
!3599 = !DILocalVariable(name: "s", arg: 3, scope: !3593, file: !469, line: 89, type: !197)
!3600 = !DILocation(line: 0, scope: !3593)
!3601 = !DILocalVariable(name: "p", arg: 1, scope: !3602, file: !3522, line: 98, type: !69)
!3602 = distinct !DISubprogram(name: "ireallocarray", scope: !3522, file: !3522, line: 98, type: !3594, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3603)
!3603 = !{!3601, !3604, !3605}
!3604 = !DILocalVariable(name: "n", arg: 2, scope: !3602, file: !3522, line: 98, type: !197)
!3605 = !DILocalVariable(name: "s", arg: 3, scope: !3602, file: !3522, line: 98, type: !197)
!3606 = !DILocation(line: 0, scope: !3602, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 91, column: 25, scope: !3593)
!3608 = !DILocation(line: 101, column: 13, scope: !3602, inlinedAt: !3607)
!3609 = !DILocation(line: 0, scope: !3482, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 91, column: 10, scope: !3593)
!3611 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3610)
!3612 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3610)
!3613 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3610)
!3614 = !DILocation(line: 91, column: 3, scope: !3593)
!3615 = distinct !DISubprogram(name: "xnmalloc", scope: !469, file: !469, line: 98, type: !3616, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3618)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!69, !72, !72}
!3618 = !{!3619, !3620}
!3619 = !DILocalVariable(name: "n", arg: 1, scope: !3615, file: !469, line: 98, type: !72)
!3620 = !DILocalVariable(name: "s", arg: 2, scope: !3615, file: !469, line: 98, type: !72)
!3621 = !DILocation(line: 0, scope: !3615)
!3622 = !DILocation(line: 0, scope: !3474, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 100, column: 10, scope: !3615)
!3624 = !DILocation(line: 85, column: 25, scope: !3474, inlinedAt: !3623)
!3625 = !DILocation(line: 0, scope: !3482, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 85, column: 10, scope: !3474, inlinedAt: !3623)
!3627 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3626)
!3628 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3626)
!3629 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3626)
!3630 = !DILocation(line: 100, column: 3, scope: !3615)
!3631 = distinct !DISubprogram(name: "xinmalloc", scope: !469, file: !469, line: 104, type: !3632, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3634)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!69, !197, !197}
!3634 = !{!3635, !3636}
!3635 = !DILocalVariable(name: "n", arg: 1, scope: !3631, file: !469, line: 104, type: !197)
!3636 = !DILocalVariable(name: "s", arg: 2, scope: !3631, file: !469, line: 104, type: !197)
!3637 = !DILocation(line: 0, scope: !3631)
!3638 = !DILocation(line: 0, scope: !3593, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 106, column: 10, scope: !3631)
!3640 = !DILocation(line: 0, scope: !3602, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 91, column: 25, scope: !3593, inlinedAt: !3639)
!3642 = !DILocation(line: 101, column: 13, scope: !3602, inlinedAt: !3641)
!3643 = !DILocation(line: 0, scope: !3482, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 91, column: 10, scope: !3593, inlinedAt: !3639)
!3645 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3644)
!3646 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3644)
!3647 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3644)
!3648 = !DILocation(line: 106, column: 3, scope: !3631)
!3649 = distinct !DISubprogram(name: "x2realloc", scope: !469, file: !469, line: 116, type: !3650, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!69, !69, !475}
!3652 = !{!3653, !3654}
!3653 = !DILocalVariable(name: "p", arg: 1, scope: !3649, file: !469, line: 116, type: !69)
!3654 = !DILocalVariable(name: "ps", arg: 2, scope: !3649, file: !469, line: 116, type: !475)
!3655 = !DILocation(line: 0, scope: !3649)
!3656 = !DILocation(line: 0, scope: !472, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 118, column: 10, scope: !3649)
!3658 = !DILocation(line: 178, column: 14, scope: !472, inlinedAt: !3657)
!3659 = !DILocation(line: 180, column: 9, scope: !3660, inlinedAt: !3657)
!3660 = distinct !DILexicalBlock(scope: !472, file: !469, line: 180, column: 7)
!3661 = !DILocation(line: 180, column: 7, scope: !472, inlinedAt: !3657)
!3662 = !DILocation(line: 182, column: 13, scope: !3663, inlinedAt: !3657)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !469, line: 182, column: 11)
!3664 = distinct !DILexicalBlock(scope: !3660, file: !469, line: 181, column: 5)
!3665 = !DILocation(line: 182, column: 11, scope: !3664, inlinedAt: !3657)
!3666 = !DILocation(line: 197, column: 11, scope: !3667, inlinedAt: !3657)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !469, line: 197, column: 11)
!3668 = distinct !DILexicalBlock(scope: !3660, file: !469, line: 195, column: 5)
!3669 = !DILocation(line: 197, column: 11, scope: !3668, inlinedAt: !3657)
!3670 = !DILocation(line: 198, column: 9, scope: !3667, inlinedAt: !3657)
!3671 = !DILocation(line: 0, scope: !3474, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 201, column: 7, scope: !472, inlinedAt: !3657)
!3673 = !DILocation(line: 85, column: 25, scope: !3474, inlinedAt: !3672)
!3674 = !DILocation(line: 0, scope: !3482, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 85, column: 10, scope: !3474, inlinedAt: !3672)
!3676 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3675)
!3677 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3675)
!3678 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3675)
!3679 = !DILocation(line: 202, column: 7, scope: !472, inlinedAt: !3657)
!3680 = !DILocation(line: 118, column: 3, scope: !3649)
!3681 = !DILocation(line: 0, scope: !472)
!3682 = !DILocation(line: 178, column: 14, scope: !472)
!3683 = !DILocation(line: 180, column: 9, scope: !3660)
!3684 = !DILocation(line: 180, column: 7, scope: !472)
!3685 = !DILocation(line: 182, column: 13, scope: !3663)
!3686 = !DILocation(line: 182, column: 11, scope: !3664)
!3687 = !DILocation(line: 190, column: 30, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3663, file: !469, line: 183, column: 9)
!3689 = !DILocation(line: 191, column: 16, scope: !3688)
!3690 = !DILocation(line: 191, column: 13, scope: !3688)
!3691 = !DILocation(line: 192, column: 9, scope: !3688)
!3692 = !DILocation(line: 197, column: 11, scope: !3667)
!3693 = !DILocation(line: 197, column: 11, scope: !3668)
!3694 = !DILocation(line: 198, column: 9, scope: !3667)
!3695 = !DILocation(line: 0, scope: !3474, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 201, column: 7, scope: !472)
!3697 = !DILocation(line: 85, column: 25, scope: !3474, inlinedAt: !3696)
!3698 = !DILocation(line: 0, scope: !3482, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 85, column: 10, scope: !3474, inlinedAt: !3696)
!3700 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3699)
!3701 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3699)
!3702 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3699)
!3703 = !DILocation(line: 202, column: 7, scope: !472)
!3704 = !DILocation(line: 203, column: 3, scope: !472)
!3705 = !DILocation(line: 0, scope: !484)
!3706 = !DILocation(line: 230, column: 14, scope: !484)
!3707 = !DILocation(line: 238, column: 7, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !484, file: !469, line: 238, column: 7)
!3709 = !DILocation(line: 238, column: 7, scope: !484)
!3710 = !DILocation(line: 240, column: 9, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !484, file: !469, line: 240, column: 7)
!3712 = !DILocation(line: 240, column: 18, scope: !3711)
!3713 = !DILocation(line: 253, column: 8, scope: !484)
!3714 = !DILocation(line: 258, column: 27, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !469, line: 257, column: 5)
!3716 = distinct !DILexicalBlock(scope: !484, file: !469, line: 256, column: 7)
!3717 = !DILocation(line: 259, column: 32, scope: !3715)
!3718 = !DILocation(line: 260, column: 5, scope: !3715)
!3719 = !DILocation(line: 262, column: 9, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !484, file: !469, line: 262, column: 7)
!3721 = !DILocation(line: 262, column: 7, scope: !484)
!3722 = !DILocation(line: 263, column: 9, scope: !3720)
!3723 = !DILocation(line: 263, column: 5, scope: !3720)
!3724 = !DILocation(line: 264, column: 9, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !484, file: !469, line: 264, column: 7)
!3726 = !DILocation(line: 264, column: 14, scope: !3725)
!3727 = !DILocation(line: 265, column: 7, scope: !3725)
!3728 = !DILocation(line: 265, column: 11, scope: !3725)
!3729 = !DILocation(line: 266, column: 11, scope: !3725)
!3730 = !DILocation(line: 266, column: 26, scope: !3725)
!3731 = !DILocation(line: 267, column: 14, scope: !3725)
!3732 = !DILocation(line: 264, column: 7, scope: !484)
!3733 = !DILocation(line: 268, column: 5, scope: !3725)
!3734 = !DILocation(line: 0, scope: !3548, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 269, column: 8, scope: !484)
!3736 = !DILocation(line: 0, scope: !3556, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 70, column: 25, scope: !3548, inlinedAt: !3735)
!3738 = !DILocation(line: 2059, column: 24, scope: !3556, inlinedAt: !3737)
!3739 = !DILocation(line: 2059, column: 10, scope: !3556, inlinedAt: !3737)
!3740 = !DILocation(line: 0, scope: !3482, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 70, column: 10, scope: !3548, inlinedAt: !3735)
!3742 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3741)
!3743 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3741)
!3744 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3741)
!3745 = !DILocation(line: 270, column: 7, scope: !484)
!3746 = !DILocation(line: 271, column: 3, scope: !484)
!3747 = distinct !DISubprogram(name: "xzalloc", scope: !469, file: !469, line: 279, type: !3502, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3748)
!3748 = !{!3749}
!3749 = !DILocalVariable(name: "s", arg: 1, scope: !3747, file: !469, line: 279, type: !72)
!3750 = !DILocation(line: 0, scope: !3747)
!3751 = !DILocalVariable(name: "n", arg: 1, scope: !3752, file: !469, line: 294, type: !72)
!3752 = distinct !DISubprogram(name: "xcalloc", scope: !469, file: !469, line: 294, type: !3616, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3753)
!3753 = !{!3751, !3754}
!3754 = !DILocalVariable(name: "s", arg: 2, scope: !3752, file: !469, line: 294, type: !72)
!3755 = !DILocation(line: 0, scope: !3752, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 281, column: 10, scope: !3747)
!3757 = !DILocation(line: 296, column: 25, scope: !3752, inlinedAt: !3756)
!3758 = !DILocation(line: 0, scope: !3482, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 296, column: 10, scope: !3752, inlinedAt: !3756)
!3760 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3759)
!3761 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3759)
!3762 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3759)
!3763 = !DILocation(line: 281, column: 3, scope: !3747)
!3764 = !DILocation(line: 0, scope: !3752)
!3765 = !DILocation(line: 296, column: 25, scope: !3752)
!3766 = !DILocation(line: 0, scope: !3482, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 296, column: 10, scope: !3752)
!3768 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3767)
!3769 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3767)
!3770 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3767)
!3771 = !DILocation(line: 296, column: 3, scope: !3752)
!3772 = distinct !DISubprogram(name: "xizalloc", scope: !469, file: !469, line: 285, type: !3515, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3773)
!3773 = !{!3774}
!3774 = !DILocalVariable(name: "s", arg: 1, scope: !3772, file: !469, line: 285, type: !197)
!3775 = !DILocation(line: 0, scope: !3772)
!3776 = !DILocalVariable(name: "n", arg: 1, scope: !3777, file: !469, line: 300, type: !197)
!3777 = distinct !DISubprogram(name: "xicalloc", scope: !469, file: !469, line: 300, type: !3632, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3778)
!3778 = !{!3776, !3779}
!3779 = !DILocalVariable(name: "s", arg: 2, scope: !3777, file: !469, line: 300, type: !197)
!3780 = !DILocation(line: 0, scope: !3777, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 287, column: 10, scope: !3772)
!3782 = !DILocalVariable(name: "n", arg: 1, scope: !3783, file: !3522, line: 77, type: !197)
!3783 = distinct !DISubprogram(name: "icalloc", scope: !3522, file: !3522, line: 77, type: !3632, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3784)
!3784 = !{!3782, !3785}
!3785 = !DILocalVariable(name: "s", arg: 2, scope: !3783, file: !3522, line: 77, type: !197)
!3786 = !DILocation(line: 0, scope: !3783, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 302, column: 25, scope: !3777, inlinedAt: !3781)
!3788 = !DILocation(line: 91, column: 10, scope: !3783, inlinedAt: !3787)
!3789 = !DILocation(line: 0, scope: !3482, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 302, column: 10, scope: !3777, inlinedAt: !3781)
!3791 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3790)
!3792 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3790)
!3793 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3790)
!3794 = !DILocation(line: 287, column: 3, scope: !3772)
!3795 = !DILocation(line: 0, scope: !3777)
!3796 = !DILocation(line: 0, scope: !3783, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 302, column: 25, scope: !3777)
!3798 = !DILocation(line: 91, column: 10, scope: !3783, inlinedAt: !3797)
!3799 = !DILocation(line: 0, scope: !3482, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 302, column: 10, scope: !3777)
!3801 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3800)
!3802 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3800)
!3803 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3800)
!3804 = !DILocation(line: 302, column: 3, scope: !3777)
!3805 = distinct !DISubprogram(name: "xmemdup", scope: !469, file: !469, line: 310, type: !3806, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!69, !767, !72}
!3808 = !{!3809, !3810}
!3809 = !DILocalVariable(name: "p", arg: 1, scope: !3805, file: !469, line: 310, type: !767)
!3810 = !DILocalVariable(name: "s", arg: 2, scope: !3805, file: !469, line: 310, type: !72)
!3811 = !DILocation(line: 0, scope: !3805)
!3812 = !DILocation(line: 0, scope: !3501, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 312, column: 18, scope: !3805)
!3814 = !DILocation(line: 49, column: 25, scope: !3501, inlinedAt: !3813)
!3815 = !DILocation(line: 0, scope: !3482, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 49, column: 10, scope: !3501, inlinedAt: !3813)
!3817 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3816)
!3818 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3816)
!3819 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3816)
!3820 = !DILocalVariable(name: "__dest", arg: 1, scope: !3821, file: !921, line: 26, type: !1241)
!3821 = distinct !DISubprogram(name: "memcpy", scope: !921, file: !921, line: 26, type: !1239, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3822)
!3822 = !{!3820, !3823, !3824}
!3823 = !DILocalVariable(name: "__src", arg: 2, scope: !3821, file: !921, line: 26, type: !766)
!3824 = !DILocalVariable(name: "__len", arg: 3, scope: !3821, file: !921, line: 26, type: !72)
!3825 = !DILocation(line: 0, scope: !3821, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 312, column: 10, scope: !3805)
!3827 = !DILocation(line: 29, column: 10, scope: !3821, inlinedAt: !3826)
!3828 = !DILocation(line: 312, column: 3, scope: !3805)
!3829 = distinct !DISubprogram(name: "ximemdup", scope: !469, file: !469, line: 316, type: !3830, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!69, !767, !197}
!3832 = !{!3833, !3834}
!3833 = !DILocalVariable(name: "p", arg: 1, scope: !3829, file: !469, line: 316, type: !767)
!3834 = !DILocalVariable(name: "s", arg: 2, scope: !3829, file: !469, line: 316, type: !197)
!3835 = !DILocation(line: 0, scope: !3829)
!3836 = !DILocation(line: 0, scope: !3514, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 318, column: 18, scope: !3829)
!3838 = !DILocation(line: 0, scope: !3521, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 55, column: 25, scope: !3514, inlinedAt: !3837)
!3840 = !DILocation(line: 57, column: 26, scope: !3521, inlinedAt: !3839)
!3841 = !DILocation(line: 0, scope: !3482, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 55, column: 10, scope: !3514, inlinedAt: !3837)
!3843 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3842)
!3844 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3842)
!3845 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3842)
!3846 = !DILocation(line: 0, scope: !3821, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 318, column: 10, scope: !3829)
!3848 = !DILocation(line: 29, column: 10, scope: !3821, inlinedAt: !3847)
!3849 = !DILocation(line: 318, column: 3, scope: !3829)
!3850 = distinct !DISubprogram(name: "ximemdup0", scope: !469, file: !469, line: 325, type: !3851, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!67, !767, !197}
!3853 = !{!3854, !3855, !3856}
!3854 = !DILocalVariable(name: "p", arg: 1, scope: !3850, file: !469, line: 325, type: !767)
!3855 = !DILocalVariable(name: "s", arg: 2, scope: !3850, file: !469, line: 325, type: !197)
!3856 = !DILocalVariable(name: "result", scope: !3850, file: !469, line: 327, type: !67)
!3857 = !DILocation(line: 0, scope: !3850)
!3858 = !DILocation(line: 327, column: 30, scope: !3850)
!3859 = !DILocation(line: 0, scope: !3514, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 327, column: 18, scope: !3850)
!3861 = !DILocation(line: 0, scope: !3521, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 55, column: 25, scope: !3514, inlinedAt: !3860)
!3863 = !DILocation(line: 57, column: 26, scope: !3521, inlinedAt: !3862)
!3864 = !DILocation(line: 0, scope: !3482, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 55, column: 10, scope: !3514, inlinedAt: !3860)
!3866 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3865)
!3867 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3865)
!3868 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3865)
!3869 = !DILocation(line: 328, column: 3, scope: !3850)
!3870 = !DILocation(line: 328, column: 13, scope: !3850)
!3871 = !DILocation(line: 0, scope: !3821, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 329, column: 10, scope: !3850)
!3873 = !DILocation(line: 29, column: 10, scope: !3821, inlinedAt: !3872)
!3874 = !DILocation(line: 329, column: 3, scope: !3850)
!3875 = distinct !DISubprogram(name: "xstrdup", scope: !469, file: !469, line: 335, type: !761, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3876)
!3876 = !{!3877}
!3877 = !DILocalVariable(name: "string", arg: 1, scope: !3875, file: !469, line: 335, type: !75)
!3878 = !DILocation(line: 0, scope: !3875)
!3879 = !DILocation(line: 337, column: 27, scope: !3875)
!3880 = !DILocation(line: 337, column: 43, scope: !3875)
!3881 = !DILocation(line: 0, scope: !3805, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 337, column: 10, scope: !3875)
!3883 = !DILocation(line: 0, scope: !3501, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 312, column: 18, scope: !3805, inlinedAt: !3882)
!3885 = !DILocation(line: 49, column: 25, scope: !3501, inlinedAt: !3884)
!3886 = !DILocation(line: 0, scope: !3482, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 49, column: 10, scope: !3501, inlinedAt: !3884)
!3888 = !DILocation(line: 39, column: 8, scope: !3489, inlinedAt: !3887)
!3889 = !DILocation(line: 39, column: 7, scope: !3482, inlinedAt: !3887)
!3890 = !DILocation(line: 40, column: 5, scope: !3489, inlinedAt: !3887)
!3891 = !DILocation(line: 0, scope: !3821, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 312, column: 10, scope: !3805, inlinedAt: !3882)
!3893 = !DILocation(line: 29, column: 10, scope: !3821, inlinedAt: !3892)
!3894 = !DILocation(line: 337, column: 3, scope: !3875)
!3895 = distinct !DISubprogram(name: "xalloc_die", scope: !500, file: !500, line: 32, type: !303, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !499, retainedNodes: !3896)
!3896 = !{!3897}
!3897 = !DILocalVariable(name: "__errstatus", scope: !3898, file: !500, line: 34, type: !3899)
!3898 = distinct !DILexicalBlock(scope: !3895, file: !500, line: 34, column: 3)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3900 = !DILocation(line: 34, column: 3, scope: !3898)
!3901 = !DILocation(line: 0, scope: !3898)
!3902 = !DILocation(line: 40, column: 3, scope: !3895)
!3903 = distinct !DISubprogram(name: "xnumtoumax", scope: !3904, file: !3904, line: 42, type: !3905, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !3907)
!3904 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!516, !75, !70, !516, !516, !75, !75, !70, !70}
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3920, !3921, !3922}
!3908 = !DILocalVariable(name: "n_str", arg: 1, scope: !3903, file: !3904, line: 42, type: !75)
!3909 = !DILocalVariable(name: "base", arg: 2, scope: !3903, file: !3904, line: 42, type: !70)
!3910 = !DILocalVariable(name: "min", arg: 3, scope: !3903, file: !3904, line: 42, type: !516)
!3911 = !DILocalVariable(name: "max", arg: 4, scope: !3903, file: !3904, line: 42, type: !516)
!3912 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3903, file: !3904, line: 43, type: !75)
!3913 = !DILocalVariable(name: "err", arg: 6, scope: !3903, file: !3904, line: 43, type: !75)
!3914 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3903, file: !3904, line: 43, type: !70)
!3915 = !DILocalVariable(name: "flags", arg: 8, scope: !3903, file: !3904, line: 44, type: !70)
!3916 = !DILocalVariable(name: "tnum", scope: !3903, file: !3904, line: 46, type: !516)
!3917 = !DILocalVariable(name: "r", scope: !3903, file: !3904, line: 46, type: !516)
!3918 = !DILocalVariable(name: "s_err", scope: !3903, file: !3904, line: 47, type: !3919)
!3919 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !505, line: 43, baseType: !504)
!3920 = !DILocalVariable(name: "overflow_errno", scope: !3903, file: !3904, line: 50, type: !70)
!3921 = !DILocalVariable(name: "e", scope: !3903, file: !3904, line: 75, type: !70)
!3922 = !DILocalVariable(name: "__errstatus", scope: !3923, file: !3904, line: 80, type: !3899)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !3904, line: 80, column: 5)
!3924 = distinct !DILexicalBlock(scope: !3903, file: !3904, line: 77, column: 7)
!3925 = !DILocation(line: 0, scope: !3903)
!3926 = !DILocation(line: 46, column: 3, scope: !3903)
!3927 = !DILocation(line: 47, column: 24, scope: !3903)
!3928 = !DILocation(line: 52, column: 13, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3903, file: !3904, line: 52, column: 7)
!3930 = !DILocation(line: 52, column: 7, scope: !3903)
!3931 = !DILocation(line: 54, column: 11, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3933, file: !3904, line: 54, column: 11)
!3933 = distinct !DILexicalBlock(scope: !3929, file: !3904, line: 53, column: 5)
!3934 = !DILocation(line: 54, column: 16, scope: !3932)
!3935 = !DILocation(line: 54, column: 11, scope: !3933)
!3936 = !DILocation(line: 57, column: 34, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3932, file: !3904, line: 55, column: 9)
!3938 = !DILocation(line: 57, column: 28, scope: !3937)
!3939 = !DILocation(line: 58, column: 21, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3937, file: !3904, line: 58, column: 15)
!3941 = !DILocation(line: 0, scope: !3937)
!3942 = !DILocation(line: 61, column: 20, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3932, file: !3904, line: 61, column: 16)
!3944 = !DILocation(line: 61, column: 16, scope: !3932)
!3945 = !DILocation(line: 64, column: 34, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3943, file: !3904, line: 62, column: 9)
!3947 = !DILocation(line: 64, column: 28, scope: !3946)
!3948 = !DILocation(line: 65, column: 21, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3946, file: !3904, line: 65, column: 15)
!3950 = !DILocation(line: 0, scope: !3946)
!3951 = !DILocation(line: 75, column: 17, scope: !3903)
!3952 = !DILocation(line: 75, column: 11, scope: !3903)
!3953 = !DILocation(line: 77, column: 16, scope: !3924)
!3954 = !DILocation(line: 78, column: 10, scope: !3924)
!3955 = !DILocation(line: 79, column: 14, scope: !3924)
!3956 = !DILocation(line: 80, column: 5, scope: !3924)
!3957 = !DILocation(line: 0, scope: !3924)
!3958 = !DILocation(line: 82, column: 3, scope: !3903)
!3959 = !DILocation(line: 82, column: 9, scope: !3903)
!3960 = !DILocation(line: 84, column: 1, scope: !3903)
!3961 = !DILocation(line: 83, column: 3, scope: !3903)
!3962 = distinct !DISubprogram(name: "xdectoumax", scope: !3904, file: !3904, line: 92, type: !3963, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !3965)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!516, !75, !516, !516, !75, !75, !70}
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971}
!3966 = !DILocalVariable(name: "n_str", arg: 1, scope: !3962, file: !3904, line: 92, type: !75)
!3967 = !DILocalVariable(name: "min", arg: 2, scope: !3962, file: !3904, line: 92, type: !516)
!3968 = !DILocalVariable(name: "max", arg: 3, scope: !3962, file: !3904, line: 92, type: !516)
!3969 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3962, file: !3904, line: 93, type: !75)
!3970 = !DILocalVariable(name: "err", arg: 5, scope: !3962, file: !3904, line: 93, type: !75)
!3971 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3962, file: !3904, line: 93, type: !70)
!3972 = !DILocation(line: 0, scope: !3962)
!3973 = !DILocation(line: 0, scope: !3903, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 95, column: 10, scope: !3962)
!3975 = !DILocation(line: 46, column: 3, scope: !3903, inlinedAt: !3974)
!3976 = !DILocation(line: 47, column: 24, scope: !3903, inlinedAt: !3974)
!3977 = !DILocation(line: 52, column: 13, scope: !3929, inlinedAt: !3974)
!3978 = !DILocation(line: 52, column: 7, scope: !3903, inlinedAt: !3974)
!3979 = !DILocation(line: 54, column: 11, scope: !3932, inlinedAt: !3974)
!3980 = !DILocation(line: 54, column: 16, scope: !3932, inlinedAt: !3974)
!3981 = !DILocation(line: 54, column: 11, scope: !3933, inlinedAt: !3974)
!3982 = !DILocation(line: 58, column: 21, scope: !3940, inlinedAt: !3974)
!3983 = !DILocation(line: 0, scope: !3937, inlinedAt: !3974)
!3984 = !DILocation(line: 61, column: 20, scope: !3943, inlinedAt: !3974)
!3985 = !DILocation(line: 61, column: 16, scope: !3932, inlinedAt: !3974)
!3986 = !DILocation(line: 65, column: 21, scope: !3949, inlinedAt: !3974)
!3987 = !DILocation(line: 0, scope: !3946, inlinedAt: !3974)
!3988 = !DILocation(line: 75, column: 17, scope: !3903, inlinedAt: !3974)
!3989 = !DILocation(line: 75, column: 11, scope: !3903, inlinedAt: !3974)
!3990 = !DILocation(line: 77, column: 16, scope: !3924, inlinedAt: !3974)
!3991 = !DILocation(line: 78, column: 10, scope: !3924, inlinedAt: !3974)
!3992 = !DILocation(line: 80, column: 5, scope: !3924, inlinedAt: !3974)
!3993 = !DILocation(line: 0, scope: !3924, inlinedAt: !3974)
!3994 = !DILocation(line: 82, column: 3, scope: !3903, inlinedAt: !3974)
!3995 = !DILocation(line: 82, column: 9, scope: !3903, inlinedAt: !3974)
!3996 = !DILocation(line: 84, column: 1, scope: !3903, inlinedAt: !3974)
!3997 = !DILocation(line: 95, column: 3, scope: !3962)
!3998 = distinct !DISubprogram(name: "xstrtoumax", scope: !3999, file: !3999, line: 71, type: !4000, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !4003)
!3999 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!3919, !75, !772, !70, !4002, !75}
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4014, !4015, !4016, !4017, !4020, !4021}
!4004 = !DILocalVariable(name: "nptr", arg: 1, scope: !3998, file: !3999, line: 71, type: !75)
!4005 = !DILocalVariable(name: "endptr", arg: 2, scope: !3998, file: !3999, line: 71, type: !772)
!4006 = !DILocalVariable(name: "base", arg: 3, scope: !3998, file: !3999, line: 71, type: !70)
!4007 = !DILocalVariable(name: "val", arg: 4, scope: !3998, file: !3999, line: 72, type: !4002)
!4008 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3998, file: !3999, line: 72, type: !75)
!4009 = !DILocalVariable(name: "t_ptr", scope: !3998, file: !3999, line: 74, type: !67)
!4010 = !DILocalVariable(name: "p", scope: !3998, file: !3999, line: 75, type: !772)
!4011 = !DILocalVariable(name: "q", scope: !4012, file: !3999, line: 79, type: !75)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !3999, line: 78, column: 5)
!4013 = distinct !DILexicalBlock(scope: !3998, file: !3999, line: 77, column: 7)
!4014 = !DILocalVariable(name: "ch", scope: !4012, file: !3999, line: 80, type: !77)
!4015 = !DILocalVariable(name: "tmp", scope: !3998, file: !3999, line: 91, type: !516)
!4016 = !DILocalVariable(name: "err", scope: !3998, file: !3999, line: 92, type: !3919)
!4017 = !DILocalVariable(name: "xbase", scope: !4018, file: !3999, line: 126, type: !70)
!4018 = distinct !DILexicalBlock(scope: !4019, file: !3999, line: 119, column: 5)
!4019 = distinct !DILexicalBlock(scope: !3998, file: !3999, line: 118, column: 7)
!4020 = !DILocalVariable(name: "suffixes", scope: !4018, file: !3999, line: 127, type: !70)
!4021 = !DILocalVariable(name: "overflow", scope: !4018, file: !3999, line: 156, type: !3919)
!4022 = !DILocation(line: 0, scope: !3998)
!4023 = !DILocation(line: 74, column: 3, scope: !3998)
!4024 = !DILocation(line: 75, column: 14, scope: !3998)
!4025 = !DILocation(line: 0, scope: !4012)
!4026 = !DILocation(line: 81, column: 7, scope: !4012)
!4027 = !DILocation(line: 81, column: 14, scope: !4012)
!4028 = !DILocation(line: 82, column: 15, scope: !4012)
!4029 = distinct !{!4029, !4026, !4030, !616}
!4030 = !DILocation(line: 82, column: 17, scope: !4012)
!4031 = !DILocation(line: 83, column: 14, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4012, file: !3999, line: 83, column: 11)
!4033 = !DILocation(line: 83, column: 11, scope: !4012)
!4034 = !DILocation(line: 85, column: 14, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4032, file: !3999, line: 84, column: 9)
!4036 = !DILocation(line: 90, column: 3, scope: !3998)
!4037 = !DILocation(line: 90, column: 9, scope: !3998)
!4038 = !DILocation(line: 91, column: 20, scope: !3998)
!4039 = !DILocation(line: 94, column: 7, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !3998, file: !3999, line: 94, column: 7)
!4041 = !DILocation(line: 94, column: 10, scope: !4040)
!4042 = !DILocation(line: 94, column: 7, scope: !3998)
!4043 = !DILocation(line: 98, column: 14, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !3999, line: 98, column: 11)
!4045 = distinct !DILexicalBlock(scope: !4040, file: !3999, line: 95, column: 5)
!4046 = !DILocation(line: 98, column: 29, scope: !4044)
!4047 = !DILocation(line: 98, column: 32, scope: !4044)
!4048 = !DILocation(line: 98, column: 38, scope: !4044)
!4049 = !DILocation(line: 98, column: 41, scope: !4044)
!4050 = !DILocation(line: 98, column: 11, scope: !4045)
!4051 = !DILocation(line: 102, column: 12, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4040, file: !3999, line: 102, column: 12)
!4053 = !DILocation(line: 102, column: 12, scope: !4040)
!4054 = !DILocation(line: 107, column: 5, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4052, file: !3999, line: 103, column: 5)
!4056 = !DILocation(line: 112, column: 8, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !3998, file: !3999, line: 112, column: 7)
!4058 = !DILocation(line: 112, column: 7, scope: !3998)
!4059 = !DILocation(line: 114, column: 12, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4057, file: !3999, line: 113, column: 5)
!4061 = !DILocation(line: 115, column: 7, scope: !4060)
!4062 = !DILocation(line: 118, column: 7, scope: !4019)
!4063 = !DILocation(line: 118, column: 11, scope: !4019)
!4064 = !DILocation(line: 118, column: 7, scope: !3998)
!4065 = !DILocation(line: 120, column: 12, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4018, file: !3999, line: 120, column: 11)
!4067 = !DILocation(line: 120, column: 11, scope: !4018)
!4068 = !DILocation(line: 122, column: 16, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !3999, line: 121, column: 9)
!4070 = !DILocation(line: 123, column: 22, scope: !4069)
!4071 = !DILocation(line: 123, column: 11, scope: !4069)
!4072 = !DILocation(line: 0, scope: !4018)
!4073 = !DILocation(line: 128, column: 7, scope: !4018)
!4074 = !DILocation(line: 140, column: 15, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !3999, line: 140, column: 15)
!4076 = distinct !DILexicalBlock(scope: !4018, file: !3999, line: 129, column: 9)
!4077 = !DILocation(line: 140, column: 15, scope: !4076)
!4078 = !DILocation(line: 141, column: 21, scope: !4075)
!4079 = !DILocation(line: 141, column: 13, scope: !4075)
!4080 = !DILocation(line: 144, column: 21, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !3999, line: 144, column: 21)
!4082 = distinct !DILexicalBlock(scope: !4075, file: !3999, line: 142, column: 15)
!4083 = !DILocation(line: 144, column: 29, scope: !4081)
!4084 = !DILocation(line: 144, column: 21, scope: !4082)
!4085 = !DILocation(line: 152, column: 17, scope: !4082)
!4086 = !DILocation(line: 157, column: 7, scope: !4018)
!4087 = !DILocalVariable(name: "err", scope: !4088, file: !3999, line: 64, type: !3919)
!4088 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3999, file: !3999, line: 62, type: !4089, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!3919, !4002, !70, !70}
!4091 = !{!4092, !4093, !4094, !4087}
!4092 = !DILocalVariable(name: "x", arg: 1, scope: !4088, file: !3999, line: 62, type: !4002)
!4093 = !DILocalVariable(name: "base", arg: 2, scope: !4088, file: !3999, line: 62, type: !70)
!4094 = !DILocalVariable(name: "power", arg: 3, scope: !4088, file: !3999, line: 62, type: !70)
!4095 = !DILocation(line: 0, scope: !4088, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 219, column: 22, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4018, file: !3999, line: 158, column: 9)
!4098 = !DILocalVariable(name: "x", arg: 1, scope: !4099, file: !3999, line: 47, type: !4002)
!4099 = distinct !DISubprogram(name: "bkm_scale", scope: !3999, file: !3999, line: 47, type: !4100, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!3919, !4002, !70}
!4102 = !{!4098, !4103, !4104}
!4103 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4099, file: !3999, line: 47, type: !70)
!4104 = !DILocalVariable(name: "scaled", scope: !4099, file: !3999, line: 49, type: !516)
!4105 = !DILocation(line: 0, scope: !4099, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4096)
!4107 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4106)
!4108 = distinct !DILexicalBlock(scope: !4099, file: !3999, line: 50, column: 7)
!4109 = !DILocation(line: 66, column: 9, scope: !4088, inlinedAt: !4096)
!4110 = !DILocation(line: 227, column: 11, scope: !4018)
!4111 = !DILocation(line: 0, scope: !4088, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 215, column: 22, scope: !4097)
!4113 = !DILocation(line: 0, scope: !4099, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4112)
!4115 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4114)
!4116 = !DILocation(line: 66, column: 9, scope: !4088, inlinedAt: !4112)
!4117 = !DILocation(line: 0, scope: !4088, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 202, column: 22, scope: !4097)
!4119 = !DILocation(line: 0, scope: !4099, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4118)
!4121 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4120)
!4122 = !DILocation(line: 66, column: 9, scope: !4088, inlinedAt: !4118)
!4123 = !DILocation(line: 0, scope: !4088, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 198, column: 22, scope: !4097)
!4125 = !DILocation(line: 0, scope: !4099, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4124)
!4127 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4126)
!4128 = !DILocation(line: 66, column: 9, scope: !4088, inlinedAt: !4124)
!4129 = !DILocation(line: 0, scope: !4088, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 194, column: 22, scope: !4097)
!4131 = !DILocation(line: 0, scope: !4099, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4130)
!4133 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4132)
!4134 = !DILocation(line: 66, column: 9, scope: !4088, inlinedAt: !4130)
!4135 = !DILocation(line: 0, scope: !4088, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 175, column: 22, scope: !4097)
!4137 = !DILocation(line: 0, scope: !4099, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4136)
!4139 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4138)
!4140 = !DILocation(line: 66, column: 9, scope: !4088, inlinedAt: !4136)
!4141 = !DILocation(line: 0, scope: !4099, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 160, column: 22, scope: !4097)
!4143 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4142)
!4144 = !DILocation(line: 161, column: 11, scope: !4097)
!4145 = !DILocation(line: 0, scope: !4099, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 167, column: 22, scope: !4097)
!4147 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4146)
!4148 = !DILocation(line: 168, column: 11, scope: !4097)
!4149 = !DILocation(line: 0, scope: !4088, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 180, column: 22, scope: !4097)
!4151 = !DILocation(line: 0, scope: !4099, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4150)
!4153 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4152)
!4154 = !DILocation(line: 66, column: 9, scope: !4088, inlinedAt: !4150)
!4155 = !DILocation(line: 0, scope: !4088, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 185, column: 22, scope: !4097)
!4157 = !DILocation(line: 0, scope: !4099, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4156)
!4159 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4158)
!4160 = !DILocation(line: 0, scope: !4088, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 190, column: 22, scope: !4097)
!4162 = !DILocation(line: 0, scope: !4099, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4161)
!4164 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4163)
!4165 = !DILocation(line: 66, column: 9, scope: !4088, inlinedAt: !4161)
!4166 = !DILocation(line: 0, scope: !4088, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 207, column: 22, scope: !4097)
!4168 = !DILocation(line: 0, scope: !4099, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 66, column: 12, scope: !4088, inlinedAt: !4167)
!4170 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4169)
!4171 = !DILocation(line: 66, column: 9, scope: !4088, inlinedAt: !4167)
!4172 = !DILocation(line: 0, scope: !4099, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 211, column: 22, scope: !4097)
!4174 = !DILocation(line: 50, column: 7, scope: !4108, inlinedAt: !4173)
!4175 = !DILocation(line: 212, column: 11, scope: !4097)
!4176 = !DILocation(line: 0, scope: !4097)
!4177 = !DILocation(line: 228, column: 10, scope: !4018)
!4178 = !DILocation(line: 229, column: 11, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4018, file: !3999, line: 229, column: 11)
!4180 = !DILocation(line: 229, column: 11, scope: !4018)
!4181 = !DILocation(line: 223, column: 16, scope: !4097)
!4182 = !DILocation(line: 224, column: 22, scope: !4097)
!4183 = !DILocation(line: 100, column: 11, scope: !4045)
!4184 = !DILocation(line: 92, column: 16, scope: !3998)
!4185 = !DILocation(line: 233, column: 8, scope: !3998)
!4186 = !DILocation(line: 234, column: 3, scope: !3998)
!4187 = !DILocation(line: 235, column: 1, scope: !3998)
!4188 = !DISubprogram(name: "strtoumax", scope: !4189, file: !4189, line: 301, type: !4190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4189 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!516, !645, !4192, !70}
!4192 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !772)
!4193 = distinct !DISubprogram(name: "rpl_fopen", scope: !520, file: !520, line: 46, type: !4194, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !4230)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!4196, !75, !75}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !4198)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !4199)
!4199 = !{!4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4198, file: !113, line: 51, baseType: !70, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4198, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4198, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4198, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4198, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4198, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4198, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4198, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4198, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4198, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4198, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4198, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4198, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4198, file: !113, line: 70, baseType: !4214, size: 64, offset: 832)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4198, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4198, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4198, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4198, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4198, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4198, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4198, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4198, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4198, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4198, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4198, file: !113, line: 93, baseType: !4214, size: 64, offset: 1344)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4198, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4198, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4198, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4198, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!4230 = !{!4231, !4232, !4233, !4234, !4235, !4236, !4240, !4242, !4243, !4248, !4251, !4252}
!4231 = !DILocalVariable(name: "filename", arg: 1, scope: !4193, file: !520, line: 46, type: !75)
!4232 = !DILocalVariable(name: "mode", arg: 2, scope: !4193, file: !520, line: 46, type: !75)
!4233 = !DILocalVariable(name: "open_direction", scope: !4193, file: !520, line: 54, type: !70)
!4234 = !DILocalVariable(name: "open_flags", scope: !4193, file: !520, line: 55, type: !70)
!4235 = !DILocalVariable(name: "open_flags_gnu", scope: !4193, file: !520, line: 57, type: !81)
!4236 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4193, file: !520, line: 59, type: !4237)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 648, elements: !4238)
!4238 = !{!4239}
!4239 = !DISubrange(count: 81)
!4240 = !DILocalVariable(name: "p", scope: !4241, file: !520, line: 62, type: !75)
!4241 = distinct !DILexicalBlock(scope: !4193, file: !520, line: 61, column: 3)
!4242 = !DILocalVariable(name: "q", scope: !4241, file: !520, line: 64, type: !67)
!4243 = !DILocalVariable(name: "len", scope: !4244, file: !520, line: 128, type: !72)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !520, line: 127, column: 9)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !520, line: 68, column: 7)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !520, line: 67, column: 5)
!4247 = distinct !DILexicalBlock(scope: !4241, file: !520, line: 67, column: 5)
!4248 = !DILocalVariable(name: "fd", scope: !4249, file: !520, line: 199, type: !70)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !520, line: 198, column: 5)
!4250 = distinct !DILexicalBlock(scope: !4193, file: !520, line: 197, column: 7)
!4251 = !DILocalVariable(name: "fp", scope: !4249, file: !520, line: 204, type: !4196)
!4252 = !DILocalVariable(name: "saved_errno", scope: !4253, file: !520, line: 207, type: !70)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !520, line: 206, column: 9)
!4254 = distinct !DILexicalBlock(scope: !4249, file: !520, line: 205, column: 11)
!4255 = !DILocation(line: 0, scope: !4193)
!4256 = !DILocation(line: 59, column: 3, scope: !4193)
!4257 = !DILocation(line: 59, column: 8, scope: !4193)
!4258 = !DILocation(line: 0, scope: !4241)
!4259 = !DILocation(line: 67, column: 5, scope: !4241)
!4260 = !DILocation(line: 64, column: 11, scope: !4241)
!4261 = !DILocation(line: 54, column: 7, scope: !4193)
!4262 = !DILocation(line: 67, column: 12, scope: !4246)
!4263 = !DILocation(line: 67, column: 5, scope: !4247)
!4264 = !DILocation(line: 74, column: 19, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !520, line: 74, column: 17)
!4266 = distinct !DILexicalBlock(scope: !4245, file: !520, line: 70, column: 11)
!4267 = !DILocation(line: 74, column: 17, scope: !4266)
!4268 = !DILocation(line: 75, column: 17, scope: !4265)
!4269 = !DILocation(line: 75, column: 20, scope: !4265)
!4270 = !DILocation(line: 75, column: 15, scope: !4265)
!4271 = !DILocation(line: 80, column: 24, scope: !4266)
!4272 = !DILocation(line: 82, column: 19, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4266, file: !520, line: 82, column: 17)
!4274 = !DILocation(line: 82, column: 17, scope: !4266)
!4275 = !DILocation(line: 83, column: 17, scope: !4273)
!4276 = !DILocation(line: 83, column: 20, scope: !4273)
!4277 = !DILocation(line: 83, column: 15, scope: !4273)
!4278 = !DILocation(line: 88, column: 24, scope: !4266)
!4279 = !DILocation(line: 90, column: 19, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4266, file: !520, line: 90, column: 17)
!4281 = !DILocation(line: 90, column: 17, scope: !4266)
!4282 = !DILocation(line: 91, column: 17, scope: !4280)
!4283 = !DILocation(line: 91, column: 20, scope: !4280)
!4284 = !DILocation(line: 91, column: 15, scope: !4280)
!4285 = !DILocation(line: 100, column: 19, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4266, file: !520, line: 100, column: 17)
!4287 = !DILocation(line: 100, column: 17, scope: !4266)
!4288 = !DILocation(line: 101, column: 17, scope: !4286)
!4289 = !DILocation(line: 101, column: 20, scope: !4286)
!4290 = !DILocation(line: 101, column: 15, scope: !4286)
!4291 = !DILocation(line: 107, column: 19, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4266, file: !520, line: 107, column: 17)
!4293 = !DILocation(line: 107, column: 17, scope: !4266)
!4294 = !DILocation(line: 108, column: 17, scope: !4292)
!4295 = !DILocation(line: 108, column: 20, scope: !4292)
!4296 = !DILocation(line: 108, column: 15, scope: !4292)
!4297 = !DILocation(line: 113, column: 24, scope: !4266)
!4298 = !DILocation(line: 115, column: 13, scope: !4266)
!4299 = !DILocation(line: 117, column: 24, scope: !4266)
!4300 = !DILocation(line: 119, column: 13, scope: !4266)
!4301 = !DILocation(line: 128, column: 24, scope: !4244)
!4302 = !DILocation(line: 0, scope: !4244)
!4303 = !DILocation(line: 129, column: 48, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4244, file: !520, line: 129, column: 15)
!4305 = !DILocation(line: 129, column: 19, scope: !4304)
!4306 = !DILocation(line: 129, column: 15, scope: !4244)
!4307 = !DILocalVariable(name: "__dest", arg: 1, scope: !4308, file: !921, line: 26, type: !1241)
!4308 = distinct !DISubprogram(name: "memcpy", scope: !921, file: !921, line: 26, type: !1239, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !4309)
!4309 = !{!4307, !4310, !4311}
!4310 = !DILocalVariable(name: "__src", arg: 2, scope: !4308, file: !921, line: 26, type: !766)
!4311 = !DILocalVariable(name: "__len", arg: 3, scope: !4308, file: !921, line: 26, type: !72)
!4312 = !DILocation(line: 0, scope: !4308, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 131, column: 11, scope: !4244)
!4314 = !DILocation(line: 29, column: 10, scope: !4308, inlinedAt: !4313)
!4315 = !DILocation(line: 132, column: 13, scope: !4244)
!4316 = !DILocation(line: 135, column: 9, scope: !4245)
!4317 = !DILocation(line: 67, column: 25, scope: !4246)
!4318 = !DILocation(line: 67, column: 5, scope: !4246)
!4319 = distinct !{!4319, !4263, !4320, !616}
!4320 = !DILocation(line: 136, column: 7, scope: !4247)
!4321 = !DILocation(line: 138, column: 8, scope: !4241)
!4322 = !DILocation(line: 197, column: 7, scope: !4193)
!4323 = !DILocation(line: 199, column: 47, scope: !4249)
!4324 = !DILocation(line: 199, column: 16, scope: !4249)
!4325 = !DILocation(line: 0, scope: !4249)
!4326 = !DILocation(line: 201, column: 14, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4249, file: !520, line: 201, column: 11)
!4328 = !DILocation(line: 201, column: 11, scope: !4249)
!4329 = !DILocation(line: 204, column: 18, scope: !4249)
!4330 = !DILocation(line: 205, column: 14, scope: !4254)
!4331 = !DILocation(line: 205, column: 11, scope: !4249)
!4332 = !DILocation(line: 207, column: 29, scope: !4253)
!4333 = !DILocation(line: 0, scope: !4253)
!4334 = !DILocation(line: 208, column: 11, scope: !4253)
!4335 = !DILocation(line: 209, column: 17, scope: !4253)
!4336 = !DILocation(line: 210, column: 9, scope: !4253)
!4337 = !DILocalVariable(name: "filename", arg: 1, scope: !4338, file: !520, line: 30, type: !75)
!4338 = distinct !DISubprogram(name: "orig_fopen", scope: !520, file: !520, line: 30, type: !4194, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !4339)
!4339 = !{!4337, !4340}
!4340 = !DILocalVariable(name: "mode", arg: 2, scope: !4338, file: !520, line: 30, type: !75)
!4341 = !DILocation(line: 0, scope: !4338, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 219, column: 10, scope: !4193)
!4343 = !DILocation(line: 32, column: 10, scope: !4338, inlinedAt: !4342)
!4344 = !DILocation(line: 219, column: 3, scope: !4193)
!4345 = !DILocation(line: 220, column: 1, scope: !4193)
!4346 = !DISubprogram(name: "open", scope: !1557, file: !1557, line: 181, type: !4347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!70, !75, !70, null}
!4349 = !DISubprogram(name: "fdopen", scope: !276, file: !276, line: 293, type: !4350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!4196, !70, !75}
!4352 = !DISubprogram(name: "close", scope: !1761, file: !1761, line: 358, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4353 = distinct !DISubprogram(name: "close_stream", scope: !522, file: !522, line: 55, type: !4354, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !4390)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!70, !4356}
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 7, baseType: !4358)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, elements: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4358, file: !113, line: 51, baseType: !70, size: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4358, file: !113, line: 54, baseType: !67, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4358, file: !113, line: 55, baseType: !67, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4358, file: !113, line: 56, baseType: !67, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4358, file: !113, line: 57, baseType: !67, size: 64, offset: 256)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4358, file: !113, line: 58, baseType: !67, size: 64, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4358, file: !113, line: 59, baseType: !67, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4358, file: !113, line: 60, baseType: !67, size: 64, offset: 448)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4358, file: !113, line: 61, baseType: !67, size: 64, offset: 512)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4358, file: !113, line: 64, baseType: !67, size: 64, offset: 576)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4358, file: !113, line: 65, baseType: !67, size: 64, offset: 640)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4358, file: !113, line: 66, baseType: !67, size: 64, offset: 704)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4358, file: !113, line: 68, baseType: !128, size: 64, offset: 768)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4358, file: !113, line: 70, baseType: !4374, size: 64, offset: 832)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4358, file: !113, line: 72, baseType: !70, size: 32, offset: 896)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4358, file: !113, line: 73, baseType: !70, size: 32, offset: 928)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4358, file: !113, line: 74, baseType: !135, size: 64, offset: 960)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4358, file: !113, line: 77, baseType: !71, size: 16, offset: 1024)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4358, file: !113, line: 78, baseType: !140, size: 8, offset: 1040)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4358, file: !113, line: 79, baseType: !142, size: 8, offset: 1048)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4358, file: !113, line: 81, baseType: !146, size: 64, offset: 1088)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4358, file: !113, line: 89, baseType: !149, size: 64, offset: 1152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4358, file: !113, line: 91, baseType: !151, size: 64, offset: 1216)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4358, file: !113, line: 92, baseType: !154, size: 64, offset: 1280)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4358, file: !113, line: 93, baseType: !4374, size: 64, offset: 1344)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4358, file: !113, line: 94, baseType: !69, size: 64, offset: 1408)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4358, file: !113, line: 95, baseType: !72, size: 64, offset: 1472)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4358, file: !113, line: 96, baseType: !70, size: 32, offset: 1536)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4358, file: !113, line: 98, baseType: !161, size: 160, offset: 1568)
!4390 = !{!4391, !4392, !4394, !4395}
!4391 = !DILocalVariable(name: "stream", arg: 1, scope: !4353, file: !522, line: 55, type: !4356)
!4392 = !DILocalVariable(name: "some_pending", scope: !4353, file: !522, line: 57, type: !4393)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!4394 = !DILocalVariable(name: "prev_fail", scope: !4353, file: !522, line: 58, type: !4393)
!4395 = !DILocalVariable(name: "fclose_fail", scope: !4353, file: !522, line: 59, type: !4393)
!4396 = !DILocation(line: 0, scope: !4353)
!4397 = !DILocation(line: 57, column: 30, scope: !4353)
!4398 = !DILocalVariable(name: "__stream", arg: 1, scope: !4399, file: !902, line: 135, type: !4356)
!4399 = distinct !DISubprogram(name: "ferror_unlocked", scope: !902, file: !902, line: 135, type: !4354, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !4400)
!4400 = !{!4398}
!4401 = !DILocation(line: 0, scope: !4399, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 58, column: 27, scope: !4353)
!4403 = !DILocation(line: 137, column: 10, scope: !4399, inlinedAt: !4402)
!4404 = !DILocation(line: 58, column: 43, scope: !4353)
!4405 = !DILocation(line: 59, column: 29, scope: !4353)
!4406 = !DILocation(line: 59, column: 45, scope: !4353)
!4407 = !DILocation(line: 69, column: 17, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4353, file: !522, line: 69, column: 7)
!4409 = !DILocation(line: 57, column: 50, scope: !4353)
!4410 = !DILocation(line: 69, column: 33, scope: !4408)
!4411 = !DILocation(line: 69, column: 53, scope: !4408)
!4412 = !DILocation(line: 69, column: 59, scope: !4408)
!4413 = !DILocation(line: 69, column: 7, scope: !4353)
!4414 = !DILocation(line: 71, column: 11, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4408, file: !522, line: 70, column: 5)
!4416 = !DILocation(line: 72, column: 9, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4415, file: !522, line: 71, column: 11)
!4418 = !DILocation(line: 72, column: 15, scope: !4417)
!4419 = !DILocation(line: 77, column: 1, scope: !4353)
!4420 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !435, file: !435, line: 100, type: !4421, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4424)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!72, !1311, !75, !72, !4423}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!4424 = !{!4425, !4426, !4427, !4428, !4429}
!4425 = !DILocalVariable(name: "pwc", arg: 1, scope: !4420, file: !435, line: 100, type: !1311)
!4426 = !DILocalVariable(name: "s", arg: 2, scope: !4420, file: !435, line: 100, type: !75)
!4427 = !DILocalVariable(name: "n", arg: 3, scope: !4420, file: !435, line: 100, type: !72)
!4428 = !DILocalVariable(name: "ps", arg: 4, scope: !4420, file: !435, line: 100, type: !4423)
!4429 = !DILocalVariable(name: "ret", scope: !4420, file: !435, line: 130, type: !72)
!4430 = !DILocation(line: 0, scope: !4420)
!4431 = !DILocation(line: 105, column: 9, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4420, file: !435, line: 105, column: 7)
!4433 = !DILocation(line: 105, column: 7, scope: !4420)
!4434 = !DILocation(line: 117, column: 10, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4420, file: !435, line: 117, column: 7)
!4436 = !DILocation(line: 117, column: 7, scope: !4420)
!4437 = !DILocation(line: 130, column: 16, scope: !4420)
!4438 = !DILocation(line: 135, column: 11, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4420, file: !435, line: 135, column: 7)
!4440 = !DILocation(line: 135, column: 25, scope: !4439)
!4441 = !DILocation(line: 135, column: 30, scope: !4439)
!4442 = !DILocation(line: 135, column: 7, scope: !4420)
!4443 = !DILocalVariable(name: "ps", arg: 1, scope: !4444, file: !1996, line: 1135, type: !4423)
!4444 = distinct !DISubprogram(name: "mbszero", scope: !1996, file: !1996, line: 1135, type: !4445, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{null, !4423}
!4447 = !{!4443}
!4448 = !DILocation(line: 0, scope: !4444, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 137, column: 5, scope: !4439)
!4450 = !DILocalVariable(name: "__dest", arg: 1, scope: !4451, file: !921, line: 57, type: !69)
!4451 = distinct !DISubprogram(name: "memset", scope: !921, file: !921, line: 57, type: !2005, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4452)
!4452 = !{!4450, !4453, !4454}
!4453 = !DILocalVariable(name: "__ch", arg: 2, scope: !4451, file: !921, line: 57, type: !70)
!4454 = !DILocalVariable(name: "__len", arg: 3, scope: !4451, file: !921, line: 57, type: !72)
!4455 = !DILocation(line: 0, scope: !4451, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 1137, column: 3, scope: !4444, inlinedAt: !4449)
!4457 = !DILocation(line: 59, column: 10, scope: !4451, inlinedAt: !4456)
!4458 = !DILocation(line: 137, column: 5, scope: !4439)
!4459 = !DILocation(line: 138, column: 11, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4420, file: !435, line: 138, column: 7)
!4461 = !DILocation(line: 138, column: 7, scope: !4420)
!4462 = !DILocation(line: 139, column: 5, scope: !4460)
!4463 = !DILocation(line: 143, column: 26, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4420, file: !435, line: 143, column: 7)
!4465 = !DILocation(line: 143, column: 41, scope: !4464)
!4466 = !DILocation(line: 143, column: 7, scope: !4420)
!4467 = !DILocation(line: 145, column: 15, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !435, line: 145, column: 11)
!4469 = distinct !DILexicalBlock(scope: !4464, file: !435, line: 144, column: 5)
!4470 = !DILocation(line: 145, column: 11, scope: !4469)
!4471 = !DILocation(line: 146, column: 32, scope: !4468)
!4472 = !DILocation(line: 146, column: 16, scope: !4468)
!4473 = !DILocation(line: 146, column: 14, scope: !4468)
!4474 = !DILocation(line: 146, column: 9, scope: !4468)
!4475 = !DILocation(line: 286, column: 1, scope: !4420)
!4476 = !DISubprogram(name: "mbsinit", scope: !1357, file: !1357, line: 293, type: !4477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !564)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!70, !4479}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!4481 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !524, file: !524, line: 27, type: !3466, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !4482)
!4482 = !{!4483, !4484, !4485, !4486}
!4483 = !DILocalVariable(name: "ptr", arg: 1, scope: !4481, file: !524, line: 27, type: !69)
!4484 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4481, file: !524, line: 27, type: !72)
!4485 = !DILocalVariable(name: "size", arg: 3, scope: !4481, file: !524, line: 27, type: !72)
!4486 = !DILocalVariable(name: "nbytes", scope: !4481, file: !524, line: 29, type: !72)
!4487 = !DILocation(line: 0, scope: !4481)
!4488 = !DILocation(line: 30, column: 7, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4481, file: !524, line: 30, column: 7)
!4490 = !DILocalVariable(name: "ptr", arg: 1, scope: !4491, file: !3557, line: 2057, type: !69)
!4491 = distinct !DISubprogram(name: "rpl_realloc", scope: !3557, file: !3557, line: 2057, type: !3549, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !4492)
!4492 = !{!4490, !4493}
!4493 = !DILocalVariable(name: "size", arg: 2, scope: !4491, file: !3557, line: 2057, type: !72)
!4494 = !DILocation(line: 0, scope: !4491, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 37, column: 10, scope: !4481)
!4496 = !DILocation(line: 2059, column: 24, scope: !4491, inlinedAt: !4495)
!4497 = !DILocation(line: 2059, column: 10, scope: !4491, inlinedAt: !4495)
!4498 = !DILocation(line: 37, column: 3, scope: !4481)
!4499 = !DILocation(line: 32, column: 7, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4489, file: !524, line: 31, column: 5)
!4501 = !DILocation(line: 32, column: 13, scope: !4500)
!4502 = !DILocation(line: 33, column: 7, scope: !4500)
!4503 = !DILocation(line: 38, column: 1, scope: !4481)
!4504 = distinct !DISubprogram(name: "hard_locale", scope: !527, file: !527, line: 28, type: !4505, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !4507)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!81, !70}
!4507 = !{!4508, !4509}
!4508 = !DILocalVariable(name: "category", arg: 1, scope: !4504, file: !527, line: 28, type: !70)
!4509 = !DILocalVariable(name: "locale", scope: !4504, file: !527, line: 30, type: !4510)
!4510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2056, elements: !4511)
!4511 = !{!4512}
!4512 = !DISubrange(count: 257)
!4513 = !DILocation(line: 0, scope: !4504)
!4514 = !DILocation(line: 30, column: 3, scope: !4504)
!4515 = !DILocation(line: 30, column: 8, scope: !4504)
!4516 = !DILocation(line: 32, column: 7, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4504, file: !527, line: 32, column: 7)
!4518 = !DILocation(line: 32, column: 7, scope: !4504)
!4519 = !DILocalVariable(name: "__s1", arg: 1, scope: !4520, file: !600, line: 1359, type: !75)
!4520 = distinct !DISubprogram(name: "streq", scope: !600, file: !600, line: 1359, type: !601, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !4521)
!4521 = !{!4519, !4522}
!4522 = !DILocalVariable(name: "__s2", arg: 2, scope: !4520, file: !600, line: 1359, type: !75)
!4523 = !DILocation(line: 0, scope: !4520, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 35, column: 9, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4504, file: !527, line: 35, column: 7)
!4526 = !DILocation(line: 1361, column: 11, scope: !4520, inlinedAt: !4524)
!4527 = !DILocation(line: 1361, column: 10, scope: !4520, inlinedAt: !4524)
!4528 = !DILocation(line: 35, column: 29, scope: !4525)
!4529 = !DILocation(line: 0, scope: !4520, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 35, column: 32, scope: !4525)
!4531 = !DILocation(line: 1361, column: 11, scope: !4520, inlinedAt: !4530)
!4532 = !DILocation(line: 1361, column: 10, scope: !4520, inlinedAt: !4530)
!4533 = !DILocation(line: 35, column: 7, scope: !4504)
!4534 = !DILocation(line: 46, column: 3, scope: !4504)
!4535 = !DILocation(line: 47, column: 1, scope: !4504)
!4536 = distinct !DISubprogram(name: "setlocale_null_r", scope: !529, file: !529, line: 154, type: !4537, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !4539)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!70, !70, !67, !72}
!4539 = !{!4540, !4541, !4542}
!4540 = !DILocalVariable(name: "category", arg: 1, scope: !4536, file: !529, line: 154, type: !70)
!4541 = !DILocalVariable(name: "buf", arg: 2, scope: !4536, file: !529, line: 154, type: !67)
!4542 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4536, file: !529, line: 154, type: !72)
!4543 = !DILocation(line: 0, scope: !4536)
!4544 = !DILocation(line: 159, column: 10, scope: !4536)
!4545 = !DILocation(line: 159, column: 3, scope: !4536)
!4546 = distinct !DISubprogram(name: "setlocale_null", scope: !529, file: !529, line: 186, type: !4547, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !4549)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!75, !70}
!4549 = !{!4550}
!4550 = !DILocalVariable(name: "category", arg: 1, scope: !4546, file: !529, line: 186, type: !70)
!4551 = !DILocation(line: 0, scope: !4546)
!4552 = !DILocation(line: 189, column: 10, scope: !4546)
!4553 = !DILocation(line: 189, column: 3, scope: !4546)
!4554 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !531, file: !531, line: 35, type: !4547, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !4555)
!4555 = !{!4556, !4557}
!4556 = !DILocalVariable(name: "category", arg: 1, scope: !4554, file: !531, line: 35, type: !70)
!4557 = !DILocalVariable(name: "result", scope: !4554, file: !531, line: 37, type: !75)
!4558 = !DILocation(line: 0, scope: !4554)
!4559 = !DILocation(line: 37, column: 24, scope: !4554)
!4560 = !DILocation(line: 62, column: 3, scope: !4554)
!4561 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !531, file: !531, line: 66, type: !4537, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !4562)
!4562 = !{!4563, !4564, !4565, !4566, !4567}
!4563 = !DILocalVariable(name: "category", arg: 1, scope: !4561, file: !531, line: 66, type: !70)
!4564 = !DILocalVariable(name: "buf", arg: 2, scope: !4561, file: !531, line: 66, type: !67)
!4565 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4561, file: !531, line: 66, type: !72)
!4566 = !DILocalVariable(name: "result", scope: !4561, file: !531, line: 111, type: !75)
!4567 = !DILocalVariable(name: "length", scope: !4568, file: !531, line: 125, type: !72)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !531, line: 124, column: 5)
!4569 = distinct !DILexicalBlock(scope: !4561, file: !531, line: 113, column: 7)
!4570 = !DILocation(line: 0, scope: !4561)
!4571 = !DILocation(line: 0, scope: !4554, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 111, column: 24, scope: !4561)
!4573 = !DILocation(line: 37, column: 24, scope: !4554, inlinedAt: !4572)
!4574 = !DILocation(line: 113, column: 14, scope: !4569)
!4575 = !DILocation(line: 113, column: 7, scope: !4561)
!4576 = !DILocation(line: 116, column: 19, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !531, line: 116, column: 11)
!4578 = distinct !DILexicalBlock(scope: !4569, file: !531, line: 114, column: 5)
!4579 = !DILocation(line: 116, column: 11, scope: !4578)
!4580 = !DILocation(line: 120, column: 16, scope: !4577)
!4581 = !DILocation(line: 120, column: 9, scope: !4577)
!4582 = !DILocation(line: 125, column: 23, scope: !4568)
!4583 = !DILocation(line: 0, scope: !4568)
!4584 = !DILocation(line: 126, column: 18, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4568, file: !531, line: 126, column: 11)
!4586 = !DILocation(line: 126, column: 11, scope: !4568)
!4587 = !DILocation(line: 128, column: 39, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4585, file: !531, line: 127, column: 9)
!4589 = !DILocalVariable(name: "__dest", arg: 1, scope: !4590, file: !921, line: 26, type: !1241)
!4590 = distinct !DISubprogram(name: "memcpy", scope: !921, file: !921, line: 26, type: !1239, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !4591)
!4591 = !{!4589, !4592, !4593}
!4592 = !DILocalVariable(name: "__src", arg: 2, scope: !4590, file: !921, line: 26, type: !766)
!4593 = !DILocalVariable(name: "__len", arg: 3, scope: !4590, file: !921, line: 26, type: !72)
!4594 = !DILocation(line: 0, scope: !4590, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 128, column: 11, scope: !4588)
!4596 = !DILocation(line: 29, column: 10, scope: !4590, inlinedAt: !4595)
!4597 = !DILocation(line: 129, column: 11, scope: !4588)
!4598 = !DILocation(line: 133, column: 23, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !531, line: 133, column: 15)
!4600 = distinct !DILexicalBlock(scope: !4585, file: !531, line: 132, column: 9)
!4601 = !DILocation(line: 133, column: 15, scope: !4600)
!4602 = !DILocation(line: 138, column: 44, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4599, file: !531, line: 134, column: 13)
!4604 = !DILocation(line: 0, scope: !4590, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 138, column: 15, scope: !4603)
!4606 = !DILocation(line: 29, column: 10, scope: !4590, inlinedAt: !4605)
!4607 = !DILocation(line: 139, column: 15, scope: !4603)
!4608 = !DILocation(line: 139, column: 32, scope: !4603)
!4609 = !DILocation(line: 140, column: 13, scope: !4603)
!4610 = !DILocation(line: 0, scope: !4569)
!4611 = !DILocation(line: 145, column: 1, scope: !4561)
