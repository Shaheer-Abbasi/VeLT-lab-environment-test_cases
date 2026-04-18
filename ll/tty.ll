; ModuleID = 'src/tty.bc'
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
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Print the file name of the terminal connected to standard input.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"  -s, --silent, --quiet\0A         print nothing, only return an exit status\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@silent = internal unnamed_addr global i1 false, align 1, !dbg !141
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"ttyname error\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"not a tty\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !43
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !142
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !147
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !152
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !154
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !190
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !160
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !186
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !188
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !195
@.str.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !201
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 8, !dbg !237
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !263
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !281
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !311
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !318
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !283
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !320
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !269
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.72 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !288
@.str.77 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.78 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.82 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.83 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.98 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.102 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !326
@exit_failure = dso_local global i32 1, align 4, !dbg !334
@.str.115 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.114 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !340
@.str.131 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !430 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !434, metadata !DIExpression()), !dbg !435
  %3 = icmp eq i32 %0, 0, !dbg !436
  br i1 %3, label %9, label %4, !dbg !438

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !439, !tbaa !441
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !439
  %7 = load i8*, i8** @program_name, align 8, !dbg !439, !tbaa !441
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !439
  br label %53, !dbg !439

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !445
  %11 = load i8*, i8** @program_name, align 8, !dbg !445, !tbaa !441
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !445
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !447
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !447, !tbaa !441
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !447
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !448
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !448
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !449
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !449
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32, !dbg !450
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !450
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !451, metadata !DIExpression()) #32, !dbg !470
  %19 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !472
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %19) #32, !dbg !472
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !456, metadata !DIExpression()) #32, !dbg !473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %19, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !473
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !465, metadata !DIExpression()) #32, !dbg !470
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !466, metadata !DIExpression()) #32, !dbg !470
  %20 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !474
  call void @llvm.dbg.value(metadata %struct.infomap* %20, metadata !466, metadata !DIExpression()) #32, !dbg !470
  br label %21, !dbg !475

21:                                               ; preds = %26, %9
  %22 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %23 = phi %struct.infomap* [ %27, %26 ], [ %20, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !466, metadata !DIExpression()) #32, !dbg !470
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !483
  call void @llvm.dbg.value(metadata i8* %22, metadata !482, metadata !DIExpression()) #32, !dbg !483
  %24 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %22) #33, !dbg !485
  %25 = icmp eq i32 %24, 0, !dbg !486
  br i1 %25, label %31, label %26, !dbg !475

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %23, i64 1, !dbg !487
  call void @llvm.dbg.value(metadata %struct.infomap* %27, metadata !466, metadata !DIExpression()) #32, !dbg !470
  %28 = getelementptr inbounds %struct.infomap, %struct.infomap* %27, i64 0, i32 0, !dbg !488
  %29 = load i8*, i8** %28, align 8, !dbg !488, !tbaa !489
  %30 = icmp eq i8* %29, null, !dbg !491
  br i1 %30, label %31, label %21, !dbg !492, !llvm.loop !493

31:                                               ; preds = %26, %21
  %32 = phi %struct.infomap* [ %23, %21 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 1, !dbg !495
  %34 = load i8*, i8** %33, align 8, !dbg !495, !tbaa !497
  %35 = icmp eq i8* %34, null, !dbg !498
  %36 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %34, !dbg !499
  call void @llvm.dbg.value(metadata i8* %36, metadata !465, metadata !DIExpression()) #32, !dbg !470
  tail call void @emit_bug_reporting_address() #32, !dbg !500
  %37 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !501
  call void @llvm.dbg.value(metadata i8* %37, metadata !468, metadata !DIExpression()) #32, !dbg !470
  %38 = icmp eq i8* %37, null, !dbg !502
  br i1 %38, label %46, label %39, !dbg !504

39:                                               ; preds = %31
  %40 = tail call i32 @strncmp(i8* noundef nonnull %37, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i64 noundef 3) #33, !dbg !505
  %41 = icmp eq i32 %40, 0, !dbg !505
  br i1 %41, label %46, label %42, !dbg !506

42:                                               ; preds = %39
  %43 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #32, !dbg !507
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !507, !tbaa !441
  %45 = tail call i32 @fputs_unlocked(i8* noundef %43, %struct._IO_FILE* noundef %44) #32, !dbg !507
  br label %46, !dbg !509

46:                                               ; preds = %31, %39, %42
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !510
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !482, metadata !DIExpression()) #32, !dbg !510
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !470
  %47 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #32, !dbg !512
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %47, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !512
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #32, !dbg !513
  %50 = icmp eq i8* %36, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !513
  %51 = select i1 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !513
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %49, i8* noundef %36, i8* noundef %51) #32, !dbg !513
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %19) #32, !dbg !514
  br label %53

53:                                               ; preds = %46, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !515
  unreachable, !dbg !515
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !516 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !521 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !45 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !50, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i8* %0, metadata !51, metadata !DIExpression()), !dbg !526
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !527, !tbaa !528
  %3 = icmp eq i32 %2, -1, !dbg !530
  br i1 %3, label %4, label %16, !dbg !531

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #32, !dbg !532
  call void @llvm.dbg.value(metadata i8* %5, metadata !52, metadata !DIExpression()), !dbg !533
  %6 = icmp eq i8* %5, null, !dbg !534
  br i1 %6, label %14, label %7, !dbg !535

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !536, !tbaa !537
  %9 = icmp eq i8 %8, 0, !dbg !536
  br i1 %9, label %14, label %10, !dbg !538

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !476, metadata !DIExpression()) #32, !dbg !539
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), metadata !482, metadata !DIExpression()) #32, !dbg !539
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #33, !dbg !541
  %12 = icmp eq i32 %11, 0, !dbg !542
  %13 = zext i1 %12 to i32, !dbg !538
  br label %14, !dbg !538

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !543, !tbaa !528
  br label %16, !dbg !544

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !545
  %18 = icmp eq i32 %17, 0, !dbg !545
  br i1 %18, label %22, label %19, !dbg !547

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !548, !tbaa !441
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !548
  br label %121, !dbg !550

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !55, metadata !DIExpression()), !dbg !526
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !551
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !552
  call void @llvm.dbg.value(metadata i8* %24, metadata !56, metadata !DIExpression()), !dbg !526
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !553
  call void @llvm.dbg.value(metadata i8* %25, metadata !57, metadata !DIExpression()), !dbg !526
  %26 = icmp eq i8* %25, null, !dbg !554
  br i1 %26, label %53, label %27, !dbg !555

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !556
  br i1 %28, label %53, label %29, !dbg !557

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !58, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 0, metadata !62, metadata !DIExpression()), !dbg !558
  %30 = icmp ult i8* %24, %25, !dbg !559
  br i1 %30, label %31, label %53, !dbg !560

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !526
  %33 = load i16*, i16** %32, align 8, !tbaa !441
  br label %34, !dbg !560

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !58, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %36, metadata !62, metadata !DIExpression()), !dbg !558
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !561
  call void @llvm.dbg.value(metadata i8* %37, metadata !58, metadata !DIExpression()), !dbg !558
  %38 = load i8, i8* %35, align 1, !dbg !561, !tbaa !537
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !561
  %41 = load i16, i16* %40, align 2, !dbg !561, !tbaa !562
  %42 = lshr i16 %41, 13, !dbg !564
  %43 = and i16 %42, 1, !dbg !564
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !565
  call void @llvm.dbg.value(metadata i64 %45, metadata !62, metadata !DIExpression()), !dbg !558
  %46 = icmp ult i8* %37, %25, !dbg !559
  %47 = icmp ult i64 %45, 2, !dbg !566
  %48 = select i1 %46, i1 %47, i1 false, !dbg !566
  br i1 %48, label %34, label %49, !dbg !560, !llvm.loop !567

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !568
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !570
  %52 = xor i1 %50, true, !dbg !570
  br label %53, !dbg !570

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !526
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !55, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i8* %54, metadata !57, metadata !DIExpression()), !dbg !526
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !571
  call void @llvm.dbg.value(metadata i64 %56, metadata !63, metadata !DIExpression()), !dbg !526
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !572
  call void @llvm.dbg.value(metadata i8* %57, metadata !64, metadata !DIExpression()), !dbg !526
  br label %58, !dbg !573

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !526
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !55, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i8* %59, metadata !64, metadata !DIExpression()), !dbg !526
  %61 = load i8, i8* %59, align 1, !dbg !574, !tbaa !537
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !575

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !576
  %64 = load i8, i8* %63, align 1, !dbg !579, !tbaa !537
  %65 = icmp ne i8 %64, 45, !dbg !580
  %66 = select i1 %65, i1 %60, i1 false, !dbg !581
  br label %67, !dbg !581

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !55, metadata !DIExpression()), !dbg !526
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !582
  %70 = load i16*, i16** %69, align 8, !dbg !582, !tbaa !441
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !582
  %73 = load i16, i16* %72, align 2, !dbg !582, !tbaa !562
  %74 = and i16 %73, 8192, !dbg !582
  %75 = icmp eq i16 %74, 0, !dbg !582
  br i1 %75, label %89, label %76, !dbg !584

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !585
  br i1 %77, label %91, label %78, !dbg !588

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !589
  %80 = load i8, i8* %79, align 1, !dbg !589, !tbaa !537
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !589
  %83 = load i16, i16* %82, align 2, !dbg !589, !tbaa !562
  %84 = and i16 %83, 8192, !dbg !589
  %85 = icmp eq i16 %84, 0, !dbg !589
  br i1 %85, label %86, label %91, !dbg !590

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !591
  br i1 %88, label %89, label %91, !dbg !591

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !593
  call void @llvm.dbg.value(metadata i8* %90, metadata !64, metadata !DIExpression()), !dbg !526
  br label %58, !dbg !573, !llvm.loop !594

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !596
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !596, !tbaa !441
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !597
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !482, metadata !DIExpression()) #32, !dbg !597
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !599
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !601
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !603
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !605
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !607
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !609
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !611
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !476, metadata !DIExpression()) #32, !dbg !615
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !124, metadata !DIExpression()), !dbg !526
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i64 noundef 6) #33, !dbg !617
  %96 = icmp eq i32 %95, 0, !dbg !617
  br i1 %96, label %100, label %97, !dbg !619

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i64 noundef 9) #33, !dbg !620
  %99 = icmp eq i32 %98, 0, !dbg !620
  br i1 %99, label %100, label %103, !dbg !621

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !622
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !622
  br label %106, !dbg !624

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !625
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !625
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !441
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !627
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !441
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !628
  %111 = ptrtoint i8* %59 to i64, !dbg !629
  %112 = sub i64 %111, %92, !dbg !629
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !441
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !629
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !441
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !630
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !441
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !631
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !441
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !632
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !633
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
declare !dbg !634 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !638 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !642 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !653, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %1, metadata !654, metadata !DIExpression()), !dbg !661
  %3 = load i8*, i8** %1, align 8, !dbg !662, !tbaa !441
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !663
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !664
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #32, !dbg !665
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !666
  call void @llvm.dbg.value(metadata i32 3, metadata !667, metadata !DIExpression()), !dbg !670
  store volatile i32 3, i32* @exit_failure, align 4, !dbg !672, !tbaa !528
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !674
  br label %8, !dbg !675

8:                                                ; preds = %10, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #32, !dbg !676
  call void @llvm.dbg.value(metadata i32 %9, metadata !655, metadata !DIExpression()), !dbg !661
  switch i32 %9, label %16 [
    i32 -1, label %17
    i32 115, label %10
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !675

10:                                               ; preds = %8
  store i1 true, i1* @silent, align 1, !dbg !677
  br label %8, !dbg !675, !llvm.loop !680

11:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #36, !dbg !682
  unreachable, !dbg !682

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !683, !tbaa !441
  %14 = load i8*, i8** @Version, align 8, !dbg !683, !tbaa !441
  %15 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #32, !dbg !683
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %14, i8* noundef %15, i8* noundef null) #32, !dbg !683
  tail call void @exit(i32 noundef 0) #34, !dbg !683
  unreachable, !dbg !683

16:                                               ; preds = %8
  tail call void @usage(i32 noundef 2) #36, !dbg !684
  unreachable, !dbg !684

17:                                               ; preds = %8
  %18 = load i32, i32* @optind, align 4, !dbg !685, !tbaa !528
  %19 = icmp slt i32 %18, %0, !dbg !687
  br i1 %19, label %20, label %27, !dbg !688

20:                                               ; preds = %17
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #32, !dbg !689
  %22 = load i32, i32* @optind, align 4, !dbg !689, !tbaa !528
  %23 = sext i32 %22 to i64, !dbg !689
  %24 = getelementptr inbounds i8*, i8** %1, i64 %23, !dbg !689
  %25 = load i8*, i8** %24, align 8, !dbg !689, !tbaa !441
  %26 = tail call i8* @quote(i8* noundef %25) #32, !dbg !689
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %21, i8* noundef %26) #32, !dbg !689
  tail call void @usage(i32 noundef 2) #36, !dbg !691
  unreachable, !dbg !691

27:                                               ; preds = %17
  %28 = load i1, i1* @silent, align 1, !dbg !692
  br i1 %28, label %29, label %33, !dbg !694

29:                                               ; preds = %27
  %30 = tail call i32 @isatty(i32 noundef 0) #32, !dbg !695
  %31 = icmp eq i32 %30, 0, !dbg !695
  %32 = zext i1 %31 to i32, !dbg !695
  br label %49, !dbg !696

33:                                               ; preds = %27
  %34 = tail call i8* @ttyname(i32 noundef 0) #32, !dbg !697
  call void @llvm.dbg.value(metadata i8* %34, metadata !657, metadata !DIExpression()), !dbg !661
  %35 = icmp eq i8* %34, null, !dbg !698
  br i1 %35, label %36, label %45, !dbg !699

36:                                               ; preds = %33
  %37 = tail call i32* @__errno_location() #35, !dbg !700
  %38 = load i32, i32* %37, align 4, !dbg !700, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %38, metadata !658, metadata !DIExpression()), !dbg !701
  %39 = tail call i32 @isatty(i32 noundef 0) #32, !dbg !702
  %40 = icmp eq i32 %39, 0, !dbg !702
  br i1 %40, label %43, label %41, !dbg !704

41:                                               ; preds = %36
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #32, !dbg !705
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 4, i32 noundef %38, i8* noundef %42) #32, !dbg !705
  unreachable, !dbg !705

43:                                               ; preds = %36
  %44 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #32, !dbg !706
  call void @llvm.dbg.value(metadata i8* %44, metadata !657, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 1, metadata !656, metadata !DIExpression()), !dbg !661
  br label %45

45:                                               ; preds = %33, %43
  %46 = phi i32 [ 1, %43 ], [ 0, %33 ], !dbg !707
  %47 = phi i8* [ %44, %43 ], [ %34, %33 ], !dbg !661
  call void @llvm.dbg.value(metadata i8* %47, metadata !657, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 %46, metadata !656, metadata !DIExpression()), !dbg !661
  %48 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) %47), !dbg !708
  br label %49

49:                                               ; preds = %45, %29
  %50 = phi i32 [ %32, %29 ], [ %46, %45 ], !dbg !661
  ret i32 %50, !dbg !709
}

; Function Attrs: nounwind
declare !dbg !710 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !713 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !714 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !717 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !723 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !727 i8* @ttyname(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !730 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !733 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !735, metadata !DIExpression()), !dbg !736
  store i8* %0, i8** @file_name, align 8, !dbg !737, !tbaa !441
  ret void, !dbg !738
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !739 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !743, metadata !DIExpression()), !dbg !744
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !745, !tbaa !746
  ret void, !dbg !748
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !749 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !441
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !755
  %3 = icmp eq i32 %2, 0, !dbg !756
  br i1 %3, label %22, label %4, !dbg !757

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !758, !tbaa !746, !range !759
  %6 = icmp eq i8 %5, 0, !dbg !758
  br i1 %6, label %11, label %7, !dbg !760

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !761
  %9 = load i32, i32* %8, align 4, !dbg !761, !tbaa !528
  %10 = icmp eq i32 %9, 32, !dbg !762
  br i1 %10, label %22, label %11, !dbg !763

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.25, i64 0, i64 0), i32 noundef 5) #32, !dbg !764
  call void @llvm.dbg.value(metadata i8* %12, metadata !751, metadata !DIExpression()), !dbg !765
  %13 = load i8*, i8** @file_name, align 8, !dbg !766, !tbaa !441
  %14 = icmp eq i8* %13, null, !dbg !766
  %15 = tail call i32* @__errno_location() #35, !dbg !768
  %16 = load i32, i32* %15, align 4, !dbg !768, !tbaa !528
  br i1 %14, label %19, label %17, !dbg !769

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !770
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.26, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !770
  br label %20, !dbg !770

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.27, i64 0, i64 0), i8* noundef %12) #32, !dbg !771
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !772, !tbaa !528
  tail call void @_exit(i32 noundef %21) #34, !dbg !773
  unreachable, !dbg !773

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !774, !tbaa !441
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !776
  %25 = icmp eq i32 %24, 0, !dbg !777
  br i1 %25, label %28, label %26, !dbg !778

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !779, !tbaa !528
  tail call void @_exit(i32 noundef %27) #34, !dbg !780
  unreachable, !dbg !780

28:                                               ; preds = %22
  ret void, !dbg !781
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !782 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !786, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i32 %1, metadata !787, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8* %2, metadata !788, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !789, metadata !DIExpression()), !dbg !791
  tail call fastcc void @flush_stdout(), !dbg !792
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !793, !tbaa !441
  %7 = icmp eq void ()* %6, null, !dbg !793
  br i1 %7, label %9, label %8, !dbg !795

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !796
  br label %13, !dbg !796

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !797, !tbaa !441
  %11 = tail call i8* @getprogname() #33, !dbg !797
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* noundef %11) #32, !dbg !797
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !799
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !799
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !799, !tbaa.struct !800
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !799
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !799
  ret void, !dbg !801
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !802 {
  call void @llvm.dbg.value(metadata i32 1, metadata !804, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i32 1, metadata !806, metadata !DIExpression()) #32, !dbg !809
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !812
  %2 = icmp slt i32 %1, 0, !dbg !813
  br i1 %2, label %6, label %3, !dbg !814

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815, !tbaa !441
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !815
  br label %6, !dbg !815

6:                                                ; preds = %3, %0
  ret void, !dbg !816
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !817 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !819, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 %1, metadata !820, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i8* %2, metadata !821, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !822, metadata !DIExpression()), !dbg !824
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !825, !tbaa !441
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !826
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !827, metadata !DIExpression()) #32, !dbg !870
  call void @llvm.dbg.value(metadata i8* %2, metadata !868, metadata !DIExpression()) #32, !dbg !870
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !872
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !872, !noalias !873
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !872
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !872
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !872, !noalias !873
  %11 = load i32, i32* @error_message_count, align 4, !dbg !877, !tbaa !528
  %12 = add i32 %11, 1, !dbg !877
  store i32 %12, i32* @error_message_count, align 4, !dbg !877, !tbaa !528
  %13 = icmp eq i32 %1, 0, !dbg !878
  br i1 %13, label %24, label %14, !dbg !880

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !881, metadata !DIExpression()) #32, !dbg !889
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !891
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !891
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !885, metadata !DIExpression()) #32, !dbg !892
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !893
  call void @llvm.dbg.value(metadata i8* %16, metadata !884, metadata !DIExpression()) #32, !dbg !889
  %17 = icmp eq i8* %16, null, !dbg !894
  br i1 %17, label %18, label %20, !dbg !896

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.30, i64 0, i64 0), i32 noundef 5) #32, !dbg !897
  call void @llvm.dbg.value(metadata i8* %19, metadata !884, metadata !DIExpression()) #32, !dbg !889
  br label %20, !dbg !898

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !889
  call void @llvm.dbg.value(metadata i8* %21, metadata !884, metadata !DIExpression()) #32, !dbg !889
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !899, !tbaa !441
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.31, i64 0, i64 0), i8* noundef %21) #32, !dbg !899
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !900
  br label %24, !dbg !901

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !902, !tbaa !441
  call void @llvm.dbg.value(metadata i32 10, metadata !903, metadata !DIExpression()) #32, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !909, metadata !DIExpression()) #32, !dbg !910
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !912
  %27 = load i8*, i8** %26, align 8, !dbg !912, !tbaa !913
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !912
  %29 = load i8*, i8** %28, align 8, !dbg !912, !tbaa !916
  %30 = icmp ult i8* %27, %29, !dbg !912
  br i1 %30, label %33, label %31, !dbg !912, !prof !917

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !912
  br label %35, !dbg !912

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !912
  store i8* %34, i8** %26, align 8, !dbg !912, !tbaa !913
  store i8 10, i8* %27, align 1, !dbg !912, !tbaa !537
  br label %35, !dbg !912

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !918, !tbaa !441
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !918
  %38 = icmp eq i32 %0, 0, !dbg !919
  br i1 %38, label %40, label %39, !dbg !921

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !922
  unreachable, !dbg !922

40:                                               ; preds = %35
  ret void, !dbg !923
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !924 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !928 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !931 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !935 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !939, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i32 %1, metadata !940, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i8* %2, metadata !941, metadata !DIExpression()), !dbg !943
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !944
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !944
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !942, metadata !DIExpression()), !dbg !945
  call void @llvm.va_start(i8* nonnull %6), !dbg !946
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !947
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !947
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !947, !tbaa.struct !800
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !947
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !947
  call void @llvm.va_end(i8* nonnull %6), !dbg !948
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !949
  ret void, !dbg !949
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !162 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !180, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i32 %1, metadata !181, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8* %2, metadata !182, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i32 %3, metadata !183, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8* %4, metadata !184, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !185, metadata !DIExpression()), !dbg !951
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !952, !tbaa !528
  %9 = icmp eq i32 %8, 0, !dbg !952
  br i1 %9, label %24, label %10, !dbg !954

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !955, !tbaa !528
  %12 = icmp eq i32 %11, %3, !dbg !958
  br i1 %12, label %13, label %23, !dbg !959

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !960, !tbaa !441
  %15 = icmp eq i8* %14, %2, !dbg !961
  br i1 %15, label %39, label %16, !dbg !962

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !963
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !964
  br i1 %19, label %20, label %23, !dbg !964

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !965
  %22 = icmp eq i32 %21, 0, !dbg !966
  br i1 %22, label %39, label %23, !dbg !967

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !968, !tbaa !441
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !969, !tbaa !528
  br label %24, !dbg !970

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !971
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !972, !tbaa !441
  %26 = icmp eq void ()* %25, null, !dbg !972
  br i1 %26, label %28, label %27, !dbg !974

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !975
  br label %32, !dbg !975

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !976, !tbaa !441
  %30 = tail call i8* @getprogname() #33, !dbg !976
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.34, i64 0, i64 0), i8* noundef %30) #32, !dbg !976
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !978, !tbaa !441
  %34 = icmp eq i8* %2, null, !dbg !978
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.35, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.36, i64 0, i64 0), !dbg !978
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !978
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !979
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !979
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !979, !tbaa.struct !800
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !979
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !979
  br label %39, !dbg !980

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !980
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !981 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !985, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 %1, metadata !986, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %2, metadata !987, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 %3, metadata !988, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %4, metadata !989, metadata !DIExpression()), !dbg !991
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !992
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !992
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !990, metadata !DIExpression()), !dbg !993
  call void @llvm.va_start(i8* nonnull %8), !dbg !994
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !995
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !995
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !995, !tbaa.struct !800
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !995
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !995
  call void @llvm.va_end(i8* nonnull %8), !dbg !996
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !997
  ret void, !dbg !997
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !998 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1001, !tbaa !441
  ret i8* %1, !dbg !1002
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !1003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1005, metadata !DIExpression()), !dbg !1008
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %2, metadata !1006, metadata !DIExpression()), !dbg !1008
  %3 = icmp eq i8* %2, null, !dbg !1010
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1010
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1010
  call void @llvm.dbg.value(metadata i8* %5, metadata !1007, metadata !DIExpression()), !dbg !1008
  %6 = ptrtoint i8* %5 to i64, !dbg !1011
  %7 = ptrtoint i8* %0 to i64, !dbg !1011
  %8 = sub i64 %6, %7, !dbg !1011
  %9 = icmp sgt i64 %8, 6, !dbg !1013
  br i1 %9, label %10, label %19, !dbg !1014

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1015
  call void @llvm.dbg.value(metadata i8* %11, metadata !1016, metadata !DIExpression()) #32, !dbg !1023
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), metadata !1021, metadata !DIExpression()) #32, !dbg !1023
  call void @llvm.dbg.value(metadata i64 7, metadata !1022, metadata !DIExpression()) #32, !dbg !1023
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i64 7) #32, !dbg !1025
  %13 = icmp eq i32 %12, 0, !dbg !1026
  br i1 %13, label %14, label %19, !dbg !1027

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1005, metadata !DIExpression()), !dbg !1008
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.56, i64 0, i64 0), i64 noundef 3) #33, !dbg !1028
  %16 = icmp eq i32 %15, 0, !dbg !1031
  %17 = select i1 %16, i64 3, i64 0, !dbg !1032
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1032
  br label %19, !dbg !1032

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1008
  call void @llvm.dbg.value(metadata i8* %21, metadata !1007, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i8* %20, metadata !1005, metadata !DIExpression()), !dbg !1008
  store i8* %20, i8** @program_name, align 8, !dbg !1033, !tbaa !441
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1034, !tbaa !441
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1035, !tbaa !441
  ret void, !dbg !1036
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !203 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !210, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i8* %1, metadata !211, metadata !DIExpression()), !dbg !1037
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %5, metadata !212, metadata !DIExpression()), !dbg !1037
  %6 = icmp eq i8* %5, %0, !dbg !1039
  br i1 %6, label %7, label %17, !dbg !1041

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1042
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1042
  %10 = bitcast i64* %4 to i8*, !dbg !1043
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1043
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !218, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1045, metadata !DIExpression()) #32, !dbg !1052
  call void @llvm.dbg.value(metadata i8* %10, metadata !1054, metadata !DIExpression()) #32, !dbg !1062
  call void @llvm.dbg.value(metadata i32 0, metadata !1060, metadata !DIExpression()) #32, !dbg !1062
  call void @llvm.dbg.value(metadata i64 8, metadata !1061, metadata !DIExpression()) #32, !dbg !1062
  store i64 0, i64* %4, align 8, !dbg !1064
  call void @llvm.dbg.value(metadata i32* %3, metadata !213, metadata !DIExpression(DW_OP_deref)), !dbg !1037
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1065
  %12 = icmp eq i64 %11, 2, !dbg !1067
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !213, metadata !DIExpression()), !dbg !1037
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1068
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1037
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1069
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1069
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1037
  ret i8* %18, !dbg !1069
}

; Function Attrs: nounwind
declare !dbg !1070 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1076 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1081, metadata !DIExpression()), !dbg !1084
  %2 = tail call i32* @__errno_location() #35, !dbg !1085
  %3 = load i32, i32* %2, align 4, !dbg !1085, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %3, metadata !1082, metadata !DIExpression()), !dbg !1084
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1086
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1086
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1086
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1087
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1087
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1083, metadata !DIExpression()), !dbg !1084
  store i32 %3, i32* %2, align 4, !dbg !1088, !tbaa !528
  ret %struct.quoting_options* %8, !dbg !1089
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1090 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1096, metadata !DIExpression()), !dbg !1097
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1098
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1098
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1099
  %5 = load i32, i32* %4, align 8, !dbg !1099, !tbaa !1100
  ret i32 %5, !dbg !1102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1103 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1107, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i32 %1, metadata !1108, metadata !DIExpression()), !dbg !1109
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1110
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1110
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1111
  store i32 %1, i32* %5, align 8, !dbg !1112, !tbaa !1100
  ret void, !dbg !1113
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1114 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1118, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %1, metadata !1119, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i32 %2, metadata !1120, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %1, metadata !1121, metadata !DIExpression()), !dbg !1126
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1127
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1127
  %6 = lshr i8 %1, 5, !dbg !1128
  %7 = zext i8 %6 to i64, !dbg !1128
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1129
  call void @llvm.dbg.value(metadata i32* %8, metadata !1122, metadata !DIExpression()), !dbg !1126
  %9 = and i8 %1, 31, !dbg !1130
  %10 = zext i8 %9 to i32, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %10, metadata !1124, metadata !DIExpression()), !dbg !1126
  %11 = load i32, i32* %8, align 4, !dbg !1131, !tbaa !528
  %12 = lshr i32 %11, %10, !dbg !1132
  %13 = and i32 %12, 1, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %13, metadata !1125, metadata !DIExpression()), !dbg !1126
  %14 = and i32 %2, 1, !dbg !1134
  %15 = xor i32 %13, %14, !dbg !1135
  %16 = shl i32 %15, %10, !dbg !1136
  %17 = xor i32 %16, %11, !dbg !1137
  store i32 %17, i32* %8, align 4, !dbg !1137, !tbaa !528
  ret i32 %13, !dbg !1138
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1139 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1143, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %1, metadata !1144, metadata !DIExpression()), !dbg !1146
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1147
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1143, metadata !DIExpression()), !dbg !1146
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1150
  %6 = load i32, i32* %5, align 4, !dbg !1150, !tbaa !1151
  call void @llvm.dbg.value(metadata i32 %6, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i32 %1, i32* %5, align 4, !dbg !1152, !tbaa !1151
  ret i32 %6, !dbg !1153
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1154 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1158, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %1, metadata !1159, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %2, metadata !1160, metadata !DIExpression()), !dbg !1161
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1162
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1158, metadata !DIExpression()), !dbg !1161
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1165
  store i32 10, i32* %6, align 8, !dbg !1166, !tbaa !1100
  %7 = icmp ne i8* %1, null, !dbg !1167
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1169
  br i1 %9, label %11, label %10, !dbg !1169

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1170
  unreachable, !dbg !1170

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1171
  store i8* %1, i8** %12, align 8, !dbg !1172, !tbaa !1173
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1174
  store i8* %2, i8** %13, align 8, !dbg !1175, !tbaa !1176
  ret void, !dbg !1177
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1182, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %1, metadata !1183, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %2, metadata !1184, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %3, metadata !1185, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1186, metadata !DIExpression()), !dbg !1190
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1191
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1191
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1187, metadata !DIExpression()), !dbg !1190
  %8 = tail call i32* @__errno_location() #35, !dbg !1192
  %9 = load i32, i32* %8, align 4, !dbg !1192, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %9, metadata !1188, metadata !DIExpression()), !dbg !1190
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1193
  %11 = load i32, i32* %10, align 8, !dbg !1193, !tbaa !1100
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1194
  %13 = load i32, i32* %12, align 4, !dbg !1194, !tbaa !1151
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1195
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1196
  %16 = load i8*, i8** %15, align 8, !dbg !1196, !tbaa !1173
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1197
  %18 = load i8*, i8** %17, align 8, !dbg !1197, !tbaa !1176
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1198
  call void @llvm.dbg.value(metadata i64 %19, metadata !1189, metadata !DIExpression()), !dbg !1190
  store i32 %9, i32* %8, align 4, !dbg !1199, !tbaa !528
  ret i64 %19, !dbg !1200
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1201 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1207, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %1, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %2, metadata !1209, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %3, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %4, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %5, metadata !1212, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32* %6, metadata !1213, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %7, metadata !1214, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %8, metadata !1215, metadata !DIExpression()), !dbg !1269
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1270
  %18 = icmp eq i64 %17, 1, !dbg !1271
  call void @llvm.dbg.value(metadata i1 %18, metadata !1216, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* null, metadata !1219, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1220, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1221, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %5, metadata !1222, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1224, metadata !DIExpression()), !dbg !1269
  %19 = and i32 %5, 2, !dbg !1272
  %20 = icmp ne i32 %19, 0, !dbg !1272
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
  br label %36, !dbg !1272

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1273
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1274
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1275
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1224, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1222, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1221, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %43, metadata !1220, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %42, metadata !1219, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %41, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %40, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %39, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %38, metadata !1214, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %37, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1262), !dbg !1276
  call void @llvm.dbg.value(metadata i8 0, metadata !1225, metadata !DIExpression()), !dbg !1269
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
  ], !dbg !1277

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1222, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 5, metadata !1211, metadata !DIExpression()), !dbg !1269
  br label %111, !dbg !1278

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1222, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 5, metadata !1211, metadata !DIExpression()), !dbg !1269
  br i1 %45, label %111, label %51, !dbg !1278

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1279
  br i1 %52, label %111, label %53, !dbg !1283

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1279, !tbaa !537
  br label %111, !dbg !1279

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), metadata !294, metadata !DIExpression()) #32, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %37, metadata !295, metadata !DIExpression()) #32, !dbg !1284
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 noundef 5) #32, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %55, metadata !296, metadata !DIExpression()) #32, !dbg !1284
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), !dbg !1289
  br i1 %56, label %57, label %66, !dbg !1291

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1292
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1293
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !298, metadata !DIExpression()) #32, !dbg !1294
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1295, metadata !DIExpression()) #32, !dbg !1301
  call void @llvm.dbg.value(metadata i8* %23, metadata !1303, metadata !DIExpression()) #32, !dbg !1308
  call void @llvm.dbg.value(metadata i32 0, metadata !1306, metadata !DIExpression()) #32, !dbg !1308
  call void @llvm.dbg.value(metadata i64 8, metadata !1307, metadata !DIExpression()) #32, !dbg !1308
  store i64 0, i64* %13, align 8, !dbg !1310
  call void @llvm.dbg.value(metadata i32* %12, metadata !297, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1284
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1311
  %59 = icmp eq i64 %58, 3, !dbg !1313
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !297, metadata !DIExpression()) #32, !dbg !1284
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1314
  %63 = icmp eq i32 %37, 9, !dbg !1314
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), !dbg !1314
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1314
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1315
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1284
  call void @llvm.dbg.value(metadata i8* %67, metadata !1214, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), metadata !294, metadata !DIExpression()) #32, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %37, metadata !295, metadata !DIExpression()) #32, !dbg !1316
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), i32 noundef 5) #32, !dbg !1318
  call void @llvm.dbg.value(metadata i8* %68, metadata !296, metadata !DIExpression()) #32, !dbg !1316
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), !dbg !1319
  br i1 %69, label %70, label %79, !dbg !1320

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1321
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1322
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !298, metadata !DIExpression()) #32, !dbg !1323
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1295, metadata !DIExpression()) #32, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %26, metadata !1303, metadata !DIExpression()) #32, !dbg !1326
  call void @llvm.dbg.value(metadata i32 0, metadata !1306, metadata !DIExpression()) #32, !dbg !1326
  call void @llvm.dbg.value(metadata i64 8, metadata !1307, metadata !DIExpression()) #32, !dbg !1326
  store i64 0, i64* %11, align 8, !dbg !1328
  call void @llvm.dbg.value(metadata i32* %10, metadata !297, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1316
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1329
  %72 = icmp eq i64 %71, 3, !dbg !1330
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !297, metadata !DIExpression()) #32, !dbg !1316
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1331
  %76 = icmp eq i32 %37, 9, !dbg !1331
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), !dbg !1331
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1331
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1332
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %80, metadata !1214, metadata !DIExpression()), !dbg !1269
  br i1 %45, label %97, label %82, !dbg !1333

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1226, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 0, metadata !1217, metadata !DIExpression()), !dbg !1269
  %83 = load i8, i8* %80, align 1, !dbg !1335, !tbaa !537
  %84 = icmp eq i8 %83, 0, !dbg !1337
  br i1 %84, label %97, label %85, !dbg !1337

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1226, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %88, metadata !1217, metadata !DIExpression()), !dbg !1269
  %89 = icmp ult i64 %88, %48, !dbg !1338
  br i1 %89, label %90, label %92, !dbg !1341

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1338
  store i8 %86, i8* %91, align 1, !dbg !1338, !tbaa !537
  br label %92, !dbg !1338

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %93, metadata !1217, metadata !DIExpression()), !dbg !1269
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %94, metadata !1226, metadata !DIExpression()), !dbg !1334
  %95 = load i8, i8* %94, align 1, !dbg !1335, !tbaa !537
  %96 = icmp eq i8 %95, 0, !dbg !1337
  br i1 %96, label %97, label %85, !dbg !1337, !llvm.loop !1343

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1345
  call void @llvm.dbg.value(metadata i64 %98, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1221, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %81, metadata !1219, metadata !DIExpression()), !dbg !1269
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %99, metadata !1220, metadata !DIExpression()), !dbg !1269
  br label %111, !dbg !1347

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1221, metadata !DIExpression()), !dbg !1269
  br label %102, !dbg !1348

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1222, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1221, metadata !DIExpression()), !dbg !1269
  br i1 %45, label %102, label %105, !dbg !1349

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1222, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1221, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 2, metadata !1211, metadata !DIExpression()), !dbg !1269
  br label %111, !dbg !1350

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1222, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1221, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 2, metadata !1211, metadata !DIExpression()), !dbg !1269
  br i1 %45, label %111, label %105, !dbg !1350

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1351
  br i1 %107, label %111, label %108, !dbg !1355

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1351, !tbaa !537
  br label %111, !dbg !1351

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1222, metadata !DIExpression()), !dbg !1269
  br label %111, !dbg !1356

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1357
  unreachable, !dbg !1357

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1345
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.72, i64 0, i64 0), %102 ], !dbg !1269
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1269
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1222, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1221, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %117, metadata !1220, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %116, metadata !1219, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %115, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %114, metadata !1215, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %113, metadata !1214, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %112, metadata !1211, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 0, metadata !1231, metadata !DIExpression()), !dbg !1358
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
  br label %132, !dbg !1359

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1345
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1273
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1358
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %139, metadata !1231, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1224, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %135, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %134, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %133, metadata !1210, metadata !DIExpression()), !dbg !1269
  %141 = icmp eq i64 %133, -1, !dbg !1360
  br i1 %141, label %142, label %146, !dbg !1361

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1362
  %144 = load i8, i8* %143, align 1, !dbg !1362, !tbaa !537
  %145 = icmp eq i8 %144, 0, !dbg !1363
  br i1 %145, label %596, label %148, !dbg !1364

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1365
  br i1 %147, label %596, label %148, !dbg !1364

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1233, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 0, metadata !1236, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 0, metadata !1237, metadata !DIExpression()), !dbg !1366
  br i1 %123, label %149, label %163, !dbg !1367

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1369
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1370
  br i1 %151, label %152, label %154, !dbg !1370

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %153, metadata !1210, metadata !DIExpression()), !dbg !1269
  br label %154, !dbg !1372

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1372
  call void @llvm.dbg.value(metadata i64 %155, metadata !1210, metadata !DIExpression()), !dbg !1269
  %156 = icmp ugt i64 %150, %155, !dbg !1373
  br i1 %156, label %163, label %157, !dbg !1374

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1375
  call void @llvm.dbg.value(metadata i8* %158, metadata !1376, metadata !DIExpression()) #32, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %116, metadata !1379, metadata !DIExpression()) #32, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %117, metadata !1380, metadata !DIExpression()) #32, !dbg !1381
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1383
  %160 = icmp ne i32 %159, 0, !dbg !1384
  %161 = or i1 %160, %125, !dbg !1385
  %162 = xor i1 %160, true, !dbg !1385
  br i1 %161, label %163, label %647, !dbg !1385

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1233, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %164, metadata !1210, metadata !DIExpression()), !dbg !1269
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1386
  %167 = load i8, i8* %166, align 1, !dbg !1386, !tbaa !537
  call void @llvm.dbg.value(metadata i8 %167, metadata !1238, metadata !DIExpression()), !dbg !1366
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
  ], !dbg !1387

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1388

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1389

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1236, metadata !DIExpression()), !dbg !1366
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1393
  br i1 %171, label %188, label %172, !dbg !1393

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1395
  br i1 %173, label %174, label %176, !dbg !1399

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1395
  store i8 39, i8* %175, align 1, !dbg !1395, !tbaa !537
  br label %176, !dbg !1395

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %177, metadata !1217, metadata !DIExpression()), !dbg !1269
  %178 = icmp ult i64 %177, %140, !dbg !1400
  br i1 %178, label %179, label %181, !dbg !1403

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1400
  store i8 36, i8* %180, align 1, !dbg !1400, !tbaa !537
  br label %181, !dbg !1400

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %182, metadata !1217, metadata !DIExpression()), !dbg !1269
  %183 = icmp ult i64 %182, %140, !dbg !1404
  br i1 %183, label %184, label %186, !dbg !1407

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1404
  store i8 39, i8* %185, align 1, !dbg !1404, !tbaa !537
  br label %186, !dbg !1404

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %187, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1225, metadata !DIExpression()), !dbg !1269
  br label %188, !dbg !1408

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1269
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %189, metadata !1217, metadata !DIExpression()), !dbg !1269
  %191 = icmp ult i64 %189, %140, !dbg !1409
  br i1 %191, label %192, label %194, !dbg !1412

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1409
  store i8 92, i8* %193, align 1, !dbg !1409, !tbaa !537
  br label %194, !dbg !1409

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %195, metadata !1217, metadata !DIExpression()), !dbg !1269
  br i1 %120, label %196, label %499, !dbg !1413

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1415
  %198 = icmp ult i64 %197, %164, !dbg !1416
  br i1 %198, label %199, label %456, !dbg !1417

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1418
  %201 = load i8, i8* %200, align 1, !dbg !1418, !tbaa !537
  %202 = add i8 %201, -48, !dbg !1419
  %203 = icmp ult i8 %202, 10, !dbg !1419
  br i1 %203, label %204, label %456, !dbg !1419

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1420
  br i1 %205, label %206, label %208, !dbg !1424

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1420
  store i8 48, i8* %207, align 1, !dbg !1420, !tbaa !537
  br label %208, !dbg !1420

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %209, metadata !1217, metadata !DIExpression()), !dbg !1269
  %210 = icmp ult i64 %209, %140, !dbg !1425
  br i1 %210, label %211, label %213, !dbg !1428

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1425
  store i8 48, i8* %212, align 1, !dbg !1425, !tbaa !537
  br label %213, !dbg !1425

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %214, metadata !1217, metadata !DIExpression()), !dbg !1269
  br label %456, !dbg !1429

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1430

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1431

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1432

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1434

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1436
  %221 = icmp ult i64 %220, %164, !dbg !1437
  br i1 %221, label %222, label %456, !dbg !1438

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1439
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1440
  %225 = load i8, i8* %224, align 1, !dbg !1440, !tbaa !537
  %226 = icmp eq i8 %225, 63, !dbg !1441
  br i1 %226, label %227, label %456, !dbg !1442

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1443
  %229 = load i8, i8* %228, align 1, !dbg !1443, !tbaa !537
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
  ], !dbg !1444

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1445

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1238, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %220, metadata !1231, metadata !DIExpression()), !dbg !1358
  %232 = icmp ult i64 %134, %140, !dbg !1447
  br i1 %232, label %233, label %235, !dbg !1450

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1447
  store i8 63, i8* %234, align 1, !dbg !1447, !tbaa !537
  br label %235, !dbg !1447

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %236, metadata !1217, metadata !DIExpression()), !dbg !1269
  %237 = icmp ult i64 %236, %140, !dbg !1451
  br i1 %237, label %238, label %240, !dbg !1454

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1451
  store i8 34, i8* %239, align 1, !dbg !1451, !tbaa !537
  br label %240, !dbg !1451

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %241, metadata !1217, metadata !DIExpression()), !dbg !1269
  %242 = icmp ult i64 %241, %140, !dbg !1455
  br i1 %242, label %243, label %245, !dbg !1458

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1455
  store i8 34, i8* %244, align 1, !dbg !1455, !tbaa !537
  br label %245, !dbg !1455

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %246, metadata !1217, metadata !DIExpression()), !dbg !1269
  %247 = icmp ult i64 %246, %140, !dbg !1459
  br i1 %247, label %248, label %250, !dbg !1462

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1459
  store i8 63, i8* %249, align 1, !dbg !1459, !tbaa !537
  br label %250, !dbg !1459

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %251, metadata !1217, metadata !DIExpression()), !dbg !1269
  br label %456, !dbg !1463

252:                                              ; preds = %163
  br label %263, !dbg !1464

253:                                              ; preds = %163
  br label %263, !dbg !1465

254:                                              ; preds = %163
  br label %261, !dbg !1466

255:                                              ; preds = %163
  br label %261, !dbg !1467

256:                                              ; preds = %163
  br label %263, !dbg !1468

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1469

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1470

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1473

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1475

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1476
  call void @llvm.dbg.label(metadata !1263), !dbg !1477
  br i1 %128, label %263, label %638, !dbg !1478

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1476
  call void @llvm.dbg.label(metadata !1265), !dbg !1480
  br i1 %118, label %510, label %467, !dbg !1481

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1482

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1483, !tbaa !537
  %268 = icmp eq i8 %267, 0, !dbg !1485
  br i1 %268, label %269, label %456, !dbg !1486

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1487
  br i1 %270, label %271, label %456, !dbg !1489

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1237, metadata !DIExpression()), !dbg !1366
  br label %272, !dbg !1490

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1237, metadata !DIExpression()), !dbg !1366
  br i1 %126, label %274, label %456, !dbg !1491

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1493

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1237, metadata !DIExpression()), !dbg !1366
  br i1 %126, label %276, label %456, !dbg !1494

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1495

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1498
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1500
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1500
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %282, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %281, metadata !1218, metadata !DIExpression()), !dbg !1269
  %283 = icmp ult i64 %134, %282, !dbg !1501
  br i1 %283, label %284, label %286, !dbg !1504

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1501
  store i8 39, i8* %285, align 1, !dbg !1501, !tbaa !537
  br label %286, !dbg !1501

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %287, metadata !1217, metadata !DIExpression()), !dbg !1269
  %288 = icmp ult i64 %287, %282, !dbg !1505
  br i1 %288, label %289, label %291, !dbg !1508

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1505
  store i8 92, i8* %290, align 1, !dbg !1505, !tbaa !537
  br label %291, !dbg !1505

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %292, metadata !1217, metadata !DIExpression()), !dbg !1269
  %293 = icmp ult i64 %292, %282, !dbg !1509
  br i1 %293, label %294, label %296, !dbg !1512

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1509
  store i8 39, i8* %295, align 1, !dbg !1509, !tbaa !537
  br label %296, !dbg !1509

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %297, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1225, metadata !DIExpression()), !dbg !1269
  br label %456, !dbg !1513

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1514

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1239, metadata !DIExpression()), !dbg !1515
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1516
  %301 = load i16*, i16** %300, align 8, !dbg !1516, !tbaa !441
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1516
  %304 = load i16, i16* %303, align 2, !dbg !1516, !tbaa !562
  %305 = and i16 %304, 16384, !dbg !1516
  %306 = icmp ne i16 %305, 0, !dbg !1518
  call void @llvm.dbg.value(metadata i8 poison, metadata !1242, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %349, metadata !1239, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %312, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i1 %350, metadata !1237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1366
  br label %352, !dbg !1519

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1520
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1243, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1295, metadata !DIExpression()) #32, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %32, metadata !1303, metadata !DIExpression()) #32, !dbg !1524
  call void @llvm.dbg.value(metadata i32 0, metadata !1306, metadata !DIExpression()) #32, !dbg !1524
  call void @llvm.dbg.value(metadata i64 8, metadata !1307, metadata !DIExpression()) #32, !dbg !1524
  store i64 0, i64* %14, align 8, !dbg !1526
  call void @llvm.dbg.value(metadata i64 0, metadata !1239, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 1, metadata !1242, metadata !DIExpression()), !dbg !1515
  %308 = icmp eq i64 %164, -1, !dbg !1527
  br i1 %308, label %309, label %311, !dbg !1529

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %310, metadata !1210, metadata !DIExpression()), !dbg !1269
  br label %311, !dbg !1531

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1366
  call void @llvm.dbg.value(metadata i64 %312, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1532
  %313 = sub i64 %312, %139, !dbg !1533
  call void @llvm.dbg.value(metadata i32* %16, metadata !1246, metadata !DIExpression(DW_OP_deref)), !dbg !1534
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %314, metadata !1250, metadata !DIExpression()), !dbg !1534
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1536

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1239, metadata !DIExpression()), !dbg !1515
  %316 = icmp ugt i64 %312, %139, !dbg !1537
  br i1 %316, label %319, label %317, !dbg !1539

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1242, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 0, metadata !1239, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %349, metadata !1239, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %312, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i1 %350, metadata !1237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1366
  br label %352, !dbg !1519

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1242, metadata !DIExpression()), !dbg !1515
  br label %346, !dbg !1542

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1239, metadata !DIExpression()), !dbg !1515
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1544
  %323 = load i8, i8* %322, align 1, !dbg !1544, !tbaa !537
  %324 = icmp eq i8 %323, 0, !dbg !1539
  br i1 %324, label %348, label %325, !dbg !1545

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %326, metadata !1239, metadata !DIExpression()), !dbg !1515
  %327 = add i64 %326, %139, !dbg !1547
  %328 = icmp eq i64 %326, %313, !dbg !1537
  br i1 %328, label %348, label %319, !dbg !1539, !llvm.loop !1548

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1549
  call void @llvm.dbg.value(metadata i64 1, metadata !1251, metadata !DIExpression()), !dbg !1550
  br i1 %331, label %332, label %340, !dbg !1549

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1251, metadata !DIExpression()), !dbg !1550
  %334 = add i64 %333, %139, !dbg !1551
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1553
  %336 = load i8, i8* %335, align 1, !dbg !1553, !tbaa !537
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1554

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %338, metadata !1251, metadata !DIExpression()), !dbg !1550
  %339 = icmp eq i64 %338, %314, !dbg !1556
  br i1 %339, label %340, label %332, !dbg !1557, !llvm.loop !1558

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1560, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %341, metadata !1246, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i32 %341, metadata !1562, metadata !DIExpression()) #32, !dbg !1570
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1572
  %343 = icmp ne i32 %342, 0, !dbg !1573
  call void @llvm.dbg.value(metadata i8 poison, metadata !1242, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %314, metadata !1239, metadata !DIExpression()), !dbg !1515
  br label %348, !dbg !1574

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1242, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 0, metadata !1239, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1541
  call void @llvm.dbg.label(metadata !1268), !dbg !1575
  %345 = select i1 %118, i32 4, i32 2, !dbg !1576
  br label %643, !dbg !1576

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1242, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 0, metadata !1239, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %349, metadata !1239, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %312, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i1 %350, metadata !1237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1366
  br label %352, !dbg !1519

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1242, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 0, metadata !1239, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %349, metadata !1239, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %312, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i1 %350, metadata !1237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1366
  %351 = icmp ugt i64 %349, 1, !dbg !1578
  br i1 %351, label %357, label %352, !dbg !1519

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1579
  br i1 %356, label %456, label %357, !dbg !1579

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1580
  call void @llvm.dbg.value(metadata i64 %361, metadata !1259, metadata !DIExpression()), !dbg !1581
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1582

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1269
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1358
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1583
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1366
  call void @llvm.dbg.value(metadata i8 %369, metadata !1238, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %368, metadata !1236, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1233, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %366, metadata !1231, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %364, metadata !1217, metadata !DIExpression()), !dbg !1269
  br i1 %362, label %414, label %370, !dbg !1584

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1589

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1236, metadata !DIExpression()), !dbg !1366
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1592
  br i1 %372, label %389, label %373, !dbg !1592

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1594
  br i1 %374, label %375, label %377, !dbg !1598

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1594
  store i8 39, i8* %376, align 1, !dbg !1594, !tbaa !537
  br label %377, !dbg !1594

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %378, metadata !1217, metadata !DIExpression()), !dbg !1269
  %379 = icmp ult i64 %378, %140, !dbg !1599
  br i1 %379, label %380, label %382, !dbg !1602

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1599
  store i8 36, i8* %381, align 1, !dbg !1599, !tbaa !537
  br label %382, !dbg !1599

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %383, metadata !1217, metadata !DIExpression()), !dbg !1269
  %384 = icmp ult i64 %383, %140, !dbg !1603
  br i1 %384, label %385, label %387, !dbg !1606

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1603
  store i8 39, i8* %386, align 1, !dbg !1603, !tbaa !537
  br label %387, !dbg !1603

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %388, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1225, metadata !DIExpression()), !dbg !1269
  br label %389, !dbg !1607

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1269
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %390, metadata !1217, metadata !DIExpression()), !dbg !1269
  %392 = icmp ult i64 %390, %140, !dbg !1608
  br i1 %392, label %393, label %395, !dbg !1611

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1608
  store i8 92, i8* %394, align 1, !dbg !1608, !tbaa !537
  br label %395, !dbg !1608

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %396, metadata !1217, metadata !DIExpression()), !dbg !1269
  %397 = icmp ult i64 %396, %140, !dbg !1612
  br i1 %397, label %398, label %402, !dbg !1615

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1612
  %400 = or i8 %399, 48, !dbg !1612
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1612
  store i8 %400, i8* %401, align 1, !dbg !1612, !tbaa !537
  br label %402, !dbg !1612

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %403, metadata !1217, metadata !DIExpression()), !dbg !1269
  %404 = icmp ult i64 %403, %140, !dbg !1616
  br i1 %404, label %405, label %410, !dbg !1619

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1616
  %407 = and i8 %406, 7, !dbg !1616
  %408 = or i8 %407, 48, !dbg !1616
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1616
  store i8 %408, i8* %409, align 1, !dbg !1616, !tbaa !537
  br label %410, !dbg !1616

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %411, metadata !1217, metadata !DIExpression()), !dbg !1269
  %412 = and i8 %369, 7, !dbg !1620
  %413 = or i8 %412, 48, !dbg !1621
  call void @llvm.dbg.value(metadata i8 %413, metadata !1238, metadata !DIExpression()), !dbg !1366
  br label %421, !dbg !1622

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1623

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1624
  br i1 %416, label %417, label %419, !dbg !1629

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1624
  store i8 92, i8* %418, align 1, !dbg !1624, !tbaa !537
  br label %419, !dbg !1624

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %420, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1233, metadata !DIExpression()), !dbg !1366
  br label %421, !dbg !1630

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1269
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1366
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1366
  call void @llvm.dbg.value(metadata i8 %426, metadata !1238, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %425, metadata !1236, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1233, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %422, metadata !1217, metadata !DIExpression()), !dbg !1269
  %427 = add i64 %366, 1, !dbg !1631
  %428 = icmp ugt i64 %361, %427, !dbg !1633
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1634

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1635
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1635
  br i1 %432, label %433, label %444, !dbg !1635

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1638
  br i1 %434, label %435, label %437, !dbg !1642

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1638
  store i8 39, i8* %436, align 1, !dbg !1638, !tbaa !537
  br label %437, !dbg !1638

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %438, metadata !1217, metadata !DIExpression()), !dbg !1269
  %439 = icmp ult i64 %438, %140, !dbg !1643
  br i1 %439, label %440, label %442, !dbg !1646

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1643
  store i8 39, i8* %441, align 1, !dbg !1643, !tbaa !537
  br label %442, !dbg !1643

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %443, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1225, metadata !DIExpression()), !dbg !1269
  br label %444, !dbg !1647

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1648
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %445, metadata !1217, metadata !DIExpression()), !dbg !1269
  %447 = icmp ult i64 %445, %140, !dbg !1649
  br i1 %447, label %448, label %450, !dbg !1652

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1649
  store i8 %426, i8* %449, align 1, !dbg !1649, !tbaa !537
  br label %450, !dbg !1649

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %451, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %427, metadata !1231, metadata !DIExpression()), !dbg !1358
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1653
  %453 = load i8, i8* %452, align 1, !dbg !1653, !tbaa !537
  call void @llvm.dbg.value(metadata i8 %453, metadata !1238, metadata !DIExpression()), !dbg !1366
  br label %363, !dbg !1654, !llvm.loop !1655

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1238, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i1 %358, metadata !1237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %425, metadata !1236, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1233, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %366, metadata !1231, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %422, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %360, metadata !1210, metadata !DIExpression()), !dbg !1269
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1658
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1269
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1273
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1358
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1366
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %465, metadata !1238, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1237, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1236, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1233, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %462, metadata !1231, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %459, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %458, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %457, metadata !1210, metadata !DIExpression()), !dbg !1269
  br i1 %121, label %478, label %467, !dbg !1659

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
  br i1 %131, label %479, label %499, !dbg !1661

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1662

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
  %490 = lshr i8 %481, 5, !dbg !1663
  %491 = zext i8 %490 to i64, !dbg !1663
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1664
  %493 = load i32, i32* %492, align 4, !dbg !1664, !tbaa !528
  %494 = and i8 %481, 31, !dbg !1665
  %495 = zext i8 %494 to i32, !dbg !1665
  %496 = shl nuw i32 1, %495, !dbg !1666
  %497 = and i32 %493, %496, !dbg !1666
  %498 = icmp eq i32 %497, 0, !dbg !1666
  br i1 %498, label %499, label %510, !dbg !1667

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
  br i1 %165, label %510, label %546, !dbg !1668

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1658
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1269
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1273
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1669
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1366
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %518, metadata !1238, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1237, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %516, metadata !1231, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %513, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %512, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %511, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1266), !dbg !1670
  br i1 %119, label %638, label %520, !dbg !1671

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1236, metadata !DIExpression()), !dbg !1366
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1673
  br i1 %521, label %538, label %522, !dbg !1673

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1675
  br i1 %523, label %524, label %526, !dbg !1679

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1675
  store i8 39, i8* %525, align 1, !dbg !1675, !tbaa !537
  br label %526, !dbg !1675

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %527, metadata !1217, metadata !DIExpression()), !dbg !1269
  %528 = icmp ult i64 %527, %519, !dbg !1680
  br i1 %528, label %529, label %531, !dbg !1683

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1680
  store i8 36, i8* %530, align 1, !dbg !1680, !tbaa !537
  br label %531, !dbg !1680

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %532, metadata !1217, metadata !DIExpression()), !dbg !1269
  %533 = icmp ult i64 %532, %519, !dbg !1684
  br i1 %533, label %534, label %536, !dbg !1687

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1684
  store i8 39, i8* %535, align 1, !dbg !1684, !tbaa !537
  br label %536, !dbg !1684

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %537, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1225, metadata !DIExpression()), !dbg !1269
  br label %538, !dbg !1688

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1366
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %539, metadata !1217, metadata !DIExpression()), !dbg !1269
  %541 = icmp ult i64 %539, %519, !dbg !1689
  br i1 %541, label %542, label %544, !dbg !1692

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1689
  store i8 92, i8* %543, align 1, !dbg !1689, !tbaa !537
  br label %544, !dbg !1689

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %556, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %555, metadata !1238, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1237, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1236, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %552, metadata !1231, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %549, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %548, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %547, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1267), !dbg !1693
  br label %570, !dbg !1694

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1658
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1269
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1273
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1669
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1697
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %555, metadata !1238, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1237, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1236, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %552, metadata !1231, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %549, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %548, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %547, metadata !1210, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.label(metadata !1267), !dbg !1693
  %557 = xor i1 %551, true, !dbg !1694
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1694
  br i1 %558, label %570, label %559, !dbg !1694

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1698
  br i1 %560, label %561, label %563, !dbg !1702

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1698
  store i8 39, i8* %562, align 1, !dbg !1698, !tbaa !537
  br label %563, !dbg !1698

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %564, metadata !1217, metadata !DIExpression()), !dbg !1269
  %565 = icmp ult i64 %564, %556, !dbg !1703
  br i1 %565, label %566, label %568, !dbg !1706

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1703
  store i8 39, i8* %567, align 1, !dbg !1703, !tbaa !537
  br label %568, !dbg !1703

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %569, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1225, metadata !DIExpression()), !dbg !1269
  br label %570, !dbg !1707

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1366
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %578, metadata !1217, metadata !DIExpression()), !dbg !1269
  %580 = icmp ult i64 %578, %571, !dbg !1708
  br i1 %580, label %581, label %583, !dbg !1711

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1708
  store i8 %572, i8* %582, align 1, !dbg !1708, !tbaa !537
  br label %583, !dbg !1708

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %584, metadata !1217, metadata !DIExpression()), !dbg !1269
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1712
  call void @llvm.dbg.value(metadata i8 poison, metadata !1224, metadata !DIExpression()), !dbg !1269
  br label %586, !dbg !1713

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1658
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1269
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1273
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1669
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %593, metadata !1231, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 poison, metadata !1225, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1224, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %589, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %588, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %587, metadata !1210, metadata !DIExpression()), !dbg !1269
  %595 = add i64 %593, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %595, metadata !1231, metadata !DIExpression()), !dbg !1358
  br label %132, !dbg !1715, !llvm.loop !1716

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1208, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1224, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1223, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 undef, metadata !1218, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 undef, metadata !1217, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 undef, metadata !1210, metadata !DIExpression()), !dbg !1269
  %597 = icmp eq i64 %134, 0, !dbg !1718
  %598 = and i1 %126, %597, !dbg !1720
  %599 = and i1 %598, %119, !dbg !1720
  br i1 %599, label %638, label %600, !dbg !1720

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1721
  %602 = or i1 %119, %601, !dbg !1721
  %603 = xor i1 %136, true, !dbg !1721
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1721
  br i1 %604, label %612, label %605, !dbg !1721

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1723

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1725
  br label %653, !dbg !1727

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1728
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1730
  br i1 %611, label %36, label %612, !dbg !1730

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1731
  %615 = or i1 %614, %613, !dbg !1733
  br i1 %615, label %631, label %616, !dbg !1733

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1219, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %134, metadata !1217, metadata !DIExpression()), !dbg !1269
  %617 = load i8, i8* %116, align 1, !dbg !1734, !tbaa !537
  %618 = icmp eq i8 %617, 0, !dbg !1737
  br i1 %618, label %631, label %619, !dbg !1737

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1219, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %622, metadata !1217, metadata !DIExpression()), !dbg !1269
  %623 = icmp ult i64 %622, %140, !dbg !1738
  br i1 %623, label %624, label %626, !dbg !1741

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1738
  store i8 %620, i8* %625, align 1, !dbg !1738, !tbaa !537
  br label %626, !dbg !1738

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %627, metadata !1217, metadata !DIExpression()), !dbg !1269
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1742
  call void @llvm.dbg.value(metadata i8* %628, metadata !1219, metadata !DIExpression()), !dbg !1269
  %629 = load i8, i8* %628, align 1, !dbg !1734, !tbaa !537
  %630 = icmp eq i8 %629, 0, !dbg !1737
  br i1 %630, label %631, label %619, !dbg !1737, !llvm.loop !1743

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1345
  call void @llvm.dbg.value(metadata i64 %632, metadata !1217, metadata !DIExpression()), !dbg !1269
  %633 = icmp ult i64 %632, %140, !dbg !1745
  br i1 %633, label %634, label %653, !dbg !1747

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1748
  store i8 0, i8* %635, align 1, !dbg !1749, !tbaa !537
  br label %653, !dbg !1748

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1268), !dbg !1575
  %637 = icmp eq i32 %112, 2, !dbg !1750
  br i1 %637, label %643, label %647, !dbg !1576

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1268), !dbg !1575
  %641 = icmp eq i32 %112, 2, !dbg !1750
  %642 = select i1 %118, i32 4, i32 2, !dbg !1576
  br i1 %641, label %643, label %647, !dbg !1576

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1576

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1211, metadata !DIExpression()), !dbg !1269
  %651 = and i32 %5, -3, !dbg !1751
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1752
  br label %653, !dbg !1753

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1754
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1755 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1761, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %1, metadata !1762, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1763, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8* %0, metadata !1765, metadata !DIExpression()) #32, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %1, metadata !1770, metadata !DIExpression()) #32, !dbg !1778
  call void @llvm.dbg.value(metadata i64* null, metadata !1771, metadata !DIExpression()) #32, !dbg !1778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1772, metadata !DIExpression()) #32, !dbg !1778
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1780
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1773, metadata !DIExpression()) #32, !dbg !1778
  %6 = tail call i32* @__errno_location() #35, !dbg !1781
  %7 = load i32, i32* %6, align 4, !dbg !1781, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %7, metadata !1774, metadata !DIExpression()) #32, !dbg !1778
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1782
  %9 = load i32, i32* %8, align 4, !dbg !1782, !tbaa !1151
  %10 = or i32 %9, 1, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %10, metadata !1775, metadata !DIExpression()) #32, !dbg !1778
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1784
  %12 = load i32, i32* %11, align 8, !dbg !1784, !tbaa !1100
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1785
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1786
  %15 = load i8*, i8** %14, align 8, !dbg !1786, !tbaa !1173
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1787
  %17 = load i8*, i8** %16, align 8, !dbg !1787, !tbaa !1176
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !1788
  %19 = add i64 %18, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %19, metadata !1776, metadata !DIExpression()) #32, !dbg !1778
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1790
  call void @llvm.dbg.value(metadata i8* %20, metadata !1777, metadata !DIExpression()) #32, !dbg !1778
  %21 = load i32, i32* %11, align 8, !dbg !1791, !tbaa !1100
  %22 = load i8*, i8** %14, align 8, !dbg !1792, !tbaa !1173
  %23 = load i8*, i8** %16, align 8, !dbg !1793, !tbaa !1176
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !1794
  store i32 %7, i32* %6, align 4, !dbg !1795, !tbaa !528
  ret i8* %20, !dbg !1796
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1766 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1765, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %1, metadata !1770, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i64* %2, metadata !1771, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1772, metadata !DIExpression()), !dbg !1797
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1798
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1798
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1773, metadata !DIExpression()), !dbg !1797
  %7 = tail call i32* @__errno_location() #35, !dbg !1799
  %8 = load i32, i32* %7, align 4, !dbg !1799, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %8, metadata !1774, metadata !DIExpression()), !dbg !1797
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1800
  %10 = load i32, i32* %9, align 4, !dbg !1800, !tbaa !1151
  %11 = icmp eq i64* %2, null, !dbg !1801
  %12 = zext i1 %11 to i32, !dbg !1801
  %13 = or i32 %10, %12, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %13, metadata !1775, metadata !DIExpression()), !dbg !1797
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1803
  %15 = load i32, i32* %14, align 8, !dbg !1803, !tbaa !1100
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1804
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1805
  %18 = load i8*, i8** %17, align 8, !dbg !1805, !tbaa !1173
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1806
  %20 = load i8*, i8** %19, align 8, !dbg !1806, !tbaa !1176
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1807
  %22 = add i64 %21, 1, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %22, metadata !1776, metadata !DIExpression()), !dbg !1797
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1809
  call void @llvm.dbg.value(metadata i8* %23, metadata !1777, metadata !DIExpression()), !dbg !1797
  %24 = load i32, i32* %14, align 8, !dbg !1810, !tbaa !1100
  %25 = load i8*, i8** %17, align 8, !dbg !1811, !tbaa !1173
  %26 = load i8*, i8** %19, align 8, !dbg !1812, !tbaa !1176
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1813
  store i32 %8, i32* %7, align 4, !dbg !1814, !tbaa !528
  br i1 %11, label %29, label %28, !dbg !1815

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1816, !tbaa !1818
  br label %29, !dbg !1819

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1820
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1821 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1826, !tbaa !441
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1823, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 1, metadata !1824, metadata !DIExpression()), !dbg !1828
  %2 = load i32, i32* @nslots, align 4, !tbaa !528
  call void @llvm.dbg.value(metadata i32 1, metadata !1824, metadata !DIExpression()), !dbg !1828
  %3 = icmp sgt i32 %2, 1, !dbg !1829
  br i1 %3, label %4, label %6, !dbg !1831

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1829
  br label %10, !dbg !1831

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1832
  %8 = load i8*, i8** %7, align 8, !dbg !1832, !tbaa !1834
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1836
  br i1 %9, label %17, label %16, !dbg !1837

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1824, metadata !DIExpression()), !dbg !1828
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1838
  %13 = load i8*, i8** %12, align 8, !dbg !1838, !tbaa !1834
  tail call void @free(i8* noundef %13) #32, !dbg !1839
  %14 = add nuw nsw i64 %11, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %14, metadata !1824, metadata !DIExpression()), !dbg !1828
  %15 = icmp eq i64 %14, %5, !dbg !1829
  br i1 %15, label %6, label %10, !dbg !1831, !llvm.loop !1841

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !1843
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1845, !tbaa !1846
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1847, !tbaa !1834
  br label %17, !dbg !1848

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1849
  br i1 %18, label %21, label %19, !dbg !1851

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1852
  tail call void @free(i8* noundef %20) #32, !dbg !1854
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1855, !tbaa !441
  br label %21, !dbg !1856

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1857, !tbaa !528
  ret void, !dbg !1858
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1859 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1861, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* %1, metadata !1862, metadata !DIExpression()), !dbg !1863
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1864
  ret i8* %3, !dbg !1865
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1866 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1870, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %1, metadata !1871, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64 %2, metadata !1872, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1873, metadata !DIExpression()), !dbg !1886
  %6 = tail call i32* @__errno_location() #35, !dbg !1887
  %7 = load i32, i32* %6, align 4, !dbg !1887, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %7, metadata !1874, metadata !DIExpression()), !dbg !1886
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1888, !tbaa !441
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1875, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1876, metadata !DIExpression()), !dbg !1886
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1889
  br i1 %9, label %10, label %11, !dbg !1889

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !1891
  unreachable, !dbg !1891

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1892, !tbaa !528
  %13 = icmp sgt i32 %12, %0, !dbg !1893
  br i1 %13, label %36, label %14, !dbg !1894

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1895
  call void @llvm.dbg.value(metadata i1 %15, metadata !1877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1896
  %16 = bitcast i64* %5 to i8*, !dbg !1897
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1897
  %17 = sext i32 %12 to i64, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %17, metadata !1880, metadata !DIExpression()), !dbg !1896
  store i64 %17, i64* %5, align 8, !dbg !1899, !tbaa !1818
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1900
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1900
  %20 = add nuw nsw i32 %0, 1, !dbg !1901
  %21 = sub i32 %20, %12, !dbg !1902
  %22 = sext i32 %21 to i64, !dbg !1903
  call void @llvm.dbg.value(metadata i64* %5, metadata !1880, metadata !DIExpression(DW_OP_deref)), !dbg !1896
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !1904
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1904
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1875, metadata !DIExpression()), !dbg !1886
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1905, !tbaa !441
  br i1 %15, label %25, label %26, !dbg !1906

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1907, !tbaa.struct !1909
  br label %26, !dbg !1910

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1911, !tbaa !528
  %28 = sext i32 %27 to i64, !dbg !1912
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1912
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1913
  %31 = load i64, i64* %5, align 8, !dbg !1914, !tbaa !1818
  call void @llvm.dbg.value(metadata i64 %31, metadata !1880, metadata !DIExpression()), !dbg !1896
  %32 = sub nsw i64 %31, %28, !dbg !1915
  %33 = shl i64 %32, 4, !dbg !1916
  call void @llvm.dbg.value(metadata i8* %30, metadata !1303, metadata !DIExpression()) #32, !dbg !1917
  call void @llvm.dbg.value(metadata i32 0, metadata !1306, metadata !DIExpression()) #32, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %33, metadata !1307, metadata !DIExpression()) #32, !dbg !1917
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !1919
  %34 = load i64, i64* %5, align 8, !dbg !1920, !tbaa !1818
  call void @llvm.dbg.value(metadata i64 %34, metadata !1880, metadata !DIExpression()), !dbg !1896
  %35 = trunc i64 %34 to i32, !dbg !1920
  store i32 %35, i32* @nslots, align 4, !dbg !1921, !tbaa !528
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1922
  br label %36, !dbg !1923

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1886
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1875, metadata !DIExpression()), !dbg !1886
  %38 = zext i32 %0 to i64, !dbg !1924
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !1925
  %40 = load i64, i64* %39, align 8, !dbg !1925, !tbaa !1846
  call void @llvm.dbg.value(metadata i64 %40, metadata !1881, metadata !DIExpression()), !dbg !1926
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !1927
  %42 = load i8*, i8** %41, align 8, !dbg !1927, !tbaa !1834
  call void @llvm.dbg.value(metadata i8* %42, metadata !1883, metadata !DIExpression()), !dbg !1926
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1928
  %44 = load i32, i32* %43, align 4, !dbg !1928, !tbaa !1151
  %45 = or i32 %44, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i32 %45, metadata !1884, metadata !DIExpression()), !dbg !1926
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1930
  %47 = load i32, i32* %46, align 8, !dbg !1930, !tbaa !1100
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1931
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1932
  %50 = load i8*, i8** %49, align 8, !dbg !1932, !tbaa !1173
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1933
  %52 = load i8*, i8** %51, align 8, !dbg !1933, !tbaa !1176
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %53, metadata !1885, metadata !DIExpression()), !dbg !1926
  %54 = icmp ugt i64 %40, %53, !dbg !1935
  br i1 %54, label %65, label %55, !dbg !1937

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %56, metadata !1881, metadata !DIExpression()), !dbg !1926
  store i64 %56, i64* %39, align 8, !dbg !1940, !tbaa !1846
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1941
  br i1 %57, label %59, label %58, !dbg !1943

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !1944
  br label %59, !dbg !1944

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !1945
  call void @llvm.dbg.value(metadata i8* %60, metadata !1883, metadata !DIExpression()), !dbg !1926
  store i8* %60, i8** %41, align 8, !dbg !1946, !tbaa !1834
  %61 = load i32, i32* %46, align 8, !dbg !1947, !tbaa !1100
  %62 = load i8*, i8** %49, align 8, !dbg !1948, !tbaa !1173
  %63 = load i8*, i8** %51, align 8, !dbg !1949, !tbaa !1176
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !1950
  br label %65, !dbg !1951

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !1926
  call void @llvm.dbg.value(metadata i8* %66, metadata !1883, metadata !DIExpression()), !dbg !1926
  store i32 %7, i32* %6, align 4, !dbg !1952, !tbaa !528
  ret i8* %66, !dbg !1953
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1954 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1958, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %1, metadata !1959, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %2, metadata !1960, metadata !DIExpression()), !dbg !1961
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1962
  ret i8* %4, !dbg !1963
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !1964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1966, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i32 0, metadata !1861, metadata !DIExpression()) #32, !dbg !1968
  call void @llvm.dbg.value(metadata i8* %0, metadata !1862, metadata !DIExpression()) #32, !dbg !1968
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !1970
  ret i8* %2, !dbg !1971
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !1972 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1976, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i64 %1, metadata !1977, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()) #32, !dbg !1979
  call void @llvm.dbg.value(metadata i8* %0, metadata !1959, metadata !DIExpression()) #32, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %1, metadata !1960, metadata !DIExpression()) #32, !dbg !1979
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !1981
  ret i8* %3, !dbg !1982
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1983 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1987, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %1, metadata !1988, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8* %2, metadata !1989, metadata !DIExpression()), !dbg !1991
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !1992
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !1992
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1990, metadata !DIExpression()), !dbg !1993
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994), !dbg !1997
  call void @llvm.dbg.value(metadata i32 %1, metadata !1998, metadata !DIExpression()) #32, !dbg !2004
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2003, metadata !DIExpression()) #32, !dbg !2006
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2006, !alias.scope !1994
  %6 = icmp eq i32 %1, 10, !dbg !2007
  br i1 %6, label %7, label %8, !dbg !2009

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2010, !noalias !1994
  unreachable, !dbg !2010

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2011
  store i32 %1, i32* %9, align 8, !dbg !2012, !tbaa !1100, !alias.scope !1994
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2013
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2014
  ret i8* %10, !dbg !2015
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2016 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2020, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %1, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %2, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %3, metadata !2023, metadata !DIExpression()), !dbg !2025
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2026
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2026
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2024, metadata !DIExpression()), !dbg !2027
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %1, metadata !1998, metadata !DIExpression()) #32, !dbg !2032
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2003, metadata !DIExpression()) #32, !dbg !2034
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2034, !alias.scope !2028
  %7 = icmp eq i32 %1, 10, !dbg !2035
  br i1 %7, label %8, label %9, !dbg !2036

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2037, !noalias !2028
  unreachable, !dbg !2037

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2038
  store i32 %1, i32* %10, align 8, !dbg !2039, !tbaa !1100, !alias.scope !2028
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2040
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2041
  ret i8* %11, !dbg !2042
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2043 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8* %1, metadata !2048, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32 0, metadata !1987, metadata !DIExpression()) #32, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %0, metadata !1988, metadata !DIExpression()) #32, !dbg !2050
  call void @llvm.dbg.value(metadata i8* %1, metadata !1989, metadata !DIExpression()) #32, !dbg !2050
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2052
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2052
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !1990, metadata !DIExpression()) #32, !dbg !2053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2054) #32, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %0, metadata !1998, metadata !DIExpression()) #32, !dbg !2058
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2003, metadata !DIExpression()) #32, !dbg !2060
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2060, !alias.scope !2054
  %5 = icmp eq i32 %0, 10, !dbg !2061
  br i1 %5, label %6, label %7, !dbg !2062

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2063, !noalias !2054
  unreachable, !dbg !2063

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2064
  store i32 %0, i32* %8, align 8, !dbg !2065, !tbaa !1100, !alias.scope !2054
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2066
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2067
  ret i8* %9, !dbg !2068
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2069 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2073, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %1, metadata !2074, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %2, metadata !2075, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 0, metadata !2020, metadata !DIExpression()) #32, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %0, metadata !2021, metadata !DIExpression()) #32, !dbg !2077
  call void @llvm.dbg.value(metadata i8* %1, metadata !2022, metadata !DIExpression()) #32, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %2, metadata !2023, metadata !DIExpression()) #32, !dbg !2077
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2079
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2079
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2024, metadata !DIExpression()) #32, !dbg !2080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081) #32, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %0, metadata !1998, metadata !DIExpression()) #32, !dbg !2085
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2003, metadata !DIExpression()) #32, !dbg !2087
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2087, !alias.scope !2081
  %6 = icmp eq i32 %0, 10, !dbg !2088
  br i1 %6, label %7, label %8, !dbg !2089

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2090, !noalias !2081
  unreachable, !dbg !2090

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2091
  store i32 %0, i32* %9, align 8, !dbg !2092, !tbaa !1100, !alias.scope !2081
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2093
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2094
  ret i8* %10, !dbg !2095
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2096 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2100, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %1, metadata !2101, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 %2, metadata !2102, metadata !DIExpression()), !dbg !2104
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2105
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2105
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2107, !tbaa.struct !2108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1118, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8 %2, metadata !1119, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 1, metadata !1120, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8 %2, metadata !1121, metadata !DIExpression()), !dbg !2109
  %6 = lshr i8 %2, 5, !dbg !2111
  %7 = zext i8 %6 to i64, !dbg !2111
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2112
  call void @llvm.dbg.value(metadata i32* %8, metadata !1122, metadata !DIExpression()), !dbg !2109
  %9 = and i8 %2, 31, !dbg !2113
  %10 = zext i8 %9 to i32, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %10, metadata !1124, metadata !DIExpression()), !dbg !2109
  %11 = load i32, i32* %8, align 4, !dbg !2114, !tbaa !528
  %12 = lshr i32 %11, %10, !dbg !2115
  %13 = and i32 %12, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %13, metadata !1125, metadata !DIExpression()), !dbg !2109
  %14 = xor i32 %13, 1, !dbg !2117
  %15 = shl i32 %14, %10, !dbg !2118
  %16 = xor i32 %15, %11, !dbg !2119
  store i32 %16, i32* %8, align 4, !dbg !2119, !tbaa !528
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2120
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2121
  ret i8* %17, !dbg !2122
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2123 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 %1, metadata !2128, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %0, metadata !2100, metadata !DIExpression()) #32, !dbg !2130
  call void @llvm.dbg.value(metadata i64 -1, metadata !2101, metadata !DIExpression()) #32, !dbg !2130
  call void @llvm.dbg.value(metadata i8 %1, metadata !2102, metadata !DIExpression()) #32, !dbg !2130
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2132
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2132
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2103, metadata !DIExpression()) #32, !dbg !2133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2134, !tbaa.struct !2108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1118, metadata !DIExpression()) #32, !dbg !2135
  call void @llvm.dbg.value(metadata i8 %1, metadata !1119, metadata !DIExpression()) #32, !dbg !2135
  call void @llvm.dbg.value(metadata i32 1, metadata !1120, metadata !DIExpression()) #32, !dbg !2135
  call void @llvm.dbg.value(metadata i8 %1, metadata !1121, metadata !DIExpression()) #32, !dbg !2135
  %5 = lshr i8 %1, 5, !dbg !2137
  %6 = zext i8 %5 to i64, !dbg !2137
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2138
  call void @llvm.dbg.value(metadata i32* %7, metadata !1122, metadata !DIExpression()) #32, !dbg !2135
  %8 = and i8 %1, 31, !dbg !2139
  %9 = zext i8 %8 to i32, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %9, metadata !1124, metadata !DIExpression()) #32, !dbg !2135
  %10 = load i32, i32* %7, align 4, !dbg !2140, !tbaa !528
  %11 = lshr i32 %10, %9, !dbg !2141
  %12 = and i32 %11, 1, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %12, metadata !1125, metadata !DIExpression()) #32, !dbg !2135
  %13 = xor i32 %12, 1, !dbg !2143
  %14 = shl i32 %13, %9, !dbg !2144
  %15 = xor i32 %14, %10, !dbg !2145
  store i32 %15, i32* %7, align 4, !dbg !2145, !tbaa !528
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2146
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2147
  ret i8* %16, !dbg !2148
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2149 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %0, metadata !2127, metadata !DIExpression()) #32, !dbg !2153
  call void @llvm.dbg.value(metadata i8 58, metadata !2128, metadata !DIExpression()) #32, !dbg !2153
  call void @llvm.dbg.value(metadata i8* %0, metadata !2100, metadata !DIExpression()) #32, !dbg !2155
  call void @llvm.dbg.value(metadata i64 -1, metadata !2101, metadata !DIExpression()) #32, !dbg !2155
  call void @llvm.dbg.value(metadata i8 58, metadata !2102, metadata !DIExpression()) #32, !dbg !2155
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2157
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2157
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2103, metadata !DIExpression()) #32, !dbg !2158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2159, !tbaa.struct !2108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1118, metadata !DIExpression()) #32, !dbg !2160
  call void @llvm.dbg.value(metadata i8 58, metadata !1119, metadata !DIExpression()) #32, !dbg !2160
  call void @llvm.dbg.value(metadata i32 1, metadata !1120, metadata !DIExpression()) #32, !dbg !2160
  call void @llvm.dbg.value(metadata i8 58, metadata !1121, metadata !DIExpression()) #32, !dbg !2160
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2162
  call void @llvm.dbg.value(metadata i32* %4, metadata !1122, metadata !DIExpression()) #32, !dbg !2160
  call void @llvm.dbg.value(metadata i32 26, metadata !1124, metadata !DIExpression()) #32, !dbg !2160
  %5 = load i32, i32* %4, align 4, !dbg !2163, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %5, metadata !1125, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2160
  %6 = or i32 %5, 67108864, !dbg !2164
  store i32 %6, i32* %4, align 4, !dbg !2164, !tbaa !528
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2165
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2166
  ret i8* %7, !dbg !2167
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2168 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %1, metadata !2171, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8* %0, metadata !2100, metadata !DIExpression()) #32, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %1, metadata !2101, metadata !DIExpression()) #32, !dbg !2173
  call void @llvm.dbg.value(metadata i8 58, metadata !2102, metadata !DIExpression()) #32, !dbg !2173
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2175
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2175
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2103, metadata !DIExpression()) #32, !dbg !2176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2177, !tbaa.struct !2108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1118, metadata !DIExpression()) #32, !dbg !2178
  call void @llvm.dbg.value(metadata i8 58, metadata !1119, metadata !DIExpression()) #32, !dbg !2178
  call void @llvm.dbg.value(metadata i32 1, metadata !1120, metadata !DIExpression()) #32, !dbg !2178
  call void @llvm.dbg.value(metadata i8 58, metadata !1121, metadata !DIExpression()) #32, !dbg !2178
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2180
  call void @llvm.dbg.value(metadata i32* %5, metadata !1122, metadata !DIExpression()) #32, !dbg !2178
  call void @llvm.dbg.value(metadata i32 26, metadata !1124, metadata !DIExpression()) #32, !dbg !2178
  %6 = load i32, i32* %5, align 4, !dbg !2181, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %6, metadata !1125, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2178
  %7 = or i32 %6, 67108864, !dbg !2182
  store i32 %7, i32* %5, align 4, !dbg !2182, !tbaa !528
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2183
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2184
  ret i8* %8, !dbg !2185
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2186 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2188, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1, metadata !2189, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %2, metadata !2190, metadata !DIExpression()), !dbg !2192
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2193
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2193
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2191, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %1, metadata !1998, metadata !DIExpression()) #32, !dbg !2195
  call void @llvm.dbg.value(metadata i32 0, metadata !2003, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2195
  %6 = icmp eq i32 %1, 10, !dbg !2197
  br i1 %6, label %7, label %8, !dbg !2198

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2199, !noalias !2200
  unreachable, !dbg !2199

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2003, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2195
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2203
  store i32 %1, i32* %9, align 8, !dbg !2203, !tbaa.struct !2108
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2203
  %11 = bitcast i32* %10 to i8*, !dbg !2203
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1118, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 58, metadata !1119, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 1, metadata !1120, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 58, metadata !1121, metadata !DIExpression()), !dbg !2204
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2206
  call void @llvm.dbg.value(metadata i32* %12, metadata !1122, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 26, metadata !1124, metadata !DIExpression()), !dbg !2204
  %13 = load i32, i32* %12, align 4, !dbg !2207, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %13, metadata !1125, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2204
  %14 = or i32 %13, 67108864, !dbg !2208
  store i32 %14, i32* %12, align 4, !dbg !2208, !tbaa !528
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2210
  ret i8* %15, !dbg !2211
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2212 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2216, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8* %1, metadata !2217, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8* %2, metadata !2218, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8* %3, metadata !2219, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 %0, metadata !2221, metadata !DIExpression()) #32, !dbg !2231
  call void @llvm.dbg.value(metadata i8* %1, metadata !2226, metadata !DIExpression()) #32, !dbg !2231
  call void @llvm.dbg.value(metadata i8* %2, metadata !2227, metadata !DIExpression()) #32, !dbg !2231
  call void @llvm.dbg.value(metadata i8* %3, metadata !2228, metadata !DIExpression()) #32, !dbg !2231
  call void @llvm.dbg.value(metadata i64 -1, metadata !2229, metadata !DIExpression()) #32, !dbg !2231
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2233
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2233
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2230, metadata !DIExpression()) #32, !dbg !2234
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2235, !tbaa.struct !2108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1158, metadata !DIExpression()) #32, !dbg !2236
  call void @llvm.dbg.value(metadata i8* %1, metadata !1159, metadata !DIExpression()) #32, !dbg !2236
  call void @llvm.dbg.value(metadata i8* %2, metadata !1160, metadata !DIExpression()) #32, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1158, metadata !DIExpression()) #32, !dbg !2236
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2238
  store i32 10, i32* %7, align 8, !dbg !2239, !tbaa !1100
  %8 = icmp ne i8* %1, null, !dbg !2240
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2241
  br i1 %10, label %12, label %11, !dbg !2241

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2242
  unreachable, !dbg !2242

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2243
  store i8* %1, i8** %13, align 8, !dbg !2244, !tbaa !1173
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2245
  store i8* %2, i8** %14, align 8, !dbg !2246, !tbaa !1176
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2247
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2248
  ret i8* %15, !dbg !2249
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2222 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2221, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %1, metadata !2226, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %2, metadata !2227, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %3, metadata !2228, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %4, metadata !2229, metadata !DIExpression()), !dbg !2250
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2230, metadata !DIExpression()), !dbg !2252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2253, !tbaa.struct !2108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1158, metadata !DIExpression()) #32, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %1, metadata !1159, metadata !DIExpression()) #32, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %2, metadata !1160, metadata !DIExpression()) #32, !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1158, metadata !DIExpression()) #32, !dbg !2254
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2256
  store i32 10, i32* %8, align 8, !dbg !2257, !tbaa !1100
  %9 = icmp ne i8* %1, null, !dbg !2258
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2259
  br i1 %11, label %13, label %12, !dbg !2259

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2260
  unreachable, !dbg !2260

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2261
  store i8* %1, i8** %14, align 8, !dbg !2262, !tbaa !1173
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2263
  store i8* %2, i8** %15, align 8, !dbg !2264, !tbaa !1176
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2266
  ret i8* %16, !dbg !2267
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2268 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %2, metadata !2274, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32 0, metadata !2216, metadata !DIExpression()) #32, !dbg !2276
  call void @llvm.dbg.value(metadata i8* %0, metadata !2217, metadata !DIExpression()) #32, !dbg !2276
  call void @llvm.dbg.value(metadata i8* %1, metadata !2218, metadata !DIExpression()) #32, !dbg !2276
  call void @llvm.dbg.value(metadata i8* %2, metadata !2219, metadata !DIExpression()) #32, !dbg !2276
  call void @llvm.dbg.value(metadata i32 0, metadata !2221, metadata !DIExpression()) #32, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()) #32, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %1, metadata !2227, metadata !DIExpression()) #32, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %2, metadata !2228, metadata !DIExpression()) #32, !dbg !2278
  call void @llvm.dbg.value(metadata i64 -1, metadata !2229, metadata !DIExpression()) #32, !dbg !2278
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2280
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2280
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2230, metadata !DIExpression()) #32, !dbg !2281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2282, !tbaa.struct !2108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1158, metadata !DIExpression()) #32, !dbg !2283
  call void @llvm.dbg.value(metadata i8* %0, metadata !1159, metadata !DIExpression()) #32, !dbg !2283
  call void @llvm.dbg.value(metadata i8* %1, metadata !1160, metadata !DIExpression()) #32, !dbg !2283
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1158, metadata !DIExpression()) #32, !dbg !2283
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2285
  store i32 10, i32* %6, align 8, !dbg !2286, !tbaa !1100
  %7 = icmp ne i8* %0, null, !dbg !2287
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2288
  br i1 %9, label %11, label %10, !dbg !2288

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2289
  unreachable, !dbg !2289

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2290
  store i8* %0, i8** %12, align 8, !dbg !2291, !tbaa !1173
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2292
  store i8* %1, i8** %13, align 8, !dbg !2293, !tbaa !1176
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2295
  ret i8* %14, !dbg !2296
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2297 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2301, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i8* %1, metadata !2302, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i8* %2, metadata !2303, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i64 %3, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2221, metadata !DIExpression()) #32, !dbg !2306
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()) #32, !dbg !2306
  call void @llvm.dbg.value(metadata i8* %1, metadata !2227, metadata !DIExpression()) #32, !dbg !2306
  call void @llvm.dbg.value(metadata i8* %2, metadata !2228, metadata !DIExpression()) #32, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %3, metadata !2229, metadata !DIExpression()) #32, !dbg !2306
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2308
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2308
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2230, metadata !DIExpression()) #32, !dbg !2309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2310, !tbaa.struct !2108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1158, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %0, metadata !1159, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %1, metadata !1160, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1158, metadata !DIExpression()) #32, !dbg !2311
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2313
  store i32 10, i32* %7, align 8, !dbg !2314, !tbaa !1100
  %8 = icmp ne i8* %0, null, !dbg !2315
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2316
  br i1 %10, label %12, label %11, !dbg !2316

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2317
  unreachable, !dbg !2317

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2318
  store i8* %0, i8** %13, align 8, !dbg !2319, !tbaa !1173
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2320
  store i8* %1, i8** %14, align 8, !dbg !2321, !tbaa !1176
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2323
  ret i8* %15, !dbg !2324
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2325 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %2, metadata !2331, metadata !DIExpression()), !dbg !2332
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2333
  ret i8* %4, !dbg !2334
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %1, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 0, metadata !2329, metadata !DIExpression()) #32, !dbg !2342
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()) #32, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %1, metadata !2331, metadata !DIExpression()) #32, !dbg !2342
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2344
  ret i8* %3, !dbg !2345
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2346 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2350, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %1, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i32 %0, metadata !2329, metadata !DIExpression()) #32, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()) #32, !dbg !2353
  call void @llvm.dbg.value(metadata i64 -1, metadata !2331, metadata !DIExpression()) #32, !dbg !2353
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2355
  ret i8* %3, !dbg !2356
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2361, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 0, metadata !2350, metadata !DIExpression()) #32, !dbg !2363
  call void @llvm.dbg.value(metadata i8* %0, metadata !2351, metadata !DIExpression()) #32, !dbg !2363
  call void @llvm.dbg.value(metadata i32 0, metadata !2329, metadata !DIExpression()) #32, !dbg !2365
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()) #32, !dbg !2365
  call void @llvm.dbg.value(metadata i64 -1, metadata !2331, metadata !DIExpression()) #32, !dbg !2365
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2367
  ret i8* %2, !dbg !2368
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2369 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2408, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8* %1, metadata !2409, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8* %2, metadata !2410, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8* %3, metadata !2411, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8** %4, metadata !2412, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %5, metadata !2413, metadata !DIExpression()), !dbg !2414
  %7 = icmp eq i8* %1, null, !dbg !2415
  br i1 %7, label %10, label %8, !dbg !2417

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2418
  br label %12, !dbg !2418

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.78, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2419
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.80, i64 0, i64 0), i32 noundef 5) #32, !dbg !2420
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2420
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.81, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2421
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.82, i64 0, i64 0), i32 noundef 5) #32, !dbg !2422
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.83, i64 0, i64 0)) #32, !dbg !2422
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.81, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2423
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
  ], !dbg !2424

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.84, i64 0, i64 0), i32 noundef 5) #32, !dbg !2425
  %21 = load i8*, i8** %4, align 8, !dbg !2425, !tbaa !441
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2425
  br label %147, !dbg !2427

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.85, i64 0, i64 0), i32 noundef 5) #32, !dbg !2428
  %25 = load i8*, i8** %4, align 8, !dbg !2428, !tbaa !441
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2428
  %27 = load i8*, i8** %26, align 8, !dbg !2428, !tbaa !441
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2428
  br label %147, !dbg !2429

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.86, i64 0, i64 0), i32 noundef 5) #32, !dbg !2430
  %31 = load i8*, i8** %4, align 8, !dbg !2430, !tbaa !441
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2430
  %33 = load i8*, i8** %32, align 8, !dbg !2430, !tbaa !441
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2430
  %35 = load i8*, i8** %34, align 8, !dbg !2430, !tbaa !441
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2430
  br label %147, !dbg !2431

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.87, i64 0, i64 0), i32 noundef 5) #32, !dbg !2432
  %39 = load i8*, i8** %4, align 8, !dbg !2432, !tbaa !441
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2432
  %41 = load i8*, i8** %40, align 8, !dbg !2432, !tbaa !441
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2432
  %43 = load i8*, i8** %42, align 8, !dbg !2432, !tbaa !441
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2432
  %45 = load i8*, i8** %44, align 8, !dbg !2432, !tbaa !441
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2432
  br label %147, !dbg !2433

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !2434
  %49 = load i8*, i8** %4, align 8, !dbg !2434, !tbaa !441
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2434
  %51 = load i8*, i8** %50, align 8, !dbg !2434, !tbaa !441
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2434
  %53 = load i8*, i8** %52, align 8, !dbg !2434, !tbaa !441
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2434
  %55 = load i8*, i8** %54, align 8, !dbg !2434, !tbaa !441
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2434
  %57 = load i8*, i8** %56, align 8, !dbg !2434, !tbaa !441
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2434
  br label %147, !dbg !2435

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.89, i64 0, i64 0), i32 noundef 5) #32, !dbg !2436
  %61 = load i8*, i8** %4, align 8, !dbg !2436, !tbaa !441
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2436
  %63 = load i8*, i8** %62, align 8, !dbg !2436, !tbaa !441
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2436
  %65 = load i8*, i8** %64, align 8, !dbg !2436, !tbaa !441
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2436
  %67 = load i8*, i8** %66, align 8, !dbg !2436, !tbaa !441
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2436
  %69 = load i8*, i8** %68, align 8, !dbg !2436, !tbaa !441
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2436
  %71 = load i8*, i8** %70, align 8, !dbg !2436, !tbaa !441
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2436
  br label %147, !dbg !2437

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.90, i64 0, i64 0), i32 noundef 5) #32, !dbg !2438
  %75 = load i8*, i8** %4, align 8, !dbg !2438, !tbaa !441
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2438
  %77 = load i8*, i8** %76, align 8, !dbg !2438, !tbaa !441
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2438
  %79 = load i8*, i8** %78, align 8, !dbg !2438, !tbaa !441
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2438
  %81 = load i8*, i8** %80, align 8, !dbg !2438, !tbaa !441
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2438
  %83 = load i8*, i8** %82, align 8, !dbg !2438, !tbaa !441
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2438
  %85 = load i8*, i8** %84, align 8, !dbg !2438, !tbaa !441
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2438
  %87 = load i8*, i8** %86, align 8, !dbg !2438, !tbaa !441
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2438
  br label %147, !dbg !2439

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2440
  %91 = load i8*, i8** %4, align 8, !dbg !2440, !tbaa !441
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2440
  %93 = load i8*, i8** %92, align 8, !dbg !2440, !tbaa !441
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2440
  %95 = load i8*, i8** %94, align 8, !dbg !2440, !tbaa !441
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2440
  %97 = load i8*, i8** %96, align 8, !dbg !2440, !tbaa !441
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2440
  %99 = load i8*, i8** %98, align 8, !dbg !2440, !tbaa !441
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2440
  %101 = load i8*, i8** %100, align 8, !dbg !2440, !tbaa !441
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2440
  %103 = load i8*, i8** %102, align 8, !dbg !2440, !tbaa !441
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2440
  %105 = load i8*, i8** %104, align 8, !dbg !2440, !tbaa !441
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2440
  br label %147, !dbg !2441

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.92, i64 0, i64 0), i32 noundef 5) #32, !dbg !2442
  %109 = load i8*, i8** %4, align 8, !dbg !2442, !tbaa !441
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2442
  %111 = load i8*, i8** %110, align 8, !dbg !2442, !tbaa !441
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2442
  %113 = load i8*, i8** %112, align 8, !dbg !2442, !tbaa !441
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2442
  %115 = load i8*, i8** %114, align 8, !dbg !2442, !tbaa !441
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2442
  %117 = load i8*, i8** %116, align 8, !dbg !2442, !tbaa !441
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2442
  %119 = load i8*, i8** %118, align 8, !dbg !2442, !tbaa !441
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2442
  %121 = load i8*, i8** %120, align 8, !dbg !2442, !tbaa !441
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2442
  %123 = load i8*, i8** %122, align 8, !dbg !2442, !tbaa !441
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2442
  %125 = load i8*, i8** %124, align 8, !dbg !2442, !tbaa !441
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2442
  br label %147, !dbg !2443

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.93, i64 0, i64 0), i32 noundef 5) #32, !dbg !2444
  %129 = load i8*, i8** %4, align 8, !dbg !2444, !tbaa !441
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2444
  %131 = load i8*, i8** %130, align 8, !dbg !2444, !tbaa !441
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2444
  %133 = load i8*, i8** %132, align 8, !dbg !2444, !tbaa !441
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2444
  %135 = load i8*, i8** %134, align 8, !dbg !2444, !tbaa !441
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2444
  %137 = load i8*, i8** %136, align 8, !dbg !2444, !tbaa !441
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2444
  %139 = load i8*, i8** %138, align 8, !dbg !2444, !tbaa !441
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2444
  %141 = load i8*, i8** %140, align 8, !dbg !2444, !tbaa !441
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2444
  %143 = load i8*, i8** %142, align 8, !dbg !2444, !tbaa !441
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2444
  %145 = load i8*, i8** %144, align 8, !dbg !2444, !tbaa !441
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2444
  br label %147, !dbg !2445

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2446
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2447 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2451, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* %1, metadata !2452, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* %2, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* %3, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8** %4, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 0, metadata !2456, metadata !DIExpression()), !dbg !2457
  br label %6, !dbg !2458

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2460
  call void @llvm.dbg.value(metadata i64 %7, metadata !2456, metadata !DIExpression()), !dbg !2457
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2461
  %9 = load i8*, i8** %8, align 8, !dbg !2461, !tbaa !441
  %10 = icmp eq i8* %9, null, !dbg !2463
  %11 = add i64 %7, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %11, metadata !2456, metadata !DIExpression()), !dbg !2457
  br i1 %10, label %12, label %6, !dbg !2463, !llvm.loop !2465

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2467
  ret void, !dbg !2468
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2469 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2484, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %1, metadata !2485, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %2, metadata !2486, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %3, metadata !2487, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2488, metadata !DIExpression()), !dbg !2493
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2494
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2494
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2490, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 0, metadata !2489, metadata !DIExpression()), !dbg !2492
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2489, metadata !DIExpression()), !dbg !2492
  %11 = load i32, i32* %8, align 8, !dbg !2496
  %12 = icmp sgt i32 %11, -1, !dbg !2496
  br i1 %12, label %20, label %13, !dbg !2496

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2496
  store i32 %14, i32* %8, align 8, !dbg !2496
  %15 = icmp ult i32 %11, -7, !dbg !2496
  br i1 %15, label %16, label %20, !dbg !2496

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2496
  %18 = sext i32 %11 to i64, !dbg !2496
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2496
  br label %24, !dbg !2496

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2496
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2496
  store i8* %23, i8** %10, align 8, !dbg !2496
  br label %24, !dbg !2496

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2496
  %28 = load i8*, i8** %27, align 8, !dbg !2496
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2499
  store i8* %28, i8** %29, align 8, !dbg !2500, !tbaa !441
  %30 = icmp eq i8* %28, null, !dbg !2501
  br i1 %30, label %210, label %31, !dbg !2502

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 1, metadata !2489, metadata !DIExpression()), !dbg !2492
  %32 = icmp sgt i32 %25, -1, !dbg !2496
  br i1 %32, label %40, label %33, !dbg !2496

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2496
  store i32 %34, i32* %8, align 8, !dbg !2496
  %35 = icmp ult i32 %25, -7, !dbg !2496
  br i1 %35, label %36, label %40, !dbg !2496

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2496
  %38 = sext i32 %25 to i64, !dbg !2496
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2496
  br label %44, !dbg !2496

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2496
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2496
  store i8* %43, i8** %10, align 8, !dbg !2496
  br label %44, !dbg !2496

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2496
  %48 = load i8*, i8** %47, align 8, !dbg !2496
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2499
  store i8* %48, i8** %49, align 8, !dbg !2500, !tbaa !441
  %50 = icmp eq i8* %48, null, !dbg !2501
  br i1 %50, label %210, label %51, !dbg !2502

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 2, metadata !2489, metadata !DIExpression()), !dbg !2492
  %52 = icmp sgt i32 %45, -1, !dbg !2496
  br i1 %52, label %60, label %53, !dbg !2496

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2496
  store i32 %54, i32* %8, align 8, !dbg !2496
  %55 = icmp ult i32 %45, -7, !dbg !2496
  br i1 %55, label %56, label %60, !dbg !2496

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2496
  %58 = sext i32 %45 to i64, !dbg !2496
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2496
  br label %64, !dbg !2496

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2496
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2496
  store i8* %63, i8** %10, align 8, !dbg !2496
  br label %64, !dbg !2496

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2496
  %68 = load i8*, i8** %67, align 8, !dbg !2496
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2499
  store i8* %68, i8** %69, align 8, !dbg !2500, !tbaa !441
  %70 = icmp eq i8* %68, null, !dbg !2501
  br i1 %70, label %210, label %71, !dbg !2502

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 3, metadata !2489, metadata !DIExpression()), !dbg !2492
  %72 = icmp sgt i32 %65, -1, !dbg !2496
  br i1 %72, label %80, label %73, !dbg !2496

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2496
  store i32 %74, i32* %8, align 8, !dbg !2496
  %75 = icmp ult i32 %65, -7, !dbg !2496
  br i1 %75, label %76, label %80, !dbg !2496

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2496
  %78 = sext i32 %65 to i64, !dbg !2496
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2496
  br label %84, !dbg !2496

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2496
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2496
  store i8* %83, i8** %10, align 8, !dbg !2496
  br label %84, !dbg !2496

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2496
  %88 = load i8*, i8** %87, align 8, !dbg !2496
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2499
  store i8* %88, i8** %89, align 8, !dbg !2500, !tbaa !441
  %90 = icmp eq i8* %88, null, !dbg !2501
  br i1 %90, label %210, label %91, !dbg !2502

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 4, metadata !2489, metadata !DIExpression()), !dbg !2492
  %92 = icmp sgt i32 %85, -1, !dbg !2496
  br i1 %92, label %100, label %93, !dbg !2496

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2496
  store i32 %94, i32* %8, align 8, !dbg !2496
  %95 = icmp ult i32 %85, -7, !dbg !2496
  br i1 %95, label %96, label %100, !dbg !2496

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2496
  %98 = sext i32 %85 to i64, !dbg !2496
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2496
  br label %104, !dbg !2496

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2496
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2496
  store i8* %103, i8** %10, align 8, !dbg !2496
  br label %104, !dbg !2496

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2496
  %108 = load i8*, i8** %107, align 8, !dbg !2496
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2499
  store i8* %108, i8** %109, align 8, !dbg !2500, !tbaa !441
  %110 = icmp eq i8* %108, null, !dbg !2501
  br i1 %110, label %210, label %111, !dbg !2502

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 5, metadata !2489, metadata !DIExpression()), !dbg !2492
  %112 = icmp sgt i32 %105, -1, !dbg !2496
  br i1 %112, label %120, label %113, !dbg !2496

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2496
  store i32 %114, i32* %8, align 8, !dbg !2496
  %115 = icmp ult i32 %105, -7, !dbg !2496
  br i1 %115, label %116, label %120, !dbg !2496

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2496
  %118 = sext i32 %105 to i64, !dbg !2496
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2496
  br label %124, !dbg !2496

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2496
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2496
  store i8* %123, i8** %10, align 8, !dbg !2496
  br label %124, !dbg !2496

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2496
  %128 = load i8*, i8** %127, align 8, !dbg !2496
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2499
  store i8* %128, i8** %129, align 8, !dbg !2500, !tbaa !441
  %130 = icmp eq i8* %128, null, !dbg !2501
  br i1 %130, label %210, label %131, !dbg !2502

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 6, metadata !2489, metadata !DIExpression()), !dbg !2492
  %132 = icmp sgt i32 %125, -1, !dbg !2496
  br i1 %132, label %140, label %133, !dbg !2496

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2496
  store i32 %134, i32* %8, align 8, !dbg !2496
  %135 = icmp ult i32 %125, -7, !dbg !2496
  br i1 %135, label %136, label %140, !dbg !2496

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2496
  %138 = sext i32 %125 to i64, !dbg !2496
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2496
  br label %144, !dbg !2496

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2496
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2496
  store i8* %143, i8** %10, align 8, !dbg !2496
  br label %144, !dbg !2496

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2496
  %148 = load i8*, i8** %147, align 8, !dbg !2496
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2499
  store i8* %148, i8** %149, align 8, !dbg !2500, !tbaa !441
  %150 = icmp eq i8* %148, null, !dbg !2501
  br i1 %150, label %210, label %151, !dbg !2502

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 7, metadata !2489, metadata !DIExpression()), !dbg !2492
  %152 = icmp sgt i32 %145, -1, !dbg !2496
  br i1 %152, label %160, label %153, !dbg !2496

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2496
  store i32 %154, i32* %8, align 8, !dbg !2496
  %155 = icmp ult i32 %145, -7, !dbg !2496
  br i1 %155, label %156, label %160, !dbg !2496

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2496
  %158 = sext i32 %145 to i64, !dbg !2496
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2496
  br label %164, !dbg !2496

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2496
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2496
  store i8* %163, i8** %10, align 8, !dbg !2496
  br label %164, !dbg !2496

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2496
  %168 = load i8*, i8** %167, align 8, !dbg !2496
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2499
  store i8* %168, i8** %169, align 8, !dbg !2500, !tbaa !441
  %170 = icmp eq i8* %168, null, !dbg !2501
  br i1 %170, label %210, label %171, !dbg !2502

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 8, metadata !2489, metadata !DIExpression()), !dbg !2492
  %172 = icmp sgt i32 %165, -1, !dbg !2496
  br i1 %172, label %180, label %173, !dbg !2496

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2496
  store i32 %174, i32* %8, align 8, !dbg !2496
  %175 = icmp ult i32 %165, -7, !dbg !2496
  br i1 %175, label %176, label %180, !dbg !2496

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2496
  %178 = sext i32 %165 to i64, !dbg !2496
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2496
  br label %184, !dbg !2496

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2496
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2496
  store i8* %183, i8** %10, align 8, !dbg !2496
  br label %184, !dbg !2496

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2496
  %188 = load i8*, i8** %187, align 8, !dbg !2496
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2499
  store i8* %188, i8** %189, align 8, !dbg !2500, !tbaa !441
  %190 = icmp eq i8* %188, null, !dbg !2501
  br i1 %190, label %210, label %191, !dbg !2502

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 9, metadata !2489, metadata !DIExpression()), !dbg !2492
  %192 = icmp sgt i32 %185, -1, !dbg !2496
  br i1 %192, label %200, label %193, !dbg !2496

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2496
  store i32 %194, i32* %8, align 8, !dbg !2496
  %195 = icmp ult i32 %185, -7, !dbg !2496
  br i1 %195, label %196, label %200, !dbg !2496

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2496
  %198 = sext i32 %185 to i64, !dbg !2496
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2496
  br label %203, !dbg !2496

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2496
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2496
  store i8* %202, i8** %10, align 8, !dbg !2496
  br label %203, !dbg !2496

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2496
  %206 = load i8*, i8** %205, align 8, !dbg !2496
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2499
  store i8* %206, i8** %207, align 8, !dbg !2500, !tbaa !441
  %208 = icmp eq i8* %206, null, !dbg !2501
  %209 = select i1 %208, i64 9, i64 10, !dbg !2502
  br label %210, !dbg !2502

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2503
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2504
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2505
  ret void, !dbg !2505
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2506 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2510, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8* %1, metadata !2511, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8* %2, metadata !2512, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8* %3, metadata !2513, metadata !DIExpression()), !dbg !2515
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2516
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2516
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2514, metadata !DIExpression()), !dbg !2517
  call void @llvm.va_start(i8* nonnull %7), !dbg !2518
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2519
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2519
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2519, !tbaa.struct !800
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2519
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2519
  call void @llvm.va_end(i8* nonnull %7), !dbg !2520
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2521
  ret void, !dbg !2521
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2522 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2523, !tbaa !441
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.81, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2523
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.98, i64 0, i64 0), i32 noundef 5) #32, !dbg !2524
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.99, i64 0, i64 0)) #32, !dbg !2524
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.100, i64 0, i64 0), i32 noundef 5) #32, !dbg !2525
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.102, i64 0, i64 0)) #32, !dbg !2525
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !2526
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2526
  ret void, !dbg !2527
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2528 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2533, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %1, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %2, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()) #32, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %1, metadata !2540, metadata !DIExpression()) #32, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %2, metadata !2541, metadata !DIExpression()) #32, !dbg !2542
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2544
  call void @llvm.dbg.value(metadata i8* %4, metadata !2545, metadata !DIExpression()) #32, !dbg !2550
  %5 = icmp eq i8* %4, null, !dbg !2552
  br i1 %5, label %6, label %7, !dbg !2554

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2555
  unreachable, !dbg !2555

7:                                                ; preds = %3
  ret i8* %4, !dbg !2556
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2538 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 %1, metadata !2540, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 %2, metadata !2541, metadata !DIExpression()), !dbg !2557
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2558
  call void @llvm.dbg.value(metadata i8* %4, metadata !2545, metadata !DIExpression()) #32, !dbg !2559
  %5 = icmp eq i8* %4, null, !dbg !2561
  br i1 %5, label %6, label %7, !dbg !2562

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2563
  unreachable, !dbg !2563

7:                                                ; preds = %3
  ret i8* %4, !dbg !2564
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2565 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2569, metadata !DIExpression()), !dbg !2570
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2571
  call void @llvm.dbg.value(metadata i8* %2, metadata !2545, metadata !DIExpression()) #32, !dbg !2572
  %3 = icmp eq i8* %2, null, !dbg !2574
  br i1 %3, label %4, label %5, !dbg !2575

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2576
  unreachable, !dbg !2576

5:                                                ; preds = %1
  ret i8* %2, !dbg !2577
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2578 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2582, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i64 %0, metadata !2584, metadata !DIExpression()) #32, !dbg !2588
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %2, metadata !2545, metadata !DIExpression()) #32, !dbg !2591
  %3 = icmp eq i8* %2, null, !dbg !2593
  br i1 %3, label %4, label %5, !dbg !2594

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2595
  unreachable, !dbg !2595

5:                                                ; preds = %1
  ret i8* %2, !dbg !2596
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2597 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2601, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i64 %0, metadata !2569, metadata !DIExpression()) #32, !dbg !2603
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %2, metadata !2545, metadata !DIExpression()) #32, !dbg !2606
  %3 = icmp eq i8* %2, null, !dbg !2608
  br i1 %3, label %4, label %5, !dbg !2609

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2610
  unreachable, !dbg !2610

5:                                                ; preds = %1
  ret i8* %2, !dbg !2611
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2612 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2616, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %1, metadata !2617, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %0, metadata !2619, metadata !DIExpression()) #32, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %1, metadata !2623, metadata !DIExpression()) #32, !dbg !2624
  %3 = icmp eq i64 %1, 0, !dbg !2626
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2626
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2627
  call void @llvm.dbg.value(metadata i8* %5, metadata !2545, metadata !DIExpression()) #32, !dbg !2628
  %6 = icmp eq i8* %5, null, !dbg !2630
  br i1 %6, label %7, label %8, !dbg !2631

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2632
  unreachable, !dbg !2632

8:                                                ; preds = %2
  ret i8* %5, !dbg !2633
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2634 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2638, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %1, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()) #32, !dbg !2645
  call void @llvm.dbg.value(metadata i64 %1, metadata !2644, metadata !DIExpression()) #32, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %0, metadata !2619, metadata !DIExpression()) #32, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %1, metadata !2623, metadata !DIExpression()) #32, !dbg !2647
  %3 = icmp eq i64 %1, 0, !dbg !2649
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2649
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2650
  call void @llvm.dbg.value(metadata i8* %5, metadata !2545, metadata !DIExpression()) #32, !dbg !2651
  %6 = icmp eq i8* %5, null, !dbg !2653
  br i1 %6, label %7, label %8, !dbg !2654

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2655
  unreachable, !dbg !2655

8:                                                ; preds = %2
  ret i8* %5, !dbg !2656
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2657 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2661, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %1, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %2, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %0, metadata !2665, metadata !DIExpression()) #32, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %1, metadata !2668, metadata !DIExpression()) #32, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %2, metadata !2669, metadata !DIExpression()) #32, !dbg !2670
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %4, metadata !2545, metadata !DIExpression()) #32, !dbg !2673
  %5 = icmp eq i8* %4, null, !dbg !2675
  br i1 %5, label %6, label %7, !dbg !2676

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2677
  unreachable, !dbg !2677

7:                                                ; preds = %3
  ret i8* %4, !dbg !2678
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2679 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i64 %1, metadata !2684, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* null, metadata !2537, metadata !DIExpression()) #32, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %0, metadata !2540, metadata !DIExpression()) #32, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %1, metadata !2541, metadata !DIExpression()) #32, !dbg !2686
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %3, metadata !2545, metadata !DIExpression()) #32, !dbg !2689
  %4 = icmp eq i8* %3, null, !dbg !2691
  br i1 %4, label %5, label %6, !dbg !2692

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2693
  unreachable, !dbg !2693

6:                                                ; preds = %2
  ret i8* %3, !dbg !2694
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2695 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %1, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* null, metadata !2661, metadata !DIExpression()) #32, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %0, metadata !2662, metadata !DIExpression()) #32, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %1, metadata !2663, metadata !DIExpression()) #32, !dbg !2702
  call void @llvm.dbg.value(metadata i8* null, metadata !2665, metadata !DIExpression()) #32, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %0, metadata !2668, metadata !DIExpression()) #32, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %1, metadata !2669, metadata !DIExpression()) #32, !dbg !2704
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2706
  call void @llvm.dbg.value(metadata i8* %3, metadata !2545, metadata !DIExpression()) #32, !dbg !2707
  %4 = icmp eq i8* %3, null, !dbg !2709
  br i1 %4, label %5, label %6, !dbg !2710

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2711
  unreachable, !dbg !2711

6:                                                ; preds = %2
  ret i8* %3, !dbg !2712
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2713 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2717, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64* %1, metadata !2718, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %0, metadata !374, metadata !DIExpression()) #32, !dbg !2720
  call void @llvm.dbg.value(metadata i64* %1, metadata !375, metadata !DIExpression()) #32, !dbg !2720
  call void @llvm.dbg.value(metadata i64 1, metadata !376, metadata !DIExpression()) #32, !dbg !2720
  %3 = load i64, i64* %1, align 8, !dbg !2722, !tbaa !1818
  call void @llvm.dbg.value(metadata i64 %3, metadata !377, metadata !DIExpression()) #32, !dbg !2720
  %4 = icmp eq i8* %0, null, !dbg !2723
  br i1 %4, label %5, label %8, !dbg !2725

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2726
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2729
  br label %15, !dbg !2729

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2730
  %10 = add nuw i64 %9, 1, !dbg !2730
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2730
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2730
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %13, metadata !377, metadata !DIExpression()) #32, !dbg !2720
  br i1 %12, label %14, label %15, !dbg !2733

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !2734
  unreachable, !dbg !2734

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2720
  call void @llvm.dbg.value(metadata i64 %16, metadata !377, metadata !DIExpression()) #32, !dbg !2720
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()) #32, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %16, metadata !2540, metadata !DIExpression()) #32, !dbg !2735
  call void @llvm.dbg.value(metadata i64 1, metadata !2541, metadata !DIExpression()) #32, !dbg !2735
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2737
  call void @llvm.dbg.value(metadata i8* %17, metadata !2545, metadata !DIExpression()) #32, !dbg !2738
  %18 = icmp eq i8* %17, null, !dbg !2740
  br i1 %18, label %19, label %20, !dbg !2741

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !2742
  unreachable, !dbg !2742

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !374, metadata !DIExpression()) #32, !dbg !2720
  store i64 %16, i64* %1, align 8, !dbg !2743, !tbaa !1818
  ret i8* %17, !dbg !2744
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !369 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !374, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64* %1, metadata !375, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %2, metadata !376, metadata !DIExpression()), !dbg !2745
  %4 = load i64, i64* %1, align 8, !dbg !2746, !tbaa !1818
  call void @llvm.dbg.value(metadata i64 %4, metadata !377, metadata !DIExpression()), !dbg !2745
  %5 = icmp eq i8* %0, null, !dbg !2747
  br i1 %5, label %6, label %13, !dbg !2748

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2749
  br i1 %7, label %8, label %20, !dbg !2750

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %9, metadata !377, metadata !DIExpression()), !dbg !2745
  %10 = icmp ugt i64 %2, 128, !dbg !2753
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %12, metadata !377, metadata !DIExpression()), !dbg !2745
  br label %20, !dbg !2755

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2756
  %15 = add nuw i64 %14, 1, !dbg !2756
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2756
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2756
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2756
  call void @llvm.dbg.value(metadata i64 %18, metadata !377, metadata !DIExpression()), !dbg !2745
  br i1 %17, label %19, label %20, !dbg !2757

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !2758
  unreachable, !dbg !2758

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2745
  call void @llvm.dbg.value(metadata i64 %21, metadata !377, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()) #32, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %21, metadata !2540, metadata !DIExpression()) #32, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %2, metadata !2541, metadata !DIExpression()) #32, !dbg !2759
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %22, metadata !2545, metadata !DIExpression()) #32, !dbg !2762
  %23 = icmp eq i8* %22, null, !dbg !2764
  br i1 %23, label %24, label %25, !dbg !2765

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !2766
  unreachable, !dbg !2766

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !374, metadata !DIExpression()), !dbg !2745
  store i64 %21, i64* %1, align 8, !dbg !2767, !tbaa !1818
  ret i8* %22, !dbg !2768
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !381 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !389, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64* %1, metadata !390, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %2, metadata !391, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %3, metadata !392, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %4, metadata !393, metadata !DIExpression()), !dbg !2769
  %6 = load i64, i64* %1, align 8, !dbg !2770, !tbaa !1818
  call void @llvm.dbg.value(metadata i64 %6, metadata !394, metadata !DIExpression()), !dbg !2769
  %7 = ashr i64 %6, 1, !dbg !2771
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2771
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2771
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %10, metadata !395, metadata !DIExpression()), !dbg !2769
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %11, metadata !395, metadata !DIExpression()), !dbg !2769
  %12 = icmp sgt i64 %3, -1, !dbg !2774
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2776
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %15, metadata !395, metadata !DIExpression()), !dbg !2769
  %16 = icmp slt i64 %4, 0, !dbg !2777
  br i1 %16, label %17, label %30, !dbg !2777

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2777
  br i1 %18, label %19, label %24, !dbg !2777

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2777
  %21 = udiv i64 9223372036854775807, %20, !dbg !2777
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2777
  br i1 %23, label %46, label %43, !dbg !2777

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2777
  br i1 %25, label %43, label %26, !dbg !2777

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2777
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2777
  %29 = icmp ult i64 %28, %15, !dbg !2777
  br i1 %29, label %46, label %43, !dbg !2777

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2777
  br i1 %31, label %43, label %32, !dbg !2777

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2777
  br i1 %33, label %34, label %40, !dbg !2777

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2777
  br i1 %35, label %43, label %36, !dbg !2777

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2777
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2777
  %39 = icmp ult i64 %38, %4, !dbg !2777
  br i1 %39, label %46, label %43, !dbg !2777

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2777
  %42 = icmp ult i64 %41, %15, !dbg !2777
  br i1 %42, label %46, label %43, !dbg !2777

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !396, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2769
  %44 = mul i64 %15, %4, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %44, metadata !396, metadata !DIExpression()), !dbg !2769
  %45 = icmp slt i64 %44, 128, !dbg !2777
  br i1 %45, label %46, label %52, !dbg !2777

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !397, metadata !DIExpression()), !dbg !2769
  %48 = sdiv i64 %47, %4, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %48, metadata !395, metadata !DIExpression()), !dbg !2769
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %51, metadata !396, metadata !DIExpression()), !dbg !2769
  br label %52, !dbg !2782

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2769
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2769
  call void @llvm.dbg.value(metadata i64 %54, metadata !396, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %53, metadata !395, metadata !DIExpression()), !dbg !2769
  %55 = icmp eq i8* %0, null, !dbg !2783
  br i1 %55, label %56, label %57, !dbg !2785

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2786, !tbaa !1818
  br label %57, !dbg !2787

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2788
  %59 = icmp slt i64 %58, %2, !dbg !2790
  br i1 %59, label %60, label %97, !dbg !2791

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2792
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2792
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %63, metadata !395, metadata !DIExpression()), !dbg !2769
  br i1 %62, label %96, label %64, !dbg !2793

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2794
  br i1 %66, label %96, label %67, !dbg !2794

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2795

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2795
  br i1 %69, label %70, label %75, !dbg !2795

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2795
  %72 = udiv i64 9223372036854775807, %71, !dbg !2795
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2795
  br i1 %74, label %96, label %94, !dbg !2795

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2795
  br i1 %76, label %94, label %77, !dbg !2795

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2795
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2795
  %80 = icmp ult i64 %79, %63, !dbg !2795
  br i1 %80, label %96, label %94, !dbg !2795

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2795
  br i1 %82, label %94, label %83, !dbg !2795

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2795
  br i1 %84, label %85, label %91, !dbg !2795

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2795
  br i1 %86, label %94, label %87, !dbg !2795

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2795
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2795
  %90 = icmp ult i64 %89, %4, !dbg !2795
  br i1 %90, label %96, label %94, !dbg !2795

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2795
  %93 = icmp ult i64 %92, %63, !dbg !2795
  br i1 %93, label %96, label %94, !dbg !2795

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !396, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2769
  %95 = mul i64 %63, %4, !dbg !2795
  call void @llvm.dbg.value(metadata i64 %95, metadata !396, metadata !DIExpression()), !dbg !2769
  br label %97, !dbg !2796

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !2797
  unreachable, !dbg !2797

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2769
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2769
  call void @llvm.dbg.value(metadata i64 %99, metadata !396, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %98, metadata !395, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %0, metadata !2616, metadata !DIExpression()) #32, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %99, metadata !2617, metadata !DIExpression()) #32, !dbg !2798
  call void @llvm.dbg.value(metadata i8* %0, metadata !2619, metadata !DIExpression()) #32, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %99, metadata !2623, metadata !DIExpression()) #32, !dbg !2800
  %100 = icmp eq i64 %99, 0, !dbg !2802
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2802
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %102, metadata !2545, metadata !DIExpression()) #32, !dbg !2804
  %103 = icmp eq i8* %102, null, !dbg !2806
  br i1 %103, label %104, label %105, !dbg !2807

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !2808
  unreachable, !dbg !2808

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !389, metadata !DIExpression()), !dbg !2769
  store i64 %98, i64* %1, align 8, !dbg !2809, !tbaa !1818
  ret i8* %102, !dbg !2810
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2811 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2813, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %0, metadata !2815, metadata !DIExpression()) #32, !dbg !2819
  call void @llvm.dbg.value(metadata i64 1, metadata !2818, metadata !DIExpression()) #32, !dbg !2819
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2821
  call void @llvm.dbg.value(metadata i8* %2, metadata !2545, metadata !DIExpression()) #32, !dbg !2822
  %3 = icmp eq i8* %2, null, !dbg !2824
  br i1 %3, label %4, label %5, !dbg !2825

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2826
  unreachable, !dbg !2826

5:                                                ; preds = %1
  ret i8* %2, !dbg !2827
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2816 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2815, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 %1, metadata !2818, metadata !DIExpression()), !dbg !2828
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %3, metadata !2545, metadata !DIExpression()) #32, !dbg !2830
  %4 = icmp eq i8* %3, null, !dbg !2832
  br i1 %4, label %5, label %6, !dbg !2833

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2834
  unreachable, !dbg !2834

6:                                                ; preds = %2
  ret i8* %3, !dbg !2835
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2836 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2838, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %0, metadata !2840, metadata !DIExpression()) #32, !dbg !2844
  call void @llvm.dbg.value(metadata i64 1, metadata !2843, metadata !DIExpression()) #32, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %0, metadata !2846, metadata !DIExpression()) #32, !dbg !2850
  call void @llvm.dbg.value(metadata i64 1, metadata !2849, metadata !DIExpression()) #32, !dbg !2850
  call void @llvm.dbg.value(metadata i64 %0, metadata !2846, metadata !DIExpression()) #32, !dbg !2850
  call void @llvm.dbg.value(metadata i64 1, metadata !2849, metadata !DIExpression()) #32, !dbg !2850
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %2, metadata !2545, metadata !DIExpression()) #32, !dbg !2853
  %3 = icmp eq i8* %2, null, !dbg !2855
  br i1 %3, label %4, label %5, !dbg !2856

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2857
  unreachable, !dbg !2857

5:                                                ; preds = %1
  ret i8* %2, !dbg !2858
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2841 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2840, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i64 %1, metadata !2843, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i64 %0, metadata !2846, metadata !DIExpression()) #32, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %1, metadata !2849, metadata !DIExpression()) #32, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %0, metadata !2846, metadata !DIExpression()) #32, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %1, metadata !2849, metadata !DIExpression()) #32, !dbg !2860
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %3, metadata !2545, metadata !DIExpression()) #32, !dbg !2863
  %4 = icmp eq i8* %3, null, !dbg !2865
  br i1 %4, label %5, label %6, !dbg !2866

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2867
  unreachable, !dbg !2867

6:                                                ; preds = %2
  ret i8* %3, !dbg !2868
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2869 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2569, metadata !DIExpression()) #32, !dbg !2876
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %3, metadata !2545, metadata !DIExpression()) #32, !dbg !2879
  %4 = icmp eq i8* %3, null, !dbg !2881
  br i1 %4, label %5, label %6, !dbg !2882

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2883
  unreachable, !dbg !2883

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2884, metadata !DIExpression()) #32, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %0, metadata !2890, metadata !DIExpression()) #32, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %1, metadata !2891, metadata !DIExpression()) #32, !dbg !2892
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2894
  ret i8* %3, !dbg !2895
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2896 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %1, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %1, metadata !2582, metadata !DIExpression()) #32, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %1, metadata !2584, metadata !DIExpression()) #32, !dbg !2905
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %3, metadata !2545, metadata !DIExpression()) #32, !dbg !2908
  %4 = icmp eq i8* %3, null, !dbg !2910
  br i1 %4, label %5, label %6, !dbg !2911

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2912
  unreachable, !dbg !2912

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2884, metadata !DIExpression()) #32, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %0, metadata !2890, metadata !DIExpression()) #32, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %1, metadata !2891, metadata !DIExpression()) #32, !dbg !2913
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2915
  ret i8* %3, !dbg !2916
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2917 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2921, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64 %1, metadata !2922, metadata !DIExpression()), !dbg !2924
  %3 = add nsw i64 %1, 1, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %3, metadata !2582, metadata !DIExpression()) #32, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %3, metadata !2584, metadata !DIExpression()) #32, !dbg !2928
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2930
  call void @llvm.dbg.value(metadata i8* %4, metadata !2545, metadata !DIExpression()) #32, !dbg !2931
  %5 = icmp eq i8* %4, null, !dbg !2933
  br i1 %5, label %6, label %7, !dbg !2934

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2935
  unreachable, !dbg !2935

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !2923, metadata !DIExpression()), !dbg !2924
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2936
  store i8 0, i8* %8, align 1, !dbg !2937, !tbaa !537
  call void @llvm.dbg.value(metadata i8* %4, metadata !2884, metadata !DIExpression()) #32, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %0, metadata !2890, metadata !DIExpression()) #32, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %1, metadata !2891, metadata !DIExpression()) #32, !dbg !2938
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2940
  ret i8* %4, !dbg !2941
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2942 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()), !dbg !2945
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !2946
  %3 = add i64 %2, 1, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()) #32, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %3, metadata !2874, metadata !DIExpression()) #32, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %3, metadata !2569, metadata !DIExpression()) #32, !dbg !2950
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2952
  call void @llvm.dbg.value(metadata i8* %4, metadata !2545, metadata !DIExpression()) #32, !dbg !2953
  %5 = icmp eq i8* %4, null, !dbg !2955
  br i1 %5, label %6, label %7, !dbg !2956

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2957
  unreachable, !dbg !2957

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2884, metadata !DIExpression()) #32, !dbg !2958
  call void @llvm.dbg.value(metadata i8* %0, metadata !2890, metadata !DIExpression()) #32, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %3, metadata !2891, metadata !DIExpression()) #32, !dbg !2958
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !2960
  ret i8* %4, !dbg !2961
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2962 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2967, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %1, metadata !2964, metadata !DIExpression()), !dbg !2968
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.114, i64 0, i64 0), i32 noundef 5) #32, !dbg !2967
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0), i8* noundef %2) #32, !dbg !2967
  %3 = icmp eq i32 %1, 0, !dbg !2967
  tail call void @llvm.assume(i1 %3), !dbg !2967
  tail call void @abort() #34, !dbg !2969
  unreachable, !dbg !2969
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !2970 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3008, metadata !DIExpression()), !dbg !3013
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3014
  call void @llvm.dbg.value(metadata i1 undef, metadata !3009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3013
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3015, metadata !DIExpression()), !dbg !3018
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3020
  %4 = load i32, i32* %3, align 8, !dbg !3020, !tbaa !3021
  %5 = and i32 %4, 32, !dbg !3022
  %6 = icmp eq i32 %5, 0, !dbg !3022
  call void @llvm.dbg.value(metadata i1 %6, metadata !3011, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3013
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3023
  %8 = icmp eq i32 %7, 0, !dbg !3024
  call void @llvm.dbg.value(metadata i1 %8, metadata !3012, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3013
  br i1 %6, label %9, label %19, !dbg !3025

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3027
  call void @llvm.dbg.value(metadata i1 %10, metadata !3009, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3013
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3028
  %12 = xor i1 %8, true, !dbg !3028
  %13 = sext i1 %12 to i32, !dbg !3028
  br i1 %11, label %22, label %14, !dbg !3028

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3029
  %16 = load i32, i32* %15, align 4, !dbg !3029, !tbaa !528
  %17 = icmp ne i32 %16, 9, !dbg !3030
  %18 = sext i1 %17 to i32, !dbg !3031
  br label %22, !dbg !3031

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3032

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3034
  store i32 0, i32* %21, align 4, !dbg !3036, !tbaa !528
  br label %22, !dbg !3034

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3013
  ret i32 %23, !dbg !3037
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3038 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3076, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 0, metadata !3077, metadata !DIExpression()), !dbg !3080
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3081
  call void @llvm.dbg.value(metadata i32 %2, metadata !3078, metadata !DIExpression()), !dbg !3080
  %3 = icmp slt i32 %2, 0, !dbg !3082
  br i1 %3, label %4, label %6, !dbg !3084

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3085
  br label %24, !dbg !3086

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3087
  %8 = icmp eq i32 %7, 0, !dbg !3087
  br i1 %8, label %13, label %9, !dbg !3089

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3090
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3091
  %12 = icmp eq i64 %11, -1, !dbg !3092
  br i1 %12, label %16, label %13, !dbg !3093

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3094
  %15 = icmp eq i32 %14, 0, !dbg !3094
  br i1 %15, label %16, label %18, !dbg !3095

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3077, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 0, metadata !3079, metadata !DIExpression()), !dbg !3080
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3096
  call void @llvm.dbg.value(metadata i32 %21, metadata !3079, metadata !DIExpression()), !dbg !3080
  br label %24, !dbg !3097

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3098
  %20 = load i32, i32* %19, align 4, !dbg !3098, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %20, metadata !3077, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 0, metadata !3079, metadata !DIExpression()), !dbg !3080
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3096
  call void @llvm.dbg.value(metadata i32 %21, metadata !3079, metadata !DIExpression()), !dbg !3080
  %22 = icmp eq i32 %20, 0, !dbg !3099
  br i1 %22, label %24, label %23, !dbg !3097

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3101, !tbaa !528
  call void @llvm.dbg.value(metadata i32 -1, metadata !3079, metadata !DIExpression()), !dbg !3080
  br label %24, !dbg !3103

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3080
  ret i32 %25, !dbg !3104
}

; Function Attrs: nofree nounwind
declare !dbg !3105 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3106 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3107 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3110 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3148, metadata !DIExpression()), !dbg !3149
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3150
  br i1 %2, label %6, label %3, !dbg !3152

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3153
  %5 = icmp eq i32 %4, 0, !dbg !3153
  br i1 %5, label %6, label %8, !dbg !3154

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3155
  br label %17, !dbg !3156

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3157, metadata !DIExpression()) #32, !dbg !3162
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3164
  %10 = load i32, i32* %9, align 8, !dbg !3164, !tbaa !3021
  %11 = and i32 %10, 256, !dbg !3166
  %12 = icmp eq i32 %11, 0, !dbg !3166
  br i1 %12, label %15, label %13, !dbg !3167

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3168
  br label %15, !dbg !3168

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3169
  br label %17, !dbg !3170

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3149
  ret i32 %18, !dbg !3171
}

; Function Attrs: nofree nounwind
declare !dbg !3172 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3173 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3212, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %1, metadata !3213, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %2, metadata !3214, metadata !DIExpression()), !dbg !3218
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3219
  %5 = load i8*, i8** %4, align 8, !dbg !3219, !tbaa !3220
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3221
  %7 = load i8*, i8** %6, align 8, !dbg !3221, !tbaa !3222
  %8 = icmp eq i8* %5, %7, !dbg !3223
  br i1 %8, label %9, label %28, !dbg !3224

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3225
  %11 = load i8*, i8** %10, align 8, !dbg !3225, !tbaa !913
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3226
  %13 = load i8*, i8** %12, align 8, !dbg !3226, !tbaa !3227
  %14 = icmp eq i8* %11, %13, !dbg !3228
  br i1 %14, label %15, label %28, !dbg !3229

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3230
  %17 = load i8*, i8** %16, align 8, !dbg !3230, !tbaa !3231
  %18 = icmp eq i8* %17, null, !dbg !3232
  br i1 %18, label %19, label %28, !dbg !3233

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3234
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %21, metadata !3215, metadata !DIExpression()), !dbg !3236
  %22 = icmp eq i64 %21, -1, !dbg !3237
  br i1 %22, label %30, label %23, !dbg !3239

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3240
  %25 = load i32, i32* %24, align 8, !dbg !3241, !tbaa !3021
  %26 = and i32 %25, -17, !dbg !3241
  store i32 %26, i32* %24, align 8, !dbg !3241, !tbaa !3021
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3242
  store i64 %21, i64* %27, align 8, !dbg !3243, !tbaa !3244
  br label %30, !dbg !3245

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3246
  br label %30, !dbg !3247

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3218
  ret i32 %31, !dbg !3248
}

; Function Attrs: nofree nounwind
declare !dbg !3249 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3252 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3257, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8* %1, metadata !3258, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %2, metadata !3259, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3260, metadata !DIExpression()), !dbg !3262
  %5 = icmp eq i8* %1, null, !dbg !3263
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3265
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.126, i64 0, i64 0), i8* %1, !dbg !3265
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %8, metadata !3259, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8* %7, metadata !3258, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i32* %6, metadata !3257, metadata !DIExpression()), !dbg !3262
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3266
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3260, metadata !DIExpression()), !dbg !3262
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3269
  call void @llvm.dbg.value(metadata i64 %11, metadata !3261, metadata !DIExpression()), !dbg !3262
  %12 = icmp ult i64 %11, -3, !dbg !3270
  br i1 %12, label %13, label %18, !dbg !3272

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3273
  %15 = icmp eq i32 %14, 0, !dbg !3273
  br i1 %15, label %16, label %30, !dbg !3274

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3275, metadata !DIExpression()) #32, !dbg !3280
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3282, metadata !DIExpression()) #32, !dbg !3287
  call void @llvm.dbg.value(metadata i32 0, metadata !3285, metadata !DIExpression()) #32, !dbg !3287
  call void @llvm.dbg.value(metadata i64 8, metadata !3286, metadata !DIExpression()) #32, !dbg !3287
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3289
  store i64 0, i64* %17, align 1, !dbg !3289
  br label %30, !dbg !3290

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3291
  br i1 %19, label %20, label %21, !dbg !3293

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3294
  unreachable, !dbg !3294

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3295

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3297
  br i1 %24, label %30, label %25, !dbg !3298

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3299
  br i1 %26, label %30, label %27, !dbg !3302

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3303, !tbaa !537
  %29 = zext i8 %28 to i32, !dbg !3304
  store i32 %29, i32* %6, align 4, !dbg !3305, !tbaa !528
  br label %30, !dbg !3306

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3262
  ret i64 %31, !dbg !3307
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3308 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3316, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %2, metadata !3318, metadata !DIExpression()), !dbg !3320
  %4 = icmp eq i64 %2, 0, !dbg !3321
  br i1 %4, label %8, label %5, !dbg !3321

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3321
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3321
  br i1 %7, label %13, label %8, !dbg !3321

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3319, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3320
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3319, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3320
  %9 = mul i64 %2, %1, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %9, metadata !3319, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8* %0, metadata !3323, metadata !DIExpression()) #32, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %9, metadata !3326, metadata !DIExpression()) #32, !dbg !3327
  %10 = icmp eq i64 %9, 0, !dbg !3329
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3329
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3330
  br label %15, !dbg !3331

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3319, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3320
  %14 = tail call i32* @__errno_location() #35, !dbg !3332
  store i32 12, i32* %14, align 4, !dbg !3334, !tbaa !528
  br label %15, !dbg !3335

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3320
  ret i8* %16, !dbg !3336
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3337 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3341, metadata !DIExpression()), !dbg !3346
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3347
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3347
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3342, metadata !DIExpression()), !dbg !3348
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3349
  %5 = icmp eq i32 %4, 0, !dbg !3349
  br i1 %5, label %6, label %13, !dbg !3351

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3352, metadata !DIExpression()) #32, !dbg !3356
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i64 0, i64 0), metadata !3355, metadata !DIExpression()) #32, !dbg !3356
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i64 0, i64 0), i64 2), !dbg !3359
  %8 = icmp eq i32 %7, 0, !dbg !3360
  br i1 %8, label %12, label %9, !dbg !3361

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3352, metadata !DIExpression()) #32, !dbg !3362
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0), metadata !3355, metadata !DIExpression()) #32, !dbg !3362
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0), i64 6), !dbg !3364
  %11 = icmp eq i32 %10, 0, !dbg !3365
  br i1 %11, label %12, label %13, !dbg !3366

12:                                               ; preds = %9, %6
  br label %13, !dbg !3367

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3346
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3368
  ret i1 %14, !dbg !3368
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3373, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8* %1, metadata !3374, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %2, metadata !3375, metadata !DIExpression()), !dbg !3376
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3377
  ret i32 %4, !dbg !3378
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3379 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3383, metadata !DIExpression()), !dbg !3384
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3385
  ret i8* %2, !dbg !3386
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()), !dbg !3391
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3392
  call void @llvm.dbg.value(metadata i8* %2, metadata !3390, metadata !DIExpression()), !dbg !3391
  ret i8* %2, !dbg !3393
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3394 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3396, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8* %1, metadata !3397, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %2, metadata !3398, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()) #32, !dbg !3404
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3406
  call void @llvm.dbg.value(metadata i8* %4, metadata !3390, metadata !DIExpression()) #32, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %4, metadata !3399, metadata !DIExpression()), !dbg !3403
  %5 = icmp eq i8* %4, null, !dbg !3407
  br i1 %5, label %6, label %9, !dbg !3408

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3409
  br i1 %7, label %19, label %8, !dbg !3412

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3413, !tbaa !537
  br label %19, !dbg !3414

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %10, metadata !3400, metadata !DIExpression()), !dbg !3416
  %11 = icmp ult i64 %10, %2, !dbg !3417
  br i1 %11, label %12, label %14, !dbg !3419

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %1, metadata !3422, metadata !DIExpression()) #32, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %4, metadata !3425, metadata !DIExpression()) #32, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %13, metadata !3426, metadata !DIExpression()) #32, !dbg !3427
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3429
  br label %19, !dbg !3430

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3431
  br i1 %15, label %19, label %16, !dbg !3434

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3435
  call void @llvm.dbg.value(metadata i8* %1, metadata !3422, metadata !DIExpression()) #32, !dbg !3437
  call void @llvm.dbg.value(metadata i8* %4, metadata !3425, metadata !DIExpression()) #32, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %17, metadata !3426, metadata !DIExpression()) #32, !dbg !3437
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3439
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3440
  store i8 0, i8* %18, align 1, !dbg !3441, !tbaa !537
  br label %19, !dbg !3442

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3443
  ret i32 %20, !dbg !3444
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
attributes #13 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !144, !149, !156, !336, !356, !197, !207, !239, !358, !328, !365, !399, !401, !403, !405, !407, !342, !409, !412, !414, !416}
!llvm.ident = !{!418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418, !418}
!llvm.module.flags = !{!419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !129, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !39, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tty.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19d46bb11b698354da53d591921bc5e9")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 33, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "TTY_STDIN_NOTTY", value: 1)
!9 = !DIEnumerator(name: "TTY_USAGE", value: 2)
!10 = !DIEnumerator(name: "TTY_WRITE_ERROR", value: 3)
!11 = !DIEnumerator(name: "TTY_TTYNAME_FAILURE", value: 4)
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
!27 = !{!28, !30, !31, !32, !33, !36, !38}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!40, !43, !0}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "silent", scope: !2, file: !3, line: 47, type: !42, isLocal: true, isDefinition: true)
!42 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !45, file: !46, line: 575, type: !31, isLocal: true, isDefinition: true)
!45 = distinct !DISubprogram(name: "oputs_", scope: !46, file: !46, line: 573, type: !47, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !49)
!46 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!47 = !DISubroutineType(types: !48)
!48 = !{null, !36, !36}
!49 = !{!50, !51, !52, !55, !56, !57, !58, !62, !63, !64, !65, !67, !123, !124, !125, !127, !128}
!50 = !DILocalVariable(name: "program", arg: 1, scope: !45, file: !46, line: 573, type: !36)
!51 = !DILocalVariable(name: "option", arg: 2, scope: !45, file: !46, line: 573, type: !36)
!52 = !DILocalVariable(name: "term", scope: !53, file: !46, line: 585, type: !36)
!53 = distinct !DILexicalBlock(scope: !54, file: !46, line: 582, column: 5)
!54 = distinct !DILexicalBlock(scope: !45, file: !46, line: 581, column: 7)
!55 = !DILocalVariable(name: "double_space", scope: !45, file: !46, line: 594, type: !42)
!56 = !DILocalVariable(name: "first_word", scope: !45, file: !46, line: 595, type: !36)
!57 = !DILocalVariable(name: "option_text", scope: !45, file: !46, line: 596, type: !36)
!58 = !DILocalVariable(name: "s", scope: !59, file: !46, line: 608, type: !36)
!59 = distinct !DILexicalBlock(scope: !60, file: !46, line: 605, column: 5)
!60 = distinct !DILexicalBlock(scope: !61, file: !46, line: 604, column: 12)
!61 = distinct !DILexicalBlock(scope: !45, file: !46, line: 597, column: 7)
!62 = !DILocalVariable(name: "spaces", scope: !59, file: !46, line: 609, type: !33)
!63 = !DILocalVariable(name: "anchor_len", scope: !45, file: !46, line: 620, type: !33)
!64 = !DILocalVariable(name: "desc_text", scope: !45, file: !46, line: 625, type: !36)
!65 = !DILocalVariable(name: "__ptr", scope: !66, file: !46, line: 644, type: !36)
!66 = distinct !DILexicalBlock(scope: !45, file: !46, line: 644, column: 3)
!67 = !DILocalVariable(name: "__stream", scope: !66, file: !46, line: 644, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 7, baseType: !71)
!70 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 49, size: 1728, elements: !73)
!72 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !89, !91, !92, !93, !97, !98, !100, !104, !107, !109, !112, !115, !116, !117, !118, !119}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !71, file: !72, line: 51, baseType: !31, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !71, file: !72, line: 54, baseType: !28, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !71, file: !72, line: 55, baseType: !28, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !71, file: !72, line: 56, baseType: !28, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !71, file: !72, line: 57, baseType: !28, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !71, file: !72, line: 58, baseType: !28, size: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !71, file: !72, line: 59, baseType: !28, size: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !71, file: !72, line: 60, baseType: !28, size: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !71, file: !72, line: 61, baseType: !28, size: 64, offset: 512)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !71, file: !72, line: 64, baseType: !28, size: 64, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !71, file: !72, line: 65, baseType: !28, size: 64, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !71, file: !72, line: 66, baseType: !28, size: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !71, file: !72, line: 68, baseType: !87, size: 64, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !72, line: 36, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !71, file: !72, line: 70, baseType: !90, size: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !71, file: !72, line: 72, baseType: !31, size: 32, offset: 896)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !71, file: !72, line: 73, baseType: !31, size: 32, offset: 928)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !71, file: !72, line: 74, baseType: !94, size: 64, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !95, line: 152, baseType: !96)
!95 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!96 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !71, file: !72, line: 77, baseType: !32, size: 16, offset: 1024)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !71, file: !72, line: 78, baseType: !99, size: 8, offset: 1040)
!99 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !71, file: !72, line: 79, baseType: !101, size: 8, offset: 1048)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 1)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !71, file: !72, line: 81, baseType: !105, size: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !72, line: 43, baseType: null)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !71, file: !72, line: 89, baseType: !108, size: 64, offset: 1152)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !95, line: 153, baseType: !96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !71, file: !72, line: 91, baseType: !110, size: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !72, line: 37, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !71, file: !72, line: 92, baseType: !113, size: 64, offset: 1280)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !72, line: 38, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !71, file: !72, line: 93, baseType: !90, size: 64, offset: 1344)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !71, file: !72, line: 94, baseType: !30, size: 64, offset: 1408)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !71, file: !72, line: 95, baseType: !33, size: 64, offset: 1472)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !71, file: !72, line: 96, baseType: !31, size: 32, offset: 1536)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !71, file: !72, line: 98, baseType: !120, size: 160, offset: 1568)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 20)
!123 = !DILocalVariable(name: "__cnt", scope: !66, file: !46, line: 644, type: !33)
!124 = !DILocalVariable(name: "url_program", scope: !45, file: !46, line: 648, type: !36)
!125 = !DILocalVariable(name: "__ptr", scope: !126, file: !46, line: 686, type: !36)
!126 = distinct !DILexicalBlock(scope: !45, file: !46, line: 686, column: 3)
!127 = !DILocalVariable(name: "__stream", scope: !126, file: !46, line: 686, type: !68)
!128 = !DILocalVariable(name: "__cnt", scope: !126, file: !46, line: 686, type: !33)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 1280, elements: !139)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !132, line: 50, size: 256, elements: !133)
!132 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!133 = !{!134, !135, !136, !138}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !132, line: 52, baseType: !36, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !131, file: !132, line: 55, baseType: !31, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !131, file: !132, line: 56, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !131, file: !132, line: 57, baseType: !31, size: 32, offset: 192)
!139 = !{!140}
!140 = !DISubrange(count: 5)
!141 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "Version", scope: !144, file: !145, line: 3, type: !36, isLocal: false, isDefinition: true)
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !146, splitDebugInlining: false, nameTableKind: None)
!145 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!146 = !{!142}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "file_name", scope: !149, file: !150, line: 45, type: !36, isLocal: true, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !151, splitDebugInlining: false, nameTableKind: None)
!150 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!151 = !{!147, !152}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !149, file: !150, line: 55, type: !42, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !156, file: !157, line: 66, type: !192, isLocal: false, isDefinition: true)
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !158, globals: !159, splitDebugInlining: false, nameTableKind: None)
!157 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!158 = !{!30, !38}
!159 = !{!160, !186, !154, !188, !190}
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "old_file_name", scope: !162, file: !157, line: 304, type: !36, isLocal: true, isDefinition: true)
!162 = distinct !DISubprogram(name: "verror_at_line", scope: !157, file: !157, line: 298, type: !163, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !179)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !31, !31, !36, !6, !36, !165}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !166, line: 52, baseType: !167)
!166 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !168, line: 32, baseType: !169)
!168 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !170, baseType: !171)
!170 = !DIFile(filename: "lib/error.c", directory: "/src")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !172, size: 256, elements: !173)
!172 = !DINamespace(name: "std", scope: null)
!173 = !{!174, !175, !176, !177, !178}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !171, file: !170, baseType: !30, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !171, file: !170, baseType: !30, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !171, file: !170, baseType: !30, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !171, file: !170, baseType: !31, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !171, file: !170, baseType: !31, size: 32, offset: 224)
!179 = !{!180, !181, !182, !183, !184, !185}
!180 = !DILocalVariable(name: "status", arg: 1, scope: !162, file: !157, line: 298, type: !31)
!181 = !DILocalVariable(name: "errnum", arg: 2, scope: !162, file: !157, line: 298, type: !31)
!182 = !DILocalVariable(name: "file_name", arg: 3, scope: !162, file: !157, line: 298, type: !36)
!183 = !DILocalVariable(name: "line_number", arg: 4, scope: !162, file: !157, line: 298, type: !6)
!184 = !DILocalVariable(name: "message", arg: 5, scope: !162, file: !157, line: 298, type: !36)
!185 = !DILocalVariable(name: "args", arg: 6, scope: !162, file: !157, line: 298, type: !165)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "old_line_number", scope: !162, file: !157, line: 305, type: !6, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "error_message_count", scope: !156, file: !157, line: 69, type: !6, isLocal: false, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !156, file: !157, line: 295, type: !31, isLocal: false, isDefinition: true)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "program_name", scope: !197, file: !198, line: 31, type: !36, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !199, globals: !200, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!199 = !{!28}
!200 = !{!195}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "utf07FF", scope: !203, file: !204, line: 46, type: !234, isLocal: true, isDefinition: true)
!203 = distinct !DISubprogram(name: "proper_name_lite", scope: !204, file: !204, line: 38, type: !205, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !209)
!204 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!205 = !DISubroutineType(types: !206)
!206 = !{!36, !36, !36}
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !208, splitDebugInlining: false, nameTableKind: None)
!208 = !{!201}
!209 = !{!210, !211, !212, !213, !218}
!210 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !203, file: !204, line: 38, type: !36)
!211 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !203, file: !204, line: 38, type: !36)
!212 = !DILocalVariable(name: "translation", scope: !203, file: !204, line: 40, type: !36)
!213 = !DILocalVariable(name: "w", scope: !203, file: !204, line: 47, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !215, line: 37, baseType: !216)
!215 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !95, line: 57, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !95, line: 42, baseType: !6)
!218 = !DILocalVariable(name: "mbs", scope: !203, file: !204, line: 48, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !220, line: 6, baseType: !221)
!220 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !222, line: 21, baseType: !223)
!222 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 13, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !223, file: !222, line: 15, baseType: !31, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !223, file: !222, line: 20, baseType: !227, size: 32, offset: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !222, line: 16, size: 32, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !227, file: !222, line: 18, baseType: !6, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !227, file: !222, line: 19, baseType: !231, size: 32)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 4)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 16, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 2)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !239, file: !240, line: 76, type: !322, isLocal: false, isDefinition: true)
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !241, retainedTypes: !261, globals: !262, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!241 = !{!242, !256, !12}
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !243, line: 42, baseType: !6, size: 32, elements: !244)
!243 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!245 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!246 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!247 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!248 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!249 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!250 = !DIEnumerator(name: "c_quoting_style", value: 5)
!251 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!252 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!253 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!254 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!255 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !243, line: 254, baseType: !6, size: 32, elements: !257)
!257 = !{!258, !259, !260}
!258 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!259 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!260 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!261 = !{!31, !32, !33}
!262 = !{!237, !263, !269, !281, !283, !288, !311, !318, !320}
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !239, file: !240, line: 92, type: !265, isLocal: false, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 320, elements: !267)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!267 = !{!268}
!268 = !DISubrange(count: 10)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !239, file: !240, line: 1040, type: !271, isLocal: false, isDefinition: true)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !240, line: 56, size: 448, elements: !272)
!272 = !{!273, !274, !275, !279, !280}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !271, file: !240, line: 59, baseType: !242, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !240, line: 62, baseType: !31, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !271, file: !240, line: 66, baseType: !276, size: 256, offset: 64)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !271, file: !240, line: 69, baseType: !36, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !271, file: !240, line: 72, baseType: !36, size: 64, offset: 384)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !239, file: !240, line: 107, type: !271, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "slot0", scope: !239, file: !240, line: 831, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 256)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "quote", scope: !290, file: !240, line: 228, type: !309, isLocal: true, isDefinition: true)
!290 = distinct !DISubprogram(name: "gettext_quote", scope: !240, file: !240, line: 197, type: !291, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{!36, !36, !242}
!293 = !{!294, !295, !296, !297, !298}
!294 = !DILocalVariable(name: "msgid", arg: 1, scope: !290, file: !240, line: 197, type: !36)
!295 = !DILocalVariable(name: "s", arg: 2, scope: !290, file: !240, line: 197, type: !242)
!296 = !DILocalVariable(name: "translation", scope: !290, file: !240, line: 199, type: !36)
!297 = !DILocalVariable(name: "w", scope: !290, file: !240, line: 229, type: !214)
!298 = !DILocalVariable(name: "mbs", scope: !290, file: !240, line: 230, type: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !220, line: 6, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !222, line: 21, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 13, size: 64, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !301, file: !222, line: 15, baseType: !31, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !301, file: !222, line: 20, baseType: !305, size: 32, offset: 32)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !222, line: 16, size: 32, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !305, file: !222, line: 18, baseType: !6, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !305, file: !222, line: 19, baseType: !231, size: 32)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !310)
!310 = !{!236, !233}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "slotvec", scope: !239, file: !240, line: 834, type: !313, isLocal: true, isDefinition: true)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !240, line: 823, size: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !240, line: 825, baseType: !33, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !314, file: !240, line: 826, baseType: !28, size: 64, offset: 64)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "nslots", scope: !239, file: !240, line: 832, type: !31, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "slotvec0", scope: !239, file: !240, line: 833, type: !314, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 704, elements: !324)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!324 = !{!325}
!325 = !DISubrange(count: 11)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !328, file: !329, line: 26, type: !331, isLocal: false, isDefinition: true)
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !330, splitDebugInlining: false, nameTableKind: None)
!329 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!330 = !{!326}
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 47)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "exit_failure", scope: !336, file: !337, line: 24, type: !339, isLocal: false, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !338, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!338 = !{!334}
!339 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "internal_state", scope: !342, file: !343, line: 97, type: !346, isLocal: true, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C99, file: !343, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !344, globals: !345, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!344 = !{!30, !33, !38}
!345 = !{!340}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !220, line: 6, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !222, line: 21, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 13, size: 64, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !348, file: !222, line: 15, baseType: !31, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !348, file: !222, line: 20, baseType: !352, size: 32, offset: 32)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !222, line: 16, size: 32, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !352, file: !222, line: 18, baseType: !6, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !352, file: !222, line: 19, baseType: !231, size: 32)
!356 = distinct !DICompileUnit(language: DW_LANG_C99, file: !357, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !360, retainedTypes: !364, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!360 = !{!361}
!361 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !359, line: 40, baseType: !6, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!364 = !{!30}
!365 = distinct !DICompileUnit(language: DW_LANG_C99, file: !366, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !367, retainedTypes: !398, splitDebugInlining: false, nameTableKind: None)
!366 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!367 = !{!368, !380}
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !369, file: !366, line: 188, baseType: !6, size: 32, elements: !378)
!369 = distinct !DISubprogram(name: "x2nrealloc", scope: !366, file: !366, line: 176, type: !370, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !373)
!370 = !DISubroutineType(types: !371)
!371 = !{!30, !30, !372, !33}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!373 = !{!374, !375, !376, !377}
!374 = !DILocalVariable(name: "p", arg: 1, scope: !369, file: !366, line: 176, type: !30)
!375 = !DILocalVariable(name: "pn", arg: 2, scope: !369, file: !366, line: 176, type: !372)
!376 = !DILocalVariable(name: "s", arg: 3, scope: !369, file: !366, line: 176, type: !33)
!377 = !DILocalVariable(name: "n", scope: !369, file: !366, line: 178, type: !33)
!378 = !{!379}
!379 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!380 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !381, file: !366, line: 228, baseType: !6, size: 32, elements: !378)
!381 = distinct !DISubprogram(name: "xpalloc", scope: !366, file: !366, line: 223, type: !382, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !388)
!382 = !DISubroutineType(types: !383)
!383 = !{!30, !30, !384, !385, !387, !385}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !386, line: 130, baseType: !387)
!386 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !34, line: 35, baseType: !96)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397}
!389 = !DILocalVariable(name: "pa", arg: 1, scope: !381, file: !366, line: 223, type: !30)
!390 = !DILocalVariable(name: "pn", arg: 2, scope: !381, file: !366, line: 223, type: !384)
!391 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !381, file: !366, line: 223, type: !385)
!392 = !DILocalVariable(name: "n_max", arg: 4, scope: !381, file: !366, line: 223, type: !387)
!393 = !DILocalVariable(name: "s", arg: 5, scope: !381, file: !366, line: 223, type: !385)
!394 = !DILocalVariable(name: "n0", scope: !381, file: !366, line: 230, type: !385)
!395 = !DILocalVariable(name: "n", scope: !381, file: !366, line: 237, type: !385)
!396 = !DILocalVariable(name: "nbytes", scope: !381, file: !366, line: 248, type: !385)
!397 = !DILocalVariable(name: "adjusted_nbytes", scope: !381, file: !366, line: 252, type: !385)
!398 = !{!28, !30, !42, !96, !35}
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !364, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!407 = distinct !DICompileUnit(language: DW_LANG_C99, file: !408, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !364, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !411, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!411 = !{!42, !35, !30}
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !364, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!418 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!419 = !{i32 7, !"Dwarf Version", i32 5}
!420 = !{i32 2, !"Debug Info Version", i32 3}
!421 = !{i32 1, !"wchar_size", i32 4}
!422 = !{i32 1, !"branch-target-enforcement", i32 0}
!423 = !{i32 1, !"sign-return-address", i32 0}
!424 = !{i32 1, !"sign-return-address-all", i32 0}
!425 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!426 = !{i32 7, !"PIC Level", i32 2}
!427 = !{i32 7, !"PIE Level", i32 2}
!428 = !{i32 7, !"uwtable", i32 1}
!429 = !{i32 7, !"frame-pointer", i32 1}
!430 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !431, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !31}
!433 = !{!434}
!434 = !DILocalVariable(name: "status", arg: 1, scope: !430, file: !3, line: 59, type: !31)
!435 = !DILocation(line: 0, scope: !430)
!436 = !DILocation(line: 61, column: 14, scope: !437)
!437 = distinct !DILexicalBlock(scope: !430, file: !3, line: 61, column: 7)
!438 = !DILocation(line: 61, column: 7, scope: !430)
!439 = !DILocation(line: 62, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !3, line: 62, column: 5)
!441 = !{!442, !442, i64 0}
!442 = !{!"any pointer", !443, i64 0}
!443 = !{!"omnipotent char", !444, i64 0}
!444 = !{!"Simple C/C++ TBAA"}
!445 = !DILocation(line: 65, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !437, file: !3, line: 64, column: 5)
!447 = !DILocation(line: 66, column: 7, scope: !446)
!448 = !DILocation(line: 70, column: 7, scope: !446)
!449 = !DILocation(line: 74, column: 7, scope: !446)
!450 = !DILocation(line: 75, column: 7, scope: !446)
!451 = !DILocalVariable(name: "program", arg: 1, scope: !452, file: !46, line: 836, type: !36)
!452 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !46, file: !46, line: 836, type: !453, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !36}
!455 = !{!451, !456, !465, !466, !468, !469}
!456 = !DILocalVariable(name: "infomap", scope: !452, file: !46, line: 838, type: !457)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 896, elements: !463)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !452, file: !46, line: 838, size: 128, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !459, file: !46, line: 838, baseType: !36, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !46, line: 838, baseType: !36, size: 64, offset: 64)
!463 = !{!464}
!464 = !DISubrange(count: 7)
!465 = !DILocalVariable(name: "node", scope: !452, file: !46, line: 848, type: !36)
!466 = !DILocalVariable(name: "map_prog", scope: !452, file: !46, line: 849, type: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!468 = !DILocalVariable(name: "lc_messages", scope: !452, file: !46, line: 861, type: !36)
!469 = !DILocalVariable(name: "url_program", scope: !452, file: !46, line: 874, type: !36)
!470 = !DILocation(line: 0, scope: !452, inlinedAt: !471)
!471 = distinct !DILocation(line: 76, column: 7, scope: !446)
!472 = !DILocation(line: 838, column: 3, scope: !452, inlinedAt: !471)
!473 = !DILocation(line: 838, column: 67, scope: !452, inlinedAt: !471)
!474 = !DILocation(line: 849, column: 36, scope: !452, inlinedAt: !471)
!475 = !DILocation(line: 851, column: 3, scope: !452, inlinedAt: !471)
!476 = !DILocalVariable(name: "__s1", arg: 1, scope: !477, file: !478, line: 1359, type: !36)
!477 = distinct !DISubprogram(name: "streq", scope: !478, file: !478, line: 1359, type: !479, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!478 = !DIFile(filename: "./lib/string.h", directory: "/src")
!479 = !DISubroutineType(types: !480)
!480 = !{!42, !36, !36}
!481 = !{!476, !482}
!482 = !DILocalVariable(name: "__s2", arg: 2, scope: !477, file: !478, line: 1359, type: !36)
!483 = !DILocation(line: 0, scope: !477, inlinedAt: !484)
!484 = distinct !DILocation(line: 851, column: 33, scope: !452, inlinedAt: !471)
!485 = !DILocation(line: 1361, column: 11, scope: !477, inlinedAt: !484)
!486 = !DILocation(line: 1361, column: 10, scope: !477, inlinedAt: !484)
!487 = !DILocation(line: 852, column: 13, scope: !452, inlinedAt: !471)
!488 = !DILocation(line: 851, column: 20, scope: !452, inlinedAt: !471)
!489 = !{!490, !442, i64 0}
!490 = !{!"infomap", !442, i64 0, !442, i64 8}
!491 = !DILocation(line: 851, column: 10, scope: !452, inlinedAt: !471)
!492 = !DILocation(line: 851, column: 28, scope: !452, inlinedAt: !471)
!493 = distinct !{!493, !475, !487, !494}
!494 = !{!"llvm.loop.mustprogress"}
!495 = !DILocation(line: 854, column: 17, scope: !496, inlinedAt: !471)
!496 = distinct !DILexicalBlock(scope: !452, file: !46, line: 854, column: 7)
!497 = !{!490, !442, i64 8}
!498 = !DILocation(line: 854, column: 7, scope: !496, inlinedAt: !471)
!499 = !DILocation(line: 854, column: 7, scope: !452, inlinedAt: !471)
!500 = !DILocation(line: 857, column: 3, scope: !452, inlinedAt: !471)
!501 = !DILocation(line: 861, column: 29, scope: !452, inlinedAt: !471)
!502 = !DILocation(line: 862, column: 7, scope: !503, inlinedAt: !471)
!503 = distinct !DILexicalBlock(scope: !452, file: !46, line: 862, column: 7)
!504 = !DILocation(line: 862, column: 19, scope: !503, inlinedAt: !471)
!505 = !DILocation(line: 862, column: 22, scope: !503, inlinedAt: !471)
!506 = !DILocation(line: 862, column: 7, scope: !452, inlinedAt: !471)
!507 = !DILocation(line: 868, column: 7, scope: !508, inlinedAt: !471)
!508 = distinct !DILexicalBlock(scope: !503, file: !46, line: 863, column: 5)
!509 = !DILocation(line: 870, column: 5, scope: !508, inlinedAt: !471)
!510 = !DILocation(line: 0, scope: !477, inlinedAt: !511)
!511 = distinct !DILocation(line: 874, column: 29, scope: !452, inlinedAt: !471)
!512 = !DILocation(line: 875, column: 3, scope: !452, inlinedAt: !471)
!513 = !DILocation(line: 877, column: 3, scope: !452, inlinedAt: !471)
!514 = !DILocation(line: 879, column: 1, scope: !452, inlinedAt: !471)
!515 = !DILocation(line: 78, column: 3, scope: !430)
!516 = !DISubprogram(name: "dcgettext", scope: !517, file: !517, line: 51, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!517 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!518 = !DISubroutineType(types: !519)
!519 = !{!28, !36, !36, !31}
!520 = !{}
!521 = !DISubprogram(name: "fputs_unlocked", scope: !166, file: !166, line: 691, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!522 = !DISubroutineType(types: !523)
!523 = !{!31, !524, !525}
!524 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!525 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!526 = !DILocation(line: 0, scope: !45)
!527 = !DILocation(line: 581, column: 7, scope: !54)
!528 = !{!529, !529, i64 0}
!529 = !{!"int", !443, i64 0}
!530 = !DILocation(line: 581, column: 19, scope: !54)
!531 = !DILocation(line: 581, column: 7, scope: !45)
!532 = !DILocation(line: 585, column: 26, scope: !53)
!533 = !DILocation(line: 0, scope: !53)
!534 = !DILocation(line: 586, column: 23, scope: !53)
!535 = !DILocation(line: 586, column: 28, scope: !53)
!536 = !DILocation(line: 586, column: 32, scope: !53)
!537 = !{!443, !443, i64 0}
!538 = !DILocation(line: 586, column: 38, scope: !53)
!539 = !DILocation(line: 0, scope: !477, inlinedAt: !540)
!540 = distinct !DILocation(line: 586, column: 41, scope: !53)
!541 = !DILocation(line: 1361, column: 11, scope: !477, inlinedAt: !540)
!542 = !DILocation(line: 1361, column: 10, scope: !477, inlinedAt: !540)
!543 = !DILocation(line: 586, column: 19, scope: !53)
!544 = !DILocation(line: 587, column: 5, scope: !53)
!545 = !DILocation(line: 588, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !45, file: !46, line: 588, column: 7)
!547 = !DILocation(line: 588, column: 7, scope: !45)
!548 = !DILocation(line: 590, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !546, file: !46, line: 589, column: 5)
!550 = !DILocation(line: 591, column: 7, scope: !549)
!551 = !DILocation(line: 595, column: 37, scope: !45)
!552 = !DILocation(line: 595, column: 35, scope: !45)
!553 = !DILocation(line: 596, column: 29, scope: !45)
!554 = !DILocation(line: 597, column: 8, scope: !61)
!555 = !DILocation(line: 597, column: 7, scope: !45)
!556 = !DILocation(line: 604, column: 24, scope: !60)
!557 = !DILocation(line: 604, column: 12, scope: !61)
!558 = !DILocation(line: 0, scope: !59)
!559 = !DILocation(line: 610, column: 16, scope: !59)
!560 = !DILocation(line: 610, column: 7, scope: !59)
!561 = !DILocation(line: 611, column: 21, scope: !59)
!562 = !{!563, !563, i64 0}
!563 = !{!"short", !443, i64 0}
!564 = !DILocation(line: 611, column: 19, scope: !59)
!565 = !DILocation(line: 611, column: 16, scope: !59)
!566 = !DILocation(line: 610, column: 30, scope: !59)
!567 = distinct !{!567, !560, !561, !494}
!568 = !DILocation(line: 612, column: 18, scope: !569)
!569 = distinct !DILexicalBlock(scope: !59, file: !46, line: 612, column: 11)
!570 = !DILocation(line: 612, column: 11, scope: !59)
!571 = !DILocation(line: 620, column: 23, scope: !45)
!572 = !DILocation(line: 625, column: 39, scope: !45)
!573 = !DILocation(line: 626, column: 3, scope: !45)
!574 = !DILocation(line: 626, column: 10, scope: !45)
!575 = !DILocation(line: 626, column: 21, scope: !45)
!576 = !DILocation(line: 628, column: 44, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !46, line: 628, column: 11)
!578 = distinct !DILexicalBlock(scope: !45, file: !46, line: 627, column: 5)
!579 = !DILocation(line: 628, column: 32, scope: !577)
!580 = !DILocation(line: 628, column: 49, scope: !577)
!581 = !DILocation(line: 628, column: 11, scope: !578)
!582 = !DILocation(line: 630, column: 11, scope: !583)
!583 = distinct !DILexicalBlock(scope: !578, file: !46, line: 630, column: 11)
!584 = !DILocation(line: 630, column: 11, scope: !578)
!585 = !DILocation(line: 632, column: 26, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !46, line: 632, column: 15)
!587 = distinct !DILexicalBlock(scope: !583, file: !46, line: 631, column: 9)
!588 = !DILocation(line: 632, column: 34, scope: !586)
!589 = !DILocation(line: 632, column: 37, scope: !586)
!590 = !DILocation(line: 632, column: 15, scope: !587)
!591 = !DILocation(line: 636, column: 29, scope: !592)
!592 = distinct !DILexicalBlock(scope: !587, file: !46, line: 636, column: 15)
!593 = !DILocation(line: 640, column: 16, scope: !578)
!594 = distinct !{!594, !573, !595, !494}
!595 = !DILocation(line: 641, column: 5, scope: !45)
!596 = !DILocation(line: 644, column: 3, scope: !45)
!597 = !DILocation(line: 0, scope: !477, inlinedAt: !598)
!598 = distinct !DILocation(line: 648, column: 31, scope: !45)
!599 = !DILocation(line: 0, scope: !477, inlinedAt: !600)
!600 = distinct !DILocation(line: 649, column: 31, scope: !45)
!601 = !DILocation(line: 0, scope: !477, inlinedAt: !602)
!602 = distinct !DILocation(line: 650, column: 31, scope: !45)
!603 = !DILocation(line: 0, scope: !477, inlinedAt: !604)
!604 = distinct !DILocation(line: 651, column: 31, scope: !45)
!605 = !DILocation(line: 0, scope: !477, inlinedAt: !606)
!606 = distinct !DILocation(line: 652, column: 31, scope: !45)
!607 = !DILocation(line: 0, scope: !477, inlinedAt: !608)
!608 = distinct !DILocation(line: 653, column: 31, scope: !45)
!609 = !DILocation(line: 0, scope: !477, inlinedAt: !610)
!610 = distinct !DILocation(line: 654, column: 31, scope: !45)
!611 = !DILocation(line: 0, scope: !477, inlinedAt: !612)
!612 = distinct !DILocation(line: 655, column: 31, scope: !45)
!613 = !DILocation(line: 0, scope: !477, inlinedAt: !614)
!614 = distinct !DILocation(line: 656, column: 31, scope: !45)
!615 = !DILocation(line: 0, scope: !477, inlinedAt: !616)
!616 = distinct !DILocation(line: 657, column: 31, scope: !45)
!617 = !DILocation(line: 663, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !45, file: !46, line: 663, column: 7)
!619 = !DILocation(line: 664, column: 7, scope: !618)
!620 = !DILocation(line: 664, column: 10, scope: !618)
!621 = !DILocation(line: 663, column: 7, scope: !45)
!622 = !DILocation(line: 669, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !618, file: !46, line: 665, column: 5)
!624 = !DILocation(line: 671, column: 5, scope: !623)
!625 = !DILocation(line: 676, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !618, file: !46, line: 673, column: 5)
!627 = !DILocation(line: 679, column: 3, scope: !45)
!628 = !DILocation(line: 683, column: 3, scope: !45)
!629 = !DILocation(line: 686, column: 3, scope: !45)
!630 = !DILocation(line: 688, column: 3, scope: !45)
!631 = !DILocation(line: 691, column: 3, scope: !45)
!632 = !DILocation(line: 695, column: 3, scope: !45)
!633 = !DILocation(line: 696, column: 1, scope: !45)
!634 = !DISubprogram(name: "setlocale", scope: !635, file: !635, line: 122, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!635 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!636 = !DISubroutineType(types: !637)
!637 = !{!28, !31, !36}
!638 = !DISubprogram(name: "getenv", scope: !639, file: !639, line: 641, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!639 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!640 = !DISubroutineType(types: !641)
!641 = !{!28, !36}
!642 = !DISubprogram(name: "fwrite_unlocked", scope: !166, file: !166, line: 704, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!643 = !DISubroutineType(types: !644)
!644 = !{!33, !645, !33, !33, !525}
!645 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!648 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 82, type: !649, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !652)
!649 = !DISubroutineType(types: !650)
!650 = !{!31, !31, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!652 = !{!653, !654, !655, !656, !657, !658}
!653 = !DILocalVariable(name: "argc", arg: 1, scope: !648, file: !3, line: 82, type: !31)
!654 = !DILocalVariable(name: "argv", arg: 2, scope: !648, file: !3, line: 82, type: !651)
!655 = !DILocalVariable(name: "optc", scope: !648, file: !3, line: 84, type: !31)
!656 = !DILocalVariable(name: "status", scope: !648, file: !3, line: 121, type: !31)
!657 = !DILocalVariable(name: "tty", scope: !648, file: !3, line: 122, type: !36)
!658 = !DILocalVariable(name: "ttyname_err", scope: !659, file: !3, line: 128, type: !31)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 127, column: 5)
!660 = distinct !DILexicalBlock(scope: !648, file: !3, line: 124, column: 7)
!661 = !DILocation(line: 0, scope: !648)
!662 = !DILocation(line: 87, column: 21, scope: !648)
!663 = !DILocation(line: 87, column: 3, scope: !648)
!664 = !DILocation(line: 88, column: 3, scope: !648)
!665 = !DILocation(line: 89, column: 3, scope: !648)
!666 = !DILocation(line: 90, column: 3, scope: !648)
!667 = !DILocalVariable(name: "status", arg: 1, scope: !668, file: !46, line: 102, type: !31)
!668 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !46, file: !46, line: 102, type: !431, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !669)
!669 = !{!667}
!670 = !DILocation(line: 0, scope: !668, inlinedAt: !671)
!671 = distinct !DILocation(line: 92, column: 3, scope: !648)
!672 = !DILocation(line: 105, column: 18, scope: !673, inlinedAt: !671)
!673 = distinct !DILexicalBlock(scope: !668, file: !46, line: 104, column: 7)
!674 = !DILocation(line: 93, column: 3, scope: !648)
!675 = !DILocation(line: 95, column: 3, scope: !648)
!676 = !DILocation(line: 95, column: 18, scope: !648)
!677 = !DILocation(line: 100, column: 18, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 98, column: 9)
!679 = distinct !DILexicalBlock(scope: !648, file: !3, line: 96, column: 5)
!680 = distinct !{!680, !675, !681, !494}
!681 = !DILocation(line: 110, column: 5, scope: !648)
!682 = !DILocation(line: 103, column: 9, scope: !678)
!683 = !DILocation(line: 105, column: 9, scope: !678)
!684 = !DILocation(line: 108, column: 11, scope: !678)
!685 = !DILocation(line: 112, column: 7, scope: !686)
!686 = distinct !DILexicalBlock(scope: !648, file: !3, line: 112, column: 7)
!687 = !DILocation(line: 112, column: 14, scope: !686)
!688 = !DILocation(line: 112, column: 7, scope: !648)
!689 = !DILocation(line: 114, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !3, line: 113, column: 5)
!691 = !DILocation(line: 115, column: 7, scope: !690)
!692 = !DILocation(line: 118, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !648, file: !3, line: 118, column: 7)
!694 = !DILocation(line: 118, column: 7, scope: !648)
!695 = !DILocation(line: 119, column: 12, scope: !693)
!696 = !DILocation(line: 119, column: 5, scope: !693)
!697 = !DILocation(line: 122, column: 21, scope: !648)
!698 = !DILocation(line: 124, column: 7, scope: !660)
!699 = !DILocation(line: 124, column: 7, scope: !648)
!700 = !DILocation(line: 128, column: 25, scope: !659)
!701 = !DILocation(line: 0, scope: !659)
!702 = !DILocation(line: 129, column: 11, scope: !703)
!703 = distinct !DILexicalBlock(scope: !659, file: !3, line: 129, column: 11)
!704 = !DILocation(line: 129, column: 11, scope: !659)
!705 = !DILocation(line: 130, column: 9, scope: !703)
!706 = !DILocation(line: 131, column: 13, scope: !659)
!707 = !DILocation(line: 0, scope: !660)
!708 = !DILocation(line: 135, column: 3, scope: !648)
!709 = !DILocation(line: 137, column: 1, scope: !648)
!710 = !DISubprogram(name: "bindtextdomain", scope: !517, file: !517, line: 86, type: !711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!711 = !DISubroutineType(types: !712)
!712 = !{!28, !36, !36}
!713 = !DISubprogram(name: "textdomain", scope: !517, file: !517, line: 82, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!714 = !DISubprogram(name: "atexit", scope: !639, file: !639, line: 602, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!715 = !DISubroutineType(types: !716)
!716 = !{!31, !192}
!717 = !DISubprogram(name: "getopt_long", scope: !132, file: !132, line: 66, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!718 = !DISubroutineType(types: !719)
!719 = !{!31, !31, !720, !36, !722, !137}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!723 = !DISubprogram(name: "isatty", scope: !724, file: !724, line: 809, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!724 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!725 = !DISubroutineType(types: !726)
!726 = !{!31, !31}
!727 = !DISubprogram(name: "ttyname", scope: !724, file: !724, line: 799, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!728 = !DISubroutineType(types: !729)
!729 = !{!28, !31}
!730 = !DISubprogram(name: "puts", scope: !166, file: !166, line: 661, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!731 = !DISubroutineType(types: !732)
!732 = !{!31, !36}
!733 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !150, file: !150, line: 50, type: !453, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !734)
!734 = !{!735}
!735 = !DILocalVariable(name: "file", arg: 1, scope: !733, file: !150, line: 50, type: !36)
!736 = !DILocation(line: 0, scope: !733)
!737 = !DILocation(line: 52, column: 13, scope: !733)
!738 = !DILocation(line: 53, column: 1, scope: !733)
!739 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !150, file: !150, line: 87, type: !740, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !42}
!742 = !{!743}
!743 = !DILocalVariable(name: "ignore", arg: 1, scope: !739, file: !150, line: 87, type: !42)
!744 = !DILocation(line: 0, scope: !739)
!745 = !DILocation(line: 89, column: 16, scope: !739)
!746 = !{!747, !747, i64 0}
!747 = !{!"_Bool", !443, i64 0}
!748 = !DILocation(line: 90, column: 1, scope: !739)
!749 = distinct !DISubprogram(name: "close_stdout", scope: !150, file: !150, line: 116, type: !193, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !750)
!750 = !{!751}
!751 = !DILocalVariable(name: "write_error", scope: !752, file: !150, line: 121, type: !36)
!752 = distinct !DILexicalBlock(scope: !753, file: !150, line: 120, column: 5)
!753 = distinct !DILexicalBlock(scope: !749, file: !150, line: 118, column: 7)
!754 = !DILocation(line: 118, column: 21, scope: !753)
!755 = !DILocation(line: 118, column: 7, scope: !753)
!756 = !DILocation(line: 118, column: 29, scope: !753)
!757 = !DILocation(line: 119, column: 7, scope: !753)
!758 = !DILocation(line: 119, column: 12, scope: !753)
!759 = !{i8 0, i8 2}
!760 = !DILocation(line: 119, column: 25, scope: !753)
!761 = !DILocation(line: 119, column: 28, scope: !753)
!762 = !DILocation(line: 119, column: 34, scope: !753)
!763 = !DILocation(line: 118, column: 7, scope: !749)
!764 = !DILocation(line: 121, column: 33, scope: !752)
!765 = !DILocation(line: 0, scope: !752)
!766 = !DILocation(line: 122, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !752, file: !150, line: 122, column: 11)
!768 = !DILocation(line: 0, scope: !767)
!769 = !DILocation(line: 122, column: 11, scope: !752)
!770 = !DILocation(line: 123, column: 9, scope: !767)
!771 = !DILocation(line: 126, column: 9, scope: !767)
!772 = !DILocation(line: 128, column: 14, scope: !752)
!773 = !DILocation(line: 128, column: 7, scope: !752)
!774 = !DILocation(line: 133, column: 42, scope: !775)
!775 = distinct !DILexicalBlock(scope: !749, file: !150, line: 133, column: 7)
!776 = !DILocation(line: 133, column: 28, scope: !775)
!777 = !DILocation(line: 133, column: 50, scope: !775)
!778 = !DILocation(line: 133, column: 7, scope: !749)
!779 = !DILocation(line: 134, column: 12, scope: !775)
!780 = !DILocation(line: 134, column: 5, scope: !775)
!781 = !DILocation(line: 135, column: 1, scope: !749)
!782 = distinct !DISubprogram(name: "verror", scope: !157, file: !157, line: 251, type: !783, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !785)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !31, !31, !36, !165}
!785 = !{!786, !787, !788, !789}
!786 = !DILocalVariable(name: "status", arg: 1, scope: !782, file: !157, line: 251, type: !31)
!787 = !DILocalVariable(name: "errnum", arg: 2, scope: !782, file: !157, line: 251, type: !31)
!788 = !DILocalVariable(name: "message", arg: 3, scope: !782, file: !157, line: 251, type: !36)
!789 = !DILocalVariable(name: "args", arg: 4, scope: !782, file: !157, line: 251, type: !165)
!790 = !DILocation(line: 0, scope: !782)
!791 = !DILocation(line: 251, column: 1, scope: !782)
!792 = !DILocation(line: 261, column: 3, scope: !782)
!793 = !DILocation(line: 265, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !782, file: !157, line: 265, column: 7)
!795 = !DILocation(line: 265, column: 7, scope: !782)
!796 = !DILocation(line: 266, column: 5, scope: !794)
!797 = !DILocation(line: 272, column: 7, scope: !798)
!798 = distinct !DILexicalBlock(scope: !794, file: !157, line: 268, column: 5)
!799 = !DILocation(line: 276, column: 3, scope: !782)
!800 = !{i64 0, i64 8, !441, i64 8, i64 8, !441, i64 16, i64 8, !441, i64 24, i64 4, !528, i64 28, i64 4, !528}
!801 = !DILocation(line: 282, column: 1, scope: !782)
!802 = distinct !DISubprogram(name: "flush_stdout", scope: !157, file: !157, line: 163, type: !193, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !803)
!803 = !{!804}
!804 = !DILocalVariable(name: "stdout_fd", scope: !802, file: !157, line: 166, type: !31)
!805 = !DILocation(line: 0, scope: !802)
!806 = !DILocalVariable(name: "fd", arg: 1, scope: !807, file: !157, line: 145, type: !31)
!807 = distinct !DISubprogram(name: "is_open", scope: !157, file: !157, line: 145, type: !725, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !808)
!808 = !{!806}
!809 = !DILocation(line: 0, scope: !807, inlinedAt: !810)
!810 = distinct !DILocation(line: 182, column: 25, scope: !811)
!811 = distinct !DILexicalBlock(scope: !802, file: !157, line: 182, column: 7)
!812 = !DILocation(line: 157, column: 15, scope: !807, inlinedAt: !810)
!813 = !DILocation(line: 182, column: 25, scope: !811)
!814 = !DILocation(line: 182, column: 7, scope: !802)
!815 = !DILocation(line: 184, column: 5, scope: !811)
!816 = !DILocation(line: 185, column: 1, scope: !802)
!817 = distinct !DISubprogram(name: "error_tail", scope: !157, file: !157, line: 219, type: !783, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !818)
!818 = !{!819, !820, !821, !822}
!819 = !DILocalVariable(name: "status", arg: 1, scope: !817, file: !157, line: 219, type: !31)
!820 = !DILocalVariable(name: "errnum", arg: 2, scope: !817, file: !157, line: 219, type: !31)
!821 = !DILocalVariable(name: "message", arg: 3, scope: !817, file: !157, line: 219, type: !36)
!822 = !DILocalVariable(name: "args", arg: 4, scope: !817, file: !157, line: 219, type: !165)
!823 = !DILocation(line: 0, scope: !817)
!824 = !DILocation(line: 219, column: 1, scope: !817)
!825 = !DILocation(line: 229, column: 13, scope: !817)
!826 = !DILocation(line: 229, column: 3, scope: !817)
!827 = !DILocalVariable(name: "__stream", arg: 1, scope: !828, file: !829, line: 132, type: !832)
!828 = distinct !DISubprogram(name: "vfprintf", scope: !829, file: !829, line: 132, type: !830, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !867)
!829 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!830 = !DISubroutineType(types: !831)
!831 = !{!31, !832, !524, !167}
!832 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 7, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 49, size: 1728, elements: !836)
!836 = !{!837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !835, file: !72, line: 51, baseType: !31, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !835, file: !72, line: 54, baseType: !28, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !835, file: !72, line: 55, baseType: !28, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !835, file: !72, line: 56, baseType: !28, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !835, file: !72, line: 57, baseType: !28, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !835, file: !72, line: 58, baseType: !28, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !835, file: !72, line: 59, baseType: !28, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !835, file: !72, line: 60, baseType: !28, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !835, file: !72, line: 61, baseType: !28, size: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !835, file: !72, line: 64, baseType: !28, size: 64, offset: 576)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !835, file: !72, line: 65, baseType: !28, size: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !835, file: !72, line: 66, baseType: !28, size: 64, offset: 704)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !835, file: !72, line: 68, baseType: !87, size: 64, offset: 768)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !835, file: !72, line: 70, baseType: !851, size: 64, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !835, file: !72, line: 72, baseType: !31, size: 32, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !835, file: !72, line: 73, baseType: !31, size: 32, offset: 928)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !835, file: !72, line: 74, baseType: !94, size: 64, offset: 960)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !835, file: !72, line: 77, baseType: !32, size: 16, offset: 1024)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !835, file: !72, line: 78, baseType: !99, size: 8, offset: 1040)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !835, file: !72, line: 79, baseType: !101, size: 8, offset: 1048)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !835, file: !72, line: 81, baseType: !105, size: 64, offset: 1088)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !835, file: !72, line: 89, baseType: !108, size: 64, offset: 1152)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !835, file: !72, line: 91, baseType: !110, size: 64, offset: 1216)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !835, file: !72, line: 92, baseType: !113, size: 64, offset: 1280)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !835, file: !72, line: 93, baseType: !851, size: 64, offset: 1344)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !835, file: !72, line: 94, baseType: !30, size: 64, offset: 1408)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !835, file: !72, line: 95, baseType: !33, size: 64, offset: 1472)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !835, file: !72, line: 96, baseType: !31, size: 32, offset: 1536)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !835, file: !72, line: 98, baseType: !120, size: 160, offset: 1568)
!867 = !{!827, !868, !869}
!868 = !DILocalVariable(name: "__fmt", arg: 2, scope: !828, file: !829, line: 133, type: !524)
!869 = !DILocalVariable(name: "__ap", arg: 3, scope: !828, file: !829, line: 133, type: !167)
!870 = !DILocation(line: 0, scope: !828, inlinedAt: !871)
!871 = distinct !DILocation(line: 229, column: 3, scope: !817)
!872 = !DILocation(line: 135, column: 10, scope: !828, inlinedAt: !871)
!873 = !{!874, !876}
!874 = distinct !{!874, !875, !"vfprintf.inline: argument 0"}
!875 = distinct !{!875, !"vfprintf.inline"}
!876 = distinct !{!876, !875, !"vfprintf.inline: argument 1"}
!877 = !DILocation(line: 232, column: 3, scope: !817)
!878 = !DILocation(line: 233, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !817, file: !157, line: 233, column: 7)
!880 = !DILocation(line: 233, column: 7, scope: !817)
!881 = !DILocalVariable(name: "errnum", arg: 1, scope: !882, file: !157, line: 188, type: !31)
!882 = distinct !DISubprogram(name: "print_errno_message", scope: !157, file: !157, line: 188, type: !431, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !883)
!883 = !{!881, !884, !885}
!884 = !DILocalVariable(name: "s", scope: !882, file: !157, line: 190, type: !36)
!885 = !DILocalVariable(name: "errbuf", scope: !882, file: !157, line: 193, type: !886)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8192, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 1024)
!889 = !DILocation(line: 0, scope: !882, inlinedAt: !890)
!890 = distinct !DILocation(line: 234, column: 5, scope: !879)
!891 = !DILocation(line: 193, column: 3, scope: !882, inlinedAt: !890)
!892 = !DILocation(line: 193, column: 8, scope: !882, inlinedAt: !890)
!893 = !DILocation(line: 195, column: 7, scope: !882, inlinedAt: !890)
!894 = !DILocation(line: 207, column: 9, scope: !895, inlinedAt: !890)
!895 = distinct !DILexicalBlock(scope: !882, file: !157, line: 207, column: 7)
!896 = !DILocation(line: 207, column: 7, scope: !882, inlinedAt: !890)
!897 = !DILocation(line: 208, column: 9, scope: !895, inlinedAt: !890)
!898 = !DILocation(line: 208, column: 5, scope: !895, inlinedAt: !890)
!899 = !DILocation(line: 214, column: 3, scope: !882, inlinedAt: !890)
!900 = !DILocation(line: 216, column: 1, scope: !882, inlinedAt: !890)
!901 = !DILocation(line: 234, column: 5, scope: !879)
!902 = !DILocation(line: 238, column: 3, scope: !817)
!903 = !DILocalVariable(name: "__c", arg: 1, scope: !904, file: !905, line: 101, type: !31)
!904 = distinct !DISubprogram(name: "putc_unlocked", scope: !905, file: !905, line: 101, type: !906, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !908)
!905 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!906 = !DISubroutineType(types: !907)
!907 = !{!31, !31, !833}
!908 = !{!903, !909}
!909 = !DILocalVariable(name: "__stream", arg: 2, scope: !904, file: !905, line: 101, type: !833)
!910 = !DILocation(line: 0, scope: !904, inlinedAt: !911)
!911 = distinct !DILocation(line: 238, column: 3, scope: !817)
!912 = !DILocation(line: 103, column: 10, scope: !904, inlinedAt: !911)
!913 = !{!914, !442, i64 40}
!914 = !{!"_IO_FILE", !529, i64 0, !442, i64 8, !442, i64 16, !442, i64 24, !442, i64 32, !442, i64 40, !442, i64 48, !442, i64 56, !442, i64 64, !442, i64 72, !442, i64 80, !442, i64 88, !442, i64 96, !442, i64 104, !529, i64 112, !529, i64 116, !915, i64 120, !563, i64 128, !443, i64 130, !443, i64 131, !442, i64 136, !915, i64 144, !442, i64 152, !442, i64 160, !442, i64 168, !442, i64 176, !915, i64 184, !529, i64 192, !443, i64 196}
!915 = !{!"long", !443, i64 0}
!916 = !{!914, !442, i64 48}
!917 = !{!"branch_weights", i32 2000, i32 1}
!918 = !DILocation(line: 240, column: 3, scope: !817)
!919 = !DILocation(line: 241, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !817, file: !157, line: 241, column: 7)
!921 = !DILocation(line: 241, column: 7, scope: !817)
!922 = !DILocation(line: 242, column: 5, scope: !920)
!923 = !DILocation(line: 243, column: 1, scope: !817)
!924 = !DISubprogram(name: "strerror_r", scope: !925, file: !925, line: 444, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!925 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!926 = !DISubroutineType(types: !927)
!927 = !{!28, !31, !28, !33}
!928 = !DISubprogram(name: "fflush_unlocked", scope: !166, file: !166, line: 239, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!929 = !DISubroutineType(types: !930)
!930 = !{!31, !833}
!931 = !DISubprogram(name: "fcntl", scope: !932, file: !932, line: 149, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!932 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!933 = !DISubroutineType(types: !934)
!934 = !{!31, !31, !31, null}
!935 = distinct !DISubprogram(name: "error", scope: !157, file: !157, line: 285, type: !936, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !31, !31, !36, null}
!938 = !{!939, !940, !941, !942}
!939 = !DILocalVariable(name: "status", arg: 1, scope: !935, file: !157, line: 285, type: !31)
!940 = !DILocalVariable(name: "errnum", arg: 2, scope: !935, file: !157, line: 285, type: !31)
!941 = !DILocalVariable(name: "message", arg: 3, scope: !935, file: !157, line: 285, type: !36)
!942 = !DILocalVariable(name: "ap", scope: !935, file: !157, line: 287, type: !165)
!943 = !DILocation(line: 0, scope: !935)
!944 = !DILocation(line: 287, column: 3, scope: !935)
!945 = !DILocation(line: 287, column: 11, scope: !935)
!946 = !DILocation(line: 288, column: 3, scope: !935)
!947 = !DILocation(line: 289, column: 3, scope: !935)
!948 = !DILocation(line: 290, column: 3, scope: !935)
!949 = !DILocation(line: 291, column: 1, scope: !935)
!950 = !DILocation(line: 0, scope: !162)
!951 = !DILocation(line: 298, column: 1, scope: !162)
!952 = !DILocation(line: 302, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !162, file: !157, line: 302, column: 7)
!954 = !DILocation(line: 302, column: 7, scope: !162)
!955 = !DILocation(line: 307, column: 11, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !157, line: 307, column: 11)
!957 = distinct !DILexicalBlock(scope: !953, file: !157, line: 303, column: 5)
!958 = !DILocation(line: 307, column: 27, scope: !956)
!959 = !DILocation(line: 308, column: 11, scope: !956)
!960 = !DILocation(line: 308, column: 28, scope: !956)
!961 = !DILocation(line: 308, column: 25, scope: !956)
!962 = !DILocation(line: 309, column: 15, scope: !956)
!963 = !DILocation(line: 309, column: 33, scope: !956)
!964 = !DILocation(line: 310, column: 19, scope: !956)
!965 = !DILocation(line: 311, column: 22, scope: !956)
!966 = !DILocation(line: 311, column: 56, scope: !956)
!967 = !DILocation(line: 307, column: 11, scope: !957)
!968 = !DILocation(line: 316, column: 21, scope: !957)
!969 = !DILocation(line: 317, column: 23, scope: !957)
!970 = !DILocation(line: 318, column: 5, scope: !957)
!971 = !DILocation(line: 327, column: 3, scope: !162)
!972 = !DILocation(line: 331, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !162, file: !157, line: 331, column: 7)
!974 = !DILocation(line: 331, column: 7, scope: !162)
!975 = !DILocation(line: 332, column: 5, scope: !973)
!976 = !DILocation(line: 338, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !157, line: 334, column: 5)
!978 = !DILocation(line: 346, column: 3, scope: !162)
!979 = !DILocation(line: 350, column: 3, scope: !162)
!980 = !DILocation(line: 356, column: 1, scope: !162)
!981 = distinct !DISubprogram(name: "error_at_line", scope: !157, file: !157, line: 359, type: !982, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !31, !31, !36, !6, !36, null}
!984 = !{!985, !986, !987, !988, !989, !990}
!985 = !DILocalVariable(name: "status", arg: 1, scope: !981, file: !157, line: 359, type: !31)
!986 = !DILocalVariable(name: "errnum", arg: 2, scope: !981, file: !157, line: 359, type: !31)
!987 = !DILocalVariable(name: "file_name", arg: 3, scope: !981, file: !157, line: 359, type: !36)
!988 = !DILocalVariable(name: "line_number", arg: 4, scope: !981, file: !157, line: 360, type: !6)
!989 = !DILocalVariable(name: "message", arg: 5, scope: !981, file: !157, line: 360, type: !36)
!990 = !DILocalVariable(name: "ap", scope: !981, file: !157, line: 362, type: !165)
!991 = !DILocation(line: 0, scope: !981)
!992 = !DILocation(line: 362, column: 3, scope: !981)
!993 = !DILocation(line: 362, column: 11, scope: !981)
!994 = !DILocation(line: 363, column: 3, scope: !981)
!995 = !DILocation(line: 364, column: 3, scope: !981)
!996 = !DILocation(line: 366, column: 3, scope: !981)
!997 = !DILocation(line: 367, column: 1, scope: !981)
!998 = distinct !DISubprogram(name: "getprogname", scope: !357, file: !357, line: 54, type: !999, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !520)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!36}
!1001 = !DILocation(line: 58, column: 10, scope: !998)
!1002 = !DILocation(line: 58, column: 3, scope: !998)
!1003 = distinct !DISubprogram(name: "set_program_name", scope: !198, file: !198, line: 37, type: !453, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DILocalVariable(name: "argv0", arg: 1, scope: !1003, file: !198, line: 37, type: !36)
!1006 = !DILocalVariable(name: "slash", scope: !1003, file: !198, line: 44, type: !36)
!1007 = !DILocalVariable(name: "base", scope: !1003, file: !198, line: 45, type: !36)
!1008 = !DILocation(line: 0, scope: !1003)
!1009 = !DILocation(line: 44, column: 23, scope: !1003)
!1010 = !DILocation(line: 45, column: 22, scope: !1003)
!1011 = !DILocation(line: 46, column: 17, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1003, file: !198, line: 46, column: 7)
!1013 = !DILocation(line: 46, column: 9, scope: !1012)
!1014 = !DILocation(line: 46, column: 25, scope: !1012)
!1015 = !DILocation(line: 46, column: 40, scope: !1012)
!1016 = !DILocalVariable(name: "__s1", arg: 1, scope: !1017, file: !478, line: 974, type: !646)
!1017 = distinct !DISubprogram(name: "memeq", scope: !478, file: !478, line: 974, type: !1018, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!42, !646, !646, !33}
!1020 = !{!1016, !1021, !1022}
!1021 = !DILocalVariable(name: "__s2", arg: 2, scope: !1017, file: !478, line: 974, type: !646)
!1022 = !DILocalVariable(name: "__n", arg: 3, scope: !1017, file: !478, line: 974, type: !33)
!1023 = !DILocation(line: 0, scope: !1017, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 46, column: 28, scope: !1012)
!1025 = !DILocation(line: 976, column: 11, scope: !1017, inlinedAt: !1024)
!1026 = !DILocation(line: 976, column: 10, scope: !1017, inlinedAt: !1024)
!1027 = !DILocation(line: 46, column: 7, scope: !1003)
!1028 = !DILocation(line: 49, column: 11, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !198, line: 49, column: 11)
!1030 = distinct !DILexicalBlock(scope: !1012, file: !198, line: 47, column: 5)
!1031 = !DILocation(line: 49, column: 36, scope: !1029)
!1032 = !DILocation(line: 49, column: 11, scope: !1030)
!1033 = !DILocation(line: 65, column: 16, scope: !1003)
!1034 = !DILocation(line: 71, column: 27, scope: !1003)
!1035 = !DILocation(line: 74, column: 33, scope: !1003)
!1036 = !DILocation(line: 76, column: 1, scope: !1003)
!1037 = !DILocation(line: 0, scope: !203)
!1038 = !DILocation(line: 40, column: 29, scope: !203)
!1039 = !DILocation(line: 41, column: 19, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !203, file: !204, line: 41, column: 7)
!1041 = !DILocation(line: 41, column: 7, scope: !203)
!1042 = !DILocation(line: 47, column: 3, scope: !203)
!1043 = !DILocation(line: 48, column: 3, scope: !203)
!1044 = !DILocation(line: 48, column: 13, scope: !203)
!1045 = !DILocalVariable(name: "ps", arg: 1, scope: !1046, file: !1047, line: 1135, type: !1050)
!1046 = distinct !DISubprogram(name: "mbszero", scope: !1047, file: !1047, line: 1135, type: !1048, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1051)
!1047 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1051 = !{!1045}
!1052 = !DILocation(line: 0, scope: !1046, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 48, column: 18, scope: !203)
!1054 = !DILocalVariable(name: "__dest", arg: 1, scope: !1055, file: !1056, line: 57, type: !30)
!1055 = distinct !DISubprogram(name: "memset", scope: !1056, file: !1056, line: 57, type: !1057, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1059)
!1056 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!30, !30, !31, !33}
!1059 = !{!1054, !1060, !1061}
!1060 = !DILocalVariable(name: "__ch", arg: 2, scope: !1055, file: !1056, line: 57, type: !31)
!1061 = !DILocalVariable(name: "__len", arg: 3, scope: !1055, file: !1056, line: 57, type: !33)
!1062 = !DILocation(line: 0, scope: !1055, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 1137, column: 3, scope: !1046, inlinedAt: !1053)
!1064 = !DILocation(line: 59, column: 10, scope: !1055, inlinedAt: !1063)
!1065 = !DILocation(line: 49, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !203, file: !204, line: 49, column: 7)
!1067 = !DILocation(line: 49, column: 39, scope: !1066)
!1068 = !DILocation(line: 49, column: 44, scope: !1066)
!1069 = !DILocation(line: 54, column: 1, scope: !203)
!1070 = !DISubprogram(name: "mbrtoc32", scope: !215, file: !215, line: 57, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!33, !1073, !524, !33, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1050)
!1076 = distinct !DISubprogram(name: "clone_quoting_options", scope: !240, file: !240, line: 113, type: !1077, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1080)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1079, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1080 = !{!1081, !1082, !1083}
!1081 = !DILocalVariable(name: "o", arg: 1, scope: !1076, file: !240, line: 113, type: !1079)
!1082 = !DILocalVariable(name: "saved_errno", scope: !1076, file: !240, line: 115, type: !31)
!1083 = !DILocalVariable(name: "p", scope: !1076, file: !240, line: 116, type: !1079)
!1084 = !DILocation(line: 0, scope: !1076)
!1085 = !DILocation(line: 115, column: 21, scope: !1076)
!1086 = !DILocation(line: 116, column: 40, scope: !1076)
!1087 = !DILocation(line: 116, column: 31, scope: !1076)
!1088 = !DILocation(line: 118, column: 9, scope: !1076)
!1089 = !DILocation(line: 119, column: 3, scope: !1076)
!1090 = distinct !DISubprogram(name: "get_quoting_style", scope: !240, file: !240, line: 124, type: !1091, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1095)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!242, !1093}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!1095 = !{!1096}
!1096 = !DILocalVariable(name: "o", arg: 1, scope: !1090, file: !240, line: 124, type: !1093)
!1097 = !DILocation(line: 0, scope: !1090)
!1098 = !DILocation(line: 126, column: 11, scope: !1090)
!1099 = !DILocation(line: 126, column: 46, scope: !1090)
!1100 = !{!1101, !443, i64 0}
!1101 = !{!"quoting_options", !443, i64 0, !529, i64 4, !443, i64 8, !442, i64 40, !442, i64 48}
!1102 = !DILocation(line: 126, column: 3, scope: !1090)
!1103 = distinct !DISubprogram(name: "set_quoting_style", scope: !240, file: !240, line: 132, type: !1104, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !1079, !242}
!1106 = !{!1107, !1108}
!1107 = !DILocalVariable(name: "o", arg: 1, scope: !1103, file: !240, line: 132, type: !1079)
!1108 = !DILocalVariable(name: "s", arg: 2, scope: !1103, file: !240, line: 132, type: !242)
!1109 = !DILocation(line: 0, scope: !1103)
!1110 = !DILocation(line: 134, column: 4, scope: !1103)
!1111 = !DILocation(line: 134, column: 39, scope: !1103)
!1112 = !DILocation(line: 134, column: 45, scope: !1103)
!1113 = !DILocation(line: 135, column: 1, scope: !1103)
!1114 = distinct !DISubprogram(name: "set_char_quoting", scope: !240, file: !240, line: 143, type: !1115, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!31, !1079, !29, !31}
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1124, !1125}
!1118 = !DILocalVariable(name: "o", arg: 1, scope: !1114, file: !240, line: 143, type: !1079)
!1119 = !DILocalVariable(name: "c", arg: 2, scope: !1114, file: !240, line: 143, type: !29)
!1120 = !DILocalVariable(name: "i", arg: 3, scope: !1114, file: !240, line: 143, type: !31)
!1121 = !DILocalVariable(name: "uc", scope: !1114, file: !240, line: 145, type: !38)
!1122 = !DILocalVariable(name: "p", scope: !1114, file: !240, line: 146, type: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1124 = !DILocalVariable(name: "shift", scope: !1114, file: !240, line: 148, type: !31)
!1125 = !DILocalVariable(name: "r", scope: !1114, file: !240, line: 149, type: !6)
!1126 = !DILocation(line: 0, scope: !1114)
!1127 = !DILocation(line: 147, column: 6, scope: !1114)
!1128 = !DILocation(line: 147, column: 62, scope: !1114)
!1129 = !DILocation(line: 147, column: 57, scope: !1114)
!1130 = !DILocation(line: 148, column: 15, scope: !1114)
!1131 = !DILocation(line: 149, column: 21, scope: !1114)
!1132 = !DILocation(line: 149, column: 24, scope: !1114)
!1133 = !DILocation(line: 149, column: 34, scope: !1114)
!1134 = !DILocation(line: 150, column: 13, scope: !1114)
!1135 = !DILocation(line: 150, column: 19, scope: !1114)
!1136 = !DILocation(line: 150, column: 24, scope: !1114)
!1137 = !DILocation(line: 150, column: 6, scope: !1114)
!1138 = !DILocation(line: 151, column: 3, scope: !1114)
!1139 = distinct !DISubprogram(name: "set_quoting_flags", scope: !240, file: !240, line: 159, type: !1140, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!31, !1079, !31}
!1142 = !{!1143, !1144, !1145}
!1143 = !DILocalVariable(name: "o", arg: 1, scope: !1139, file: !240, line: 159, type: !1079)
!1144 = !DILocalVariable(name: "i", arg: 2, scope: !1139, file: !240, line: 159, type: !31)
!1145 = !DILocalVariable(name: "r", scope: !1139, file: !240, line: 163, type: !31)
!1146 = !DILocation(line: 0, scope: !1139)
!1147 = !DILocation(line: 161, column: 8, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1139, file: !240, line: 161, column: 7)
!1149 = !DILocation(line: 161, column: 7, scope: !1139)
!1150 = !DILocation(line: 163, column: 14, scope: !1139)
!1151 = !{!1101, !529, i64 4}
!1152 = !DILocation(line: 164, column: 12, scope: !1139)
!1153 = !DILocation(line: 165, column: 3, scope: !1139)
!1154 = distinct !DISubprogram(name: "set_custom_quoting", scope: !240, file: !240, line: 169, type: !1155, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1157)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !1079, !36, !36}
!1157 = !{!1158, !1159, !1160}
!1158 = !DILocalVariable(name: "o", arg: 1, scope: !1154, file: !240, line: 169, type: !1079)
!1159 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1154, file: !240, line: 170, type: !36)
!1160 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1154, file: !240, line: 170, type: !36)
!1161 = !DILocation(line: 0, scope: !1154)
!1162 = !DILocation(line: 172, column: 8, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1154, file: !240, line: 172, column: 7)
!1164 = !DILocation(line: 172, column: 7, scope: !1154)
!1165 = !DILocation(line: 174, column: 6, scope: !1154)
!1166 = !DILocation(line: 174, column: 12, scope: !1154)
!1167 = !DILocation(line: 175, column: 8, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1154, file: !240, line: 175, column: 7)
!1169 = !DILocation(line: 175, column: 19, scope: !1168)
!1170 = !DILocation(line: 176, column: 5, scope: !1168)
!1171 = !DILocation(line: 177, column: 6, scope: !1154)
!1172 = !DILocation(line: 177, column: 17, scope: !1154)
!1173 = !{!1101, !442, i64 40}
!1174 = !DILocation(line: 178, column: 6, scope: !1154)
!1175 = !DILocation(line: 178, column: 18, scope: !1154)
!1176 = !{!1101, !442, i64 48}
!1177 = !DILocation(line: 179, column: 1, scope: !1154)
!1178 = distinct !DISubprogram(name: "quotearg_buffer", scope: !240, file: !240, line: 774, type: !1179, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1181)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!33, !28, !33, !36, !33, !1093}
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1182 = !DILocalVariable(name: "buffer", arg: 1, scope: !1178, file: !240, line: 774, type: !28)
!1183 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1178, file: !240, line: 774, type: !33)
!1184 = !DILocalVariable(name: "arg", arg: 3, scope: !1178, file: !240, line: 775, type: !36)
!1185 = !DILocalVariable(name: "argsize", arg: 4, scope: !1178, file: !240, line: 775, type: !33)
!1186 = !DILocalVariable(name: "o", arg: 5, scope: !1178, file: !240, line: 776, type: !1093)
!1187 = !DILocalVariable(name: "p", scope: !1178, file: !240, line: 778, type: !1093)
!1188 = !DILocalVariable(name: "saved_errno", scope: !1178, file: !240, line: 779, type: !31)
!1189 = !DILocalVariable(name: "r", scope: !1178, file: !240, line: 780, type: !33)
!1190 = !DILocation(line: 0, scope: !1178)
!1191 = !DILocation(line: 778, column: 37, scope: !1178)
!1192 = !DILocation(line: 779, column: 21, scope: !1178)
!1193 = !DILocation(line: 781, column: 43, scope: !1178)
!1194 = !DILocation(line: 781, column: 53, scope: !1178)
!1195 = !DILocation(line: 781, column: 60, scope: !1178)
!1196 = !DILocation(line: 782, column: 43, scope: !1178)
!1197 = !DILocation(line: 782, column: 58, scope: !1178)
!1198 = !DILocation(line: 780, column: 14, scope: !1178)
!1199 = !DILocation(line: 783, column: 9, scope: !1178)
!1200 = !DILocation(line: 784, column: 3, scope: !1178)
!1201 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !240, file: !240, line: 251, type: !1202, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1206)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!33, !28, !33, !36, !33, !242, !31, !1204, !36, !36}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1231, !1233, !1236, !1237, !1238, !1239, !1242, !1243, !1246, !1250, !1251, !1259, !1262, !1263, !1265, !1266, !1267, !1268}
!1207 = !DILocalVariable(name: "buffer", arg: 1, scope: !1201, file: !240, line: 251, type: !28)
!1208 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1201, file: !240, line: 251, type: !33)
!1209 = !DILocalVariable(name: "arg", arg: 3, scope: !1201, file: !240, line: 252, type: !36)
!1210 = !DILocalVariable(name: "argsize", arg: 4, scope: !1201, file: !240, line: 252, type: !33)
!1211 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1201, file: !240, line: 253, type: !242)
!1212 = !DILocalVariable(name: "flags", arg: 6, scope: !1201, file: !240, line: 253, type: !31)
!1213 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1201, file: !240, line: 254, type: !1204)
!1214 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1201, file: !240, line: 255, type: !36)
!1215 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1201, file: !240, line: 256, type: !36)
!1216 = !DILocalVariable(name: "unibyte_locale", scope: !1201, file: !240, line: 258, type: !42)
!1217 = !DILocalVariable(name: "len", scope: !1201, file: !240, line: 260, type: !33)
!1218 = !DILocalVariable(name: "orig_buffersize", scope: !1201, file: !240, line: 261, type: !33)
!1219 = !DILocalVariable(name: "quote_string", scope: !1201, file: !240, line: 262, type: !36)
!1220 = !DILocalVariable(name: "quote_string_len", scope: !1201, file: !240, line: 263, type: !33)
!1221 = !DILocalVariable(name: "backslash_escapes", scope: !1201, file: !240, line: 264, type: !42)
!1222 = !DILocalVariable(name: "elide_outer_quotes", scope: !1201, file: !240, line: 265, type: !42)
!1223 = !DILocalVariable(name: "encountered_single_quote", scope: !1201, file: !240, line: 266, type: !42)
!1224 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1201, file: !240, line: 267, type: !42)
!1225 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1201, file: !240, line: 309, type: !42)
!1226 = !DILocalVariable(name: "lq", scope: !1227, file: !240, line: 361, type: !36)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !240, line: 361, column: 11)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !240, line: 360, column: 13)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !240, line: 333, column: 7)
!1230 = distinct !DILexicalBlock(scope: !1201, file: !240, line: 312, column: 5)
!1231 = !DILocalVariable(name: "i", scope: !1232, file: !240, line: 395, type: !33)
!1232 = distinct !DILexicalBlock(scope: !1201, file: !240, line: 395, column: 3)
!1233 = !DILocalVariable(name: "is_right_quote", scope: !1234, file: !240, line: 397, type: !42)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !240, line: 396, column: 5)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !240, line: 395, column: 3)
!1236 = !DILocalVariable(name: "escaping", scope: !1234, file: !240, line: 398, type: !42)
!1237 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1234, file: !240, line: 399, type: !42)
!1238 = !DILocalVariable(name: "c", scope: !1234, file: !240, line: 417, type: !38)
!1239 = !DILocalVariable(name: "m", scope: !1240, file: !240, line: 598, type: !33)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !240, line: 596, column: 11)
!1241 = distinct !DILexicalBlock(scope: !1234, file: !240, line: 419, column: 9)
!1242 = !DILocalVariable(name: "printable", scope: !1240, file: !240, line: 600, type: !42)
!1243 = !DILocalVariable(name: "mbs", scope: !1244, file: !240, line: 609, type: !299)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !240, line: 608, column: 15)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !240, line: 602, column: 17)
!1246 = !DILocalVariable(name: "w", scope: !1247, file: !240, line: 618, type: !214)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !240, line: 617, column: 19)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !240, line: 616, column: 17)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !240, line: 616, column: 17)
!1250 = !DILocalVariable(name: "bytes", scope: !1247, file: !240, line: 619, type: !33)
!1251 = !DILocalVariable(name: "j", scope: !1252, file: !240, line: 648, type: !33)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !240, line: 648, column: 29)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !240, line: 647, column: 27)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !240, line: 645, column: 29)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !240, line: 636, column: 23)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !240, line: 628, column: 30)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !240, line: 623, column: 30)
!1258 = distinct !DILexicalBlock(scope: !1247, file: !240, line: 621, column: 25)
!1259 = !DILocalVariable(name: "ilim", scope: !1260, file: !240, line: 674, type: !33)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !240, line: 671, column: 15)
!1261 = distinct !DILexicalBlock(scope: !1240, file: !240, line: 670, column: 17)
!1262 = !DILabel(scope: !1201, name: "process_input", file: !240, line: 308)
!1263 = !DILabel(scope: !1264, name: "c_and_shell_escape", file: !240, line: 502)
!1264 = distinct !DILexicalBlock(scope: !1241, file: !240, line: 478, column: 9)
!1265 = !DILabel(scope: !1264, name: "c_escape", file: !240, line: 507)
!1266 = !DILabel(scope: !1234, name: "store_escape", file: !240, line: 709)
!1267 = !DILabel(scope: !1234, name: "store_c", file: !240, line: 712)
!1268 = !DILabel(scope: !1201, name: "force_outer_quoting_style", file: !240, line: 753)
!1269 = !DILocation(line: 0, scope: !1201)
!1270 = !DILocation(line: 258, column: 25, scope: !1201)
!1271 = !DILocation(line: 258, column: 36, scope: !1201)
!1272 = !DILocation(line: 267, column: 3, scope: !1201)
!1273 = !DILocation(line: 261, column: 10, scope: !1201)
!1274 = !DILocation(line: 262, column: 15, scope: !1201)
!1275 = !DILocation(line: 263, column: 10, scope: !1201)
!1276 = !DILocation(line: 308, column: 2, scope: !1201)
!1277 = !DILocation(line: 311, column: 3, scope: !1201)
!1278 = !DILocation(line: 318, column: 11, scope: !1230)
!1279 = !DILocation(line: 319, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !240, line: 319, column: 9)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !240, line: 319, column: 9)
!1282 = distinct !DILexicalBlock(scope: !1230, file: !240, line: 318, column: 11)
!1283 = !DILocation(line: 319, column: 9, scope: !1281)
!1284 = !DILocation(line: 0, scope: !290, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 357, column: 26, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !240, line: 335, column: 11)
!1287 = distinct !DILexicalBlock(scope: !1229, file: !240, line: 334, column: 13)
!1288 = !DILocation(line: 199, column: 29, scope: !290, inlinedAt: !1285)
!1289 = !DILocation(line: 201, column: 19, scope: !1290, inlinedAt: !1285)
!1290 = distinct !DILexicalBlock(scope: !290, file: !240, line: 201, column: 7)
!1291 = !DILocation(line: 201, column: 7, scope: !290, inlinedAt: !1285)
!1292 = !DILocation(line: 229, column: 3, scope: !290, inlinedAt: !1285)
!1293 = !DILocation(line: 230, column: 3, scope: !290, inlinedAt: !1285)
!1294 = !DILocation(line: 230, column: 13, scope: !290, inlinedAt: !1285)
!1295 = !DILocalVariable(name: "ps", arg: 1, scope: !1296, file: !1047, line: 1135, type: !1299)
!1296 = distinct !DISubprogram(name: "mbszero", scope: !1047, file: !1047, line: 1135, type: !1297, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1300)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1300 = !{!1295}
!1301 = !DILocation(line: 0, scope: !1296, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 230, column: 18, scope: !290, inlinedAt: !1285)
!1303 = !DILocalVariable(name: "__dest", arg: 1, scope: !1304, file: !1056, line: 57, type: !30)
!1304 = distinct !DISubprogram(name: "memset", scope: !1056, file: !1056, line: 57, type: !1057, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1305)
!1305 = !{!1303, !1306, !1307}
!1306 = !DILocalVariable(name: "__ch", arg: 2, scope: !1304, file: !1056, line: 57, type: !31)
!1307 = !DILocalVariable(name: "__len", arg: 3, scope: !1304, file: !1056, line: 57, type: !33)
!1308 = !DILocation(line: 0, scope: !1304, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 1137, column: 3, scope: !1296, inlinedAt: !1302)
!1310 = !DILocation(line: 59, column: 10, scope: !1304, inlinedAt: !1309)
!1311 = !DILocation(line: 231, column: 7, scope: !1312, inlinedAt: !1285)
!1312 = distinct !DILexicalBlock(scope: !290, file: !240, line: 231, column: 7)
!1313 = !DILocation(line: 231, column: 40, scope: !1312, inlinedAt: !1285)
!1314 = !DILocation(line: 231, column: 45, scope: !1312, inlinedAt: !1285)
!1315 = !DILocation(line: 235, column: 1, scope: !290, inlinedAt: !1285)
!1316 = !DILocation(line: 0, scope: !290, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 358, column: 27, scope: !1286)
!1318 = !DILocation(line: 199, column: 29, scope: !290, inlinedAt: !1317)
!1319 = !DILocation(line: 201, column: 19, scope: !1290, inlinedAt: !1317)
!1320 = !DILocation(line: 201, column: 7, scope: !290, inlinedAt: !1317)
!1321 = !DILocation(line: 229, column: 3, scope: !290, inlinedAt: !1317)
!1322 = !DILocation(line: 230, column: 3, scope: !290, inlinedAt: !1317)
!1323 = !DILocation(line: 230, column: 13, scope: !290, inlinedAt: !1317)
!1324 = !DILocation(line: 0, scope: !1296, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 230, column: 18, scope: !290, inlinedAt: !1317)
!1326 = !DILocation(line: 0, scope: !1304, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 1137, column: 3, scope: !1296, inlinedAt: !1325)
!1328 = !DILocation(line: 59, column: 10, scope: !1304, inlinedAt: !1327)
!1329 = !DILocation(line: 231, column: 7, scope: !1312, inlinedAt: !1317)
!1330 = !DILocation(line: 231, column: 40, scope: !1312, inlinedAt: !1317)
!1331 = !DILocation(line: 231, column: 45, scope: !1312, inlinedAt: !1317)
!1332 = !DILocation(line: 235, column: 1, scope: !290, inlinedAt: !1317)
!1333 = !DILocation(line: 360, column: 13, scope: !1229)
!1334 = !DILocation(line: 0, scope: !1227)
!1335 = !DILocation(line: 361, column: 45, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1227, file: !240, line: 361, column: 11)
!1337 = !DILocation(line: 361, column: 11, scope: !1227)
!1338 = !DILocation(line: 362, column: 13, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !240, line: 362, column: 13)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !240, line: 362, column: 13)
!1341 = !DILocation(line: 362, column: 13, scope: !1340)
!1342 = !DILocation(line: 361, column: 52, scope: !1336)
!1343 = distinct !{!1343, !1337, !1344, !494}
!1344 = !DILocation(line: 362, column: 13, scope: !1227)
!1345 = !DILocation(line: 260, column: 10, scope: !1201)
!1346 = !DILocation(line: 365, column: 28, scope: !1229)
!1347 = !DILocation(line: 367, column: 7, scope: !1230)
!1348 = !DILocation(line: 370, column: 7, scope: !1230)
!1349 = !DILocation(line: 376, column: 11, scope: !1230)
!1350 = !DILocation(line: 381, column: 11, scope: !1230)
!1351 = !DILocation(line: 382, column: 9, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !240, line: 382, column: 9)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !240, line: 382, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1230, file: !240, line: 381, column: 11)
!1355 = !DILocation(line: 382, column: 9, scope: !1353)
!1356 = !DILocation(line: 389, column: 7, scope: !1230)
!1357 = !DILocation(line: 392, column: 7, scope: !1230)
!1358 = !DILocation(line: 0, scope: !1232)
!1359 = !DILocation(line: 395, column: 8, scope: !1232)
!1360 = !DILocation(line: 395, column: 34, scope: !1235)
!1361 = !DILocation(line: 395, column: 26, scope: !1235)
!1362 = !DILocation(line: 395, column: 48, scope: !1235)
!1363 = !DILocation(line: 395, column: 55, scope: !1235)
!1364 = !DILocation(line: 395, column: 3, scope: !1232)
!1365 = !DILocation(line: 395, column: 67, scope: !1235)
!1366 = !DILocation(line: 0, scope: !1234)
!1367 = !DILocation(line: 402, column: 11, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1234, file: !240, line: 401, column: 11)
!1369 = !DILocation(line: 404, column: 17, scope: !1368)
!1370 = !DILocation(line: 405, column: 39, scope: !1368)
!1371 = !DILocation(line: 409, column: 32, scope: !1368)
!1372 = !DILocation(line: 405, column: 19, scope: !1368)
!1373 = !DILocation(line: 405, column: 15, scope: !1368)
!1374 = !DILocation(line: 410, column: 11, scope: !1368)
!1375 = !DILocation(line: 410, column: 25, scope: !1368)
!1376 = !DILocalVariable(name: "__s1", arg: 1, scope: !1377, file: !478, line: 974, type: !646)
!1377 = distinct !DISubprogram(name: "memeq", scope: !478, file: !478, line: 974, type: !1018, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1378)
!1378 = !{!1376, !1379, !1380}
!1379 = !DILocalVariable(name: "__s2", arg: 2, scope: !1377, file: !478, line: 974, type: !646)
!1380 = !DILocalVariable(name: "__n", arg: 3, scope: !1377, file: !478, line: 974, type: !33)
!1381 = !DILocation(line: 0, scope: !1377, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 410, column: 14, scope: !1368)
!1383 = !DILocation(line: 976, column: 11, scope: !1377, inlinedAt: !1382)
!1384 = !DILocation(line: 976, column: 10, scope: !1377, inlinedAt: !1382)
!1385 = !DILocation(line: 401, column: 11, scope: !1234)
!1386 = !DILocation(line: 417, column: 25, scope: !1234)
!1387 = !DILocation(line: 418, column: 7, scope: !1234)
!1388 = !DILocation(line: 421, column: 15, scope: !1241)
!1389 = !DILocation(line: 423, column: 15, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !240, line: 423, column: 15)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !240, line: 422, column: 13)
!1392 = distinct !DILexicalBlock(scope: !1241, file: !240, line: 421, column: 15)
!1393 = !DILocation(line: 423, column: 15, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !240, line: 423, column: 15)
!1395 = !DILocation(line: 423, column: 15, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !240, line: 423, column: 15)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !240, line: 423, column: 15)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !240, line: 423, column: 15)
!1399 = !DILocation(line: 423, column: 15, scope: !1397)
!1400 = !DILocation(line: 423, column: 15, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !240, line: 423, column: 15)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !240, line: 423, column: 15)
!1403 = !DILocation(line: 423, column: 15, scope: !1402)
!1404 = !DILocation(line: 423, column: 15, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !240, line: 423, column: 15)
!1406 = distinct !DILexicalBlock(scope: !1398, file: !240, line: 423, column: 15)
!1407 = !DILocation(line: 423, column: 15, scope: !1406)
!1408 = !DILocation(line: 423, column: 15, scope: !1398)
!1409 = !DILocation(line: 423, column: 15, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !240, line: 423, column: 15)
!1411 = distinct !DILexicalBlock(scope: !1390, file: !240, line: 423, column: 15)
!1412 = !DILocation(line: 423, column: 15, scope: !1411)
!1413 = !DILocation(line: 431, column: 19, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1391, file: !240, line: 430, column: 19)
!1415 = !DILocation(line: 431, column: 24, scope: !1414)
!1416 = !DILocation(line: 431, column: 28, scope: !1414)
!1417 = !DILocation(line: 431, column: 38, scope: !1414)
!1418 = !DILocation(line: 431, column: 48, scope: !1414)
!1419 = !DILocation(line: 431, column: 59, scope: !1414)
!1420 = !DILocation(line: 433, column: 19, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !240, line: 433, column: 19)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !240, line: 433, column: 19)
!1423 = distinct !DILexicalBlock(scope: !1414, file: !240, line: 432, column: 17)
!1424 = !DILocation(line: 433, column: 19, scope: !1422)
!1425 = !DILocation(line: 434, column: 19, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !240, line: 434, column: 19)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !240, line: 434, column: 19)
!1428 = !DILocation(line: 434, column: 19, scope: !1427)
!1429 = !DILocation(line: 435, column: 17, scope: !1423)
!1430 = !DILocation(line: 442, column: 20, scope: !1392)
!1431 = !DILocation(line: 447, column: 11, scope: !1241)
!1432 = !DILocation(line: 450, column: 19, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1241, file: !240, line: 448, column: 13)
!1434 = !DILocation(line: 456, column: 19, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1433, file: !240, line: 455, column: 19)
!1436 = !DILocation(line: 456, column: 24, scope: !1435)
!1437 = !DILocation(line: 456, column: 28, scope: !1435)
!1438 = !DILocation(line: 456, column: 38, scope: !1435)
!1439 = !DILocation(line: 456, column: 47, scope: !1435)
!1440 = !DILocation(line: 456, column: 41, scope: !1435)
!1441 = !DILocation(line: 456, column: 52, scope: !1435)
!1442 = !DILocation(line: 455, column: 19, scope: !1433)
!1443 = !DILocation(line: 457, column: 25, scope: !1435)
!1444 = !DILocation(line: 457, column: 17, scope: !1435)
!1445 = !DILocation(line: 464, column: 25, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1435, file: !240, line: 458, column: 19)
!1447 = !DILocation(line: 468, column: 21, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !240, line: 468, column: 21)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !240, line: 468, column: 21)
!1450 = !DILocation(line: 468, column: 21, scope: !1449)
!1451 = !DILocation(line: 469, column: 21, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !240, line: 469, column: 21)
!1453 = distinct !DILexicalBlock(scope: !1446, file: !240, line: 469, column: 21)
!1454 = !DILocation(line: 469, column: 21, scope: !1453)
!1455 = !DILocation(line: 470, column: 21, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !240, line: 470, column: 21)
!1457 = distinct !DILexicalBlock(scope: !1446, file: !240, line: 470, column: 21)
!1458 = !DILocation(line: 470, column: 21, scope: !1457)
!1459 = !DILocation(line: 471, column: 21, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !240, line: 471, column: 21)
!1461 = distinct !DILexicalBlock(scope: !1446, file: !240, line: 471, column: 21)
!1462 = !DILocation(line: 471, column: 21, scope: !1461)
!1463 = !DILocation(line: 472, column: 21, scope: !1446)
!1464 = !DILocation(line: 482, column: 33, scope: !1264)
!1465 = !DILocation(line: 483, column: 33, scope: !1264)
!1466 = !DILocation(line: 485, column: 33, scope: !1264)
!1467 = !DILocation(line: 486, column: 33, scope: !1264)
!1468 = !DILocation(line: 487, column: 33, scope: !1264)
!1469 = !DILocation(line: 490, column: 17, scope: !1264)
!1470 = !DILocation(line: 492, column: 21, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !240, line: 491, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1264, file: !240, line: 490, column: 17)
!1473 = !DILocation(line: 499, column: 35, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1264, file: !240, line: 499, column: 17)
!1475 = !DILocation(line: 499, column: 57, scope: !1474)
!1476 = !DILocation(line: 0, scope: !1264)
!1477 = !DILocation(line: 502, column: 11, scope: !1264)
!1478 = !DILocation(line: 504, column: 17, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1264, file: !240, line: 503, column: 17)
!1480 = !DILocation(line: 507, column: 11, scope: !1264)
!1481 = !DILocation(line: 508, column: 17, scope: !1264)
!1482 = !DILocation(line: 517, column: 15, scope: !1241)
!1483 = !DILocation(line: 517, column: 40, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1241, file: !240, line: 517, column: 15)
!1485 = !DILocation(line: 517, column: 47, scope: !1484)
!1486 = !DILocation(line: 517, column: 18, scope: !1484)
!1487 = !DILocation(line: 521, column: 17, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1241, file: !240, line: 521, column: 15)
!1489 = !DILocation(line: 521, column: 15, scope: !1241)
!1490 = !DILocation(line: 525, column: 11, scope: !1241)
!1491 = !DILocation(line: 537, column: 15, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1241, file: !240, line: 536, column: 15)
!1493 = !DILocation(line: 536, column: 15, scope: !1241)
!1494 = !DILocation(line: 544, column: 15, scope: !1241)
!1495 = !DILocation(line: 546, column: 19, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !240, line: 545, column: 13)
!1497 = distinct !DILexicalBlock(scope: !1241, file: !240, line: 544, column: 15)
!1498 = !DILocation(line: 549, column: 19, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !240, line: 549, column: 19)
!1500 = !DILocation(line: 549, column: 30, scope: !1499)
!1501 = !DILocation(line: 558, column: 15, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !240, line: 558, column: 15)
!1503 = distinct !DILexicalBlock(scope: !1496, file: !240, line: 558, column: 15)
!1504 = !DILocation(line: 558, column: 15, scope: !1503)
!1505 = !DILocation(line: 559, column: 15, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !240, line: 559, column: 15)
!1507 = distinct !DILexicalBlock(scope: !1496, file: !240, line: 559, column: 15)
!1508 = !DILocation(line: 559, column: 15, scope: !1507)
!1509 = !DILocation(line: 560, column: 15, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !240, line: 560, column: 15)
!1511 = distinct !DILexicalBlock(scope: !1496, file: !240, line: 560, column: 15)
!1512 = !DILocation(line: 560, column: 15, scope: !1511)
!1513 = !DILocation(line: 562, column: 13, scope: !1496)
!1514 = !DILocation(line: 602, column: 17, scope: !1240)
!1515 = !DILocation(line: 0, scope: !1240)
!1516 = !DILocation(line: 605, column: 29, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1245, file: !240, line: 603, column: 15)
!1518 = !DILocation(line: 605, column: 41, scope: !1517)
!1519 = !DILocation(line: 670, column: 23, scope: !1261)
!1520 = !DILocation(line: 609, column: 17, scope: !1244)
!1521 = !DILocation(line: 609, column: 27, scope: !1244)
!1522 = !DILocation(line: 0, scope: !1296, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 609, column: 32, scope: !1244)
!1524 = !DILocation(line: 0, scope: !1304, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 1137, column: 3, scope: !1296, inlinedAt: !1523)
!1526 = !DILocation(line: 59, column: 10, scope: !1304, inlinedAt: !1525)
!1527 = !DILocation(line: 613, column: 29, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1244, file: !240, line: 613, column: 21)
!1529 = !DILocation(line: 613, column: 21, scope: !1244)
!1530 = !DILocation(line: 614, column: 29, scope: !1528)
!1531 = !DILocation(line: 614, column: 19, scope: !1528)
!1532 = !DILocation(line: 618, column: 21, scope: !1247)
!1533 = !DILocation(line: 620, column: 54, scope: !1247)
!1534 = !DILocation(line: 0, scope: !1247)
!1535 = !DILocation(line: 619, column: 36, scope: !1247)
!1536 = !DILocation(line: 621, column: 25, scope: !1247)
!1537 = !DILocation(line: 631, column: 38, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1256, file: !240, line: 629, column: 23)
!1539 = !DILocation(line: 631, column: 48, scope: !1538)
!1540 = !DILocation(line: 665, column: 19, scope: !1248)
!1541 = !DILocation(line: 666, column: 15, scope: !1245)
!1542 = !DILocation(line: 626, column: 25, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1257, file: !240, line: 624, column: 23)
!1544 = !DILocation(line: 631, column: 51, scope: !1538)
!1545 = !DILocation(line: 631, column: 25, scope: !1538)
!1546 = !DILocation(line: 632, column: 28, scope: !1538)
!1547 = !DILocation(line: 631, column: 34, scope: !1538)
!1548 = distinct !{!1548, !1545, !1546, !494}
!1549 = !DILocation(line: 646, column: 29, scope: !1254)
!1550 = !DILocation(line: 0, scope: !1252)
!1551 = !DILocation(line: 649, column: 49, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1252, file: !240, line: 648, column: 29)
!1553 = !DILocation(line: 649, column: 39, scope: !1552)
!1554 = !DILocation(line: 649, column: 31, scope: !1552)
!1555 = !DILocation(line: 648, column: 60, scope: !1552)
!1556 = !DILocation(line: 648, column: 50, scope: !1552)
!1557 = !DILocation(line: 648, column: 29, scope: !1252)
!1558 = distinct !{!1558, !1557, !1559, !494}
!1559 = !DILocation(line: 654, column: 33, scope: !1252)
!1560 = !DILocation(line: 657, column: 43, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1255, file: !240, line: 657, column: 29)
!1562 = !DILocalVariable(name: "wc", arg: 1, scope: !1563, file: !1564, line: 865, type: !1567)
!1563 = distinct !DISubprogram(name: "c32isprint", scope: !1564, file: !1564, line: 865, type: !1565, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1569)
!1564 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!31, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1568, line: 20, baseType: !6)
!1568 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1569 = !{!1562}
!1570 = !DILocation(line: 0, scope: !1563, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 657, column: 31, scope: !1561)
!1572 = !DILocation(line: 871, column: 10, scope: !1563, inlinedAt: !1571)
!1573 = !DILocation(line: 657, column: 31, scope: !1561)
!1574 = !DILocation(line: 664, column: 23, scope: !1247)
!1575 = !DILocation(line: 753, column: 2, scope: !1201)
!1576 = !DILocation(line: 756, column: 51, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1201, file: !240, line: 756, column: 7)
!1578 = !DILocation(line: 670, column: 19, scope: !1261)
!1579 = !DILocation(line: 670, column: 45, scope: !1261)
!1580 = !DILocation(line: 674, column: 33, scope: !1260)
!1581 = !DILocation(line: 0, scope: !1260)
!1582 = !DILocation(line: 676, column: 17, scope: !1260)
!1583 = !DILocation(line: 398, column: 12, scope: !1234)
!1584 = !DILocation(line: 678, column: 43, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !240, line: 678, column: 25)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !240, line: 677, column: 19)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !240, line: 676, column: 17)
!1588 = distinct !DILexicalBlock(scope: !1260, file: !240, line: 676, column: 17)
!1589 = !DILocation(line: 680, column: 25, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !240, line: 680, column: 25)
!1591 = distinct !DILexicalBlock(scope: !1585, file: !240, line: 679, column: 23)
!1592 = !DILocation(line: 680, column: 25, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !240, line: 680, column: 25)
!1594 = !DILocation(line: 680, column: 25, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !240, line: 680, column: 25)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !240, line: 680, column: 25)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !240, line: 680, column: 25)
!1598 = !DILocation(line: 680, column: 25, scope: !1596)
!1599 = !DILocation(line: 680, column: 25, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !240, line: 680, column: 25)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !240, line: 680, column: 25)
!1602 = !DILocation(line: 680, column: 25, scope: !1601)
!1603 = !DILocation(line: 680, column: 25, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !240, line: 680, column: 25)
!1605 = distinct !DILexicalBlock(scope: !1597, file: !240, line: 680, column: 25)
!1606 = !DILocation(line: 680, column: 25, scope: !1605)
!1607 = !DILocation(line: 680, column: 25, scope: !1597)
!1608 = !DILocation(line: 680, column: 25, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !240, line: 680, column: 25)
!1610 = distinct !DILexicalBlock(scope: !1590, file: !240, line: 680, column: 25)
!1611 = !DILocation(line: 680, column: 25, scope: !1610)
!1612 = !DILocation(line: 681, column: 25, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !240, line: 681, column: 25)
!1614 = distinct !DILexicalBlock(scope: !1591, file: !240, line: 681, column: 25)
!1615 = !DILocation(line: 681, column: 25, scope: !1614)
!1616 = !DILocation(line: 682, column: 25, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !240, line: 682, column: 25)
!1618 = distinct !DILexicalBlock(scope: !1591, file: !240, line: 682, column: 25)
!1619 = !DILocation(line: 682, column: 25, scope: !1618)
!1620 = !DILocation(line: 683, column: 38, scope: !1591)
!1621 = !DILocation(line: 683, column: 33, scope: !1591)
!1622 = !DILocation(line: 684, column: 23, scope: !1591)
!1623 = !DILocation(line: 685, column: 30, scope: !1585)
!1624 = !DILocation(line: 687, column: 25, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !240, line: 687, column: 25)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !240, line: 687, column: 25)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !240, line: 686, column: 23)
!1628 = distinct !DILexicalBlock(scope: !1585, file: !240, line: 685, column: 30)
!1629 = !DILocation(line: 687, column: 25, scope: !1626)
!1630 = !DILocation(line: 689, column: 23, scope: !1627)
!1631 = !DILocation(line: 690, column: 35, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1586, file: !240, line: 690, column: 25)
!1633 = !DILocation(line: 690, column: 30, scope: !1632)
!1634 = !DILocation(line: 690, column: 25, scope: !1586)
!1635 = !DILocation(line: 692, column: 21, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !240, line: 692, column: 21)
!1637 = distinct !DILexicalBlock(scope: !1586, file: !240, line: 692, column: 21)
!1638 = !DILocation(line: 692, column: 21, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !240, line: 692, column: 21)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !240, line: 692, column: 21)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !240, line: 692, column: 21)
!1642 = !DILocation(line: 692, column: 21, scope: !1640)
!1643 = !DILocation(line: 692, column: 21, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !240, line: 692, column: 21)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !240, line: 692, column: 21)
!1646 = !DILocation(line: 692, column: 21, scope: !1645)
!1647 = !DILocation(line: 692, column: 21, scope: !1641)
!1648 = !DILocation(line: 0, scope: !1586)
!1649 = !DILocation(line: 693, column: 21, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !240, line: 693, column: 21)
!1651 = distinct !DILexicalBlock(scope: !1586, file: !240, line: 693, column: 21)
!1652 = !DILocation(line: 693, column: 21, scope: !1651)
!1653 = !DILocation(line: 694, column: 25, scope: !1586)
!1654 = !DILocation(line: 676, column: 17, scope: !1587)
!1655 = distinct !{!1655, !1656, !1657}
!1656 = !DILocation(line: 676, column: 17, scope: !1588)
!1657 = !DILocation(line: 695, column: 19, scope: !1588)
!1658 = !DILocation(line: 409, column: 30, scope: !1368)
!1659 = !DILocation(line: 702, column: 34, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1234, file: !240, line: 702, column: 11)
!1661 = !DILocation(line: 704, column: 14, scope: !1660)
!1662 = !DILocation(line: 705, column: 14, scope: !1660)
!1663 = !DILocation(line: 705, column: 35, scope: !1660)
!1664 = !DILocation(line: 705, column: 17, scope: !1660)
!1665 = !DILocation(line: 705, column: 47, scope: !1660)
!1666 = !DILocation(line: 705, column: 65, scope: !1660)
!1667 = !DILocation(line: 706, column: 11, scope: !1660)
!1668 = !DILocation(line: 702, column: 11, scope: !1234)
!1669 = !DILocation(line: 395, column: 15, scope: !1232)
!1670 = !DILocation(line: 709, column: 5, scope: !1234)
!1671 = !DILocation(line: 710, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1234, file: !240, line: 710, column: 7)
!1673 = !DILocation(line: 710, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1672, file: !240, line: 710, column: 7)
!1675 = !DILocation(line: 710, column: 7, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !240, line: 710, column: 7)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !240, line: 710, column: 7)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !240, line: 710, column: 7)
!1679 = !DILocation(line: 710, column: 7, scope: !1677)
!1680 = !DILocation(line: 710, column: 7, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !240, line: 710, column: 7)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !240, line: 710, column: 7)
!1683 = !DILocation(line: 710, column: 7, scope: !1682)
!1684 = !DILocation(line: 710, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !240, line: 710, column: 7)
!1686 = distinct !DILexicalBlock(scope: !1678, file: !240, line: 710, column: 7)
!1687 = !DILocation(line: 710, column: 7, scope: !1686)
!1688 = !DILocation(line: 710, column: 7, scope: !1678)
!1689 = !DILocation(line: 710, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !240, line: 710, column: 7)
!1691 = distinct !DILexicalBlock(scope: !1672, file: !240, line: 710, column: 7)
!1692 = !DILocation(line: 710, column: 7, scope: !1691)
!1693 = !DILocation(line: 712, column: 5, scope: !1234)
!1694 = !DILocation(line: 713, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !240, line: 713, column: 7)
!1696 = distinct !DILexicalBlock(scope: !1234, file: !240, line: 713, column: 7)
!1697 = !DILocation(line: 417, column: 21, scope: !1234)
!1698 = !DILocation(line: 713, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !240, line: 713, column: 7)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !240, line: 713, column: 7)
!1701 = distinct !DILexicalBlock(scope: !1695, file: !240, line: 713, column: 7)
!1702 = !DILocation(line: 713, column: 7, scope: !1700)
!1703 = !DILocation(line: 713, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !240, line: 713, column: 7)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !240, line: 713, column: 7)
!1706 = !DILocation(line: 713, column: 7, scope: !1705)
!1707 = !DILocation(line: 713, column: 7, scope: !1701)
!1708 = !DILocation(line: 714, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !240, line: 714, column: 7)
!1710 = distinct !DILexicalBlock(scope: !1234, file: !240, line: 714, column: 7)
!1711 = !DILocation(line: 714, column: 7, scope: !1710)
!1712 = !DILocation(line: 716, column: 11, scope: !1234)
!1713 = !DILocation(line: 718, column: 5, scope: !1235)
!1714 = !DILocation(line: 395, column: 82, scope: !1235)
!1715 = !DILocation(line: 395, column: 3, scope: !1235)
!1716 = distinct !{!1716, !1364, !1717, !494}
!1717 = !DILocation(line: 718, column: 5, scope: !1232)
!1718 = !DILocation(line: 720, column: 11, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1201, file: !240, line: 720, column: 7)
!1720 = !DILocation(line: 720, column: 16, scope: !1719)
!1721 = !DILocation(line: 728, column: 51, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1201, file: !240, line: 728, column: 7)
!1723 = !DILocation(line: 731, column: 11, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1722, file: !240, line: 730, column: 5)
!1725 = !DILocation(line: 732, column: 16, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1724, file: !240, line: 731, column: 11)
!1727 = !DILocation(line: 732, column: 9, scope: !1726)
!1728 = !DILocation(line: 736, column: 18, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !240, line: 736, column: 16)
!1730 = !DILocation(line: 736, column: 29, scope: !1729)
!1731 = !DILocation(line: 745, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1201, file: !240, line: 745, column: 7)
!1733 = !DILocation(line: 745, column: 20, scope: !1732)
!1734 = !DILocation(line: 746, column: 12, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !240, line: 746, column: 5)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !240, line: 746, column: 5)
!1737 = !DILocation(line: 746, column: 5, scope: !1736)
!1738 = !DILocation(line: 747, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !240, line: 747, column: 7)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !240, line: 747, column: 7)
!1741 = !DILocation(line: 747, column: 7, scope: !1740)
!1742 = !DILocation(line: 746, column: 39, scope: !1735)
!1743 = distinct !{!1743, !1737, !1744, !494}
!1744 = !DILocation(line: 747, column: 7, scope: !1736)
!1745 = !DILocation(line: 749, column: 11, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1201, file: !240, line: 749, column: 7)
!1747 = !DILocation(line: 749, column: 7, scope: !1201)
!1748 = !DILocation(line: 750, column: 5, scope: !1746)
!1749 = !DILocation(line: 750, column: 17, scope: !1746)
!1750 = !DILocation(line: 756, column: 21, scope: !1577)
!1751 = !DILocation(line: 760, column: 42, scope: !1201)
!1752 = !DILocation(line: 758, column: 10, scope: !1201)
!1753 = !DILocation(line: 758, column: 3, scope: !1201)
!1754 = !DILocation(line: 762, column: 1, scope: !1201)
!1755 = !DISubprogram(name: "iswprint", scope: !1756, file: !1756, line: 120, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!1756 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1757 = distinct !DISubprogram(name: "quotearg_alloc", scope: !240, file: !240, line: 788, type: !1758, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!28, !36, !33, !1093}
!1760 = !{!1761, !1762, !1763}
!1761 = !DILocalVariable(name: "arg", arg: 1, scope: !1757, file: !240, line: 788, type: !36)
!1762 = !DILocalVariable(name: "argsize", arg: 2, scope: !1757, file: !240, line: 788, type: !33)
!1763 = !DILocalVariable(name: "o", arg: 3, scope: !1757, file: !240, line: 789, type: !1093)
!1764 = !DILocation(line: 0, scope: !1757)
!1765 = !DILocalVariable(name: "arg", arg: 1, scope: !1766, file: !240, line: 801, type: !36)
!1766 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !240, file: !240, line: 801, type: !1767, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!28, !36, !33, !372, !1093}
!1769 = !{!1765, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777}
!1770 = !DILocalVariable(name: "argsize", arg: 2, scope: !1766, file: !240, line: 801, type: !33)
!1771 = !DILocalVariable(name: "size", arg: 3, scope: !1766, file: !240, line: 801, type: !372)
!1772 = !DILocalVariable(name: "o", arg: 4, scope: !1766, file: !240, line: 802, type: !1093)
!1773 = !DILocalVariable(name: "p", scope: !1766, file: !240, line: 804, type: !1093)
!1774 = !DILocalVariable(name: "saved_errno", scope: !1766, file: !240, line: 805, type: !31)
!1775 = !DILocalVariable(name: "flags", scope: !1766, file: !240, line: 807, type: !31)
!1776 = !DILocalVariable(name: "bufsize", scope: !1766, file: !240, line: 808, type: !33)
!1777 = !DILocalVariable(name: "buf", scope: !1766, file: !240, line: 812, type: !28)
!1778 = !DILocation(line: 0, scope: !1766, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 791, column: 10, scope: !1757)
!1780 = !DILocation(line: 804, column: 37, scope: !1766, inlinedAt: !1779)
!1781 = !DILocation(line: 805, column: 21, scope: !1766, inlinedAt: !1779)
!1782 = !DILocation(line: 807, column: 18, scope: !1766, inlinedAt: !1779)
!1783 = !DILocation(line: 807, column: 24, scope: !1766, inlinedAt: !1779)
!1784 = !DILocation(line: 808, column: 72, scope: !1766, inlinedAt: !1779)
!1785 = !DILocation(line: 809, column: 53, scope: !1766, inlinedAt: !1779)
!1786 = !DILocation(line: 810, column: 49, scope: !1766, inlinedAt: !1779)
!1787 = !DILocation(line: 811, column: 49, scope: !1766, inlinedAt: !1779)
!1788 = !DILocation(line: 808, column: 20, scope: !1766, inlinedAt: !1779)
!1789 = !DILocation(line: 811, column: 62, scope: !1766, inlinedAt: !1779)
!1790 = !DILocation(line: 812, column: 15, scope: !1766, inlinedAt: !1779)
!1791 = !DILocation(line: 813, column: 60, scope: !1766, inlinedAt: !1779)
!1792 = !DILocation(line: 815, column: 32, scope: !1766, inlinedAt: !1779)
!1793 = !DILocation(line: 815, column: 47, scope: !1766, inlinedAt: !1779)
!1794 = !DILocation(line: 813, column: 3, scope: !1766, inlinedAt: !1779)
!1795 = !DILocation(line: 816, column: 9, scope: !1766, inlinedAt: !1779)
!1796 = !DILocation(line: 791, column: 3, scope: !1757)
!1797 = !DILocation(line: 0, scope: !1766)
!1798 = !DILocation(line: 804, column: 37, scope: !1766)
!1799 = !DILocation(line: 805, column: 21, scope: !1766)
!1800 = !DILocation(line: 807, column: 18, scope: !1766)
!1801 = !DILocation(line: 807, column: 27, scope: !1766)
!1802 = !DILocation(line: 807, column: 24, scope: !1766)
!1803 = !DILocation(line: 808, column: 72, scope: !1766)
!1804 = !DILocation(line: 809, column: 53, scope: !1766)
!1805 = !DILocation(line: 810, column: 49, scope: !1766)
!1806 = !DILocation(line: 811, column: 49, scope: !1766)
!1807 = !DILocation(line: 808, column: 20, scope: !1766)
!1808 = !DILocation(line: 811, column: 62, scope: !1766)
!1809 = !DILocation(line: 812, column: 15, scope: !1766)
!1810 = !DILocation(line: 813, column: 60, scope: !1766)
!1811 = !DILocation(line: 815, column: 32, scope: !1766)
!1812 = !DILocation(line: 815, column: 47, scope: !1766)
!1813 = !DILocation(line: 813, column: 3, scope: !1766)
!1814 = !DILocation(line: 816, column: 9, scope: !1766)
!1815 = !DILocation(line: 817, column: 7, scope: !1766)
!1816 = !DILocation(line: 818, column: 11, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1766, file: !240, line: 817, column: 7)
!1818 = !{!915, !915, i64 0}
!1819 = !DILocation(line: 818, column: 5, scope: !1817)
!1820 = !DILocation(line: 819, column: 3, scope: !1766)
!1821 = distinct !DISubprogram(name: "quotearg_free", scope: !240, file: !240, line: 837, type: !193, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1822)
!1822 = !{!1823, !1824}
!1823 = !DILocalVariable(name: "sv", scope: !1821, file: !240, line: 839, type: !313)
!1824 = !DILocalVariable(name: "i", scope: !1825, file: !240, line: 840, type: !31)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !240, line: 840, column: 3)
!1826 = !DILocation(line: 839, column: 24, scope: !1821)
!1827 = !DILocation(line: 0, scope: !1821)
!1828 = !DILocation(line: 0, scope: !1825)
!1829 = !DILocation(line: 840, column: 21, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !240, line: 840, column: 3)
!1831 = !DILocation(line: 840, column: 3, scope: !1825)
!1832 = !DILocation(line: 842, column: 13, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1821, file: !240, line: 842, column: 7)
!1834 = !{!1835, !442, i64 8}
!1835 = !{!"slotvec", !915, i64 0, !442, i64 8}
!1836 = !DILocation(line: 842, column: 17, scope: !1833)
!1837 = !DILocation(line: 842, column: 7, scope: !1821)
!1838 = !DILocation(line: 841, column: 17, scope: !1830)
!1839 = !DILocation(line: 841, column: 5, scope: !1830)
!1840 = !DILocation(line: 840, column: 32, scope: !1830)
!1841 = distinct !{!1841, !1831, !1842, !494}
!1842 = !DILocation(line: 841, column: 20, scope: !1825)
!1843 = !DILocation(line: 844, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1833, file: !240, line: 843, column: 5)
!1845 = !DILocation(line: 845, column: 21, scope: !1844)
!1846 = !{!1835, !915, i64 0}
!1847 = !DILocation(line: 846, column: 20, scope: !1844)
!1848 = !DILocation(line: 847, column: 5, scope: !1844)
!1849 = !DILocation(line: 848, column: 10, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1821, file: !240, line: 848, column: 7)
!1851 = !DILocation(line: 848, column: 7, scope: !1821)
!1852 = !DILocation(line: 850, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !240, line: 849, column: 5)
!1854 = !DILocation(line: 850, column: 7, scope: !1853)
!1855 = !DILocation(line: 851, column: 15, scope: !1853)
!1856 = !DILocation(line: 852, column: 5, scope: !1853)
!1857 = !DILocation(line: 853, column: 10, scope: !1821)
!1858 = !DILocation(line: 854, column: 1, scope: !1821)
!1859 = distinct !DISubprogram(name: "quotearg_n", scope: !240, file: !240, line: 919, type: !636, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1860)
!1860 = !{!1861, !1862}
!1861 = !DILocalVariable(name: "n", arg: 1, scope: !1859, file: !240, line: 919, type: !31)
!1862 = !DILocalVariable(name: "arg", arg: 2, scope: !1859, file: !240, line: 919, type: !36)
!1863 = !DILocation(line: 0, scope: !1859)
!1864 = !DILocation(line: 921, column: 10, scope: !1859)
!1865 = !DILocation(line: 921, column: 3, scope: !1859)
!1866 = distinct !DISubprogram(name: "quotearg_n_options", scope: !240, file: !240, line: 866, type: !1867, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!28, !31, !36, !33, !1093}
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1880, !1881, !1883, !1884, !1885}
!1870 = !DILocalVariable(name: "n", arg: 1, scope: !1866, file: !240, line: 866, type: !31)
!1871 = !DILocalVariable(name: "arg", arg: 2, scope: !1866, file: !240, line: 866, type: !36)
!1872 = !DILocalVariable(name: "argsize", arg: 3, scope: !1866, file: !240, line: 866, type: !33)
!1873 = !DILocalVariable(name: "options", arg: 4, scope: !1866, file: !240, line: 867, type: !1093)
!1874 = !DILocalVariable(name: "saved_errno", scope: !1866, file: !240, line: 869, type: !31)
!1875 = !DILocalVariable(name: "sv", scope: !1866, file: !240, line: 871, type: !313)
!1876 = !DILocalVariable(name: "nslots_max", scope: !1866, file: !240, line: 873, type: !31)
!1877 = !DILocalVariable(name: "preallocated", scope: !1878, file: !240, line: 879, type: !42)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !240, line: 878, column: 5)
!1879 = distinct !DILexicalBlock(scope: !1866, file: !240, line: 877, column: 7)
!1880 = !DILocalVariable(name: "new_nslots", scope: !1878, file: !240, line: 880, type: !385)
!1881 = !DILocalVariable(name: "size", scope: !1882, file: !240, line: 891, type: !33)
!1882 = distinct !DILexicalBlock(scope: !1866, file: !240, line: 890, column: 3)
!1883 = !DILocalVariable(name: "val", scope: !1882, file: !240, line: 892, type: !28)
!1884 = !DILocalVariable(name: "flags", scope: !1882, file: !240, line: 894, type: !31)
!1885 = !DILocalVariable(name: "qsize", scope: !1882, file: !240, line: 895, type: !33)
!1886 = !DILocation(line: 0, scope: !1866)
!1887 = !DILocation(line: 869, column: 21, scope: !1866)
!1888 = !DILocation(line: 871, column: 24, scope: !1866)
!1889 = !DILocation(line: 874, column: 17, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1866, file: !240, line: 874, column: 7)
!1891 = !DILocation(line: 875, column: 5, scope: !1890)
!1892 = !DILocation(line: 877, column: 7, scope: !1879)
!1893 = !DILocation(line: 877, column: 14, scope: !1879)
!1894 = !DILocation(line: 877, column: 7, scope: !1866)
!1895 = !DILocation(line: 879, column: 31, scope: !1878)
!1896 = !DILocation(line: 0, scope: !1878)
!1897 = !DILocation(line: 880, column: 7, scope: !1878)
!1898 = !DILocation(line: 880, column: 26, scope: !1878)
!1899 = !DILocation(line: 880, column: 13, scope: !1878)
!1900 = !DILocation(line: 882, column: 31, scope: !1878)
!1901 = !DILocation(line: 883, column: 33, scope: !1878)
!1902 = !DILocation(line: 883, column: 42, scope: !1878)
!1903 = !DILocation(line: 883, column: 31, scope: !1878)
!1904 = !DILocation(line: 882, column: 22, scope: !1878)
!1905 = !DILocation(line: 882, column: 15, scope: !1878)
!1906 = !DILocation(line: 884, column: 11, scope: !1878)
!1907 = !DILocation(line: 885, column: 15, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1878, file: !240, line: 884, column: 11)
!1909 = !{i64 0, i64 8, !1818, i64 8, i64 8, !441}
!1910 = !DILocation(line: 885, column: 9, scope: !1908)
!1911 = !DILocation(line: 886, column: 20, scope: !1878)
!1912 = !DILocation(line: 886, column: 18, scope: !1878)
!1913 = !DILocation(line: 886, column: 15, scope: !1878)
!1914 = !DILocation(line: 886, column: 32, scope: !1878)
!1915 = !DILocation(line: 886, column: 43, scope: !1878)
!1916 = !DILocation(line: 886, column: 53, scope: !1878)
!1917 = !DILocation(line: 0, scope: !1304, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 886, column: 7, scope: !1878)
!1919 = !DILocation(line: 59, column: 10, scope: !1304, inlinedAt: !1918)
!1920 = !DILocation(line: 887, column: 16, scope: !1878)
!1921 = !DILocation(line: 887, column: 14, scope: !1878)
!1922 = !DILocation(line: 888, column: 5, scope: !1879)
!1923 = !DILocation(line: 888, column: 5, scope: !1878)
!1924 = !DILocation(line: 891, column: 19, scope: !1882)
!1925 = !DILocation(line: 891, column: 25, scope: !1882)
!1926 = !DILocation(line: 0, scope: !1882)
!1927 = !DILocation(line: 892, column: 23, scope: !1882)
!1928 = !DILocation(line: 894, column: 26, scope: !1882)
!1929 = !DILocation(line: 894, column: 32, scope: !1882)
!1930 = !DILocation(line: 896, column: 55, scope: !1882)
!1931 = !DILocation(line: 897, column: 46, scope: !1882)
!1932 = !DILocation(line: 898, column: 55, scope: !1882)
!1933 = !DILocation(line: 899, column: 55, scope: !1882)
!1934 = !DILocation(line: 895, column: 20, scope: !1882)
!1935 = !DILocation(line: 901, column: 14, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1882, file: !240, line: 901, column: 9)
!1937 = !DILocation(line: 901, column: 9, scope: !1882)
!1938 = !DILocation(line: 903, column: 35, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !240, line: 902, column: 7)
!1940 = !DILocation(line: 903, column: 20, scope: !1939)
!1941 = !DILocation(line: 904, column: 17, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1939, file: !240, line: 904, column: 13)
!1943 = !DILocation(line: 904, column: 13, scope: !1939)
!1944 = !DILocation(line: 905, column: 11, scope: !1942)
!1945 = !DILocation(line: 906, column: 27, scope: !1939)
!1946 = !DILocation(line: 906, column: 19, scope: !1939)
!1947 = !DILocation(line: 907, column: 69, scope: !1939)
!1948 = !DILocation(line: 909, column: 44, scope: !1939)
!1949 = !DILocation(line: 910, column: 44, scope: !1939)
!1950 = !DILocation(line: 907, column: 9, scope: !1939)
!1951 = !DILocation(line: 911, column: 7, scope: !1939)
!1952 = !DILocation(line: 913, column: 11, scope: !1882)
!1953 = !DILocation(line: 914, column: 5, scope: !1882)
!1954 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !240, file: !240, line: 925, type: !1955, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!28, !31, !36, !33}
!1957 = !{!1958, !1959, !1960}
!1958 = !DILocalVariable(name: "n", arg: 1, scope: !1954, file: !240, line: 925, type: !31)
!1959 = !DILocalVariable(name: "arg", arg: 2, scope: !1954, file: !240, line: 925, type: !36)
!1960 = !DILocalVariable(name: "argsize", arg: 3, scope: !1954, file: !240, line: 925, type: !33)
!1961 = !DILocation(line: 0, scope: !1954)
!1962 = !DILocation(line: 927, column: 10, scope: !1954)
!1963 = !DILocation(line: 927, column: 3, scope: !1954)
!1964 = distinct !DISubprogram(name: "quotearg", scope: !240, file: !240, line: 931, type: !640, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1965)
!1965 = !{!1966}
!1966 = !DILocalVariable(name: "arg", arg: 1, scope: !1964, file: !240, line: 931, type: !36)
!1967 = !DILocation(line: 0, scope: !1964)
!1968 = !DILocation(line: 0, scope: !1859, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 933, column: 10, scope: !1964)
!1970 = !DILocation(line: 921, column: 10, scope: !1859, inlinedAt: !1969)
!1971 = !DILocation(line: 933, column: 3, scope: !1964)
!1972 = distinct !DISubprogram(name: "quotearg_mem", scope: !240, file: !240, line: 937, type: !1973, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1975)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!28, !36, !33}
!1975 = !{!1976, !1977}
!1976 = !DILocalVariable(name: "arg", arg: 1, scope: !1972, file: !240, line: 937, type: !36)
!1977 = !DILocalVariable(name: "argsize", arg: 2, scope: !1972, file: !240, line: 937, type: !33)
!1978 = !DILocation(line: 0, scope: !1972)
!1979 = !DILocation(line: 0, scope: !1954, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 939, column: 10, scope: !1972)
!1981 = !DILocation(line: 927, column: 10, scope: !1954, inlinedAt: !1980)
!1982 = !DILocation(line: 939, column: 3, scope: !1972)
!1983 = distinct !DISubprogram(name: "quotearg_n_style", scope: !240, file: !240, line: 943, type: !1984, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!28, !31, !242, !36}
!1986 = !{!1987, !1988, !1989, !1990}
!1987 = !DILocalVariable(name: "n", arg: 1, scope: !1983, file: !240, line: 943, type: !31)
!1988 = !DILocalVariable(name: "s", arg: 2, scope: !1983, file: !240, line: 943, type: !242)
!1989 = !DILocalVariable(name: "arg", arg: 3, scope: !1983, file: !240, line: 943, type: !36)
!1990 = !DILocalVariable(name: "o", scope: !1983, file: !240, line: 945, type: !1094)
!1991 = !DILocation(line: 0, scope: !1983)
!1992 = !DILocation(line: 945, column: 3, scope: !1983)
!1993 = !DILocation(line: 945, column: 32, scope: !1983)
!1994 = !{!1995}
!1995 = distinct !{!1995, !1996, !"quoting_options_from_style: argument 0"}
!1996 = distinct !{!1996, !"quoting_options_from_style"}
!1997 = !DILocation(line: 945, column: 36, scope: !1983)
!1998 = !DILocalVariable(name: "style", arg: 1, scope: !1999, file: !240, line: 183, type: !242)
!1999 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !240, file: !240, line: 183, type: !2000, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2002)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!271, !242}
!2002 = !{!1998, !2003}
!2003 = !DILocalVariable(name: "o", scope: !1999, file: !240, line: 185, type: !271)
!2004 = !DILocation(line: 0, scope: !1999, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 945, column: 36, scope: !1983)
!2006 = !DILocation(line: 185, column: 26, scope: !1999, inlinedAt: !2005)
!2007 = !DILocation(line: 186, column: 13, scope: !2008, inlinedAt: !2005)
!2008 = distinct !DILexicalBlock(scope: !1999, file: !240, line: 186, column: 7)
!2009 = !DILocation(line: 186, column: 7, scope: !1999, inlinedAt: !2005)
!2010 = !DILocation(line: 187, column: 5, scope: !2008, inlinedAt: !2005)
!2011 = !DILocation(line: 188, column: 5, scope: !1999, inlinedAt: !2005)
!2012 = !DILocation(line: 188, column: 11, scope: !1999, inlinedAt: !2005)
!2013 = !DILocation(line: 946, column: 10, scope: !1983)
!2014 = !DILocation(line: 947, column: 1, scope: !1983)
!2015 = !DILocation(line: 946, column: 3, scope: !1983)
!2016 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !240, file: !240, line: 950, type: !2017, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2019)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!28, !31, !242, !36, !33}
!2019 = !{!2020, !2021, !2022, !2023, !2024}
!2020 = !DILocalVariable(name: "n", arg: 1, scope: !2016, file: !240, line: 950, type: !31)
!2021 = !DILocalVariable(name: "s", arg: 2, scope: !2016, file: !240, line: 950, type: !242)
!2022 = !DILocalVariable(name: "arg", arg: 3, scope: !2016, file: !240, line: 951, type: !36)
!2023 = !DILocalVariable(name: "argsize", arg: 4, scope: !2016, file: !240, line: 951, type: !33)
!2024 = !DILocalVariable(name: "o", scope: !2016, file: !240, line: 953, type: !1094)
!2025 = !DILocation(line: 0, scope: !2016)
!2026 = !DILocation(line: 953, column: 3, scope: !2016)
!2027 = !DILocation(line: 953, column: 32, scope: !2016)
!2028 = !{!2029}
!2029 = distinct !{!2029, !2030, !"quoting_options_from_style: argument 0"}
!2030 = distinct !{!2030, !"quoting_options_from_style"}
!2031 = !DILocation(line: 953, column: 36, scope: !2016)
!2032 = !DILocation(line: 0, scope: !1999, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 953, column: 36, scope: !2016)
!2034 = !DILocation(line: 185, column: 26, scope: !1999, inlinedAt: !2033)
!2035 = !DILocation(line: 186, column: 13, scope: !2008, inlinedAt: !2033)
!2036 = !DILocation(line: 186, column: 7, scope: !1999, inlinedAt: !2033)
!2037 = !DILocation(line: 187, column: 5, scope: !2008, inlinedAt: !2033)
!2038 = !DILocation(line: 188, column: 5, scope: !1999, inlinedAt: !2033)
!2039 = !DILocation(line: 188, column: 11, scope: !1999, inlinedAt: !2033)
!2040 = !DILocation(line: 954, column: 10, scope: !2016)
!2041 = !DILocation(line: 955, column: 1, scope: !2016)
!2042 = !DILocation(line: 954, column: 3, scope: !2016)
!2043 = distinct !DISubprogram(name: "quotearg_style", scope: !240, file: !240, line: 958, type: !2044, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!28, !242, !36}
!2046 = !{!2047, !2048}
!2047 = !DILocalVariable(name: "s", arg: 1, scope: !2043, file: !240, line: 958, type: !242)
!2048 = !DILocalVariable(name: "arg", arg: 2, scope: !2043, file: !240, line: 958, type: !36)
!2049 = !DILocation(line: 0, scope: !2043)
!2050 = !DILocation(line: 0, scope: !1983, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 960, column: 10, scope: !2043)
!2052 = !DILocation(line: 945, column: 3, scope: !1983, inlinedAt: !2051)
!2053 = !DILocation(line: 945, column: 32, scope: !1983, inlinedAt: !2051)
!2054 = !{!2055}
!2055 = distinct !{!2055, !2056, !"quoting_options_from_style: argument 0"}
!2056 = distinct !{!2056, !"quoting_options_from_style"}
!2057 = !DILocation(line: 945, column: 36, scope: !1983, inlinedAt: !2051)
!2058 = !DILocation(line: 0, scope: !1999, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 945, column: 36, scope: !1983, inlinedAt: !2051)
!2060 = !DILocation(line: 185, column: 26, scope: !1999, inlinedAt: !2059)
!2061 = !DILocation(line: 186, column: 13, scope: !2008, inlinedAt: !2059)
!2062 = !DILocation(line: 186, column: 7, scope: !1999, inlinedAt: !2059)
!2063 = !DILocation(line: 187, column: 5, scope: !2008, inlinedAt: !2059)
!2064 = !DILocation(line: 188, column: 5, scope: !1999, inlinedAt: !2059)
!2065 = !DILocation(line: 188, column: 11, scope: !1999, inlinedAt: !2059)
!2066 = !DILocation(line: 946, column: 10, scope: !1983, inlinedAt: !2051)
!2067 = !DILocation(line: 947, column: 1, scope: !1983, inlinedAt: !2051)
!2068 = !DILocation(line: 960, column: 3, scope: !2043)
!2069 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !240, file: !240, line: 964, type: !2070, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2072)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!28, !242, !36, !33}
!2072 = !{!2073, !2074, !2075}
!2073 = !DILocalVariable(name: "s", arg: 1, scope: !2069, file: !240, line: 964, type: !242)
!2074 = !DILocalVariable(name: "arg", arg: 2, scope: !2069, file: !240, line: 964, type: !36)
!2075 = !DILocalVariable(name: "argsize", arg: 3, scope: !2069, file: !240, line: 964, type: !33)
!2076 = !DILocation(line: 0, scope: !2069)
!2077 = !DILocation(line: 0, scope: !2016, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 966, column: 10, scope: !2069)
!2079 = !DILocation(line: 953, column: 3, scope: !2016, inlinedAt: !2078)
!2080 = !DILocation(line: 953, column: 32, scope: !2016, inlinedAt: !2078)
!2081 = !{!2082}
!2082 = distinct !{!2082, !2083, !"quoting_options_from_style: argument 0"}
!2083 = distinct !{!2083, !"quoting_options_from_style"}
!2084 = !DILocation(line: 953, column: 36, scope: !2016, inlinedAt: !2078)
!2085 = !DILocation(line: 0, scope: !1999, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 953, column: 36, scope: !2016, inlinedAt: !2078)
!2087 = !DILocation(line: 185, column: 26, scope: !1999, inlinedAt: !2086)
!2088 = !DILocation(line: 186, column: 13, scope: !2008, inlinedAt: !2086)
!2089 = !DILocation(line: 186, column: 7, scope: !1999, inlinedAt: !2086)
!2090 = !DILocation(line: 187, column: 5, scope: !2008, inlinedAt: !2086)
!2091 = !DILocation(line: 188, column: 5, scope: !1999, inlinedAt: !2086)
!2092 = !DILocation(line: 188, column: 11, scope: !1999, inlinedAt: !2086)
!2093 = !DILocation(line: 954, column: 10, scope: !2016, inlinedAt: !2078)
!2094 = !DILocation(line: 955, column: 1, scope: !2016, inlinedAt: !2078)
!2095 = !DILocation(line: 966, column: 3, scope: !2069)
!2096 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !240, file: !240, line: 970, type: !2097, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!28, !36, !33, !29}
!2099 = !{!2100, !2101, !2102, !2103}
!2100 = !DILocalVariable(name: "arg", arg: 1, scope: !2096, file: !240, line: 970, type: !36)
!2101 = !DILocalVariable(name: "argsize", arg: 2, scope: !2096, file: !240, line: 970, type: !33)
!2102 = !DILocalVariable(name: "ch", arg: 3, scope: !2096, file: !240, line: 970, type: !29)
!2103 = !DILocalVariable(name: "options", scope: !2096, file: !240, line: 972, type: !271)
!2104 = !DILocation(line: 0, scope: !2096)
!2105 = !DILocation(line: 972, column: 3, scope: !2096)
!2106 = !DILocation(line: 972, column: 26, scope: !2096)
!2107 = !DILocation(line: 973, column: 13, scope: !2096)
!2108 = !{i64 0, i64 4, !537, i64 4, i64 4, !528, i64 8, i64 32, !537, i64 40, i64 8, !441, i64 48, i64 8, !441}
!2109 = !DILocation(line: 0, scope: !1114, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 974, column: 3, scope: !2096)
!2111 = !DILocation(line: 147, column: 62, scope: !1114, inlinedAt: !2110)
!2112 = !DILocation(line: 147, column: 57, scope: !1114, inlinedAt: !2110)
!2113 = !DILocation(line: 148, column: 15, scope: !1114, inlinedAt: !2110)
!2114 = !DILocation(line: 149, column: 21, scope: !1114, inlinedAt: !2110)
!2115 = !DILocation(line: 149, column: 24, scope: !1114, inlinedAt: !2110)
!2116 = !DILocation(line: 149, column: 34, scope: !1114, inlinedAt: !2110)
!2117 = !DILocation(line: 150, column: 19, scope: !1114, inlinedAt: !2110)
!2118 = !DILocation(line: 150, column: 24, scope: !1114, inlinedAt: !2110)
!2119 = !DILocation(line: 150, column: 6, scope: !1114, inlinedAt: !2110)
!2120 = !DILocation(line: 975, column: 10, scope: !2096)
!2121 = !DILocation(line: 976, column: 1, scope: !2096)
!2122 = !DILocation(line: 975, column: 3, scope: !2096)
!2123 = distinct !DISubprogram(name: "quotearg_char", scope: !240, file: !240, line: 979, type: !2124, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!28, !36, !29}
!2126 = !{!2127, !2128}
!2127 = !DILocalVariable(name: "arg", arg: 1, scope: !2123, file: !240, line: 979, type: !36)
!2128 = !DILocalVariable(name: "ch", arg: 2, scope: !2123, file: !240, line: 979, type: !29)
!2129 = !DILocation(line: 0, scope: !2123)
!2130 = !DILocation(line: 0, scope: !2096, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 981, column: 10, scope: !2123)
!2132 = !DILocation(line: 972, column: 3, scope: !2096, inlinedAt: !2131)
!2133 = !DILocation(line: 972, column: 26, scope: !2096, inlinedAt: !2131)
!2134 = !DILocation(line: 973, column: 13, scope: !2096, inlinedAt: !2131)
!2135 = !DILocation(line: 0, scope: !1114, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 974, column: 3, scope: !2096, inlinedAt: !2131)
!2137 = !DILocation(line: 147, column: 62, scope: !1114, inlinedAt: !2136)
!2138 = !DILocation(line: 147, column: 57, scope: !1114, inlinedAt: !2136)
!2139 = !DILocation(line: 148, column: 15, scope: !1114, inlinedAt: !2136)
!2140 = !DILocation(line: 149, column: 21, scope: !1114, inlinedAt: !2136)
!2141 = !DILocation(line: 149, column: 24, scope: !1114, inlinedAt: !2136)
!2142 = !DILocation(line: 149, column: 34, scope: !1114, inlinedAt: !2136)
!2143 = !DILocation(line: 150, column: 19, scope: !1114, inlinedAt: !2136)
!2144 = !DILocation(line: 150, column: 24, scope: !1114, inlinedAt: !2136)
!2145 = !DILocation(line: 150, column: 6, scope: !1114, inlinedAt: !2136)
!2146 = !DILocation(line: 975, column: 10, scope: !2096, inlinedAt: !2131)
!2147 = !DILocation(line: 976, column: 1, scope: !2096, inlinedAt: !2131)
!2148 = !DILocation(line: 981, column: 3, scope: !2123)
!2149 = distinct !DISubprogram(name: "quotearg_colon", scope: !240, file: !240, line: 985, type: !640, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2150)
!2150 = !{!2151}
!2151 = !DILocalVariable(name: "arg", arg: 1, scope: !2149, file: !240, line: 985, type: !36)
!2152 = !DILocation(line: 0, scope: !2149)
!2153 = !DILocation(line: 0, scope: !2123, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 987, column: 10, scope: !2149)
!2155 = !DILocation(line: 0, scope: !2096, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 981, column: 10, scope: !2123, inlinedAt: !2154)
!2157 = !DILocation(line: 972, column: 3, scope: !2096, inlinedAt: !2156)
!2158 = !DILocation(line: 972, column: 26, scope: !2096, inlinedAt: !2156)
!2159 = !DILocation(line: 973, column: 13, scope: !2096, inlinedAt: !2156)
!2160 = !DILocation(line: 0, scope: !1114, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 974, column: 3, scope: !2096, inlinedAt: !2156)
!2162 = !DILocation(line: 147, column: 57, scope: !1114, inlinedAt: !2161)
!2163 = !DILocation(line: 149, column: 21, scope: !1114, inlinedAt: !2161)
!2164 = !DILocation(line: 150, column: 6, scope: !1114, inlinedAt: !2161)
!2165 = !DILocation(line: 975, column: 10, scope: !2096, inlinedAt: !2156)
!2166 = !DILocation(line: 976, column: 1, scope: !2096, inlinedAt: !2156)
!2167 = !DILocation(line: 987, column: 3, scope: !2149)
!2168 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !240, file: !240, line: 991, type: !1973, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2169)
!2169 = !{!2170, !2171}
!2170 = !DILocalVariable(name: "arg", arg: 1, scope: !2168, file: !240, line: 991, type: !36)
!2171 = !DILocalVariable(name: "argsize", arg: 2, scope: !2168, file: !240, line: 991, type: !33)
!2172 = !DILocation(line: 0, scope: !2168)
!2173 = !DILocation(line: 0, scope: !2096, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 993, column: 10, scope: !2168)
!2175 = !DILocation(line: 972, column: 3, scope: !2096, inlinedAt: !2174)
!2176 = !DILocation(line: 972, column: 26, scope: !2096, inlinedAt: !2174)
!2177 = !DILocation(line: 973, column: 13, scope: !2096, inlinedAt: !2174)
!2178 = !DILocation(line: 0, scope: !1114, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 974, column: 3, scope: !2096, inlinedAt: !2174)
!2180 = !DILocation(line: 147, column: 57, scope: !1114, inlinedAt: !2179)
!2181 = !DILocation(line: 149, column: 21, scope: !1114, inlinedAt: !2179)
!2182 = !DILocation(line: 150, column: 6, scope: !1114, inlinedAt: !2179)
!2183 = !DILocation(line: 975, column: 10, scope: !2096, inlinedAt: !2174)
!2184 = !DILocation(line: 976, column: 1, scope: !2096, inlinedAt: !2174)
!2185 = !DILocation(line: 993, column: 3, scope: !2168)
!2186 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !240, file: !240, line: 997, type: !1984, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2187)
!2187 = !{!2188, !2189, !2190, !2191}
!2188 = !DILocalVariable(name: "n", arg: 1, scope: !2186, file: !240, line: 997, type: !31)
!2189 = !DILocalVariable(name: "s", arg: 2, scope: !2186, file: !240, line: 997, type: !242)
!2190 = !DILocalVariable(name: "arg", arg: 3, scope: !2186, file: !240, line: 997, type: !36)
!2191 = !DILocalVariable(name: "options", scope: !2186, file: !240, line: 999, type: !271)
!2192 = !DILocation(line: 0, scope: !2186)
!2193 = !DILocation(line: 999, column: 3, scope: !2186)
!2194 = !DILocation(line: 999, column: 26, scope: !2186)
!2195 = !DILocation(line: 0, scope: !1999, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 1000, column: 13, scope: !2186)
!2197 = !DILocation(line: 186, column: 13, scope: !2008, inlinedAt: !2196)
!2198 = !DILocation(line: 186, column: 7, scope: !1999, inlinedAt: !2196)
!2199 = !DILocation(line: 187, column: 5, scope: !2008, inlinedAt: !2196)
!2200 = !{!2201}
!2201 = distinct !{!2201, !2202, !"quoting_options_from_style: argument 0"}
!2202 = distinct !{!2202, !"quoting_options_from_style"}
!2203 = !DILocation(line: 1000, column: 13, scope: !2186)
!2204 = !DILocation(line: 0, scope: !1114, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 1001, column: 3, scope: !2186)
!2206 = !DILocation(line: 147, column: 57, scope: !1114, inlinedAt: !2205)
!2207 = !DILocation(line: 149, column: 21, scope: !1114, inlinedAt: !2205)
!2208 = !DILocation(line: 150, column: 6, scope: !1114, inlinedAt: !2205)
!2209 = !DILocation(line: 1002, column: 10, scope: !2186)
!2210 = !DILocation(line: 1003, column: 1, scope: !2186)
!2211 = !DILocation(line: 1002, column: 3, scope: !2186)
!2212 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !240, file: !240, line: 1006, type: !2213, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!28, !31, !36, !36, !36}
!2215 = !{!2216, !2217, !2218, !2219}
!2216 = !DILocalVariable(name: "n", arg: 1, scope: !2212, file: !240, line: 1006, type: !31)
!2217 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2212, file: !240, line: 1006, type: !36)
!2218 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2212, file: !240, line: 1007, type: !36)
!2219 = !DILocalVariable(name: "arg", arg: 4, scope: !2212, file: !240, line: 1007, type: !36)
!2220 = !DILocation(line: 0, scope: !2212)
!2221 = !DILocalVariable(name: "n", arg: 1, scope: !2222, file: !240, line: 1014, type: !31)
!2222 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !240, file: !240, line: 1014, type: !2223, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2225)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!28, !31, !36, !36, !36, !33}
!2225 = !{!2221, !2226, !2227, !2228, !2229, !2230}
!2226 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2222, file: !240, line: 1014, type: !36)
!2227 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2222, file: !240, line: 1015, type: !36)
!2228 = !DILocalVariable(name: "arg", arg: 4, scope: !2222, file: !240, line: 1016, type: !36)
!2229 = !DILocalVariable(name: "argsize", arg: 5, scope: !2222, file: !240, line: 1016, type: !33)
!2230 = !DILocalVariable(name: "o", scope: !2222, file: !240, line: 1018, type: !271)
!2231 = !DILocation(line: 0, scope: !2222, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 1009, column: 10, scope: !2212)
!2233 = !DILocation(line: 1018, column: 3, scope: !2222, inlinedAt: !2232)
!2234 = !DILocation(line: 1018, column: 26, scope: !2222, inlinedAt: !2232)
!2235 = !DILocation(line: 1018, column: 30, scope: !2222, inlinedAt: !2232)
!2236 = !DILocation(line: 0, scope: !1154, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 1019, column: 3, scope: !2222, inlinedAt: !2232)
!2238 = !DILocation(line: 174, column: 6, scope: !1154, inlinedAt: !2237)
!2239 = !DILocation(line: 174, column: 12, scope: !1154, inlinedAt: !2237)
!2240 = !DILocation(line: 175, column: 8, scope: !1168, inlinedAt: !2237)
!2241 = !DILocation(line: 175, column: 19, scope: !1168, inlinedAt: !2237)
!2242 = !DILocation(line: 176, column: 5, scope: !1168, inlinedAt: !2237)
!2243 = !DILocation(line: 177, column: 6, scope: !1154, inlinedAt: !2237)
!2244 = !DILocation(line: 177, column: 17, scope: !1154, inlinedAt: !2237)
!2245 = !DILocation(line: 178, column: 6, scope: !1154, inlinedAt: !2237)
!2246 = !DILocation(line: 178, column: 18, scope: !1154, inlinedAt: !2237)
!2247 = !DILocation(line: 1020, column: 10, scope: !2222, inlinedAt: !2232)
!2248 = !DILocation(line: 1021, column: 1, scope: !2222, inlinedAt: !2232)
!2249 = !DILocation(line: 1009, column: 3, scope: !2212)
!2250 = !DILocation(line: 0, scope: !2222)
!2251 = !DILocation(line: 1018, column: 3, scope: !2222)
!2252 = !DILocation(line: 1018, column: 26, scope: !2222)
!2253 = !DILocation(line: 1018, column: 30, scope: !2222)
!2254 = !DILocation(line: 0, scope: !1154, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 1019, column: 3, scope: !2222)
!2256 = !DILocation(line: 174, column: 6, scope: !1154, inlinedAt: !2255)
!2257 = !DILocation(line: 174, column: 12, scope: !1154, inlinedAt: !2255)
!2258 = !DILocation(line: 175, column: 8, scope: !1168, inlinedAt: !2255)
!2259 = !DILocation(line: 175, column: 19, scope: !1168, inlinedAt: !2255)
!2260 = !DILocation(line: 176, column: 5, scope: !1168, inlinedAt: !2255)
!2261 = !DILocation(line: 177, column: 6, scope: !1154, inlinedAt: !2255)
!2262 = !DILocation(line: 177, column: 17, scope: !1154, inlinedAt: !2255)
!2263 = !DILocation(line: 178, column: 6, scope: !1154, inlinedAt: !2255)
!2264 = !DILocation(line: 178, column: 18, scope: !1154, inlinedAt: !2255)
!2265 = !DILocation(line: 1020, column: 10, scope: !2222)
!2266 = !DILocation(line: 1021, column: 1, scope: !2222)
!2267 = !DILocation(line: 1020, column: 3, scope: !2222)
!2268 = distinct !DISubprogram(name: "quotearg_custom", scope: !240, file: !240, line: 1024, type: !2269, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!28, !36, !36, !36}
!2271 = !{!2272, !2273, !2274}
!2272 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2268, file: !240, line: 1024, type: !36)
!2273 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2268, file: !240, line: 1024, type: !36)
!2274 = !DILocalVariable(name: "arg", arg: 3, scope: !2268, file: !240, line: 1025, type: !36)
!2275 = !DILocation(line: 0, scope: !2268)
!2276 = !DILocation(line: 0, scope: !2212, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 1027, column: 10, scope: !2268)
!2278 = !DILocation(line: 0, scope: !2222, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 1009, column: 10, scope: !2212, inlinedAt: !2277)
!2280 = !DILocation(line: 1018, column: 3, scope: !2222, inlinedAt: !2279)
!2281 = !DILocation(line: 1018, column: 26, scope: !2222, inlinedAt: !2279)
!2282 = !DILocation(line: 1018, column: 30, scope: !2222, inlinedAt: !2279)
!2283 = !DILocation(line: 0, scope: !1154, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 1019, column: 3, scope: !2222, inlinedAt: !2279)
!2285 = !DILocation(line: 174, column: 6, scope: !1154, inlinedAt: !2284)
!2286 = !DILocation(line: 174, column: 12, scope: !1154, inlinedAt: !2284)
!2287 = !DILocation(line: 175, column: 8, scope: !1168, inlinedAt: !2284)
!2288 = !DILocation(line: 175, column: 19, scope: !1168, inlinedAt: !2284)
!2289 = !DILocation(line: 176, column: 5, scope: !1168, inlinedAt: !2284)
!2290 = !DILocation(line: 177, column: 6, scope: !1154, inlinedAt: !2284)
!2291 = !DILocation(line: 177, column: 17, scope: !1154, inlinedAt: !2284)
!2292 = !DILocation(line: 178, column: 6, scope: !1154, inlinedAt: !2284)
!2293 = !DILocation(line: 178, column: 18, scope: !1154, inlinedAt: !2284)
!2294 = !DILocation(line: 1020, column: 10, scope: !2222, inlinedAt: !2279)
!2295 = !DILocation(line: 1021, column: 1, scope: !2222, inlinedAt: !2279)
!2296 = !DILocation(line: 1027, column: 3, scope: !2268)
!2297 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !240, file: !240, line: 1031, type: !2298, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!28, !36, !36, !36, !33}
!2300 = !{!2301, !2302, !2303, !2304}
!2301 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2297, file: !240, line: 1031, type: !36)
!2302 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2297, file: !240, line: 1031, type: !36)
!2303 = !DILocalVariable(name: "arg", arg: 3, scope: !2297, file: !240, line: 1032, type: !36)
!2304 = !DILocalVariable(name: "argsize", arg: 4, scope: !2297, file: !240, line: 1032, type: !33)
!2305 = !DILocation(line: 0, scope: !2297)
!2306 = !DILocation(line: 0, scope: !2222, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 1034, column: 10, scope: !2297)
!2308 = !DILocation(line: 1018, column: 3, scope: !2222, inlinedAt: !2307)
!2309 = !DILocation(line: 1018, column: 26, scope: !2222, inlinedAt: !2307)
!2310 = !DILocation(line: 1018, column: 30, scope: !2222, inlinedAt: !2307)
!2311 = !DILocation(line: 0, scope: !1154, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 1019, column: 3, scope: !2222, inlinedAt: !2307)
!2313 = !DILocation(line: 174, column: 6, scope: !1154, inlinedAt: !2312)
!2314 = !DILocation(line: 174, column: 12, scope: !1154, inlinedAt: !2312)
!2315 = !DILocation(line: 175, column: 8, scope: !1168, inlinedAt: !2312)
!2316 = !DILocation(line: 175, column: 19, scope: !1168, inlinedAt: !2312)
!2317 = !DILocation(line: 176, column: 5, scope: !1168, inlinedAt: !2312)
!2318 = !DILocation(line: 177, column: 6, scope: !1154, inlinedAt: !2312)
!2319 = !DILocation(line: 177, column: 17, scope: !1154, inlinedAt: !2312)
!2320 = !DILocation(line: 178, column: 6, scope: !1154, inlinedAt: !2312)
!2321 = !DILocation(line: 178, column: 18, scope: !1154, inlinedAt: !2312)
!2322 = !DILocation(line: 1020, column: 10, scope: !2222, inlinedAt: !2307)
!2323 = !DILocation(line: 1021, column: 1, scope: !2222, inlinedAt: !2307)
!2324 = !DILocation(line: 1034, column: 3, scope: !2297)
!2325 = distinct !DISubprogram(name: "quote_n_mem", scope: !240, file: !240, line: 1049, type: !2326, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2328)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!36, !31, !36, !33}
!2328 = !{!2329, !2330, !2331}
!2329 = !DILocalVariable(name: "n", arg: 1, scope: !2325, file: !240, line: 1049, type: !31)
!2330 = !DILocalVariable(name: "arg", arg: 2, scope: !2325, file: !240, line: 1049, type: !36)
!2331 = !DILocalVariable(name: "argsize", arg: 3, scope: !2325, file: !240, line: 1049, type: !33)
!2332 = !DILocation(line: 0, scope: !2325)
!2333 = !DILocation(line: 1051, column: 10, scope: !2325)
!2334 = !DILocation(line: 1051, column: 3, scope: !2325)
!2335 = distinct !DISubprogram(name: "quote_mem", scope: !240, file: !240, line: 1055, type: !2336, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!36, !36, !33}
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "arg", arg: 1, scope: !2335, file: !240, line: 1055, type: !36)
!2340 = !DILocalVariable(name: "argsize", arg: 2, scope: !2335, file: !240, line: 1055, type: !33)
!2341 = !DILocation(line: 0, scope: !2335)
!2342 = !DILocation(line: 0, scope: !2325, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 1057, column: 10, scope: !2335)
!2344 = !DILocation(line: 1051, column: 10, scope: !2325, inlinedAt: !2343)
!2345 = !DILocation(line: 1057, column: 3, scope: !2335)
!2346 = distinct !DISubprogram(name: "quote_n", scope: !240, file: !240, line: 1061, type: !2347, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!36, !31, !36}
!2349 = !{!2350, !2351}
!2350 = !DILocalVariable(name: "n", arg: 1, scope: !2346, file: !240, line: 1061, type: !31)
!2351 = !DILocalVariable(name: "arg", arg: 2, scope: !2346, file: !240, line: 1061, type: !36)
!2352 = !DILocation(line: 0, scope: !2346)
!2353 = !DILocation(line: 0, scope: !2325, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 1063, column: 10, scope: !2346)
!2355 = !DILocation(line: 1051, column: 10, scope: !2325, inlinedAt: !2354)
!2356 = !DILocation(line: 1063, column: 3, scope: !2346)
!2357 = distinct !DISubprogram(name: "quote", scope: !240, file: !240, line: 1067, type: !2358, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!36, !36}
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "arg", arg: 1, scope: !2357, file: !240, line: 1067, type: !36)
!2362 = !DILocation(line: 0, scope: !2357)
!2363 = !DILocation(line: 0, scope: !2346, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 1069, column: 10, scope: !2357)
!2365 = !DILocation(line: 0, scope: !2325, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 1063, column: 10, scope: !2346, inlinedAt: !2364)
!2367 = !DILocation(line: 1051, column: 10, scope: !2325, inlinedAt: !2366)
!2368 = !DILocation(line: 1069, column: 3, scope: !2357)
!2369 = distinct !DISubprogram(name: "version_etc_arn", scope: !359, file: !359, line: 61, type: !2370, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !2407)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !2372, !36, !36, !36, !2406, !33}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 7, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 49, size: 1728, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2374, file: !72, line: 51, baseType: !31, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2374, file: !72, line: 54, baseType: !28, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2374, file: !72, line: 55, baseType: !28, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2374, file: !72, line: 56, baseType: !28, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2374, file: !72, line: 57, baseType: !28, size: 64, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2374, file: !72, line: 58, baseType: !28, size: 64, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2374, file: !72, line: 59, baseType: !28, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2374, file: !72, line: 60, baseType: !28, size: 64, offset: 448)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2374, file: !72, line: 61, baseType: !28, size: 64, offset: 512)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2374, file: !72, line: 64, baseType: !28, size: 64, offset: 576)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2374, file: !72, line: 65, baseType: !28, size: 64, offset: 640)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2374, file: !72, line: 66, baseType: !28, size: 64, offset: 704)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2374, file: !72, line: 68, baseType: !87, size: 64, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2374, file: !72, line: 70, baseType: !2390, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2374, file: !72, line: 72, baseType: !31, size: 32, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2374, file: !72, line: 73, baseType: !31, size: 32, offset: 928)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2374, file: !72, line: 74, baseType: !94, size: 64, offset: 960)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2374, file: !72, line: 77, baseType: !32, size: 16, offset: 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2374, file: !72, line: 78, baseType: !99, size: 8, offset: 1040)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2374, file: !72, line: 79, baseType: !101, size: 8, offset: 1048)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2374, file: !72, line: 81, baseType: !105, size: 64, offset: 1088)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2374, file: !72, line: 89, baseType: !108, size: 64, offset: 1152)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2374, file: !72, line: 91, baseType: !110, size: 64, offset: 1216)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2374, file: !72, line: 92, baseType: !113, size: 64, offset: 1280)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2374, file: !72, line: 93, baseType: !2390, size: 64, offset: 1344)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2374, file: !72, line: 94, baseType: !30, size: 64, offset: 1408)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2374, file: !72, line: 95, baseType: !33, size: 64, offset: 1472)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2374, file: !72, line: 96, baseType: !31, size: 32, offset: 1536)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2374, file: !72, line: 98, baseType: !120, size: 160, offset: 1568)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2413}
!2408 = !DILocalVariable(name: "stream", arg: 1, scope: !2369, file: !359, line: 61, type: !2372)
!2409 = !DILocalVariable(name: "command_name", arg: 2, scope: !2369, file: !359, line: 62, type: !36)
!2410 = !DILocalVariable(name: "package", arg: 3, scope: !2369, file: !359, line: 62, type: !36)
!2411 = !DILocalVariable(name: "version", arg: 4, scope: !2369, file: !359, line: 63, type: !36)
!2412 = !DILocalVariable(name: "authors", arg: 5, scope: !2369, file: !359, line: 64, type: !2406)
!2413 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2369, file: !359, line: 64, type: !33)
!2414 = !DILocation(line: 0, scope: !2369)
!2415 = !DILocation(line: 66, column: 7, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2369, file: !359, line: 66, column: 7)
!2417 = !DILocation(line: 66, column: 7, scope: !2369)
!2418 = !DILocation(line: 67, column: 5, scope: !2416)
!2419 = !DILocation(line: 69, column: 5, scope: !2416)
!2420 = !DILocation(line: 83, column: 3, scope: !2369)
!2421 = !DILocation(line: 85, column: 3, scope: !2369)
!2422 = !DILocation(line: 88, column: 3, scope: !2369)
!2423 = !DILocation(line: 95, column: 3, scope: !2369)
!2424 = !DILocation(line: 97, column: 3, scope: !2369)
!2425 = !DILocation(line: 105, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2369, file: !359, line: 98, column: 5)
!2427 = !DILocation(line: 106, column: 7, scope: !2426)
!2428 = !DILocation(line: 109, column: 7, scope: !2426)
!2429 = !DILocation(line: 110, column: 7, scope: !2426)
!2430 = !DILocation(line: 113, column: 7, scope: !2426)
!2431 = !DILocation(line: 115, column: 7, scope: !2426)
!2432 = !DILocation(line: 120, column: 7, scope: !2426)
!2433 = !DILocation(line: 122, column: 7, scope: !2426)
!2434 = !DILocation(line: 127, column: 7, scope: !2426)
!2435 = !DILocation(line: 129, column: 7, scope: !2426)
!2436 = !DILocation(line: 134, column: 7, scope: !2426)
!2437 = !DILocation(line: 137, column: 7, scope: !2426)
!2438 = !DILocation(line: 142, column: 7, scope: !2426)
!2439 = !DILocation(line: 145, column: 7, scope: !2426)
!2440 = !DILocation(line: 150, column: 7, scope: !2426)
!2441 = !DILocation(line: 154, column: 7, scope: !2426)
!2442 = !DILocation(line: 159, column: 7, scope: !2426)
!2443 = !DILocation(line: 163, column: 7, scope: !2426)
!2444 = !DILocation(line: 170, column: 7, scope: !2426)
!2445 = !DILocation(line: 174, column: 7, scope: !2426)
!2446 = !DILocation(line: 176, column: 1, scope: !2369)
!2447 = distinct !DISubprogram(name: "version_etc_ar", scope: !359, file: !359, line: 183, type: !2448, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{null, !2372, !36, !36, !36, !2406}
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456}
!2451 = !DILocalVariable(name: "stream", arg: 1, scope: !2447, file: !359, line: 183, type: !2372)
!2452 = !DILocalVariable(name: "command_name", arg: 2, scope: !2447, file: !359, line: 184, type: !36)
!2453 = !DILocalVariable(name: "package", arg: 3, scope: !2447, file: !359, line: 184, type: !36)
!2454 = !DILocalVariable(name: "version", arg: 4, scope: !2447, file: !359, line: 185, type: !36)
!2455 = !DILocalVariable(name: "authors", arg: 5, scope: !2447, file: !359, line: 185, type: !2406)
!2456 = !DILocalVariable(name: "n_authors", scope: !2447, file: !359, line: 187, type: !33)
!2457 = !DILocation(line: 0, scope: !2447)
!2458 = !DILocation(line: 189, column: 8, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2447, file: !359, line: 189, column: 3)
!2460 = !DILocation(line: 0, scope: !2459)
!2461 = !DILocation(line: 189, column: 23, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2459, file: !359, line: 189, column: 3)
!2463 = !DILocation(line: 189, column: 3, scope: !2459)
!2464 = !DILocation(line: 189, column: 52, scope: !2462)
!2465 = distinct !{!2465, !2463, !2466, !494}
!2466 = !DILocation(line: 190, column: 5, scope: !2459)
!2467 = !DILocation(line: 191, column: 3, scope: !2447)
!2468 = !DILocation(line: 192, column: 1, scope: !2447)
!2469 = distinct !DISubprogram(name: "version_etc_va", scope: !359, file: !359, line: 199, type: !2470, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !2483)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2372, !36, !36, !36, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !166, line: 52, baseType: !2473)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !168, line: 32, baseType: !2474)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2475, baseType: !2476)
!2475 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !172, size: 256, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2482}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2476, file: !2475, line: 192, baseType: !30, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2476, file: !2475, line: 192, baseType: !30, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2476, file: !2475, line: 192, baseType: !30, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2476, file: !2475, line: 192, baseType: !31, size: 32, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2476, file: !2475, line: 192, baseType: !31, size: 32, offset: 224)
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2484 = !DILocalVariable(name: "stream", arg: 1, scope: !2469, file: !359, line: 199, type: !2372)
!2485 = !DILocalVariable(name: "command_name", arg: 2, scope: !2469, file: !359, line: 200, type: !36)
!2486 = !DILocalVariable(name: "package", arg: 3, scope: !2469, file: !359, line: 200, type: !36)
!2487 = !DILocalVariable(name: "version", arg: 4, scope: !2469, file: !359, line: 201, type: !36)
!2488 = !DILocalVariable(name: "authors", arg: 5, scope: !2469, file: !359, line: 201, type: !2472)
!2489 = !DILocalVariable(name: "n_authors", scope: !2469, file: !359, line: 203, type: !33)
!2490 = !DILocalVariable(name: "authtab", scope: !2469, file: !359, line: 204, type: !2491)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !267)
!2492 = !DILocation(line: 0, scope: !2469)
!2493 = !DILocation(line: 201, column: 46, scope: !2469)
!2494 = !DILocation(line: 204, column: 3, scope: !2469)
!2495 = !DILocation(line: 204, column: 15, scope: !2469)
!2496 = !DILocation(line: 208, column: 35, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !359, line: 206, column: 3)
!2498 = distinct !DILexicalBlock(scope: !2469, file: !359, line: 206, column: 3)
!2499 = !DILocation(line: 208, column: 14, scope: !2497)
!2500 = !DILocation(line: 208, column: 33, scope: !2497)
!2501 = !DILocation(line: 208, column: 67, scope: !2497)
!2502 = !DILocation(line: 206, column: 3, scope: !2498)
!2503 = !DILocation(line: 0, scope: !2498)
!2504 = !DILocation(line: 211, column: 3, scope: !2469)
!2505 = !DILocation(line: 213, column: 1, scope: !2469)
!2506 = distinct !DISubprogram(name: "version_etc", scope: !359, file: !359, line: 230, type: !2507, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !2372, !36, !36, !36, null}
!2509 = !{!2510, !2511, !2512, !2513, !2514}
!2510 = !DILocalVariable(name: "stream", arg: 1, scope: !2506, file: !359, line: 230, type: !2372)
!2511 = !DILocalVariable(name: "command_name", arg: 2, scope: !2506, file: !359, line: 231, type: !36)
!2512 = !DILocalVariable(name: "package", arg: 3, scope: !2506, file: !359, line: 231, type: !36)
!2513 = !DILocalVariable(name: "version", arg: 4, scope: !2506, file: !359, line: 232, type: !36)
!2514 = !DILocalVariable(name: "authors", scope: !2506, file: !359, line: 234, type: !2472)
!2515 = !DILocation(line: 0, scope: !2506)
!2516 = !DILocation(line: 234, column: 3, scope: !2506)
!2517 = !DILocation(line: 234, column: 11, scope: !2506)
!2518 = !DILocation(line: 235, column: 3, scope: !2506)
!2519 = !DILocation(line: 236, column: 3, scope: !2506)
!2520 = !DILocation(line: 237, column: 3, scope: !2506)
!2521 = !DILocation(line: 238, column: 1, scope: !2506)
!2522 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !359, file: !359, line: 241, type: !193, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !520)
!2523 = !DILocation(line: 243, column: 3, scope: !2522)
!2524 = !DILocation(line: 248, column: 3, scope: !2522)
!2525 = !DILocation(line: 254, column: 3, scope: !2522)
!2526 = !DILocation(line: 259, column: 3, scope: !2522)
!2527 = !DILocation(line: 261, column: 1, scope: !2522)
!2528 = distinct !DISubprogram(name: "xnrealloc", scope: !2529, file: !2529, line: 147, type: !2530, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2532)
!2529 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!30, !30, !33, !33}
!2532 = !{!2533, !2534, !2535}
!2533 = !DILocalVariable(name: "p", arg: 1, scope: !2528, file: !2529, line: 147, type: !30)
!2534 = !DILocalVariable(name: "n", arg: 2, scope: !2528, file: !2529, line: 147, type: !33)
!2535 = !DILocalVariable(name: "s", arg: 3, scope: !2528, file: !2529, line: 147, type: !33)
!2536 = !DILocation(line: 0, scope: !2528)
!2537 = !DILocalVariable(name: "p", arg: 1, scope: !2538, file: !366, line: 83, type: !30)
!2538 = distinct !DISubprogram(name: "xreallocarray", scope: !366, file: !366, line: 83, type: !2530, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2539)
!2539 = !{!2537, !2540, !2541}
!2540 = !DILocalVariable(name: "n", arg: 2, scope: !2538, file: !366, line: 83, type: !33)
!2541 = !DILocalVariable(name: "s", arg: 3, scope: !2538, file: !366, line: 83, type: !33)
!2542 = !DILocation(line: 0, scope: !2538, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 149, column: 10, scope: !2528)
!2544 = !DILocation(line: 85, column: 25, scope: !2538, inlinedAt: !2543)
!2545 = !DILocalVariable(name: "p", arg: 1, scope: !2546, file: !366, line: 37, type: !30)
!2546 = distinct !DISubprogram(name: "check_nonnull", scope: !366, file: !366, line: 37, type: !2547, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!30, !30}
!2549 = !{!2545}
!2550 = !DILocation(line: 0, scope: !2546, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 85, column: 10, scope: !2538, inlinedAt: !2543)
!2552 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2551)
!2553 = distinct !DILexicalBlock(scope: !2546, file: !366, line: 39, column: 7)
!2554 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2551)
!2555 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2551)
!2556 = !DILocation(line: 149, column: 3, scope: !2528)
!2557 = !DILocation(line: 0, scope: !2538)
!2558 = !DILocation(line: 85, column: 25, scope: !2538)
!2559 = !DILocation(line: 0, scope: !2546, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 85, column: 10, scope: !2538)
!2561 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2560)
!2562 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2560)
!2563 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2560)
!2564 = !DILocation(line: 85, column: 3, scope: !2538)
!2565 = distinct !DISubprogram(name: "xmalloc", scope: !366, file: !366, line: 47, type: !2566, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!30, !33}
!2568 = !{!2569}
!2569 = !DILocalVariable(name: "s", arg: 1, scope: !2565, file: !366, line: 47, type: !33)
!2570 = !DILocation(line: 0, scope: !2565)
!2571 = !DILocation(line: 49, column: 25, scope: !2565)
!2572 = !DILocation(line: 0, scope: !2546, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 49, column: 10, scope: !2565)
!2574 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2573)
!2575 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2573)
!2576 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2573)
!2577 = !DILocation(line: 49, column: 3, scope: !2565)
!2578 = distinct !DISubprogram(name: "ximalloc", scope: !366, file: !366, line: 53, type: !2579, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!30, !385}
!2581 = !{!2582}
!2582 = !DILocalVariable(name: "s", arg: 1, scope: !2578, file: !366, line: 53, type: !385)
!2583 = !DILocation(line: 0, scope: !2578)
!2584 = !DILocalVariable(name: "s", arg: 1, scope: !2585, file: !2586, line: 55, type: !385)
!2585 = distinct !DISubprogram(name: "imalloc", scope: !2586, file: !2586, line: 55, type: !2579, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2587)
!2586 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2587 = !{!2584}
!2588 = !DILocation(line: 0, scope: !2585, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 55, column: 25, scope: !2578)
!2590 = !DILocation(line: 57, column: 26, scope: !2585, inlinedAt: !2589)
!2591 = !DILocation(line: 0, scope: !2546, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 55, column: 10, scope: !2578)
!2593 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2592)
!2594 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2592)
!2595 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2592)
!2596 = !DILocation(line: 55, column: 3, scope: !2578)
!2597 = distinct !DISubprogram(name: "xcharalloc", scope: !366, file: !366, line: 59, type: !2598, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!28, !33}
!2600 = !{!2601}
!2601 = !DILocalVariable(name: "n", arg: 1, scope: !2597, file: !366, line: 59, type: !33)
!2602 = !DILocation(line: 0, scope: !2597)
!2603 = !DILocation(line: 0, scope: !2565, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 61, column: 10, scope: !2597)
!2605 = !DILocation(line: 49, column: 25, scope: !2565, inlinedAt: !2604)
!2606 = !DILocation(line: 0, scope: !2546, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 49, column: 10, scope: !2565, inlinedAt: !2604)
!2608 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2607)
!2609 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2607)
!2610 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2607)
!2611 = !DILocation(line: 61, column: 3, scope: !2597)
!2612 = distinct !DISubprogram(name: "xrealloc", scope: !366, file: !366, line: 68, type: !2613, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!30, !30, !33}
!2615 = !{!2616, !2617}
!2616 = !DILocalVariable(name: "p", arg: 1, scope: !2612, file: !366, line: 68, type: !30)
!2617 = !DILocalVariable(name: "s", arg: 2, scope: !2612, file: !366, line: 68, type: !33)
!2618 = !DILocation(line: 0, scope: !2612)
!2619 = !DILocalVariable(name: "ptr", arg: 1, scope: !2620, file: !2621, line: 2057, type: !30)
!2620 = distinct !DISubprogram(name: "rpl_realloc", scope: !2621, file: !2621, line: 2057, type: !2613, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2622)
!2621 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2622 = !{!2619, !2623}
!2623 = !DILocalVariable(name: "size", arg: 2, scope: !2620, file: !2621, line: 2057, type: !33)
!2624 = !DILocation(line: 0, scope: !2620, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 70, column: 25, scope: !2612)
!2626 = !DILocation(line: 2059, column: 24, scope: !2620, inlinedAt: !2625)
!2627 = !DILocation(line: 2059, column: 10, scope: !2620, inlinedAt: !2625)
!2628 = !DILocation(line: 0, scope: !2546, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 70, column: 10, scope: !2612)
!2630 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2629)
!2631 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2629)
!2632 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2629)
!2633 = !DILocation(line: 70, column: 3, scope: !2612)
!2634 = distinct !DISubprogram(name: "xirealloc", scope: !366, file: !366, line: 74, type: !2635, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!30, !30, !385}
!2637 = !{!2638, !2639}
!2638 = !DILocalVariable(name: "p", arg: 1, scope: !2634, file: !366, line: 74, type: !30)
!2639 = !DILocalVariable(name: "s", arg: 2, scope: !2634, file: !366, line: 74, type: !385)
!2640 = !DILocation(line: 0, scope: !2634)
!2641 = !DILocalVariable(name: "p", arg: 1, scope: !2642, file: !2586, line: 66, type: !30)
!2642 = distinct !DISubprogram(name: "irealloc", scope: !2586, file: !2586, line: 66, type: !2635, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2643)
!2643 = !{!2641, !2644}
!2644 = !DILocalVariable(name: "s", arg: 2, scope: !2642, file: !2586, line: 66, type: !385)
!2645 = !DILocation(line: 0, scope: !2642, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 76, column: 25, scope: !2634)
!2647 = !DILocation(line: 0, scope: !2620, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 68, column: 26, scope: !2642, inlinedAt: !2646)
!2649 = !DILocation(line: 2059, column: 24, scope: !2620, inlinedAt: !2648)
!2650 = !DILocation(line: 2059, column: 10, scope: !2620, inlinedAt: !2648)
!2651 = !DILocation(line: 0, scope: !2546, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 76, column: 10, scope: !2634)
!2653 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2652)
!2654 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2652)
!2655 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2652)
!2656 = !DILocation(line: 76, column: 3, scope: !2634)
!2657 = distinct !DISubprogram(name: "xireallocarray", scope: !366, file: !366, line: 89, type: !2658, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!30, !30, !385, !385}
!2660 = !{!2661, !2662, !2663}
!2661 = !DILocalVariable(name: "p", arg: 1, scope: !2657, file: !366, line: 89, type: !30)
!2662 = !DILocalVariable(name: "n", arg: 2, scope: !2657, file: !366, line: 89, type: !385)
!2663 = !DILocalVariable(name: "s", arg: 3, scope: !2657, file: !366, line: 89, type: !385)
!2664 = !DILocation(line: 0, scope: !2657)
!2665 = !DILocalVariable(name: "p", arg: 1, scope: !2666, file: !2586, line: 98, type: !30)
!2666 = distinct !DISubprogram(name: "ireallocarray", scope: !2586, file: !2586, line: 98, type: !2658, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2667)
!2667 = !{!2665, !2668, !2669}
!2668 = !DILocalVariable(name: "n", arg: 2, scope: !2666, file: !2586, line: 98, type: !385)
!2669 = !DILocalVariable(name: "s", arg: 3, scope: !2666, file: !2586, line: 98, type: !385)
!2670 = !DILocation(line: 0, scope: !2666, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 91, column: 25, scope: !2657)
!2672 = !DILocation(line: 101, column: 13, scope: !2666, inlinedAt: !2671)
!2673 = !DILocation(line: 0, scope: !2546, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 91, column: 10, scope: !2657)
!2675 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2674)
!2676 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2674)
!2677 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2674)
!2678 = !DILocation(line: 91, column: 3, scope: !2657)
!2679 = distinct !DISubprogram(name: "xnmalloc", scope: !366, file: !366, line: 98, type: !2680, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!30, !33, !33}
!2682 = !{!2683, !2684}
!2683 = !DILocalVariable(name: "n", arg: 1, scope: !2679, file: !366, line: 98, type: !33)
!2684 = !DILocalVariable(name: "s", arg: 2, scope: !2679, file: !366, line: 98, type: !33)
!2685 = !DILocation(line: 0, scope: !2679)
!2686 = !DILocation(line: 0, scope: !2538, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 100, column: 10, scope: !2679)
!2688 = !DILocation(line: 85, column: 25, scope: !2538, inlinedAt: !2687)
!2689 = !DILocation(line: 0, scope: !2546, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 85, column: 10, scope: !2538, inlinedAt: !2687)
!2691 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2690)
!2692 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2690)
!2693 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2690)
!2694 = !DILocation(line: 100, column: 3, scope: !2679)
!2695 = distinct !DISubprogram(name: "xinmalloc", scope: !366, file: !366, line: 104, type: !2696, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!30, !385, !385}
!2698 = !{!2699, !2700}
!2699 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !366, line: 104, type: !385)
!2700 = !DILocalVariable(name: "s", arg: 2, scope: !2695, file: !366, line: 104, type: !385)
!2701 = !DILocation(line: 0, scope: !2695)
!2702 = !DILocation(line: 0, scope: !2657, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 106, column: 10, scope: !2695)
!2704 = !DILocation(line: 0, scope: !2666, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 91, column: 25, scope: !2657, inlinedAt: !2703)
!2706 = !DILocation(line: 101, column: 13, scope: !2666, inlinedAt: !2705)
!2707 = !DILocation(line: 0, scope: !2546, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 91, column: 10, scope: !2657, inlinedAt: !2703)
!2709 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2708)
!2710 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2708)
!2711 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2708)
!2712 = !DILocation(line: 106, column: 3, scope: !2695)
!2713 = distinct !DISubprogram(name: "x2realloc", scope: !366, file: !366, line: 116, type: !2714, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!30, !30, !372}
!2716 = !{!2717, !2718}
!2717 = !DILocalVariable(name: "p", arg: 1, scope: !2713, file: !366, line: 116, type: !30)
!2718 = !DILocalVariable(name: "ps", arg: 2, scope: !2713, file: !366, line: 116, type: !372)
!2719 = !DILocation(line: 0, scope: !2713)
!2720 = !DILocation(line: 0, scope: !369, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 118, column: 10, scope: !2713)
!2722 = !DILocation(line: 178, column: 14, scope: !369, inlinedAt: !2721)
!2723 = !DILocation(line: 180, column: 9, scope: !2724, inlinedAt: !2721)
!2724 = distinct !DILexicalBlock(scope: !369, file: !366, line: 180, column: 7)
!2725 = !DILocation(line: 180, column: 7, scope: !369, inlinedAt: !2721)
!2726 = !DILocation(line: 182, column: 13, scope: !2727, inlinedAt: !2721)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !366, line: 182, column: 11)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !366, line: 181, column: 5)
!2729 = !DILocation(line: 182, column: 11, scope: !2728, inlinedAt: !2721)
!2730 = !DILocation(line: 197, column: 11, scope: !2731, inlinedAt: !2721)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !366, line: 197, column: 11)
!2732 = distinct !DILexicalBlock(scope: !2724, file: !366, line: 195, column: 5)
!2733 = !DILocation(line: 197, column: 11, scope: !2732, inlinedAt: !2721)
!2734 = !DILocation(line: 198, column: 9, scope: !2731, inlinedAt: !2721)
!2735 = !DILocation(line: 0, scope: !2538, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 201, column: 7, scope: !369, inlinedAt: !2721)
!2737 = !DILocation(line: 85, column: 25, scope: !2538, inlinedAt: !2736)
!2738 = !DILocation(line: 0, scope: !2546, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 85, column: 10, scope: !2538, inlinedAt: !2736)
!2740 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2739)
!2741 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2739)
!2742 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2739)
!2743 = !DILocation(line: 202, column: 7, scope: !369, inlinedAt: !2721)
!2744 = !DILocation(line: 118, column: 3, scope: !2713)
!2745 = !DILocation(line: 0, scope: !369)
!2746 = !DILocation(line: 178, column: 14, scope: !369)
!2747 = !DILocation(line: 180, column: 9, scope: !2724)
!2748 = !DILocation(line: 180, column: 7, scope: !369)
!2749 = !DILocation(line: 182, column: 13, scope: !2727)
!2750 = !DILocation(line: 182, column: 11, scope: !2728)
!2751 = !DILocation(line: 190, column: 30, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2727, file: !366, line: 183, column: 9)
!2753 = !DILocation(line: 191, column: 16, scope: !2752)
!2754 = !DILocation(line: 191, column: 13, scope: !2752)
!2755 = !DILocation(line: 192, column: 9, scope: !2752)
!2756 = !DILocation(line: 197, column: 11, scope: !2731)
!2757 = !DILocation(line: 197, column: 11, scope: !2732)
!2758 = !DILocation(line: 198, column: 9, scope: !2731)
!2759 = !DILocation(line: 0, scope: !2538, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 201, column: 7, scope: !369)
!2761 = !DILocation(line: 85, column: 25, scope: !2538, inlinedAt: !2760)
!2762 = !DILocation(line: 0, scope: !2546, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 85, column: 10, scope: !2538, inlinedAt: !2760)
!2764 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2763)
!2765 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2763)
!2766 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2763)
!2767 = !DILocation(line: 202, column: 7, scope: !369)
!2768 = !DILocation(line: 203, column: 3, scope: !369)
!2769 = !DILocation(line: 0, scope: !381)
!2770 = !DILocation(line: 230, column: 14, scope: !381)
!2771 = !DILocation(line: 238, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !381, file: !366, line: 238, column: 7)
!2773 = !DILocation(line: 238, column: 7, scope: !381)
!2774 = !DILocation(line: 240, column: 9, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !381, file: !366, line: 240, column: 7)
!2776 = !DILocation(line: 240, column: 18, scope: !2775)
!2777 = !DILocation(line: 253, column: 8, scope: !381)
!2778 = !DILocation(line: 258, column: 27, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !366, line: 257, column: 5)
!2780 = distinct !DILexicalBlock(scope: !381, file: !366, line: 256, column: 7)
!2781 = !DILocation(line: 259, column: 32, scope: !2779)
!2782 = !DILocation(line: 260, column: 5, scope: !2779)
!2783 = !DILocation(line: 262, column: 9, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !381, file: !366, line: 262, column: 7)
!2785 = !DILocation(line: 262, column: 7, scope: !381)
!2786 = !DILocation(line: 263, column: 9, scope: !2784)
!2787 = !DILocation(line: 263, column: 5, scope: !2784)
!2788 = !DILocation(line: 264, column: 9, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !381, file: !366, line: 264, column: 7)
!2790 = !DILocation(line: 264, column: 14, scope: !2789)
!2791 = !DILocation(line: 265, column: 7, scope: !2789)
!2792 = !DILocation(line: 265, column: 11, scope: !2789)
!2793 = !DILocation(line: 266, column: 11, scope: !2789)
!2794 = !DILocation(line: 266, column: 26, scope: !2789)
!2795 = !DILocation(line: 267, column: 14, scope: !2789)
!2796 = !DILocation(line: 264, column: 7, scope: !381)
!2797 = !DILocation(line: 268, column: 5, scope: !2789)
!2798 = !DILocation(line: 0, scope: !2612, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 269, column: 8, scope: !381)
!2800 = !DILocation(line: 0, scope: !2620, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 70, column: 25, scope: !2612, inlinedAt: !2799)
!2802 = !DILocation(line: 2059, column: 24, scope: !2620, inlinedAt: !2801)
!2803 = !DILocation(line: 2059, column: 10, scope: !2620, inlinedAt: !2801)
!2804 = !DILocation(line: 0, scope: !2546, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 70, column: 10, scope: !2612, inlinedAt: !2799)
!2806 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2805)
!2807 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2805)
!2808 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2805)
!2809 = !DILocation(line: 270, column: 7, scope: !381)
!2810 = !DILocation(line: 271, column: 3, scope: !381)
!2811 = distinct !DISubprogram(name: "xzalloc", scope: !366, file: !366, line: 279, type: !2566, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2812)
!2812 = !{!2813}
!2813 = !DILocalVariable(name: "s", arg: 1, scope: !2811, file: !366, line: 279, type: !33)
!2814 = !DILocation(line: 0, scope: !2811)
!2815 = !DILocalVariable(name: "n", arg: 1, scope: !2816, file: !366, line: 294, type: !33)
!2816 = distinct !DISubprogram(name: "xcalloc", scope: !366, file: !366, line: 294, type: !2680, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2817)
!2817 = !{!2815, !2818}
!2818 = !DILocalVariable(name: "s", arg: 2, scope: !2816, file: !366, line: 294, type: !33)
!2819 = !DILocation(line: 0, scope: !2816, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 281, column: 10, scope: !2811)
!2821 = !DILocation(line: 296, column: 25, scope: !2816, inlinedAt: !2820)
!2822 = !DILocation(line: 0, scope: !2546, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 296, column: 10, scope: !2816, inlinedAt: !2820)
!2824 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2823)
!2825 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2823)
!2826 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2823)
!2827 = !DILocation(line: 281, column: 3, scope: !2811)
!2828 = !DILocation(line: 0, scope: !2816)
!2829 = !DILocation(line: 296, column: 25, scope: !2816)
!2830 = !DILocation(line: 0, scope: !2546, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 296, column: 10, scope: !2816)
!2832 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2831)
!2833 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2831)
!2834 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2831)
!2835 = !DILocation(line: 296, column: 3, scope: !2816)
!2836 = distinct !DISubprogram(name: "xizalloc", scope: !366, file: !366, line: 285, type: !2579, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2837)
!2837 = !{!2838}
!2838 = !DILocalVariable(name: "s", arg: 1, scope: !2836, file: !366, line: 285, type: !385)
!2839 = !DILocation(line: 0, scope: !2836)
!2840 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !366, line: 300, type: !385)
!2841 = distinct !DISubprogram(name: "xicalloc", scope: !366, file: !366, line: 300, type: !2696, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2842)
!2842 = !{!2840, !2843}
!2843 = !DILocalVariable(name: "s", arg: 2, scope: !2841, file: !366, line: 300, type: !385)
!2844 = !DILocation(line: 0, scope: !2841, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 287, column: 10, scope: !2836)
!2846 = !DILocalVariable(name: "n", arg: 1, scope: !2847, file: !2586, line: 77, type: !385)
!2847 = distinct !DISubprogram(name: "icalloc", scope: !2586, file: !2586, line: 77, type: !2696, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2848)
!2848 = !{!2846, !2849}
!2849 = !DILocalVariable(name: "s", arg: 2, scope: !2847, file: !2586, line: 77, type: !385)
!2850 = !DILocation(line: 0, scope: !2847, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 302, column: 25, scope: !2841, inlinedAt: !2845)
!2852 = !DILocation(line: 91, column: 10, scope: !2847, inlinedAt: !2851)
!2853 = !DILocation(line: 0, scope: !2546, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 302, column: 10, scope: !2841, inlinedAt: !2845)
!2855 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2854)
!2856 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2854)
!2857 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2854)
!2858 = !DILocation(line: 287, column: 3, scope: !2836)
!2859 = !DILocation(line: 0, scope: !2841)
!2860 = !DILocation(line: 0, scope: !2847, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 302, column: 25, scope: !2841)
!2862 = !DILocation(line: 91, column: 10, scope: !2847, inlinedAt: !2861)
!2863 = !DILocation(line: 0, scope: !2546, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 302, column: 10, scope: !2841)
!2865 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2864)
!2866 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2864)
!2867 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2864)
!2868 = !DILocation(line: 302, column: 3, scope: !2841)
!2869 = distinct !DISubprogram(name: "xmemdup", scope: !366, file: !366, line: 310, type: !2870, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!30, !646, !33}
!2872 = !{!2873, !2874}
!2873 = !DILocalVariable(name: "p", arg: 1, scope: !2869, file: !366, line: 310, type: !646)
!2874 = !DILocalVariable(name: "s", arg: 2, scope: !2869, file: !366, line: 310, type: !33)
!2875 = !DILocation(line: 0, scope: !2869)
!2876 = !DILocation(line: 0, scope: !2565, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 312, column: 18, scope: !2869)
!2878 = !DILocation(line: 49, column: 25, scope: !2565, inlinedAt: !2877)
!2879 = !DILocation(line: 0, scope: !2546, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 49, column: 10, scope: !2565, inlinedAt: !2877)
!2881 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2880)
!2882 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2880)
!2883 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2880)
!2884 = !DILocalVariable(name: "__dest", arg: 1, scope: !2885, file: !1056, line: 26, type: !2888)
!2885 = distinct !DISubprogram(name: "memcpy", scope: !1056, file: !1056, line: 26, type: !2886, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2889)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!30, !2888, !645, !33}
!2888 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!2889 = !{!2884, !2890, !2891}
!2890 = !DILocalVariable(name: "__src", arg: 2, scope: !2885, file: !1056, line: 26, type: !645)
!2891 = !DILocalVariable(name: "__len", arg: 3, scope: !2885, file: !1056, line: 26, type: !33)
!2892 = !DILocation(line: 0, scope: !2885, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 312, column: 10, scope: !2869)
!2894 = !DILocation(line: 29, column: 10, scope: !2885, inlinedAt: !2893)
!2895 = !DILocation(line: 312, column: 3, scope: !2869)
!2896 = distinct !DISubprogram(name: "ximemdup", scope: !366, file: !366, line: 316, type: !2897, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!30, !646, !385}
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "p", arg: 1, scope: !2896, file: !366, line: 316, type: !646)
!2901 = !DILocalVariable(name: "s", arg: 2, scope: !2896, file: !366, line: 316, type: !385)
!2902 = !DILocation(line: 0, scope: !2896)
!2903 = !DILocation(line: 0, scope: !2578, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 318, column: 18, scope: !2896)
!2905 = !DILocation(line: 0, scope: !2585, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 55, column: 25, scope: !2578, inlinedAt: !2904)
!2907 = !DILocation(line: 57, column: 26, scope: !2585, inlinedAt: !2906)
!2908 = !DILocation(line: 0, scope: !2546, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 55, column: 10, scope: !2578, inlinedAt: !2904)
!2910 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2909)
!2911 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2909)
!2912 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2909)
!2913 = !DILocation(line: 0, scope: !2885, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 318, column: 10, scope: !2896)
!2915 = !DILocation(line: 29, column: 10, scope: !2885, inlinedAt: !2914)
!2916 = !DILocation(line: 318, column: 3, scope: !2896)
!2917 = distinct !DISubprogram(name: "ximemdup0", scope: !366, file: !366, line: 325, type: !2918, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!28, !646, !385}
!2920 = !{!2921, !2922, !2923}
!2921 = !DILocalVariable(name: "p", arg: 1, scope: !2917, file: !366, line: 325, type: !646)
!2922 = !DILocalVariable(name: "s", arg: 2, scope: !2917, file: !366, line: 325, type: !385)
!2923 = !DILocalVariable(name: "result", scope: !2917, file: !366, line: 327, type: !28)
!2924 = !DILocation(line: 0, scope: !2917)
!2925 = !DILocation(line: 327, column: 30, scope: !2917)
!2926 = !DILocation(line: 0, scope: !2578, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 327, column: 18, scope: !2917)
!2928 = !DILocation(line: 0, scope: !2585, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 55, column: 25, scope: !2578, inlinedAt: !2927)
!2930 = !DILocation(line: 57, column: 26, scope: !2585, inlinedAt: !2929)
!2931 = !DILocation(line: 0, scope: !2546, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 55, column: 10, scope: !2578, inlinedAt: !2927)
!2933 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2932)
!2934 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2932)
!2935 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2932)
!2936 = !DILocation(line: 328, column: 3, scope: !2917)
!2937 = !DILocation(line: 328, column: 13, scope: !2917)
!2938 = !DILocation(line: 0, scope: !2885, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 329, column: 10, scope: !2917)
!2940 = !DILocation(line: 29, column: 10, scope: !2885, inlinedAt: !2939)
!2941 = !DILocation(line: 329, column: 3, scope: !2917)
!2942 = distinct !DISubprogram(name: "xstrdup", scope: !366, file: !366, line: 335, type: !640, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !2943)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "string", arg: 1, scope: !2942, file: !366, line: 335, type: !36)
!2945 = !DILocation(line: 0, scope: !2942)
!2946 = !DILocation(line: 337, column: 27, scope: !2942)
!2947 = !DILocation(line: 337, column: 43, scope: !2942)
!2948 = !DILocation(line: 0, scope: !2869, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 337, column: 10, scope: !2942)
!2950 = !DILocation(line: 0, scope: !2565, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 312, column: 18, scope: !2869, inlinedAt: !2949)
!2952 = !DILocation(line: 49, column: 25, scope: !2565, inlinedAt: !2951)
!2953 = !DILocation(line: 0, scope: !2546, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 49, column: 10, scope: !2565, inlinedAt: !2951)
!2955 = !DILocation(line: 39, column: 8, scope: !2553, inlinedAt: !2954)
!2956 = !DILocation(line: 39, column: 7, scope: !2546, inlinedAt: !2954)
!2957 = !DILocation(line: 40, column: 5, scope: !2553, inlinedAt: !2954)
!2958 = !DILocation(line: 0, scope: !2885, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 312, column: 10, scope: !2869, inlinedAt: !2949)
!2960 = !DILocation(line: 29, column: 10, scope: !2885, inlinedAt: !2959)
!2961 = !DILocation(line: 337, column: 3, scope: !2942)
!2962 = distinct !DISubprogram(name: "xalloc_die", scope: !400, file: !400, line: 32, type: !193, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2963)
!2963 = !{!2964}
!2964 = !DILocalVariable(name: "__errstatus", scope: !2965, file: !400, line: 34, type: !2966)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !400, line: 34, column: 3)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!2967 = !DILocation(line: 34, column: 3, scope: !2965)
!2968 = !DILocation(line: 0, scope: !2965)
!2969 = !DILocation(line: 40, column: 3, scope: !2962)
!2970 = distinct !DISubprogram(name: "close_stream", scope: !402, file: !402, line: 55, type: !2971, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3007)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!31, !2973}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 7, baseType: !2975)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 49, size: 1728, elements: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2975, file: !72, line: 51, baseType: !31, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2975, file: !72, line: 54, baseType: !28, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2975, file: !72, line: 55, baseType: !28, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2975, file: !72, line: 56, baseType: !28, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2975, file: !72, line: 57, baseType: !28, size: 64, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2975, file: !72, line: 58, baseType: !28, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2975, file: !72, line: 59, baseType: !28, size: 64, offset: 384)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2975, file: !72, line: 60, baseType: !28, size: 64, offset: 448)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2975, file: !72, line: 61, baseType: !28, size: 64, offset: 512)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2975, file: !72, line: 64, baseType: !28, size: 64, offset: 576)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2975, file: !72, line: 65, baseType: !28, size: 64, offset: 640)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2975, file: !72, line: 66, baseType: !28, size: 64, offset: 704)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2975, file: !72, line: 68, baseType: !87, size: 64, offset: 768)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2975, file: !72, line: 70, baseType: !2991, size: 64, offset: 832)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2975, file: !72, line: 72, baseType: !31, size: 32, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2975, file: !72, line: 73, baseType: !31, size: 32, offset: 928)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2975, file: !72, line: 74, baseType: !94, size: 64, offset: 960)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2975, file: !72, line: 77, baseType: !32, size: 16, offset: 1024)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2975, file: !72, line: 78, baseType: !99, size: 8, offset: 1040)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2975, file: !72, line: 79, baseType: !101, size: 8, offset: 1048)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2975, file: !72, line: 81, baseType: !105, size: 64, offset: 1088)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2975, file: !72, line: 89, baseType: !108, size: 64, offset: 1152)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2975, file: !72, line: 91, baseType: !110, size: 64, offset: 1216)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2975, file: !72, line: 92, baseType: !113, size: 64, offset: 1280)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2975, file: !72, line: 93, baseType: !2991, size: 64, offset: 1344)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2975, file: !72, line: 94, baseType: !30, size: 64, offset: 1408)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2975, file: !72, line: 95, baseType: !33, size: 64, offset: 1472)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2975, file: !72, line: 96, baseType: !31, size: 32, offset: 1536)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2975, file: !72, line: 98, baseType: !120, size: 160, offset: 1568)
!3007 = !{!3008, !3009, !3011, !3012}
!3008 = !DILocalVariable(name: "stream", arg: 1, scope: !2970, file: !402, line: 55, type: !2973)
!3009 = !DILocalVariable(name: "some_pending", scope: !2970, file: !402, line: 57, type: !3010)
!3010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!3011 = !DILocalVariable(name: "prev_fail", scope: !2970, file: !402, line: 58, type: !3010)
!3012 = !DILocalVariable(name: "fclose_fail", scope: !2970, file: !402, line: 59, type: !3010)
!3013 = !DILocation(line: 0, scope: !2970)
!3014 = !DILocation(line: 57, column: 30, scope: !2970)
!3015 = !DILocalVariable(name: "__stream", arg: 1, scope: !3016, file: !905, line: 135, type: !2973)
!3016 = distinct !DISubprogram(name: "ferror_unlocked", scope: !905, file: !905, line: 135, type: !2971, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3017)
!3017 = !{!3015}
!3018 = !DILocation(line: 0, scope: !3016, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 58, column: 27, scope: !2970)
!3020 = !DILocation(line: 137, column: 10, scope: !3016, inlinedAt: !3019)
!3021 = !{!914, !529, i64 0}
!3022 = !DILocation(line: 58, column: 43, scope: !2970)
!3023 = !DILocation(line: 59, column: 29, scope: !2970)
!3024 = !DILocation(line: 59, column: 45, scope: !2970)
!3025 = !DILocation(line: 69, column: 17, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2970, file: !402, line: 69, column: 7)
!3027 = !DILocation(line: 57, column: 50, scope: !2970)
!3028 = !DILocation(line: 69, column: 33, scope: !3026)
!3029 = !DILocation(line: 69, column: 53, scope: !3026)
!3030 = !DILocation(line: 69, column: 59, scope: !3026)
!3031 = !DILocation(line: 69, column: 7, scope: !2970)
!3032 = !DILocation(line: 71, column: 11, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3026, file: !402, line: 70, column: 5)
!3034 = !DILocation(line: 72, column: 9, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3033, file: !402, line: 71, column: 11)
!3036 = !DILocation(line: 72, column: 15, scope: !3035)
!3037 = !DILocation(line: 77, column: 1, scope: !2970)
!3038 = distinct !DISubprogram(name: "rpl_fclose", scope: !404, file: !404, line: 58, type: !3039, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3075)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!31, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 7, baseType: !3043)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 49, size: 1728, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3043, file: !72, line: 51, baseType: !31, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3043, file: !72, line: 54, baseType: !28, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3043, file: !72, line: 55, baseType: !28, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3043, file: !72, line: 56, baseType: !28, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3043, file: !72, line: 57, baseType: !28, size: 64, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3043, file: !72, line: 58, baseType: !28, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3043, file: !72, line: 59, baseType: !28, size: 64, offset: 384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3043, file: !72, line: 60, baseType: !28, size: 64, offset: 448)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3043, file: !72, line: 61, baseType: !28, size: 64, offset: 512)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3043, file: !72, line: 64, baseType: !28, size: 64, offset: 576)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3043, file: !72, line: 65, baseType: !28, size: 64, offset: 640)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3043, file: !72, line: 66, baseType: !28, size: 64, offset: 704)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3043, file: !72, line: 68, baseType: !87, size: 64, offset: 768)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3043, file: !72, line: 70, baseType: !3059, size: 64, offset: 832)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3043, file: !72, line: 72, baseType: !31, size: 32, offset: 896)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3043, file: !72, line: 73, baseType: !31, size: 32, offset: 928)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3043, file: !72, line: 74, baseType: !94, size: 64, offset: 960)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3043, file: !72, line: 77, baseType: !32, size: 16, offset: 1024)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3043, file: !72, line: 78, baseType: !99, size: 8, offset: 1040)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3043, file: !72, line: 79, baseType: !101, size: 8, offset: 1048)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3043, file: !72, line: 81, baseType: !105, size: 64, offset: 1088)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3043, file: !72, line: 89, baseType: !108, size: 64, offset: 1152)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3043, file: !72, line: 91, baseType: !110, size: 64, offset: 1216)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3043, file: !72, line: 92, baseType: !113, size: 64, offset: 1280)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3043, file: !72, line: 93, baseType: !3059, size: 64, offset: 1344)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3043, file: !72, line: 94, baseType: !30, size: 64, offset: 1408)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3043, file: !72, line: 95, baseType: !33, size: 64, offset: 1472)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3043, file: !72, line: 96, baseType: !31, size: 32, offset: 1536)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3043, file: !72, line: 98, baseType: !120, size: 160, offset: 1568)
!3075 = !{!3076, !3077, !3078, !3079}
!3076 = !DILocalVariable(name: "fp", arg: 1, scope: !3038, file: !404, line: 58, type: !3041)
!3077 = !DILocalVariable(name: "saved_errno", scope: !3038, file: !404, line: 60, type: !31)
!3078 = !DILocalVariable(name: "fd", scope: !3038, file: !404, line: 63, type: !31)
!3079 = !DILocalVariable(name: "result", scope: !3038, file: !404, line: 74, type: !31)
!3080 = !DILocation(line: 0, scope: !3038)
!3081 = !DILocation(line: 63, column: 12, scope: !3038)
!3082 = !DILocation(line: 64, column: 10, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3038, file: !404, line: 64, column: 7)
!3084 = !DILocation(line: 64, column: 7, scope: !3038)
!3085 = !DILocation(line: 65, column: 12, scope: !3083)
!3086 = !DILocation(line: 65, column: 5, scope: !3083)
!3087 = !DILocation(line: 70, column: 9, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3038, file: !404, line: 70, column: 7)
!3089 = !DILocation(line: 70, column: 23, scope: !3088)
!3090 = !DILocation(line: 70, column: 33, scope: !3088)
!3091 = !DILocation(line: 70, column: 26, scope: !3088)
!3092 = !DILocation(line: 70, column: 59, scope: !3088)
!3093 = !DILocation(line: 71, column: 7, scope: !3088)
!3094 = !DILocation(line: 71, column: 10, scope: !3088)
!3095 = !DILocation(line: 70, column: 7, scope: !3038)
!3096 = !DILocation(line: 100, column: 12, scope: !3038)
!3097 = !DILocation(line: 105, column: 7, scope: !3038)
!3098 = !DILocation(line: 72, column: 19, scope: !3088)
!3099 = !DILocation(line: 105, column: 19, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3038, file: !404, line: 105, column: 7)
!3101 = !DILocation(line: 107, column: 13, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3100, file: !404, line: 106, column: 5)
!3103 = !DILocation(line: 109, column: 5, scope: !3102)
!3104 = !DILocation(line: 112, column: 1, scope: !3038)
!3105 = !DISubprogram(name: "fileno", scope: !166, file: !166, line: 809, type: !3039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!3106 = !DISubprogram(name: "fclose", scope: !166, file: !166, line: 178, type: !3039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!3107 = !DISubprogram(name: "lseek", scope: !724, file: !724, line: 339, type: !3108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!94, !31, !94, !31}
!3110 = distinct !DISubprogram(name: "rpl_fflush", scope: !406, file: !406, line: 130, type: !3111, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !3147)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!31, !3113}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 7, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 49, size: 1728, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3115, file: !72, line: 51, baseType: !31, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3115, file: !72, line: 54, baseType: !28, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3115, file: !72, line: 55, baseType: !28, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3115, file: !72, line: 56, baseType: !28, size: 64, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3115, file: !72, line: 57, baseType: !28, size: 64, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3115, file: !72, line: 58, baseType: !28, size: 64, offset: 320)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3115, file: !72, line: 59, baseType: !28, size: 64, offset: 384)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3115, file: !72, line: 60, baseType: !28, size: 64, offset: 448)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3115, file: !72, line: 61, baseType: !28, size: 64, offset: 512)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3115, file: !72, line: 64, baseType: !28, size: 64, offset: 576)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3115, file: !72, line: 65, baseType: !28, size: 64, offset: 640)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3115, file: !72, line: 66, baseType: !28, size: 64, offset: 704)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3115, file: !72, line: 68, baseType: !87, size: 64, offset: 768)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3115, file: !72, line: 70, baseType: !3131, size: 64, offset: 832)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3115, file: !72, line: 72, baseType: !31, size: 32, offset: 896)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3115, file: !72, line: 73, baseType: !31, size: 32, offset: 928)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3115, file: !72, line: 74, baseType: !94, size: 64, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3115, file: !72, line: 77, baseType: !32, size: 16, offset: 1024)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3115, file: !72, line: 78, baseType: !99, size: 8, offset: 1040)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3115, file: !72, line: 79, baseType: !101, size: 8, offset: 1048)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3115, file: !72, line: 81, baseType: !105, size: 64, offset: 1088)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3115, file: !72, line: 89, baseType: !108, size: 64, offset: 1152)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3115, file: !72, line: 91, baseType: !110, size: 64, offset: 1216)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3115, file: !72, line: 92, baseType: !113, size: 64, offset: 1280)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3115, file: !72, line: 93, baseType: !3131, size: 64, offset: 1344)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3115, file: !72, line: 94, baseType: !30, size: 64, offset: 1408)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3115, file: !72, line: 95, baseType: !33, size: 64, offset: 1472)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3115, file: !72, line: 96, baseType: !31, size: 32, offset: 1536)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3115, file: !72, line: 98, baseType: !120, size: 160, offset: 1568)
!3147 = !{!3148}
!3148 = !DILocalVariable(name: "stream", arg: 1, scope: !3110, file: !406, line: 130, type: !3113)
!3149 = !DILocation(line: 0, scope: !3110)
!3150 = !DILocation(line: 151, column: 14, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3110, file: !406, line: 151, column: 7)
!3152 = !DILocation(line: 151, column: 22, scope: !3151)
!3153 = !DILocation(line: 151, column: 27, scope: !3151)
!3154 = !DILocation(line: 151, column: 7, scope: !3110)
!3155 = !DILocation(line: 152, column: 12, scope: !3151)
!3156 = !DILocation(line: 152, column: 5, scope: !3151)
!3157 = !DILocalVariable(name: "fp", arg: 1, scope: !3158, file: !406, line: 42, type: !3113)
!3158 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !406, file: !406, line: 42, type: !3159, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{null, !3113}
!3161 = !{!3157}
!3162 = !DILocation(line: 0, scope: !3158, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 157, column: 3, scope: !3110)
!3164 = !DILocation(line: 44, column: 12, scope: !3165, inlinedAt: !3163)
!3165 = distinct !DILexicalBlock(scope: !3158, file: !406, line: 44, column: 7)
!3166 = !DILocation(line: 44, column: 19, scope: !3165, inlinedAt: !3163)
!3167 = !DILocation(line: 44, column: 7, scope: !3158, inlinedAt: !3163)
!3168 = !DILocation(line: 46, column: 5, scope: !3165, inlinedAt: !3163)
!3169 = !DILocation(line: 159, column: 10, scope: !3110)
!3170 = !DILocation(line: 159, column: 3, scope: !3110)
!3171 = !DILocation(line: 236, column: 1, scope: !3110)
!3172 = !DISubprogram(name: "fflush", scope: !166, file: !166, line: 230, type: !3111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!3173 = distinct !DISubprogram(name: "rpl_fseeko", scope: !408, file: !408, line: 28, type: !3174, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3211)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!31, !3176, !3210, !31}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 7, baseType: !3178)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 49, size: 1728, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3178, file: !72, line: 51, baseType: !31, size: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3178, file: !72, line: 54, baseType: !28, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3178, file: !72, line: 55, baseType: !28, size: 64, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3178, file: !72, line: 56, baseType: !28, size: 64, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3178, file: !72, line: 57, baseType: !28, size: 64, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3178, file: !72, line: 58, baseType: !28, size: 64, offset: 320)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3178, file: !72, line: 59, baseType: !28, size: 64, offset: 384)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3178, file: !72, line: 60, baseType: !28, size: 64, offset: 448)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3178, file: !72, line: 61, baseType: !28, size: 64, offset: 512)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3178, file: !72, line: 64, baseType: !28, size: 64, offset: 576)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3178, file: !72, line: 65, baseType: !28, size: 64, offset: 640)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3178, file: !72, line: 66, baseType: !28, size: 64, offset: 704)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3178, file: !72, line: 68, baseType: !87, size: 64, offset: 768)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3178, file: !72, line: 70, baseType: !3194, size: 64, offset: 832)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3178, file: !72, line: 72, baseType: !31, size: 32, offset: 896)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3178, file: !72, line: 73, baseType: !31, size: 32, offset: 928)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3178, file: !72, line: 74, baseType: !94, size: 64, offset: 960)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3178, file: !72, line: 77, baseType: !32, size: 16, offset: 1024)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3178, file: !72, line: 78, baseType: !99, size: 8, offset: 1040)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3178, file: !72, line: 79, baseType: !101, size: 8, offset: 1048)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3178, file: !72, line: 81, baseType: !105, size: 64, offset: 1088)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3178, file: !72, line: 89, baseType: !108, size: 64, offset: 1152)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3178, file: !72, line: 91, baseType: !110, size: 64, offset: 1216)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3178, file: !72, line: 92, baseType: !113, size: 64, offset: 1280)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3178, file: !72, line: 93, baseType: !3194, size: 64, offset: 1344)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3178, file: !72, line: 94, baseType: !30, size: 64, offset: 1408)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3178, file: !72, line: 95, baseType: !33, size: 64, offset: 1472)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3178, file: !72, line: 96, baseType: !31, size: 32, offset: 1536)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3178, file: !72, line: 98, baseType: !120, size: 160, offset: 1568)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !166, line: 63, baseType: !94)
!3211 = !{!3212, !3213, !3214, !3215}
!3212 = !DILocalVariable(name: "fp", arg: 1, scope: !3173, file: !408, line: 28, type: !3176)
!3213 = !DILocalVariable(name: "offset", arg: 2, scope: !3173, file: !408, line: 28, type: !3210)
!3214 = !DILocalVariable(name: "whence", arg: 3, scope: !3173, file: !408, line: 28, type: !31)
!3215 = !DILocalVariable(name: "pos", scope: !3216, file: !408, line: 123, type: !3210)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !408, line: 119, column: 5)
!3217 = distinct !DILexicalBlock(scope: !3173, file: !408, line: 55, column: 7)
!3218 = !DILocation(line: 0, scope: !3173)
!3219 = !DILocation(line: 55, column: 12, scope: !3217)
!3220 = !{!914, !442, i64 16}
!3221 = !DILocation(line: 55, column: 33, scope: !3217)
!3222 = !{!914, !442, i64 8}
!3223 = !DILocation(line: 55, column: 25, scope: !3217)
!3224 = !DILocation(line: 56, column: 7, scope: !3217)
!3225 = !DILocation(line: 56, column: 15, scope: !3217)
!3226 = !DILocation(line: 56, column: 37, scope: !3217)
!3227 = !{!914, !442, i64 32}
!3228 = !DILocation(line: 56, column: 29, scope: !3217)
!3229 = !DILocation(line: 57, column: 7, scope: !3217)
!3230 = !DILocation(line: 57, column: 15, scope: !3217)
!3231 = !{!914, !442, i64 72}
!3232 = !DILocation(line: 57, column: 29, scope: !3217)
!3233 = !DILocation(line: 55, column: 7, scope: !3173)
!3234 = !DILocation(line: 123, column: 26, scope: !3216)
!3235 = !DILocation(line: 123, column: 19, scope: !3216)
!3236 = !DILocation(line: 0, scope: !3216)
!3237 = !DILocation(line: 124, column: 15, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3216, file: !408, line: 124, column: 11)
!3239 = !DILocation(line: 124, column: 11, scope: !3216)
!3240 = !DILocation(line: 135, column: 12, scope: !3216)
!3241 = !DILocation(line: 135, column: 19, scope: !3216)
!3242 = !DILocation(line: 136, column: 12, scope: !3216)
!3243 = !DILocation(line: 136, column: 20, scope: !3216)
!3244 = !{!914, !915, i64 144}
!3245 = !DILocation(line: 167, column: 7, scope: !3216)
!3246 = !DILocation(line: 169, column: 10, scope: !3173)
!3247 = !DILocation(line: 169, column: 3, scope: !3173)
!3248 = !DILocation(line: 170, column: 1, scope: !3173)
!3249 = !DISubprogram(name: "fseeko", scope: !166, file: !166, line: 736, type: !3250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!31, !3176, !94, !31}
!3252 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !343, file: !343, line: 100, type: !3253, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !3256)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!33, !1074, !36, !33, !3255}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3256 = !{!3257, !3258, !3259, !3260, !3261}
!3257 = !DILocalVariable(name: "pwc", arg: 1, scope: !3252, file: !343, line: 100, type: !1074)
!3258 = !DILocalVariable(name: "s", arg: 2, scope: !3252, file: !343, line: 100, type: !36)
!3259 = !DILocalVariable(name: "n", arg: 3, scope: !3252, file: !343, line: 100, type: !33)
!3260 = !DILocalVariable(name: "ps", arg: 4, scope: !3252, file: !343, line: 100, type: !3255)
!3261 = !DILocalVariable(name: "ret", scope: !3252, file: !343, line: 130, type: !33)
!3262 = !DILocation(line: 0, scope: !3252)
!3263 = !DILocation(line: 105, column: 9, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3252, file: !343, line: 105, column: 7)
!3265 = !DILocation(line: 105, column: 7, scope: !3252)
!3266 = !DILocation(line: 117, column: 10, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3252, file: !343, line: 117, column: 7)
!3268 = !DILocation(line: 117, column: 7, scope: !3252)
!3269 = !DILocation(line: 130, column: 16, scope: !3252)
!3270 = !DILocation(line: 135, column: 11, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3252, file: !343, line: 135, column: 7)
!3272 = !DILocation(line: 135, column: 25, scope: !3271)
!3273 = !DILocation(line: 135, column: 30, scope: !3271)
!3274 = !DILocation(line: 135, column: 7, scope: !3252)
!3275 = !DILocalVariable(name: "ps", arg: 1, scope: !3276, file: !1047, line: 1135, type: !3255)
!3276 = distinct !DISubprogram(name: "mbszero", scope: !1047, file: !1047, line: 1135, type: !3277, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !3255}
!3279 = !{!3275}
!3280 = !DILocation(line: 0, scope: !3276, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 137, column: 5, scope: !3271)
!3282 = !DILocalVariable(name: "__dest", arg: 1, scope: !3283, file: !1056, line: 57, type: !30)
!3283 = distinct !DISubprogram(name: "memset", scope: !1056, file: !1056, line: 57, type: !1057, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !3284)
!3284 = !{!3282, !3285, !3286}
!3285 = !DILocalVariable(name: "__ch", arg: 2, scope: !3283, file: !1056, line: 57, type: !31)
!3286 = !DILocalVariable(name: "__len", arg: 3, scope: !3283, file: !1056, line: 57, type: !33)
!3287 = !DILocation(line: 0, scope: !3283, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 1137, column: 3, scope: !3276, inlinedAt: !3281)
!3289 = !DILocation(line: 59, column: 10, scope: !3283, inlinedAt: !3288)
!3290 = !DILocation(line: 137, column: 5, scope: !3271)
!3291 = !DILocation(line: 138, column: 11, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3252, file: !343, line: 138, column: 7)
!3293 = !DILocation(line: 138, column: 7, scope: !3252)
!3294 = !DILocation(line: 139, column: 5, scope: !3292)
!3295 = !DILocation(line: 143, column: 26, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3252, file: !343, line: 143, column: 7)
!3297 = !DILocation(line: 143, column: 41, scope: !3296)
!3298 = !DILocation(line: 143, column: 7, scope: !3252)
!3299 = !DILocation(line: 145, column: 15, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !343, line: 145, column: 11)
!3301 = distinct !DILexicalBlock(scope: !3296, file: !343, line: 144, column: 5)
!3302 = !DILocation(line: 145, column: 11, scope: !3301)
!3303 = !DILocation(line: 146, column: 32, scope: !3300)
!3304 = !DILocation(line: 146, column: 16, scope: !3300)
!3305 = !DILocation(line: 146, column: 14, scope: !3300)
!3306 = !DILocation(line: 146, column: 9, scope: !3300)
!3307 = !DILocation(line: 286, column: 1, scope: !3252)
!3308 = !DISubprogram(name: "mbsinit", scope: !3309, file: !3309, line: 293, type: !3310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !520)
!3309 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!31, !3312}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!3314 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !410, file: !410, line: 27, type: !2530, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3315)
!3315 = !{!3316, !3317, !3318, !3319}
!3316 = !DILocalVariable(name: "ptr", arg: 1, scope: !3314, file: !410, line: 27, type: !30)
!3317 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3314, file: !410, line: 27, type: !33)
!3318 = !DILocalVariable(name: "size", arg: 3, scope: !3314, file: !410, line: 27, type: !33)
!3319 = !DILocalVariable(name: "nbytes", scope: !3314, file: !410, line: 29, type: !33)
!3320 = !DILocation(line: 0, scope: !3314)
!3321 = !DILocation(line: 30, column: 7, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3314, file: !410, line: 30, column: 7)
!3323 = !DILocalVariable(name: "ptr", arg: 1, scope: !3324, file: !2621, line: 2057, type: !30)
!3324 = distinct !DISubprogram(name: "rpl_realloc", scope: !2621, file: !2621, line: 2057, type: !2613, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3325)
!3325 = !{!3323, !3326}
!3326 = !DILocalVariable(name: "size", arg: 2, scope: !3324, file: !2621, line: 2057, type: !33)
!3327 = !DILocation(line: 0, scope: !3324, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 37, column: 10, scope: !3314)
!3329 = !DILocation(line: 2059, column: 24, scope: !3324, inlinedAt: !3328)
!3330 = !DILocation(line: 2059, column: 10, scope: !3324, inlinedAt: !3328)
!3331 = !DILocation(line: 37, column: 3, scope: !3314)
!3332 = !DILocation(line: 32, column: 7, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3322, file: !410, line: 31, column: 5)
!3334 = !DILocation(line: 32, column: 13, scope: !3333)
!3335 = !DILocation(line: 33, column: 7, scope: !3333)
!3336 = !DILocation(line: 38, column: 1, scope: !3314)
!3337 = distinct !DISubprogram(name: "hard_locale", scope: !413, file: !413, line: 28, type: !3338, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!42, !31}
!3340 = !{!3341, !3342}
!3341 = !DILocalVariable(name: "category", arg: 1, scope: !3337, file: !413, line: 28, type: !31)
!3342 = !DILocalVariable(name: "locale", scope: !3337, file: !413, line: 30, type: !3343)
!3343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2056, elements: !3344)
!3344 = !{!3345}
!3345 = !DISubrange(count: 257)
!3346 = !DILocation(line: 0, scope: !3337)
!3347 = !DILocation(line: 30, column: 3, scope: !3337)
!3348 = !DILocation(line: 30, column: 8, scope: !3337)
!3349 = !DILocation(line: 32, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3337, file: !413, line: 32, column: 7)
!3351 = !DILocation(line: 32, column: 7, scope: !3337)
!3352 = !DILocalVariable(name: "__s1", arg: 1, scope: !3353, file: !478, line: 1359, type: !36)
!3353 = distinct !DISubprogram(name: "streq", scope: !478, file: !478, line: 1359, type: !479, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3354)
!3354 = !{!3352, !3355}
!3355 = !DILocalVariable(name: "__s2", arg: 2, scope: !3353, file: !478, line: 1359, type: !36)
!3356 = !DILocation(line: 0, scope: !3353, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 35, column: 9, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3337, file: !413, line: 35, column: 7)
!3359 = !DILocation(line: 1361, column: 11, scope: !3353, inlinedAt: !3357)
!3360 = !DILocation(line: 1361, column: 10, scope: !3353, inlinedAt: !3357)
!3361 = !DILocation(line: 35, column: 29, scope: !3358)
!3362 = !DILocation(line: 0, scope: !3353, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 35, column: 32, scope: !3358)
!3364 = !DILocation(line: 1361, column: 11, scope: !3353, inlinedAt: !3363)
!3365 = !DILocation(line: 1361, column: 10, scope: !3353, inlinedAt: !3363)
!3366 = !DILocation(line: 35, column: 7, scope: !3337)
!3367 = !DILocation(line: 46, column: 3, scope: !3337)
!3368 = !DILocation(line: 47, column: 1, scope: !3337)
!3369 = distinct !DISubprogram(name: "setlocale_null_r", scope: !415, file: !415, line: 154, type: !3370, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!31, !31, !28, !33}
!3372 = !{!3373, !3374, !3375}
!3373 = !DILocalVariable(name: "category", arg: 1, scope: !3369, file: !415, line: 154, type: !31)
!3374 = !DILocalVariable(name: "buf", arg: 2, scope: !3369, file: !415, line: 154, type: !28)
!3375 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3369, file: !415, line: 154, type: !33)
!3376 = !DILocation(line: 0, scope: !3369)
!3377 = !DILocation(line: 159, column: 10, scope: !3369)
!3378 = !DILocation(line: 159, column: 3, scope: !3369)
!3379 = distinct !DISubprogram(name: "setlocale_null", scope: !415, file: !415, line: 186, type: !3380, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!36, !31}
!3382 = !{!3383}
!3383 = !DILocalVariable(name: "category", arg: 1, scope: !3379, file: !415, line: 186, type: !31)
!3384 = !DILocation(line: 0, scope: !3379)
!3385 = !DILocation(line: 189, column: 10, scope: !3379)
!3386 = !DILocation(line: 189, column: 3, scope: !3379)
!3387 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !417, file: !417, line: 35, type: !3380, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3388)
!3388 = !{!3389, !3390}
!3389 = !DILocalVariable(name: "category", arg: 1, scope: !3387, file: !417, line: 35, type: !31)
!3390 = !DILocalVariable(name: "result", scope: !3387, file: !417, line: 37, type: !36)
!3391 = !DILocation(line: 0, scope: !3387)
!3392 = !DILocation(line: 37, column: 24, scope: !3387)
!3393 = !DILocation(line: 62, column: 3, scope: !3387)
!3394 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !417, file: !417, line: 66, type: !3370, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3395)
!3395 = !{!3396, !3397, !3398, !3399, !3400}
!3396 = !DILocalVariable(name: "category", arg: 1, scope: !3394, file: !417, line: 66, type: !31)
!3397 = !DILocalVariable(name: "buf", arg: 2, scope: !3394, file: !417, line: 66, type: !28)
!3398 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3394, file: !417, line: 66, type: !33)
!3399 = !DILocalVariable(name: "result", scope: !3394, file: !417, line: 111, type: !36)
!3400 = !DILocalVariable(name: "length", scope: !3401, file: !417, line: 125, type: !33)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !417, line: 124, column: 5)
!3402 = distinct !DILexicalBlock(scope: !3394, file: !417, line: 113, column: 7)
!3403 = !DILocation(line: 0, scope: !3394)
!3404 = !DILocation(line: 0, scope: !3387, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 111, column: 24, scope: !3394)
!3406 = !DILocation(line: 37, column: 24, scope: !3387, inlinedAt: !3405)
!3407 = !DILocation(line: 113, column: 14, scope: !3402)
!3408 = !DILocation(line: 113, column: 7, scope: !3394)
!3409 = !DILocation(line: 116, column: 19, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !417, line: 116, column: 11)
!3411 = distinct !DILexicalBlock(scope: !3402, file: !417, line: 114, column: 5)
!3412 = !DILocation(line: 116, column: 11, scope: !3411)
!3413 = !DILocation(line: 120, column: 16, scope: !3410)
!3414 = !DILocation(line: 120, column: 9, scope: !3410)
!3415 = !DILocation(line: 125, column: 23, scope: !3401)
!3416 = !DILocation(line: 0, scope: !3401)
!3417 = !DILocation(line: 126, column: 18, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3401, file: !417, line: 126, column: 11)
!3419 = !DILocation(line: 126, column: 11, scope: !3401)
!3420 = !DILocation(line: 128, column: 39, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !417, line: 127, column: 9)
!3422 = !DILocalVariable(name: "__dest", arg: 1, scope: !3423, file: !1056, line: 26, type: !2888)
!3423 = distinct !DISubprogram(name: "memcpy", scope: !1056, file: !1056, line: 26, type: !2886, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3424)
!3424 = !{!3422, !3425, !3426}
!3425 = !DILocalVariable(name: "__src", arg: 2, scope: !3423, file: !1056, line: 26, type: !645)
!3426 = !DILocalVariable(name: "__len", arg: 3, scope: !3423, file: !1056, line: 26, type: !33)
!3427 = !DILocation(line: 0, scope: !3423, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 128, column: 11, scope: !3421)
!3429 = !DILocation(line: 29, column: 10, scope: !3423, inlinedAt: !3428)
!3430 = !DILocation(line: 129, column: 11, scope: !3421)
!3431 = !DILocation(line: 133, column: 23, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !417, line: 133, column: 15)
!3433 = distinct !DILexicalBlock(scope: !3418, file: !417, line: 132, column: 9)
!3434 = !DILocation(line: 133, column: 15, scope: !3433)
!3435 = !DILocation(line: 138, column: 44, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !417, line: 134, column: 13)
!3437 = !DILocation(line: 0, scope: !3423, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 138, column: 15, scope: !3436)
!3439 = !DILocation(line: 29, column: 10, scope: !3423, inlinedAt: !3438)
!3440 = !DILocation(line: 139, column: 15, scope: !3436)
!3441 = !DILocation(line: 139, column: 32, scope: !3436)
!3442 = !DILocation(line: 140, column: 13, scope: !3436)
!3443 = !DILocation(line: 0, scope: !3402)
!3444 = !DILocation(line: 145, column: 1, scope: !3394)
