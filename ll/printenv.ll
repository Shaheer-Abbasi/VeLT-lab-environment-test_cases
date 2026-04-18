; ModuleID = 'src/printenv.bc'
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
@.str.1 = private unnamed_addr constant [164 x i8] c"Usage: %s [OPTION] [VARIABLE]...\0APrint the values of the specified environment VARIABLE(s).\0AIf no VARIABLE is specified, print name and value pairs for them all.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"printenv\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"  -0, --null\0A         end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@environ = external local_unnamed_addr global i8**, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !37
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), align 8, !dbg !136
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !141
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !146
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !148
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !184
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !154
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !180
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !182
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !189
@.str.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !195
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 8, !dbg !229
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !255
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !273
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !303
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !310
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !275
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !312
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !261
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.68 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !280
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.98 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !318
@exit_failure = dso_local global i32 1, align 4, !dbg !326
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !332
@.str.127 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !422 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !426, metadata !DIExpression()), !dbg !427
  %3 = icmp eq i32 %0, 0, !dbg !428
  br i1 %3, label %9, label %4, !dbg !430

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !431, !tbaa !433
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !431
  %7 = load i8*, i8** @program_name, align 8, !dbg !431, !tbaa !433
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !431
  br label %52, !dbg !431

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([164 x i8], [164 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !437
  %11 = load i8*, i8** @program_name, align 8, !dbg !437, !tbaa !433
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !437
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !439
  tail call fastcc void @oputs_(i8* noundef %13), !dbg !439
  %14 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !440
  tail call fastcc void @oputs_(i8* noundef %14), !dbg !440
  %15 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !441
  tail call fastcc void @oputs_(i8* noundef %15), !dbg !441
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32, !dbg !442
  %17 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #32, !dbg !442
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !462
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !464
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #32, !dbg !464
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !448, metadata !DIExpression()) #32, !dbg !465
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !465
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !457, metadata !DIExpression()) #32, !dbg !462
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !458, metadata !DIExpression()) #32, !dbg !462
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !466
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !458, metadata !DIExpression()) #32, !dbg !462
  br label %20, !dbg !467

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !458, metadata !DIExpression()) #32, !dbg !462
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !475
  call void @llvm.dbg.value(metadata i8* %21, metadata !474, metadata !DIExpression()) #32, !dbg !475
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #33, !dbg !477
  %24 = icmp eq i32 %23, 0, !dbg !478
  br i1 %24, label %30, label %25, !dbg !467

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.infomap, %struct.infomap* %22, i64 1, !dbg !479
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !458, metadata !DIExpression()) #32, !dbg !462
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 0, i32 0, !dbg !480
  %28 = load i8*, i8** %27, align 8, !dbg !480, !tbaa !481
  %29 = icmp eq i8* %28, null, !dbg !483
  br i1 %29, label %30, label %20, !dbg !484, !llvm.loop !485

30:                                               ; preds = %25, %20
  %31 = phi %struct.infomap* [ %22, %20 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 0, i32 1, !dbg !487
  %33 = load i8*, i8** %32, align 8, !dbg !487, !tbaa !489
  %34 = icmp eq i8* %33, null, !dbg !490
  %35 = select i1 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %33, !dbg !491
  call void @llvm.dbg.value(metadata i8* %35, metadata !457, metadata !DIExpression()) #32, !dbg !462
  tail call void @emit_bug_reporting_address() #32, !dbg !492
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !493
  call void @llvm.dbg.value(metadata i8* %36, metadata !460, metadata !DIExpression()) #32, !dbg !462
  %37 = icmp eq i8* %36, null, !dbg !494
  br i1 %37, label %45, label %38, !dbg !496

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 noundef 3) #33, !dbg !497
  %40 = icmp eq i32 %39, 0, !dbg !497
  br i1 %40, label %45, label %41, !dbg !498

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #32, !dbg !499
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !499, !tbaa !433
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #32, !dbg !499
  br label %45, !dbg !501

45:                                               ; preds = %30, %38, %41
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !502
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !474, metadata !DIExpression()) #32, !dbg !502
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !461, metadata !DIExpression()) #32, !dbg !462
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #32, !dbg !504
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #32, !dbg !504
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #32, !dbg !505
  %49 = icmp eq i8* %35, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), !dbg !505
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !505
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef %35, i8* noundef %50) #32, !dbg !505
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %18) #32, !dbg !506
  br label %52

52:                                               ; preds = %45, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !507
  unreachable, !dbg !507
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !508 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #4 !dbg !39 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !44, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i8* %0, metadata !45, metadata !DIExpression()), !dbg !513
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !514, !tbaa !515
  %3 = icmp eq i32 %2, -1, !dbg !517
  br i1 %3, label %4, label %16, !dbg !518

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #32, !dbg !519
  call void @llvm.dbg.value(metadata i8* %5, metadata !46, metadata !DIExpression()), !dbg !520
  %6 = icmp eq i8* %5, null, !dbg !521
  br i1 %6, label %14, label %7, !dbg !522

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !523, !tbaa !524
  %9 = icmp eq i8 %8, 0, !dbg !523
  br i1 %9, label %14, label %10, !dbg !525

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !468, metadata !DIExpression()) #32, !dbg !526
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), metadata !474, metadata !DIExpression()) #32, !dbg !526
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #33, !dbg !528
  %12 = icmp eq i32 %11, 0, !dbg !529
  %13 = zext i1 %12 to i32, !dbg !525
  br label %14, !dbg !525

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !530, !tbaa !515
  br label %16, !dbg !531

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !532
  %18 = icmp eq i32 %17, 0, !dbg !532
  br i1 %18, label %22, label %19, !dbg !534

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !535, !tbaa !433
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !535
  br label %121, !dbg !537

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !49, metadata !DIExpression()), !dbg !513
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #33, !dbg !538
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !539
  call void @llvm.dbg.value(metadata i8* %24, metadata !51, metadata !DIExpression()), !dbg !513
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !540
  call void @llvm.dbg.value(metadata i8* %25, metadata !52, metadata !DIExpression()), !dbg !513
  %26 = icmp eq i8* %25, null, !dbg !541
  br i1 %26, label %53, label %27, !dbg !542

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !543
  br i1 %28, label %53, label %29, !dbg !544

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !53, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 0, metadata !57, metadata !DIExpression()), !dbg !545
  %30 = icmp ult i8* %24, %25, !dbg !546
  br i1 %30, label %31, label %53, !dbg !547

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !513
  %33 = load i16*, i16** %32, align 8, !tbaa !433
  br label %34, !dbg !547

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !53, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %36, metadata !57, metadata !DIExpression()), !dbg !545
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !548
  call void @llvm.dbg.value(metadata i8* %37, metadata !53, metadata !DIExpression()), !dbg !545
  %38 = load i8, i8* %35, align 1, !dbg !548, !tbaa !524
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !548
  %41 = load i16, i16* %40, align 2, !dbg !548, !tbaa !549
  %42 = lshr i16 %41, 13, !dbg !551
  %43 = and i16 %42, 1, !dbg !551
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !552
  call void @llvm.dbg.value(metadata i64 %45, metadata !57, metadata !DIExpression()), !dbg !545
  %46 = icmp ult i8* %37, %25, !dbg !546
  %47 = icmp ult i64 %45, 2, !dbg !553
  %48 = select i1 %46, i1 %47, i1 false, !dbg !553
  br i1 %48, label %34, label %49, !dbg !547, !llvm.loop !554

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !555
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !557
  %52 = xor i1 %50, true, !dbg !557
  br label %53, !dbg !557

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !513
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !49, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i8* %54, metadata !52, metadata !DIExpression()), !dbg !513
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !558
  call void @llvm.dbg.value(metadata i64 %56, metadata !58, metadata !DIExpression()), !dbg !513
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !559
  call void @llvm.dbg.value(metadata i8* %57, metadata !59, metadata !DIExpression()), !dbg !513
  br label %58, !dbg !560

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !513
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !49, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i8* %59, metadata !59, metadata !DIExpression()), !dbg !513
  %61 = load i8, i8* %59, align 1, !dbg !561, !tbaa !524
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !562

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !563
  %64 = load i8, i8* %63, align 1, !dbg !566, !tbaa !524
  %65 = icmp ne i8 %64, 45, !dbg !567
  %66 = select i1 %65, i1 %60, i1 false, !dbg !568
  br label %67, !dbg !568

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !49, metadata !DIExpression()), !dbg !513
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !569
  %70 = load i16*, i16** %69, align 8, !dbg !569, !tbaa !433
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !569
  %73 = load i16, i16* %72, align 2, !dbg !569, !tbaa !549
  %74 = and i16 %73, 8192, !dbg !569
  %75 = icmp eq i16 %74, 0, !dbg !569
  br i1 %75, label %89, label %76, !dbg !571

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !572
  br i1 %77, label %91, label %78, !dbg !575

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !576
  %80 = load i8, i8* %79, align 1, !dbg !576, !tbaa !524
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !576
  %83 = load i16, i16* %82, align 2, !dbg !576, !tbaa !549
  %84 = and i16 %83, 8192, !dbg !576
  %85 = icmp eq i16 %84, 0, !dbg !576
  br i1 %85, label %86, label %91, !dbg !577

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !578
  br i1 %88, label %89, label %91, !dbg !578

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !580
  call void @llvm.dbg.value(metadata i8* %90, metadata !59, metadata !DIExpression()), !dbg !513
  br label %58, !dbg !560, !llvm.loop !581

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !583
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !583, !tbaa !433
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !583
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !584
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !474, metadata !DIExpression()) #32, !dbg !584
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !586
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !588
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !119, metadata !DIExpression()), !dbg !513
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 noundef 6) #33, !dbg !604
  %96 = icmp eq i32 %95, 0, !dbg !604
  br i1 %96, label %100, label %97, !dbg !606

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 noundef 9) #33, !dbg !607
  %99 = icmp eq i32 %98, 0, !dbg !607
  br i1 %99, label %100, label %103, !dbg !608

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !609
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !609
  br label %106, !dbg !611

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !612
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !612
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !433
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !614
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !615, !tbaa !433
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !615
  %111 = ptrtoint i8* %59 to i64, !dbg !616
  %112 = sub i64 %111, %92, !dbg !616
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !433
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !616
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617, !tbaa !433
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !617
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !433
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !618
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !433
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !619
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !620
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !621 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !625 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !630 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !634 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !645, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8** %1, metadata !646, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8 0, metadata !647, metadata !DIExpression()), !dbg !667
  %3 = load i8*, i8** %1, align 8, !dbg !668, !tbaa !433
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !669
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !670
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #32, !dbg !671
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !672
  call void @llvm.dbg.value(metadata i32 2, metadata !673, metadata !DIExpression()), !dbg !676
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !678, !tbaa !515
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !680
  br label %8, !dbg !681

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !647, metadata !DIExpression()), !dbg !667
  %10 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #32, !dbg !682
  call void @llvm.dbg.value(metadata i32 %10, metadata !648, metadata !DIExpression()), !dbg !667
  switch i32 %10, label %17 [
    i32 -1, label %18
    i32 48, label %8
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !681, !llvm.loop !683

11:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #36, !dbg !685
  unreachable, !dbg !685

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !433
  %14 = load i8*, i8** @Version, align 8, !dbg !688, !tbaa !433
  %15 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #32, !dbg !688
  %16 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #32, !dbg !688
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %14, i8* noundef %15, i8* noundef %16, i8* noundef null) #32, !dbg !688
  tail call void @exit(i32 noundef 0) #34, !dbg !688
  unreachable, !dbg !688

17:                                               ; preds = %8
  tail call void @usage(i32 noundef 2) #36, !dbg !689
  unreachable, !dbg !689

18:                                               ; preds = %8
  %19 = load i32, i32* @optind, align 4, !dbg !690, !tbaa !515
  %20 = icmp slt i32 %19, %0, !dbg !691
  br i1 %20, label %21, label %23, !dbg !692

21:                                               ; preds = %18
  %22 = sext i32 %19 to i64, !dbg !693
  br label %39, !dbg !693

23:                                               ; preds = %18
  %24 = load i8**, i8*** @environ, align 8, !dbg !694, !tbaa !433
  call void @llvm.dbg.value(metadata i8** %24, metadata !650, metadata !DIExpression()), !dbg !695
  %25 = load i8*, i8** %24, align 8, !dbg !696, !tbaa !433
  %26 = icmp eq i8* %25, null, !dbg !698
  br i1 %26, label %97, label %27, !dbg !699

27:                                               ; preds = %23, %27
  %28 = phi i8* [ %32, %27 ], [ %25, %23 ]
  %29 = phi i8** [ %31, %27 ], [ %24, %23 ]
  call void @llvm.dbg.value(metadata i8** %29, metadata !650, metadata !DIExpression()), !dbg !695
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %28, i32 noundef %9) #32, !dbg !700
  %31 = getelementptr inbounds i8*, i8** %29, i64 1, !dbg !701
  call void @llvm.dbg.value(metadata i8** %31, metadata !650, metadata !DIExpression()), !dbg !695
  %32 = load i8*, i8** %31, align 8, !dbg !696, !tbaa !433
  %33 = icmp eq i8* %32, null, !dbg !698
  br i1 %33, label %97, label %27, !dbg !699, !llvm.loop !702

34:                                               ; preds = %92
  %35 = load i32, i32* @optind, align 4, !dbg !704, !tbaa !515
  %36 = sub nsw i32 %0, %35, !dbg !705
  %37 = icmp ne i32 %93, %36, !dbg !706
  call void @llvm.dbg.value(metadata i1 %37, metadata !649, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !667
  %38 = zext i1 %37 to i32
  br label %97

39:                                               ; preds = %21, %92
  %40 = phi i64 [ %22, %21 ], [ %94, %92 ]
  %41 = phi i32 [ 0, %21 ], [ %93, %92 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !656, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 %41, metadata !654, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i8 0, metadata !658, metadata !DIExpression()), !dbg !709
  %42 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !710
  %43 = load i8*, i8** %42, align 8, !dbg !710, !tbaa !433
  %44 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %43, i32 noundef 61) #33, !dbg !712
  %45 = icmp eq i8* %44, null, !dbg !712
  br i1 %45, label %46, label %92, !dbg !713

46:                                               ; preds = %39
  %47 = load i8**, i8*** @environ, align 8, !dbg !714, !tbaa !433
  call void @llvm.dbg.value(metadata i8** %47, metadata !661, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8 poison, metadata !658, metadata !DIExpression()), !dbg !709
  %48 = load i8*, i8** %47, align 8, !dbg !716, !tbaa !433
  %49 = icmp eq i8* %48, null, !dbg !717
  br i1 %49, label %50, label %54, !dbg !717

50:                                               ; preds = %85, %46
  %51 = phi i1 [ false, %46 ], [ %86, %85 ]
  %52 = zext i1 %51 to i32, !dbg !718
  %53 = add nsw i32 %41, %52, !dbg !719
  call void @llvm.dbg.value(metadata i32 %53, metadata !654, metadata !DIExpression()), !dbg !708
  br label %92, !dbg !720

54:                                               ; preds = %46, %90
  %55 = phi i8* [ %91, %90 ], [ %43, %46 ], !dbg !721
  %56 = phi i8* [ %88, %90 ], [ %48, %46 ]
  %57 = phi i8** [ %87, %90 ], [ %47, %46 ]
  %58 = phi i1 [ %86, %90 ], [ false, %46 ]
  call void @llvm.dbg.value(metadata i8** %57, metadata !661, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8* %55, metadata !666, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata i8* %56, metadata !663, metadata !DIExpression()), !dbg !722
  %59 = load i8, i8* %56, align 1, !dbg !723, !tbaa !524
  %60 = icmp eq i8 %59, 0, !dbg !724
  br i1 %60, label %85, label %61, !dbg !725

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8* %55, metadata !666, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata i8* %56, metadata !663, metadata !DIExpression()), !dbg !722
  %62 = load i8, i8* %55, align 1, !dbg !726, !tbaa !524
  %63 = icmp eq i8 %62, 0, !dbg !727
  br i1 %63, label %85, label %64, !dbg !728

64:                                               ; preds = %61, %82
  %65 = phi i8 [ %83, %82 ], [ %62, %61 ]
  %66 = phi i8* [ %69, %82 ], [ %56, %61 ]
  %67 = phi i8* [ %70, %82 ], [ %55, %61 ]
  %68 = phi i8 [ %73, %82 ], [ %59, %61 ]
  call void @llvm.dbg.value(metadata i8* %66, metadata !663, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata i8* %67, metadata !666, metadata !DIExpression()), !dbg !722
  %69 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !729
  call void @llvm.dbg.value(metadata i8* %69, metadata !663, metadata !DIExpression()), !dbg !722
  %70 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !730
  call void @llvm.dbg.value(metadata i8* %70, metadata !666, metadata !DIExpression()), !dbg !722
  %71 = icmp eq i8 %68, %65, !dbg !731
  br i1 %71, label %72, label %85, !dbg !732

72:                                               ; preds = %64
  %73 = load i8, i8* %69, align 1, !dbg !733, !tbaa !524
  switch i8 %73, label %82 [
    i8 61, label %74
    i8 0, label %85
  ], !dbg !736

74:                                               ; preds = %72
  %75 = load i8, i8* %70, align 1, !dbg !737, !tbaa !524
  %76 = icmp eq i8 %75, 0, !dbg !738
  br i1 %76, label %77, label %80, !dbg !739

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, i8* %66, i64 2, !dbg !740
  %79 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %78, i32 noundef %9) #32, !dbg !740
  call void @llvm.dbg.value(metadata i8 1, metadata !658, metadata !DIExpression()), !dbg !709
  br label %85, !dbg !742

80:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i8* %70, metadata !666, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata i8* %69, metadata !663, metadata !DIExpression()), !dbg !722
  %81 = icmp eq i8 %73, 0, !dbg !724
  br i1 %81, label %85, label %82, !dbg !725

82:                                               ; preds = %80, %72
  call void @llvm.dbg.value(metadata i8* %70, metadata !666, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata i8* %69, metadata !663, metadata !DIExpression()), !dbg !722
  %83 = load i8, i8* %70, align 1, !dbg !726, !tbaa !524
  %84 = icmp eq i8 %83, 0, !dbg !727
  br i1 %84, label %85, label %64, !dbg !728, !llvm.loop !743

85:                                               ; preds = %72, %80, %82, %64, %61, %54, %77
  %86 = phi i1 [ true, %77 ], [ %58, %54 ], [ %58, %61 ], [ %58, %64 ], [ %58, %82 ], [ %58, %80 ], [ %58, %72 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !658, metadata !DIExpression()), !dbg !709
  %87 = getelementptr inbounds i8*, i8** %57, i64 1, !dbg !745
  call void @llvm.dbg.value(metadata i8** %87, metadata !661, metadata !DIExpression()), !dbg !715
  %88 = load i8*, i8** %87, align 8, !dbg !716, !tbaa !433
  %89 = icmp eq i8* %88, null, !dbg !717
  br i1 %89, label %50, label %90, !dbg !717, !llvm.loop !746

90:                                               ; preds = %85
  %91 = load i8*, i8** %42, align 8, !dbg !721, !tbaa !433
  br label %54, !dbg !717

92:                                               ; preds = %39, %50
  %93 = phi i32 [ %53, %50 ], [ %41, %39 ], !dbg !708
  call void @llvm.dbg.value(metadata i32 %93, metadata !654, metadata !DIExpression()), !dbg !708
  %94 = add nsw i64 %40, 1, !dbg !748
  call void @llvm.dbg.value(metadata i64 %94, metadata !656, metadata !DIExpression()), !dbg !707
  %95 = trunc i64 %94 to i32, !dbg !749
  %96 = icmp eq i32 %95, %0, !dbg !749
  br i1 %96, label %34, label %39, !dbg !693, !llvm.loop !750

97:                                               ; preds = %27, %23, %34
  %98 = phi i32 [ %38, %34 ], [ 0, %23 ], [ 0, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !649, metadata !DIExpression()), !dbg !667
  ret i32 %98, !dbg !752
}

; Function Attrs: nounwind
declare !dbg !753 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !756 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !757 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !760 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !766 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !768, metadata !DIExpression()), !dbg !769
  store i8* %0, i8** @file_name, align 8, !dbg !770, !tbaa !433
  ret void, !dbg !771
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !772 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !776, metadata !DIExpression()), !dbg !777
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !778, !tbaa !779
  ret void, !dbg !781
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !782 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !787, !tbaa !433
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !788
  %3 = icmp eq i32 %2, 0, !dbg !789
  br i1 %3, label %22, label %4, !dbg !790

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !791, !tbaa !779, !range !792
  %6 = icmp eq i8 %5, 0, !dbg !791
  br i1 %6, label %11, label %7, !dbg !793

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !794
  %9 = load i32, i32* %8, align 4, !dbg !794, !tbaa !515
  %10 = icmp eq i32 %9, 32, !dbg !795
  br i1 %10, label %22, label %11, !dbg !796

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.24, i64 0, i64 0), i32 noundef 5) #32, !dbg !797
  call void @llvm.dbg.value(metadata i8* %12, metadata !784, metadata !DIExpression()), !dbg !798
  %13 = load i8*, i8** @file_name, align 8, !dbg !799, !tbaa !433
  %14 = icmp eq i8* %13, null, !dbg !799
  %15 = tail call i32* @__errno_location() #35, !dbg !801
  %16 = load i32, i32* %15, align 4, !dbg !801, !tbaa !515
  br i1 %14, label %19, label %17, !dbg !802

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !803
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.25, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !803
  br label %20, !dbg !803

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.26, i64 0, i64 0), i8* noundef %12) #32, !dbg !804
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !805, !tbaa !515
  tail call void @_exit(i32 noundef %21) #34, !dbg !806
  unreachable, !dbg !806

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !807, !tbaa !433
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !809
  %25 = icmp eq i32 %24, 0, !dbg !810
  br i1 %25, label %28, label %26, !dbg !811

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !812, !tbaa !515
  tail call void @_exit(i32 noundef %27) #34, !dbg !813
  unreachable, !dbg !813

28:                                               ; preds = %22
  ret void, !dbg !814
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !815 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !819, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 %1, metadata !820, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i8* %2, metadata !821, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !822, metadata !DIExpression()), !dbg !824
  tail call fastcc void @flush_stdout(), !dbg !825
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !826, !tbaa !433
  %7 = icmp eq void ()* %6, null, !dbg !826
  br i1 %7, label %9, label %8, !dbg !828

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !829
  br label %13, !dbg !829

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !830, !tbaa !433
  %11 = tail call i8* @getprogname() #33, !dbg !830
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* noundef %11) #32, !dbg !830
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !832
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !832
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !832, !tbaa.struct !833
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !832
  ret void, !dbg !834
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !835 {
  call void @llvm.dbg.value(metadata i32 1, metadata !837, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 1, metadata !839, metadata !DIExpression()) #32, !dbg !844
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !847
  %2 = icmp slt i32 %1, 0, !dbg !848
  br i1 %2, label %6, label %3, !dbg !849

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !850, !tbaa !433
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !850
  br label %6, !dbg !850

6:                                                ; preds = %3, %0
  ret void, !dbg !851
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !852 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !854, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i32 %1, metadata !855, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i8* %2, metadata !856, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !857, metadata !DIExpression()), !dbg !859
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !860, !tbaa !433
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !861
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !862, metadata !DIExpression()) #32, !dbg !905
  call void @llvm.dbg.value(metadata i8* %2, metadata !903, metadata !DIExpression()) #32, !dbg !905
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !907
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !907, !noalias !908
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !907
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !907
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !907, !noalias !908
  %11 = load i32, i32* @error_message_count, align 4, !dbg !912, !tbaa !515
  %12 = add i32 %11, 1, !dbg !912
  store i32 %12, i32* @error_message_count, align 4, !dbg !912, !tbaa !515
  %13 = icmp eq i32 %1, 0, !dbg !913
  br i1 %13, label %24, label %14, !dbg !915

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !916, metadata !DIExpression()) #32, !dbg !924
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !926
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !920, metadata !DIExpression()) #32, !dbg !927
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !928
  call void @llvm.dbg.value(metadata i8* %16, metadata !919, metadata !DIExpression()) #32, !dbg !924
  %17 = icmp eq i8* %16, null, !dbg !929
  br i1 %17, label %18, label %20, !dbg !931

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.29, i64 0, i64 0), i32 noundef 5) #32, !dbg !932
  call void @llvm.dbg.value(metadata i8* %19, metadata !919, metadata !DIExpression()) #32, !dbg !924
  br label %20, !dbg !933

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !924
  call void @llvm.dbg.value(metadata i8* %21, metadata !919, metadata !DIExpression()) #32, !dbg !924
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !934, !tbaa !433
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.30, i64 0, i64 0), i8* noundef %21) #32, !dbg !934
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !935
  br label %24, !dbg !936

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !937, !tbaa !433
  call void @llvm.dbg.value(metadata i32 10, metadata !938, metadata !DIExpression()) #32, !dbg !945
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !944, metadata !DIExpression()) #32, !dbg !945
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !947
  %27 = load i8*, i8** %26, align 8, !dbg !947, !tbaa !948
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !947
  %29 = load i8*, i8** %28, align 8, !dbg !947, !tbaa !951
  %30 = icmp ult i8* %27, %29, !dbg !947
  br i1 %30, label %33, label %31, !dbg !947, !prof !952

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !947
  br label %35, !dbg !947

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !947
  store i8* %34, i8** %26, align 8, !dbg !947, !tbaa !948
  store i8 10, i8* %27, align 1, !dbg !947, !tbaa !524
  br label %35, !dbg !947

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !953, !tbaa !433
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !953
  %38 = icmp eq i32 %0, 0, !dbg !954
  br i1 %38, label %40, label %39, !dbg !956

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !957
  unreachable, !dbg !957

40:                                               ; preds = %35
  ret void, !dbg !958
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !959 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !963 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !966 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !970 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !974, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i32 %1, metadata !975, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i8* %2, metadata !976, metadata !DIExpression()), !dbg !978
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !979
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !977, metadata !DIExpression()), !dbg !980
  call void @llvm.va_start(i8* nonnull %6), !dbg !981
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !982
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !982, !tbaa.struct !833
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !982
  call void @llvm.va_end(i8* nonnull %6), !dbg !983
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !984
  ret void, !dbg !984
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !156 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !174, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %1, metadata !175, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i8* %2, metadata !176, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %3, metadata !177, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i8* %4, metadata !178, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !179, metadata !DIExpression()), !dbg !986
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !987, !tbaa !515
  %9 = icmp eq i32 %8, 0, !dbg !987
  br i1 %9, label %24, label %10, !dbg !989

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !990, !tbaa !515
  %12 = icmp eq i32 %11, %3, !dbg !993
  br i1 %12, label %13, label %23, !dbg !994

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !995, !tbaa !433
  %15 = icmp eq i8* %14, %2, !dbg !996
  br i1 %15, label %39, label %16, !dbg !997

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !998
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !999
  br i1 %19, label %20, label %23, !dbg !999

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !1000
  %22 = icmp eq i32 %21, 0, !dbg !1001
  br i1 %22, label %39, label %23, !dbg !1002

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1003, !tbaa !433
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1004, !tbaa !515
  br label %24, !dbg !1005

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1006
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1007, !tbaa !433
  %26 = icmp eq void ()* %25, null, !dbg !1007
  br i1 %26, label %28, label %27, !dbg !1009

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !1010
  br label %32, !dbg !1010

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1011, !tbaa !433
  %30 = tail call i8* @getprogname() #33, !dbg !1011
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.33, i64 0, i64 0), i8* noundef %30) #32, !dbg !1011
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1013, !tbaa !433
  %34 = icmp eq i8* %2, null, !dbg !1013
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.34, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.35, i64 0, i64 0), !dbg !1013
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !1013
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1014
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1014
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1014, !tbaa.struct !833
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1014
  br label %39, !dbg !1015

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1015
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1016 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1020, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i32 %1, metadata !1021, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i8* %2, metadata !1022, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i32 %3, metadata !1023, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i8* %4, metadata !1024, metadata !DIExpression()), !dbg !1026
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1027
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1027
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1025, metadata !DIExpression()), !dbg !1028
  call void @llvm.va_start(i8* nonnull %8), !dbg !1029
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1030
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1030
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1030, !tbaa.struct !833
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !1030
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1030
  call void @llvm.va_end(i8* nonnull %8), !dbg !1031
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1032
  ret void, !dbg !1032
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !1033 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1036, !tbaa !433
  ret i8* %1, !dbg !1037
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !1038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1040, metadata !DIExpression()), !dbg !1043
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1044
  call void @llvm.dbg.value(metadata i8* %2, metadata !1041, metadata !DIExpression()), !dbg !1043
  %3 = icmp eq i8* %2, null, !dbg !1045
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1045
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %5, metadata !1042, metadata !DIExpression()), !dbg !1043
  %6 = ptrtoint i8* %5 to i64, !dbg !1046
  %7 = ptrtoint i8* %0 to i64, !dbg !1046
  %8 = sub i64 %6, %7, !dbg !1046
  %9 = icmp sgt i64 %8, 6, !dbg !1048
  br i1 %9, label %10, label %19, !dbg !1049

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1050
  call void @llvm.dbg.value(metadata i8* %11, metadata !1051, metadata !DIExpression()) #32, !dbg !1058
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), metadata !1056, metadata !DIExpression()) #32, !dbg !1058
  call void @llvm.dbg.value(metadata i64 7, metadata !1057, metadata !DIExpression()) #32, !dbg !1058
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i64 7) #32, !dbg !1060
  %13 = icmp eq i32 %12, 0, !dbg !1061
  br i1 %13, label %14, label %19, !dbg !1062

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1040, metadata !DIExpression()), !dbg !1043
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.54, i64 0, i64 0), i64 noundef 3) #33, !dbg !1063
  %16 = icmp eq i32 %15, 0, !dbg !1066
  %17 = select i1 %16, i64 3, i64 0, !dbg !1067
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1067
  br label %19, !dbg !1067

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1043
  call void @llvm.dbg.value(metadata i8* %21, metadata !1042, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %20, metadata !1040, metadata !DIExpression()), !dbg !1043
  store i8* %20, i8** @program_name, align 8, !dbg !1068, !tbaa !433
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1069, !tbaa !433
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1070, !tbaa !433
  ret void, !dbg !1071
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !197 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i8* %1, metadata !205, metadata !DIExpression()), !dbg !1072
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %5, metadata !206, metadata !DIExpression()), !dbg !1072
  %6 = icmp eq i8* %5, %0, !dbg !1074
  br i1 %6, label %7, label %17, !dbg !1076

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1077
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1077
  %10 = bitcast i64* %4 to i8*, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1078
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !212, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1080, metadata !DIExpression()) #32, !dbg !1087
  call void @llvm.dbg.value(metadata i8* %10, metadata !1089, metadata !DIExpression()) #32, !dbg !1097
  call void @llvm.dbg.value(metadata i32 0, metadata !1095, metadata !DIExpression()) #32, !dbg !1097
  call void @llvm.dbg.value(metadata i64 8, metadata !1096, metadata !DIExpression()) #32, !dbg !1097
  store i64 0, i64* %4, align 8, !dbg !1099
  call void @llvm.dbg.value(metadata i32* %3, metadata !207, metadata !DIExpression(DW_OP_deref)), !dbg !1072
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1100
  %12 = icmp eq i64 %11, 2, !dbg !1102
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !207, metadata !DIExpression()), !dbg !1072
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1103
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1072
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1104
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1072
  ret i8* %18, !dbg !1104
}

; Function Attrs: nounwind
declare !dbg !1105 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1111 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1116, metadata !DIExpression()), !dbg !1119
  %2 = tail call i32* @__errno_location() #35, !dbg !1120
  %3 = load i32, i32* %2, align 4, !dbg !1120, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %3, metadata !1117, metadata !DIExpression()), !dbg !1119
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1121
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1121
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1121
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1122
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1122
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1118, metadata !DIExpression()), !dbg !1119
  store i32 %3, i32* %2, align 4, !dbg !1123, !tbaa !515
  ret %struct.quoting_options* %8, !dbg !1124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1125 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1131, metadata !DIExpression()), !dbg !1132
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1133
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1133
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1134
  %5 = load i32, i32* %4, align 8, !dbg !1134, !tbaa !1135
  ret i32 %5, !dbg !1137
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1138 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1142, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 %1, metadata !1143, metadata !DIExpression()), !dbg !1144
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1145
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1145
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1146
  store i32 %1, i32* %5, align 8, !dbg !1147, !tbaa !1135
  ret void, !dbg !1148
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1149 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1153, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %1, metadata !1154, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %2, metadata !1155, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %1, metadata !1156, metadata !DIExpression()), !dbg !1161
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1162
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1162
  %6 = lshr i8 %1, 5, !dbg !1163
  %7 = zext i8 %6 to i64, !dbg !1163
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1164
  call void @llvm.dbg.value(metadata i32* %8, metadata !1157, metadata !DIExpression()), !dbg !1161
  %9 = and i8 %1, 31, !dbg !1165
  %10 = zext i8 %9 to i32, !dbg !1165
  call void @llvm.dbg.value(metadata i32 %10, metadata !1159, metadata !DIExpression()), !dbg !1161
  %11 = load i32, i32* %8, align 4, !dbg !1166, !tbaa !515
  %12 = lshr i32 %11, %10, !dbg !1167
  %13 = and i32 %12, 1, !dbg !1168
  call void @llvm.dbg.value(metadata i32 %13, metadata !1160, metadata !DIExpression()), !dbg !1161
  %14 = and i32 %2, 1, !dbg !1169
  %15 = xor i32 %13, %14, !dbg !1170
  %16 = shl i32 %15, %10, !dbg !1171
  %17 = xor i32 %16, %11, !dbg !1172
  store i32 %17, i32* %8, align 4, !dbg !1172, !tbaa !515
  ret i32 %13, !dbg !1173
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1174 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1178, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i32 %1, metadata !1179, metadata !DIExpression()), !dbg !1181
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1182
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1184
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1178, metadata !DIExpression()), !dbg !1181
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1185
  %6 = load i32, i32* %5, align 4, !dbg !1185, !tbaa !1186
  call void @llvm.dbg.value(metadata i32 %6, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i32 %1, i32* %5, align 4, !dbg !1187, !tbaa !1186
  ret i32 %6, !dbg !1188
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1189 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1193, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %1, metadata !1194, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %2, metadata !1195, metadata !DIExpression()), !dbg !1196
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1197
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1199
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1193, metadata !DIExpression()), !dbg !1196
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1200
  store i32 10, i32* %6, align 8, !dbg !1201, !tbaa !1135
  %7 = icmp ne i8* %1, null, !dbg !1202
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1204
  br i1 %9, label %11, label %10, !dbg !1204

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1205
  unreachable, !dbg !1205

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1206
  store i8* %1, i8** %12, align 8, !dbg !1207, !tbaa !1208
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1209
  store i8* %2, i8** %13, align 8, !dbg !1210, !tbaa !1211
  ret void, !dbg !1212
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1217, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %1, metadata !1218, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %2, metadata !1219, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %3, metadata !1220, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1221, metadata !DIExpression()), !dbg !1225
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1226
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1222, metadata !DIExpression()), !dbg !1225
  %8 = tail call i32* @__errno_location() #35, !dbg !1227
  %9 = load i32, i32* %8, align 4, !dbg !1227, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %9, metadata !1223, metadata !DIExpression()), !dbg !1225
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1228
  %11 = load i32, i32* %10, align 8, !dbg !1228, !tbaa !1135
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1229
  %13 = load i32, i32* %12, align 4, !dbg !1229, !tbaa !1186
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1230
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1231
  %16 = load i8*, i8** %15, align 8, !dbg !1231, !tbaa !1208
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1232
  %18 = load i8*, i8** %17, align 8, !dbg !1232, !tbaa !1211
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %19, metadata !1224, metadata !DIExpression()), !dbg !1225
  store i32 %9, i32* %8, align 4, !dbg !1234, !tbaa !515
  ret i64 %19, !dbg !1235
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1236 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1242, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %1, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %2, metadata !1244, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %3, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 %4, metadata !1246, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 %5, metadata !1247, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32* %6, metadata !1248, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %7, metadata !1249, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %8, metadata !1250, metadata !DIExpression()), !dbg !1304
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1305
  %18 = icmp eq i64 %17, 1, !dbg !1306
  call void @llvm.dbg.value(metadata i1 %18, metadata !1251, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1304
  call void @llvm.dbg.value(metadata i64 0, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 0, metadata !1253, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* null, metadata !1254, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 0, metadata !1255, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 0, metadata !1256, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 %5, metadata !1257, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1304
  call void @llvm.dbg.value(metadata i8 0, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 1, metadata !1259, metadata !DIExpression()), !dbg !1304
  %19 = and i32 %5, 2, !dbg !1307
  %20 = icmp ne i32 %19, 0, !dbg !1307
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
  br label %36, !dbg !1307

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1308
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1309
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1310
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %43, metadata !1255, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %42, metadata !1254, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %41, metadata !1253, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 0, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %40, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %38, metadata !1249, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 %37, metadata !1246, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.label(metadata !1297), !dbg !1311
  call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()), !dbg !1304
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
  ], !dbg !1312

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 5, metadata !1246, metadata !DIExpression()), !dbg !1304
  br label %111, !dbg !1313

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 5, metadata !1246, metadata !DIExpression()), !dbg !1304
  br i1 %45, label %111, label %51, !dbg !1313

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1314
  br i1 %52, label %111, label %53, !dbg !1318

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1314, !tbaa !524
  br label %111, !dbg !1314

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), metadata !286, metadata !DIExpression()) #32, !dbg !1319
  call void @llvm.dbg.value(metadata i32 %37, metadata !287, metadata !DIExpression()) #32, !dbg !1319
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 noundef 5) #32, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %55, metadata !288, metadata !DIExpression()) #32, !dbg !1319
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), !dbg !1324
  br i1 %56, label %57, label %66, !dbg !1326

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1327
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1328
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !290, metadata !DIExpression()) #32, !dbg !1329
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1330, metadata !DIExpression()) #32, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %23, metadata !1338, metadata !DIExpression()) #32, !dbg !1343
  call void @llvm.dbg.value(metadata i32 0, metadata !1341, metadata !DIExpression()) #32, !dbg !1343
  call void @llvm.dbg.value(metadata i64 8, metadata !1342, metadata !DIExpression()) #32, !dbg !1343
  store i64 0, i64* %13, align 8, !dbg !1345
  call void @llvm.dbg.value(metadata i32* %12, metadata !289, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1319
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1346
  %59 = icmp eq i64 %58, 3, !dbg !1348
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !289, metadata !DIExpression()) #32, !dbg !1319
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1349
  %63 = icmp eq i32 %37, 9, !dbg !1349
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !1349
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1349
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1350
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1319
  call void @llvm.dbg.value(metadata i8* %67, metadata !1249, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), metadata !286, metadata !DIExpression()) #32, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %37, metadata !287, metadata !DIExpression()) #32, !dbg !1351
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 noundef 5) #32, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %68, metadata !288, metadata !DIExpression()) #32, !dbg !1351
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !1354
  br i1 %69, label %70, label %79, !dbg !1355

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1356
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1357
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !290, metadata !DIExpression()) #32, !dbg !1358
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1330, metadata !DIExpression()) #32, !dbg !1359
  call void @llvm.dbg.value(metadata i8* %26, metadata !1338, metadata !DIExpression()) #32, !dbg !1361
  call void @llvm.dbg.value(metadata i32 0, metadata !1341, metadata !DIExpression()) #32, !dbg !1361
  call void @llvm.dbg.value(metadata i64 8, metadata !1342, metadata !DIExpression()) #32, !dbg !1361
  store i64 0, i64* %11, align 8, !dbg !1363
  call void @llvm.dbg.value(metadata i32* %10, metadata !289, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1351
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1364
  %72 = icmp eq i64 %71, 3, !dbg !1365
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !289, metadata !DIExpression()) #32, !dbg !1351
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1366
  %76 = icmp eq i32 %37, 9, !dbg !1366
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !1366
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1366
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1367
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1250, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %80, metadata !1249, metadata !DIExpression()), !dbg !1304
  br i1 %45, label %97, label %82, !dbg !1368

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1261, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !1252, metadata !DIExpression()), !dbg !1304
  %83 = load i8, i8* %80, align 1, !dbg !1370, !tbaa !524
  %84 = icmp eq i8 %83, 0, !dbg !1372
  br i1 %84, label %97, label %85, !dbg !1372

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1261, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %88, metadata !1252, metadata !DIExpression()), !dbg !1304
  %89 = icmp ult i64 %88, %48, !dbg !1373
  br i1 %89, label %90, label %92, !dbg !1376

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1373
  store i8 %86, i8* %91, align 1, !dbg !1373, !tbaa !524
  br label %92, !dbg !1373

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %93, metadata !1252, metadata !DIExpression()), !dbg !1304
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1377
  call void @llvm.dbg.value(metadata i8* %94, metadata !1261, metadata !DIExpression()), !dbg !1369
  %95 = load i8, i8* %94, align 1, !dbg !1370, !tbaa !524
  %96 = icmp eq i8 %95, 0, !dbg !1372
  br i1 %96, label %97, label %85, !dbg !1372, !llvm.loop !1378

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1380
  call void @llvm.dbg.value(metadata i64 %98, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 1, metadata !1256, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %81, metadata !1254, metadata !DIExpression()), !dbg !1304
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %99, metadata !1255, metadata !DIExpression()), !dbg !1304
  br label %111, !dbg !1382

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1256, metadata !DIExpression()), !dbg !1304
  br label %102, !dbg !1383

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1304
  br i1 %45, label %102, label %105, !dbg !1384

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 2, metadata !1246, metadata !DIExpression()), !dbg !1304
  br label %111, !dbg !1385

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 2, metadata !1246, metadata !DIExpression()), !dbg !1304
  br i1 %45, label %111, label %105, !dbg !1385

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1386
  br i1 %107, label %111, label %108, !dbg !1390

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1386, !tbaa !524
  br label %111, !dbg !1386

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1257, metadata !DIExpression()), !dbg !1304
  br label %111, !dbg !1391

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1392
  unreachable, !dbg !1392

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1380
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %102 ], !dbg !1304
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1304
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %117, metadata !1255, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %116, metadata !1254, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %115, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %114, metadata !1250, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %113, metadata !1249, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 %112, metadata !1246, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 0, metadata !1266, metadata !DIExpression()), !dbg !1393
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
  br label %132, !dbg !1394

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1380
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1308
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1393
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %139, metadata !1266, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %135, metadata !1253, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %134, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %133, metadata !1245, metadata !DIExpression()), !dbg !1304
  %141 = icmp eq i64 %133, -1, !dbg !1395
  br i1 %141, label %142, label %146, !dbg !1396

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1397
  %144 = load i8, i8* %143, align 1, !dbg !1397, !tbaa !524
  %145 = icmp eq i8 %144, 0, !dbg !1398
  br i1 %145, label %596, label %148, !dbg !1399

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1400
  br i1 %147, label %596, label %148, !dbg !1399

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1268, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 0, metadata !1271, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 0, metadata !1272, metadata !DIExpression()), !dbg !1401
  br i1 %123, label %149, label %163, !dbg !1402

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1404
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1405
  br i1 %151, label %152, label %154, !dbg !1405

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %153, metadata !1245, metadata !DIExpression()), !dbg !1304
  br label %154, !dbg !1407

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1407
  call void @llvm.dbg.value(metadata i64 %155, metadata !1245, metadata !DIExpression()), !dbg !1304
  %156 = icmp ugt i64 %150, %155, !dbg !1408
  br i1 %156, label %163, label %157, !dbg !1409

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1410
  call void @llvm.dbg.value(metadata i8* %158, metadata !1411, metadata !DIExpression()) #32, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %116, metadata !1414, metadata !DIExpression()) #32, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %117, metadata !1415, metadata !DIExpression()) #32, !dbg !1416
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1418
  %160 = icmp ne i32 %159, 0, !dbg !1419
  %161 = or i1 %160, %125, !dbg !1420
  %162 = xor i1 %160, true, !dbg !1420
  br i1 %161, label %163, label %647, !dbg !1420

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %164, metadata !1245, metadata !DIExpression()), !dbg !1304
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1421
  %167 = load i8, i8* %166, align 1, !dbg !1421, !tbaa !524
  call void @llvm.dbg.value(metadata i8 %167, metadata !1273, metadata !DIExpression()), !dbg !1401
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
  ], !dbg !1422

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1423

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1424

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1271, metadata !DIExpression()), !dbg !1401
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1428
  br i1 %171, label %188, label %172, !dbg !1428

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1430
  br i1 %173, label %174, label %176, !dbg !1434

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1430
  store i8 39, i8* %175, align 1, !dbg !1430, !tbaa !524
  br label %176, !dbg !1430

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %177, metadata !1252, metadata !DIExpression()), !dbg !1304
  %178 = icmp ult i64 %177, %140, !dbg !1435
  br i1 %178, label %179, label %181, !dbg !1438

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1435
  store i8 36, i8* %180, align 1, !dbg !1435, !tbaa !524
  br label %181, !dbg !1435

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %182, metadata !1252, metadata !DIExpression()), !dbg !1304
  %183 = icmp ult i64 %182, %140, !dbg !1439
  br i1 %183, label %184, label %186, !dbg !1442

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1439
  store i8 39, i8* %185, align 1, !dbg !1439, !tbaa !524
  br label %186, !dbg !1439

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %187, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 1, metadata !1260, metadata !DIExpression()), !dbg !1304
  br label %188, !dbg !1443

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1304
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %189, metadata !1252, metadata !DIExpression()), !dbg !1304
  %191 = icmp ult i64 %189, %140, !dbg !1444
  br i1 %191, label %192, label %194, !dbg !1447

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1444
  store i8 92, i8* %193, align 1, !dbg !1444, !tbaa !524
  br label %194, !dbg !1444

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %195, metadata !1252, metadata !DIExpression()), !dbg !1304
  br i1 %120, label %196, label %499, !dbg !1448

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1450
  %198 = icmp ult i64 %197, %164, !dbg !1451
  br i1 %198, label %199, label %456, !dbg !1452

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1453
  %201 = load i8, i8* %200, align 1, !dbg !1453, !tbaa !524
  %202 = add i8 %201, -48, !dbg !1454
  %203 = icmp ult i8 %202, 10, !dbg !1454
  br i1 %203, label %204, label %456, !dbg !1454

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1455
  br i1 %205, label %206, label %208, !dbg !1459

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1455
  store i8 48, i8* %207, align 1, !dbg !1455, !tbaa !524
  br label %208, !dbg !1455

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %209, metadata !1252, metadata !DIExpression()), !dbg !1304
  %210 = icmp ult i64 %209, %140, !dbg !1460
  br i1 %210, label %211, label %213, !dbg !1463

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1460
  store i8 48, i8* %212, align 1, !dbg !1460, !tbaa !524
  br label %213, !dbg !1460

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %214, metadata !1252, metadata !DIExpression()), !dbg !1304
  br label %456, !dbg !1464

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1465

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1466

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1467

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1469

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1471
  %221 = icmp ult i64 %220, %164, !dbg !1472
  br i1 %221, label %222, label %456, !dbg !1473

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1474
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1475
  %225 = load i8, i8* %224, align 1, !dbg !1475, !tbaa !524
  %226 = icmp eq i8 %225, 63, !dbg !1476
  br i1 %226, label %227, label %456, !dbg !1477

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1478
  %229 = load i8, i8* %228, align 1, !dbg !1478, !tbaa !524
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
  ], !dbg !1479

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1480

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1273, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %220, metadata !1266, metadata !DIExpression()), !dbg !1393
  %232 = icmp ult i64 %134, %140, !dbg !1482
  br i1 %232, label %233, label %235, !dbg !1485

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1482
  store i8 63, i8* %234, align 1, !dbg !1482, !tbaa !524
  br label %235, !dbg !1482

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %236, metadata !1252, metadata !DIExpression()), !dbg !1304
  %237 = icmp ult i64 %236, %140, !dbg !1486
  br i1 %237, label %238, label %240, !dbg !1489

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1486
  store i8 34, i8* %239, align 1, !dbg !1486, !tbaa !524
  br label %240, !dbg !1486

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %241, metadata !1252, metadata !DIExpression()), !dbg !1304
  %242 = icmp ult i64 %241, %140, !dbg !1490
  br i1 %242, label %243, label %245, !dbg !1493

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1490
  store i8 34, i8* %244, align 1, !dbg !1490, !tbaa !524
  br label %245, !dbg !1490

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %246, metadata !1252, metadata !DIExpression()), !dbg !1304
  %247 = icmp ult i64 %246, %140, !dbg !1494
  br i1 %247, label %248, label %250, !dbg !1497

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1494
  store i8 63, i8* %249, align 1, !dbg !1494, !tbaa !524
  br label %250, !dbg !1494

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %251, metadata !1252, metadata !DIExpression()), !dbg !1304
  br label %456, !dbg !1498

252:                                              ; preds = %163
  br label %263, !dbg !1499

253:                                              ; preds = %163
  br label %263, !dbg !1500

254:                                              ; preds = %163
  br label %261, !dbg !1501

255:                                              ; preds = %163
  br label %261, !dbg !1502

256:                                              ; preds = %163
  br label %263, !dbg !1503

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1504

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1505

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1508

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1510

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1511
  call void @llvm.dbg.label(metadata !1298), !dbg !1512
  br i1 %128, label %263, label %638, !dbg !1513

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1511
  call void @llvm.dbg.label(metadata !1300), !dbg !1515
  br i1 %118, label %510, label %467, !dbg !1516

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1517

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1518, !tbaa !524
  %268 = icmp eq i8 %267, 0, !dbg !1520
  br i1 %268, label %269, label %456, !dbg !1521

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1522
  br i1 %270, label %271, label %456, !dbg !1524

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1272, metadata !DIExpression()), !dbg !1401
  br label %272, !dbg !1525

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1272, metadata !DIExpression()), !dbg !1401
  br i1 %126, label %274, label %456, !dbg !1526

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1528

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 1, metadata !1272, metadata !DIExpression()), !dbg !1401
  br i1 %126, label %276, label %456, !dbg !1529

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1530

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1533
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1535
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1535
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %282, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %281, metadata !1253, metadata !DIExpression()), !dbg !1304
  %283 = icmp ult i64 %134, %282, !dbg !1536
  br i1 %283, label %284, label %286, !dbg !1539

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1536
  store i8 39, i8* %285, align 1, !dbg !1536, !tbaa !524
  br label %286, !dbg !1536

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %287, metadata !1252, metadata !DIExpression()), !dbg !1304
  %288 = icmp ult i64 %287, %282, !dbg !1540
  br i1 %288, label %289, label %291, !dbg !1543

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1540
  store i8 92, i8* %290, align 1, !dbg !1540, !tbaa !524
  br label %291, !dbg !1540

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %292, metadata !1252, metadata !DIExpression()), !dbg !1304
  %293 = icmp ult i64 %292, %282, !dbg !1544
  br i1 %293, label %294, label %296, !dbg !1547

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1544
  store i8 39, i8* %295, align 1, !dbg !1544, !tbaa !524
  br label %296, !dbg !1544

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %297, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()), !dbg !1304
  br label %456, !dbg !1548

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1549

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1274, metadata !DIExpression()), !dbg !1550
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1551
  %301 = load i16*, i16** %300, align 8, !dbg !1551, !tbaa !433
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1551
  %304 = load i16, i16* %303, align 2, !dbg !1551, !tbaa !549
  %305 = and i16 %304, 16384, !dbg !1551
  %306 = icmp ne i16 %305, 0, !dbg !1553
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %349, metadata !1274, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %312, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i1 %350, metadata !1272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1401
  br label %352, !dbg !1554

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1555
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1278, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1330, metadata !DIExpression()) #32, !dbg !1557
  call void @llvm.dbg.value(metadata i8* %32, metadata !1338, metadata !DIExpression()) #32, !dbg !1559
  call void @llvm.dbg.value(metadata i32 0, metadata !1341, metadata !DIExpression()) #32, !dbg !1559
  call void @llvm.dbg.value(metadata i64 8, metadata !1342, metadata !DIExpression()) #32, !dbg !1559
  store i64 0, i64* %14, align 8, !dbg !1561
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1550
  %308 = icmp eq i64 %164, -1, !dbg !1562
  br i1 %308, label %309, label %311, !dbg !1564

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %310, metadata !1245, metadata !DIExpression()), !dbg !1304
  br label %311, !dbg !1566

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1401
  call void @llvm.dbg.value(metadata i64 %312, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1567
  %313 = sub i64 %312, %139, !dbg !1568
  call void @llvm.dbg.value(metadata i32* %16, metadata !1281, metadata !DIExpression(DW_OP_deref)), !dbg !1569
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %314, metadata !1285, metadata !DIExpression()), !dbg !1569
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1571

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1550
  %316 = icmp ugt i64 %312, %139, !dbg !1572
  br i1 %316, label %319, label %317, !dbg !1574

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %349, metadata !1274, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %312, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i1 %350, metadata !1272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1401
  br label %352, !dbg !1554

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1277, metadata !DIExpression()), !dbg !1550
  br label %346, !dbg !1577

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1274, metadata !DIExpression()), !dbg !1550
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1579
  %323 = load i8, i8* %322, align 1, !dbg !1579, !tbaa !524
  %324 = icmp eq i8 %323, 0, !dbg !1574
  br i1 %324, label %348, label %325, !dbg !1580

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %326, metadata !1274, metadata !DIExpression()), !dbg !1550
  %327 = add i64 %326, %139, !dbg !1582
  %328 = icmp eq i64 %326, %313, !dbg !1572
  br i1 %328, label %348, label %319, !dbg !1574, !llvm.loop !1583

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1584
  call void @llvm.dbg.value(metadata i64 1, metadata !1286, metadata !DIExpression()), !dbg !1585
  br i1 %331, label %332, label %340, !dbg !1584

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1286, metadata !DIExpression()), !dbg !1585
  %334 = add i64 %333, %139, !dbg !1586
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1588
  %336 = load i8, i8* %335, align 1, !dbg !1588, !tbaa !524
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1589

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %338, metadata !1286, metadata !DIExpression()), !dbg !1585
  %339 = icmp eq i64 %338, %314, !dbg !1591
  br i1 %339, label %340, label %332, !dbg !1592, !llvm.loop !1593

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1595, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %341, metadata !1281, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %341, metadata !1597, metadata !DIExpression()) #32, !dbg !1605
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1607
  %343 = icmp ne i32 %342, 0, !dbg !1608
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %314, metadata !1274, metadata !DIExpression()), !dbg !1550
  br label %348, !dbg !1609

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1576
  call void @llvm.dbg.label(metadata !1303), !dbg !1610
  %345 = select i1 %118, i32 4, i32 2, !dbg !1611
  br label %643, !dbg !1611

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %349, metadata !1274, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %312, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i1 %350, metadata !1272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1401
  br label %352, !dbg !1554

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %349, metadata !1274, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %312, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i1 %350, metadata !1272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1401
  %351 = icmp ugt i64 %349, 1, !dbg !1613
  br i1 %351, label %357, label %352, !dbg !1554

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1614
  br i1 %356, label %456, label %357, !dbg !1614

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %361, metadata !1294, metadata !DIExpression()), !dbg !1616
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1617

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1304
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1393
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1618
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1401
  call void @llvm.dbg.value(metadata i8 %369, metadata !1273, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %368, metadata !1271, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %366, metadata !1266, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %364, metadata !1252, metadata !DIExpression()), !dbg !1304
  br i1 %362, label %414, label %370, !dbg !1619

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1624

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1271, metadata !DIExpression()), !dbg !1401
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1627
  br i1 %372, label %389, label %373, !dbg !1627

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1629
  br i1 %374, label %375, label %377, !dbg !1633

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1629
  store i8 39, i8* %376, align 1, !dbg !1629, !tbaa !524
  br label %377, !dbg !1629

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %378, metadata !1252, metadata !DIExpression()), !dbg !1304
  %379 = icmp ult i64 %378, %140, !dbg !1634
  br i1 %379, label %380, label %382, !dbg !1637

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1634
  store i8 36, i8* %381, align 1, !dbg !1634, !tbaa !524
  br label %382, !dbg !1634

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %383, metadata !1252, metadata !DIExpression()), !dbg !1304
  %384 = icmp ult i64 %383, %140, !dbg !1638
  br i1 %384, label %385, label %387, !dbg !1641

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1638
  store i8 39, i8* %386, align 1, !dbg !1638, !tbaa !524
  br label %387, !dbg !1638

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %388, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 1, metadata !1260, metadata !DIExpression()), !dbg !1304
  br label %389, !dbg !1642

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1304
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %390, metadata !1252, metadata !DIExpression()), !dbg !1304
  %392 = icmp ult i64 %390, %140, !dbg !1643
  br i1 %392, label %393, label %395, !dbg !1646

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1643
  store i8 92, i8* %394, align 1, !dbg !1643, !tbaa !524
  br label %395, !dbg !1643

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %396, metadata !1252, metadata !DIExpression()), !dbg !1304
  %397 = icmp ult i64 %396, %140, !dbg !1647
  br i1 %397, label %398, label %402, !dbg !1650

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1647
  %400 = or i8 %399, 48, !dbg !1647
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1647
  store i8 %400, i8* %401, align 1, !dbg !1647, !tbaa !524
  br label %402, !dbg !1647

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %403, metadata !1252, metadata !DIExpression()), !dbg !1304
  %404 = icmp ult i64 %403, %140, !dbg !1651
  br i1 %404, label %405, label %410, !dbg !1654

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1651
  %407 = and i8 %406, 7, !dbg !1651
  %408 = or i8 %407, 48, !dbg !1651
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1651
  store i8 %408, i8* %409, align 1, !dbg !1651, !tbaa !524
  br label %410, !dbg !1651

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %411, metadata !1252, metadata !DIExpression()), !dbg !1304
  %412 = and i8 %369, 7, !dbg !1655
  %413 = or i8 %412, 48, !dbg !1656
  call void @llvm.dbg.value(metadata i8 %413, metadata !1273, metadata !DIExpression()), !dbg !1401
  br label %421, !dbg !1657

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1658

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1659
  br i1 %416, label %417, label %419, !dbg !1664

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1659
  store i8 92, i8* %418, align 1, !dbg !1659, !tbaa !524
  br label %419, !dbg !1659

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %420, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 0, metadata !1268, metadata !DIExpression()), !dbg !1401
  br label %421, !dbg !1665

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1304
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1401
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1401
  call void @llvm.dbg.value(metadata i8 %426, metadata !1273, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %425, metadata !1271, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %422, metadata !1252, metadata !DIExpression()), !dbg !1304
  %427 = add i64 %366, 1, !dbg !1666
  %428 = icmp ugt i64 %361, %427, !dbg !1668
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1669

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1670
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1670
  br i1 %432, label %433, label %444, !dbg !1670

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1673
  br i1 %434, label %435, label %437, !dbg !1677

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1673
  store i8 39, i8* %436, align 1, !dbg !1673, !tbaa !524
  br label %437, !dbg !1673

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %438, metadata !1252, metadata !DIExpression()), !dbg !1304
  %439 = icmp ult i64 %438, %140, !dbg !1678
  br i1 %439, label %440, label %442, !dbg !1681

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1678
  store i8 39, i8* %441, align 1, !dbg !1678, !tbaa !524
  br label %442, !dbg !1678

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %443, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()), !dbg !1304
  br label %444, !dbg !1682

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1683
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %445, metadata !1252, metadata !DIExpression()), !dbg !1304
  %447 = icmp ult i64 %445, %140, !dbg !1684
  br i1 %447, label %448, label %450, !dbg !1687

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1684
  store i8 %426, i8* %449, align 1, !dbg !1684, !tbaa !524
  br label %450, !dbg !1684

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %451, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %427, metadata !1266, metadata !DIExpression()), !dbg !1393
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1688
  %453 = load i8, i8* %452, align 1, !dbg !1688, !tbaa !524
  call void @llvm.dbg.value(metadata i8 %453, metadata !1273, metadata !DIExpression()), !dbg !1401
  br label %363, !dbg !1689, !llvm.loop !1690

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1273, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i1 %358, metadata !1272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %425, metadata !1271, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %366, metadata !1266, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %422, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %360, metadata !1245, metadata !DIExpression()), !dbg !1304
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1693
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1304
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1308
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1393
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1401
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 %465, metadata !1273, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1271, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %462, metadata !1266, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %459, metadata !1253, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %458, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %457, metadata !1245, metadata !DIExpression()), !dbg !1304
  br i1 %121, label %478, label %467, !dbg !1694

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
  br i1 %131, label %479, label %499, !dbg !1696

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1697

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
  %490 = lshr i8 %481, 5, !dbg !1698
  %491 = zext i8 %490 to i64, !dbg !1698
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1699
  %493 = load i32, i32* %492, align 4, !dbg !1699, !tbaa !515
  %494 = and i8 %481, 31, !dbg !1700
  %495 = zext i8 %494 to i32, !dbg !1700
  %496 = shl nuw i32 1, %495, !dbg !1701
  %497 = and i32 %493, %496, !dbg !1701
  %498 = icmp eq i32 %497, 0, !dbg !1701
  br i1 %498, label %499, label %510, !dbg !1702

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
  br i1 %165, label %510, label %546, !dbg !1703

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1693
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1304
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1308
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1704
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1401
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 %518, metadata !1273, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %516, metadata !1266, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %513, metadata !1253, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %512, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %511, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.label(metadata !1301), !dbg !1705
  br i1 %119, label %638, label %520, !dbg !1706

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1271, metadata !DIExpression()), !dbg !1401
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1708
  br i1 %521, label %538, label %522, !dbg !1708

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1710
  br i1 %523, label %524, label %526, !dbg !1714

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1710
  store i8 39, i8* %525, align 1, !dbg !1710, !tbaa !524
  br label %526, !dbg !1710

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %527, metadata !1252, metadata !DIExpression()), !dbg !1304
  %528 = icmp ult i64 %527, %519, !dbg !1715
  br i1 %528, label %529, label %531, !dbg !1718

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1715
  store i8 36, i8* %530, align 1, !dbg !1715, !tbaa !524
  br label %531, !dbg !1715

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %532, metadata !1252, metadata !DIExpression()), !dbg !1304
  %533 = icmp ult i64 %532, %519, !dbg !1719
  br i1 %533, label %534, label %536, !dbg !1722

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1719
  store i8 39, i8* %535, align 1, !dbg !1719, !tbaa !524
  br label %536, !dbg !1719

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %537, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 1, metadata !1260, metadata !DIExpression()), !dbg !1304
  br label %538, !dbg !1723

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1401
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %539, metadata !1252, metadata !DIExpression()), !dbg !1304
  %541 = icmp ult i64 %539, %519, !dbg !1724
  br i1 %541, label %542, label %544, !dbg !1727

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1724
  store i8 92, i8* %543, align 1, !dbg !1724, !tbaa !524
  br label %544, !dbg !1724

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %556, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 %555, metadata !1273, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1271, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %552, metadata !1266, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %549, metadata !1253, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %548, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %547, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.label(metadata !1302), !dbg !1728
  br label %570, !dbg !1729

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1693
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1304
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1308
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1704
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1732
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 %555, metadata !1273, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1271, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %552, metadata !1266, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %549, metadata !1253, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %548, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %547, metadata !1245, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.label(metadata !1302), !dbg !1728
  %557 = xor i1 %551, true, !dbg !1729
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1729
  br i1 %558, label %570, label %559, !dbg !1729

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1733
  br i1 %560, label %561, label %563, !dbg !1737

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1733
  store i8 39, i8* %562, align 1, !dbg !1733, !tbaa !524
  br label %563, !dbg !1733

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %564, metadata !1252, metadata !DIExpression()), !dbg !1304
  %565 = icmp ult i64 %564, %556, !dbg !1738
  br i1 %565, label %566, label %568, !dbg !1741

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1738
  store i8 39, i8* %567, align 1, !dbg !1738, !tbaa !524
  br label %568, !dbg !1738

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %569, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()), !dbg !1304
  br label %570, !dbg !1742

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1401
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %578, metadata !1252, metadata !DIExpression()), !dbg !1304
  %580 = icmp ult i64 %578, %571, !dbg !1743
  br i1 %580, label %581, label %583, !dbg !1746

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1743
  store i8 %572, i8* %582, align 1, !dbg !1743, !tbaa !524
  br label %583, !dbg !1743

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %584, metadata !1252, metadata !DIExpression()), !dbg !1304
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1747
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1304
  br label %586, !dbg !1748

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1693
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1304
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1308
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1704
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %593, metadata !1266, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %589, metadata !1253, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %588, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %587, metadata !1245, metadata !DIExpression()), !dbg !1304
  %595 = add i64 %593, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %595, metadata !1266, metadata !DIExpression()), !dbg !1393
  br label %132, !dbg !1750, !llvm.loop !1751

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1243, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 undef, metadata !1253, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 undef, metadata !1252, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 undef, metadata !1245, metadata !DIExpression()), !dbg !1304
  %597 = icmp eq i64 %134, 0, !dbg !1753
  %598 = and i1 %126, %597, !dbg !1755
  %599 = and i1 %598, %119, !dbg !1755
  br i1 %599, label %638, label %600, !dbg !1755

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1756
  %602 = or i1 %119, %601, !dbg !1756
  %603 = xor i1 %136, true, !dbg !1756
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1756
  br i1 %604, label %612, label %605, !dbg !1756

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1758

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1760
  br label %653, !dbg !1762

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1763
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1765
  br i1 %611, label %36, label %612, !dbg !1765

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1766
  %615 = or i1 %614, %613, !dbg !1768
  br i1 %615, label %631, label %616, !dbg !1768

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1254, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %134, metadata !1252, metadata !DIExpression()), !dbg !1304
  %617 = load i8, i8* %116, align 1, !dbg !1769, !tbaa !524
  %618 = icmp eq i8 %617, 0, !dbg !1772
  br i1 %618, label %631, label %619, !dbg !1772

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1254, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %622, metadata !1252, metadata !DIExpression()), !dbg !1304
  %623 = icmp ult i64 %622, %140, !dbg !1773
  br i1 %623, label %624, label %626, !dbg !1776

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1773
  store i8 %620, i8* %625, align 1, !dbg !1773, !tbaa !524
  br label %626, !dbg !1773

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %627, metadata !1252, metadata !DIExpression()), !dbg !1304
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1777
  call void @llvm.dbg.value(metadata i8* %628, metadata !1254, metadata !DIExpression()), !dbg !1304
  %629 = load i8, i8* %628, align 1, !dbg !1769, !tbaa !524
  %630 = icmp eq i8 %629, 0, !dbg !1772
  br i1 %630, label %631, label %619, !dbg !1772, !llvm.loop !1778

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1380
  call void @llvm.dbg.value(metadata i64 %632, metadata !1252, metadata !DIExpression()), !dbg !1304
  %633 = icmp ult i64 %632, %140, !dbg !1780
  br i1 %633, label %634, label %653, !dbg !1782

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1783
  store i8 0, i8* %635, align 1, !dbg !1784, !tbaa !524
  br label %653, !dbg !1783

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1303), !dbg !1610
  %637 = icmp eq i32 %112, 2, !dbg !1785
  br i1 %637, label %643, label %647, !dbg !1611

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1303), !dbg !1610
  %641 = icmp eq i32 %112, 2, !dbg !1785
  %642 = select i1 %118, i32 4, i32 2, !dbg !1611
  br i1 %641, label %643, label %647, !dbg !1611

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1611

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1246, metadata !DIExpression()), !dbg !1304
  %651 = and i32 %5, -3, !dbg !1786
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1787
  br label %653, !dbg !1788

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1789
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1790 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1792 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1796, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %1, metadata !1797, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1798, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %0, metadata !1800, metadata !DIExpression()) #32, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %1, metadata !1805, metadata !DIExpression()) #32, !dbg !1813
  call void @llvm.dbg.value(metadata i64* null, metadata !1806, metadata !DIExpression()) #32, !dbg !1813
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1807, metadata !DIExpression()) #32, !dbg !1813
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1815
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1815
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1808, metadata !DIExpression()) #32, !dbg !1813
  %6 = tail call i32* @__errno_location() #35, !dbg !1816
  %7 = load i32, i32* %6, align 4, !dbg !1816, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %7, metadata !1809, metadata !DIExpression()) #32, !dbg !1813
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1817
  %9 = load i32, i32* %8, align 4, !dbg !1817, !tbaa !1186
  %10 = or i32 %9, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i32 %10, metadata !1810, metadata !DIExpression()) #32, !dbg !1813
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1819
  %12 = load i32, i32* %11, align 8, !dbg !1819, !tbaa !1135
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1820
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1821
  %15 = load i8*, i8** %14, align 8, !dbg !1821, !tbaa !1208
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1822
  %17 = load i8*, i8** %16, align 8, !dbg !1822, !tbaa !1211
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !1823
  %19 = add i64 %18, 1, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %19, metadata !1811, metadata !DIExpression()) #32, !dbg !1813
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %20, metadata !1812, metadata !DIExpression()) #32, !dbg !1813
  %21 = load i32, i32* %11, align 8, !dbg !1826, !tbaa !1135
  %22 = load i8*, i8** %14, align 8, !dbg !1827, !tbaa !1208
  %23 = load i8*, i8** %16, align 8, !dbg !1828, !tbaa !1211
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !1829
  store i32 %7, i32* %6, align 4, !dbg !1830, !tbaa !515
  ret i8* %20, !dbg !1831
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1801 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1800, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %1, metadata !1805, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64* %2, metadata !1806, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1807, metadata !DIExpression()), !dbg !1832
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1833
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1833
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1808, metadata !DIExpression()), !dbg !1832
  %7 = tail call i32* @__errno_location() #35, !dbg !1834
  %8 = load i32, i32* %7, align 4, !dbg !1834, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %8, metadata !1809, metadata !DIExpression()), !dbg !1832
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1835
  %10 = load i32, i32* %9, align 4, !dbg !1835, !tbaa !1186
  %11 = icmp eq i64* %2, null, !dbg !1836
  %12 = zext i1 %11 to i32, !dbg !1836
  %13 = or i32 %10, %12, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %13, metadata !1810, metadata !DIExpression()), !dbg !1832
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1838
  %15 = load i32, i32* %14, align 8, !dbg !1838, !tbaa !1135
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1839
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1840
  %18 = load i8*, i8** %17, align 8, !dbg !1840, !tbaa !1208
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1841
  %20 = load i8*, i8** %19, align 8, !dbg !1841, !tbaa !1211
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1842
  %22 = add i64 %21, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %22, metadata !1811, metadata !DIExpression()), !dbg !1832
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1844
  call void @llvm.dbg.value(metadata i8* %23, metadata !1812, metadata !DIExpression()), !dbg !1832
  %24 = load i32, i32* %14, align 8, !dbg !1845, !tbaa !1135
  %25 = load i8*, i8** %17, align 8, !dbg !1846, !tbaa !1208
  %26 = load i8*, i8** %19, align 8, !dbg !1847, !tbaa !1211
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1848
  store i32 %8, i32* %7, align 4, !dbg !1849, !tbaa !515
  br i1 %11, label %29, label %28, !dbg !1850

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1851, !tbaa !1853
  br label %29, !dbg !1854

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1855
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1856 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1861, !tbaa !433
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1858, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 1, metadata !1859, metadata !DIExpression()), !dbg !1863
  %2 = load i32, i32* @nslots, align 4, !tbaa !515
  call void @llvm.dbg.value(metadata i32 1, metadata !1859, metadata !DIExpression()), !dbg !1863
  %3 = icmp sgt i32 %2, 1, !dbg !1864
  br i1 %3, label %4, label %6, !dbg !1866

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1864
  br label %10, !dbg !1866

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1867
  %8 = load i8*, i8** %7, align 8, !dbg !1867, !tbaa !1869
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1871
  br i1 %9, label %17, label %16, !dbg !1872

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1859, metadata !DIExpression()), !dbg !1863
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1873
  %13 = load i8*, i8** %12, align 8, !dbg !1873, !tbaa !1869
  tail call void @free(i8* noundef %13) #32, !dbg !1874
  %14 = add nuw nsw i64 %11, 1, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %14, metadata !1859, metadata !DIExpression()), !dbg !1863
  %15 = icmp eq i64 %14, %5, !dbg !1864
  br i1 %15, label %6, label %10, !dbg !1866, !llvm.loop !1876

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !1878
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1880, !tbaa !1881
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1882, !tbaa !1869
  br label %17, !dbg !1883

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1884
  br i1 %18, label %21, label %19, !dbg !1886

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1887
  tail call void @free(i8* noundef %20) #32, !dbg !1889
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1890, !tbaa !433
  br label %21, !dbg !1891

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1892, !tbaa !515
  ret void, !dbg !1893
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1896, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %1, metadata !1897, metadata !DIExpression()), !dbg !1898
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1899
  ret i8* %3, !dbg !1900
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1901 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1905, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8* %1, metadata !1906, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %2, metadata !1907, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1908, metadata !DIExpression()), !dbg !1921
  %6 = tail call i32* @__errno_location() #35, !dbg !1922
  %7 = load i32, i32* %6, align 4, !dbg !1922, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %7, metadata !1909, metadata !DIExpression()), !dbg !1921
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1923, !tbaa !433
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1910, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1911, metadata !DIExpression()), !dbg !1921
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1924
  br i1 %9, label %10, label %11, !dbg !1924

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !1926
  unreachable, !dbg !1926

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1927, !tbaa !515
  %13 = icmp sgt i32 %12, %0, !dbg !1928
  br i1 %13, label %36, label %14, !dbg !1929

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1930
  call void @llvm.dbg.value(metadata i1 %15, metadata !1912, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1931
  %16 = bitcast i64* %5 to i8*, !dbg !1932
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1932
  %17 = sext i32 %12 to i64, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %17, metadata !1915, metadata !DIExpression()), !dbg !1931
  store i64 %17, i64* %5, align 8, !dbg !1934, !tbaa !1853
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1935
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1935
  %20 = add nuw nsw i32 %0, 1, !dbg !1936
  %21 = sub i32 %20, %12, !dbg !1937
  %22 = sext i32 %21 to i64, !dbg !1938
  call void @llvm.dbg.value(metadata i64* %5, metadata !1915, metadata !DIExpression(DW_OP_deref)), !dbg !1931
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !1939
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1939
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1910, metadata !DIExpression()), !dbg !1921
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1940, !tbaa !433
  br i1 %15, label %25, label %26, !dbg !1941

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1942, !tbaa.struct !1944
  br label %26, !dbg !1945

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1946, !tbaa !515
  %28 = sext i32 %27 to i64, !dbg !1947
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1947
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1948
  %31 = load i64, i64* %5, align 8, !dbg !1949, !tbaa !1853
  call void @llvm.dbg.value(metadata i64 %31, metadata !1915, metadata !DIExpression()), !dbg !1931
  %32 = sub nsw i64 %31, %28, !dbg !1950
  %33 = shl i64 %32, 4, !dbg !1951
  call void @llvm.dbg.value(metadata i8* %30, metadata !1338, metadata !DIExpression()) #32, !dbg !1952
  call void @llvm.dbg.value(metadata i32 0, metadata !1341, metadata !DIExpression()) #32, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %33, metadata !1342, metadata !DIExpression()) #32, !dbg !1952
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !1954
  %34 = load i64, i64* %5, align 8, !dbg !1955, !tbaa !1853
  call void @llvm.dbg.value(metadata i64 %34, metadata !1915, metadata !DIExpression()), !dbg !1931
  %35 = trunc i64 %34 to i32, !dbg !1955
  store i32 %35, i32* @nslots, align 4, !dbg !1956, !tbaa !515
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1957
  br label %36, !dbg !1958

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1921
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1910, metadata !DIExpression()), !dbg !1921
  %38 = zext i32 %0 to i64, !dbg !1959
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !1960
  %40 = load i64, i64* %39, align 8, !dbg !1960, !tbaa !1881
  call void @llvm.dbg.value(metadata i64 %40, metadata !1916, metadata !DIExpression()), !dbg !1961
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !1962
  %42 = load i8*, i8** %41, align 8, !dbg !1962, !tbaa !1869
  call void @llvm.dbg.value(metadata i8* %42, metadata !1918, metadata !DIExpression()), !dbg !1961
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1963
  %44 = load i32, i32* %43, align 4, !dbg !1963, !tbaa !1186
  %45 = or i32 %44, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %45, metadata !1919, metadata !DIExpression()), !dbg !1961
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1965
  %47 = load i32, i32* %46, align 8, !dbg !1965, !tbaa !1135
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1966
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1967
  %50 = load i8*, i8** %49, align 8, !dbg !1967, !tbaa !1208
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1968
  %52 = load i8*, i8** %51, align 8, !dbg !1968, !tbaa !1211
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %53, metadata !1920, metadata !DIExpression()), !dbg !1961
  %54 = icmp ugt i64 %40, %53, !dbg !1970
  br i1 %54, label %65, label %55, !dbg !1972

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %56, metadata !1916, metadata !DIExpression()), !dbg !1961
  store i64 %56, i64* %39, align 8, !dbg !1975, !tbaa !1881
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1976
  br i1 %57, label %59, label %58, !dbg !1978

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !1979
  br label %59, !dbg !1979

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !1980
  call void @llvm.dbg.value(metadata i8* %60, metadata !1918, metadata !DIExpression()), !dbg !1961
  store i8* %60, i8** %41, align 8, !dbg !1981, !tbaa !1869
  %61 = load i32, i32* %46, align 8, !dbg !1982, !tbaa !1135
  %62 = load i8*, i8** %49, align 8, !dbg !1983, !tbaa !1208
  %63 = load i8*, i8** %51, align 8, !dbg !1984, !tbaa !1211
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !1985
  br label %65, !dbg !1986

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !1961
  call void @llvm.dbg.value(metadata i8* %66, metadata !1918, metadata !DIExpression()), !dbg !1961
  store i32 %7, i32* %6, align 4, !dbg !1987, !tbaa !515
  ret i8* %66, !dbg !1988
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1993, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %1, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %2, metadata !1995, metadata !DIExpression()), !dbg !1996
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1997
  ret i8* %4, !dbg !1998
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !1999 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2001, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 0, metadata !1896, metadata !DIExpression()) #32, !dbg !2003
  call void @llvm.dbg.value(metadata i8* %0, metadata !1897, metadata !DIExpression()) #32, !dbg !2003
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2005
  ret i8* %2, !dbg !2006
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2007 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %1, metadata !2012, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i32 0, metadata !1993, metadata !DIExpression()) #32, !dbg !2014
  call void @llvm.dbg.value(metadata i8* %0, metadata !1994, metadata !DIExpression()) #32, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %1, metadata !1995, metadata !DIExpression()) #32, !dbg !2014
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2016
  ret i8* %3, !dbg !2017
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2018 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2022, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i32 %1, metadata !2023, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8* %2, metadata !2024, metadata !DIExpression()), !dbg !2026
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2027
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2027
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2025, metadata !DIExpression()), !dbg !2028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %1, metadata !2033, metadata !DIExpression()) #32, !dbg !2039
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2038, metadata !DIExpression()) #32, !dbg !2041
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2041, !alias.scope !2029
  %6 = icmp eq i32 %1, 10, !dbg !2042
  br i1 %6, label %7, label %8, !dbg !2044

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2045, !noalias !2029
  unreachable, !dbg !2045

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2046
  store i32 %1, i32* %9, align 8, !dbg !2047, !tbaa !1135, !alias.scope !2029
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2048
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2049
  ret i8* %10, !dbg !2050
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2051 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2055, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %1, metadata !2056, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8* %2, metadata !2057, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %3, metadata !2058, metadata !DIExpression()), !dbg !2060
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2061
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2061
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2059, metadata !DIExpression()), !dbg !2062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2063), !dbg !2066
  call void @llvm.dbg.value(metadata i32 %1, metadata !2033, metadata !DIExpression()) #32, !dbg !2067
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2038, metadata !DIExpression()) #32, !dbg !2069
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2069, !alias.scope !2063
  %7 = icmp eq i32 %1, 10, !dbg !2070
  br i1 %7, label %8, label %9, !dbg !2071

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2072, !noalias !2063
  unreachable, !dbg !2072

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2073
  store i32 %1, i32* %10, align 8, !dbg !2074, !tbaa !1135, !alias.scope !2063
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2075
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2076
  ret i8* %11, !dbg !2077
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2078 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2082, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %1, metadata !2083, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 0, metadata !2022, metadata !DIExpression()) #32, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %0, metadata !2023, metadata !DIExpression()) #32, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %1, metadata !2024, metadata !DIExpression()) #32, !dbg !2085
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2087
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2087
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2025, metadata !DIExpression()) #32, !dbg !2088
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089) #32, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %0, metadata !2033, metadata !DIExpression()) #32, !dbg !2093
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2038, metadata !DIExpression()) #32, !dbg !2095
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2095, !alias.scope !2089
  %5 = icmp eq i32 %0, 10, !dbg !2096
  br i1 %5, label %6, label %7, !dbg !2097

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2098, !noalias !2089
  unreachable, !dbg !2098

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2099
  store i32 %0, i32* %8, align 8, !dbg !2100, !tbaa !1135, !alias.scope !2089
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2101
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2102
  ret i8* %9, !dbg !2103
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2104 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2108, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8* %1, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i64 %2, metadata !2110, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i32 0, metadata !2055, metadata !DIExpression()) #32, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %0, metadata !2056, metadata !DIExpression()) #32, !dbg !2112
  call void @llvm.dbg.value(metadata i8* %1, metadata !2057, metadata !DIExpression()) #32, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %2, metadata !2058, metadata !DIExpression()) #32, !dbg !2112
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2114
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2114
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2059, metadata !DIExpression()) #32, !dbg !2115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116) #32, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %0, metadata !2033, metadata !DIExpression()) #32, !dbg !2120
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2038, metadata !DIExpression()) #32, !dbg !2122
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2122, !alias.scope !2116
  %6 = icmp eq i32 %0, 10, !dbg !2123
  br i1 %6, label %7, label %8, !dbg !2124

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2125, !noalias !2116
  unreachable, !dbg !2125

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2126
  store i32 %0, i32* %9, align 8, !dbg !2127, !tbaa !1135, !alias.scope !2116
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2128
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2129
  ret i8* %10, !dbg !2130
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2131 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %1, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %2, metadata !2137, metadata !DIExpression()), !dbg !2139
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2140
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2140
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2138, metadata !DIExpression()), !dbg !2141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2142, !tbaa.struct !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1153, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %2, metadata !1154, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 1, metadata !1155, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %2, metadata !1156, metadata !DIExpression()), !dbg !2144
  %6 = lshr i8 %2, 5, !dbg !2146
  %7 = zext i8 %6 to i64, !dbg !2146
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2147
  call void @llvm.dbg.value(metadata i32* %8, metadata !1157, metadata !DIExpression()), !dbg !2144
  %9 = and i8 %2, 31, !dbg !2148
  %10 = zext i8 %9 to i32, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %10, metadata !1159, metadata !DIExpression()), !dbg !2144
  %11 = load i32, i32* %8, align 4, !dbg !2149, !tbaa !515
  %12 = lshr i32 %11, %10, !dbg !2150
  %13 = and i32 %12, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %13, metadata !1160, metadata !DIExpression()), !dbg !2144
  %14 = xor i32 %13, 1, !dbg !2152
  %15 = shl i32 %14, %10, !dbg !2153
  %16 = xor i32 %15, %11, !dbg !2154
  store i32 %16, i32* %8, align 4, !dbg !2154, !tbaa !515
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2155
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2156
  ret i8* %17, !dbg !2157
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2158 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2162, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 %1, metadata !2163, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()) #32, !dbg !2165
  call void @llvm.dbg.value(metadata i64 -1, metadata !2136, metadata !DIExpression()) #32, !dbg !2165
  call void @llvm.dbg.value(metadata i8 %1, metadata !2137, metadata !DIExpression()) #32, !dbg !2165
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2167
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2167
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2138, metadata !DIExpression()) #32, !dbg !2168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2169, !tbaa.struct !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1153, metadata !DIExpression()) #32, !dbg !2170
  call void @llvm.dbg.value(metadata i8 %1, metadata !1154, metadata !DIExpression()) #32, !dbg !2170
  call void @llvm.dbg.value(metadata i32 1, metadata !1155, metadata !DIExpression()) #32, !dbg !2170
  call void @llvm.dbg.value(metadata i8 %1, metadata !1156, metadata !DIExpression()) #32, !dbg !2170
  %5 = lshr i8 %1, 5, !dbg !2172
  %6 = zext i8 %5 to i64, !dbg !2172
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2173
  call void @llvm.dbg.value(metadata i32* %7, metadata !1157, metadata !DIExpression()) #32, !dbg !2170
  %8 = and i8 %1, 31, !dbg !2174
  %9 = zext i8 %8 to i32, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %9, metadata !1159, metadata !DIExpression()) #32, !dbg !2170
  %10 = load i32, i32* %7, align 4, !dbg !2175, !tbaa !515
  %11 = lshr i32 %10, %9, !dbg !2176
  %12 = and i32 %11, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %12, metadata !1160, metadata !DIExpression()) #32, !dbg !2170
  %13 = xor i32 %12, 1, !dbg !2178
  %14 = shl i32 %13, %9, !dbg !2179
  %15 = xor i32 %14, %10, !dbg !2180
  store i32 %15, i32* %7, align 4, !dbg !2180, !tbaa !515
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2182
  ret i8* %16, !dbg !2183
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2184 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2186, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8* %0, metadata !2162, metadata !DIExpression()) #32, !dbg !2188
  call void @llvm.dbg.value(metadata i8 58, metadata !2163, metadata !DIExpression()) #32, !dbg !2188
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()) #32, !dbg !2190
  call void @llvm.dbg.value(metadata i64 -1, metadata !2136, metadata !DIExpression()) #32, !dbg !2190
  call void @llvm.dbg.value(metadata i8 58, metadata !2137, metadata !DIExpression()) #32, !dbg !2190
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2192
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2192
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2138, metadata !DIExpression()) #32, !dbg !2193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2194, !tbaa.struct !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1153, metadata !DIExpression()) #32, !dbg !2195
  call void @llvm.dbg.value(metadata i8 58, metadata !1154, metadata !DIExpression()) #32, !dbg !2195
  call void @llvm.dbg.value(metadata i32 1, metadata !1155, metadata !DIExpression()) #32, !dbg !2195
  call void @llvm.dbg.value(metadata i8 58, metadata !1156, metadata !DIExpression()) #32, !dbg !2195
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2197
  call void @llvm.dbg.value(metadata i32* %4, metadata !1157, metadata !DIExpression()) #32, !dbg !2195
  call void @llvm.dbg.value(metadata i32 26, metadata !1159, metadata !DIExpression()) #32, !dbg !2195
  %5 = load i32, i32* %4, align 4, !dbg !2198, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %5, metadata !1160, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2195
  %6 = or i32 %5, 67108864, !dbg !2199
  store i32 %6, i32* %4, align 4, !dbg !2199, !tbaa !515
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2200
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2201
  ret i8* %7, !dbg !2202
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2203 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i64 %1, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()) #32, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %1, metadata !2136, metadata !DIExpression()) #32, !dbg !2208
  call void @llvm.dbg.value(metadata i8 58, metadata !2137, metadata !DIExpression()) #32, !dbg !2208
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2210
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2210
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2138, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2212, !tbaa.struct !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1153, metadata !DIExpression()) #32, !dbg !2213
  call void @llvm.dbg.value(metadata i8 58, metadata !1154, metadata !DIExpression()) #32, !dbg !2213
  call void @llvm.dbg.value(metadata i32 1, metadata !1155, metadata !DIExpression()) #32, !dbg !2213
  call void @llvm.dbg.value(metadata i8 58, metadata !1156, metadata !DIExpression()) #32, !dbg !2213
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2215
  call void @llvm.dbg.value(metadata i32* %5, metadata !1157, metadata !DIExpression()) #32, !dbg !2213
  call void @llvm.dbg.value(metadata i32 26, metadata !1159, metadata !DIExpression()) #32, !dbg !2213
  %6 = load i32, i32* %5, align 4, !dbg !2216, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %6, metadata !1160, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2213
  %7 = or i32 %6, 67108864, !dbg !2217
  store i32 %7, i32* %5, align 4, !dbg !2217, !tbaa !515
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2218
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2219
  ret i8* %8, !dbg !2220
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2221 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2223, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i32 %1, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8* %2, metadata !2225, metadata !DIExpression()), !dbg !2227
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2228
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %1, metadata !2033, metadata !DIExpression()) #32, !dbg !2230
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2230
  %6 = icmp eq i32 %1, 10, !dbg !2232
  br i1 %6, label %7, label %8, !dbg !2233

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2234, !noalias !2235
  unreachable, !dbg !2234

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2230
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2238
  store i32 %1, i32* %9, align 8, !dbg !2238, !tbaa.struct !2143
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2238
  %11 = bitcast i32* %10 to i8*, !dbg !2238
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1153, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8 58, metadata !1154, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 1, metadata !1155, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8 58, metadata !1156, metadata !DIExpression()), !dbg !2239
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2241
  call void @llvm.dbg.value(metadata i32* %12, metadata !1157, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 26, metadata !1159, metadata !DIExpression()), !dbg !2239
  %13 = load i32, i32* %12, align 4, !dbg !2242, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %13, metadata !1160, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2239
  %14 = or i32 %13, 67108864, !dbg !2243
  store i32 %14, i32* %12, align 4, !dbg !2243, !tbaa !515
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2245
  ret i8* %15, !dbg !2246
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2247 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2251, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %1, metadata !2252, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %2, metadata !2253, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %3, metadata !2254, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()) #32, !dbg !2266
  call void @llvm.dbg.value(metadata i8* %1, metadata !2261, metadata !DIExpression()) #32, !dbg !2266
  call void @llvm.dbg.value(metadata i8* %2, metadata !2262, metadata !DIExpression()) #32, !dbg !2266
  call void @llvm.dbg.value(metadata i8* %3, metadata !2263, metadata !DIExpression()) #32, !dbg !2266
  call void @llvm.dbg.value(metadata i64 -1, metadata !2264, metadata !DIExpression()) #32, !dbg !2266
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2268
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2268
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2265, metadata !DIExpression()) #32, !dbg !2269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2270, !tbaa.struct !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1193, metadata !DIExpression()) #32, !dbg !2271
  call void @llvm.dbg.value(metadata i8* %1, metadata !1194, metadata !DIExpression()) #32, !dbg !2271
  call void @llvm.dbg.value(metadata i8* %2, metadata !1195, metadata !DIExpression()) #32, !dbg !2271
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1193, metadata !DIExpression()) #32, !dbg !2271
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2273
  store i32 10, i32* %7, align 8, !dbg !2274, !tbaa !1135
  %8 = icmp ne i8* %1, null, !dbg !2275
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2276
  br i1 %10, label %12, label %11, !dbg !2276

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2277
  unreachable, !dbg !2277

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2278
  store i8* %1, i8** %13, align 8, !dbg !2279, !tbaa !1208
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2280
  store i8* %2, i8** %14, align 8, !dbg !2281, !tbaa !1211
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2282
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2283
  ret i8* %15, !dbg !2284
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2257 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %1, metadata !2261, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %2, metadata !2262, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %3, metadata !2263, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %4, metadata !2264, metadata !DIExpression()), !dbg !2285
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2286
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2286
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2265, metadata !DIExpression()), !dbg !2287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2288, !tbaa.struct !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1193, metadata !DIExpression()) #32, !dbg !2289
  call void @llvm.dbg.value(metadata i8* %1, metadata !1194, metadata !DIExpression()) #32, !dbg !2289
  call void @llvm.dbg.value(metadata i8* %2, metadata !1195, metadata !DIExpression()) #32, !dbg !2289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1193, metadata !DIExpression()) #32, !dbg !2289
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2291
  store i32 10, i32* %8, align 8, !dbg !2292, !tbaa !1135
  %9 = icmp ne i8* %1, null, !dbg !2293
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2294
  br i1 %11, label %13, label %12, !dbg !2294

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2295
  unreachable, !dbg !2295

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2296
  store i8* %1, i8** %14, align 8, !dbg !2297, !tbaa !1208
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2298
  store i8* %2, i8** %15, align 8, !dbg !2299, !tbaa !1211
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2301
  ret i8* %16, !dbg !2302
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2303 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8* %1, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8* %2, metadata !2309, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i32 0, metadata !2251, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %0, metadata !2252, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %1, metadata !2253, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %2, metadata !2254, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata i32 0, metadata !2256, metadata !DIExpression()) #32, !dbg !2313
  call void @llvm.dbg.value(metadata i8* %0, metadata !2261, metadata !DIExpression()) #32, !dbg !2313
  call void @llvm.dbg.value(metadata i8* %1, metadata !2262, metadata !DIExpression()) #32, !dbg !2313
  call void @llvm.dbg.value(metadata i8* %2, metadata !2263, metadata !DIExpression()) #32, !dbg !2313
  call void @llvm.dbg.value(metadata i64 -1, metadata !2264, metadata !DIExpression()) #32, !dbg !2313
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2315
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2315
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2265, metadata !DIExpression()) #32, !dbg !2316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2317, !tbaa.struct !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1193, metadata !DIExpression()) #32, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %0, metadata !1194, metadata !DIExpression()) #32, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %1, metadata !1195, metadata !DIExpression()) #32, !dbg !2318
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1193, metadata !DIExpression()) #32, !dbg !2318
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2320
  store i32 10, i32* %6, align 8, !dbg !2321, !tbaa !1135
  %7 = icmp ne i8* %0, null, !dbg !2322
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2323
  br i1 %9, label %11, label %10, !dbg !2323

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2324
  unreachable, !dbg !2324

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2325
  store i8* %0, i8** %12, align 8, !dbg !2326, !tbaa !1208
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2327
  store i8* %1, i8** %13, align 8, !dbg !2328, !tbaa !1211
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2329
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2330
  ret i8* %14, !dbg !2331
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2332 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2336, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8* %1, metadata !2337, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8* %2, metadata !2338, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %3, metadata !2339, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 0, metadata !2256, metadata !DIExpression()) #32, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %0, metadata !2261, metadata !DIExpression()) #32, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %1, metadata !2262, metadata !DIExpression()) #32, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %2, metadata !2263, metadata !DIExpression()) #32, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %3, metadata !2264, metadata !DIExpression()) #32, !dbg !2341
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2343
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2343
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2265, metadata !DIExpression()) #32, !dbg !2344
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2345, !tbaa.struct !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1193, metadata !DIExpression()) #32, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %0, metadata !1194, metadata !DIExpression()) #32, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %1, metadata !1195, metadata !DIExpression()) #32, !dbg !2346
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1193, metadata !DIExpression()) #32, !dbg !2346
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2348
  store i32 10, i32* %7, align 8, !dbg !2349, !tbaa !1135
  %8 = icmp ne i8* %0, null, !dbg !2350
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2351
  br i1 %10, label %12, label %11, !dbg !2351

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2352
  unreachable, !dbg !2352

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2353
  store i8* %0, i8** %13, align 8, !dbg !2354, !tbaa !1208
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2355
  store i8* %1, i8** %14, align 8, !dbg !2356, !tbaa !1211
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2357
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2358
  ret i8* %15, !dbg !2359
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2364, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8* %1, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %2, metadata !2366, metadata !DIExpression()), !dbg !2367
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2368
  ret i8* %4, !dbg !2369
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %1, metadata !2375, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 0, metadata !2364, metadata !DIExpression()) #32, !dbg !2377
  call void @llvm.dbg.value(metadata i8* %0, metadata !2365, metadata !DIExpression()) #32, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %1, metadata !2366, metadata !DIExpression()) #32, !dbg !2377
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2379
  ret i8* %3, !dbg !2380
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2385, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8* %1, metadata !2386, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 %0, metadata !2364, metadata !DIExpression()) #32, !dbg !2388
  call void @llvm.dbg.value(metadata i8* %1, metadata !2365, metadata !DIExpression()) #32, !dbg !2388
  call void @llvm.dbg.value(metadata i64 -1, metadata !2366, metadata !DIExpression()) #32, !dbg !2388
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2390
  ret i8* %3, !dbg !2391
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2396, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i32 0, metadata !2385, metadata !DIExpression()) #32, !dbg !2398
  call void @llvm.dbg.value(metadata i8* %0, metadata !2386, metadata !DIExpression()) #32, !dbg !2398
  call void @llvm.dbg.value(metadata i32 0, metadata !2364, metadata !DIExpression()) #32, !dbg !2400
  call void @llvm.dbg.value(metadata i8* %0, metadata !2365, metadata !DIExpression()) #32, !dbg !2400
  call void @llvm.dbg.value(metadata i64 -1, metadata !2366, metadata !DIExpression()) #32, !dbg !2400
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2402
  ret i8* %2, !dbg !2403
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2404 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2443, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %1, metadata !2444, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %2, metadata !2445, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %3, metadata !2446, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8** %4, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 %5, metadata !2448, metadata !DIExpression()), !dbg !2449
  %7 = icmp eq i8* %1, null, !dbg !2450
  br i1 %7, label %10, label %8, !dbg !2452

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2453
  br label %12, !dbg !2453

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2454
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.76, i64 0, i64 0), i32 noundef 5) #32, !dbg !2455
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2455
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.77, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2456
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.78, i64 0, i64 0), i32 noundef 5) #32, !dbg !2457
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.79, i64 0, i64 0)) #32, !dbg !2457
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.77, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2458
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
  ], !dbg !2459

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.80, i64 0, i64 0), i32 noundef 5) #32, !dbg !2460
  %21 = load i8*, i8** %4, align 8, !dbg !2460, !tbaa !433
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2460
  br label %147, !dbg !2462

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.81, i64 0, i64 0), i32 noundef 5) #32, !dbg !2463
  %25 = load i8*, i8** %4, align 8, !dbg !2463, !tbaa !433
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2463
  %27 = load i8*, i8** %26, align 8, !dbg !2463, !tbaa !433
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2463
  br label %147, !dbg !2464

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.82, i64 0, i64 0), i32 noundef 5) #32, !dbg !2465
  %31 = load i8*, i8** %4, align 8, !dbg !2465, !tbaa !433
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2465
  %33 = load i8*, i8** %32, align 8, !dbg !2465, !tbaa !433
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2465
  %35 = load i8*, i8** %34, align 8, !dbg !2465, !tbaa !433
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2465
  br label %147, !dbg !2466

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.83, i64 0, i64 0), i32 noundef 5) #32, !dbg !2467
  %39 = load i8*, i8** %4, align 8, !dbg !2467, !tbaa !433
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2467
  %41 = load i8*, i8** %40, align 8, !dbg !2467, !tbaa !433
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2467
  %43 = load i8*, i8** %42, align 8, !dbg !2467, !tbaa !433
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2467
  %45 = load i8*, i8** %44, align 8, !dbg !2467, !tbaa !433
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2467
  br label %147, !dbg !2468

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.84, i64 0, i64 0), i32 noundef 5) #32, !dbg !2469
  %49 = load i8*, i8** %4, align 8, !dbg !2469, !tbaa !433
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2469
  %51 = load i8*, i8** %50, align 8, !dbg !2469, !tbaa !433
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2469
  %53 = load i8*, i8** %52, align 8, !dbg !2469, !tbaa !433
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2469
  %55 = load i8*, i8** %54, align 8, !dbg !2469, !tbaa !433
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2469
  %57 = load i8*, i8** %56, align 8, !dbg !2469, !tbaa !433
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2469
  br label %147, !dbg !2470

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.85, i64 0, i64 0), i32 noundef 5) #32, !dbg !2471
  %61 = load i8*, i8** %4, align 8, !dbg !2471, !tbaa !433
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2471
  %63 = load i8*, i8** %62, align 8, !dbg !2471, !tbaa !433
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2471
  %65 = load i8*, i8** %64, align 8, !dbg !2471, !tbaa !433
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2471
  %67 = load i8*, i8** %66, align 8, !dbg !2471, !tbaa !433
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2471
  %69 = load i8*, i8** %68, align 8, !dbg !2471, !tbaa !433
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2471
  %71 = load i8*, i8** %70, align 8, !dbg !2471, !tbaa !433
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2471
  br label %147, !dbg !2472

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.86, i64 0, i64 0), i32 noundef 5) #32, !dbg !2473
  %75 = load i8*, i8** %4, align 8, !dbg !2473, !tbaa !433
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2473
  %77 = load i8*, i8** %76, align 8, !dbg !2473, !tbaa !433
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2473
  %79 = load i8*, i8** %78, align 8, !dbg !2473, !tbaa !433
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2473
  %81 = load i8*, i8** %80, align 8, !dbg !2473, !tbaa !433
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2473
  %83 = load i8*, i8** %82, align 8, !dbg !2473, !tbaa !433
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2473
  %85 = load i8*, i8** %84, align 8, !dbg !2473, !tbaa !433
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2473
  %87 = load i8*, i8** %86, align 8, !dbg !2473, !tbaa !433
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2473
  br label %147, !dbg !2474

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.87, i64 0, i64 0), i32 noundef 5) #32, !dbg !2475
  %91 = load i8*, i8** %4, align 8, !dbg !2475, !tbaa !433
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2475
  %93 = load i8*, i8** %92, align 8, !dbg !2475, !tbaa !433
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2475
  %95 = load i8*, i8** %94, align 8, !dbg !2475, !tbaa !433
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2475
  %97 = load i8*, i8** %96, align 8, !dbg !2475, !tbaa !433
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2475
  %99 = load i8*, i8** %98, align 8, !dbg !2475, !tbaa !433
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2475
  %101 = load i8*, i8** %100, align 8, !dbg !2475, !tbaa !433
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2475
  %103 = load i8*, i8** %102, align 8, !dbg !2475, !tbaa !433
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2475
  %105 = load i8*, i8** %104, align 8, !dbg !2475, !tbaa !433
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2475
  br label %147, !dbg !2476

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !2477
  %109 = load i8*, i8** %4, align 8, !dbg !2477, !tbaa !433
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2477
  %111 = load i8*, i8** %110, align 8, !dbg !2477, !tbaa !433
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2477
  %113 = load i8*, i8** %112, align 8, !dbg !2477, !tbaa !433
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2477
  %115 = load i8*, i8** %114, align 8, !dbg !2477, !tbaa !433
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2477
  %117 = load i8*, i8** %116, align 8, !dbg !2477, !tbaa !433
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2477
  %119 = load i8*, i8** %118, align 8, !dbg !2477, !tbaa !433
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2477
  %121 = load i8*, i8** %120, align 8, !dbg !2477, !tbaa !433
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2477
  %123 = load i8*, i8** %122, align 8, !dbg !2477, !tbaa !433
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2477
  %125 = load i8*, i8** %124, align 8, !dbg !2477, !tbaa !433
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2477
  br label %147, !dbg !2478

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.89, i64 0, i64 0), i32 noundef 5) #32, !dbg !2479
  %129 = load i8*, i8** %4, align 8, !dbg !2479, !tbaa !433
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2479
  %131 = load i8*, i8** %130, align 8, !dbg !2479, !tbaa !433
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2479
  %133 = load i8*, i8** %132, align 8, !dbg !2479, !tbaa !433
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2479
  %135 = load i8*, i8** %134, align 8, !dbg !2479, !tbaa !433
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2479
  %137 = load i8*, i8** %136, align 8, !dbg !2479, !tbaa !433
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2479
  %139 = load i8*, i8** %138, align 8, !dbg !2479, !tbaa !433
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2479
  %141 = load i8*, i8** %140, align 8, !dbg !2479, !tbaa !433
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2479
  %143 = load i8*, i8** %142, align 8, !dbg !2479, !tbaa !433
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2479
  %145 = load i8*, i8** %144, align 8, !dbg !2479, !tbaa !433
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2479
  br label %147, !dbg !2480

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2481
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2482 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2486, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %1, metadata !2487, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %2, metadata !2488, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %3, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8** %4, metadata !2490, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 0, metadata !2491, metadata !DIExpression()), !dbg !2492
  br label %6, !dbg !2493

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2495
  call void @llvm.dbg.value(metadata i64 %7, metadata !2491, metadata !DIExpression()), !dbg !2492
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2496
  %9 = load i8*, i8** %8, align 8, !dbg !2496, !tbaa !433
  %10 = icmp eq i8* %9, null, !dbg !2498
  %11 = add i64 %7, 1, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %11, metadata !2491, metadata !DIExpression()), !dbg !2492
  br i1 %10, label %12, label %6, !dbg !2498, !llvm.loop !2500

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2502
  ret void, !dbg !2503
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2504 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2519, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* %1, metadata !2520, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* %2, metadata !2521, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* %3, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2523, metadata !DIExpression()), !dbg !2528
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2529
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2529
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2525, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i64 0, metadata !2524, metadata !DIExpression()), !dbg !2527
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2524, metadata !DIExpression()), !dbg !2527
  %11 = load i32, i32* %8, align 8, !dbg !2531
  %12 = icmp sgt i32 %11, -1, !dbg !2531
  br i1 %12, label %20, label %13, !dbg !2531

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2531
  store i32 %14, i32* %8, align 8, !dbg !2531
  %15 = icmp ult i32 %11, -7, !dbg !2531
  br i1 %15, label %16, label %20, !dbg !2531

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2531
  %18 = sext i32 %11 to i64, !dbg !2531
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2531
  br label %24, !dbg !2531

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2531
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2531
  store i8* %23, i8** %10, align 8, !dbg !2531
  br label %24, !dbg !2531

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2531
  %28 = load i8*, i8** %27, align 8, !dbg !2531
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2534
  store i8* %28, i8** %29, align 8, !dbg !2535, !tbaa !433
  %30 = icmp eq i8* %28, null, !dbg !2536
  br i1 %30, label %210, label %31, !dbg !2537

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 1, metadata !2524, metadata !DIExpression()), !dbg !2527
  %32 = icmp sgt i32 %25, -1, !dbg !2531
  br i1 %32, label %40, label %33, !dbg !2531

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2531
  store i32 %34, i32* %8, align 8, !dbg !2531
  %35 = icmp ult i32 %25, -7, !dbg !2531
  br i1 %35, label %36, label %40, !dbg !2531

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2531
  %38 = sext i32 %25 to i64, !dbg !2531
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2531
  br label %44, !dbg !2531

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2531
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2531
  store i8* %43, i8** %10, align 8, !dbg !2531
  br label %44, !dbg !2531

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2531
  %48 = load i8*, i8** %47, align 8, !dbg !2531
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2534
  store i8* %48, i8** %49, align 8, !dbg !2535, !tbaa !433
  %50 = icmp eq i8* %48, null, !dbg !2536
  br i1 %50, label %210, label %51, !dbg !2537

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 2, metadata !2524, metadata !DIExpression()), !dbg !2527
  %52 = icmp sgt i32 %45, -1, !dbg !2531
  br i1 %52, label %60, label %53, !dbg !2531

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2531
  store i32 %54, i32* %8, align 8, !dbg !2531
  %55 = icmp ult i32 %45, -7, !dbg !2531
  br i1 %55, label %56, label %60, !dbg !2531

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2531
  %58 = sext i32 %45 to i64, !dbg !2531
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2531
  br label %64, !dbg !2531

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2531
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2531
  store i8* %63, i8** %10, align 8, !dbg !2531
  br label %64, !dbg !2531

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2531
  %68 = load i8*, i8** %67, align 8, !dbg !2531
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2534
  store i8* %68, i8** %69, align 8, !dbg !2535, !tbaa !433
  %70 = icmp eq i8* %68, null, !dbg !2536
  br i1 %70, label %210, label %71, !dbg !2537

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 3, metadata !2524, metadata !DIExpression()), !dbg !2527
  %72 = icmp sgt i32 %65, -1, !dbg !2531
  br i1 %72, label %80, label %73, !dbg !2531

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2531
  store i32 %74, i32* %8, align 8, !dbg !2531
  %75 = icmp ult i32 %65, -7, !dbg !2531
  br i1 %75, label %76, label %80, !dbg !2531

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2531
  %78 = sext i32 %65 to i64, !dbg !2531
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2531
  br label %84, !dbg !2531

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2531
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2531
  store i8* %83, i8** %10, align 8, !dbg !2531
  br label %84, !dbg !2531

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2531
  %88 = load i8*, i8** %87, align 8, !dbg !2531
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2534
  store i8* %88, i8** %89, align 8, !dbg !2535, !tbaa !433
  %90 = icmp eq i8* %88, null, !dbg !2536
  br i1 %90, label %210, label %91, !dbg !2537

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 4, metadata !2524, metadata !DIExpression()), !dbg !2527
  %92 = icmp sgt i32 %85, -1, !dbg !2531
  br i1 %92, label %100, label %93, !dbg !2531

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2531
  store i32 %94, i32* %8, align 8, !dbg !2531
  %95 = icmp ult i32 %85, -7, !dbg !2531
  br i1 %95, label %96, label %100, !dbg !2531

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2531
  %98 = sext i32 %85 to i64, !dbg !2531
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2531
  br label %104, !dbg !2531

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2531
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2531
  store i8* %103, i8** %10, align 8, !dbg !2531
  br label %104, !dbg !2531

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2531
  %108 = load i8*, i8** %107, align 8, !dbg !2531
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2534
  store i8* %108, i8** %109, align 8, !dbg !2535, !tbaa !433
  %110 = icmp eq i8* %108, null, !dbg !2536
  br i1 %110, label %210, label %111, !dbg !2537

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 5, metadata !2524, metadata !DIExpression()), !dbg !2527
  %112 = icmp sgt i32 %105, -1, !dbg !2531
  br i1 %112, label %120, label %113, !dbg !2531

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2531
  store i32 %114, i32* %8, align 8, !dbg !2531
  %115 = icmp ult i32 %105, -7, !dbg !2531
  br i1 %115, label %116, label %120, !dbg !2531

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2531
  %118 = sext i32 %105 to i64, !dbg !2531
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2531
  br label %124, !dbg !2531

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2531
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2531
  store i8* %123, i8** %10, align 8, !dbg !2531
  br label %124, !dbg !2531

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2531
  %128 = load i8*, i8** %127, align 8, !dbg !2531
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2534
  store i8* %128, i8** %129, align 8, !dbg !2535, !tbaa !433
  %130 = icmp eq i8* %128, null, !dbg !2536
  br i1 %130, label %210, label %131, !dbg !2537

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 6, metadata !2524, metadata !DIExpression()), !dbg !2527
  %132 = icmp sgt i32 %125, -1, !dbg !2531
  br i1 %132, label %140, label %133, !dbg !2531

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2531
  store i32 %134, i32* %8, align 8, !dbg !2531
  %135 = icmp ult i32 %125, -7, !dbg !2531
  br i1 %135, label %136, label %140, !dbg !2531

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2531
  %138 = sext i32 %125 to i64, !dbg !2531
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2531
  br label %144, !dbg !2531

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2531
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2531
  store i8* %143, i8** %10, align 8, !dbg !2531
  br label %144, !dbg !2531

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2531
  %148 = load i8*, i8** %147, align 8, !dbg !2531
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2534
  store i8* %148, i8** %149, align 8, !dbg !2535, !tbaa !433
  %150 = icmp eq i8* %148, null, !dbg !2536
  br i1 %150, label %210, label %151, !dbg !2537

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 7, metadata !2524, metadata !DIExpression()), !dbg !2527
  %152 = icmp sgt i32 %145, -1, !dbg !2531
  br i1 %152, label %160, label %153, !dbg !2531

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2531
  store i32 %154, i32* %8, align 8, !dbg !2531
  %155 = icmp ult i32 %145, -7, !dbg !2531
  br i1 %155, label %156, label %160, !dbg !2531

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2531
  %158 = sext i32 %145 to i64, !dbg !2531
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2531
  br label %164, !dbg !2531

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2531
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2531
  store i8* %163, i8** %10, align 8, !dbg !2531
  br label %164, !dbg !2531

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2531
  %168 = load i8*, i8** %167, align 8, !dbg !2531
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2534
  store i8* %168, i8** %169, align 8, !dbg !2535, !tbaa !433
  %170 = icmp eq i8* %168, null, !dbg !2536
  br i1 %170, label %210, label %171, !dbg !2537

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 8, metadata !2524, metadata !DIExpression()), !dbg !2527
  %172 = icmp sgt i32 %165, -1, !dbg !2531
  br i1 %172, label %180, label %173, !dbg !2531

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2531
  store i32 %174, i32* %8, align 8, !dbg !2531
  %175 = icmp ult i32 %165, -7, !dbg !2531
  br i1 %175, label %176, label %180, !dbg !2531

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2531
  %178 = sext i32 %165 to i64, !dbg !2531
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2531
  br label %184, !dbg !2531

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2531
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2531
  store i8* %183, i8** %10, align 8, !dbg !2531
  br label %184, !dbg !2531

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2531
  %188 = load i8*, i8** %187, align 8, !dbg !2531
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2534
  store i8* %188, i8** %189, align 8, !dbg !2535, !tbaa !433
  %190 = icmp eq i8* %188, null, !dbg !2536
  br i1 %190, label %210, label %191, !dbg !2537

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 9, metadata !2524, metadata !DIExpression()), !dbg !2527
  %192 = icmp sgt i32 %185, -1, !dbg !2531
  br i1 %192, label %200, label %193, !dbg !2531

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2531
  store i32 %194, i32* %8, align 8, !dbg !2531
  %195 = icmp ult i32 %185, -7, !dbg !2531
  br i1 %195, label %196, label %200, !dbg !2531

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2531
  %198 = sext i32 %185 to i64, !dbg !2531
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2531
  br label %203, !dbg !2531

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2531
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2531
  store i8* %202, i8** %10, align 8, !dbg !2531
  br label %203, !dbg !2531

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2531
  %206 = load i8*, i8** %205, align 8, !dbg !2531
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2534
  store i8* %206, i8** %207, align 8, !dbg !2535, !tbaa !433
  %208 = icmp eq i8* %206, null, !dbg !2536
  %209 = select i1 %208, i64 9, i64 10, !dbg !2537
  br label %210, !dbg !2537

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2538
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2539
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2540
  ret void, !dbg !2540
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2541 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2545, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %1, metadata !2546, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %2, metadata !2547, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %3, metadata !2548, metadata !DIExpression()), !dbg !2550
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2551
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2551
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2549, metadata !DIExpression()), !dbg !2552
  call void @llvm.va_start(i8* nonnull %7), !dbg !2553
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2554
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2554, !tbaa.struct !833
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2554
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2554
  call void @llvm.va_end(i8* nonnull %7), !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2556
  ret void, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2557 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2558, !tbaa !433
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.77, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2558
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.94, i64 0, i64 0), i32 noundef 5) #32, !dbg !2559
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.95, i64 0, i64 0)) #32, !dbg !2559
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.96, i64 0, i64 0), i32 noundef 5) #32, !dbg !2560
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #32, !dbg !2560
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !2561
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.98, i64 0, i64 0)) #32, !dbg !2561
  ret void, !dbg !2562
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %1, metadata !2569, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %2, metadata !2570, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %0, metadata !2572, metadata !DIExpression()) #32, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2575, metadata !DIExpression()) #32, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %2, metadata !2576, metadata !DIExpression()) #32, !dbg !2577
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2579
  call void @llvm.dbg.value(metadata i8* %4, metadata !2580, metadata !DIExpression()) #32, !dbg !2585
  %5 = icmp eq i8* %4, null, !dbg !2587
  br i1 %5, label %6, label %7, !dbg !2589

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2590
  unreachable, !dbg !2590

7:                                                ; preds = %3
  ret i8* %4, !dbg !2591
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2573 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2572, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %1, metadata !2575, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %2, metadata !2576, metadata !DIExpression()), !dbg !2592
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2593
  call void @llvm.dbg.value(metadata i8* %4, metadata !2580, metadata !DIExpression()) #32, !dbg !2594
  %5 = icmp eq i8* %4, null, !dbg !2596
  br i1 %5, label %6, label %7, !dbg !2597

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2598
  unreachable, !dbg !2598

7:                                                ; preds = %3
  ret i8* %4, !dbg !2599
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2600 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2604, metadata !DIExpression()), !dbg !2605
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %2, metadata !2580, metadata !DIExpression()) #32, !dbg !2607
  %3 = icmp eq i8* %2, null, !dbg !2609
  br i1 %3, label %4, label %5, !dbg !2610

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2611
  unreachable, !dbg !2611

5:                                                ; preds = %1
  ret i8* %2, !dbg !2612
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2613 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2617, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %0, metadata !2619, metadata !DIExpression()) #32, !dbg !2623
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2625
  call void @llvm.dbg.value(metadata i8* %2, metadata !2580, metadata !DIExpression()) #32, !dbg !2626
  %3 = icmp eq i8* %2, null, !dbg !2628
  br i1 %3, label %4, label %5, !dbg !2629

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2630
  unreachable, !dbg !2630

5:                                                ; preds = %1
  ret i8* %2, !dbg !2631
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2632 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %0, metadata !2604, metadata !DIExpression()) #32, !dbg !2638
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %2, metadata !2580, metadata !DIExpression()) #32, !dbg !2641
  %3 = icmp eq i8* %2, null, !dbg !2643
  br i1 %3, label %4, label %5, !dbg !2644

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2645
  unreachable, !dbg !2645

5:                                                ; preds = %1
  ret i8* %2, !dbg !2646
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2647 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %1, metadata !2652, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()) #32, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %1, metadata !2658, metadata !DIExpression()) #32, !dbg !2659
  %3 = icmp eq i64 %1, 0, !dbg !2661
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2661
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %5, metadata !2580, metadata !DIExpression()) #32, !dbg !2663
  %6 = icmp eq i8* %5, null, !dbg !2665
  br i1 %6, label %7, label %8, !dbg !2666

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2667
  unreachable, !dbg !2667

8:                                                ; preds = %2
  ret i8* %5, !dbg !2668
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2669 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %0, metadata !2676, metadata !DIExpression()) #32, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %1, metadata !2679, metadata !DIExpression()) #32, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()) #32, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %1, metadata !2658, metadata !DIExpression()) #32, !dbg !2682
  %3 = icmp eq i64 %1, 0, !dbg !2684
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2684
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %5, metadata !2580, metadata !DIExpression()) #32, !dbg !2686
  %6 = icmp eq i8* %5, null, !dbg !2688
  br i1 %6, label %7, label %8, !dbg !2689

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2690
  unreachable, !dbg !2690

8:                                                ; preds = %2
  ret i8* %5, !dbg !2691
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2692 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2696, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %1, metadata !2697, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %2, metadata !2698, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #32, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %1, metadata !2703, metadata !DIExpression()) #32, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %2, metadata !2704, metadata !DIExpression()) #32, !dbg !2705
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %4, metadata !2580, metadata !DIExpression()) #32, !dbg !2708
  %5 = icmp eq i8* %4, null, !dbg !2710
  br i1 %5, label %6, label %7, !dbg !2711

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2712
  unreachable, !dbg !2712

7:                                                ; preds = %3
  ret i8* %4, !dbg !2713
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2714 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2718, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %1, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8* null, metadata !2572, metadata !DIExpression()) #32, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %0, metadata !2575, metadata !DIExpression()) #32, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %1, metadata !2576, metadata !DIExpression()) #32, !dbg !2721
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %3, metadata !2580, metadata !DIExpression()) #32, !dbg !2724
  %4 = icmp eq i8* %3, null, !dbg !2726
  br i1 %4, label %5, label %6, !dbg !2727

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2728
  unreachable, !dbg !2728

6:                                                ; preds = %2
  ret i8* %3, !dbg !2729
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2730 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8* null, metadata !2696, metadata !DIExpression()) #32, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %0, metadata !2697, metadata !DIExpression()) #32, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %1, metadata !2698, metadata !DIExpression()) #32, !dbg !2737
  call void @llvm.dbg.value(metadata i8* null, metadata !2700, metadata !DIExpression()) #32, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %0, metadata !2703, metadata !DIExpression()) #32, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %1, metadata !2704, metadata !DIExpression()) #32, !dbg !2739
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %3, metadata !2580, metadata !DIExpression()) #32, !dbg !2742
  %4 = icmp eq i8* %3, null, !dbg !2744
  br i1 %4, label %5, label %6, !dbg !2745

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2746
  unreachable, !dbg !2746

6:                                                ; preds = %2
  ret i8* %3, !dbg !2747
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2748 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2752, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64* %1, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %0, metadata !366, metadata !DIExpression()) #32, !dbg !2755
  call void @llvm.dbg.value(metadata i64* %1, metadata !367, metadata !DIExpression()) #32, !dbg !2755
  call void @llvm.dbg.value(metadata i64 1, metadata !368, metadata !DIExpression()) #32, !dbg !2755
  %3 = load i64, i64* %1, align 8, !dbg !2757, !tbaa !1853
  call void @llvm.dbg.value(metadata i64 %3, metadata !369, metadata !DIExpression()) #32, !dbg !2755
  %4 = icmp eq i8* %0, null, !dbg !2758
  br i1 %4, label %5, label %8, !dbg !2760

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2761
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2764
  br label %15, !dbg !2764

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2765
  %10 = add nuw i64 %9, 1, !dbg !2765
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2765
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2765
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %13, metadata !369, metadata !DIExpression()) #32, !dbg !2755
  br i1 %12, label %14, label %15, !dbg !2768

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !2769
  unreachable, !dbg !2769

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2755
  call void @llvm.dbg.value(metadata i64 %16, metadata !369, metadata !DIExpression()) #32, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %0, metadata !2572, metadata !DIExpression()) #32, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %16, metadata !2575, metadata !DIExpression()) #32, !dbg !2770
  call void @llvm.dbg.value(metadata i64 1, metadata !2576, metadata !DIExpression()) #32, !dbg !2770
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2772
  call void @llvm.dbg.value(metadata i8* %17, metadata !2580, metadata !DIExpression()) #32, !dbg !2773
  %18 = icmp eq i8* %17, null, !dbg !2775
  br i1 %18, label %19, label %20, !dbg !2776

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !2777
  unreachable, !dbg !2777

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !366, metadata !DIExpression()) #32, !dbg !2755
  store i64 %16, i64* %1, align 8, !dbg !2778, !tbaa !1853
  ret i8* %17, !dbg !2779
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !366, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64* %1, metadata !367, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %2, metadata !368, metadata !DIExpression()), !dbg !2780
  %4 = load i64, i64* %1, align 8, !dbg !2781, !tbaa !1853
  call void @llvm.dbg.value(metadata i64 %4, metadata !369, metadata !DIExpression()), !dbg !2780
  %5 = icmp eq i8* %0, null, !dbg !2782
  br i1 %5, label %6, label %13, !dbg !2783

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2784
  br i1 %7, label %8, label %20, !dbg !2785

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %9, metadata !369, metadata !DIExpression()), !dbg !2780
  %10 = icmp ugt i64 %2, 128, !dbg !2788
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %12, metadata !369, metadata !DIExpression()), !dbg !2780
  br label %20, !dbg !2790

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2791
  %15 = add nuw i64 %14, 1, !dbg !2791
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2791
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2791
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %18, metadata !369, metadata !DIExpression()), !dbg !2780
  br i1 %17, label %19, label %20, !dbg !2792

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !2793
  unreachable, !dbg !2793

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2780
  call void @llvm.dbg.value(metadata i64 %21, metadata !369, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %0, metadata !2572, metadata !DIExpression()) #32, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %21, metadata !2575, metadata !DIExpression()) #32, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %2, metadata !2576, metadata !DIExpression()) #32, !dbg !2794
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %22, metadata !2580, metadata !DIExpression()) #32, !dbg !2797
  %23 = icmp eq i8* %22, null, !dbg !2799
  br i1 %23, label %24, label %25, !dbg !2800

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !2801
  unreachable, !dbg !2801

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !366, metadata !DIExpression()), !dbg !2780
  store i64 %21, i64* %1, align 8, !dbg !2802, !tbaa !1853
  ret i8* %22, !dbg !2803
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !373 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !381, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64* %1, metadata !382, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %2, metadata !383, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %3, metadata !384, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %4, metadata !385, metadata !DIExpression()), !dbg !2804
  %6 = load i64, i64* %1, align 8, !dbg !2805, !tbaa !1853
  call void @llvm.dbg.value(metadata i64 %6, metadata !386, metadata !DIExpression()), !dbg !2804
  %7 = ashr i64 %6, 1, !dbg !2806
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2806
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2806
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %10, metadata !387, metadata !DIExpression()), !dbg !2804
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %11, metadata !387, metadata !DIExpression()), !dbg !2804
  %12 = icmp sgt i64 %3, -1, !dbg !2809
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2811
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %15, metadata !387, metadata !DIExpression()), !dbg !2804
  %16 = icmp slt i64 %4, 0, !dbg !2812
  br i1 %16, label %17, label %30, !dbg !2812

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2812
  br i1 %18, label %19, label %24, !dbg !2812

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2812
  %21 = udiv i64 9223372036854775807, %20, !dbg !2812
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2812
  br i1 %23, label %46, label %43, !dbg !2812

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2812
  br i1 %25, label %43, label %26, !dbg !2812

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2812
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2812
  %29 = icmp ult i64 %28, %15, !dbg !2812
  br i1 %29, label %46, label %43, !dbg !2812

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2812
  br i1 %31, label %43, label %32, !dbg !2812

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2812
  br i1 %33, label %34, label %40, !dbg !2812

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2812
  br i1 %35, label %43, label %36, !dbg !2812

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2812
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2812
  %39 = icmp ult i64 %38, %4, !dbg !2812
  br i1 %39, label %46, label %43, !dbg !2812

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2812
  %42 = icmp ult i64 %41, %15, !dbg !2812
  br i1 %42, label %46, label %43, !dbg !2812

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !388, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2804
  %44 = mul i64 %15, %4, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %44, metadata !388, metadata !DIExpression()), !dbg !2804
  %45 = icmp slt i64 %44, 128, !dbg !2812
  br i1 %45, label %46, label %52, !dbg !2812

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !389, metadata !DIExpression()), !dbg !2804
  %48 = sdiv i64 %47, %4, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %48, metadata !387, metadata !DIExpression()), !dbg !2804
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %51, metadata !388, metadata !DIExpression()), !dbg !2804
  br label %52, !dbg !2817

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2804
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2804
  call void @llvm.dbg.value(metadata i64 %54, metadata !388, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %53, metadata !387, metadata !DIExpression()), !dbg !2804
  %55 = icmp eq i8* %0, null, !dbg !2818
  br i1 %55, label %56, label %57, !dbg !2820

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2821, !tbaa !1853
  br label %57, !dbg !2822

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2823
  %59 = icmp slt i64 %58, %2, !dbg !2825
  br i1 %59, label %60, label %97, !dbg !2826

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2827
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2827
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %63, metadata !387, metadata !DIExpression()), !dbg !2804
  br i1 %62, label %96, label %64, !dbg !2828

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2829
  br i1 %66, label %96, label %67, !dbg !2829

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2830

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2830
  br i1 %69, label %70, label %75, !dbg !2830

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2830
  %72 = udiv i64 9223372036854775807, %71, !dbg !2830
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2830
  br i1 %74, label %96, label %94, !dbg !2830

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2830
  br i1 %76, label %94, label %77, !dbg !2830

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2830
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2830
  %80 = icmp ult i64 %79, %63, !dbg !2830
  br i1 %80, label %96, label %94, !dbg !2830

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2830
  br i1 %82, label %94, label %83, !dbg !2830

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2830
  br i1 %84, label %85, label %91, !dbg !2830

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2830
  br i1 %86, label %94, label %87, !dbg !2830

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2830
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2830
  %90 = icmp ult i64 %89, %4, !dbg !2830
  br i1 %90, label %96, label %94, !dbg !2830

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2830
  %93 = icmp ult i64 %92, %63, !dbg !2830
  br i1 %93, label %96, label %94, !dbg !2830

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !388, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2804
  %95 = mul i64 %63, %4, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %95, metadata !388, metadata !DIExpression()), !dbg !2804
  br label %97, !dbg !2831

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !2832
  unreachable, !dbg !2832

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2804
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2804
  call void @llvm.dbg.value(metadata i64 %99, metadata !388, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %98, metadata !387, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()) #32, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %99, metadata !2652, metadata !DIExpression()) #32, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()) #32, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %99, metadata !2658, metadata !DIExpression()) #32, !dbg !2835
  %100 = icmp eq i64 %99, 0, !dbg !2837
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2837
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !2838
  call void @llvm.dbg.value(metadata i8* %102, metadata !2580, metadata !DIExpression()) #32, !dbg !2839
  %103 = icmp eq i8* %102, null, !dbg !2841
  br i1 %103, label %104, label %105, !dbg !2842

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !2843
  unreachable, !dbg !2843

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !381, metadata !DIExpression()), !dbg !2804
  store i64 %98, i64* %1, align 8, !dbg !2844, !tbaa !1853
  ret i8* %102, !dbg !2845
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2846 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %0, metadata !2850, metadata !DIExpression()) #32, !dbg !2854
  call void @llvm.dbg.value(metadata i64 1, metadata !2853, metadata !DIExpression()) #32, !dbg !2854
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2856
  call void @llvm.dbg.value(metadata i8* %2, metadata !2580, metadata !DIExpression()) #32, !dbg !2857
  %3 = icmp eq i8* %2, null, !dbg !2859
  br i1 %3, label %4, label %5, !dbg !2860

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2861
  unreachable, !dbg !2861

5:                                                ; preds = %1
  ret i8* %2, !dbg !2862
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2851 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2850, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %1, metadata !2853, metadata !DIExpression()), !dbg !2863
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %3, metadata !2580, metadata !DIExpression()) #32, !dbg !2865
  %4 = icmp eq i8* %3, null, !dbg !2867
  br i1 %4, label %5, label %6, !dbg !2868

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2869
  unreachable, !dbg !2869

6:                                                ; preds = %2
  ret i8* %3, !dbg !2870
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2871 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2873, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i64 %0, metadata !2875, metadata !DIExpression()) #32, !dbg !2879
  call void @llvm.dbg.value(metadata i64 1, metadata !2878, metadata !DIExpression()) #32, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %0, metadata !2881, metadata !DIExpression()) #32, !dbg !2885
  call void @llvm.dbg.value(metadata i64 1, metadata !2884, metadata !DIExpression()) #32, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %0, metadata !2881, metadata !DIExpression()) #32, !dbg !2885
  call void @llvm.dbg.value(metadata i64 1, metadata !2884, metadata !DIExpression()) #32, !dbg !2885
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %2, metadata !2580, metadata !DIExpression()) #32, !dbg !2888
  %3 = icmp eq i8* %2, null, !dbg !2890
  br i1 %3, label %4, label %5, !dbg !2891

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2892
  unreachable, !dbg !2892

5:                                                ; preds = %1
  ret i8* %2, !dbg !2893
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2876 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2875, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %1, metadata !2878, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %0, metadata !2881, metadata !DIExpression()) #32, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1, metadata !2884, metadata !DIExpression()) #32, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %0, metadata !2881, metadata !DIExpression()) #32, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1, metadata !2884, metadata !DIExpression()) #32, !dbg !2895
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2897
  call void @llvm.dbg.value(metadata i8* %3, metadata !2580, metadata !DIExpression()) #32, !dbg !2898
  %4 = icmp eq i8* %3, null, !dbg !2900
  br i1 %4, label %5, label %6, !dbg !2901

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2902
  unreachable, !dbg !2902

6:                                                ; preds = %2
  ret i8* %3, !dbg !2903
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2904 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2908, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %1, metadata !2604, metadata !DIExpression()) #32, !dbg !2911
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %3, metadata !2580, metadata !DIExpression()) #32, !dbg !2914
  %4 = icmp eq i8* %3, null, !dbg !2916
  br i1 %4, label %5, label %6, !dbg !2917

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2918
  unreachable, !dbg !2918

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2919, metadata !DIExpression()) #32, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %0, metadata !2925, metadata !DIExpression()) #32, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()) #32, !dbg !2927
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2929
  ret i8* %3, !dbg !2930
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2931 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2935, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2617, metadata !DIExpression()) #32, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %1, metadata !2619, metadata !DIExpression()) #32, !dbg !2940
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2942
  call void @llvm.dbg.value(metadata i8* %3, metadata !2580, metadata !DIExpression()) #32, !dbg !2943
  %4 = icmp eq i8* %3, null, !dbg !2945
  br i1 %4, label %5, label %6, !dbg !2946

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2947
  unreachable, !dbg !2947

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2919, metadata !DIExpression()) #32, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %0, metadata !2925, metadata !DIExpression()) #32, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()) #32, !dbg !2948
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2950
  ret i8* %3, !dbg !2951
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2952 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2956, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()), !dbg !2959
  %3 = add nsw i64 %1, 1, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %3, metadata !2617, metadata !DIExpression()) #32, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %3, metadata !2619, metadata !DIExpression()) #32, !dbg !2963
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %4, metadata !2580, metadata !DIExpression()) #32, !dbg !2966
  %5 = icmp eq i8* %4, null, !dbg !2968
  br i1 %5, label %6, label %7, !dbg !2969

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2970
  unreachable, !dbg !2970

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !2958, metadata !DIExpression()), !dbg !2959
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2971
  store i8 0, i8* %8, align 1, !dbg !2972, !tbaa !524
  call void @llvm.dbg.value(metadata i8* %4, metadata !2919, metadata !DIExpression()) #32, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %0, metadata !2925, metadata !DIExpression()) #32, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()) #32, !dbg !2973
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2975
  ret i8* %4, !dbg !2976
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2977 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()), !dbg !2980
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !2981
  %3 = add i64 %2, 1, !dbg !2982
  call void @llvm.dbg.value(metadata i8* %0, metadata !2908, metadata !DIExpression()) #32, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %3, metadata !2909, metadata !DIExpression()) #32, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %3, metadata !2604, metadata !DIExpression()) #32, !dbg !2985
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %4, metadata !2580, metadata !DIExpression()) #32, !dbg !2988
  %5 = icmp eq i8* %4, null, !dbg !2990
  br i1 %5, label %6, label %7, !dbg !2991

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2992
  unreachable, !dbg !2992

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2919, metadata !DIExpression()) #32, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %0, metadata !2925, metadata !DIExpression()) #32, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %3, metadata !2926, metadata !DIExpression()) #32, !dbg !2993
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !2995
  ret i8* %4, !dbg !2996
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2997 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3002, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %1, metadata !2999, metadata !DIExpression()), !dbg !3003
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.110, i64 0, i64 0), i32 noundef 5) #32, !dbg !3002
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* noundef %2) #32, !dbg !3002
  %3 = icmp eq i32 %1, 0, !dbg !3002
  tail call void @llvm.assume(i1 %3), !dbg !3002
  tail call void @abort() #34, !dbg !3004
  unreachable, !dbg !3004
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3005 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3043, metadata !DIExpression()), !dbg !3048
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3049
  call void @llvm.dbg.value(metadata i1 undef, metadata !3044, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3050, metadata !DIExpression()), !dbg !3053
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3055
  %4 = load i32, i32* %3, align 8, !dbg !3055, !tbaa !3056
  %5 = and i32 %4, 32, !dbg !3057
  %6 = icmp eq i32 %5, 0, !dbg !3057
  call void @llvm.dbg.value(metadata i1 %6, metadata !3046, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3058
  %8 = icmp eq i32 %7, 0, !dbg !3059
  call void @llvm.dbg.value(metadata i1 %8, metadata !3047, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  br i1 %6, label %9, label %19, !dbg !3060

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3062
  call void @llvm.dbg.value(metadata i1 %10, metadata !3044, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3063
  %12 = xor i1 %8, true, !dbg !3063
  %13 = sext i1 %12 to i32, !dbg !3063
  br i1 %11, label %22, label %14, !dbg !3063

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3064
  %16 = load i32, i32* %15, align 4, !dbg !3064, !tbaa !515
  %17 = icmp ne i32 %16, 9, !dbg !3065
  %18 = sext i1 %17 to i32, !dbg !3066
  br label %22, !dbg !3066

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3067

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3069
  store i32 0, i32* %21, align 4, !dbg !3071, !tbaa !515
  br label %22, !dbg !3069

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3048
  ret i32 %23, !dbg !3072
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3073 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3111, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 0, metadata !3112, metadata !DIExpression()), !dbg !3115
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3116
  call void @llvm.dbg.value(metadata i32 %2, metadata !3113, metadata !DIExpression()), !dbg !3115
  %3 = icmp slt i32 %2, 0, !dbg !3117
  br i1 %3, label %4, label %6, !dbg !3119

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3120
  br label %24, !dbg !3121

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3122
  %8 = icmp eq i32 %7, 0, !dbg !3122
  br i1 %8, label %13, label %9, !dbg !3124

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3125
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3126
  %12 = icmp eq i64 %11, -1, !dbg !3127
  br i1 %12, label %16, label %13, !dbg !3128

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3129
  %15 = icmp eq i32 %14, 0, !dbg !3129
  br i1 %15, label %16, label %18, !dbg !3130

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3112, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 0, metadata !3114, metadata !DIExpression()), !dbg !3115
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %21, metadata !3114, metadata !DIExpression()), !dbg !3115
  br label %24, !dbg !3132

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3133
  %20 = load i32, i32* %19, align 4, !dbg !3133, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %20, metadata !3112, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 0, metadata !3114, metadata !DIExpression()), !dbg !3115
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %21, metadata !3114, metadata !DIExpression()), !dbg !3115
  %22 = icmp eq i32 %20, 0, !dbg !3134
  br i1 %22, label %24, label %23, !dbg !3132

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3136, !tbaa !515
  call void @llvm.dbg.value(metadata i32 -1, metadata !3114, metadata !DIExpression()), !dbg !3115
  br label %24, !dbg !3138

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3115
  ret i32 %25, !dbg !3139
}

; Function Attrs: nofree nounwind
declare !dbg !3140 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !3141 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3142 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3146 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3184, metadata !DIExpression()), !dbg !3185
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3186
  br i1 %2, label %6, label %3, !dbg !3188

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3189
  %5 = icmp eq i32 %4, 0, !dbg !3189
  br i1 %5, label %6, label %8, !dbg !3190

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3191
  br label %17, !dbg !3192

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3193, metadata !DIExpression()) #32, !dbg !3198
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3200
  %10 = load i32, i32* %9, align 8, !dbg !3200, !tbaa !3056
  %11 = and i32 %10, 256, !dbg !3202
  %12 = icmp eq i32 %11, 0, !dbg !3202
  br i1 %12, label %15, label %13, !dbg !3203

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3204
  br label %15, !dbg !3204

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3205
  br label %17, !dbg !3206

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3185
  ret i32 %18, !dbg !3207
}

; Function Attrs: nofree nounwind
declare !dbg !3208 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3209 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3248, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %1, metadata !3249, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %2, metadata !3250, metadata !DIExpression()), !dbg !3254
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3255
  %5 = load i8*, i8** %4, align 8, !dbg !3255, !tbaa !3256
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3257
  %7 = load i8*, i8** %6, align 8, !dbg !3257, !tbaa !3258
  %8 = icmp eq i8* %5, %7, !dbg !3259
  br i1 %8, label %9, label %28, !dbg !3260

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3261
  %11 = load i8*, i8** %10, align 8, !dbg !3261, !tbaa !948
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3262
  %13 = load i8*, i8** %12, align 8, !dbg !3262, !tbaa !3263
  %14 = icmp eq i8* %11, %13, !dbg !3264
  br i1 %14, label %15, label %28, !dbg !3265

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3266
  %17 = load i8*, i8** %16, align 8, !dbg !3266, !tbaa !3267
  %18 = icmp eq i8* %17, null, !dbg !3268
  br i1 %18, label %19, label %28, !dbg !3269

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3270
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %21, metadata !3251, metadata !DIExpression()), !dbg !3272
  %22 = icmp eq i64 %21, -1, !dbg !3273
  br i1 %22, label %30, label %23, !dbg !3275

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3276
  %25 = load i32, i32* %24, align 8, !dbg !3277, !tbaa !3056
  %26 = and i32 %25, -17, !dbg !3277
  store i32 %26, i32* %24, align 8, !dbg !3277, !tbaa !3056
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3278
  store i64 %21, i64* %27, align 8, !dbg !3279, !tbaa !3280
  br label %30, !dbg !3281

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3282
  br label %30, !dbg !3283

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3254
  ret i32 %31, !dbg !3284
}

; Function Attrs: nofree nounwind
declare !dbg !3285 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3288 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3293, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* %1, metadata !3294, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %2, metadata !3295, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3296, metadata !DIExpression()), !dbg !3298
  %5 = icmp eq i8* %1, null, !dbg !3299
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3301
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), i8* %1, !dbg !3301
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3301
  call void @llvm.dbg.value(metadata i64 %8, metadata !3295, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* %7, metadata !3294, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32* %6, metadata !3293, metadata !DIExpression()), !dbg !3298
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3302
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3304
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3296, metadata !DIExpression()), !dbg !3298
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %11, metadata !3297, metadata !DIExpression()), !dbg !3298
  %12 = icmp ult i64 %11, -3, !dbg !3306
  br i1 %12, label %13, label %18, !dbg !3308

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3309
  %15 = icmp eq i32 %14, 0, !dbg !3309
  br i1 %15, label %16, label %30, !dbg !3310

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3311, metadata !DIExpression()) #32, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3318, metadata !DIExpression()) #32, !dbg !3323
  call void @llvm.dbg.value(metadata i32 0, metadata !3321, metadata !DIExpression()) #32, !dbg !3323
  call void @llvm.dbg.value(metadata i64 8, metadata !3322, metadata !DIExpression()) #32, !dbg !3323
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3325
  store i64 0, i64* %17, align 1, !dbg !3325
  br label %30, !dbg !3326

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3327
  br i1 %19, label %20, label %21, !dbg !3329

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3330
  unreachable, !dbg !3330

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3331

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3333
  br i1 %24, label %30, label %25, !dbg !3334

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3335
  br i1 %26, label %30, label %27, !dbg !3338

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3339, !tbaa !524
  %29 = zext i8 %28 to i32, !dbg !3340
  store i32 %29, i32* %6, align 4, !dbg !3341, !tbaa !515
  br label %30, !dbg !3342

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3298
  ret i64 %31, !dbg !3343
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3344 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %2, metadata !3354, metadata !DIExpression()), !dbg !3356
  %4 = icmp eq i64 %2, 0, !dbg !3357
  br i1 %4, label %8, label %5, !dbg !3357

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3357
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3357
  br i1 %7, label %13, label %8, !dbg !3357

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3355, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3356
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3355, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3356
  %9 = mul i64 %2, %1, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %9, metadata !3355, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8* %0, metadata !3359, metadata !DIExpression()) #32, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %9, metadata !3362, metadata !DIExpression()) #32, !dbg !3363
  %10 = icmp eq i64 %9, 0, !dbg !3365
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3365
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3366
  br label %15, !dbg !3367

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3355, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3356
  %14 = tail call i32* @__errno_location() #35, !dbg !3368
  store i32 12, i32* %14, align 4, !dbg !3370, !tbaa !515
  br label %15, !dbg !3371

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3356
  ret i8* %16, !dbg !3372
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3373 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3377, metadata !DIExpression()), !dbg !3382
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3383
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3383
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3378, metadata !DIExpression()), !dbg !3384
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3385
  %5 = icmp eq i32 %4, 0, !dbg !3385
  br i1 %5, label %6, label %13, !dbg !3387

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3388, metadata !DIExpression()) #32, !dbg !3392
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), metadata !3391, metadata !DIExpression()) #32, !dbg !3392
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), i64 2), !dbg !3395
  %8 = icmp eq i32 %7, 0, !dbg !3396
  br i1 %8, label %12, label %9, !dbg !3397

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3388, metadata !DIExpression()) #32, !dbg !3398
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), metadata !3391, metadata !DIExpression()) #32, !dbg !3398
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 6), !dbg !3400
  %11 = icmp eq i32 %10, 0, !dbg !3401
  br i1 %11, label %12, label %13, !dbg !3402

12:                                               ; preds = %9, %6
  br label %13, !dbg !3403

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3382
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3404
  ret i1 %14, !dbg !3404
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3409, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* %1, metadata !3410, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %2, metadata !3411, metadata !DIExpression()), !dbg !3412
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3413
  ret i32 %4, !dbg !3414
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3415 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3419, metadata !DIExpression()), !dbg !3420
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3421
  ret i8* %2, !dbg !3422
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3425, metadata !DIExpression()), !dbg !3427
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %2, metadata !3426, metadata !DIExpression()), !dbg !3427
  ret i8* %2, !dbg !3429
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3430 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3432, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8* %1, metadata !3433, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %2, metadata !3434, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 %0, metadata !3425, metadata !DIExpression()) #32, !dbg !3440
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %4, metadata !3426, metadata !DIExpression()) #32, !dbg !3440
  call void @llvm.dbg.value(metadata i8* %4, metadata !3435, metadata !DIExpression()), !dbg !3439
  %5 = icmp eq i8* %4, null, !dbg !3443
  br i1 %5, label %6, label %9, !dbg !3444

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3445
  br i1 %7, label %19, label %8, !dbg !3448

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3449, !tbaa !524
  br label %19, !dbg !3450

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %10, metadata !3436, metadata !DIExpression()), !dbg !3452
  %11 = icmp ult i64 %10, %2, !dbg !3453
  br i1 %11, label %12, label %14, !dbg !3455

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3456
  call void @llvm.dbg.value(metadata i8* %1, metadata !3458, metadata !DIExpression()) #32, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %4, metadata !3461, metadata !DIExpression()) #32, !dbg !3463
  call void @llvm.dbg.value(metadata i64 %13, metadata !3462, metadata !DIExpression()) #32, !dbg !3463
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3465
  br label %19, !dbg !3466

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3467
  br i1 %15, label %19, label %16, !dbg !3470

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %1, metadata !3458, metadata !DIExpression()) #32, !dbg !3473
  call void @llvm.dbg.value(metadata i8* %4, metadata !3461, metadata !DIExpression()) #32, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %17, metadata !3462, metadata !DIExpression()) #32, !dbg !3473
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3475
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3476
  store i8 0, i8* %18, align 1, !dbg !3477, !tbaa !524
  br label %19, !dbg !3478

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3479
  ret i32 %20, !dbg !3480
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #8 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.dbg.cu = !{!2, !138, !143, !150, !328, !348, !191, !201, !231, !350, !320, !357, !391, !393, !395, !397, !399, !334, !401, !404, !406, !408}
!llvm.ident = !{!410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410, !410}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 47, type: !124, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !36, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/printenv.c", directory: "/src", checksumkind: CSK_MD5, checksum: "639748d46de6a4e4b99d61a9973b15a5")
!4 = !{!5, !9}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 38, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIEnumerator(name: "PRINTENV_FAILURE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 46, baseType: !6, size: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!12 = !DIEnumerator(name: "_ISupper", value: 256)
!13 = !DIEnumerator(name: "_ISlower", value: 512)
!14 = !DIEnumerator(name: "_ISalpha", value: 1024)
!15 = !DIEnumerator(name: "_ISdigit", value: 2048)
!16 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!17 = !DIEnumerator(name: "_ISspace", value: 8192)
!18 = !DIEnumerator(name: "_ISprint", value: 16384)
!19 = !DIEnumerator(name: "_ISgraph", value: 32768)
!20 = !DIEnumerator(name: "_ISblank", value: 1)
!21 = !DIEnumerator(name: "_IScntrl", value: 2)
!22 = !DIEnumerator(name: "_ISpunct", value: 4)
!23 = !DIEnumerator(name: "_ISalnum", value: 8)
!24 = !{!25, !27, !28, !29, !30, !33, !35}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37, !0}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !39, file: !40, line: 575, type: !28, isLocal: true, isDefinition: true)
!39 = distinct !DISubprogram(name: "oputs_", scope: !40, file: !40, line: 573, type: !41, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!40 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!41 = !DISubroutineType(types: !42)
!42 = !{null, !33, !33}
!43 = !{!44, !45, !46, !49, !51, !52, !53, !57, !58, !59, !60, !62, !118, !119, !120, !122, !123}
!44 = !DILocalVariable(name: "program", arg: 1, scope: !39, file: !40, line: 573, type: !33)
!45 = !DILocalVariable(name: "option", arg: 2, scope: !39, file: !40, line: 573, type: !33)
!46 = !DILocalVariable(name: "term", scope: !47, file: !40, line: 585, type: !33)
!47 = distinct !DILexicalBlock(scope: !48, file: !40, line: 582, column: 5)
!48 = distinct !DILexicalBlock(scope: !39, file: !40, line: 581, column: 7)
!49 = !DILocalVariable(name: "double_space", scope: !39, file: !40, line: 594, type: !50)
!50 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!51 = !DILocalVariable(name: "first_word", scope: !39, file: !40, line: 595, type: !33)
!52 = !DILocalVariable(name: "option_text", scope: !39, file: !40, line: 596, type: !33)
!53 = !DILocalVariable(name: "s", scope: !54, file: !40, line: 608, type: !33)
!54 = distinct !DILexicalBlock(scope: !55, file: !40, line: 605, column: 5)
!55 = distinct !DILexicalBlock(scope: !56, file: !40, line: 604, column: 12)
!56 = distinct !DILexicalBlock(scope: !39, file: !40, line: 597, column: 7)
!57 = !DILocalVariable(name: "spaces", scope: !54, file: !40, line: 609, type: !30)
!58 = !DILocalVariable(name: "anchor_len", scope: !39, file: !40, line: 620, type: !30)
!59 = !DILocalVariable(name: "desc_text", scope: !39, file: !40, line: 625, type: !33)
!60 = !DILocalVariable(name: "__ptr", scope: !61, file: !40, line: 644, type: !33)
!61 = distinct !DILexicalBlock(scope: !39, file: !40, line: 644, column: 3)
!62 = !DILocalVariable(name: "__stream", scope: !61, file: !40, line: 644, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 7, baseType: !66)
!65 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 49, size: 1728, elements: !68)
!67 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !84, !86, !87, !88, !92, !93, !95, !99, !102, !104, !107, !110, !111, !112, !113, !114}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !66, file: !67, line: 51, baseType: !28, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !66, file: !67, line: 54, baseType: !25, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !66, file: !67, line: 55, baseType: !25, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !66, file: !67, line: 56, baseType: !25, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !66, file: !67, line: 57, baseType: !25, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !66, file: !67, line: 58, baseType: !25, size: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !66, file: !67, line: 59, baseType: !25, size: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !66, file: !67, line: 60, baseType: !25, size: 64, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !66, file: !67, line: 61, baseType: !25, size: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !66, file: !67, line: 64, baseType: !25, size: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !66, file: !67, line: 65, baseType: !25, size: 64, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !66, file: !67, line: 66, baseType: !25, size: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !66, file: !67, line: 68, baseType: !82, size: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !67, line: 36, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !66, file: !67, line: 70, baseType: !85, size: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !66, file: !67, line: 72, baseType: !28, size: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !66, file: !67, line: 73, baseType: !28, size: 32, offset: 928)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !66, file: !67, line: 74, baseType: !89, size: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !90, line: 152, baseType: !91)
!90 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!91 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !66, file: !67, line: 77, baseType: !29, size: 16, offset: 1024)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !66, file: !67, line: 78, baseType: !94, size: 8, offset: 1040)
!94 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !66, file: !67, line: 79, baseType: !96, size: 8, offset: 1048)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !66, file: !67, line: 81, baseType: !100, size: 64, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !67, line: 43, baseType: null)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !66, file: !67, line: 89, baseType: !103, size: 64, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !90, line: 153, baseType: !91)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !66, file: !67, line: 91, baseType: !105, size: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !67, line: 37, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !66, file: !67, line: 92, baseType: !108, size: 64, offset: 1280)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !67, line: 38, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !66, file: !67, line: 93, baseType: !85, size: 64, offset: 1344)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !66, file: !67, line: 94, baseType: !27, size: 64, offset: 1408)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !66, file: !67, line: 95, baseType: !30, size: 64, offset: 1472)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !66, file: !67, line: 96, baseType: !28, size: 32, offset: 1536)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !66, file: !67, line: 98, baseType: !115, size: 160, offset: 1568)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 20)
!118 = !DILocalVariable(name: "__cnt", scope: !61, file: !40, line: 644, type: !30)
!119 = !DILocalVariable(name: "url_program", scope: !39, file: !40, line: 648, type: !33)
!120 = !DILocalVariable(name: "__ptr", scope: !121, file: !40, line: 686, type: !33)
!121 = distinct !DILexicalBlock(scope: !39, file: !40, line: 686, column: 3)
!122 = !DILocalVariable(name: "__stream", scope: !121, file: !40, line: 686, type: !63)
!123 = !DILocalVariable(name: "__cnt", scope: !121, file: !40, line: 686, type: !30)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1024, elements: !134)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !127, line: 50, size: 256, elements: !128)
!127 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!128 = !{!129, !130, !131, !133}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !127, line: 52, baseType: !33, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !126, file: !127, line: 55, baseType: !28, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !126, file: !127, line: 56, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !126, file: !127, line: 57, baseType: !28, size: 32, offset: 192)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "Version", scope: !138, file: !139, line: 3, type: !33, isLocal: false, isDefinition: true)
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !140, splitDebugInlining: false, nameTableKind: None)
!139 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!140 = !{!136}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "file_name", scope: !143, file: !144, line: 45, type: !33, isLocal: true, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !145, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!145 = !{!141, !146}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !143, file: !144, line: 55, type: !50, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !150, file: !151, line: 66, type: !186, isLocal: false, isDefinition: true)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !152, globals: !153, splitDebugInlining: false, nameTableKind: None)
!151 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!152 = !{!27, !35}
!153 = !{!154, !180, !148, !182, !184}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "old_file_name", scope: !156, file: !151, line: 304, type: !33, isLocal: true, isDefinition: true)
!156 = distinct !DISubprogram(name: "verror_at_line", scope: !151, file: !151, line: 298, type: !157, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !173)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !28, !28, !33, !6, !33, !159}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !160, line: 52, baseType: !161)
!160 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !162, line: 32, baseType: !163)
!162 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !164, baseType: !165)
!164 = !DIFile(filename: "lib/error.c", directory: "/src")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !166, size: 256, elements: !167)
!166 = !DINamespace(name: "std", scope: null)
!167 = !{!168, !169, !170, !171, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !165, file: !164, baseType: !27, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !165, file: !164, baseType: !27, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !165, file: !164, baseType: !27, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !165, file: !164, baseType: !28, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !165, file: !164, baseType: !28, size: 32, offset: 224)
!173 = !{!174, !175, !176, !177, !178, !179}
!174 = !DILocalVariable(name: "status", arg: 1, scope: !156, file: !151, line: 298, type: !28)
!175 = !DILocalVariable(name: "errnum", arg: 2, scope: !156, file: !151, line: 298, type: !28)
!176 = !DILocalVariable(name: "file_name", arg: 3, scope: !156, file: !151, line: 298, type: !33)
!177 = !DILocalVariable(name: "line_number", arg: 4, scope: !156, file: !151, line: 298, type: !6)
!178 = !DILocalVariable(name: "message", arg: 5, scope: !156, file: !151, line: 298, type: !33)
!179 = !DILocalVariable(name: "args", arg: 6, scope: !156, file: !151, line: 298, type: !159)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "old_line_number", scope: !156, file: !151, line: 305, type: !6, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "error_message_count", scope: !150, file: !151, line: 69, type: !6, isLocal: false, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !150, file: !151, line: 295, type: !28, isLocal: false, isDefinition: true)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null}
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "program_name", scope: !191, file: !192, line: 31, type: !33, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !193, globals: !194, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!193 = !{!25}
!194 = !{!189}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "utf07FF", scope: !197, file: !198, line: 46, type: !226, isLocal: true, isDefinition: true)
!197 = distinct !DISubprogram(name: "proper_name_lite", scope: !198, file: !198, line: 38, type: !199, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !203)
!198 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!199 = !DISubroutineType(types: !200)
!200 = !{!33, !33, !33}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !202, splitDebugInlining: false, nameTableKind: None)
!202 = !{!195}
!203 = !{!204, !205, !206, !207, !212}
!204 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !197, file: !198, line: 38, type: !33)
!205 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !197, file: !198, line: 38, type: !33)
!206 = !DILocalVariable(name: "translation", scope: !197, file: !198, line: 40, type: !33)
!207 = !DILocalVariable(name: "w", scope: !197, file: !198, line: 47, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !209, line: 37, baseType: !210)
!209 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !90, line: 57, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !90, line: 42, baseType: !6)
!212 = !DILocalVariable(name: "mbs", scope: !197, file: !198, line: 48, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !215)
!214 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !217)
!216 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !217, file: !216, line: 15, baseType: !28, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !217, file: !216, line: 20, baseType: !221, size: 32, offset: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !216, line: 16, size: 32, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !221, file: !216, line: 18, baseType: !6, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !221, file: !216, line: 19, baseType: !225, size: 32)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !134)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !231, file: !232, line: 76, type: !314, isLocal: false, isDefinition: true)
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !233, retainedTypes: !253, globals: !254, splitDebugInlining: false, nameTableKind: None)
!232 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!233 = !{!234, !248, !9}
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !235, line: 42, baseType: !6, size: 32, elements: !236)
!235 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!237 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!238 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!239 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!240 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!241 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!242 = !DIEnumerator(name: "c_quoting_style", value: 5)
!243 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!244 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!245 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!246 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!247 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !235, line: 254, baseType: !6, size: 32, elements: !249)
!249 = !{!250, !251, !252}
!250 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!251 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!252 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!253 = !{!28, !29, !30}
!254 = !{!229, !255, !261, !273, !275, !280, !303, !310, !312}
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !231, file: !232, line: 92, type: !257, isLocal: false, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 320, elements: !259)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!259 = !{!260}
!260 = !DISubrange(count: 10)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !231, file: !232, line: 1040, type: !263, isLocal: false, isDefinition: true)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !232, line: 56, size: 448, elements: !264)
!264 = !{!265, !266, !267, !271, !272}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !263, file: !232, line: 59, baseType: !234, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !232, line: 62, baseType: !28, size: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !263, file: !232, line: 66, baseType: !268, size: 256, offset: 64)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !263, file: !232, line: 69, baseType: !33, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !263, file: !232, line: 72, baseType: !33, size: 64, offset: 384)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !231, file: !232, line: 107, type: !263, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "slot0", scope: !231, file: !232, line: 831, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 256)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "quote", scope: !282, file: !232, line: 228, type: !301, isLocal: true, isDefinition: true)
!282 = distinct !DISubprogram(name: "gettext_quote", scope: !232, file: !232, line: 197, type: !283, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!33, !33, !234}
!285 = !{!286, !287, !288, !289, !290}
!286 = !DILocalVariable(name: "msgid", arg: 1, scope: !282, file: !232, line: 197, type: !33)
!287 = !DILocalVariable(name: "s", arg: 2, scope: !282, file: !232, line: 197, type: !234)
!288 = !DILocalVariable(name: "translation", scope: !282, file: !232, line: 199, type: !33)
!289 = !DILocalVariable(name: "w", scope: !282, file: !232, line: 229, type: !208)
!290 = !DILocalVariable(name: "mbs", scope: !282, file: !232, line: 230, type: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !294)
!294 = !{!295, !296}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !293, file: !216, line: 15, baseType: !28, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !293, file: !216, line: 20, baseType: !297, size: 32, offset: 32)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !293, file: !216, line: 16, size: 32, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !297, file: !216, line: 18, baseType: !6, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !297, file: !216, line: 19, baseType: !225, size: 32)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !302)
!302 = !{!228, !135}
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "slotvec", scope: !231, file: !232, line: 834, type: !305, isLocal: true, isDefinition: true)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !232, line: 823, size: 128, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !306, file: !232, line: 825, baseType: !30, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !306, file: !232, line: 826, baseType: !25, size: 64, offset: 64)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "nslots", scope: !231, file: !232, line: 832, type: !28, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "slotvec0", scope: !231, file: !232, line: 833, type: !306, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 704, elements: !316)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!316 = !{!317}
!317 = !DISubrange(count: 11)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !320, file: !321, line: 26, type: !323, isLocal: false, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !322, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!322 = !{!318}
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 376, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 47)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "exit_failure", scope: !328, file: !329, line: 24, type: !331, isLocal: false, isDefinition: true)
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !330, splitDebugInlining: false, nameTableKind: None)
!329 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!330 = !{!326}
!331 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "internal_state", scope: !334, file: !335, line: 97, type: !338, isLocal: true, isDefinition: true)
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !336, globals: !337, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!336 = !{!27, !30, !35}
!337 = !{!332}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !340, file: !216, line: 15, baseType: !28, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !340, file: !216, line: 20, baseType: !344, size: 32, offset: 32)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !216, line: 16, size: 32, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !344, file: !216, line: 18, baseType: !6, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !344, file: !216, line: 19, baseType: !225, size: 32)
!348 = distinct !DICompileUnit(language: DW_LANG_C99, file: !349, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!349 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !352, retainedTypes: !356, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!352 = !{!353}
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !351, line: 40, baseType: !6, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!356 = !{!27}
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !359, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!359 = !{!360, !372}
!360 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !361, file: !358, line: 188, baseType: !6, size: 32, elements: !370)
!361 = distinct !DISubprogram(name: "x2nrealloc", scope: !358, file: !358, line: 176, type: !362, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !365)
!362 = !DISubroutineType(types: !363)
!363 = !{!27, !27, !364, !30}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!365 = !{!366, !367, !368, !369}
!366 = !DILocalVariable(name: "p", arg: 1, scope: !361, file: !358, line: 176, type: !27)
!367 = !DILocalVariable(name: "pn", arg: 2, scope: !361, file: !358, line: 176, type: !364)
!368 = !DILocalVariable(name: "s", arg: 3, scope: !361, file: !358, line: 176, type: !30)
!369 = !DILocalVariable(name: "n", scope: !361, file: !358, line: 178, type: !30)
!370 = !{!371}
!371 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !373, file: !358, line: 228, baseType: !6, size: 32, elements: !370)
!373 = distinct !DISubprogram(name: "xpalloc", scope: !358, file: !358, line: 223, type: !374, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !380)
!374 = !DISubroutineType(types: !375)
!375 = !{!27, !27, !376, !377, !379, !377}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !378, line: 130, baseType: !379)
!378 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !31, line: 35, baseType: !91)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388, !389}
!381 = !DILocalVariable(name: "pa", arg: 1, scope: !373, file: !358, line: 223, type: !27)
!382 = !DILocalVariable(name: "pn", arg: 2, scope: !373, file: !358, line: 223, type: !376)
!383 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !373, file: !358, line: 223, type: !377)
!384 = !DILocalVariable(name: "n_max", arg: 4, scope: !373, file: !358, line: 223, type: !379)
!385 = !DILocalVariable(name: "s", arg: 5, scope: !373, file: !358, line: 223, type: !377)
!386 = !DILocalVariable(name: "n0", scope: !373, file: !358, line: 230, type: !377)
!387 = !DILocalVariable(name: "n", scope: !373, file: !358, line: 237, type: !377)
!388 = !DILocalVariable(name: "nbytes", scope: !373, file: !358, line: 248, type: !377)
!389 = !DILocalVariable(name: "adjusted_nbytes", scope: !373, file: !358, line: 252, type: !377)
!390 = !{!25, !27, !50, !91, !32}
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !356, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !356, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !403, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!403 = !{!50, !32, !27}
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!408 = distinct !DICompileUnit(language: DW_LANG_C99, file: !409, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !356, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!410 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!411 = !{i32 7, !"Dwarf Version", i32 5}
!412 = !{i32 2, !"Debug Info Version", i32 3}
!413 = !{i32 1, !"wchar_size", i32 4}
!414 = !{i32 1, !"branch-target-enforcement", i32 0}
!415 = !{i32 1, !"sign-return-address", i32 0}
!416 = !{i32 1, !"sign-return-address-all", i32 0}
!417 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!418 = !{i32 7, !"PIC Level", i32 2}
!419 = !{i32 7, !"PIE Level", i32 2}
!420 = !{i32 7, !"uwtable", i32 1}
!421 = !{i32 7, !"frame-pointer", i32 1}
!422 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !423, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !28}
!425 = !{!426}
!426 = !DILocalVariable(name: "status", arg: 1, scope: !422, file: !3, line: 56, type: !28)
!427 = !DILocation(line: 0, scope: !422)
!428 = !DILocation(line: 58, column: 14, scope: !429)
!429 = distinct !DILexicalBlock(scope: !422, file: !3, line: 58, column: 7)
!430 = !DILocation(line: 58, column: 7, scope: !422)
!431 = !DILocation(line: 59, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !3, line: 59, column: 5)
!433 = !{!434, !434, i64 0}
!434 = !{!"any pointer", !435, i64 0}
!435 = !{!"omnipotent char", !436, i64 0}
!436 = !{!"Simple C/C++ TBAA"}
!437 = !DILocation(line: 62, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !429, file: !3, line: 61, column: 5)
!439 = !DILocation(line: 69, column: 7, scope: !438)
!440 = !DILocation(line: 73, column: 7, scope: !438)
!441 = !DILocation(line: 74, column: 7, scope: !438)
!442 = !DILocation(line: 75, column: 7, scope: !438)
!443 = !DILocalVariable(name: "program", arg: 1, scope: !444, file: !40, line: 836, type: !33)
!444 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !40, file: !40, line: 836, type: !445, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !33}
!447 = !{!443, !448, !457, !458, !460, !461}
!448 = !DILocalVariable(name: "infomap", scope: !444, file: !40, line: 838, type: !449)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 896, elements: !455)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !444, file: !40, line: 838, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !451, file: !40, line: 838, baseType: !33, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !40, line: 838, baseType: !33, size: 64, offset: 64)
!455 = !{!456}
!456 = !DISubrange(count: 7)
!457 = !DILocalVariable(name: "node", scope: !444, file: !40, line: 848, type: !33)
!458 = !DILocalVariable(name: "map_prog", scope: !444, file: !40, line: 849, type: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!460 = !DILocalVariable(name: "lc_messages", scope: !444, file: !40, line: 861, type: !33)
!461 = !DILocalVariable(name: "url_program", scope: !444, file: !40, line: 874, type: !33)
!462 = !DILocation(line: 0, scope: !444, inlinedAt: !463)
!463 = distinct !DILocation(line: 76, column: 7, scope: !438)
!464 = !DILocation(line: 838, column: 3, scope: !444, inlinedAt: !463)
!465 = !DILocation(line: 838, column: 67, scope: !444, inlinedAt: !463)
!466 = !DILocation(line: 849, column: 36, scope: !444, inlinedAt: !463)
!467 = !DILocation(line: 851, column: 3, scope: !444, inlinedAt: !463)
!468 = !DILocalVariable(name: "__s1", arg: 1, scope: !469, file: !470, line: 1359, type: !33)
!469 = distinct !DISubprogram(name: "streq", scope: !470, file: !470, line: 1359, type: !471, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!470 = !DIFile(filename: "./lib/string.h", directory: "/src")
!471 = !DISubroutineType(types: !472)
!472 = !{!50, !33, !33}
!473 = !{!468, !474}
!474 = !DILocalVariable(name: "__s2", arg: 2, scope: !469, file: !470, line: 1359, type: !33)
!475 = !DILocation(line: 0, scope: !469, inlinedAt: !476)
!476 = distinct !DILocation(line: 851, column: 33, scope: !444, inlinedAt: !463)
!477 = !DILocation(line: 1361, column: 11, scope: !469, inlinedAt: !476)
!478 = !DILocation(line: 1361, column: 10, scope: !469, inlinedAt: !476)
!479 = !DILocation(line: 852, column: 13, scope: !444, inlinedAt: !463)
!480 = !DILocation(line: 851, column: 20, scope: !444, inlinedAt: !463)
!481 = !{!482, !434, i64 0}
!482 = !{!"infomap", !434, i64 0, !434, i64 8}
!483 = !DILocation(line: 851, column: 10, scope: !444, inlinedAt: !463)
!484 = !DILocation(line: 851, column: 28, scope: !444, inlinedAt: !463)
!485 = distinct !{!485, !467, !479, !486}
!486 = !{!"llvm.loop.mustprogress"}
!487 = !DILocation(line: 854, column: 17, scope: !488, inlinedAt: !463)
!488 = distinct !DILexicalBlock(scope: !444, file: !40, line: 854, column: 7)
!489 = !{!482, !434, i64 8}
!490 = !DILocation(line: 854, column: 7, scope: !488, inlinedAt: !463)
!491 = !DILocation(line: 854, column: 7, scope: !444, inlinedAt: !463)
!492 = !DILocation(line: 857, column: 3, scope: !444, inlinedAt: !463)
!493 = !DILocation(line: 861, column: 29, scope: !444, inlinedAt: !463)
!494 = !DILocation(line: 862, column: 7, scope: !495, inlinedAt: !463)
!495 = distinct !DILexicalBlock(scope: !444, file: !40, line: 862, column: 7)
!496 = !DILocation(line: 862, column: 19, scope: !495, inlinedAt: !463)
!497 = !DILocation(line: 862, column: 22, scope: !495, inlinedAt: !463)
!498 = !DILocation(line: 862, column: 7, scope: !444, inlinedAt: !463)
!499 = !DILocation(line: 868, column: 7, scope: !500, inlinedAt: !463)
!500 = distinct !DILexicalBlock(scope: !495, file: !40, line: 863, column: 5)
!501 = !DILocation(line: 870, column: 5, scope: !500, inlinedAt: !463)
!502 = !DILocation(line: 0, scope: !469, inlinedAt: !503)
!503 = distinct !DILocation(line: 874, column: 29, scope: !444, inlinedAt: !463)
!504 = !DILocation(line: 875, column: 3, scope: !444, inlinedAt: !463)
!505 = !DILocation(line: 877, column: 3, scope: !444, inlinedAt: !463)
!506 = !DILocation(line: 879, column: 1, scope: !444, inlinedAt: !463)
!507 = !DILocation(line: 78, column: 3, scope: !422)
!508 = !DISubprogram(name: "dcgettext", scope: !509, file: !509, line: 51, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!509 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!510 = !DISubroutineType(types: !511)
!511 = !{!25, !33, !33, !28}
!512 = !{}
!513 = !DILocation(line: 0, scope: !39)
!514 = !DILocation(line: 581, column: 7, scope: !48)
!515 = !{!516, !516, i64 0}
!516 = !{!"int", !435, i64 0}
!517 = !DILocation(line: 581, column: 19, scope: !48)
!518 = !DILocation(line: 581, column: 7, scope: !39)
!519 = !DILocation(line: 585, column: 26, scope: !47)
!520 = !DILocation(line: 0, scope: !47)
!521 = !DILocation(line: 586, column: 23, scope: !47)
!522 = !DILocation(line: 586, column: 28, scope: !47)
!523 = !DILocation(line: 586, column: 32, scope: !47)
!524 = !{!435, !435, i64 0}
!525 = !DILocation(line: 586, column: 38, scope: !47)
!526 = !DILocation(line: 0, scope: !469, inlinedAt: !527)
!527 = distinct !DILocation(line: 586, column: 41, scope: !47)
!528 = !DILocation(line: 1361, column: 11, scope: !469, inlinedAt: !527)
!529 = !DILocation(line: 1361, column: 10, scope: !469, inlinedAt: !527)
!530 = !DILocation(line: 586, column: 19, scope: !47)
!531 = !DILocation(line: 587, column: 5, scope: !47)
!532 = !DILocation(line: 588, column: 7, scope: !533)
!533 = distinct !DILexicalBlock(scope: !39, file: !40, line: 588, column: 7)
!534 = !DILocation(line: 588, column: 7, scope: !39)
!535 = !DILocation(line: 590, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !40, line: 589, column: 5)
!537 = !DILocation(line: 591, column: 7, scope: !536)
!538 = !DILocation(line: 595, column: 37, scope: !39)
!539 = !DILocation(line: 595, column: 35, scope: !39)
!540 = !DILocation(line: 596, column: 29, scope: !39)
!541 = !DILocation(line: 597, column: 8, scope: !56)
!542 = !DILocation(line: 597, column: 7, scope: !39)
!543 = !DILocation(line: 604, column: 24, scope: !55)
!544 = !DILocation(line: 604, column: 12, scope: !56)
!545 = !DILocation(line: 0, scope: !54)
!546 = !DILocation(line: 610, column: 16, scope: !54)
!547 = !DILocation(line: 610, column: 7, scope: !54)
!548 = !DILocation(line: 611, column: 21, scope: !54)
!549 = !{!550, !550, i64 0}
!550 = !{!"short", !435, i64 0}
!551 = !DILocation(line: 611, column: 19, scope: !54)
!552 = !DILocation(line: 611, column: 16, scope: !54)
!553 = !DILocation(line: 610, column: 30, scope: !54)
!554 = distinct !{!554, !547, !548, !486}
!555 = !DILocation(line: 612, column: 18, scope: !556)
!556 = distinct !DILexicalBlock(scope: !54, file: !40, line: 612, column: 11)
!557 = !DILocation(line: 612, column: 11, scope: !54)
!558 = !DILocation(line: 620, column: 23, scope: !39)
!559 = !DILocation(line: 625, column: 39, scope: !39)
!560 = !DILocation(line: 626, column: 3, scope: !39)
!561 = !DILocation(line: 626, column: 10, scope: !39)
!562 = !DILocation(line: 626, column: 21, scope: !39)
!563 = !DILocation(line: 628, column: 44, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !40, line: 628, column: 11)
!565 = distinct !DILexicalBlock(scope: !39, file: !40, line: 627, column: 5)
!566 = !DILocation(line: 628, column: 32, scope: !564)
!567 = !DILocation(line: 628, column: 49, scope: !564)
!568 = !DILocation(line: 628, column: 11, scope: !565)
!569 = !DILocation(line: 630, column: 11, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !40, line: 630, column: 11)
!571 = !DILocation(line: 630, column: 11, scope: !565)
!572 = !DILocation(line: 632, column: 26, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !40, line: 632, column: 15)
!574 = distinct !DILexicalBlock(scope: !570, file: !40, line: 631, column: 9)
!575 = !DILocation(line: 632, column: 34, scope: !573)
!576 = !DILocation(line: 632, column: 37, scope: !573)
!577 = !DILocation(line: 632, column: 15, scope: !574)
!578 = !DILocation(line: 636, column: 29, scope: !579)
!579 = distinct !DILexicalBlock(scope: !574, file: !40, line: 636, column: 15)
!580 = !DILocation(line: 640, column: 16, scope: !565)
!581 = distinct !{!581, !560, !582, !486}
!582 = !DILocation(line: 641, column: 5, scope: !39)
!583 = !DILocation(line: 644, column: 3, scope: !39)
!584 = !DILocation(line: 0, scope: !469, inlinedAt: !585)
!585 = distinct !DILocation(line: 648, column: 31, scope: !39)
!586 = !DILocation(line: 0, scope: !469, inlinedAt: !587)
!587 = distinct !DILocation(line: 649, column: 31, scope: !39)
!588 = !DILocation(line: 0, scope: !469, inlinedAt: !589)
!589 = distinct !DILocation(line: 650, column: 31, scope: !39)
!590 = !DILocation(line: 0, scope: !469, inlinedAt: !591)
!591 = distinct !DILocation(line: 651, column: 31, scope: !39)
!592 = !DILocation(line: 0, scope: !469, inlinedAt: !593)
!593 = distinct !DILocation(line: 652, column: 31, scope: !39)
!594 = !DILocation(line: 0, scope: !469, inlinedAt: !595)
!595 = distinct !DILocation(line: 653, column: 31, scope: !39)
!596 = !DILocation(line: 0, scope: !469, inlinedAt: !597)
!597 = distinct !DILocation(line: 654, column: 31, scope: !39)
!598 = !DILocation(line: 0, scope: !469, inlinedAt: !599)
!599 = distinct !DILocation(line: 655, column: 31, scope: !39)
!600 = !DILocation(line: 0, scope: !469, inlinedAt: !601)
!601 = distinct !DILocation(line: 656, column: 31, scope: !39)
!602 = !DILocation(line: 0, scope: !469, inlinedAt: !603)
!603 = distinct !DILocation(line: 657, column: 31, scope: !39)
!604 = !DILocation(line: 663, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !39, file: !40, line: 663, column: 7)
!606 = !DILocation(line: 664, column: 7, scope: !605)
!607 = !DILocation(line: 664, column: 10, scope: !605)
!608 = !DILocation(line: 663, column: 7, scope: !39)
!609 = !DILocation(line: 669, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !40, line: 665, column: 5)
!611 = !DILocation(line: 671, column: 5, scope: !610)
!612 = !DILocation(line: 676, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !605, file: !40, line: 673, column: 5)
!614 = !DILocation(line: 679, column: 3, scope: !39)
!615 = !DILocation(line: 683, column: 3, scope: !39)
!616 = !DILocation(line: 686, column: 3, scope: !39)
!617 = !DILocation(line: 688, column: 3, scope: !39)
!618 = !DILocation(line: 691, column: 3, scope: !39)
!619 = !DILocation(line: 695, column: 3, scope: !39)
!620 = !DILocation(line: 696, column: 1, scope: !39)
!621 = !DISubprogram(name: "setlocale", scope: !622, file: !622, line: 122, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!622 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!623 = !DISubroutineType(types: !624)
!624 = !{!25, !28, !33}
!625 = !DISubprogram(name: "fputs_unlocked", scope: !160, file: !160, line: 691, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!626 = !DISubroutineType(types: !627)
!627 = !{!28, !628, !629}
!628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!630 = !DISubprogram(name: "getenv", scope: !631, file: !631, line: 641, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!631 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!632 = !DISubroutineType(types: !633)
!633 = !{!25, !33}
!634 = !DISubprogram(name: "fwrite_unlocked", scope: !160, file: !160, line: 704, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!635 = !DISubroutineType(types: !636)
!636 = !{!30, !637, !30, !30, !629}
!637 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!640 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 82, type: !641, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !644)
!641 = !DISubroutineType(types: !642)
!642 = !{!28, !28, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!644 = !{!645, !646, !647, !648, !649, !650, !654, !656, !658, !661, !663, !666}
!645 = !DILocalVariable(name: "argc", arg: 1, scope: !640, file: !3, line: 82, type: !28)
!646 = !DILocalVariable(name: "argv", arg: 2, scope: !640, file: !3, line: 82, type: !643)
!647 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !640, file: !3, line: 84, type: !50)
!648 = !DILocalVariable(name: "optc", scope: !640, file: !3, line: 95, type: !28)
!649 = !DILocalVariable(name: "ok", scope: !640, file: !3, line: 110, type: !50)
!650 = !DILocalVariable(name: "env", scope: !651, file: !3, line: 113, type: !643)
!651 = distinct !DILexicalBlock(scope: !652, file: !3, line: 113, column: 7)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 112, column: 5)
!653 = distinct !DILexicalBlock(scope: !640, file: !3, line: 111, column: 7)
!654 = !DILocalVariable(name: "matches", scope: !655, file: !3, line: 119, type: !28)
!655 = distinct !DILexicalBlock(scope: !653, file: !3, line: 118, column: 5)
!656 = !DILocalVariable(name: "i", scope: !657, file: !3, line: 121, type: !28)
!657 = distinct !DILexicalBlock(scope: !655, file: !3, line: 121, column: 7)
!658 = !DILocalVariable(name: "matched", scope: !659, file: !3, line: 123, type: !50)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 122, column: 9)
!660 = distinct !DILexicalBlock(scope: !657, file: !3, line: 121, column: 7)
!661 = !DILocalVariable(name: "env", scope: !662, file: !3, line: 129, type: !643)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 129, column: 11)
!663 = !DILocalVariable(name: "ep", scope: !664, file: !3, line: 131, type: !33)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 130, column: 13)
!665 = distinct !DILexicalBlock(scope: !662, file: !3, line: 129, column: 11)
!666 = !DILocalVariable(name: "ap", scope: !664, file: !3, line: 132, type: !33)
!667 = !DILocation(line: 0, scope: !640)
!668 = !DILocation(line: 87, column: 21, scope: !640)
!669 = !DILocation(line: 87, column: 3, scope: !640)
!670 = !DILocation(line: 88, column: 3, scope: !640)
!671 = !DILocation(line: 89, column: 3, scope: !640)
!672 = !DILocation(line: 90, column: 3, scope: !640)
!673 = !DILocalVariable(name: "status", arg: 1, scope: !674, file: !40, line: 102, type: !28)
!674 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !40, file: !40, line: 102, type: !423, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!675 = !{!673}
!676 = !DILocation(line: 0, scope: !674, inlinedAt: !677)
!677 = distinct !DILocation(line: 92, column: 3, scope: !640)
!678 = !DILocation(line: 105, column: 18, scope: !679, inlinedAt: !677)
!679 = distinct !DILexicalBlock(scope: !674, file: !40, line: 104, column: 7)
!680 = !DILocation(line: 93, column: 3, scope: !640)
!681 = !DILocation(line: 96, column: 3, scope: !640)
!682 = !DILocation(line: 96, column: 18, scope: !640)
!683 = distinct !{!683, !681, !684, !486}
!684 = !DILocation(line: 108, column: 5, scope: !640)
!685 = !DILocation(line: 103, column: 9, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 99, column: 9)
!687 = distinct !DILexicalBlock(scope: !640, file: !3, line: 97, column: 5)
!688 = !DILocation(line: 104, column: 9, scope: !686)
!689 = !DILocation(line: 106, column: 11, scope: !686)
!690 = !DILocation(line: 111, column: 7, scope: !653)
!691 = !DILocation(line: 111, column: 14, scope: !653)
!692 = !DILocation(line: 111, column: 7, scope: !640)
!693 = !DILocation(line: 121, column: 7, scope: !657)
!694 = !DILocation(line: 113, column: 25, scope: !651)
!695 = !DILocation(line: 0, scope: !651)
!696 = !DILocation(line: 113, column: 34, scope: !697)
!697 = distinct !DILexicalBlock(scope: !651, file: !3, line: 113, column: 7)
!698 = !DILocation(line: 113, column: 39, scope: !697)
!699 = !DILocation(line: 113, column: 7, scope: !651)
!700 = !DILocation(line: 114, column: 9, scope: !697)
!701 = !DILocation(line: 113, column: 48, scope: !697)
!702 = distinct !{!702, !699, !703, !486}
!703 = !DILocation(line: 114, column: 9, scope: !651)
!704 = !DILocation(line: 148, column: 31, scope: !655)
!705 = !DILocation(line: 148, column: 29, scope: !655)
!706 = !DILocation(line: 148, column: 21, scope: !655)
!707 = !DILocation(line: 0, scope: !657)
!708 = !DILocation(line: 0, scope: !655)
!709 = !DILocation(line: 0, scope: !659)
!710 = !DILocation(line: 126, column: 23, scope: !711)
!711 = distinct !DILexicalBlock(scope: !659, file: !3, line: 126, column: 15)
!712 = !DILocation(line: 126, column: 15, scope: !711)
!713 = !DILocation(line: 126, column: 15, scope: !659)
!714 = !DILocation(line: 129, column: 29, scope: !662)
!715 = !DILocation(line: 0, scope: !662)
!716 = !DILocation(line: 129, column: 38, scope: !665)
!717 = !DILocation(line: 129, column: 11, scope: !662)
!718 = !DILocation(line: 145, column: 22, scope: !659)
!719 = !DILocation(line: 145, column: 19, scope: !659)
!720 = !DILocation(line: 146, column: 9, scope: !660)
!721 = !DILocation(line: 132, column: 32, scope: !664)
!722 = !DILocation(line: 0, scope: !664)
!723 = !DILocation(line: 133, column: 22, scope: !664)
!724 = !DILocation(line: 133, column: 26, scope: !664)
!725 = !DILocation(line: 133, column: 34, scope: !664)
!726 = !DILocation(line: 133, column: 37, scope: !664)
!727 = !DILocation(line: 133, column: 41, scope: !664)
!728 = !DILocation(line: 133, column: 49, scope: !664)
!729 = !DILocation(line: 133, column: 55, scope: !664)
!730 = !DILocation(line: 133, column: 64, scope: !664)
!731 = !DILocation(line: 133, column: 58, scope: !664)
!732 = !DILocation(line: 133, column: 15, scope: !664)
!733 = !DILocation(line: 135, column: 23, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 135, column: 23)
!735 = distinct !DILexicalBlock(scope: !664, file: !3, line: 134, column: 17)
!736 = !DILocation(line: 135, column: 34, scope: !734)
!737 = !DILocation(line: 135, column: 37, scope: !734)
!738 = !DILocation(line: 135, column: 41, scope: !734)
!739 = !DILocation(line: 135, column: 23, scope: !735)
!740 = !DILocation(line: 137, column: 23, scope: !741)
!741 = distinct !DILexicalBlock(scope: !734, file: !3, line: 136, column: 21)
!742 = !DILocation(line: 140, column: 23, scope: !741)
!743 = distinct !{!743, !732, !744, !486}
!744 = !DILocation(line: 142, column: 17, scope: !664)
!745 = !DILocation(line: 129, column: 44, scope: !665)
!746 = distinct !{!746, !717, !747, !486}
!747 = !DILocation(line: 143, column: 13, scope: !662)
!748 = !DILocation(line: 121, column: 38, scope: !660)
!749 = !DILocation(line: 121, column: 30, scope: !660)
!750 = distinct !{!750, !693, !751, !486}
!751 = !DILocation(line: 146, column: 9, scope: !657)
!752 = !DILocation(line: 152, column: 1, scope: !640)
!753 = !DISubprogram(name: "bindtextdomain", scope: !509, file: !509, line: 86, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!754 = !DISubroutineType(types: !755)
!755 = !{!25, !33, !33}
!756 = !DISubprogram(name: "textdomain", scope: !509, file: !509, line: 82, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!757 = !DISubprogram(name: "atexit", scope: !631, file: !631, line: 602, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!758 = !DISubroutineType(types: !759)
!759 = !{!28, !186}
!760 = !DISubprogram(name: "getopt_long", scope: !127, file: !127, line: 66, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!761 = !DISubroutineType(types: !762)
!762 = !{!28, !28, !763, !33, !765, !132}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!766 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !144, file: !144, line: 50, type: !445, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !767)
!767 = !{!768}
!768 = !DILocalVariable(name: "file", arg: 1, scope: !766, file: !144, line: 50, type: !33)
!769 = !DILocation(line: 0, scope: !766)
!770 = !DILocation(line: 52, column: 13, scope: !766)
!771 = !DILocation(line: 53, column: 1, scope: !766)
!772 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !144, file: !144, line: 87, type: !773, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !50}
!775 = !{!776}
!776 = !DILocalVariable(name: "ignore", arg: 1, scope: !772, file: !144, line: 87, type: !50)
!777 = !DILocation(line: 0, scope: !772)
!778 = !DILocation(line: 89, column: 16, scope: !772)
!779 = !{!780, !780, i64 0}
!780 = !{!"_Bool", !435, i64 0}
!781 = !DILocation(line: 90, column: 1, scope: !772)
!782 = distinct !DISubprogram(name: "close_stdout", scope: !144, file: !144, line: 116, type: !187, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !783)
!783 = !{!784}
!784 = !DILocalVariable(name: "write_error", scope: !785, file: !144, line: 121, type: !33)
!785 = distinct !DILexicalBlock(scope: !786, file: !144, line: 120, column: 5)
!786 = distinct !DILexicalBlock(scope: !782, file: !144, line: 118, column: 7)
!787 = !DILocation(line: 118, column: 21, scope: !786)
!788 = !DILocation(line: 118, column: 7, scope: !786)
!789 = !DILocation(line: 118, column: 29, scope: !786)
!790 = !DILocation(line: 119, column: 7, scope: !786)
!791 = !DILocation(line: 119, column: 12, scope: !786)
!792 = !{i8 0, i8 2}
!793 = !DILocation(line: 119, column: 25, scope: !786)
!794 = !DILocation(line: 119, column: 28, scope: !786)
!795 = !DILocation(line: 119, column: 34, scope: !786)
!796 = !DILocation(line: 118, column: 7, scope: !782)
!797 = !DILocation(line: 121, column: 33, scope: !785)
!798 = !DILocation(line: 0, scope: !785)
!799 = !DILocation(line: 122, column: 11, scope: !800)
!800 = distinct !DILexicalBlock(scope: !785, file: !144, line: 122, column: 11)
!801 = !DILocation(line: 0, scope: !800)
!802 = !DILocation(line: 122, column: 11, scope: !785)
!803 = !DILocation(line: 123, column: 9, scope: !800)
!804 = !DILocation(line: 126, column: 9, scope: !800)
!805 = !DILocation(line: 128, column: 14, scope: !785)
!806 = !DILocation(line: 128, column: 7, scope: !785)
!807 = !DILocation(line: 133, column: 42, scope: !808)
!808 = distinct !DILexicalBlock(scope: !782, file: !144, line: 133, column: 7)
!809 = !DILocation(line: 133, column: 28, scope: !808)
!810 = !DILocation(line: 133, column: 50, scope: !808)
!811 = !DILocation(line: 133, column: 7, scope: !782)
!812 = !DILocation(line: 134, column: 12, scope: !808)
!813 = !DILocation(line: 134, column: 5, scope: !808)
!814 = !DILocation(line: 135, column: 1, scope: !782)
!815 = distinct !DISubprogram(name: "verror", scope: !151, file: !151, line: 251, type: !816, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !28, !28, !33, !159}
!818 = !{!819, !820, !821, !822}
!819 = !DILocalVariable(name: "status", arg: 1, scope: !815, file: !151, line: 251, type: !28)
!820 = !DILocalVariable(name: "errnum", arg: 2, scope: !815, file: !151, line: 251, type: !28)
!821 = !DILocalVariable(name: "message", arg: 3, scope: !815, file: !151, line: 251, type: !33)
!822 = !DILocalVariable(name: "args", arg: 4, scope: !815, file: !151, line: 251, type: !159)
!823 = !DILocation(line: 0, scope: !815)
!824 = !DILocation(line: 251, column: 1, scope: !815)
!825 = !DILocation(line: 261, column: 3, scope: !815)
!826 = !DILocation(line: 265, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !815, file: !151, line: 265, column: 7)
!828 = !DILocation(line: 265, column: 7, scope: !815)
!829 = !DILocation(line: 266, column: 5, scope: !827)
!830 = !DILocation(line: 272, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !151, line: 268, column: 5)
!832 = !DILocation(line: 276, column: 3, scope: !815)
!833 = !{i64 0, i64 8, !433, i64 8, i64 8, !433, i64 16, i64 8, !433, i64 24, i64 4, !515, i64 28, i64 4, !515}
!834 = !DILocation(line: 282, column: 1, scope: !815)
!835 = distinct !DISubprogram(name: "flush_stdout", scope: !151, file: !151, line: 163, type: !187, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !836)
!836 = !{!837}
!837 = !DILocalVariable(name: "stdout_fd", scope: !835, file: !151, line: 166, type: !28)
!838 = !DILocation(line: 0, scope: !835)
!839 = !DILocalVariable(name: "fd", arg: 1, scope: !840, file: !151, line: 145, type: !28)
!840 = distinct !DISubprogram(name: "is_open", scope: !151, file: !151, line: 145, type: !841, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!28, !28}
!843 = !{!839}
!844 = !DILocation(line: 0, scope: !840, inlinedAt: !845)
!845 = distinct !DILocation(line: 182, column: 25, scope: !846)
!846 = distinct !DILexicalBlock(scope: !835, file: !151, line: 182, column: 7)
!847 = !DILocation(line: 157, column: 15, scope: !840, inlinedAt: !845)
!848 = !DILocation(line: 182, column: 25, scope: !846)
!849 = !DILocation(line: 182, column: 7, scope: !835)
!850 = !DILocation(line: 184, column: 5, scope: !846)
!851 = !DILocation(line: 185, column: 1, scope: !835)
!852 = distinct !DISubprogram(name: "error_tail", scope: !151, file: !151, line: 219, type: !816, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !853)
!853 = !{!854, !855, !856, !857}
!854 = !DILocalVariable(name: "status", arg: 1, scope: !852, file: !151, line: 219, type: !28)
!855 = !DILocalVariable(name: "errnum", arg: 2, scope: !852, file: !151, line: 219, type: !28)
!856 = !DILocalVariable(name: "message", arg: 3, scope: !852, file: !151, line: 219, type: !33)
!857 = !DILocalVariable(name: "args", arg: 4, scope: !852, file: !151, line: 219, type: !159)
!858 = !DILocation(line: 0, scope: !852)
!859 = !DILocation(line: 219, column: 1, scope: !852)
!860 = !DILocation(line: 229, column: 13, scope: !852)
!861 = !DILocation(line: 229, column: 3, scope: !852)
!862 = !DILocalVariable(name: "__stream", arg: 1, scope: !863, file: !864, line: 132, type: !867)
!863 = distinct !DISubprogram(name: "vfprintf", scope: !864, file: !864, line: 132, type: !865, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !902)
!864 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!865 = !DISubroutineType(types: !866)
!866 = !{!28, !867, !628, !161}
!867 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 7, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 49, size: 1728, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !870, file: !67, line: 51, baseType: !28, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !870, file: !67, line: 54, baseType: !25, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !870, file: !67, line: 55, baseType: !25, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !870, file: !67, line: 56, baseType: !25, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !870, file: !67, line: 57, baseType: !25, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !870, file: !67, line: 58, baseType: !25, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !870, file: !67, line: 59, baseType: !25, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !870, file: !67, line: 60, baseType: !25, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !870, file: !67, line: 61, baseType: !25, size: 64, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !870, file: !67, line: 64, baseType: !25, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !870, file: !67, line: 65, baseType: !25, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !870, file: !67, line: 66, baseType: !25, size: 64, offset: 704)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !870, file: !67, line: 68, baseType: !82, size: 64, offset: 768)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !870, file: !67, line: 70, baseType: !886, size: 64, offset: 832)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !870, file: !67, line: 72, baseType: !28, size: 32, offset: 896)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !870, file: !67, line: 73, baseType: !28, size: 32, offset: 928)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !870, file: !67, line: 74, baseType: !89, size: 64, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !870, file: !67, line: 77, baseType: !29, size: 16, offset: 1024)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !870, file: !67, line: 78, baseType: !94, size: 8, offset: 1040)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !870, file: !67, line: 79, baseType: !96, size: 8, offset: 1048)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !870, file: !67, line: 81, baseType: !100, size: 64, offset: 1088)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !870, file: !67, line: 89, baseType: !103, size: 64, offset: 1152)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !870, file: !67, line: 91, baseType: !105, size: 64, offset: 1216)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !870, file: !67, line: 92, baseType: !108, size: 64, offset: 1280)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !870, file: !67, line: 93, baseType: !886, size: 64, offset: 1344)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !870, file: !67, line: 94, baseType: !27, size: 64, offset: 1408)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !870, file: !67, line: 95, baseType: !30, size: 64, offset: 1472)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !870, file: !67, line: 96, baseType: !28, size: 32, offset: 1536)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !870, file: !67, line: 98, baseType: !115, size: 160, offset: 1568)
!902 = !{!862, !903, !904}
!903 = !DILocalVariable(name: "__fmt", arg: 2, scope: !863, file: !864, line: 133, type: !628)
!904 = !DILocalVariable(name: "__ap", arg: 3, scope: !863, file: !864, line: 133, type: !161)
!905 = !DILocation(line: 0, scope: !863, inlinedAt: !906)
!906 = distinct !DILocation(line: 229, column: 3, scope: !852)
!907 = !DILocation(line: 135, column: 10, scope: !863, inlinedAt: !906)
!908 = !{!909, !911}
!909 = distinct !{!909, !910, !"vfprintf.inline: argument 0"}
!910 = distinct !{!910, !"vfprintf.inline"}
!911 = distinct !{!911, !910, !"vfprintf.inline: argument 1"}
!912 = !DILocation(line: 232, column: 3, scope: !852)
!913 = !DILocation(line: 233, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !852, file: !151, line: 233, column: 7)
!915 = !DILocation(line: 233, column: 7, scope: !852)
!916 = !DILocalVariable(name: "errnum", arg: 1, scope: !917, file: !151, line: 188, type: !28)
!917 = distinct !DISubprogram(name: "print_errno_message", scope: !151, file: !151, line: 188, type: !423, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !918)
!918 = !{!916, !919, !920}
!919 = !DILocalVariable(name: "s", scope: !917, file: !151, line: 190, type: !33)
!920 = !DILocalVariable(name: "errbuf", scope: !917, file: !151, line: 193, type: !921)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8192, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 1024)
!924 = !DILocation(line: 0, scope: !917, inlinedAt: !925)
!925 = distinct !DILocation(line: 234, column: 5, scope: !914)
!926 = !DILocation(line: 193, column: 3, scope: !917, inlinedAt: !925)
!927 = !DILocation(line: 193, column: 8, scope: !917, inlinedAt: !925)
!928 = !DILocation(line: 195, column: 7, scope: !917, inlinedAt: !925)
!929 = !DILocation(line: 207, column: 9, scope: !930, inlinedAt: !925)
!930 = distinct !DILexicalBlock(scope: !917, file: !151, line: 207, column: 7)
!931 = !DILocation(line: 207, column: 7, scope: !917, inlinedAt: !925)
!932 = !DILocation(line: 208, column: 9, scope: !930, inlinedAt: !925)
!933 = !DILocation(line: 208, column: 5, scope: !930, inlinedAt: !925)
!934 = !DILocation(line: 214, column: 3, scope: !917, inlinedAt: !925)
!935 = !DILocation(line: 216, column: 1, scope: !917, inlinedAt: !925)
!936 = !DILocation(line: 234, column: 5, scope: !914)
!937 = !DILocation(line: 238, column: 3, scope: !852)
!938 = !DILocalVariable(name: "__c", arg: 1, scope: !939, file: !940, line: 101, type: !28)
!939 = distinct !DISubprogram(name: "putc_unlocked", scope: !940, file: !940, line: 101, type: !941, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !943)
!940 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!941 = !DISubroutineType(types: !942)
!942 = !{!28, !28, !868}
!943 = !{!938, !944}
!944 = !DILocalVariable(name: "__stream", arg: 2, scope: !939, file: !940, line: 101, type: !868)
!945 = !DILocation(line: 0, scope: !939, inlinedAt: !946)
!946 = distinct !DILocation(line: 238, column: 3, scope: !852)
!947 = !DILocation(line: 103, column: 10, scope: !939, inlinedAt: !946)
!948 = !{!949, !434, i64 40}
!949 = !{!"_IO_FILE", !516, i64 0, !434, i64 8, !434, i64 16, !434, i64 24, !434, i64 32, !434, i64 40, !434, i64 48, !434, i64 56, !434, i64 64, !434, i64 72, !434, i64 80, !434, i64 88, !434, i64 96, !434, i64 104, !516, i64 112, !516, i64 116, !950, i64 120, !550, i64 128, !435, i64 130, !435, i64 131, !434, i64 136, !950, i64 144, !434, i64 152, !434, i64 160, !434, i64 168, !434, i64 176, !950, i64 184, !516, i64 192, !435, i64 196}
!950 = !{!"long", !435, i64 0}
!951 = !{!949, !434, i64 48}
!952 = !{!"branch_weights", i32 2000, i32 1}
!953 = !DILocation(line: 240, column: 3, scope: !852)
!954 = !DILocation(line: 241, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !852, file: !151, line: 241, column: 7)
!956 = !DILocation(line: 241, column: 7, scope: !852)
!957 = !DILocation(line: 242, column: 5, scope: !955)
!958 = !DILocation(line: 243, column: 1, scope: !852)
!959 = !DISubprogram(name: "strerror_r", scope: !960, file: !960, line: 444, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!960 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!961 = !DISubroutineType(types: !962)
!962 = !{!25, !28, !25, !30}
!963 = !DISubprogram(name: "fflush_unlocked", scope: !160, file: !160, line: 239, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!964 = !DISubroutineType(types: !965)
!965 = !{!28, !868}
!966 = !DISubprogram(name: "fcntl", scope: !967, file: !967, line: 149, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!967 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!968 = !DISubroutineType(types: !969)
!969 = !{!28, !28, !28, null}
!970 = distinct !DISubprogram(name: "error", scope: !151, file: !151, line: 285, type: !971, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !28, !28, !33, null}
!973 = !{!974, !975, !976, !977}
!974 = !DILocalVariable(name: "status", arg: 1, scope: !970, file: !151, line: 285, type: !28)
!975 = !DILocalVariable(name: "errnum", arg: 2, scope: !970, file: !151, line: 285, type: !28)
!976 = !DILocalVariable(name: "message", arg: 3, scope: !970, file: !151, line: 285, type: !33)
!977 = !DILocalVariable(name: "ap", scope: !970, file: !151, line: 287, type: !159)
!978 = !DILocation(line: 0, scope: !970)
!979 = !DILocation(line: 287, column: 3, scope: !970)
!980 = !DILocation(line: 287, column: 11, scope: !970)
!981 = !DILocation(line: 288, column: 3, scope: !970)
!982 = !DILocation(line: 289, column: 3, scope: !970)
!983 = !DILocation(line: 290, column: 3, scope: !970)
!984 = !DILocation(line: 291, column: 1, scope: !970)
!985 = !DILocation(line: 0, scope: !156)
!986 = !DILocation(line: 298, column: 1, scope: !156)
!987 = !DILocation(line: 302, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !156, file: !151, line: 302, column: 7)
!989 = !DILocation(line: 302, column: 7, scope: !156)
!990 = !DILocation(line: 307, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !151, line: 307, column: 11)
!992 = distinct !DILexicalBlock(scope: !988, file: !151, line: 303, column: 5)
!993 = !DILocation(line: 307, column: 27, scope: !991)
!994 = !DILocation(line: 308, column: 11, scope: !991)
!995 = !DILocation(line: 308, column: 28, scope: !991)
!996 = !DILocation(line: 308, column: 25, scope: !991)
!997 = !DILocation(line: 309, column: 15, scope: !991)
!998 = !DILocation(line: 309, column: 33, scope: !991)
!999 = !DILocation(line: 310, column: 19, scope: !991)
!1000 = !DILocation(line: 311, column: 22, scope: !991)
!1001 = !DILocation(line: 311, column: 56, scope: !991)
!1002 = !DILocation(line: 307, column: 11, scope: !992)
!1003 = !DILocation(line: 316, column: 21, scope: !992)
!1004 = !DILocation(line: 317, column: 23, scope: !992)
!1005 = !DILocation(line: 318, column: 5, scope: !992)
!1006 = !DILocation(line: 327, column: 3, scope: !156)
!1007 = !DILocation(line: 331, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !156, file: !151, line: 331, column: 7)
!1009 = !DILocation(line: 331, column: 7, scope: !156)
!1010 = !DILocation(line: 332, column: 5, scope: !1008)
!1011 = !DILocation(line: 338, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !151, line: 334, column: 5)
!1013 = !DILocation(line: 346, column: 3, scope: !156)
!1014 = !DILocation(line: 350, column: 3, scope: !156)
!1015 = !DILocation(line: 356, column: 1, scope: !156)
!1016 = distinct !DISubprogram(name: "error_at_line", scope: !151, file: !151, line: 359, type: !1017, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1019)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !28, !28, !33, !6, !33, null}
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025}
!1020 = !DILocalVariable(name: "status", arg: 1, scope: !1016, file: !151, line: 359, type: !28)
!1021 = !DILocalVariable(name: "errnum", arg: 2, scope: !1016, file: !151, line: 359, type: !28)
!1022 = !DILocalVariable(name: "file_name", arg: 3, scope: !1016, file: !151, line: 359, type: !33)
!1023 = !DILocalVariable(name: "line_number", arg: 4, scope: !1016, file: !151, line: 360, type: !6)
!1024 = !DILocalVariable(name: "message", arg: 5, scope: !1016, file: !151, line: 360, type: !33)
!1025 = !DILocalVariable(name: "ap", scope: !1016, file: !151, line: 362, type: !159)
!1026 = !DILocation(line: 0, scope: !1016)
!1027 = !DILocation(line: 362, column: 3, scope: !1016)
!1028 = !DILocation(line: 362, column: 11, scope: !1016)
!1029 = !DILocation(line: 363, column: 3, scope: !1016)
!1030 = !DILocation(line: 364, column: 3, scope: !1016)
!1031 = !DILocation(line: 366, column: 3, scope: !1016)
!1032 = !DILocation(line: 367, column: 1, scope: !1016)
!1033 = distinct !DISubprogram(name: "getprogname", scope: !349, file: !349, line: 54, type: !1034, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !348, retainedNodes: !512)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!33}
!1036 = !DILocation(line: 58, column: 10, scope: !1033)
!1037 = !DILocation(line: 58, column: 3, scope: !1033)
!1038 = distinct !DISubprogram(name: "set_program_name", scope: !192, file: !192, line: 37, type: !445, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DILocalVariable(name: "argv0", arg: 1, scope: !1038, file: !192, line: 37, type: !33)
!1041 = !DILocalVariable(name: "slash", scope: !1038, file: !192, line: 44, type: !33)
!1042 = !DILocalVariable(name: "base", scope: !1038, file: !192, line: 45, type: !33)
!1043 = !DILocation(line: 0, scope: !1038)
!1044 = !DILocation(line: 44, column: 23, scope: !1038)
!1045 = !DILocation(line: 45, column: 22, scope: !1038)
!1046 = !DILocation(line: 46, column: 17, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1038, file: !192, line: 46, column: 7)
!1048 = !DILocation(line: 46, column: 9, scope: !1047)
!1049 = !DILocation(line: 46, column: 25, scope: !1047)
!1050 = !DILocation(line: 46, column: 40, scope: !1047)
!1051 = !DILocalVariable(name: "__s1", arg: 1, scope: !1052, file: !470, line: 974, type: !638)
!1052 = distinct !DISubprogram(name: "memeq", scope: !470, file: !470, line: 974, type: !1053, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!50, !638, !638, !30}
!1055 = !{!1051, !1056, !1057}
!1056 = !DILocalVariable(name: "__s2", arg: 2, scope: !1052, file: !470, line: 974, type: !638)
!1057 = !DILocalVariable(name: "__n", arg: 3, scope: !1052, file: !470, line: 974, type: !30)
!1058 = !DILocation(line: 0, scope: !1052, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 46, column: 28, scope: !1047)
!1060 = !DILocation(line: 976, column: 11, scope: !1052, inlinedAt: !1059)
!1061 = !DILocation(line: 976, column: 10, scope: !1052, inlinedAt: !1059)
!1062 = !DILocation(line: 46, column: 7, scope: !1038)
!1063 = !DILocation(line: 49, column: 11, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !192, line: 49, column: 11)
!1065 = distinct !DILexicalBlock(scope: !1047, file: !192, line: 47, column: 5)
!1066 = !DILocation(line: 49, column: 36, scope: !1064)
!1067 = !DILocation(line: 49, column: 11, scope: !1065)
!1068 = !DILocation(line: 65, column: 16, scope: !1038)
!1069 = !DILocation(line: 71, column: 27, scope: !1038)
!1070 = !DILocation(line: 74, column: 33, scope: !1038)
!1071 = !DILocation(line: 76, column: 1, scope: !1038)
!1072 = !DILocation(line: 0, scope: !197)
!1073 = !DILocation(line: 40, column: 29, scope: !197)
!1074 = !DILocation(line: 41, column: 19, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !197, file: !198, line: 41, column: 7)
!1076 = !DILocation(line: 41, column: 7, scope: !197)
!1077 = !DILocation(line: 47, column: 3, scope: !197)
!1078 = !DILocation(line: 48, column: 3, scope: !197)
!1079 = !DILocation(line: 48, column: 13, scope: !197)
!1080 = !DILocalVariable(name: "ps", arg: 1, scope: !1081, file: !1082, line: 1135, type: !1085)
!1081 = distinct !DISubprogram(name: "mbszero", scope: !1082, file: !1082, line: 1135, type: !1083, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1086)
!1082 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !1085}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!1086 = !{!1080}
!1087 = !DILocation(line: 0, scope: !1081, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 48, column: 18, scope: !197)
!1089 = !DILocalVariable(name: "__dest", arg: 1, scope: !1090, file: !1091, line: 57, type: !27)
!1090 = distinct !DISubprogram(name: "memset", scope: !1091, file: !1091, line: 57, type: !1092, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1094)
!1091 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!27, !27, !28, !30}
!1094 = !{!1089, !1095, !1096}
!1095 = !DILocalVariable(name: "__ch", arg: 2, scope: !1090, file: !1091, line: 57, type: !28)
!1096 = !DILocalVariable(name: "__len", arg: 3, scope: !1090, file: !1091, line: 57, type: !30)
!1097 = !DILocation(line: 0, scope: !1090, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 1137, column: 3, scope: !1081, inlinedAt: !1088)
!1099 = !DILocation(line: 59, column: 10, scope: !1090, inlinedAt: !1098)
!1100 = !DILocation(line: 49, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !197, file: !198, line: 49, column: 7)
!1102 = !DILocation(line: 49, column: 39, scope: !1101)
!1103 = !DILocation(line: 49, column: 44, scope: !1101)
!1104 = !DILocation(line: 54, column: 1, scope: !197)
!1105 = !DISubprogram(name: "mbrtoc32", scope: !209, file: !209, line: 57, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!30, !1108, !628, !30, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1085)
!1111 = distinct !DISubprogram(name: "clone_quoting_options", scope: !232, file: !232, line: 113, type: !1112, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1115)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!1114, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!1115 = !{!1116, !1117, !1118}
!1116 = !DILocalVariable(name: "o", arg: 1, scope: !1111, file: !232, line: 113, type: !1114)
!1117 = !DILocalVariable(name: "saved_errno", scope: !1111, file: !232, line: 115, type: !28)
!1118 = !DILocalVariable(name: "p", scope: !1111, file: !232, line: 116, type: !1114)
!1119 = !DILocation(line: 0, scope: !1111)
!1120 = !DILocation(line: 115, column: 21, scope: !1111)
!1121 = !DILocation(line: 116, column: 40, scope: !1111)
!1122 = !DILocation(line: 116, column: 31, scope: !1111)
!1123 = !DILocation(line: 118, column: 9, scope: !1111)
!1124 = !DILocation(line: 119, column: 3, scope: !1111)
!1125 = distinct !DISubprogram(name: "get_quoting_style", scope: !232, file: !232, line: 124, type: !1126, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1130)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!234, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!1130 = !{!1131}
!1131 = !DILocalVariable(name: "o", arg: 1, scope: !1125, file: !232, line: 124, type: !1128)
!1132 = !DILocation(line: 0, scope: !1125)
!1133 = !DILocation(line: 126, column: 11, scope: !1125)
!1134 = !DILocation(line: 126, column: 46, scope: !1125)
!1135 = !{!1136, !435, i64 0}
!1136 = !{!"quoting_options", !435, i64 0, !516, i64 4, !435, i64 8, !434, i64 40, !434, i64 48}
!1137 = !DILocation(line: 126, column: 3, scope: !1125)
!1138 = distinct !DISubprogram(name: "set_quoting_style", scope: !232, file: !232, line: 132, type: !1139, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !1114, !234}
!1141 = !{!1142, !1143}
!1142 = !DILocalVariable(name: "o", arg: 1, scope: !1138, file: !232, line: 132, type: !1114)
!1143 = !DILocalVariable(name: "s", arg: 2, scope: !1138, file: !232, line: 132, type: !234)
!1144 = !DILocation(line: 0, scope: !1138)
!1145 = !DILocation(line: 134, column: 4, scope: !1138)
!1146 = !DILocation(line: 134, column: 39, scope: !1138)
!1147 = !DILocation(line: 134, column: 45, scope: !1138)
!1148 = !DILocation(line: 135, column: 1, scope: !1138)
!1149 = distinct !DISubprogram(name: "set_char_quoting", scope: !232, file: !232, line: 143, type: !1150, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1152)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!28, !1114, !26, !28}
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1159, !1160}
!1153 = !DILocalVariable(name: "o", arg: 1, scope: !1149, file: !232, line: 143, type: !1114)
!1154 = !DILocalVariable(name: "c", arg: 2, scope: !1149, file: !232, line: 143, type: !26)
!1155 = !DILocalVariable(name: "i", arg: 3, scope: !1149, file: !232, line: 143, type: !28)
!1156 = !DILocalVariable(name: "uc", scope: !1149, file: !232, line: 145, type: !35)
!1157 = !DILocalVariable(name: "p", scope: !1149, file: !232, line: 146, type: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1159 = !DILocalVariable(name: "shift", scope: !1149, file: !232, line: 148, type: !28)
!1160 = !DILocalVariable(name: "r", scope: !1149, file: !232, line: 149, type: !6)
!1161 = !DILocation(line: 0, scope: !1149)
!1162 = !DILocation(line: 147, column: 6, scope: !1149)
!1163 = !DILocation(line: 147, column: 62, scope: !1149)
!1164 = !DILocation(line: 147, column: 57, scope: !1149)
!1165 = !DILocation(line: 148, column: 15, scope: !1149)
!1166 = !DILocation(line: 149, column: 21, scope: !1149)
!1167 = !DILocation(line: 149, column: 24, scope: !1149)
!1168 = !DILocation(line: 149, column: 34, scope: !1149)
!1169 = !DILocation(line: 150, column: 13, scope: !1149)
!1170 = !DILocation(line: 150, column: 19, scope: !1149)
!1171 = !DILocation(line: 150, column: 24, scope: !1149)
!1172 = !DILocation(line: 150, column: 6, scope: !1149)
!1173 = !DILocation(line: 151, column: 3, scope: !1149)
!1174 = distinct !DISubprogram(name: "set_quoting_flags", scope: !232, file: !232, line: 159, type: !1175, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1177)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!28, !1114, !28}
!1177 = !{!1178, !1179, !1180}
!1178 = !DILocalVariable(name: "o", arg: 1, scope: !1174, file: !232, line: 159, type: !1114)
!1179 = !DILocalVariable(name: "i", arg: 2, scope: !1174, file: !232, line: 159, type: !28)
!1180 = !DILocalVariable(name: "r", scope: !1174, file: !232, line: 163, type: !28)
!1181 = !DILocation(line: 0, scope: !1174)
!1182 = !DILocation(line: 161, column: 8, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1174, file: !232, line: 161, column: 7)
!1184 = !DILocation(line: 161, column: 7, scope: !1174)
!1185 = !DILocation(line: 163, column: 14, scope: !1174)
!1186 = !{!1136, !516, i64 4}
!1187 = !DILocation(line: 164, column: 12, scope: !1174)
!1188 = !DILocation(line: 165, column: 3, scope: !1174)
!1189 = distinct !DISubprogram(name: "set_custom_quoting", scope: !232, file: !232, line: 169, type: !1190, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1192)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !1114, !33, !33}
!1192 = !{!1193, !1194, !1195}
!1193 = !DILocalVariable(name: "o", arg: 1, scope: !1189, file: !232, line: 169, type: !1114)
!1194 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1189, file: !232, line: 170, type: !33)
!1195 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1189, file: !232, line: 170, type: !33)
!1196 = !DILocation(line: 0, scope: !1189)
!1197 = !DILocation(line: 172, column: 8, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1189, file: !232, line: 172, column: 7)
!1199 = !DILocation(line: 172, column: 7, scope: !1189)
!1200 = !DILocation(line: 174, column: 6, scope: !1189)
!1201 = !DILocation(line: 174, column: 12, scope: !1189)
!1202 = !DILocation(line: 175, column: 8, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1189, file: !232, line: 175, column: 7)
!1204 = !DILocation(line: 175, column: 19, scope: !1203)
!1205 = !DILocation(line: 176, column: 5, scope: !1203)
!1206 = !DILocation(line: 177, column: 6, scope: !1189)
!1207 = !DILocation(line: 177, column: 17, scope: !1189)
!1208 = !{!1136, !434, i64 40}
!1209 = !DILocation(line: 178, column: 6, scope: !1189)
!1210 = !DILocation(line: 178, column: 18, scope: !1189)
!1211 = !{!1136, !434, i64 48}
!1212 = !DILocation(line: 179, column: 1, scope: !1189)
!1213 = distinct !DISubprogram(name: "quotearg_buffer", scope: !232, file: !232, line: 774, type: !1214, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!30, !25, !30, !33, !30, !1128}
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224}
!1217 = !DILocalVariable(name: "buffer", arg: 1, scope: !1213, file: !232, line: 774, type: !25)
!1218 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1213, file: !232, line: 774, type: !30)
!1219 = !DILocalVariable(name: "arg", arg: 3, scope: !1213, file: !232, line: 775, type: !33)
!1220 = !DILocalVariable(name: "argsize", arg: 4, scope: !1213, file: !232, line: 775, type: !30)
!1221 = !DILocalVariable(name: "o", arg: 5, scope: !1213, file: !232, line: 776, type: !1128)
!1222 = !DILocalVariable(name: "p", scope: !1213, file: !232, line: 778, type: !1128)
!1223 = !DILocalVariable(name: "saved_errno", scope: !1213, file: !232, line: 779, type: !28)
!1224 = !DILocalVariable(name: "r", scope: !1213, file: !232, line: 780, type: !30)
!1225 = !DILocation(line: 0, scope: !1213)
!1226 = !DILocation(line: 778, column: 37, scope: !1213)
!1227 = !DILocation(line: 779, column: 21, scope: !1213)
!1228 = !DILocation(line: 781, column: 43, scope: !1213)
!1229 = !DILocation(line: 781, column: 53, scope: !1213)
!1230 = !DILocation(line: 781, column: 60, scope: !1213)
!1231 = !DILocation(line: 782, column: 43, scope: !1213)
!1232 = !DILocation(line: 782, column: 58, scope: !1213)
!1233 = !DILocation(line: 780, column: 14, scope: !1213)
!1234 = !DILocation(line: 783, column: 9, scope: !1213)
!1235 = !DILocation(line: 784, column: 3, scope: !1213)
!1236 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !232, file: !232, line: 251, type: !1237, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1241)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!30, !25, !30, !33, !30, !234, !28, !1239, !33, !33}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1266, !1268, !1271, !1272, !1273, !1274, !1277, !1278, !1281, !1285, !1286, !1294, !1297, !1298, !1300, !1301, !1302, !1303}
!1242 = !DILocalVariable(name: "buffer", arg: 1, scope: !1236, file: !232, line: 251, type: !25)
!1243 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1236, file: !232, line: 251, type: !30)
!1244 = !DILocalVariable(name: "arg", arg: 3, scope: !1236, file: !232, line: 252, type: !33)
!1245 = !DILocalVariable(name: "argsize", arg: 4, scope: !1236, file: !232, line: 252, type: !30)
!1246 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1236, file: !232, line: 253, type: !234)
!1247 = !DILocalVariable(name: "flags", arg: 6, scope: !1236, file: !232, line: 253, type: !28)
!1248 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1236, file: !232, line: 254, type: !1239)
!1249 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1236, file: !232, line: 255, type: !33)
!1250 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1236, file: !232, line: 256, type: !33)
!1251 = !DILocalVariable(name: "unibyte_locale", scope: !1236, file: !232, line: 258, type: !50)
!1252 = !DILocalVariable(name: "len", scope: !1236, file: !232, line: 260, type: !30)
!1253 = !DILocalVariable(name: "orig_buffersize", scope: !1236, file: !232, line: 261, type: !30)
!1254 = !DILocalVariable(name: "quote_string", scope: !1236, file: !232, line: 262, type: !33)
!1255 = !DILocalVariable(name: "quote_string_len", scope: !1236, file: !232, line: 263, type: !30)
!1256 = !DILocalVariable(name: "backslash_escapes", scope: !1236, file: !232, line: 264, type: !50)
!1257 = !DILocalVariable(name: "elide_outer_quotes", scope: !1236, file: !232, line: 265, type: !50)
!1258 = !DILocalVariable(name: "encountered_single_quote", scope: !1236, file: !232, line: 266, type: !50)
!1259 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1236, file: !232, line: 267, type: !50)
!1260 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1236, file: !232, line: 309, type: !50)
!1261 = !DILocalVariable(name: "lq", scope: !1262, file: !232, line: 361, type: !33)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !232, line: 361, column: 11)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !232, line: 360, column: 13)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !232, line: 333, column: 7)
!1265 = distinct !DILexicalBlock(scope: !1236, file: !232, line: 312, column: 5)
!1266 = !DILocalVariable(name: "i", scope: !1267, file: !232, line: 395, type: !30)
!1267 = distinct !DILexicalBlock(scope: !1236, file: !232, line: 395, column: 3)
!1268 = !DILocalVariable(name: "is_right_quote", scope: !1269, file: !232, line: 397, type: !50)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !232, line: 396, column: 5)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !232, line: 395, column: 3)
!1271 = !DILocalVariable(name: "escaping", scope: !1269, file: !232, line: 398, type: !50)
!1272 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1269, file: !232, line: 399, type: !50)
!1273 = !DILocalVariable(name: "c", scope: !1269, file: !232, line: 417, type: !35)
!1274 = !DILocalVariable(name: "m", scope: !1275, file: !232, line: 598, type: !30)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 596, column: 11)
!1276 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 419, column: 9)
!1277 = !DILocalVariable(name: "printable", scope: !1275, file: !232, line: 600, type: !50)
!1278 = !DILocalVariable(name: "mbs", scope: !1279, file: !232, line: 609, type: !291)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !232, line: 608, column: 15)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !232, line: 602, column: 17)
!1281 = !DILocalVariable(name: "w", scope: !1282, file: !232, line: 618, type: !208)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !232, line: 617, column: 19)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !232, line: 616, column: 17)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !232, line: 616, column: 17)
!1285 = !DILocalVariable(name: "bytes", scope: !1282, file: !232, line: 619, type: !30)
!1286 = !DILocalVariable(name: "j", scope: !1287, file: !232, line: 648, type: !30)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !232, line: 648, column: 29)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !232, line: 647, column: 27)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !232, line: 645, column: 29)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !232, line: 636, column: 23)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !232, line: 628, column: 30)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !232, line: 623, column: 30)
!1293 = distinct !DILexicalBlock(scope: !1282, file: !232, line: 621, column: 25)
!1294 = !DILocalVariable(name: "ilim", scope: !1295, file: !232, line: 674, type: !30)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !232, line: 671, column: 15)
!1296 = distinct !DILexicalBlock(scope: !1275, file: !232, line: 670, column: 17)
!1297 = !DILabel(scope: !1236, name: "process_input", file: !232, line: 308)
!1298 = !DILabel(scope: !1299, name: "c_and_shell_escape", file: !232, line: 502)
!1299 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 478, column: 9)
!1300 = !DILabel(scope: !1299, name: "c_escape", file: !232, line: 507)
!1301 = !DILabel(scope: !1269, name: "store_escape", file: !232, line: 709)
!1302 = !DILabel(scope: !1269, name: "store_c", file: !232, line: 712)
!1303 = !DILabel(scope: !1236, name: "force_outer_quoting_style", file: !232, line: 753)
!1304 = !DILocation(line: 0, scope: !1236)
!1305 = !DILocation(line: 258, column: 25, scope: !1236)
!1306 = !DILocation(line: 258, column: 36, scope: !1236)
!1307 = !DILocation(line: 267, column: 3, scope: !1236)
!1308 = !DILocation(line: 261, column: 10, scope: !1236)
!1309 = !DILocation(line: 262, column: 15, scope: !1236)
!1310 = !DILocation(line: 263, column: 10, scope: !1236)
!1311 = !DILocation(line: 308, column: 2, scope: !1236)
!1312 = !DILocation(line: 311, column: 3, scope: !1236)
!1313 = !DILocation(line: 318, column: 11, scope: !1265)
!1314 = !DILocation(line: 319, column: 9, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !232, line: 319, column: 9)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !232, line: 319, column: 9)
!1317 = distinct !DILexicalBlock(scope: !1265, file: !232, line: 318, column: 11)
!1318 = !DILocation(line: 319, column: 9, scope: !1316)
!1319 = !DILocation(line: 0, scope: !282, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 357, column: 26, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !232, line: 335, column: 11)
!1322 = distinct !DILexicalBlock(scope: !1264, file: !232, line: 334, column: 13)
!1323 = !DILocation(line: 199, column: 29, scope: !282, inlinedAt: !1320)
!1324 = !DILocation(line: 201, column: 19, scope: !1325, inlinedAt: !1320)
!1325 = distinct !DILexicalBlock(scope: !282, file: !232, line: 201, column: 7)
!1326 = !DILocation(line: 201, column: 7, scope: !282, inlinedAt: !1320)
!1327 = !DILocation(line: 229, column: 3, scope: !282, inlinedAt: !1320)
!1328 = !DILocation(line: 230, column: 3, scope: !282, inlinedAt: !1320)
!1329 = !DILocation(line: 230, column: 13, scope: !282, inlinedAt: !1320)
!1330 = !DILocalVariable(name: "ps", arg: 1, scope: !1331, file: !1082, line: 1135, type: !1334)
!1331 = distinct !DISubprogram(name: "mbszero", scope: !1082, file: !1082, line: 1135, type: !1332, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1335)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1335 = !{!1330}
!1336 = !DILocation(line: 0, scope: !1331, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 230, column: 18, scope: !282, inlinedAt: !1320)
!1338 = !DILocalVariable(name: "__dest", arg: 1, scope: !1339, file: !1091, line: 57, type: !27)
!1339 = distinct !DISubprogram(name: "memset", scope: !1091, file: !1091, line: 57, type: !1092, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1340)
!1340 = !{!1338, !1341, !1342}
!1341 = !DILocalVariable(name: "__ch", arg: 2, scope: !1339, file: !1091, line: 57, type: !28)
!1342 = !DILocalVariable(name: "__len", arg: 3, scope: !1339, file: !1091, line: 57, type: !30)
!1343 = !DILocation(line: 0, scope: !1339, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 1137, column: 3, scope: !1331, inlinedAt: !1337)
!1345 = !DILocation(line: 59, column: 10, scope: !1339, inlinedAt: !1344)
!1346 = !DILocation(line: 231, column: 7, scope: !1347, inlinedAt: !1320)
!1347 = distinct !DILexicalBlock(scope: !282, file: !232, line: 231, column: 7)
!1348 = !DILocation(line: 231, column: 40, scope: !1347, inlinedAt: !1320)
!1349 = !DILocation(line: 231, column: 45, scope: !1347, inlinedAt: !1320)
!1350 = !DILocation(line: 235, column: 1, scope: !282, inlinedAt: !1320)
!1351 = !DILocation(line: 0, scope: !282, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 358, column: 27, scope: !1321)
!1353 = !DILocation(line: 199, column: 29, scope: !282, inlinedAt: !1352)
!1354 = !DILocation(line: 201, column: 19, scope: !1325, inlinedAt: !1352)
!1355 = !DILocation(line: 201, column: 7, scope: !282, inlinedAt: !1352)
!1356 = !DILocation(line: 229, column: 3, scope: !282, inlinedAt: !1352)
!1357 = !DILocation(line: 230, column: 3, scope: !282, inlinedAt: !1352)
!1358 = !DILocation(line: 230, column: 13, scope: !282, inlinedAt: !1352)
!1359 = !DILocation(line: 0, scope: !1331, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 230, column: 18, scope: !282, inlinedAt: !1352)
!1361 = !DILocation(line: 0, scope: !1339, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 1137, column: 3, scope: !1331, inlinedAt: !1360)
!1363 = !DILocation(line: 59, column: 10, scope: !1339, inlinedAt: !1362)
!1364 = !DILocation(line: 231, column: 7, scope: !1347, inlinedAt: !1352)
!1365 = !DILocation(line: 231, column: 40, scope: !1347, inlinedAt: !1352)
!1366 = !DILocation(line: 231, column: 45, scope: !1347, inlinedAt: !1352)
!1367 = !DILocation(line: 235, column: 1, scope: !282, inlinedAt: !1352)
!1368 = !DILocation(line: 360, column: 13, scope: !1264)
!1369 = !DILocation(line: 0, scope: !1262)
!1370 = !DILocation(line: 361, column: 45, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1262, file: !232, line: 361, column: 11)
!1372 = !DILocation(line: 361, column: 11, scope: !1262)
!1373 = !DILocation(line: 362, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !232, line: 362, column: 13)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !232, line: 362, column: 13)
!1376 = !DILocation(line: 362, column: 13, scope: !1375)
!1377 = !DILocation(line: 361, column: 52, scope: !1371)
!1378 = distinct !{!1378, !1372, !1379, !486}
!1379 = !DILocation(line: 362, column: 13, scope: !1262)
!1380 = !DILocation(line: 260, column: 10, scope: !1236)
!1381 = !DILocation(line: 365, column: 28, scope: !1264)
!1382 = !DILocation(line: 367, column: 7, scope: !1265)
!1383 = !DILocation(line: 370, column: 7, scope: !1265)
!1384 = !DILocation(line: 376, column: 11, scope: !1265)
!1385 = !DILocation(line: 381, column: 11, scope: !1265)
!1386 = !DILocation(line: 382, column: 9, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !232, line: 382, column: 9)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !232, line: 382, column: 9)
!1389 = distinct !DILexicalBlock(scope: !1265, file: !232, line: 381, column: 11)
!1390 = !DILocation(line: 382, column: 9, scope: !1388)
!1391 = !DILocation(line: 389, column: 7, scope: !1265)
!1392 = !DILocation(line: 392, column: 7, scope: !1265)
!1393 = !DILocation(line: 0, scope: !1267)
!1394 = !DILocation(line: 395, column: 8, scope: !1267)
!1395 = !DILocation(line: 395, column: 34, scope: !1270)
!1396 = !DILocation(line: 395, column: 26, scope: !1270)
!1397 = !DILocation(line: 395, column: 48, scope: !1270)
!1398 = !DILocation(line: 395, column: 55, scope: !1270)
!1399 = !DILocation(line: 395, column: 3, scope: !1267)
!1400 = !DILocation(line: 395, column: 67, scope: !1270)
!1401 = !DILocation(line: 0, scope: !1269)
!1402 = !DILocation(line: 402, column: 11, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 401, column: 11)
!1404 = !DILocation(line: 404, column: 17, scope: !1403)
!1405 = !DILocation(line: 405, column: 39, scope: !1403)
!1406 = !DILocation(line: 409, column: 32, scope: !1403)
!1407 = !DILocation(line: 405, column: 19, scope: !1403)
!1408 = !DILocation(line: 405, column: 15, scope: !1403)
!1409 = !DILocation(line: 410, column: 11, scope: !1403)
!1410 = !DILocation(line: 410, column: 25, scope: !1403)
!1411 = !DILocalVariable(name: "__s1", arg: 1, scope: !1412, file: !470, line: 974, type: !638)
!1412 = distinct !DISubprogram(name: "memeq", scope: !470, file: !470, line: 974, type: !1053, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1413)
!1413 = !{!1411, !1414, !1415}
!1414 = !DILocalVariable(name: "__s2", arg: 2, scope: !1412, file: !470, line: 974, type: !638)
!1415 = !DILocalVariable(name: "__n", arg: 3, scope: !1412, file: !470, line: 974, type: !30)
!1416 = !DILocation(line: 0, scope: !1412, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 410, column: 14, scope: !1403)
!1418 = !DILocation(line: 976, column: 11, scope: !1412, inlinedAt: !1417)
!1419 = !DILocation(line: 976, column: 10, scope: !1412, inlinedAt: !1417)
!1420 = !DILocation(line: 401, column: 11, scope: !1269)
!1421 = !DILocation(line: 417, column: 25, scope: !1269)
!1422 = !DILocation(line: 418, column: 7, scope: !1269)
!1423 = !DILocation(line: 421, column: 15, scope: !1276)
!1424 = !DILocation(line: 423, column: 15, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !232, line: 423, column: 15)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !232, line: 422, column: 13)
!1427 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 421, column: 15)
!1428 = !DILocation(line: 423, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !232, line: 423, column: 15)
!1430 = !DILocation(line: 423, column: 15, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !232, line: 423, column: 15)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !232, line: 423, column: 15)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !232, line: 423, column: 15)
!1434 = !DILocation(line: 423, column: 15, scope: !1432)
!1435 = !DILocation(line: 423, column: 15, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !232, line: 423, column: 15)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !232, line: 423, column: 15)
!1438 = !DILocation(line: 423, column: 15, scope: !1437)
!1439 = !DILocation(line: 423, column: 15, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !232, line: 423, column: 15)
!1441 = distinct !DILexicalBlock(scope: !1433, file: !232, line: 423, column: 15)
!1442 = !DILocation(line: 423, column: 15, scope: !1441)
!1443 = !DILocation(line: 423, column: 15, scope: !1433)
!1444 = !DILocation(line: 423, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !232, line: 423, column: 15)
!1446 = distinct !DILexicalBlock(scope: !1425, file: !232, line: 423, column: 15)
!1447 = !DILocation(line: 423, column: 15, scope: !1446)
!1448 = !DILocation(line: 431, column: 19, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1426, file: !232, line: 430, column: 19)
!1450 = !DILocation(line: 431, column: 24, scope: !1449)
!1451 = !DILocation(line: 431, column: 28, scope: !1449)
!1452 = !DILocation(line: 431, column: 38, scope: !1449)
!1453 = !DILocation(line: 431, column: 48, scope: !1449)
!1454 = !DILocation(line: 431, column: 59, scope: !1449)
!1455 = !DILocation(line: 433, column: 19, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !232, line: 433, column: 19)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !232, line: 433, column: 19)
!1458 = distinct !DILexicalBlock(scope: !1449, file: !232, line: 432, column: 17)
!1459 = !DILocation(line: 433, column: 19, scope: !1457)
!1460 = !DILocation(line: 434, column: 19, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !232, line: 434, column: 19)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !232, line: 434, column: 19)
!1463 = !DILocation(line: 434, column: 19, scope: !1462)
!1464 = !DILocation(line: 435, column: 17, scope: !1458)
!1465 = !DILocation(line: 442, column: 20, scope: !1427)
!1466 = !DILocation(line: 447, column: 11, scope: !1276)
!1467 = !DILocation(line: 450, column: 19, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 448, column: 13)
!1469 = !DILocation(line: 456, column: 19, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1468, file: !232, line: 455, column: 19)
!1471 = !DILocation(line: 456, column: 24, scope: !1470)
!1472 = !DILocation(line: 456, column: 28, scope: !1470)
!1473 = !DILocation(line: 456, column: 38, scope: !1470)
!1474 = !DILocation(line: 456, column: 47, scope: !1470)
!1475 = !DILocation(line: 456, column: 41, scope: !1470)
!1476 = !DILocation(line: 456, column: 52, scope: !1470)
!1477 = !DILocation(line: 455, column: 19, scope: !1468)
!1478 = !DILocation(line: 457, column: 25, scope: !1470)
!1479 = !DILocation(line: 457, column: 17, scope: !1470)
!1480 = !DILocation(line: 464, column: 25, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1470, file: !232, line: 458, column: 19)
!1482 = !DILocation(line: 468, column: 21, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !232, line: 468, column: 21)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !232, line: 468, column: 21)
!1485 = !DILocation(line: 468, column: 21, scope: !1484)
!1486 = !DILocation(line: 469, column: 21, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !232, line: 469, column: 21)
!1488 = distinct !DILexicalBlock(scope: !1481, file: !232, line: 469, column: 21)
!1489 = !DILocation(line: 469, column: 21, scope: !1488)
!1490 = !DILocation(line: 470, column: 21, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !232, line: 470, column: 21)
!1492 = distinct !DILexicalBlock(scope: !1481, file: !232, line: 470, column: 21)
!1493 = !DILocation(line: 470, column: 21, scope: !1492)
!1494 = !DILocation(line: 471, column: 21, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !232, line: 471, column: 21)
!1496 = distinct !DILexicalBlock(scope: !1481, file: !232, line: 471, column: 21)
!1497 = !DILocation(line: 471, column: 21, scope: !1496)
!1498 = !DILocation(line: 472, column: 21, scope: !1481)
!1499 = !DILocation(line: 482, column: 33, scope: !1299)
!1500 = !DILocation(line: 483, column: 33, scope: !1299)
!1501 = !DILocation(line: 485, column: 33, scope: !1299)
!1502 = !DILocation(line: 486, column: 33, scope: !1299)
!1503 = !DILocation(line: 487, column: 33, scope: !1299)
!1504 = !DILocation(line: 490, column: 17, scope: !1299)
!1505 = !DILocation(line: 492, column: 21, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !232, line: 491, column: 15)
!1507 = distinct !DILexicalBlock(scope: !1299, file: !232, line: 490, column: 17)
!1508 = !DILocation(line: 499, column: 35, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1299, file: !232, line: 499, column: 17)
!1510 = !DILocation(line: 499, column: 57, scope: !1509)
!1511 = !DILocation(line: 0, scope: !1299)
!1512 = !DILocation(line: 502, column: 11, scope: !1299)
!1513 = !DILocation(line: 504, column: 17, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1299, file: !232, line: 503, column: 17)
!1515 = !DILocation(line: 507, column: 11, scope: !1299)
!1516 = !DILocation(line: 508, column: 17, scope: !1299)
!1517 = !DILocation(line: 517, column: 15, scope: !1276)
!1518 = !DILocation(line: 517, column: 40, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 517, column: 15)
!1520 = !DILocation(line: 517, column: 47, scope: !1519)
!1521 = !DILocation(line: 517, column: 18, scope: !1519)
!1522 = !DILocation(line: 521, column: 17, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 521, column: 15)
!1524 = !DILocation(line: 521, column: 15, scope: !1276)
!1525 = !DILocation(line: 525, column: 11, scope: !1276)
!1526 = !DILocation(line: 537, column: 15, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 536, column: 15)
!1528 = !DILocation(line: 536, column: 15, scope: !1276)
!1529 = !DILocation(line: 544, column: 15, scope: !1276)
!1530 = !DILocation(line: 546, column: 19, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !232, line: 545, column: 13)
!1532 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 544, column: 15)
!1533 = !DILocation(line: 549, column: 19, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !232, line: 549, column: 19)
!1535 = !DILocation(line: 549, column: 30, scope: !1534)
!1536 = !DILocation(line: 558, column: 15, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !232, line: 558, column: 15)
!1538 = distinct !DILexicalBlock(scope: !1531, file: !232, line: 558, column: 15)
!1539 = !DILocation(line: 558, column: 15, scope: !1538)
!1540 = !DILocation(line: 559, column: 15, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !232, line: 559, column: 15)
!1542 = distinct !DILexicalBlock(scope: !1531, file: !232, line: 559, column: 15)
!1543 = !DILocation(line: 559, column: 15, scope: !1542)
!1544 = !DILocation(line: 560, column: 15, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !232, line: 560, column: 15)
!1546 = distinct !DILexicalBlock(scope: !1531, file: !232, line: 560, column: 15)
!1547 = !DILocation(line: 560, column: 15, scope: !1546)
!1548 = !DILocation(line: 562, column: 13, scope: !1531)
!1549 = !DILocation(line: 602, column: 17, scope: !1275)
!1550 = !DILocation(line: 0, scope: !1275)
!1551 = !DILocation(line: 605, column: 29, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1280, file: !232, line: 603, column: 15)
!1553 = !DILocation(line: 605, column: 41, scope: !1552)
!1554 = !DILocation(line: 670, column: 23, scope: !1296)
!1555 = !DILocation(line: 609, column: 17, scope: !1279)
!1556 = !DILocation(line: 609, column: 27, scope: !1279)
!1557 = !DILocation(line: 0, scope: !1331, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 609, column: 32, scope: !1279)
!1559 = !DILocation(line: 0, scope: !1339, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 1137, column: 3, scope: !1331, inlinedAt: !1558)
!1561 = !DILocation(line: 59, column: 10, scope: !1339, inlinedAt: !1560)
!1562 = !DILocation(line: 613, column: 29, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1279, file: !232, line: 613, column: 21)
!1564 = !DILocation(line: 613, column: 21, scope: !1279)
!1565 = !DILocation(line: 614, column: 29, scope: !1563)
!1566 = !DILocation(line: 614, column: 19, scope: !1563)
!1567 = !DILocation(line: 618, column: 21, scope: !1282)
!1568 = !DILocation(line: 620, column: 54, scope: !1282)
!1569 = !DILocation(line: 0, scope: !1282)
!1570 = !DILocation(line: 619, column: 36, scope: !1282)
!1571 = !DILocation(line: 621, column: 25, scope: !1282)
!1572 = !DILocation(line: 631, column: 38, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1291, file: !232, line: 629, column: 23)
!1574 = !DILocation(line: 631, column: 48, scope: !1573)
!1575 = !DILocation(line: 665, column: 19, scope: !1283)
!1576 = !DILocation(line: 666, column: 15, scope: !1280)
!1577 = !DILocation(line: 626, column: 25, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1292, file: !232, line: 624, column: 23)
!1579 = !DILocation(line: 631, column: 51, scope: !1573)
!1580 = !DILocation(line: 631, column: 25, scope: !1573)
!1581 = !DILocation(line: 632, column: 28, scope: !1573)
!1582 = !DILocation(line: 631, column: 34, scope: !1573)
!1583 = distinct !{!1583, !1580, !1581, !486}
!1584 = !DILocation(line: 646, column: 29, scope: !1289)
!1585 = !DILocation(line: 0, scope: !1287)
!1586 = !DILocation(line: 649, column: 49, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1287, file: !232, line: 648, column: 29)
!1588 = !DILocation(line: 649, column: 39, scope: !1587)
!1589 = !DILocation(line: 649, column: 31, scope: !1587)
!1590 = !DILocation(line: 648, column: 60, scope: !1587)
!1591 = !DILocation(line: 648, column: 50, scope: !1587)
!1592 = !DILocation(line: 648, column: 29, scope: !1287)
!1593 = distinct !{!1593, !1592, !1594, !486}
!1594 = !DILocation(line: 654, column: 33, scope: !1287)
!1595 = !DILocation(line: 657, column: 43, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1290, file: !232, line: 657, column: 29)
!1597 = !DILocalVariable(name: "wc", arg: 1, scope: !1598, file: !1599, line: 865, type: !1602)
!1598 = distinct !DISubprogram(name: "c32isprint", scope: !1599, file: !1599, line: 865, type: !1600, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1604)
!1599 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!28, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1603, line: 20, baseType: !6)
!1603 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1604 = !{!1597}
!1605 = !DILocation(line: 0, scope: !1598, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 657, column: 31, scope: !1596)
!1607 = !DILocation(line: 871, column: 10, scope: !1598, inlinedAt: !1606)
!1608 = !DILocation(line: 657, column: 31, scope: !1596)
!1609 = !DILocation(line: 664, column: 23, scope: !1282)
!1610 = !DILocation(line: 753, column: 2, scope: !1236)
!1611 = !DILocation(line: 756, column: 51, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1236, file: !232, line: 756, column: 7)
!1613 = !DILocation(line: 670, column: 19, scope: !1296)
!1614 = !DILocation(line: 670, column: 45, scope: !1296)
!1615 = !DILocation(line: 674, column: 33, scope: !1295)
!1616 = !DILocation(line: 0, scope: !1295)
!1617 = !DILocation(line: 676, column: 17, scope: !1295)
!1618 = !DILocation(line: 398, column: 12, scope: !1269)
!1619 = !DILocation(line: 678, column: 43, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !232, line: 678, column: 25)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !232, line: 677, column: 19)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !232, line: 676, column: 17)
!1623 = distinct !DILexicalBlock(scope: !1295, file: !232, line: 676, column: 17)
!1624 = !DILocation(line: 680, column: 25, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !232, line: 680, column: 25)
!1626 = distinct !DILexicalBlock(scope: !1620, file: !232, line: 679, column: 23)
!1627 = !DILocation(line: 680, column: 25, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !232, line: 680, column: 25)
!1629 = !DILocation(line: 680, column: 25, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !232, line: 680, column: 25)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !232, line: 680, column: 25)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !232, line: 680, column: 25)
!1633 = !DILocation(line: 680, column: 25, scope: !1631)
!1634 = !DILocation(line: 680, column: 25, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !232, line: 680, column: 25)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !232, line: 680, column: 25)
!1637 = !DILocation(line: 680, column: 25, scope: !1636)
!1638 = !DILocation(line: 680, column: 25, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !232, line: 680, column: 25)
!1640 = distinct !DILexicalBlock(scope: !1632, file: !232, line: 680, column: 25)
!1641 = !DILocation(line: 680, column: 25, scope: !1640)
!1642 = !DILocation(line: 680, column: 25, scope: !1632)
!1643 = !DILocation(line: 680, column: 25, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !232, line: 680, column: 25)
!1645 = distinct !DILexicalBlock(scope: !1625, file: !232, line: 680, column: 25)
!1646 = !DILocation(line: 680, column: 25, scope: !1645)
!1647 = !DILocation(line: 681, column: 25, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !232, line: 681, column: 25)
!1649 = distinct !DILexicalBlock(scope: !1626, file: !232, line: 681, column: 25)
!1650 = !DILocation(line: 681, column: 25, scope: !1649)
!1651 = !DILocation(line: 682, column: 25, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !232, line: 682, column: 25)
!1653 = distinct !DILexicalBlock(scope: !1626, file: !232, line: 682, column: 25)
!1654 = !DILocation(line: 682, column: 25, scope: !1653)
!1655 = !DILocation(line: 683, column: 38, scope: !1626)
!1656 = !DILocation(line: 683, column: 33, scope: !1626)
!1657 = !DILocation(line: 684, column: 23, scope: !1626)
!1658 = !DILocation(line: 685, column: 30, scope: !1620)
!1659 = !DILocation(line: 687, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !232, line: 687, column: 25)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !232, line: 687, column: 25)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !232, line: 686, column: 23)
!1663 = distinct !DILexicalBlock(scope: !1620, file: !232, line: 685, column: 30)
!1664 = !DILocation(line: 687, column: 25, scope: !1661)
!1665 = !DILocation(line: 689, column: 23, scope: !1662)
!1666 = !DILocation(line: 690, column: 35, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1621, file: !232, line: 690, column: 25)
!1668 = !DILocation(line: 690, column: 30, scope: !1667)
!1669 = !DILocation(line: 690, column: 25, scope: !1621)
!1670 = !DILocation(line: 692, column: 21, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !232, line: 692, column: 21)
!1672 = distinct !DILexicalBlock(scope: !1621, file: !232, line: 692, column: 21)
!1673 = !DILocation(line: 692, column: 21, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !232, line: 692, column: 21)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !232, line: 692, column: 21)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !232, line: 692, column: 21)
!1677 = !DILocation(line: 692, column: 21, scope: !1675)
!1678 = !DILocation(line: 692, column: 21, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !232, line: 692, column: 21)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !232, line: 692, column: 21)
!1681 = !DILocation(line: 692, column: 21, scope: !1680)
!1682 = !DILocation(line: 692, column: 21, scope: !1676)
!1683 = !DILocation(line: 0, scope: !1621)
!1684 = !DILocation(line: 693, column: 21, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !232, line: 693, column: 21)
!1686 = distinct !DILexicalBlock(scope: !1621, file: !232, line: 693, column: 21)
!1687 = !DILocation(line: 693, column: 21, scope: !1686)
!1688 = !DILocation(line: 694, column: 25, scope: !1621)
!1689 = !DILocation(line: 676, column: 17, scope: !1622)
!1690 = distinct !{!1690, !1691, !1692}
!1691 = !DILocation(line: 676, column: 17, scope: !1623)
!1692 = !DILocation(line: 695, column: 19, scope: !1623)
!1693 = !DILocation(line: 409, column: 30, scope: !1403)
!1694 = !DILocation(line: 702, column: 34, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 702, column: 11)
!1696 = !DILocation(line: 704, column: 14, scope: !1695)
!1697 = !DILocation(line: 705, column: 14, scope: !1695)
!1698 = !DILocation(line: 705, column: 35, scope: !1695)
!1699 = !DILocation(line: 705, column: 17, scope: !1695)
!1700 = !DILocation(line: 705, column: 47, scope: !1695)
!1701 = !DILocation(line: 705, column: 65, scope: !1695)
!1702 = !DILocation(line: 706, column: 11, scope: !1695)
!1703 = !DILocation(line: 702, column: 11, scope: !1269)
!1704 = !DILocation(line: 395, column: 15, scope: !1267)
!1705 = !DILocation(line: 709, column: 5, scope: !1269)
!1706 = !DILocation(line: 710, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 710, column: 7)
!1708 = !DILocation(line: 710, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1707, file: !232, line: 710, column: 7)
!1710 = !DILocation(line: 710, column: 7, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !232, line: 710, column: 7)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !232, line: 710, column: 7)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !232, line: 710, column: 7)
!1714 = !DILocation(line: 710, column: 7, scope: !1712)
!1715 = !DILocation(line: 710, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !232, line: 710, column: 7)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !232, line: 710, column: 7)
!1718 = !DILocation(line: 710, column: 7, scope: !1717)
!1719 = !DILocation(line: 710, column: 7, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !232, line: 710, column: 7)
!1721 = distinct !DILexicalBlock(scope: !1713, file: !232, line: 710, column: 7)
!1722 = !DILocation(line: 710, column: 7, scope: !1721)
!1723 = !DILocation(line: 710, column: 7, scope: !1713)
!1724 = !DILocation(line: 710, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !232, line: 710, column: 7)
!1726 = distinct !DILexicalBlock(scope: !1707, file: !232, line: 710, column: 7)
!1727 = !DILocation(line: 710, column: 7, scope: !1726)
!1728 = !DILocation(line: 712, column: 5, scope: !1269)
!1729 = !DILocation(line: 713, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !232, line: 713, column: 7)
!1731 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 713, column: 7)
!1732 = !DILocation(line: 417, column: 21, scope: !1269)
!1733 = !DILocation(line: 713, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !232, line: 713, column: 7)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !232, line: 713, column: 7)
!1736 = distinct !DILexicalBlock(scope: !1730, file: !232, line: 713, column: 7)
!1737 = !DILocation(line: 713, column: 7, scope: !1735)
!1738 = !DILocation(line: 713, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !232, line: 713, column: 7)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !232, line: 713, column: 7)
!1741 = !DILocation(line: 713, column: 7, scope: !1740)
!1742 = !DILocation(line: 713, column: 7, scope: !1736)
!1743 = !DILocation(line: 714, column: 7, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !232, line: 714, column: 7)
!1745 = distinct !DILexicalBlock(scope: !1269, file: !232, line: 714, column: 7)
!1746 = !DILocation(line: 714, column: 7, scope: !1745)
!1747 = !DILocation(line: 716, column: 11, scope: !1269)
!1748 = !DILocation(line: 718, column: 5, scope: !1270)
!1749 = !DILocation(line: 395, column: 82, scope: !1270)
!1750 = !DILocation(line: 395, column: 3, scope: !1270)
!1751 = distinct !{!1751, !1399, !1752, !486}
!1752 = !DILocation(line: 718, column: 5, scope: !1267)
!1753 = !DILocation(line: 720, column: 11, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1236, file: !232, line: 720, column: 7)
!1755 = !DILocation(line: 720, column: 16, scope: !1754)
!1756 = !DILocation(line: 728, column: 51, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1236, file: !232, line: 728, column: 7)
!1758 = !DILocation(line: 731, column: 11, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1757, file: !232, line: 730, column: 5)
!1760 = !DILocation(line: 732, column: 16, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1759, file: !232, line: 731, column: 11)
!1762 = !DILocation(line: 732, column: 9, scope: !1761)
!1763 = !DILocation(line: 736, column: 18, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !232, line: 736, column: 16)
!1765 = !DILocation(line: 736, column: 29, scope: !1764)
!1766 = !DILocation(line: 745, column: 7, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1236, file: !232, line: 745, column: 7)
!1768 = !DILocation(line: 745, column: 20, scope: !1767)
!1769 = !DILocation(line: 746, column: 12, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !232, line: 746, column: 5)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !232, line: 746, column: 5)
!1772 = !DILocation(line: 746, column: 5, scope: !1771)
!1773 = !DILocation(line: 747, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !232, line: 747, column: 7)
!1775 = distinct !DILexicalBlock(scope: !1770, file: !232, line: 747, column: 7)
!1776 = !DILocation(line: 747, column: 7, scope: !1775)
!1777 = !DILocation(line: 746, column: 39, scope: !1770)
!1778 = distinct !{!1778, !1772, !1779, !486}
!1779 = !DILocation(line: 747, column: 7, scope: !1771)
!1780 = !DILocation(line: 749, column: 11, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1236, file: !232, line: 749, column: 7)
!1782 = !DILocation(line: 749, column: 7, scope: !1236)
!1783 = !DILocation(line: 750, column: 5, scope: !1781)
!1784 = !DILocation(line: 750, column: 17, scope: !1781)
!1785 = !DILocation(line: 756, column: 21, scope: !1612)
!1786 = !DILocation(line: 760, column: 42, scope: !1236)
!1787 = !DILocation(line: 758, column: 10, scope: !1236)
!1788 = !DILocation(line: 758, column: 3, scope: !1236)
!1789 = !DILocation(line: 762, column: 1, scope: !1236)
!1790 = !DISubprogram(name: "iswprint", scope: !1791, file: !1791, line: 120, type: !1600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!1791 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1792 = distinct !DISubprogram(name: "quotearg_alloc", scope: !232, file: !232, line: 788, type: !1793, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1795)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!25, !33, !30, !1128}
!1795 = !{!1796, !1797, !1798}
!1796 = !DILocalVariable(name: "arg", arg: 1, scope: !1792, file: !232, line: 788, type: !33)
!1797 = !DILocalVariable(name: "argsize", arg: 2, scope: !1792, file: !232, line: 788, type: !30)
!1798 = !DILocalVariable(name: "o", arg: 3, scope: !1792, file: !232, line: 789, type: !1128)
!1799 = !DILocation(line: 0, scope: !1792)
!1800 = !DILocalVariable(name: "arg", arg: 1, scope: !1801, file: !232, line: 801, type: !33)
!1801 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !232, file: !232, line: 801, type: !1802, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!25, !33, !30, !364, !1128}
!1804 = !{!1800, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1805 = !DILocalVariable(name: "argsize", arg: 2, scope: !1801, file: !232, line: 801, type: !30)
!1806 = !DILocalVariable(name: "size", arg: 3, scope: !1801, file: !232, line: 801, type: !364)
!1807 = !DILocalVariable(name: "o", arg: 4, scope: !1801, file: !232, line: 802, type: !1128)
!1808 = !DILocalVariable(name: "p", scope: !1801, file: !232, line: 804, type: !1128)
!1809 = !DILocalVariable(name: "saved_errno", scope: !1801, file: !232, line: 805, type: !28)
!1810 = !DILocalVariable(name: "flags", scope: !1801, file: !232, line: 807, type: !28)
!1811 = !DILocalVariable(name: "bufsize", scope: !1801, file: !232, line: 808, type: !30)
!1812 = !DILocalVariable(name: "buf", scope: !1801, file: !232, line: 812, type: !25)
!1813 = !DILocation(line: 0, scope: !1801, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 791, column: 10, scope: !1792)
!1815 = !DILocation(line: 804, column: 37, scope: !1801, inlinedAt: !1814)
!1816 = !DILocation(line: 805, column: 21, scope: !1801, inlinedAt: !1814)
!1817 = !DILocation(line: 807, column: 18, scope: !1801, inlinedAt: !1814)
!1818 = !DILocation(line: 807, column: 24, scope: !1801, inlinedAt: !1814)
!1819 = !DILocation(line: 808, column: 72, scope: !1801, inlinedAt: !1814)
!1820 = !DILocation(line: 809, column: 53, scope: !1801, inlinedAt: !1814)
!1821 = !DILocation(line: 810, column: 49, scope: !1801, inlinedAt: !1814)
!1822 = !DILocation(line: 811, column: 49, scope: !1801, inlinedAt: !1814)
!1823 = !DILocation(line: 808, column: 20, scope: !1801, inlinedAt: !1814)
!1824 = !DILocation(line: 811, column: 62, scope: !1801, inlinedAt: !1814)
!1825 = !DILocation(line: 812, column: 15, scope: !1801, inlinedAt: !1814)
!1826 = !DILocation(line: 813, column: 60, scope: !1801, inlinedAt: !1814)
!1827 = !DILocation(line: 815, column: 32, scope: !1801, inlinedAt: !1814)
!1828 = !DILocation(line: 815, column: 47, scope: !1801, inlinedAt: !1814)
!1829 = !DILocation(line: 813, column: 3, scope: !1801, inlinedAt: !1814)
!1830 = !DILocation(line: 816, column: 9, scope: !1801, inlinedAt: !1814)
!1831 = !DILocation(line: 791, column: 3, scope: !1792)
!1832 = !DILocation(line: 0, scope: !1801)
!1833 = !DILocation(line: 804, column: 37, scope: !1801)
!1834 = !DILocation(line: 805, column: 21, scope: !1801)
!1835 = !DILocation(line: 807, column: 18, scope: !1801)
!1836 = !DILocation(line: 807, column: 27, scope: !1801)
!1837 = !DILocation(line: 807, column: 24, scope: !1801)
!1838 = !DILocation(line: 808, column: 72, scope: !1801)
!1839 = !DILocation(line: 809, column: 53, scope: !1801)
!1840 = !DILocation(line: 810, column: 49, scope: !1801)
!1841 = !DILocation(line: 811, column: 49, scope: !1801)
!1842 = !DILocation(line: 808, column: 20, scope: !1801)
!1843 = !DILocation(line: 811, column: 62, scope: !1801)
!1844 = !DILocation(line: 812, column: 15, scope: !1801)
!1845 = !DILocation(line: 813, column: 60, scope: !1801)
!1846 = !DILocation(line: 815, column: 32, scope: !1801)
!1847 = !DILocation(line: 815, column: 47, scope: !1801)
!1848 = !DILocation(line: 813, column: 3, scope: !1801)
!1849 = !DILocation(line: 816, column: 9, scope: !1801)
!1850 = !DILocation(line: 817, column: 7, scope: !1801)
!1851 = !DILocation(line: 818, column: 11, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1801, file: !232, line: 817, column: 7)
!1853 = !{!950, !950, i64 0}
!1854 = !DILocation(line: 818, column: 5, scope: !1852)
!1855 = !DILocation(line: 819, column: 3, scope: !1801)
!1856 = distinct !DISubprogram(name: "quotearg_free", scope: !232, file: !232, line: 837, type: !187, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1857)
!1857 = !{!1858, !1859}
!1858 = !DILocalVariable(name: "sv", scope: !1856, file: !232, line: 839, type: !305)
!1859 = !DILocalVariable(name: "i", scope: !1860, file: !232, line: 840, type: !28)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !232, line: 840, column: 3)
!1861 = !DILocation(line: 839, column: 24, scope: !1856)
!1862 = !DILocation(line: 0, scope: !1856)
!1863 = !DILocation(line: 0, scope: !1860)
!1864 = !DILocation(line: 840, column: 21, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !232, line: 840, column: 3)
!1866 = !DILocation(line: 840, column: 3, scope: !1860)
!1867 = !DILocation(line: 842, column: 13, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1856, file: !232, line: 842, column: 7)
!1869 = !{!1870, !434, i64 8}
!1870 = !{!"slotvec", !950, i64 0, !434, i64 8}
!1871 = !DILocation(line: 842, column: 17, scope: !1868)
!1872 = !DILocation(line: 842, column: 7, scope: !1856)
!1873 = !DILocation(line: 841, column: 17, scope: !1865)
!1874 = !DILocation(line: 841, column: 5, scope: !1865)
!1875 = !DILocation(line: 840, column: 32, scope: !1865)
!1876 = distinct !{!1876, !1866, !1877, !486}
!1877 = !DILocation(line: 841, column: 20, scope: !1860)
!1878 = !DILocation(line: 844, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1868, file: !232, line: 843, column: 5)
!1880 = !DILocation(line: 845, column: 21, scope: !1879)
!1881 = !{!1870, !950, i64 0}
!1882 = !DILocation(line: 846, column: 20, scope: !1879)
!1883 = !DILocation(line: 847, column: 5, scope: !1879)
!1884 = !DILocation(line: 848, column: 10, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1856, file: !232, line: 848, column: 7)
!1886 = !DILocation(line: 848, column: 7, scope: !1856)
!1887 = !DILocation(line: 850, column: 13, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !232, line: 849, column: 5)
!1889 = !DILocation(line: 850, column: 7, scope: !1888)
!1890 = !DILocation(line: 851, column: 15, scope: !1888)
!1891 = !DILocation(line: 852, column: 5, scope: !1888)
!1892 = !DILocation(line: 853, column: 10, scope: !1856)
!1893 = !DILocation(line: 854, column: 1, scope: !1856)
!1894 = distinct !DISubprogram(name: "quotearg_n", scope: !232, file: !232, line: 919, type: !623, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1895)
!1895 = !{!1896, !1897}
!1896 = !DILocalVariable(name: "n", arg: 1, scope: !1894, file: !232, line: 919, type: !28)
!1897 = !DILocalVariable(name: "arg", arg: 2, scope: !1894, file: !232, line: 919, type: !33)
!1898 = !DILocation(line: 0, scope: !1894)
!1899 = !DILocation(line: 921, column: 10, scope: !1894)
!1900 = !DILocation(line: 921, column: 3, scope: !1894)
!1901 = distinct !DISubprogram(name: "quotearg_n_options", scope: !232, file: !232, line: 866, type: !1902, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!25, !28, !33, !30, !1128}
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1915, !1916, !1918, !1919, !1920}
!1905 = !DILocalVariable(name: "n", arg: 1, scope: !1901, file: !232, line: 866, type: !28)
!1906 = !DILocalVariable(name: "arg", arg: 2, scope: !1901, file: !232, line: 866, type: !33)
!1907 = !DILocalVariable(name: "argsize", arg: 3, scope: !1901, file: !232, line: 866, type: !30)
!1908 = !DILocalVariable(name: "options", arg: 4, scope: !1901, file: !232, line: 867, type: !1128)
!1909 = !DILocalVariable(name: "saved_errno", scope: !1901, file: !232, line: 869, type: !28)
!1910 = !DILocalVariable(name: "sv", scope: !1901, file: !232, line: 871, type: !305)
!1911 = !DILocalVariable(name: "nslots_max", scope: !1901, file: !232, line: 873, type: !28)
!1912 = !DILocalVariable(name: "preallocated", scope: !1913, file: !232, line: 879, type: !50)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !232, line: 878, column: 5)
!1914 = distinct !DILexicalBlock(scope: !1901, file: !232, line: 877, column: 7)
!1915 = !DILocalVariable(name: "new_nslots", scope: !1913, file: !232, line: 880, type: !377)
!1916 = !DILocalVariable(name: "size", scope: !1917, file: !232, line: 891, type: !30)
!1917 = distinct !DILexicalBlock(scope: !1901, file: !232, line: 890, column: 3)
!1918 = !DILocalVariable(name: "val", scope: !1917, file: !232, line: 892, type: !25)
!1919 = !DILocalVariable(name: "flags", scope: !1917, file: !232, line: 894, type: !28)
!1920 = !DILocalVariable(name: "qsize", scope: !1917, file: !232, line: 895, type: !30)
!1921 = !DILocation(line: 0, scope: !1901)
!1922 = !DILocation(line: 869, column: 21, scope: !1901)
!1923 = !DILocation(line: 871, column: 24, scope: !1901)
!1924 = !DILocation(line: 874, column: 17, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1901, file: !232, line: 874, column: 7)
!1926 = !DILocation(line: 875, column: 5, scope: !1925)
!1927 = !DILocation(line: 877, column: 7, scope: !1914)
!1928 = !DILocation(line: 877, column: 14, scope: !1914)
!1929 = !DILocation(line: 877, column: 7, scope: !1901)
!1930 = !DILocation(line: 879, column: 31, scope: !1913)
!1931 = !DILocation(line: 0, scope: !1913)
!1932 = !DILocation(line: 880, column: 7, scope: !1913)
!1933 = !DILocation(line: 880, column: 26, scope: !1913)
!1934 = !DILocation(line: 880, column: 13, scope: !1913)
!1935 = !DILocation(line: 882, column: 31, scope: !1913)
!1936 = !DILocation(line: 883, column: 33, scope: !1913)
!1937 = !DILocation(line: 883, column: 42, scope: !1913)
!1938 = !DILocation(line: 883, column: 31, scope: !1913)
!1939 = !DILocation(line: 882, column: 22, scope: !1913)
!1940 = !DILocation(line: 882, column: 15, scope: !1913)
!1941 = !DILocation(line: 884, column: 11, scope: !1913)
!1942 = !DILocation(line: 885, column: 15, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1913, file: !232, line: 884, column: 11)
!1944 = !{i64 0, i64 8, !1853, i64 8, i64 8, !433}
!1945 = !DILocation(line: 885, column: 9, scope: !1943)
!1946 = !DILocation(line: 886, column: 20, scope: !1913)
!1947 = !DILocation(line: 886, column: 18, scope: !1913)
!1948 = !DILocation(line: 886, column: 15, scope: !1913)
!1949 = !DILocation(line: 886, column: 32, scope: !1913)
!1950 = !DILocation(line: 886, column: 43, scope: !1913)
!1951 = !DILocation(line: 886, column: 53, scope: !1913)
!1952 = !DILocation(line: 0, scope: !1339, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 886, column: 7, scope: !1913)
!1954 = !DILocation(line: 59, column: 10, scope: !1339, inlinedAt: !1953)
!1955 = !DILocation(line: 887, column: 16, scope: !1913)
!1956 = !DILocation(line: 887, column: 14, scope: !1913)
!1957 = !DILocation(line: 888, column: 5, scope: !1914)
!1958 = !DILocation(line: 888, column: 5, scope: !1913)
!1959 = !DILocation(line: 891, column: 19, scope: !1917)
!1960 = !DILocation(line: 891, column: 25, scope: !1917)
!1961 = !DILocation(line: 0, scope: !1917)
!1962 = !DILocation(line: 892, column: 23, scope: !1917)
!1963 = !DILocation(line: 894, column: 26, scope: !1917)
!1964 = !DILocation(line: 894, column: 32, scope: !1917)
!1965 = !DILocation(line: 896, column: 55, scope: !1917)
!1966 = !DILocation(line: 897, column: 46, scope: !1917)
!1967 = !DILocation(line: 898, column: 55, scope: !1917)
!1968 = !DILocation(line: 899, column: 55, scope: !1917)
!1969 = !DILocation(line: 895, column: 20, scope: !1917)
!1970 = !DILocation(line: 901, column: 14, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1917, file: !232, line: 901, column: 9)
!1972 = !DILocation(line: 901, column: 9, scope: !1917)
!1973 = !DILocation(line: 903, column: 35, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !232, line: 902, column: 7)
!1975 = !DILocation(line: 903, column: 20, scope: !1974)
!1976 = !DILocation(line: 904, column: 17, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !232, line: 904, column: 13)
!1978 = !DILocation(line: 904, column: 13, scope: !1974)
!1979 = !DILocation(line: 905, column: 11, scope: !1977)
!1980 = !DILocation(line: 906, column: 27, scope: !1974)
!1981 = !DILocation(line: 906, column: 19, scope: !1974)
!1982 = !DILocation(line: 907, column: 69, scope: !1974)
!1983 = !DILocation(line: 909, column: 44, scope: !1974)
!1984 = !DILocation(line: 910, column: 44, scope: !1974)
!1985 = !DILocation(line: 907, column: 9, scope: !1974)
!1986 = !DILocation(line: 911, column: 7, scope: !1974)
!1987 = !DILocation(line: 913, column: 11, scope: !1917)
!1988 = !DILocation(line: 914, column: 5, scope: !1917)
!1989 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !232, file: !232, line: 925, type: !1990, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!25, !28, !33, !30}
!1992 = !{!1993, !1994, !1995}
!1993 = !DILocalVariable(name: "n", arg: 1, scope: !1989, file: !232, line: 925, type: !28)
!1994 = !DILocalVariable(name: "arg", arg: 2, scope: !1989, file: !232, line: 925, type: !33)
!1995 = !DILocalVariable(name: "argsize", arg: 3, scope: !1989, file: !232, line: 925, type: !30)
!1996 = !DILocation(line: 0, scope: !1989)
!1997 = !DILocation(line: 927, column: 10, scope: !1989)
!1998 = !DILocation(line: 927, column: 3, scope: !1989)
!1999 = distinct !DISubprogram(name: "quotearg", scope: !232, file: !232, line: 931, type: !632, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2000)
!2000 = !{!2001}
!2001 = !DILocalVariable(name: "arg", arg: 1, scope: !1999, file: !232, line: 931, type: !33)
!2002 = !DILocation(line: 0, scope: !1999)
!2003 = !DILocation(line: 0, scope: !1894, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 933, column: 10, scope: !1999)
!2005 = !DILocation(line: 921, column: 10, scope: !1894, inlinedAt: !2004)
!2006 = !DILocation(line: 933, column: 3, scope: !1999)
!2007 = distinct !DISubprogram(name: "quotearg_mem", scope: !232, file: !232, line: 937, type: !2008, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!25, !33, !30}
!2010 = !{!2011, !2012}
!2011 = !DILocalVariable(name: "arg", arg: 1, scope: !2007, file: !232, line: 937, type: !33)
!2012 = !DILocalVariable(name: "argsize", arg: 2, scope: !2007, file: !232, line: 937, type: !30)
!2013 = !DILocation(line: 0, scope: !2007)
!2014 = !DILocation(line: 0, scope: !1989, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 939, column: 10, scope: !2007)
!2016 = !DILocation(line: 927, column: 10, scope: !1989, inlinedAt: !2015)
!2017 = !DILocation(line: 939, column: 3, scope: !2007)
!2018 = distinct !DISubprogram(name: "quotearg_n_style", scope: !232, file: !232, line: 943, type: !2019, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!25, !28, !234, !33}
!2021 = !{!2022, !2023, !2024, !2025}
!2022 = !DILocalVariable(name: "n", arg: 1, scope: !2018, file: !232, line: 943, type: !28)
!2023 = !DILocalVariable(name: "s", arg: 2, scope: !2018, file: !232, line: 943, type: !234)
!2024 = !DILocalVariable(name: "arg", arg: 3, scope: !2018, file: !232, line: 943, type: !33)
!2025 = !DILocalVariable(name: "o", scope: !2018, file: !232, line: 945, type: !1129)
!2026 = !DILocation(line: 0, scope: !2018)
!2027 = !DILocation(line: 945, column: 3, scope: !2018)
!2028 = !DILocation(line: 945, column: 32, scope: !2018)
!2029 = !{!2030}
!2030 = distinct !{!2030, !2031, !"quoting_options_from_style: argument 0"}
!2031 = distinct !{!2031, !"quoting_options_from_style"}
!2032 = !DILocation(line: 945, column: 36, scope: !2018)
!2033 = !DILocalVariable(name: "style", arg: 1, scope: !2034, file: !232, line: 183, type: !234)
!2034 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !232, file: !232, line: 183, type: !2035, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!263, !234}
!2037 = !{!2033, !2038}
!2038 = !DILocalVariable(name: "o", scope: !2034, file: !232, line: 185, type: !263)
!2039 = !DILocation(line: 0, scope: !2034, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 945, column: 36, scope: !2018)
!2041 = !DILocation(line: 185, column: 26, scope: !2034, inlinedAt: !2040)
!2042 = !DILocation(line: 186, column: 13, scope: !2043, inlinedAt: !2040)
!2043 = distinct !DILexicalBlock(scope: !2034, file: !232, line: 186, column: 7)
!2044 = !DILocation(line: 186, column: 7, scope: !2034, inlinedAt: !2040)
!2045 = !DILocation(line: 187, column: 5, scope: !2043, inlinedAt: !2040)
!2046 = !DILocation(line: 188, column: 5, scope: !2034, inlinedAt: !2040)
!2047 = !DILocation(line: 188, column: 11, scope: !2034, inlinedAt: !2040)
!2048 = !DILocation(line: 946, column: 10, scope: !2018)
!2049 = !DILocation(line: 947, column: 1, scope: !2018)
!2050 = !DILocation(line: 946, column: 3, scope: !2018)
!2051 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !232, file: !232, line: 950, type: !2052, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2054)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!25, !28, !234, !33, !30}
!2054 = !{!2055, !2056, !2057, !2058, !2059}
!2055 = !DILocalVariable(name: "n", arg: 1, scope: !2051, file: !232, line: 950, type: !28)
!2056 = !DILocalVariable(name: "s", arg: 2, scope: !2051, file: !232, line: 950, type: !234)
!2057 = !DILocalVariable(name: "arg", arg: 3, scope: !2051, file: !232, line: 951, type: !33)
!2058 = !DILocalVariable(name: "argsize", arg: 4, scope: !2051, file: !232, line: 951, type: !30)
!2059 = !DILocalVariable(name: "o", scope: !2051, file: !232, line: 953, type: !1129)
!2060 = !DILocation(line: 0, scope: !2051)
!2061 = !DILocation(line: 953, column: 3, scope: !2051)
!2062 = !DILocation(line: 953, column: 32, scope: !2051)
!2063 = !{!2064}
!2064 = distinct !{!2064, !2065, !"quoting_options_from_style: argument 0"}
!2065 = distinct !{!2065, !"quoting_options_from_style"}
!2066 = !DILocation(line: 953, column: 36, scope: !2051)
!2067 = !DILocation(line: 0, scope: !2034, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 953, column: 36, scope: !2051)
!2069 = !DILocation(line: 185, column: 26, scope: !2034, inlinedAt: !2068)
!2070 = !DILocation(line: 186, column: 13, scope: !2043, inlinedAt: !2068)
!2071 = !DILocation(line: 186, column: 7, scope: !2034, inlinedAt: !2068)
!2072 = !DILocation(line: 187, column: 5, scope: !2043, inlinedAt: !2068)
!2073 = !DILocation(line: 188, column: 5, scope: !2034, inlinedAt: !2068)
!2074 = !DILocation(line: 188, column: 11, scope: !2034, inlinedAt: !2068)
!2075 = !DILocation(line: 954, column: 10, scope: !2051)
!2076 = !DILocation(line: 955, column: 1, scope: !2051)
!2077 = !DILocation(line: 954, column: 3, scope: !2051)
!2078 = distinct !DISubprogram(name: "quotearg_style", scope: !232, file: !232, line: 958, type: !2079, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2081)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!25, !234, !33}
!2081 = !{!2082, !2083}
!2082 = !DILocalVariable(name: "s", arg: 1, scope: !2078, file: !232, line: 958, type: !234)
!2083 = !DILocalVariable(name: "arg", arg: 2, scope: !2078, file: !232, line: 958, type: !33)
!2084 = !DILocation(line: 0, scope: !2078)
!2085 = !DILocation(line: 0, scope: !2018, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 960, column: 10, scope: !2078)
!2087 = !DILocation(line: 945, column: 3, scope: !2018, inlinedAt: !2086)
!2088 = !DILocation(line: 945, column: 32, scope: !2018, inlinedAt: !2086)
!2089 = !{!2090}
!2090 = distinct !{!2090, !2091, !"quoting_options_from_style: argument 0"}
!2091 = distinct !{!2091, !"quoting_options_from_style"}
!2092 = !DILocation(line: 945, column: 36, scope: !2018, inlinedAt: !2086)
!2093 = !DILocation(line: 0, scope: !2034, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 945, column: 36, scope: !2018, inlinedAt: !2086)
!2095 = !DILocation(line: 185, column: 26, scope: !2034, inlinedAt: !2094)
!2096 = !DILocation(line: 186, column: 13, scope: !2043, inlinedAt: !2094)
!2097 = !DILocation(line: 186, column: 7, scope: !2034, inlinedAt: !2094)
!2098 = !DILocation(line: 187, column: 5, scope: !2043, inlinedAt: !2094)
!2099 = !DILocation(line: 188, column: 5, scope: !2034, inlinedAt: !2094)
!2100 = !DILocation(line: 188, column: 11, scope: !2034, inlinedAt: !2094)
!2101 = !DILocation(line: 946, column: 10, scope: !2018, inlinedAt: !2086)
!2102 = !DILocation(line: 947, column: 1, scope: !2018, inlinedAt: !2086)
!2103 = !DILocation(line: 960, column: 3, scope: !2078)
!2104 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !232, file: !232, line: 964, type: !2105, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!25, !234, !33, !30}
!2107 = !{!2108, !2109, !2110}
!2108 = !DILocalVariable(name: "s", arg: 1, scope: !2104, file: !232, line: 964, type: !234)
!2109 = !DILocalVariable(name: "arg", arg: 2, scope: !2104, file: !232, line: 964, type: !33)
!2110 = !DILocalVariable(name: "argsize", arg: 3, scope: !2104, file: !232, line: 964, type: !30)
!2111 = !DILocation(line: 0, scope: !2104)
!2112 = !DILocation(line: 0, scope: !2051, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 966, column: 10, scope: !2104)
!2114 = !DILocation(line: 953, column: 3, scope: !2051, inlinedAt: !2113)
!2115 = !DILocation(line: 953, column: 32, scope: !2051, inlinedAt: !2113)
!2116 = !{!2117}
!2117 = distinct !{!2117, !2118, !"quoting_options_from_style: argument 0"}
!2118 = distinct !{!2118, !"quoting_options_from_style"}
!2119 = !DILocation(line: 953, column: 36, scope: !2051, inlinedAt: !2113)
!2120 = !DILocation(line: 0, scope: !2034, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 953, column: 36, scope: !2051, inlinedAt: !2113)
!2122 = !DILocation(line: 185, column: 26, scope: !2034, inlinedAt: !2121)
!2123 = !DILocation(line: 186, column: 13, scope: !2043, inlinedAt: !2121)
!2124 = !DILocation(line: 186, column: 7, scope: !2034, inlinedAt: !2121)
!2125 = !DILocation(line: 187, column: 5, scope: !2043, inlinedAt: !2121)
!2126 = !DILocation(line: 188, column: 5, scope: !2034, inlinedAt: !2121)
!2127 = !DILocation(line: 188, column: 11, scope: !2034, inlinedAt: !2121)
!2128 = !DILocation(line: 954, column: 10, scope: !2051, inlinedAt: !2113)
!2129 = !DILocation(line: 955, column: 1, scope: !2051, inlinedAt: !2113)
!2130 = !DILocation(line: 966, column: 3, scope: !2104)
!2131 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !232, file: !232, line: 970, type: !2132, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!25, !33, !30, !26}
!2134 = !{!2135, !2136, !2137, !2138}
!2135 = !DILocalVariable(name: "arg", arg: 1, scope: !2131, file: !232, line: 970, type: !33)
!2136 = !DILocalVariable(name: "argsize", arg: 2, scope: !2131, file: !232, line: 970, type: !30)
!2137 = !DILocalVariable(name: "ch", arg: 3, scope: !2131, file: !232, line: 970, type: !26)
!2138 = !DILocalVariable(name: "options", scope: !2131, file: !232, line: 972, type: !263)
!2139 = !DILocation(line: 0, scope: !2131)
!2140 = !DILocation(line: 972, column: 3, scope: !2131)
!2141 = !DILocation(line: 972, column: 26, scope: !2131)
!2142 = !DILocation(line: 973, column: 13, scope: !2131)
!2143 = !{i64 0, i64 4, !524, i64 4, i64 4, !515, i64 8, i64 32, !524, i64 40, i64 8, !433, i64 48, i64 8, !433}
!2144 = !DILocation(line: 0, scope: !1149, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 974, column: 3, scope: !2131)
!2146 = !DILocation(line: 147, column: 62, scope: !1149, inlinedAt: !2145)
!2147 = !DILocation(line: 147, column: 57, scope: !1149, inlinedAt: !2145)
!2148 = !DILocation(line: 148, column: 15, scope: !1149, inlinedAt: !2145)
!2149 = !DILocation(line: 149, column: 21, scope: !1149, inlinedAt: !2145)
!2150 = !DILocation(line: 149, column: 24, scope: !1149, inlinedAt: !2145)
!2151 = !DILocation(line: 149, column: 34, scope: !1149, inlinedAt: !2145)
!2152 = !DILocation(line: 150, column: 19, scope: !1149, inlinedAt: !2145)
!2153 = !DILocation(line: 150, column: 24, scope: !1149, inlinedAt: !2145)
!2154 = !DILocation(line: 150, column: 6, scope: !1149, inlinedAt: !2145)
!2155 = !DILocation(line: 975, column: 10, scope: !2131)
!2156 = !DILocation(line: 976, column: 1, scope: !2131)
!2157 = !DILocation(line: 975, column: 3, scope: !2131)
!2158 = distinct !DISubprogram(name: "quotearg_char", scope: !232, file: !232, line: 979, type: !2159, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!25, !33, !26}
!2161 = !{!2162, !2163}
!2162 = !DILocalVariable(name: "arg", arg: 1, scope: !2158, file: !232, line: 979, type: !33)
!2163 = !DILocalVariable(name: "ch", arg: 2, scope: !2158, file: !232, line: 979, type: !26)
!2164 = !DILocation(line: 0, scope: !2158)
!2165 = !DILocation(line: 0, scope: !2131, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 981, column: 10, scope: !2158)
!2167 = !DILocation(line: 972, column: 3, scope: !2131, inlinedAt: !2166)
!2168 = !DILocation(line: 972, column: 26, scope: !2131, inlinedAt: !2166)
!2169 = !DILocation(line: 973, column: 13, scope: !2131, inlinedAt: !2166)
!2170 = !DILocation(line: 0, scope: !1149, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 974, column: 3, scope: !2131, inlinedAt: !2166)
!2172 = !DILocation(line: 147, column: 62, scope: !1149, inlinedAt: !2171)
!2173 = !DILocation(line: 147, column: 57, scope: !1149, inlinedAt: !2171)
!2174 = !DILocation(line: 148, column: 15, scope: !1149, inlinedAt: !2171)
!2175 = !DILocation(line: 149, column: 21, scope: !1149, inlinedAt: !2171)
!2176 = !DILocation(line: 149, column: 24, scope: !1149, inlinedAt: !2171)
!2177 = !DILocation(line: 149, column: 34, scope: !1149, inlinedAt: !2171)
!2178 = !DILocation(line: 150, column: 19, scope: !1149, inlinedAt: !2171)
!2179 = !DILocation(line: 150, column: 24, scope: !1149, inlinedAt: !2171)
!2180 = !DILocation(line: 150, column: 6, scope: !1149, inlinedAt: !2171)
!2181 = !DILocation(line: 975, column: 10, scope: !2131, inlinedAt: !2166)
!2182 = !DILocation(line: 976, column: 1, scope: !2131, inlinedAt: !2166)
!2183 = !DILocation(line: 981, column: 3, scope: !2158)
!2184 = distinct !DISubprogram(name: "quotearg_colon", scope: !232, file: !232, line: 985, type: !632, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2185)
!2185 = !{!2186}
!2186 = !DILocalVariable(name: "arg", arg: 1, scope: !2184, file: !232, line: 985, type: !33)
!2187 = !DILocation(line: 0, scope: !2184)
!2188 = !DILocation(line: 0, scope: !2158, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 987, column: 10, scope: !2184)
!2190 = !DILocation(line: 0, scope: !2131, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 981, column: 10, scope: !2158, inlinedAt: !2189)
!2192 = !DILocation(line: 972, column: 3, scope: !2131, inlinedAt: !2191)
!2193 = !DILocation(line: 972, column: 26, scope: !2131, inlinedAt: !2191)
!2194 = !DILocation(line: 973, column: 13, scope: !2131, inlinedAt: !2191)
!2195 = !DILocation(line: 0, scope: !1149, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 974, column: 3, scope: !2131, inlinedAt: !2191)
!2197 = !DILocation(line: 147, column: 57, scope: !1149, inlinedAt: !2196)
!2198 = !DILocation(line: 149, column: 21, scope: !1149, inlinedAt: !2196)
!2199 = !DILocation(line: 150, column: 6, scope: !1149, inlinedAt: !2196)
!2200 = !DILocation(line: 975, column: 10, scope: !2131, inlinedAt: !2191)
!2201 = !DILocation(line: 976, column: 1, scope: !2131, inlinedAt: !2191)
!2202 = !DILocation(line: 987, column: 3, scope: !2184)
!2203 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !232, file: !232, line: 991, type: !2008, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2204)
!2204 = !{!2205, !2206}
!2205 = !DILocalVariable(name: "arg", arg: 1, scope: !2203, file: !232, line: 991, type: !33)
!2206 = !DILocalVariable(name: "argsize", arg: 2, scope: !2203, file: !232, line: 991, type: !30)
!2207 = !DILocation(line: 0, scope: !2203)
!2208 = !DILocation(line: 0, scope: !2131, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 993, column: 10, scope: !2203)
!2210 = !DILocation(line: 972, column: 3, scope: !2131, inlinedAt: !2209)
!2211 = !DILocation(line: 972, column: 26, scope: !2131, inlinedAt: !2209)
!2212 = !DILocation(line: 973, column: 13, scope: !2131, inlinedAt: !2209)
!2213 = !DILocation(line: 0, scope: !1149, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 974, column: 3, scope: !2131, inlinedAt: !2209)
!2215 = !DILocation(line: 147, column: 57, scope: !1149, inlinedAt: !2214)
!2216 = !DILocation(line: 149, column: 21, scope: !1149, inlinedAt: !2214)
!2217 = !DILocation(line: 150, column: 6, scope: !1149, inlinedAt: !2214)
!2218 = !DILocation(line: 975, column: 10, scope: !2131, inlinedAt: !2209)
!2219 = !DILocation(line: 976, column: 1, scope: !2131, inlinedAt: !2209)
!2220 = !DILocation(line: 993, column: 3, scope: !2203)
!2221 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !232, file: !232, line: 997, type: !2019, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2222)
!2222 = !{!2223, !2224, !2225, !2226}
!2223 = !DILocalVariable(name: "n", arg: 1, scope: !2221, file: !232, line: 997, type: !28)
!2224 = !DILocalVariable(name: "s", arg: 2, scope: !2221, file: !232, line: 997, type: !234)
!2225 = !DILocalVariable(name: "arg", arg: 3, scope: !2221, file: !232, line: 997, type: !33)
!2226 = !DILocalVariable(name: "options", scope: !2221, file: !232, line: 999, type: !263)
!2227 = !DILocation(line: 0, scope: !2221)
!2228 = !DILocation(line: 999, column: 3, scope: !2221)
!2229 = !DILocation(line: 999, column: 26, scope: !2221)
!2230 = !DILocation(line: 0, scope: !2034, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 1000, column: 13, scope: !2221)
!2232 = !DILocation(line: 186, column: 13, scope: !2043, inlinedAt: !2231)
!2233 = !DILocation(line: 186, column: 7, scope: !2034, inlinedAt: !2231)
!2234 = !DILocation(line: 187, column: 5, scope: !2043, inlinedAt: !2231)
!2235 = !{!2236}
!2236 = distinct !{!2236, !2237, !"quoting_options_from_style: argument 0"}
!2237 = distinct !{!2237, !"quoting_options_from_style"}
!2238 = !DILocation(line: 1000, column: 13, scope: !2221)
!2239 = !DILocation(line: 0, scope: !1149, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 1001, column: 3, scope: !2221)
!2241 = !DILocation(line: 147, column: 57, scope: !1149, inlinedAt: !2240)
!2242 = !DILocation(line: 149, column: 21, scope: !1149, inlinedAt: !2240)
!2243 = !DILocation(line: 150, column: 6, scope: !1149, inlinedAt: !2240)
!2244 = !DILocation(line: 1002, column: 10, scope: !2221)
!2245 = !DILocation(line: 1003, column: 1, scope: !2221)
!2246 = !DILocation(line: 1002, column: 3, scope: !2221)
!2247 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !232, file: !232, line: 1006, type: !2248, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!25, !28, !33, !33, !33}
!2250 = !{!2251, !2252, !2253, !2254}
!2251 = !DILocalVariable(name: "n", arg: 1, scope: !2247, file: !232, line: 1006, type: !28)
!2252 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2247, file: !232, line: 1006, type: !33)
!2253 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2247, file: !232, line: 1007, type: !33)
!2254 = !DILocalVariable(name: "arg", arg: 4, scope: !2247, file: !232, line: 1007, type: !33)
!2255 = !DILocation(line: 0, scope: !2247)
!2256 = !DILocalVariable(name: "n", arg: 1, scope: !2257, file: !232, line: 1014, type: !28)
!2257 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !232, file: !232, line: 1014, type: !2258, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!25, !28, !33, !33, !33, !30}
!2260 = !{!2256, !2261, !2262, !2263, !2264, !2265}
!2261 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2257, file: !232, line: 1014, type: !33)
!2262 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2257, file: !232, line: 1015, type: !33)
!2263 = !DILocalVariable(name: "arg", arg: 4, scope: !2257, file: !232, line: 1016, type: !33)
!2264 = !DILocalVariable(name: "argsize", arg: 5, scope: !2257, file: !232, line: 1016, type: !30)
!2265 = !DILocalVariable(name: "o", scope: !2257, file: !232, line: 1018, type: !263)
!2266 = !DILocation(line: 0, scope: !2257, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 1009, column: 10, scope: !2247)
!2268 = !DILocation(line: 1018, column: 3, scope: !2257, inlinedAt: !2267)
!2269 = !DILocation(line: 1018, column: 26, scope: !2257, inlinedAt: !2267)
!2270 = !DILocation(line: 1018, column: 30, scope: !2257, inlinedAt: !2267)
!2271 = !DILocation(line: 0, scope: !1189, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 1019, column: 3, scope: !2257, inlinedAt: !2267)
!2273 = !DILocation(line: 174, column: 6, scope: !1189, inlinedAt: !2272)
!2274 = !DILocation(line: 174, column: 12, scope: !1189, inlinedAt: !2272)
!2275 = !DILocation(line: 175, column: 8, scope: !1203, inlinedAt: !2272)
!2276 = !DILocation(line: 175, column: 19, scope: !1203, inlinedAt: !2272)
!2277 = !DILocation(line: 176, column: 5, scope: !1203, inlinedAt: !2272)
!2278 = !DILocation(line: 177, column: 6, scope: !1189, inlinedAt: !2272)
!2279 = !DILocation(line: 177, column: 17, scope: !1189, inlinedAt: !2272)
!2280 = !DILocation(line: 178, column: 6, scope: !1189, inlinedAt: !2272)
!2281 = !DILocation(line: 178, column: 18, scope: !1189, inlinedAt: !2272)
!2282 = !DILocation(line: 1020, column: 10, scope: !2257, inlinedAt: !2267)
!2283 = !DILocation(line: 1021, column: 1, scope: !2257, inlinedAt: !2267)
!2284 = !DILocation(line: 1009, column: 3, scope: !2247)
!2285 = !DILocation(line: 0, scope: !2257)
!2286 = !DILocation(line: 1018, column: 3, scope: !2257)
!2287 = !DILocation(line: 1018, column: 26, scope: !2257)
!2288 = !DILocation(line: 1018, column: 30, scope: !2257)
!2289 = !DILocation(line: 0, scope: !1189, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 1019, column: 3, scope: !2257)
!2291 = !DILocation(line: 174, column: 6, scope: !1189, inlinedAt: !2290)
!2292 = !DILocation(line: 174, column: 12, scope: !1189, inlinedAt: !2290)
!2293 = !DILocation(line: 175, column: 8, scope: !1203, inlinedAt: !2290)
!2294 = !DILocation(line: 175, column: 19, scope: !1203, inlinedAt: !2290)
!2295 = !DILocation(line: 176, column: 5, scope: !1203, inlinedAt: !2290)
!2296 = !DILocation(line: 177, column: 6, scope: !1189, inlinedAt: !2290)
!2297 = !DILocation(line: 177, column: 17, scope: !1189, inlinedAt: !2290)
!2298 = !DILocation(line: 178, column: 6, scope: !1189, inlinedAt: !2290)
!2299 = !DILocation(line: 178, column: 18, scope: !1189, inlinedAt: !2290)
!2300 = !DILocation(line: 1020, column: 10, scope: !2257)
!2301 = !DILocation(line: 1021, column: 1, scope: !2257)
!2302 = !DILocation(line: 1020, column: 3, scope: !2257)
!2303 = distinct !DISubprogram(name: "quotearg_custom", scope: !232, file: !232, line: 1024, type: !2304, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!25, !33, !33, !33}
!2306 = !{!2307, !2308, !2309}
!2307 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2303, file: !232, line: 1024, type: !33)
!2308 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2303, file: !232, line: 1024, type: !33)
!2309 = !DILocalVariable(name: "arg", arg: 3, scope: !2303, file: !232, line: 1025, type: !33)
!2310 = !DILocation(line: 0, scope: !2303)
!2311 = !DILocation(line: 0, scope: !2247, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 1027, column: 10, scope: !2303)
!2313 = !DILocation(line: 0, scope: !2257, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 1009, column: 10, scope: !2247, inlinedAt: !2312)
!2315 = !DILocation(line: 1018, column: 3, scope: !2257, inlinedAt: !2314)
!2316 = !DILocation(line: 1018, column: 26, scope: !2257, inlinedAt: !2314)
!2317 = !DILocation(line: 1018, column: 30, scope: !2257, inlinedAt: !2314)
!2318 = !DILocation(line: 0, scope: !1189, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 1019, column: 3, scope: !2257, inlinedAt: !2314)
!2320 = !DILocation(line: 174, column: 6, scope: !1189, inlinedAt: !2319)
!2321 = !DILocation(line: 174, column: 12, scope: !1189, inlinedAt: !2319)
!2322 = !DILocation(line: 175, column: 8, scope: !1203, inlinedAt: !2319)
!2323 = !DILocation(line: 175, column: 19, scope: !1203, inlinedAt: !2319)
!2324 = !DILocation(line: 176, column: 5, scope: !1203, inlinedAt: !2319)
!2325 = !DILocation(line: 177, column: 6, scope: !1189, inlinedAt: !2319)
!2326 = !DILocation(line: 177, column: 17, scope: !1189, inlinedAt: !2319)
!2327 = !DILocation(line: 178, column: 6, scope: !1189, inlinedAt: !2319)
!2328 = !DILocation(line: 178, column: 18, scope: !1189, inlinedAt: !2319)
!2329 = !DILocation(line: 1020, column: 10, scope: !2257, inlinedAt: !2314)
!2330 = !DILocation(line: 1021, column: 1, scope: !2257, inlinedAt: !2314)
!2331 = !DILocation(line: 1027, column: 3, scope: !2303)
!2332 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !232, file: !232, line: 1031, type: !2333, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!25, !33, !33, !33, !30}
!2335 = !{!2336, !2337, !2338, !2339}
!2336 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2332, file: !232, line: 1031, type: !33)
!2337 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2332, file: !232, line: 1031, type: !33)
!2338 = !DILocalVariable(name: "arg", arg: 3, scope: !2332, file: !232, line: 1032, type: !33)
!2339 = !DILocalVariable(name: "argsize", arg: 4, scope: !2332, file: !232, line: 1032, type: !30)
!2340 = !DILocation(line: 0, scope: !2332)
!2341 = !DILocation(line: 0, scope: !2257, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 1034, column: 10, scope: !2332)
!2343 = !DILocation(line: 1018, column: 3, scope: !2257, inlinedAt: !2342)
!2344 = !DILocation(line: 1018, column: 26, scope: !2257, inlinedAt: !2342)
!2345 = !DILocation(line: 1018, column: 30, scope: !2257, inlinedAt: !2342)
!2346 = !DILocation(line: 0, scope: !1189, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 1019, column: 3, scope: !2257, inlinedAt: !2342)
!2348 = !DILocation(line: 174, column: 6, scope: !1189, inlinedAt: !2347)
!2349 = !DILocation(line: 174, column: 12, scope: !1189, inlinedAt: !2347)
!2350 = !DILocation(line: 175, column: 8, scope: !1203, inlinedAt: !2347)
!2351 = !DILocation(line: 175, column: 19, scope: !1203, inlinedAt: !2347)
!2352 = !DILocation(line: 176, column: 5, scope: !1203, inlinedAt: !2347)
!2353 = !DILocation(line: 177, column: 6, scope: !1189, inlinedAt: !2347)
!2354 = !DILocation(line: 177, column: 17, scope: !1189, inlinedAt: !2347)
!2355 = !DILocation(line: 178, column: 6, scope: !1189, inlinedAt: !2347)
!2356 = !DILocation(line: 178, column: 18, scope: !1189, inlinedAt: !2347)
!2357 = !DILocation(line: 1020, column: 10, scope: !2257, inlinedAt: !2342)
!2358 = !DILocation(line: 1021, column: 1, scope: !2257, inlinedAt: !2342)
!2359 = !DILocation(line: 1034, column: 3, scope: !2332)
!2360 = distinct !DISubprogram(name: "quote_n_mem", scope: !232, file: !232, line: 1049, type: !2361, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!33, !28, !33, !30}
!2363 = !{!2364, !2365, !2366}
!2364 = !DILocalVariable(name: "n", arg: 1, scope: !2360, file: !232, line: 1049, type: !28)
!2365 = !DILocalVariable(name: "arg", arg: 2, scope: !2360, file: !232, line: 1049, type: !33)
!2366 = !DILocalVariable(name: "argsize", arg: 3, scope: !2360, file: !232, line: 1049, type: !30)
!2367 = !DILocation(line: 0, scope: !2360)
!2368 = !DILocation(line: 1051, column: 10, scope: !2360)
!2369 = !DILocation(line: 1051, column: 3, scope: !2360)
!2370 = distinct !DISubprogram(name: "quote_mem", scope: !232, file: !232, line: 1055, type: !2371, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!33, !33, !30}
!2373 = !{!2374, !2375}
!2374 = !DILocalVariable(name: "arg", arg: 1, scope: !2370, file: !232, line: 1055, type: !33)
!2375 = !DILocalVariable(name: "argsize", arg: 2, scope: !2370, file: !232, line: 1055, type: !30)
!2376 = !DILocation(line: 0, scope: !2370)
!2377 = !DILocation(line: 0, scope: !2360, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 1057, column: 10, scope: !2370)
!2379 = !DILocation(line: 1051, column: 10, scope: !2360, inlinedAt: !2378)
!2380 = !DILocation(line: 1057, column: 3, scope: !2370)
!2381 = distinct !DISubprogram(name: "quote_n", scope: !232, file: !232, line: 1061, type: !2382, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!33, !28, !33}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "n", arg: 1, scope: !2381, file: !232, line: 1061, type: !28)
!2386 = !DILocalVariable(name: "arg", arg: 2, scope: !2381, file: !232, line: 1061, type: !33)
!2387 = !DILocation(line: 0, scope: !2381)
!2388 = !DILocation(line: 0, scope: !2360, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 1063, column: 10, scope: !2381)
!2390 = !DILocation(line: 1051, column: 10, scope: !2360, inlinedAt: !2389)
!2391 = !DILocation(line: 1063, column: 3, scope: !2381)
!2392 = distinct !DISubprogram(name: "quote", scope: !232, file: !232, line: 1067, type: !2393, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!33, !33}
!2395 = !{!2396}
!2396 = !DILocalVariable(name: "arg", arg: 1, scope: !2392, file: !232, line: 1067, type: !33)
!2397 = !DILocation(line: 0, scope: !2392)
!2398 = !DILocation(line: 0, scope: !2381, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 1069, column: 10, scope: !2392)
!2400 = !DILocation(line: 0, scope: !2360, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 1063, column: 10, scope: !2381, inlinedAt: !2399)
!2402 = !DILocation(line: 1051, column: 10, scope: !2360, inlinedAt: !2401)
!2403 = !DILocation(line: 1069, column: 3, scope: !2392)
!2404 = distinct !DISubprogram(name: "version_etc_arn", scope: !351, file: !351, line: 61, type: !2405, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !2442)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2407, !33, !33, !33, !2441, !30}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 7, baseType: !2409)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 49, size: 1728, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2409, file: !67, line: 51, baseType: !28, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2409, file: !67, line: 54, baseType: !25, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2409, file: !67, line: 55, baseType: !25, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2409, file: !67, line: 56, baseType: !25, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2409, file: !67, line: 57, baseType: !25, size: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2409, file: !67, line: 58, baseType: !25, size: 64, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2409, file: !67, line: 59, baseType: !25, size: 64, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2409, file: !67, line: 60, baseType: !25, size: 64, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2409, file: !67, line: 61, baseType: !25, size: 64, offset: 512)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2409, file: !67, line: 64, baseType: !25, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2409, file: !67, line: 65, baseType: !25, size: 64, offset: 640)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2409, file: !67, line: 66, baseType: !25, size: 64, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2409, file: !67, line: 68, baseType: !82, size: 64, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2409, file: !67, line: 70, baseType: !2425, size: 64, offset: 832)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2409, file: !67, line: 72, baseType: !28, size: 32, offset: 896)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2409, file: !67, line: 73, baseType: !28, size: 32, offset: 928)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2409, file: !67, line: 74, baseType: !89, size: 64, offset: 960)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2409, file: !67, line: 77, baseType: !29, size: 16, offset: 1024)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2409, file: !67, line: 78, baseType: !94, size: 8, offset: 1040)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2409, file: !67, line: 79, baseType: !96, size: 8, offset: 1048)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2409, file: !67, line: 81, baseType: !100, size: 64, offset: 1088)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2409, file: !67, line: 89, baseType: !103, size: 64, offset: 1152)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2409, file: !67, line: 91, baseType: !105, size: 64, offset: 1216)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2409, file: !67, line: 92, baseType: !108, size: 64, offset: 1280)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2409, file: !67, line: 93, baseType: !2425, size: 64, offset: 1344)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2409, file: !67, line: 94, baseType: !27, size: 64, offset: 1408)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2409, file: !67, line: 95, baseType: !30, size: 64, offset: 1472)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2409, file: !67, line: 96, baseType: !28, size: 32, offset: 1536)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2409, file: !67, line: 98, baseType: !115, size: 160, offset: 1568)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2448}
!2443 = !DILocalVariable(name: "stream", arg: 1, scope: !2404, file: !351, line: 61, type: !2407)
!2444 = !DILocalVariable(name: "command_name", arg: 2, scope: !2404, file: !351, line: 62, type: !33)
!2445 = !DILocalVariable(name: "package", arg: 3, scope: !2404, file: !351, line: 62, type: !33)
!2446 = !DILocalVariable(name: "version", arg: 4, scope: !2404, file: !351, line: 63, type: !33)
!2447 = !DILocalVariable(name: "authors", arg: 5, scope: !2404, file: !351, line: 64, type: !2441)
!2448 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2404, file: !351, line: 64, type: !30)
!2449 = !DILocation(line: 0, scope: !2404)
!2450 = !DILocation(line: 66, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2404, file: !351, line: 66, column: 7)
!2452 = !DILocation(line: 66, column: 7, scope: !2404)
!2453 = !DILocation(line: 67, column: 5, scope: !2451)
!2454 = !DILocation(line: 69, column: 5, scope: !2451)
!2455 = !DILocation(line: 83, column: 3, scope: !2404)
!2456 = !DILocation(line: 85, column: 3, scope: !2404)
!2457 = !DILocation(line: 88, column: 3, scope: !2404)
!2458 = !DILocation(line: 95, column: 3, scope: !2404)
!2459 = !DILocation(line: 97, column: 3, scope: !2404)
!2460 = !DILocation(line: 105, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2404, file: !351, line: 98, column: 5)
!2462 = !DILocation(line: 106, column: 7, scope: !2461)
!2463 = !DILocation(line: 109, column: 7, scope: !2461)
!2464 = !DILocation(line: 110, column: 7, scope: !2461)
!2465 = !DILocation(line: 113, column: 7, scope: !2461)
!2466 = !DILocation(line: 115, column: 7, scope: !2461)
!2467 = !DILocation(line: 120, column: 7, scope: !2461)
!2468 = !DILocation(line: 122, column: 7, scope: !2461)
!2469 = !DILocation(line: 127, column: 7, scope: !2461)
!2470 = !DILocation(line: 129, column: 7, scope: !2461)
!2471 = !DILocation(line: 134, column: 7, scope: !2461)
!2472 = !DILocation(line: 137, column: 7, scope: !2461)
!2473 = !DILocation(line: 142, column: 7, scope: !2461)
!2474 = !DILocation(line: 145, column: 7, scope: !2461)
!2475 = !DILocation(line: 150, column: 7, scope: !2461)
!2476 = !DILocation(line: 154, column: 7, scope: !2461)
!2477 = !DILocation(line: 159, column: 7, scope: !2461)
!2478 = !DILocation(line: 163, column: 7, scope: !2461)
!2479 = !DILocation(line: 170, column: 7, scope: !2461)
!2480 = !DILocation(line: 174, column: 7, scope: !2461)
!2481 = !DILocation(line: 176, column: 1, scope: !2404)
!2482 = distinct !DISubprogram(name: "version_etc_ar", scope: !351, file: !351, line: 183, type: !2483, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !2407, !33, !33, !33, !2441}
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491}
!2486 = !DILocalVariable(name: "stream", arg: 1, scope: !2482, file: !351, line: 183, type: !2407)
!2487 = !DILocalVariable(name: "command_name", arg: 2, scope: !2482, file: !351, line: 184, type: !33)
!2488 = !DILocalVariable(name: "package", arg: 3, scope: !2482, file: !351, line: 184, type: !33)
!2489 = !DILocalVariable(name: "version", arg: 4, scope: !2482, file: !351, line: 185, type: !33)
!2490 = !DILocalVariable(name: "authors", arg: 5, scope: !2482, file: !351, line: 185, type: !2441)
!2491 = !DILocalVariable(name: "n_authors", scope: !2482, file: !351, line: 187, type: !30)
!2492 = !DILocation(line: 0, scope: !2482)
!2493 = !DILocation(line: 189, column: 8, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2482, file: !351, line: 189, column: 3)
!2495 = !DILocation(line: 0, scope: !2494)
!2496 = !DILocation(line: 189, column: 23, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !351, line: 189, column: 3)
!2498 = !DILocation(line: 189, column: 3, scope: !2494)
!2499 = !DILocation(line: 189, column: 52, scope: !2497)
!2500 = distinct !{!2500, !2498, !2501, !486}
!2501 = !DILocation(line: 190, column: 5, scope: !2494)
!2502 = !DILocation(line: 191, column: 3, scope: !2482)
!2503 = !DILocation(line: 192, column: 1, scope: !2482)
!2504 = distinct !DISubprogram(name: "version_etc_va", scope: !351, file: !351, line: 199, type: !2505, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !2518)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !2407, !33, !33, !33, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !160, line: 52, baseType: !2508)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !162, line: 32, baseType: !2509)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2510, baseType: !2511)
!2510 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !166, size: 256, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2517}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2511, file: !2510, line: 192, baseType: !27, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2511, file: !2510, line: 192, baseType: !27, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2511, file: !2510, line: 192, baseType: !27, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2511, file: !2510, line: 192, baseType: !28, size: 32, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2511, file: !2510, line: 192, baseType: !28, size: 32, offset: 224)
!2518 = !{!2519, !2520, !2521, !2522, !2523, !2524, !2525}
!2519 = !DILocalVariable(name: "stream", arg: 1, scope: !2504, file: !351, line: 199, type: !2407)
!2520 = !DILocalVariable(name: "command_name", arg: 2, scope: !2504, file: !351, line: 200, type: !33)
!2521 = !DILocalVariable(name: "package", arg: 3, scope: !2504, file: !351, line: 200, type: !33)
!2522 = !DILocalVariable(name: "version", arg: 4, scope: !2504, file: !351, line: 201, type: !33)
!2523 = !DILocalVariable(name: "authors", arg: 5, scope: !2504, file: !351, line: 201, type: !2507)
!2524 = !DILocalVariable(name: "n_authors", scope: !2504, file: !351, line: 203, type: !30)
!2525 = !DILocalVariable(name: "authtab", scope: !2504, file: !351, line: 204, type: !2526)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 640, elements: !259)
!2527 = !DILocation(line: 0, scope: !2504)
!2528 = !DILocation(line: 201, column: 46, scope: !2504)
!2529 = !DILocation(line: 204, column: 3, scope: !2504)
!2530 = !DILocation(line: 204, column: 15, scope: !2504)
!2531 = !DILocation(line: 208, column: 35, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !351, line: 206, column: 3)
!2533 = distinct !DILexicalBlock(scope: !2504, file: !351, line: 206, column: 3)
!2534 = !DILocation(line: 208, column: 14, scope: !2532)
!2535 = !DILocation(line: 208, column: 33, scope: !2532)
!2536 = !DILocation(line: 208, column: 67, scope: !2532)
!2537 = !DILocation(line: 206, column: 3, scope: !2533)
!2538 = !DILocation(line: 0, scope: !2533)
!2539 = !DILocation(line: 211, column: 3, scope: !2504)
!2540 = !DILocation(line: 213, column: 1, scope: !2504)
!2541 = distinct !DISubprogram(name: "version_etc", scope: !351, file: !351, line: 230, type: !2542, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !2407, !33, !33, !33, null}
!2544 = !{!2545, !2546, !2547, !2548, !2549}
!2545 = !DILocalVariable(name: "stream", arg: 1, scope: !2541, file: !351, line: 230, type: !2407)
!2546 = !DILocalVariable(name: "command_name", arg: 2, scope: !2541, file: !351, line: 231, type: !33)
!2547 = !DILocalVariable(name: "package", arg: 3, scope: !2541, file: !351, line: 231, type: !33)
!2548 = !DILocalVariable(name: "version", arg: 4, scope: !2541, file: !351, line: 232, type: !33)
!2549 = !DILocalVariable(name: "authors", scope: !2541, file: !351, line: 234, type: !2507)
!2550 = !DILocation(line: 0, scope: !2541)
!2551 = !DILocation(line: 234, column: 3, scope: !2541)
!2552 = !DILocation(line: 234, column: 11, scope: !2541)
!2553 = !DILocation(line: 235, column: 3, scope: !2541)
!2554 = !DILocation(line: 236, column: 3, scope: !2541)
!2555 = !DILocation(line: 237, column: 3, scope: !2541)
!2556 = !DILocation(line: 238, column: 1, scope: !2541)
!2557 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !351, file: !351, line: 241, type: !187, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !512)
!2558 = !DILocation(line: 243, column: 3, scope: !2557)
!2559 = !DILocation(line: 248, column: 3, scope: !2557)
!2560 = !DILocation(line: 254, column: 3, scope: !2557)
!2561 = !DILocation(line: 259, column: 3, scope: !2557)
!2562 = !DILocation(line: 261, column: 1, scope: !2557)
!2563 = distinct !DISubprogram(name: "xnrealloc", scope: !2564, file: !2564, line: 147, type: !2565, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2567)
!2564 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!27, !27, !30, !30}
!2567 = !{!2568, !2569, !2570}
!2568 = !DILocalVariable(name: "p", arg: 1, scope: !2563, file: !2564, line: 147, type: !27)
!2569 = !DILocalVariable(name: "n", arg: 2, scope: !2563, file: !2564, line: 147, type: !30)
!2570 = !DILocalVariable(name: "s", arg: 3, scope: !2563, file: !2564, line: 147, type: !30)
!2571 = !DILocation(line: 0, scope: !2563)
!2572 = !DILocalVariable(name: "p", arg: 1, scope: !2573, file: !358, line: 83, type: !27)
!2573 = distinct !DISubprogram(name: "xreallocarray", scope: !358, file: !358, line: 83, type: !2565, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2574)
!2574 = !{!2572, !2575, !2576}
!2575 = !DILocalVariable(name: "n", arg: 2, scope: !2573, file: !358, line: 83, type: !30)
!2576 = !DILocalVariable(name: "s", arg: 3, scope: !2573, file: !358, line: 83, type: !30)
!2577 = !DILocation(line: 0, scope: !2573, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 149, column: 10, scope: !2563)
!2579 = !DILocation(line: 85, column: 25, scope: !2573, inlinedAt: !2578)
!2580 = !DILocalVariable(name: "p", arg: 1, scope: !2581, file: !358, line: 37, type: !27)
!2581 = distinct !DISubprogram(name: "check_nonnull", scope: !358, file: !358, line: 37, type: !2582, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!27, !27}
!2584 = !{!2580}
!2585 = !DILocation(line: 0, scope: !2581, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 85, column: 10, scope: !2573, inlinedAt: !2578)
!2587 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2586)
!2588 = distinct !DILexicalBlock(scope: !2581, file: !358, line: 39, column: 7)
!2589 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2586)
!2590 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2586)
!2591 = !DILocation(line: 149, column: 3, scope: !2563)
!2592 = !DILocation(line: 0, scope: !2573)
!2593 = !DILocation(line: 85, column: 25, scope: !2573)
!2594 = !DILocation(line: 0, scope: !2581, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 85, column: 10, scope: !2573)
!2596 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2595)
!2597 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2595)
!2598 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2595)
!2599 = !DILocation(line: 85, column: 3, scope: !2573)
!2600 = distinct !DISubprogram(name: "xmalloc", scope: !358, file: !358, line: 47, type: !2601, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!27, !30}
!2603 = !{!2604}
!2604 = !DILocalVariable(name: "s", arg: 1, scope: !2600, file: !358, line: 47, type: !30)
!2605 = !DILocation(line: 0, scope: !2600)
!2606 = !DILocation(line: 49, column: 25, scope: !2600)
!2607 = !DILocation(line: 0, scope: !2581, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 49, column: 10, scope: !2600)
!2609 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2608)
!2610 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2608)
!2611 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2608)
!2612 = !DILocation(line: 49, column: 3, scope: !2600)
!2613 = distinct !DISubprogram(name: "ximalloc", scope: !358, file: !358, line: 53, type: !2614, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!27, !377}
!2616 = !{!2617}
!2617 = !DILocalVariable(name: "s", arg: 1, scope: !2613, file: !358, line: 53, type: !377)
!2618 = !DILocation(line: 0, scope: !2613)
!2619 = !DILocalVariable(name: "s", arg: 1, scope: !2620, file: !2621, line: 55, type: !377)
!2620 = distinct !DISubprogram(name: "imalloc", scope: !2621, file: !2621, line: 55, type: !2614, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2622)
!2621 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2622 = !{!2619}
!2623 = !DILocation(line: 0, scope: !2620, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 55, column: 25, scope: !2613)
!2625 = !DILocation(line: 57, column: 26, scope: !2620, inlinedAt: !2624)
!2626 = !DILocation(line: 0, scope: !2581, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 55, column: 10, scope: !2613)
!2628 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2627)
!2629 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2627)
!2630 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2627)
!2631 = !DILocation(line: 55, column: 3, scope: !2613)
!2632 = distinct !DISubprogram(name: "xcharalloc", scope: !358, file: !358, line: 59, type: !2633, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!25, !30}
!2635 = !{!2636}
!2636 = !DILocalVariable(name: "n", arg: 1, scope: !2632, file: !358, line: 59, type: !30)
!2637 = !DILocation(line: 0, scope: !2632)
!2638 = !DILocation(line: 0, scope: !2600, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 61, column: 10, scope: !2632)
!2640 = !DILocation(line: 49, column: 25, scope: !2600, inlinedAt: !2639)
!2641 = !DILocation(line: 0, scope: !2581, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 49, column: 10, scope: !2600, inlinedAt: !2639)
!2643 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2642)
!2644 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2642)
!2645 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2642)
!2646 = !DILocation(line: 61, column: 3, scope: !2632)
!2647 = distinct !DISubprogram(name: "xrealloc", scope: !358, file: !358, line: 68, type: !2648, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!27, !27, !30}
!2650 = !{!2651, !2652}
!2651 = !DILocalVariable(name: "p", arg: 1, scope: !2647, file: !358, line: 68, type: !27)
!2652 = !DILocalVariable(name: "s", arg: 2, scope: !2647, file: !358, line: 68, type: !30)
!2653 = !DILocation(line: 0, scope: !2647)
!2654 = !DILocalVariable(name: "ptr", arg: 1, scope: !2655, file: !2656, line: 2057, type: !27)
!2655 = distinct !DISubprogram(name: "rpl_realloc", scope: !2656, file: !2656, line: 2057, type: !2648, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2657)
!2656 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2657 = !{!2654, !2658}
!2658 = !DILocalVariable(name: "size", arg: 2, scope: !2655, file: !2656, line: 2057, type: !30)
!2659 = !DILocation(line: 0, scope: !2655, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 70, column: 25, scope: !2647)
!2661 = !DILocation(line: 2059, column: 24, scope: !2655, inlinedAt: !2660)
!2662 = !DILocation(line: 2059, column: 10, scope: !2655, inlinedAt: !2660)
!2663 = !DILocation(line: 0, scope: !2581, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 70, column: 10, scope: !2647)
!2665 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2664)
!2666 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2664)
!2667 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2664)
!2668 = !DILocation(line: 70, column: 3, scope: !2647)
!2669 = distinct !DISubprogram(name: "xirealloc", scope: !358, file: !358, line: 74, type: !2670, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!27, !27, !377}
!2672 = !{!2673, !2674}
!2673 = !DILocalVariable(name: "p", arg: 1, scope: !2669, file: !358, line: 74, type: !27)
!2674 = !DILocalVariable(name: "s", arg: 2, scope: !2669, file: !358, line: 74, type: !377)
!2675 = !DILocation(line: 0, scope: !2669)
!2676 = !DILocalVariable(name: "p", arg: 1, scope: !2677, file: !2621, line: 66, type: !27)
!2677 = distinct !DISubprogram(name: "irealloc", scope: !2621, file: !2621, line: 66, type: !2670, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2678)
!2678 = !{!2676, !2679}
!2679 = !DILocalVariable(name: "s", arg: 2, scope: !2677, file: !2621, line: 66, type: !377)
!2680 = !DILocation(line: 0, scope: !2677, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 76, column: 25, scope: !2669)
!2682 = !DILocation(line: 0, scope: !2655, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 68, column: 26, scope: !2677, inlinedAt: !2681)
!2684 = !DILocation(line: 2059, column: 24, scope: !2655, inlinedAt: !2683)
!2685 = !DILocation(line: 2059, column: 10, scope: !2655, inlinedAt: !2683)
!2686 = !DILocation(line: 0, scope: !2581, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 76, column: 10, scope: !2669)
!2688 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2687)
!2689 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2687)
!2690 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2687)
!2691 = !DILocation(line: 76, column: 3, scope: !2669)
!2692 = distinct !DISubprogram(name: "xireallocarray", scope: !358, file: !358, line: 89, type: !2693, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!27, !27, !377, !377}
!2695 = !{!2696, !2697, !2698}
!2696 = !DILocalVariable(name: "p", arg: 1, scope: !2692, file: !358, line: 89, type: !27)
!2697 = !DILocalVariable(name: "n", arg: 2, scope: !2692, file: !358, line: 89, type: !377)
!2698 = !DILocalVariable(name: "s", arg: 3, scope: !2692, file: !358, line: 89, type: !377)
!2699 = !DILocation(line: 0, scope: !2692)
!2700 = !DILocalVariable(name: "p", arg: 1, scope: !2701, file: !2621, line: 98, type: !27)
!2701 = distinct !DISubprogram(name: "ireallocarray", scope: !2621, file: !2621, line: 98, type: !2693, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2702)
!2702 = !{!2700, !2703, !2704}
!2703 = !DILocalVariable(name: "n", arg: 2, scope: !2701, file: !2621, line: 98, type: !377)
!2704 = !DILocalVariable(name: "s", arg: 3, scope: !2701, file: !2621, line: 98, type: !377)
!2705 = !DILocation(line: 0, scope: !2701, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 91, column: 25, scope: !2692)
!2707 = !DILocation(line: 101, column: 13, scope: !2701, inlinedAt: !2706)
!2708 = !DILocation(line: 0, scope: !2581, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 91, column: 10, scope: !2692)
!2710 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2709)
!2711 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2709)
!2712 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2709)
!2713 = !DILocation(line: 91, column: 3, scope: !2692)
!2714 = distinct !DISubprogram(name: "xnmalloc", scope: !358, file: !358, line: 98, type: !2715, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!27, !30, !30}
!2717 = !{!2718, !2719}
!2718 = !DILocalVariable(name: "n", arg: 1, scope: !2714, file: !358, line: 98, type: !30)
!2719 = !DILocalVariable(name: "s", arg: 2, scope: !2714, file: !358, line: 98, type: !30)
!2720 = !DILocation(line: 0, scope: !2714)
!2721 = !DILocation(line: 0, scope: !2573, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 100, column: 10, scope: !2714)
!2723 = !DILocation(line: 85, column: 25, scope: !2573, inlinedAt: !2722)
!2724 = !DILocation(line: 0, scope: !2581, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 85, column: 10, scope: !2573, inlinedAt: !2722)
!2726 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2725)
!2727 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2725)
!2728 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2725)
!2729 = !DILocation(line: 100, column: 3, scope: !2714)
!2730 = distinct !DISubprogram(name: "xinmalloc", scope: !358, file: !358, line: 104, type: !2731, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!27, !377, !377}
!2733 = !{!2734, !2735}
!2734 = !DILocalVariable(name: "n", arg: 1, scope: !2730, file: !358, line: 104, type: !377)
!2735 = !DILocalVariable(name: "s", arg: 2, scope: !2730, file: !358, line: 104, type: !377)
!2736 = !DILocation(line: 0, scope: !2730)
!2737 = !DILocation(line: 0, scope: !2692, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 106, column: 10, scope: !2730)
!2739 = !DILocation(line: 0, scope: !2701, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 91, column: 25, scope: !2692, inlinedAt: !2738)
!2741 = !DILocation(line: 101, column: 13, scope: !2701, inlinedAt: !2740)
!2742 = !DILocation(line: 0, scope: !2581, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 91, column: 10, scope: !2692, inlinedAt: !2738)
!2744 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2743)
!2745 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2743)
!2746 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2743)
!2747 = !DILocation(line: 106, column: 3, scope: !2730)
!2748 = distinct !DISubprogram(name: "x2realloc", scope: !358, file: !358, line: 116, type: !2749, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!27, !27, !364}
!2751 = !{!2752, !2753}
!2752 = !DILocalVariable(name: "p", arg: 1, scope: !2748, file: !358, line: 116, type: !27)
!2753 = !DILocalVariable(name: "ps", arg: 2, scope: !2748, file: !358, line: 116, type: !364)
!2754 = !DILocation(line: 0, scope: !2748)
!2755 = !DILocation(line: 0, scope: !361, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 118, column: 10, scope: !2748)
!2757 = !DILocation(line: 178, column: 14, scope: !361, inlinedAt: !2756)
!2758 = !DILocation(line: 180, column: 9, scope: !2759, inlinedAt: !2756)
!2759 = distinct !DILexicalBlock(scope: !361, file: !358, line: 180, column: 7)
!2760 = !DILocation(line: 180, column: 7, scope: !361, inlinedAt: !2756)
!2761 = !DILocation(line: 182, column: 13, scope: !2762, inlinedAt: !2756)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !358, line: 182, column: 11)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !358, line: 181, column: 5)
!2764 = !DILocation(line: 182, column: 11, scope: !2763, inlinedAt: !2756)
!2765 = !DILocation(line: 197, column: 11, scope: !2766, inlinedAt: !2756)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !358, line: 197, column: 11)
!2767 = distinct !DILexicalBlock(scope: !2759, file: !358, line: 195, column: 5)
!2768 = !DILocation(line: 197, column: 11, scope: !2767, inlinedAt: !2756)
!2769 = !DILocation(line: 198, column: 9, scope: !2766, inlinedAt: !2756)
!2770 = !DILocation(line: 0, scope: !2573, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 201, column: 7, scope: !361, inlinedAt: !2756)
!2772 = !DILocation(line: 85, column: 25, scope: !2573, inlinedAt: !2771)
!2773 = !DILocation(line: 0, scope: !2581, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 85, column: 10, scope: !2573, inlinedAt: !2771)
!2775 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2774)
!2776 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2774)
!2777 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2774)
!2778 = !DILocation(line: 202, column: 7, scope: !361, inlinedAt: !2756)
!2779 = !DILocation(line: 118, column: 3, scope: !2748)
!2780 = !DILocation(line: 0, scope: !361)
!2781 = !DILocation(line: 178, column: 14, scope: !361)
!2782 = !DILocation(line: 180, column: 9, scope: !2759)
!2783 = !DILocation(line: 180, column: 7, scope: !361)
!2784 = !DILocation(line: 182, column: 13, scope: !2762)
!2785 = !DILocation(line: 182, column: 11, scope: !2763)
!2786 = !DILocation(line: 190, column: 30, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2762, file: !358, line: 183, column: 9)
!2788 = !DILocation(line: 191, column: 16, scope: !2787)
!2789 = !DILocation(line: 191, column: 13, scope: !2787)
!2790 = !DILocation(line: 192, column: 9, scope: !2787)
!2791 = !DILocation(line: 197, column: 11, scope: !2766)
!2792 = !DILocation(line: 197, column: 11, scope: !2767)
!2793 = !DILocation(line: 198, column: 9, scope: !2766)
!2794 = !DILocation(line: 0, scope: !2573, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 201, column: 7, scope: !361)
!2796 = !DILocation(line: 85, column: 25, scope: !2573, inlinedAt: !2795)
!2797 = !DILocation(line: 0, scope: !2581, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 85, column: 10, scope: !2573, inlinedAt: !2795)
!2799 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2798)
!2800 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2798)
!2801 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2798)
!2802 = !DILocation(line: 202, column: 7, scope: !361)
!2803 = !DILocation(line: 203, column: 3, scope: !361)
!2804 = !DILocation(line: 0, scope: !373)
!2805 = !DILocation(line: 230, column: 14, scope: !373)
!2806 = !DILocation(line: 238, column: 7, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !373, file: !358, line: 238, column: 7)
!2808 = !DILocation(line: 238, column: 7, scope: !373)
!2809 = !DILocation(line: 240, column: 9, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !373, file: !358, line: 240, column: 7)
!2811 = !DILocation(line: 240, column: 18, scope: !2810)
!2812 = !DILocation(line: 253, column: 8, scope: !373)
!2813 = !DILocation(line: 258, column: 27, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !358, line: 257, column: 5)
!2815 = distinct !DILexicalBlock(scope: !373, file: !358, line: 256, column: 7)
!2816 = !DILocation(line: 259, column: 32, scope: !2814)
!2817 = !DILocation(line: 260, column: 5, scope: !2814)
!2818 = !DILocation(line: 262, column: 9, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !373, file: !358, line: 262, column: 7)
!2820 = !DILocation(line: 262, column: 7, scope: !373)
!2821 = !DILocation(line: 263, column: 9, scope: !2819)
!2822 = !DILocation(line: 263, column: 5, scope: !2819)
!2823 = !DILocation(line: 264, column: 9, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !373, file: !358, line: 264, column: 7)
!2825 = !DILocation(line: 264, column: 14, scope: !2824)
!2826 = !DILocation(line: 265, column: 7, scope: !2824)
!2827 = !DILocation(line: 265, column: 11, scope: !2824)
!2828 = !DILocation(line: 266, column: 11, scope: !2824)
!2829 = !DILocation(line: 266, column: 26, scope: !2824)
!2830 = !DILocation(line: 267, column: 14, scope: !2824)
!2831 = !DILocation(line: 264, column: 7, scope: !373)
!2832 = !DILocation(line: 268, column: 5, scope: !2824)
!2833 = !DILocation(line: 0, scope: !2647, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 269, column: 8, scope: !373)
!2835 = !DILocation(line: 0, scope: !2655, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 70, column: 25, scope: !2647, inlinedAt: !2834)
!2837 = !DILocation(line: 2059, column: 24, scope: !2655, inlinedAt: !2836)
!2838 = !DILocation(line: 2059, column: 10, scope: !2655, inlinedAt: !2836)
!2839 = !DILocation(line: 0, scope: !2581, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 70, column: 10, scope: !2647, inlinedAt: !2834)
!2841 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2840)
!2842 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2840)
!2843 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2840)
!2844 = !DILocation(line: 270, column: 7, scope: !373)
!2845 = !DILocation(line: 271, column: 3, scope: !373)
!2846 = distinct !DISubprogram(name: "xzalloc", scope: !358, file: !358, line: 279, type: !2601, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2847)
!2847 = !{!2848}
!2848 = !DILocalVariable(name: "s", arg: 1, scope: !2846, file: !358, line: 279, type: !30)
!2849 = !DILocation(line: 0, scope: !2846)
!2850 = !DILocalVariable(name: "n", arg: 1, scope: !2851, file: !358, line: 294, type: !30)
!2851 = distinct !DISubprogram(name: "xcalloc", scope: !358, file: !358, line: 294, type: !2715, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2852)
!2852 = !{!2850, !2853}
!2853 = !DILocalVariable(name: "s", arg: 2, scope: !2851, file: !358, line: 294, type: !30)
!2854 = !DILocation(line: 0, scope: !2851, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 281, column: 10, scope: !2846)
!2856 = !DILocation(line: 296, column: 25, scope: !2851, inlinedAt: !2855)
!2857 = !DILocation(line: 0, scope: !2581, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 296, column: 10, scope: !2851, inlinedAt: !2855)
!2859 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2858)
!2860 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2858)
!2861 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2858)
!2862 = !DILocation(line: 281, column: 3, scope: !2846)
!2863 = !DILocation(line: 0, scope: !2851)
!2864 = !DILocation(line: 296, column: 25, scope: !2851)
!2865 = !DILocation(line: 0, scope: !2581, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 296, column: 10, scope: !2851)
!2867 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2866)
!2868 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2866)
!2869 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2866)
!2870 = !DILocation(line: 296, column: 3, scope: !2851)
!2871 = distinct !DISubprogram(name: "xizalloc", scope: !358, file: !358, line: 285, type: !2614, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2872)
!2872 = !{!2873}
!2873 = !DILocalVariable(name: "s", arg: 1, scope: !2871, file: !358, line: 285, type: !377)
!2874 = !DILocation(line: 0, scope: !2871)
!2875 = !DILocalVariable(name: "n", arg: 1, scope: !2876, file: !358, line: 300, type: !377)
!2876 = distinct !DISubprogram(name: "xicalloc", scope: !358, file: !358, line: 300, type: !2731, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2877)
!2877 = !{!2875, !2878}
!2878 = !DILocalVariable(name: "s", arg: 2, scope: !2876, file: !358, line: 300, type: !377)
!2879 = !DILocation(line: 0, scope: !2876, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 287, column: 10, scope: !2871)
!2881 = !DILocalVariable(name: "n", arg: 1, scope: !2882, file: !2621, line: 77, type: !377)
!2882 = distinct !DISubprogram(name: "icalloc", scope: !2621, file: !2621, line: 77, type: !2731, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2883)
!2883 = !{!2881, !2884}
!2884 = !DILocalVariable(name: "s", arg: 2, scope: !2882, file: !2621, line: 77, type: !377)
!2885 = !DILocation(line: 0, scope: !2882, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 302, column: 25, scope: !2876, inlinedAt: !2880)
!2887 = !DILocation(line: 91, column: 10, scope: !2882, inlinedAt: !2886)
!2888 = !DILocation(line: 0, scope: !2581, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 302, column: 10, scope: !2876, inlinedAt: !2880)
!2890 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2889)
!2891 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2889)
!2892 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2889)
!2893 = !DILocation(line: 287, column: 3, scope: !2871)
!2894 = !DILocation(line: 0, scope: !2876)
!2895 = !DILocation(line: 0, scope: !2882, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 302, column: 25, scope: !2876)
!2897 = !DILocation(line: 91, column: 10, scope: !2882, inlinedAt: !2896)
!2898 = !DILocation(line: 0, scope: !2581, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 302, column: 10, scope: !2876)
!2900 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2899)
!2901 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2899)
!2902 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2899)
!2903 = !DILocation(line: 302, column: 3, scope: !2876)
!2904 = distinct !DISubprogram(name: "xmemdup", scope: !358, file: !358, line: 310, type: !2905, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!27, !638, !30}
!2907 = !{!2908, !2909}
!2908 = !DILocalVariable(name: "p", arg: 1, scope: !2904, file: !358, line: 310, type: !638)
!2909 = !DILocalVariable(name: "s", arg: 2, scope: !2904, file: !358, line: 310, type: !30)
!2910 = !DILocation(line: 0, scope: !2904)
!2911 = !DILocation(line: 0, scope: !2600, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 312, column: 18, scope: !2904)
!2913 = !DILocation(line: 49, column: 25, scope: !2600, inlinedAt: !2912)
!2914 = !DILocation(line: 0, scope: !2581, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 49, column: 10, scope: !2600, inlinedAt: !2912)
!2916 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2915)
!2917 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2915)
!2918 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2915)
!2919 = !DILocalVariable(name: "__dest", arg: 1, scope: !2920, file: !1091, line: 26, type: !2923)
!2920 = distinct !DISubprogram(name: "memcpy", scope: !1091, file: !1091, line: 26, type: !2921, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2924)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!27, !2923, !637, !30}
!2923 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!2924 = !{!2919, !2925, !2926}
!2925 = !DILocalVariable(name: "__src", arg: 2, scope: !2920, file: !1091, line: 26, type: !637)
!2926 = !DILocalVariable(name: "__len", arg: 3, scope: !2920, file: !1091, line: 26, type: !30)
!2927 = !DILocation(line: 0, scope: !2920, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 312, column: 10, scope: !2904)
!2929 = !DILocation(line: 29, column: 10, scope: !2920, inlinedAt: !2928)
!2930 = !DILocation(line: 312, column: 3, scope: !2904)
!2931 = distinct !DISubprogram(name: "ximemdup", scope: !358, file: !358, line: 316, type: !2932, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!27, !638, !377}
!2934 = !{!2935, !2936}
!2935 = !DILocalVariable(name: "p", arg: 1, scope: !2931, file: !358, line: 316, type: !638)
!2936 = !DILocalVariable(name: "s", arg: 2, scope: !2931, file: !358, line: 316, type: !377)
!2937 = !DILocation(line: 0, scope: !2931)
!2938 = !DILocation(line: 0, scope: !2613, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 318, column: 18, scope: !2931)
!2940 = !DILocation(line: 0, scope: !2620, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 55, column: 25, scope: !2613, inlinedAt: !2939)
!2942 = !DILocation(line: 57, column: 26, scope: !2620, inlinedAt: !2941)
!2943 = !DILocation(line: 0, scope: !2581, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 55, column: 10, scope: !2613, inlinedAt: !2939)
!2945 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2944)
!2946 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2944)
!2947 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2944)
!2948 = !DILocation(line: 0, scope: !2920, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 318, column: 10, scope: !2931)
!2950 = !DILocation(line: 29, column: 10, scope: !2920, inlinedAt: !2949)
!2951 = !DILocation(line: 318, column: 3, scope: !2931)
!2952 = distinct !DISubprogram(name: "ximemdup0", scope: !358, file: !358, line: 325, type: !2953, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!25, !638, !377}
!2955 = !{!2956, !2957, !2958}
!2956 = !DILocalVariable(name: "p", arg: 1, scope: !2952, file: !358, line: 325, type: !638)
!2957 = !DILocalVariable(name: "s", arg: 2, scope: !2952, file: !358, line: 325, type: !377)
!2958 = !DILocalVariable(name: "result", scope: !2952, file: !358, line: 327, type: !25)
!2959 = !DILocation(line: 0, scope: !2952)
!2960 = !DILocation(line: 327, column: 30, scope: !2952)
!2961 = !DILocation(line: 0, scope: !2613, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 327, column: 18, scope: !2952)
!2963 = !DILocation(line: 0, scope: !2620, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 55, column: 25, scope: !2613, inlinedAt: !2962)
!2965 = !DILocation(line: 57, column: 26, scope: !2620, inlinedAt: !2964)
!2966 = !DILocation(line: 0, scope: !2581, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 55, column: 10, scope: !2613, inlinedAt: !2962)
!2968 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2967)
!2969 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2967)
!2970 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2967)
!2971 = !DILocation(line: 328, column: 3, scope: !2952)
!2972 = !DILocation(line: 328, column: 13, scope: !2952)
!2973 = !DILocation(line: 0, scope: !2920, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 329, column: 10, scope: !2952)
!2975 = !DILocation(line: 29, column: 10, scope: !2920, inlinedAt: !2974)
!2976 = !DILocation(line: 329, column: 3, scope: !2952)
!2977 = distinct !DISubprogram(name: "xstrdup", scope: !358, file: !358, line: 335, type: !632, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2978)
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "string", arg: 1, scope: !2977, file: !358, line: 335, type: !33)
!2980 = !DILocation(line: 0, scope: !2977)
!2981 = !DILocation(line: 337, column: 27, scope: !2977)
!2982 = !DILocation(line: 337, column: 43, scope: !2977)
!2983 = !DILocation(line: 0, scope: !2904, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 337, column: 10, scope: !2977)
!2985 = !DILocation(line: 0, scope: !2600, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 312, column: 18, scope: !2904, inlinedAt: !2984)
!2987 = !DILocation(line: 49, column: 25, scope: !2600, inlinedAt: !2986)
!2988 = !DILocation(line: 0, scope: !2581, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 49, column: 10, scope: !2600, inlinedAt: !2986)
!2990 = !DILocation(line: 39, column: 8, scope: !2588, inlinedAt: !2989)
!2991 = !DILocation(line: 39, column: 7, scope: !2581, inlinedAt: !2989)
!2992 = !DILocation(line: 40, column: 5, scope: !2588, inlinedAt: !2989)
!2993 = !DILocation(line: 0, scope: !2920, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 312, column: 10, scope: !2904, inlinedAt: !2984)
!2995 = !DILocation(line: 29, column: 10, scope: !2920, inlinedAt: !2994)
!2996 = !DILocation(line: 337, column: 3, scope: !2977)
!2997 = distinct !DISubprogram(name: "xalloc_die", scope: !392, file: !392, line: 32, type: !187, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !2998)
!2998 = !{!2999}
!2999 = !DILocalVariable(name: "__errstatus", scope: !3000, file: !392, line: 34, type: !3001)
!3000 = distinct !DILexicalBlock(scope: !2997, file: !392, line: 34, column: 3)
!3001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!3002 = !DILocation(line: 34, column: 3, scope: !3000)
!3003 = !DILocation(line: 0, scope: !3000)
!3004 = !DILocation(line: 40, column: 3, scope: !2997)
!3005 = distinct !DISubprogram(name: "close_stream", scope: !394, file: !394, line: 55, type: !3006, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3042)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!28, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 7, baseType: !3010)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 49, size: 1728, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3010, file: !67, line: 51, baseType: !28, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3010, file: !67, line: 54, baseType: !25, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3010, file: !67, line: 55, baseType: !25, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3010, file: !67, line: 56, baseType: !25, size: 64, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3010, file: !67, line: 57, baseType: !25, size: 64, offset: 256)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3010, file: !67, line: 58, baseType: !25, size: 64, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3010, file: !67, line: 59, baseType: !25, size: 64, offset: 384)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3010, file: !67, line: 60, baseType: !25, size: 64, offset: 448)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3010, file: !67, line: 61, baseType: !25, size: 64, offset: 512)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3010, file: !67, line: 64, baseType: !25, size: 64, offset: 576)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3010, file: !67, line: 65, baseType: !25, size: 64, offset: 640)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3010, file: !67, line: 66, baseType: !25, size: 64, offset: 704)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3010, file: !67, line: 68, baseType: !82, size: 64, offset: 768)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3010, file: !67, line: 70, baseType: !3026, size: 64, offset: 832)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3010, file: !67, line: 72, baseType: !28, size: 32, offset: 896)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3010, file: !67, line: 73, baseType: !28, size: 32, offset: 928)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3010, file: !67, line: 74, baseType: !89, size: 64, offset: 960)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3010, file: !67, line: 77, baseType: !29, size: 16, offset: 1024)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3010, file: !67, line: 78, baseType: !94, size: 8, offset: 1040)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3010, file: !67, line: 79, baseType: !96, size: 8, offset: 1048)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3010, file: !67, line: 81, baseType: !100, size: 64, offset: 1088)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3010, file: !67, line: 89, baseType: !103, size: 64, offset: 1152)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3010, file: !67, line: 91, baseType: !105, size: 64, offset: 1216)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3010, file: !67, line: 92, baseType: !108, size: 64, offset: 1280)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3010, file: !67, line: 93, baseType: !3026, size: 64, offset: 1344)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3010, file: !67, line: 94, baseType: !27, size: 64, offset: 1408)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3010, file: !67, line: 95, baseType: !30, size: 64, offset: 1472)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3010, file: !67, line: 96, baseType: !28, size: 32, offset: 1536)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3010, file: !67, line: 98, baseType: !115, size: 160, offset: 1568)
!3042 = !{!3043, !3044, !3046, !3047}
!3043 = !DILocalVariable(name: "stream", arg: 1, scope: !3005, file: !394, line: 55, type: !3008)
!3044 = !DILocalVariable(name: "some_pending", scope: !3005, file: !394, line: 57, type: !3045)
!3045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!3046 = !DILocalVariable(name: "prev_fail", scope: !3005, file: !394, line: 58, type: !3045)
!3047 = !DILocalVariable(name: "fclose_fail", scope: !3005, file: !394, line: 59, type: !3045)
!3048 = !DILocation(line: 0, scope: !3005)
!3049 = !DILocation(line: 57, column: 30, scope: !3005)
!3050 = !DILocalVariable(name: "__stream", arg: 1, scope: !3051, file: !940, line: 135, type: !3008)
!3051 = distinct !DISubprogram(name: "ferror_unlocked", scope: !940, file: !940, line: 135, type: !3006, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3052)
!3052 = !{!3050}
!3053 = !DILocation(line: 0, scope: !3051, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 58, column: 27, scope: !3005)
!3055 = !DILocation(line: 137, column: 10, scope: !3051, inlinedAt: !3054)
!3056 = !{!949, !516, i64 0}
!3057 = !DILocation(line: 58, column: 43, scope: !3005)
!3058 = !DILocation(line: 59, column: 29, scope: !3005)
!3059 = !DILocation(line: 59, column: 45, scope: !3005)
!3060 = !DILocation(line: 69, column: 17, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3005, file: !394, line: 69, column: 7)
!3062 = !DILocation(line: 57, column: 50, scope: !3005)
!3063 = !DILocation(line: 69, column: 33, scope: !3061)
!3064 = !DILocation(line: 69, column: 53, scope: !3061)
!3065 = !DILocation(line: 69, column: 59, scope: !3061)
!3066 = !DILocation(line: 69, column: 7, scope: !3005)
!3067 = !DILocation(line: 71, column: 11, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3061, file: !394, line: 70, column: 5)
!3069 = !DILocation(line: 72, column: 9, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3068, file: !394, line: 71, column: 11)
!3071 = !DILocation(line: 72, column: 15, scope: !3070)
!3072 = !DILocation(line: 77, column: 1, scope: !3005)
!3073 = distinct !DISubprogram(name: "rpl_fclose", scope: !396, file: !396, line: 58, type: !3074, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3110)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!28, !3076}
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 7, baseType: !3078)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 49, size: 1728, elements: !3079)
!3079 = !{!3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3078, file: !67, line: 51, baseType: !28, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3078, file: !67, line: 54, baseType: !25, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3078, file: !67, line: 55, baseType: !25, size: 64, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3078, file: !67, line: 56, baseType: !25, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3078, file: !67, line: 57, baseType: !25, size: 64, offset: 256)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3078, file: !67, line: 58, baseType: !25, size: 64, offset: 320)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3078, file: !67, line: 59, baseType: !25, size: 64, offset: 384)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3078, file: !67, line: 60, baseType: !25, size: 64, offset: 448)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3078, file: !67, line: 61, baseType: !25, size: 64, offset: 512)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3078, file: !67, line: 64, baseType: !25, size: 64, offset: 576)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3078, file: !67, line: 65, baseType: !25, size: 64, offset: 640)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3078, file: !67, line: 66, baseType: !25, size: 64, offset: 704)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3078, file: !67, line: 68, baseType: !82, size: 64, offset: 768)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3078, file: !67, line: 70, baseType: !3094, size: 64, offset: 832)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3078, file: !67, line: 72, baseType: !28, size: 32, offset: 896)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3078, file: !67, line: 73, baseType: !28, size: 32, offset: 928)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3078, file: !67, line: 74, baseType: !89, size: 64, offset: 960)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3078, file: !67, line: 77, baseType: !29, size: 16, offset: 1024)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3078, file: !67, line: 78, baseType: !94, size: 8, offset: 1040)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3078, file: !67, line: 79, baseType: !96, size: 8, offset: 1048)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3078, file: !67, line: 81, baseType: !100, size: 64, offset: 1088)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3078, file: !67, line: 89, baseType: !103, size: 64, offset: 1152)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3078, file: !67, line: 91, baseType: !105, size: 64, offset: 1216)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3078, file: !67, line: 92, baseType: !108, size: 64, offset: 1280)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3078, file: !67, line: 93, baseType: !3094, size: 64, offset: 1344)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3078, file: !67, line: 94, baseType: !27, size: 64, offset: 1408)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3078, file: !67, line: 95, baseType: !30, size: 64, offset: 1472)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3078, file: !67, line: 96, baseType: !28, size: 32, offset: 1536)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3078, file: !67, line: 98, baseType: !115, size: 160, offset: 1568)
!3110 = !{!3111, !3112, !3113, !3114}
!3111 = !DILocalVariable(name: "fp", arg: 1, scope: !3073, file: !396, line: 58, type: !3076)
!3112 = !DILocalVariable(name: "saved_errno", scope: !3073, file: !396, line: 60, type: !28)
!3113 = !DILocalVariable(name: "fd", scope: !3073, file: !396, line: 63, type: !28)
!3114 = !DILocalVariable(name: "result", scope: !3073, file: !396, line: 74, type: !28)
!3115 = !DILocation(line: 0, scope: !3073)
!3116 = !DILocation(line: 63, column: 12, scope: !3073)
!3117 = !DILocation(line: 64, column: 10, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3073, file: !396, line: 64, column: 7)
!3119 = !DILocation(line: 64, column: 7, scope: !3073)
!3120 = !DILocation(line: 65, column: 12, scope: !3118)
!3121 = !DILocation(line: 65, column: 5, scope: !3118)
!3122 = !DILocation(line: 70, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3073, file: !396, line: 70, column: 7)
!3124 = !DILocation(line: 70, column: 23, scope: !3123)
!3125 = !DILocation(line: 70, column: 33, scope: !3123)
!3126 = !DILocation(line: 70, column: 26, scope: !3123)
!3127 = !DILocation(line: 70, column: 59, scope: !3123)
!3128 = !DILocation(line: 71, column: 7, scope: !3123)
!3129 = !DILocation(line: 71, column: 10, scope: !3123)
!3130 = !DILocation(line: 70, column: 7, scope: !3073)
!3131 = !DILocation(line: 100, column: 12, scope: !3073)
!3132 = !DILocation(line: 105, column: 7, scope: !3073)
!3133 = !DILocation(line: 72, column: 19, scope: !3123)
!3134 = !DILocation(line: 105, column: 19, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3073, file: !396, line: 105, column: 7)
!3136 = !DILocation(line: 107, column: 13, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3135, file: !396, line: 106, column: 5)
!3138 = !DILocation(line: 109, column: 5, scope: !3137)
!3139 = !DILocation(line: 112, column: 1, scope: !3073)
!3140 = !DISubprogram(name: "fileno", scope: !160, file: !160, line: 809, type: !3074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3141 = !DISubprogram(name: "fclose", scope: !160, file: !160, line: 178, type: !3074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3142 = !DISubprogram(name: "lseek", scope: !3143, file: !3143, line: 339, type: !3144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3143 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!89, !28, !89, !28}
!3146 = distinct !DISubprogram(name: "rpl_fflush", scope: !398, file: !398, line: 130, type: !3147, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3183)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!28, !3149}
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 7, baseType: !3151)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 49, size: 1728, elements: !3152)
!3152 = !{!3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3151, file: !67, line: 51, baseType: !28, size: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3151, file: !67, line: 54, baseType: !25, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3151, file: !67, line: 55, baseType: !25, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3151, file: !67, line: 56, baseType: !25, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3151, file: !67, line: 57, baseType: !25, size: 64, offset: 256)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3151, file: !67, line: 58, baseType: !25, size: 64, offset: 320)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3151, file: !67, line: 59, baseType: !25, size: 64, offset: 384)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3151, file: !67, line: 60, baseType: !25, size: 64, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3151, file: !67, line: 61, baseType: !25, size: 64, offset: 512)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3151, file: !67, line: 64, baseType: !25, size: 64, offset: 576)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3151, file: !67, line: 65, baseType: !25, size: 64, offset: 640)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3151, file: !67, line: 66, baseType: !25, size: 64, offset: 704)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3151, file: !67, line: 68, baseType: !82, size: 64, offset: 768)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3151, file: !67, line: 70, baseType: !3167, size: 64, offset: 832)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3151, file: !67, line: 72, baseType: !28, size: 32, offset: 896)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3151, file: !67, line: 73, baseType: !28, size: 32, offset: 928)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3151, file: !67, line: 74, baseType: !89, size: 64, offset: 960)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3151, file: !67, line: 77, baseType: !29, size: 16, offset: 1024)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3151, file: !67, line: 78, baseType: !94, size: 8, offset: 1040)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3151, file: !67, line: 79, baseType: !96, size: 8, offset: 1048)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3151, file: !67, line: 81, baseType: !100, size: 64, offset: 1088)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3151, file: !67, line: 89, baseType: !103, size: 64, offset: 1152)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3151, file: !67, line: 91, baseType: !105, size: 64, offset: 1216)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3151, file: !67, line: 92, baseType: !108, size: 64, offset: 1280)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3151, file: !67, line: 93, baseType: !3167, size: 64, offset: 1344)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3151, file: !67, line: 94, baseType: !27, size: 64, offset: 1408)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3151, file: !67, line: 95, baseType: !30, size: 64, offset: 1472)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3151, file: !67, line: 96, baseType: !28, size: 32, offset: 1536)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3151, file: !67, line: 98, baseType: !115, size: 160, offset: 1568)
!3183 = !{!3184}
!3184 = !DILocalVariable(name: "stream", arg: 1, scope: !3146, file: !398, line: 130, type: !3149)
!3185 = !DILocation(line: 0, scope: !3146)
!3186 = !DILocation(line: 151, column: 14, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3146, file: !398, line: 151, column: 7)
!3188 = !DILocation(line: 151, column: 22, scope: !3187)
!3189 = !DILocation(line: 151, column: 27, scope: !3187)
!3190 = !DILocation(line: 151, column: 7, scope: !3146)
!3191 = !DILocation(line: 152, column: 12, scope: !3187)
!3192 = !DILocation(line: 152, column: 5, scope: !3187)
!3193 = !DILocalVariable(name: "fp", arg: 1, scope: !3194, file: !398, line: 42, type: !3149)
!3194 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !398, file: !398, line: 42, type: !3195, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3149}
!3197 = !{!3193}
!3198 = !DILocation(line: 0, scope: !3194, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 157, column: 3, scope: !3146)
!3200 = !DILocation(line: 44, column: 12, scope: !3201, inlinedAt: !3199)
!3201 = distinct !DILexicalBlock(scope: !3194, file: !398, line: 44, column: 7)
!3202 = !DILocation(line: 44, column: 19, scope: !3201, inlinedAt: !3199)
!3203 = !DILocation(line: 44, column: 7, scope: !3194, inlinedAt: !3199)
!3204 = !DILocation(line: 46, column: 5, scope: !3201, inlinedAt: !3199)
!3205 = !DILocation(line: 159, column: 10, scope: !3146)
!3206 = !DILocation(line: 159, column: 3, scope: !3146)
!3207 = !DILocation(line: 236, column: 1, scope: !3146)
!3208 = !DISubprogram(name: "fflush", scope: !160, file: !160, line: 230, type: !3147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3209 = distinct !DISubprogram(name: "rpl_fseeko", scope: !400, file: !400, line: 28, type: !3210, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3247)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!28, !3212, !3246, !28}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 7, baseType: !3214)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 49, size: 1728, elements: !3215)
!3215 = !{!3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3214, file: !67, line: 51, baseType: !28, size: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3214, file: !67, line: 54, baseType: !25, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3214, file: !67, line: 55, baseType: !25, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3214, file: !67, line: 56, baseType: !25, size: 64, offset: 192)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3214, file: !67, line: 57, baseType: !25, size: 64, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3214, file: !67, line: 58, baseType: !25, size: 64, offset: 320)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3214, file: !67, line: 59, baseType: !25, size: 64, offset: 384)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3214, file: !67, line: 60, baseType: !25, size: 64, offset: 448)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3214, file: !67, line: 61, baseType: !25, size: 64, offset: 512)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3214, file: !67, line: 64, baseType: !25, size: 64, offset: 576)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3214, file: !67, line: 65, baseType: !25, size: 64, offset: 640)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3214, file: !67, line: 66, baseType: !25, size: 64, offset: 704)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3214, file: !67, line: 68, baseType: !82, size: 64, offset: 768)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3214, file: !67, line: 70, baseType: !3230, size: 64, offset: 832)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3214, file: !67, line: 72, baseType: !28, size: 32, offset: 896)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3214, file: !67, line: 73, baseType: !28, size: 32, offset: 928)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3214, file: !67, line: 74, baseType: !89, size: 64, offset: 960)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3214, file: !67, line: 77, baseType: !29, size: 16, offset: 1024)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3214, file: !67, line: 78, baseType: !94, size: 8, offset: 1040)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3214, file: !67, line: 79, baseType: !96, size: 8, offset: 1048)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3214, file: !67, line: 81, baseType: !100, size: 64, offset: 1088)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3214, file: !67, line: 89, baseType: !103, size: 64, offset: 1152)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3214, file: !67, line: 91, baseType: !105, size: 64, offset: 1216)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3214, file: !67, line: 92, baseType: !108, size: 64, offset: 1280)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3214, file: !67, line: 93, baseType: !3230, size: 64, offset: 1344)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3214, file: !67, line: 94, baseType: !27, size: 64, offset: 1408)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3214, file: !67, line: 95, baseType: !30, size: 64, offset: 1472)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3214, file: !67, line: 96, baseType: !28, size: 32, offset: 1536)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3214, file: !67, line: 98, baseType: !115, size: 160, offset: 1568)
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !160, line: 63, baseType: !89)
!3247 = !{!3248, !3249, !3250, !3251}
!3248 = !DILocalVariable(name: "fp", arg: 1, scope: !3209, file: !400, line: 28, type: !3212)
!3249 = !DILocalVariable(name: "offset", arg: 2, scope: !3209, file: !400, line: 28, type: !3246)
!3250 = !DILocalVariable(name: "whence", arg: 3, scope: !3209, file: !400, line: 28, type: !28)
!3251 = !DILocalVariable(name: "pos", scope: !3252, file: !400, line: 123, type: !3246)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !400, line: 119, column: 5)
!3253 = distinct !DILexicalBlock(scope: !3209, file: !400, line: 55, column: 7)
!3254 = !DILocation(line: 0, scope: !3209)
!3255 = !DILocation(line: 55, column: 12, scope: !3253)
!3256 = !{!949, !434, i64 16}
!3257 = !DILocation(line: 55, column: 33, scope: !3253)
!3258 = !{!949, !434, i64 8}
!3259 = !DILocation(line: 55, column: 25, scope: !3253)
!3260 = !DILocation(line: 56, column: 7, scope: !3253)
!3261 = !DILocation(line: 56, column: 15, scope: !3253)
!3262 = !DILocation(line: 56, column: 37, scope: !3253)
!3263 = !{!949, !434, i64 32}
!3264 = !DILocation(line: 56, column: 29, scope: !3253)
!3265 = !DILocation(line: 57, column: 7, scope: !3253)
!3266 = !DILocation(line: 57, column: 15, scope: !3253)
!3267 = !{!949, !434, i64 72}
!3268 = !DILocation(line: 57, column: 29, scope: !3253)
!3269 = !DILocation(line: 55, column: 7, scope: !3209)
!3270 = !DILocation(line: 123, column: 26, scope: !3252)
!3271 = !DILocation(line: 123, column: 19, scope: !3252)
!3272 = !DILocation(line: 0, scope: !3252)
!3273 = !DILocation(line: 124, column: 15, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3252, file: !400, line: 124, column: 11)
!3275 = !DILocation(line: 124, column: 11, scope: !3252)
!3276 = !DILocation(line: 135, column: 12, scope: !3252)
!3277 = !DILocation(line: 135, column: 19, scope: !3252)
!3278 = !DILocation(line: 136, column: 12, scope: !3252)
!3279 = !DILocation(line: 136, column: 20, scope: !3252)
!3280 = !{!949, !950, i64 144}
!3281 = !DILocation(line: 167, column: 7, scope: !3252)
!3282 = !DILocation(line: 169, column: 10, scope: !3209)
!3283 = !DILocation(line: 169, column: 3, scope: !3209)
!3284 = !DILocation(line: 170, column: 1, scope: !3209)
!3285 = !DISubprogram(name: "fseeko", scope: !160, file: !160, line: 736, type: !3286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!28, !3212, !89, !28}
!3288 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !335, file: !335, line: 100, type: !3289, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !3292)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!30, !1109, !33, !30, !3291}
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!3292 = !{!3293, !3294, !3295, !3296, !3297}
!3293 = !DILocalVariable(name: "pwc", arg: 1, scope: !3288, file: !335, line: 100, type: !1109)
!3294 = !DILocalVariable(name: "s", arg: 2, scope: !3288, file: !335, line: 100, type: !33)
!3295 = !DILocalVariable(name: "n", arg: 3, scope: !3288, file: !335, line: 100, type: !30)
!3296 = !DILocalVariable(name: "ps", arg: 4, scope: !3288, file: !335, line: 100, type: !3291)
!3297 = !DILocalVariable(name: "ret", scope: !3288, file: !335, line: 130, type: !30)
!3298 = !DILocation(line: 0, scope: !3288)
!3299 = !DILocation(line: 105, column: 9, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3288, file: !335, line: 105, column: 7)
!3301 = !DILocation(line: 105, column: 7, scope: !3288)
!3302 = !DILocation(line: 117, column: 10, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3288, file: !335, line: 117, column: 7)
!3304 = !DILocation(line: 117, column: 7, scope: !3288)
!3305 = !DILocation(line: 130, column: 16, scope: !3288)
!3306 = !DILocation(line: 135, column: 11, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3288, file: !335, line: 135, column: 7)
!3308 = !DILocation(line: 135, column: 25, scope: !3307)
!3309 = !DILocation(line: 135, column: 30, scope: !3307)
!3310 = !DILocation(line: 135, column: 7, scope: !3288)
!3311 = !DILocalVariable(name: "ps", arg: 1, scope: !3312, file: !1082, line: 1135, type: !3291)
!3312 = distinct !DISubprogram(name: "mbszero", scope: !1082, file: !1082, line: 1135, type: !3313, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3291}
!3315 = !{!3311}
!3316 = !DILocation(line: 0, scope: !3312, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 137, column: 5, scope: !3307)
!3318 = !DILocalVariable(name: "__dest", arg: 1, scope: !3319, file: !1091, line: 57, type: !27)
!3319 = distinct !DISubprogram(name: "memset", scope: !1091, file: !1091, line: 57, type: !1092, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !3320)
!3320 = !{!3318, !3321, !3322}
!3321 = !DILocalVariable(name: "__ch", arg: 2, scope: !3319, file: !1091, line: 57, type: !28)
!3322 = !DILocalVariable(name: "__len", arg: 3, scope: !3319, file: !1091, line: 57, type: !30)
!3323 = !DILocation(line: 0, scope: !3319, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 1137, column: 3, scope: !3312, inlinedAt: !3317)
!3325 = !DILocation(line: 59, column: 10, scope: !3319, inlinedAt: !3324)
!3326 = !DILocation(line: 137, column: 5, scope: !3307)
!3327 = !DILocation(line: 138, column: 11, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3288, file: !335, line: 138, column: 7)
!3329 = !DILocation(line: 138, column: 7, scope: !3288)
!3330 = !DILocation(line: 139, column: 5, scope: !3328)
!3331 = !DILocation(line: 143, column: 26, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3288, file: !335, line: 143, column: 7)
!3333 = !DILocation(line: 143, column: 41, scope: !3332)
!3334 = !DILocation(line: 143, column: 7, scope: !3288)
!3335 = !DILocation(line: 145, column: 15, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !335, line: 145, column: 11)
!3337 = distinct !DILexicalBlock(scope: !3332, file: !335, line: 144, column: 5)
!3338 = !DILocation(line: 145, column: 11, scope: !3337)
!3339 = !DILocation(line: 146, column: 32, scope: !3336)
!3340 = !DILocation(line: 146, column: 16, scope: !3336)
!3341 = !DILocation(line: 146, column: 14, scope: !3336)
!3342 = !DILocation(line: 146, column: 9, scope: !3336)
!3343 = !DILocation(line: 286, column: 1, scope: !3288)
!3344 = !DISubprogram(name: "mbsinit", scope: !3345, file: !3345, line: 293, type: !3346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3345 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!28, !3348}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!3350 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !402, file: !402, line: 27, type: !2565, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3351)
!3351 = !{!3352, !3353, !3354, !3355}
!3352 = !DILocalVariable(name: "ptr", arg: 1, scope: !3350, file: !402, line: 27, type: !27)
!3353 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3350, file: !402, line: 27, type: !30)
!3354 = !DILocalVariable(name: "size", arg: 3, scope: !3350, file: !402, line: 27, type: !30)
!3355 = !DILocalVariable(name: "nbytes", scope: !3350, file: !402, line: 29, type: !30)
!3356 = !DILocation(line: 0, scope: !3350)
!3357 = !DILocation(line: 30, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3350, file: !402, line: 30, column: 7)
!3359 = !DILocalVariable(name: "ptr", arg: 1, scope: !3360, file: !2656, line: 2057, type: !27)
!3360 = distinct !DISubprogram(name: "rpl_realloc", scope: !2656, file: !2656, line: 2057, type: !2648, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3361)
!3361 = !{!3359, !3362}
!3362 = !DILocalVariable(name: "size", arg: 2, scope: !3360, file: !2656, line: 2057, type: !30)
!3363 = !DILocation(line: 0, scope: !3360, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 37, column: 10, scope: !3350)
!3365 = !DILocation(line: 2059, column: 24, scope: !3360, inlinedAt: !3364)
!3366 = !DILocation(line: 2059, column: 10, scope: !3360, inlinedAt: !3364)
!3367 = !DILocation(line: 37, column: 3, scope: !3350)
!3368 = !DILocation(line: 32, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3358, file: !402, line: 31, column: 5)
!3370 = !DILocation(line: 32, column: 13, scope: !3369)
!3371 = !DILocation(line: 33, column: 7, scope: !3369)
!3372 = !DILocation(line: 38, column: 1, scope: !3350)
!3373 = distinct !DISubprogram(name: "hard_locale", scope: !405, file: !405, line: 28, type: !3374, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!50, !28}
!3376 = !{!3377, !3378}
!3377 = !DILocalVariable(name: "category", arg: 1, scope: !3373, file: !405, line: 28, type: !28)
!3378 = !DILocalVariable(name: "locale", scope: !3373, file: !405, line: 30, type: !3379)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2056, elements: !3380)
!3380 = !{!3381}
!3381 = !DISubrange(count: 257)
!3382 = !DILocation(line: 0, scope: !3373)
!3383 = !DILocation(line: 30, column: 3, scope: !3373)
!3384 = !DILocation(line: 30, column: 8, scope: !3373)
!3385 = !DILocation(line: 32, column: 7, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3373, file: !405, line: 32, column: 7)
!3387 = !DILocation(line: 32, column: 7, scope: !3373)
!3388 = !DILocalVariable(name: "__s1", arg: 1, scope: !3389, file: !470, line: 1359, type: !33)
!3389 = distinct !DISubprogram(name: "streq", scope: !470, file: !470, line: 1359, type: !471, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3390)
!3390 = !{!3388, !3391}
!3391 = !DILocalVariable(name: "__s2", arg: 2, scope: !3389, file: !470, line: 1359, type: !33)
!3392 = !DILocation(line: 0, scope: !3389, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 35, column: 9, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3373, file: !405, line: 35, column: 7)
!3395 = !DILocation(line: 1361, column: 11, scope: !3389, inlinedAt: !3393)
!3396 = !DILocation(line: 1361, column: 10, scope: !3389, inlinedAt: !3393)
!3397 = !DILocation(line: 35, column: 29, scope: !3394)
!3398 = !DILocation(line: 0, scope: !3389, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 35, column: 32, scope: !3394)
!3400 = !DILocation(line: 1361, column: 11, scope: !3389, inlinedAt: !3399)
!3401 = !DILocation(line: 1361, column: 10, scope: !3389, inlinedAt: !3399)
!3402 = !DILocation(line: 35, column: 7, scope: !3373)
!3403 = !DILocation(line: 46, column: 3, scope: !3373)
!3404 = !DILocation(line: 47, column: 1, scope: !3373)
!3405 = distinct !DISubprogram(name: "setlocale_null_r", scope: !407, file: !407, line: 154, type: !3406, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!28, !28, !25, !30}
!3408 = !{!3409, !3410, !3411}
!3409 = !DILocalVariable(name: "category", arg: 1, scope: !3405, file: !407, line: 154, type: !28)
!3410 = !DILocalVariable(name: "buf", arg: 2, scope: !3405, file: !407, line: 154, type: !25)
!3411 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3405, file: !407, line: 154, type: !30)
!3412 = !DILocation(line: 0, scope: !3405)
!3413 = !DILocation(line: 159, column: 10, scope: !3405)
!3414 = !DILocation(line: 159, column: 3, scope: !3405)
!3415 = distinct !DISubprogram(name: "setlocale_null", scope: !407, file: !407, line: 186, type: !3416, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!33, !28}
!3418 = !{!3419}
!3419 = !DILocalVariable(name: "category", arg: 1, scope: !3415, file: !407, line: 186, type: !28)
!3420 = !DILocation(line: 0, scope: !3415)
!3421 = !DILocation(line: 189, column: 10, scope: !3415)
!3422 = !DILocation(line: 189, column: 3, scope: !3415)
!3423 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !409, file: !409, line: 35, type: !3416, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3424)
!3424 = !{!3425, !3426}
!3425 = !DILocalVariable(name: "category", arg: 1, scope: !3423, file: !409, line: 35, type: !28)
!3426 = !DILocalVariable(name: "result", scope: !3423, file: !409, line: 37, type: !33)
!3427 = !DILocation(line: 0, scope: !3423)
!3428 = !DILocation(line: 37, column: 24, scope: !3423)
!3429 = !DILocation(line: 62, column: 3, scope: !3423)
!3430 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !409, file: !409, line: 66, type: !3406, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3431)
!3431 = !{!3432, !3433, !3434, !3435, !3436}
!3432 = !DILocalVariable(name: "category", arg: 1, scope: !3430, file: !409, line: 66, type: !28)
!3433 = !DILocalVariable(name: "buf", arg: 2, scope: !3430, file: !409, line: 66, type: !25)
!3434 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3430, file: !409, line: 66, type: !30)
!3435 = !DILocalVariable(name: "result", scope: !3430, file: !409, line: 111, type: !33)
!3436 = !DILocalVariable(name: "length", scope: !3437, file: !409, line: 125, type: !30)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !409, line: 124, column: 5)
!3438 = distinct !DILexicalBlock(scope: !3430, file: !409, line: 113, column: 7)
!3439 = !DILocation(line: 0, scope: !3430)
!3440 = !DILocation(line: 0, scope: !3423, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 111, column: 24, scope: !3430)
!3442 = !DILocation(line: 37, column: 24, scope: !3423, inlinedAt: !3441)
!3443 = !DILocation(line: 113, column: 14, scope: !3438)
!3444 = !DILocation(line: 113, column: 7, scope: !3430)
!3445 = !DILocation(line: 116, column: 19, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !409, line: 116, column: 11)
!3447 = distinct !DILexicalBlock(scope: !3438, file: !409, line: 114, column: 5)
!3448 = !DILocation(line: 116, column: 11, scope: !3447)
!3449 = !DILocation(line: 120, column: 16, scope: !3446)
!3450 = !DILocation(line: 120, column: 9, scope: !3446)
!3451 = !DILocation(line: 125, column: 23, scope: !3437)
!3452 = !DILocation(line: 0, scope: !3437)
!3453 = !DILocation(line: 126, column: 18, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3437, file: !409, line: 126, column: 11)
!3455 = !DILocation(line: 126, column: 11, scope: !3437)
!3456 = !DILocation(line: 128, column: 39, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !409, line: 127, column: 9)
!3458 = !DILocalVariable(name: "__dest", arg: 1, scope: !3459, file: !1091, line: 26, type: !2923)
!3459 = distinct !DISubprogram(name: "memcpy", scope: !1091, file: !1091, line: 26, type: !2921, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3460)
!3460 = !{!3458, !3461, !3462}
!3461 = !DILocalVariable(name: "__src", arg: 2, scope: !3459, file: !1091, line: 26, type: !637)
!3462 = !DILocalVariable(name: "__len", arg: 3, scope: !3459, file: !1091, line: 26, type: !30)
!3463 = !DILocation(line: 0, scope: !3459, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 128, column: 11, scope: !3457)
!3465 = !DILocation(line: 29, column: 10, scope: !3459, inlinedAt: !3464)
!3466 = !DILocation(line: 129, column: 11, scope: !3457)
!3467 = !DILocation(line: 133, column: 23, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !409, line: 133, column: 15)
!3469 = distinct !DILexicalBlock(scope: !3454, file: !409, line: 132, column: 9)
!3470 = !DILocation(line: 133, column: 15, scope: !3469)
!3471 = !DILocation(line: 138, column: 44, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3468, file: !409, line: 134, column: 13)
!3473 = !DILocation(line: 0, scope: !3459, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 138, column: 15, scope: !3472)
!3475 = !DILocation(line: 29, column: 10, scope: !3459, inlinedAt: !3474)
!3476 = !DILocation(line: 139, column: 15, scope: !3472)
!3477 = !DILocation(line: 139, column: 32, scope: !3472)
!3478 = !DILocation(line: 140, column: 13, scope: !3472)
!3479 = !DILocation(line: 0, scope: !3438)
!3480 = !DILocation(line: 145, column: 1, scope: !3430)
