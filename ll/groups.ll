; ModuleID = 'src/groups.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Usage: %s [OPTION]... [USERNAME]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [155 x i8] c"Print group memberships for each USERNAME or, if no USERNAME is specified, for\0Athe current process (which may differ if the groups database has changed).\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !34
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.23 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1
@.str.3.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4.5 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !133
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !138
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !143
@.str.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !145
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !181
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !151
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !177
@.str.1.61 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.63 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.62 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !179
@.str.4.56 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.57 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.58 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !186
@.str.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !192
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
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.87, i32 0, i32 0), i8* null], align 8, !dbg !228
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !254
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !272
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !302
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !309
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !274
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !311
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !260
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.91 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.89 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !279
@.str.96 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.97 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.98 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.99 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.100 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.101 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.102 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.117 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.118 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.119 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.120 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.121 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.122 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !317
@exit_failure = dso_local global i32 1, align 4, !dbg !325
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !331
@.str.155 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !472 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !476, metadata !DIExpression()), !dbg !477
  %3 = icmp eq i32 %0, 0, !dbg !478
  br i1 %3, label %9, label %4, !dbg !480

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !481, !tbaa !483
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !481
  %7 = load i8*, i8** @program_name, align 8, !dbg !481, !tbaa !483
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !481
  br label %52, !dbg !481

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !487
  %11 = load i8*, i8** @program_name, align 8, !dbg !487, !tbaa !483
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !487
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !489
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !489, !tbaa !483
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !489
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !490
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !490
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !491
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !491
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #32, !dbg !511
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !513
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #32, !dbg !513
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !497, metadata !DIExpression()) #32, !dbg !514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !514
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !506, metadata !DIExpression()) #32, !dbg !511
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !507, metadata !DIExpression()) #32, !dbg !511
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !515
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !507, metadata !DIExpression()) #32, !dbg !511
  br label %20, !dbg !516

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !507, metadata !DIExpression()) #32, !dbg !511
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !524
  call void @llvm.dbg.value(metadata i8* %21, metadata !523, metadata !DIExpression()) #32, !dbg !524
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #33, !dbg !526
  %24 = icmp eq i32 %23, 0, !dbg !527
  br i1 %24, label %30, label %25, !dbg !516

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.infomap, %struct.infomap* %22, i64 1, !dbg !528
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !507, metadata !DIExpression()) #32, !dbg !511
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 0, i32 0, !dbg !529
  %28 = load i8*, i8** %27, align 8, !dbg !529, !tbaa !530
  %29 = icmp eq i8* %28, null, !dbg !532
  br i1 %29, label %30, label %20, !dbg !533, !llvm.loop !534

30:                                               ; preds = %25, %20
  %31 = phi %struct.infomap* [ %22, %20 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 0, i32 1, !dbg !536
  %33 = load i8*, i8** %32, align 8, !dbg !536, !tbaa !538
  %34 = icmp eq i8* %33, null, !dbg !539
  %35 = select i1 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %33, !dbg !540
  call void @llvm.dbg.value(metadata i8* %35, metadata !506, metadata !DIExpression()) #32, !dbg !511
  tail call void @emit_bug_reporting_address() #32, !dbg !541
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !542
  call void @llvm.dbg.value(metadata i8* %36, metadata !509, metadata !DIExpression()) #32, !dbg !511
  %37 = icmp eq i8* %36, null, !dbg !543
  br i1 %37, label %45, label %38, !dbg !545

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 noundef 3) #33, !dbg !546
  %40 = icmp eq i32 %39, 0, !dbg !546
  br i1 %40, label %45, label %41, !dbg !547

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #32, !dbg !548
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !548, !tbaa !483
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #32, !dbg !548
  br label %45, !dbg !550

45:                                               ; preds = %30, %38, %41
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !551
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !523, metadata !DIExpression()) #32, !dbg !551
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !510, metadata !DIExpression()) #32, !dbg !511
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #32, !dbg !553
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !553
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #32, !dbg !554
  %49 = icmp eq i8* %35, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !554
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !554
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef %35, i8* noundef %50) #32, !dbg !554
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %18) #32, !dbg !555
  br label %52

52:                                               ; preds = %45, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !556
  unreachable, !dbg !556
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !557 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !562 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !36 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !41, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %0, metadata !42, metadata !DIExpression()), !dbg !567
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !568, !tbaa !569
  %3 = icmp eq i32 %2, -1, !dbg !571
  br i1 %3, label %4, label %16, !dbg !572

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #32, !dbg !573
  call void @llvm.dbg.value(metadata i8* %5, metadata !43, metadata !DIExpression()), !dbg !574
  %6 = icmp eq i8* %5, null, !dbg !575
  br i1 %6, label %14, label %7, !dbg !576

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !577, !tbaa !578
  %9 = icmp eq i8 %8, 0, !dbg !577
  br i1 %9, label %14, label %10, !dbg !579

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !517, metadata !DIExpression()) #32, !dbg !580
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), metadata !523, metadata !DIExpression()) #32, !dbg !580
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !582
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
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !483
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !589
  br label %121, !dbg !591

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !46, metadata !DIExpression()), !dbg !567
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !592
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !593
  call void @llvm.dbg.value(metadata i8* %24, metadata !48, metadata !DIExpression()), !dbg !567
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !594
  call void @llvm.dbg.value(metadata i8* %25, metadata !49, metadata !DIExpression()), !dbg !567
  %26 = icmp eq i8* %25, null, !dbg !595
  br i1 %26, label %53, label %27, !dbg !596

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !597
  br i1 %28, label %53, label %29, !dbg !598

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !50, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 0, metadata !54, metadata !DIExpression()), !dbg !599
  %30 = icmp ult i8* %24, %25, !dbg !600
  br i1 %30, label %31, label %53, !dbg !601

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !567
  %33 = load i16*, i16** %32, align 8, !tbaa !483
  br label %34, !dbg !601

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !50, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 %36, metadata !54, metadata !DIExpression()), !dbg !599
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !602
  call void @llvm.dbg.value(metadata i8* %37, metadata !50, metadata !DIExpression()), !dbg !599
  %38 = load i8, i8* %35, align 1, !dbg !602, !tbaa !578
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !602
  %41 = load i16, i16* %40, align 2, !dbg !602, !tbaa !603
  %42 = lshr i16 %41, 13, !dbg !605
  %43 = and i16 %42, 1, !dbg !605
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !606
  call void @llvm.dbg.value(metadata i64 %45, metadata !54, metadata !DIExpression()), !dbg !599
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
  call void @llvm.dbg.value(metadata i8 poison, metadata !46, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %54, metadata !49, metadata !DIExpression()), !dbg !567
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #33, !dbg !612
  call void @llvm.dbg.value(metadata i64 %56, metadata !55, metadata !DIExpression()), !dbg !567
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !613
  call void @llvm.dbg.value(metadata i8* %57, metadata !56, metadata !DIExpression()), !dbg !567
  br label %58, !dbg !614

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !567
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !46, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %59, metadata !56, metadata !DIExpression()), !dbg !567
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
  call void @llvm.dbg.value(metadata i8 poison, metadata !46, metadata !DIExpression()), !dbg !567
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !623
  %70 = load i16*, i16** %69, align 8, !dbg !623, !tbaa !483
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
  call void @llvm.dbg.value(metadata i8* %90, metadata !56, metadata !DIExpression()), !dbg !567
  br label %58, !dbg !614, !llvm.loop !635

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !637
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !483
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !637
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !523, metadata !DIExpression()) #32, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !650
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !652
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !517, metadata !DIExpression()) #32, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !116, metadata !DIExpression()), !dbg !567
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i64 noundef 6) #33, !dbg !658
  %96 = icmp eq i32 %95, 0, !dbg !658
  br i1 %96, label %100, label %97, !dbg !660

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 noundef 9) #33, !dbg !661
  %99 = icmp eq i32 %98, 0, !dbg !661
  br i1 %99, label %100, label %103, !dbg !662

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !663
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !663
  br label %106, !dbg !665

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !666
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !666
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !483
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !668
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !483
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !669
  %111 = ptrtoint i8* %59 to i64, !dbg !670
  %112 = sub i64 %111, %92, !dbg !670
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !483
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !670
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !483
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !671
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !483
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !672
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !483
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !694, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %1, metadata !695, metadata !DIExpression()), !dbg !726
  %3 = load i8*, i8** %1, align 8, !dbg !727, !tbaa !483
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !728
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #32, !dbg !729
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !730
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !731
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !732
  %8 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #32, !dbg !733
  call void @llvm.dbg.value(metadata i32 %8, metadata !696, metadata !DIExpression()), !dbg !726
  switch i32 %8, label %15 [
    i32 -1, label %16
    i32 -2, label %9
    i32 -3, label %10
  ], !dbg !734

9:                                                ; preds = %2
  tail call void @usage(i32 noundef 0) #36, !dbg !735
  unreachable, !dbg !735

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !483
  %12 = load i8*, i8** @Version, align 8, !dbg !738, !tbaa !483
  %13 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #32, !dbg !738
  %14 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #32, !dbg !738
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef null) #32, !dbg !738
  tail call void @exit(i32 noundef 0) #34, !dbg !738
  unreachable, !dbg !738

15:                                               ; preds = %2
  tail call void @usage(i32 noundef 1) #36, !dbg !739
  unreachable, !dbg !739

16:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8 1, metadata !697, metadata !DIExpression()), !dbg !726
  %17 = load i32, i32* @optind, align 4, !dbg !740, !tbaa !569
  %18 = icmp eq i32 %17, %0, !dbg !741
  br i1 %18, label %21, label %19, !dbg !742

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 poison, metadata !697, metadata !DIExpression()), !dbg !726
  %20 = icmp slt i32 %17, %0, !dbg !743
  br i1 %20, label %58, label %118, !dbg !744

21:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 -1, metadata !698, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i32 -1, metadata !703, metadata !DIExpression()), !dbg !745
  %22 = tail call i32* @__errno_location() #35, !dbg !746
  store i32 0, i32* %22, align 4, !dbg !747, !tbaa !569
  %23 = tail call i32 @getuid() #32, !dbg !748
  call void @llvm.dbg.value(metadata i32 %23, metadata !704, metadata !DIExpression()), !dbg !745
  %24 = icmp eq i32 %23, -1, !dbg !749
  br i1 %24, label %25, label %30, !dbg !751

25:                                               ; preds = %21
  %26 = load i32, i32* %22, align 4, !dbg !752, !tbaa !569
  %27 = icmp eq i32 %26, 0, !dbg !752
  br i1 %27, label %30, label %28, !dbg !753

28:                                               ; preds = %25
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #32, !dbg !754
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %26, i8* noundef %29) #32, !dbg !754
  unreachable, !dbg !754

30:                                               ; preds = %25, %21
  store i32 0, i32* %22, align 4, !dbg !755, !tbaa !569
  %31 = tail call i32 @getegid() #32, !dbg !756
  call void @llvm.dbg.value(metadata i32 %31, metadata !705, metadata !DIExpression()), !dbg !745
  %32 = icmp eq i32 %31, -1, !dbg !757
  br i1 %32, label %33, label %38, !dbg !759

33:                                               ; preds = %30
  %34 = load i32, i32* %22, align 4, !dbg !760, !tbaa !569
  %35 = icmp eq i32 %34, 0, !dbg !760
  br i1 %35, label %38, label %36, !dbg !761

36:                                               ; preds = %33
  %37 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #32, !dbg !762
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %34, i8* noundef %37) #32, !dbg !762
  unreachable, !dbg !762

38:                                               ; preds = %33, %30
  store i32 0, i32* %22, align 4, !dbg !763, !tbaa !569
  %39 = tail call i32 @getgid() #32, !dbg !764
  call void @llvm.dbg.value(metadata i32 %39, metadata !706, metadata !DIExpression()), !dbg !745
  %40 = icmp eq i32 %39, -1, !dbg !765
  br i1 %40, label %41, label %46, !dbg !767

41:                                               ; preds = %38
  %42 = load i32, i32* %22, align 4, !dbg !768, !tbaa !569
  %43 = icmp eq i32 %42, 0, !dbg !768
  br i1 %43, label %46, label %44, !dbg !769

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #32, !dbg !770
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %42, i8* noundef %45) #32, !dbg !770
  unreachable, !dbg !770

46:                                               ; preds = %41, %38
  %47 = tail call i1 @print_group_list(i8* noundef null, i32 noundef %23, i32 noundef %39, i32 noundef %31, i1 noundef true, i8 noundef 32) #32, !dbg !771
  call void @llvm.dbg.value(metadata i8 undef, metadata !697, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32 10, metadata !773, metadata !DIExpression()) #32, !dbg !779
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !781, !tbaa !483
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 5, !dbg !781
  %50 = load i8*, i8** %49, align 8, !dbg !781, !tbaa !782
  %51 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 6, !dbg !781
  %52 = load i8*, i8** %51, align 8, !dbg !781, !tbaa !785
  %53 = icmp ult i8* %50, %52, !dbg !781
  br i1 %53, label %56, label %54, !dbg !781, !prof !786

54:                                               ; preds = %46
  %55 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %48, i32 noundef 10) #32, !dbg !781
  br label %118, !dbg !781

56:                                               ; preds = %46
  %57 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !781
  store i8* %57, i8** %49, align 8, !dbg !781, !tbaa !782
  store i8 10, i8* %50, align 1, !dbg !781, !tbaa !578
  br label %118, !dbg !781

58:                                               ; preds = %19, %113
  %59 = phi i32 [ %116, %113 ], [ %17, %19 ]
  %60 = phi i1 [ %114, %113 ], [ true, %19 ]
  %61 = sext i32 %59 to i64, !dbg !787
  %62 = getelementptr inbounds i8*, i8** %1, i64 %61, !dbg !787
  %63 = load i8*, i8** %62, align 8, !dbg !787, !tbaa !483
  %64 = tail call %struct.passwd* @getpwnam(i8* noundef %63), !dbg !788
  call void @llvm.dbg.value(metadata %struct.passwd* %64, metadata !707, metadata !DIExpression()), !dbg !789
  %65 = icmp eq %struct.passwd* %64, null, !dbg !790
  br i1 %65, label %66, label %73, !dbg !792

66:                                               ; preds = %58
  %67 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #32, !dbg !793
  %68 = load i32, i32* @optind, align 4, !dbg !793, !tbaa !569
  %69 = sext i32 %68 to i64, !dbg !793
  %70 = getelementptr inbounds i8*, i8** %1, i64 %69, !dbg !793
  %71 = load i8*, i8** %70, align 8, !dbg !793, !tbaa !483
  %72 = tail call i8* @quote(i8* noundef %71) #32, !dbg !793
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %67, i8* noundef %72) #32, !dbg !793
  call void @llvm.dbg.value(metadata i8 0, metadata !697, metadata !DIExpression()), !dbg !726
  br label %113, !dbg !795

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i64 0, i32 2, !dbg !796
  %75 = load i32, i32* %74, align 8, !dbg !796, !tbaa !797
  call void @llvm.dbg.value(metadata i32 %75, metadata !723, metadata !DIExpression()), !dbg !789
  %76 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i64 0, i32 3, !dbg !799
  %77 = load i32, i32* %76, align 4, !dbg !799, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %77, metadata !724, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 %77, metadata !725, metadata !DIExpression()), !dbg !789
  %78 = load i32, i32* @optind, align 4, !dbg !801, !tbaa !569
  %79 = sext i32 %78 to i64, !dbg !801
  %80 = getelementptr inbounds i8*, i8** %1, i64 %79, !dbg !801
  %81 = load i8*, i8** %80, align 8, !dbg !801, !tbaa !483
  %82 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* noundef %81) #32, !dbg !801
  %83 = load i32, i32* @optind, align 4, !dbg !802, !tbaa !569
  %84 = sext i32 %83 to i64, !dbg !804
  %85 = getelementptr inbounds i8*, i8** %1, i64 %84, !dbg !804
  %86 = load i8*, i8** %85, align 8, !dbg !804, !tbaa !483
  %87 = tail call i1 @print_group_list(i8* noundef %86, i32 noundef %75, i32 noundef %77, i32 noundef %77, i1 noundef true, i8 noundef 32) #32, !dbg !805
  %88 = select i1 %87, i1 %60, i1 false, !dbg !806
  call void @llvm.dbg.value(metadata i8 poison, metadata !697, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32 10, metadata !773, metadata !DIExpression()) #32, !dbg !807
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !809, !tbaa !483
  %90 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %89, i64 0, i32 5, !dbg !809
  %91 = load i8*, i8** %90, align 8, !dbg !809, !tbaa !782
  %92 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %89, i64 0, i32 6, !dbg !809
  %93 = load i8*, i8** %92, align 8, !dbg !809, !tbaa !785
  %94 = icmp ult i8* %91, %93, !dbg !809
  br i1 %94, label %97, label %95, !dbg !809, !prof !786

95:                                               ; preds = %73
  %96 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %89, i32 noundef 10) #32, !dbg !809
  br label %99, !dbg !809

97:                                               ; preds = %73
  %98 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !809
  store i8* %98, i8** %90, align 8, !dbg !809, !tbaa !782
  store i8 10, i8* %91, align 1, !dbg !809, !tbaa !578
  br label %99, !dbg !809

99:                                               ; preds = %95, %97
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !810, !tbaa !483
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %100, metadata !812, metadata !DIExpression()), !dbg !817
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 0, !dbg !819
  %102 = load i32, i32* %101, align 8, !dbg !819, !tbaa !820
  %103 = and i32 %102, 32, !dbg !810
  %104 = icmp eq i32 %103, 0, !dbg !810
  br i1 %104, label %113, label %105, !dbg !821

105:                                              ; preds = %99
  %106 = tail call i32* @__errno_location() #35, !dbg !822
  %107 = load i32, i32* %106, align 4, !dbg !822, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %107, metadata !825, metadata !DIExpression()) #32, !dbg !827
  %108 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef nonnull %100) #32, !dbg !828
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829, !tbaa !483
  %110 = tail call i32 @fpurge(%struct._IO_FILE* noundef %109) #32, !dbg !830
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !831, !tbaa !483
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %111) #32, !dbg !831
  %112 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #32, !dbg !832
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %107, i8* noundef %112) #32, !dbg !832
  unreachable, !dbg !832

113:                                              ; preds = %99, %66
  %114 = phi i1 [ false, %66 ], [ %88, %99 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !697, metadata !DIExpression()), !dbg !726
  %115 = load i32, i32* @optind, align 4, !dbg !833, !tbaa !569
  %116 = add nsw i32 %115, 1, !dbg !833
  store i32 %116, i32* @optind, align 4, !dbg !833, !tbaa !569
  %117 = icmp slt i32 %116, %0, !dbg !743
  br i1 %117, label %58, label %118, !dbg !744, !llvm.loop !834

118:                                              ; preds = %113, %19, %56, %54
  %119 = phi i1 [ %47, %54 ], [ %47, %56 ], [ true, %19 ], [ %114, %113 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !697, metadata !DIExpression()), !dbg !726
  %120 = xor i1 %119, true, !dbg !836
  %121 = zext i1 %120 to i32, !dbg !836
  ret i32 %121, !dbg !837
}

; Function Attrs: nounwind
declare !dbg !838 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !841 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !842 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !845 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !851 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !855 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !858 i32 @getgid() local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !859 noundef %struct.passwd* @getpwnam(i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !862 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !863 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group_list(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef %4, i8 noundef %5) local_unnamed_addr #12 !dbg !866 {
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !870, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %1, metadata !871, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %2, metadata !872, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %3, metadata !873, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i1 %4, metadata !874, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !893
  call void @llvm.dbg.value(metadata i8 %5, metadata !875, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8 1, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !877, metadata !DIExpression()), !dbg !893
  %8 = icmp eq i8* %0, null, !dbg !894
  br i1 %8, label %12, label %9, !dbg !896

9:                                                ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 noundef %1) #32, !dbg !897
  call void @llvm.dbg.value(metadata %struct.passwd* %10, metadata !877, metadata !DIExpression()), !dbg !893
  %11 = icmp ne %struct.passwd* %10, null, !dbg !899
  br label %12, !dbg !901

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  %14 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ], !dbg !893
  call void @llvm.dbg.value(metadata %struct.passwd* %14, metadata !877, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 %2, metadata !902, metadata !DIExpression()) #32, !dbg !925
  call void @llvm.dbg.value(metadata i1 %4, metadata !907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !925
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !908, metadata !DIExpression()) #32, !dbg !925
  call void @llvm.dbg.value(metadata i8 1, metadata !917, metadata !DIExpression()) #32, !dbg !925
  br i1 %4, label %17, label %15, !dbg !928

15:                                               ; preds = %12
  %16 = zext i32 %2 to i64, !dbg !929
  br label %27, !dbg !928

17:                                               ; preds = %12
  %18 = tail call %struct.group* @getgrgid(i32 noundef %2) #32, !dbg !931
  call void @llvm.dbg.value(metadata %struct.group* %18, metadata !908, metadata !DIExpression()) #32, !dbg !925
  %19 = icmp eq %struct.group* %18, null, !dbg !932
  br i1 %19, label %20, label %23, !dbg !933

20:                                               ; preds = %17
  %21 = zext i32 %2 to i64, !dbg !934
  call void @llvm.dbg.value(metadata i64 %21, metadata !918, metadata !DIExpression()) #32, !dbg !935
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !936
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %22, i64 noundef %21) #32, !dbg !936
  call void @llvm.dbg.value(metadata i8 0, metadata !917, metadata !DIExpression()) #32, !dbg !925
  br label %27, !dbg !937

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %struct.group* %18, metadata !908, metadata !DIExpression()) #32, !dbg !925
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !925
  %24 = getelementptr inbounds %struct.group, %struct.group* %18, i64 0, i32 0, !dbg !938
  %25 = load i8*, i8** %24, align 8, !dbg !938, !tbaa !939
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %25) #32, !dbg !938
  br label %32, !dbg !938

27:                                               ; preds = %20, %15
  %28 = phi i64 [ %16, %15 ], [ %21, %20 ], !dbg !929
  %29 = xor i1 %4, true, !dbg !925
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !925
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %28) #32, !dbg !929
  %31 = select i1 %29, i1 %13, i1 false
  br label %32

32:                                               ; preds = %23, %27
  %33 = phi i1 [ %31, %27 ], [ %13, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  %34 = icmp eq i32 %3, %2, !dbg !941
  br i1 %34, label %65, label %35, !dbg !943

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i8 %5, metadata !944, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !947
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !950, !tbaa !483
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !950
  %38 = load i8*, i8** %37, align 8, !dbg !950, !tbaa !782
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !950
  %40 = load i8*, i8** %39, align 8, !dbg !950, !tbaa !785
  %41 = icmp ult i8* %38, %40, !dbg !950
  br i1 %41, label %45, label %42, !dbg !950, !prof !786

42:                                               ; preds = %35
  %43 = zext i8 %5 to i32, !dbg !951
  call void @llvm.dbg.value(metadata i32 %43, metadata !944, metadata !DIExpression()) #32, !dbg !947
  %44 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %36, i32 noundef %43) #32, !dbg !950
  br label %47, !dbg !950

45:                                               ; preds = %35
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !950
  store i8* %46, i8** %37, align 8, !dbg !950, !tbaa !782
  store i8 %5, i8* %38, align 1, !dbg !950, !tbaa !578
  br label %47, !dbg !950

47:                                               ; preds = %42, %45
  call void @llvm.dbg.value(metadata i32 %3, metadata !902, metadata !DIExpression()) #32, !dbg !952
  call void @llvm.dbg.value(metadata i1 %4, metadata !907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !952
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !908, metadata !DIExpression()) #32, !dbg !952
  call void @llvm.dbg.value(metadata i8 1, metadata !917, metadata !DIExpression()) #32, !dbg !952
  br i1 %4, label %50, label %48, !dbg !955

48:                                               ; preds = %47
  %49 = zext i32 %3 to i64, !dbg !956
  br label %60, !dbg !955

50:                                               ; preds = %47
  %51 = tail call %struct.group* @getgrgid(i32 noundef %3) #32, !dbg !957
  call void @llvm.dbg.value(metadata %struct.group* %51, metadata !908, metadata !DIExpression()) #32, !dbg !952
  %52 = icmp eq %struct.group* %51, null, !dbg !958
  br i1 %52, label %53, label %56, !dbg !959

53:                                               ; preds = %50
  %54 = zext i32 %3 to i64, !dbg !960
  call void @llvm.dbg.value(metadata i64 %54, metadata !918, metadata !DIExpression()) #32, !dbg !961
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !962
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %55, i64 noundef %54) #32, !dbg !962
  call void @llvm.dbg.value(metadata i8 0, metadata !917, metadata !DIExpression()) #32, !dbg !952
  br label %60, !dbg !963

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct.group* %51, metadata !908, metadata !DIExpression()) #32, !dbg !952
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !952
  %57 = getelementptr inbounds %struct.group, %struct.group* %51, i64 0, i32 0, !dbg !964
  %58 = load i8*, i8** %57, align 8, !dbg !964, !tbaa !939
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %58) #32, !dbg !964
  br label %65, !dbg !964

60:                                               ; preds = %53, %48
  %61 = phi i64 [ %49, %48 ], [ %54, %53 ], !dbg !956
  %62 = xor i1 %4, true, !dbg !952
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !952
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %61) #32, !dbg !956
  %64 = select i1 %62, i1 %33, i1 false
  br label %65

65:                                               ; preds = %60, %56, %32
  %66 = phi i1 [ %33, %32 ], [ %64, %60 ], [ %33, %56 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  %67 = bitcast i32** %7 to i8*, !dbg !965
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #32, !dbg !965
  %68 = icmp eq %struct.passwd* %14, null, !dbg !966
  br i1 %68, label %72, label %69, !dbg !966

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i64 0, i32 3, !dbg !967
  %71 = load i32, i32* %70, align 4, !dbg !967, !tbaa !800
  br label %72, !dbg !966

72:                                               ; preds = %65, %69
  %73 = phi i32 [ %71, %69 ], [ %3, %65 ], !dbg !966
  call void @llvm.dbg.value(metadata i32** %7, metadata !888, metadata !DIExpression(DW_OP_deref)), !dbg !968
  %74 = call i32 @xgetgroups(i8* noundef %0, i32 noundef %73, i32** noundef nonnull %7) #32, !dbg !969
  call void @llvm.dbg.value(metadata i32 %74, metadata !890, metadata !DIExpression()), !dbg !968
  %75 = icmp slt i32 %74, 0, !dbg !970
  br i1 %75, label %82, label %76, !dbg !972

76:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !891, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  %77 = icmp eq i32 %74, 0, !dbg !974
  br i1 %77, label %90, label %78, !dbg !976

78:                                               ; preds = %76
  %79 = zext i8 %5 to i32
  %80 = xor i1 %4, true
  %81 = zext i32 %74 to i64, !dbg !974
  br label %94, !dbg !976

82:                                               ; preds = %72
  %83 = tail call i32* @__errno_location() #35, !dbg !977
  %84 = load i32, i32* %83, align 4, !dbg !977, !tbaa !569
  br i1 %8, label %88, label %85, !dbg !980

85:                                               ; preds = %82
  %86 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !981
  %87 = call i8* @quote(i8* noundef nonnull %0) #32, !dbg !981
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %84, i8* noundef %86, i8* noundef %87) #32, !dbg !981
  br label %140, !dbg !983

88:                                               ; preds = %82
  %89 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.23, i64 0, i64 0), i32 noundef 5) #32, !dbg !984
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %84, i8* noundef %89) #32, !dbg !984
  br label %140

90:                                               ; preds = %136, %76
  %91 = phi i1 [ %66, %76 ], [ %137, %136 ]
  %92 = bitcast i32** %7 to i8**, !dbg !986
  %93 = load i8*, i8** %92, align 8, !dbg !986, !tbaa !483
  call void @llvm.dbg.value(metadata i32* undef, metadata !888, metadata !DIExpression()), !dbg !968
  call void @free(i8* noundef %93) #32, !dbg !987
  br label %140, !dbg !988

94:                                               ; preds = %78, %136
  %95 = phi i64 [ 0, %78 ], [ %138, %136 ]
  %96 = phi i1 [ %66, %78 ], [ %137, %136 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !891, metadata !DIExpression()), !dbg !973
  %97 = load i32*, i32** %7, align 8, !dbg !989, !tbaa !483
  call void @llvm.dbg.value(metadata i32* %97, metadata !888, metadata !DIExpression()), !dbg !968
  %98 = getelementptr inbounds i32, i32* %97, i64 %95, !dbg !989
  %99 = load i32, i32* %98, align 4, !dbg !989, !tbaa !569
  %100 = icmp eq i32 %99, %2, !dbg !991
  %101 = icmp eq i32 %99, %3
  %102 = or i1 %100, %101, !dbg !992
  br i1 %102, label %136, label %103, !dbg !992

103:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i8 %5, metadata !944, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !993
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !996, !tbaa !483
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 5, !dbg !996
  %106 = load i8*, i8** %105, align 8, !dbg !996, !tbaa !782
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 6, !dbg !996
  %108 = load i8*, i8** %107, align 8, !dbg !996, !tbaa !785
  %109 = icmp ult i8* %106, %108, !dbg !996
  br i1 %109, label %112, label %110, !dbg !996, !prof !786

110:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i32 %79, metadata !944, metadata !DIExpression()) #32, !dbg !993
  %111 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %104, i32 noundef %79) #32, !dbg !996
  br label %114, !dbg !996

112:                                              ; preds = %103
  %113 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !996
  store i8* %113, i8** %105, align 8, !dbg !996, !tbaa !782
  store i8 %5, i8* %106, align 1, !dbg !996, !tbaa !578
  br label %114, !dbg !996

114:                                              ; preds = %110, %112
  %115 = load i32*, i32** %7, align 8, !dbg !997, !tbaa !483
  call void @llvm.dbg.value(metadata i32* %115, metadata !888, metadata !DIExpression()), !dbg !968
  %116 = getelementptr inbounds i32, i32* %115, i64 %95, !dbg !997
  %117 = load i32, i32* %116, align 4, !dbg !997, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %117, metadata !902, metadata !DIExpression()) #32, !dbg !999
  call void @llvm.dbg.value(metadata i1 %4, metadata !907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !999
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !908, metadata !DIExpression()) #32, !dbg !999
  call void @llvm.dbg.value(metadata i8 1, metadata !917, metadata !DIExpression()) #32, !dbg !999
  br i1 %4, label %120, label %118, !dbg !1001

118:                                              ; preds = %114
  %119 = zext i32 %117 to i64, !dbg !1002
  br label %130, !dbg !1001

120:                                              ; preds = %114
  %121 = call %struct.group* @getgrgid(i32 noundef %117) #32, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.group* %121, metadata !908, metadata !DIExpression()) #32, !dbg !999
  %122 = icmp eq %struct.group* %121, null, !dbg !1004
  br i1 %122, label %123, label %126, !dbg !1005

123:                                              ; preds = %120
  %124 = zext i32 %117 to i64, !dbg !1006
  call void @llvm.dbg.value(metadata i64 %124, metadata !918, metadata !DIExpression()) #32, !dbg !1007
  %125 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !1008
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %125, i64 noundef %124) #32, !dbg !1008
  call void @llvm.dbg.value(metadata i8 0, metadata !917, metadata !DIExpression()) #32, !dbg !999
  br label %130, !dbg !1009

126:                                              ; preds = %120
  call void @llvm.dbg.value(metadata %struct.group* %121, metadata !908, metadata !DIExpression()) #32, !dbg !999
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !999
  %127 = getelementptr inbounds %struct.group, %struct.group* %121, i64 0, i32 0, !dbg !1010
  %128 = load i8*, i8** %127, align 8, !dbg !1010, !tbaa !939
  %129 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %128) #32, !dbg !1010
  br label %133, !dbg !1010

130:                                              ; preds = %123, %118
  %131 = phi i64 [ %119, %118 ], [ %124, %123 ], !dbg !1002
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()) #32, !dbg !999
  %132 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %131) #32, !dbg !1002
  br label %133

133:                                              ; preds = %126, %130
  %134 = phi i1 [ %80, %130 ], [ true, %126 ]
  %135 = select i1 %134, i1 %96, i1 false, !dbg !1011
  br label %136, !dbg !1011

136:                                              ; preds = %133, %94
  %137 = phi i1 [ %96, %94 ], [ %135, %133 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  %138 = add nuw nsw i64 %95, 1, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %138, metadata !891, metadata !DIExpression()), !dbg !973
  %139 = icmp eq i64 %138, %81, !dbg !974
  br i1 %139, label %90, label %94, !dbg !976, !llvm.loop !1013

140:                                              ; preds = %85, %88, %90
  %141 = phi i1 [ %91, %90 ], [ %66, %88 ], [ %66, %85 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #32, !dbg !988
  %142 = xor i1 %75, true
  %143 = select i1 %142, i1 %141, i1 false
  ret i1 %143, !dbg !1015
}

declare !dbg !1016 %struct.passwd* @getpwuid(i32 noundef) local_unnamed_addr #3

declare !dbg !1019 %struct.group* @getgrgid(i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group(i32 noundef %0, i1 noundef %1) local_unnamed_addr #12 !dbg !903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !902, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i1 %1, metadata !907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1022
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !908, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i8 1, metadata !917, metadata !DIExpression()), !dbg !1022
  br i1 %1, label %5, label %3, !dbg !1023

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1024
  br label %15, !dbg !1023

5:                                                ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 noundef %0) #32, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !908, metadata !DIExpression()), !dbg !1022
  %7 = icmp eq %struct.group* %6, null, !dbg !1026
  br i1 %7, label %8, label %11, !dbg !1027

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %9, metadata !918, metadata !DIExpression()), !dbg !1029
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !1030
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %10, i64 noundef %9) #32, !dbg !1030
  call void @llvm.dbg.value(metadata i8 0, metadata !917, metadata !DIExpression()), !dbg !1022
  br label %15, !dbg !1031

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !908, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()), !dbg !1022
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1032
  %13 = load i8*, i8** %12, align 8, !dbg !1032, !tbaa !939
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %13) #32, !dbg !1032
  br label %19, !dbg !1032

15:                                               ; preds = %3, %8
  %16 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1024
  %17 = xor i1 %1, true, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !908, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i8 poison, metadata !917, metadata !DIExpression()), !dbg !1022
  %18 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %16) #32, !dbg !1024
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ %17, %15 ], [ true, %11 ]
  ret i1 %20, !dbg !1033
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !1034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1036, metadata !DIExpression()), !dbg !1037
  store i8* %0, i8** @file_name, align 8, !dbg !1038, !tbaa !483
  ret void, !dbg !1039
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1040 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1046, !tbaa !1047
  ret void, !dbg !1049
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1050 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1055, !tbaa !483
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !1056
  %3 = icmp eq i32 %2, 0, !dbg !1057
  br i1 %3, label %22, label %4, !dbg !1058

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1059, !tbaa !1047, !range !1060
  %6 = icmp eq i8 %5, 0, !dbg !1059
  br i1 %6, label %11, label %7, !dbg !1061

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !1062
  %9 = load i32, i32* %8, align 4, !dbg !1062, !tbaa !569
  %10 = icmp eq i32 %9, 32, !dbg !1063
  br i1 %10, label %22, label %11, !dbg !1064

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.30, i64 0, i64 0), i32 noundef 5) #32, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %12, metadata !1052, metadata !DIExpression()), !dbg !1066
  %13 = load i8*, i8** @file_name, align 8, !dbg !1067, !tbaa !483
  %14 = icmp eq i8* %13, null, !dbg !1067
  %15 = tail call i32* @__errno_location() #35, !dbg !1069
  %16 = load i32, i32* %15, align 4, !dbg !1069, !tbaa !569
  br i1 %14, label %19, label %17, !dbg !1070

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !1071
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.31, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !1071
  br label %20, !dbg !1071

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.32, i64 0, i64 0), i8* noundef %12) #32, !dbg !1072
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1073, !tbaa !569
  tail call void @_exit(i32 noundef %21) #34, !dbg !1074
  unreachable, !dbg !1074

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1075, !tbaa !483
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !1077
  %25 = icmp eq i32 %24, 0, !dbg !1078
  br i1 %25, label %28, label %26, !dbg !1079

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1080, !tbaa !569
  tail call void @_exit(i32 noundef %27) #34, !dbg !1081
  unreachable, !dbg !1081

28:                                               ; preds = %22
  ret void, !dbg !1082
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1083 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1087, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i32 %1, metadata !1088, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %2, metadata !1089, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1090, metadata !DIExpression()), !dbg !1092
  tail call fastcc void @flush_stdout(), !dbg !1093
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1094, !tbaa !483
  %7 = icmp eq void ()* %6, null, !dbg !1094
  br i1 %7, label %9, label %8, !dbg !1096

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !1097
  br label %13, !dbg !1097

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1098, !tbaa !483
  %11 = tail call i8* @getprogname() #33, !dbg !1098
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* noundef %11) #32, !dbg !1098
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1100
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1100, !tbaa.struct !1101
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1100
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1100
  ret void, !dbg !1102
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1103 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 1, metadata !1107, metadata !DIExpression()) #32, !dbg !1110
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !1113
  %2 = icmp slt i32 %1, 0, !dbg !1114
  br i1 %2, label %6, label %3, !dbg !1115

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1116, !tbaa !483
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !1116
  br label %6, !dbg !1116

6:                                                ; preds = %3, %0
  ret void, !dbg !1117
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1118 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1120, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i32 %1, metadata !1121, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8* %2, metadata !1122, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1123, metadata !DIExpression()), !dbg !1125
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1126, !tbaa !483
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1127
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1128, metadata !DIExpression()) #32, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %2, metadata !1169, metadata !DIExpression()) #32, !dbg !1171
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1173
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1173, !noalias !1174
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1173
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !1173
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1173, !noalias !1174
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1178, !tbaa !569
  %12 = add i32 %11, 1, !dbg !1178
  store i32 %12, i32* @error_message_count, align 4, !dbg !1178, !tbaa !569
  %13 = icmp eq i32 %1, 0, !dbg !1179
  br i1 %13, label %24, label %14, !dbg !1181

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1182, metadata !DIExpression()) #32, !dbg !1190
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1192
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1192
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1186, metadata !DIExpression()) #32, !dbg !1193
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %16, metadata !1185, metadata !DIExpression()) #32, !dbg !1190
  %17 = icmp eq i8* %16, null, !dbg !1195
  br i1 %17, label %18, label %20, !dbg !1197

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.57, i64 0, i64 0), i32 noundef 5) #32, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %19, metadata !1185, metadata !DIExpression()) #32, !dbg !1190
  br label %20, !dbg !1199

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8* %21, metadata !1185, metadata !DIExpression()) #32, !dbg !1190
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1200, !tbaa !483
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.58, i64 0, i64 0), i8* noundef %21) #32, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1201
  br label %24, !dbg !1202

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1203, !tbaa !483
  call void @llvm.dbg.value(metadata i32 10, metadata !1204, metadata !DIExpression()) #32, !dbg !1210
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1209, metadata !DIExpression()) #32, !dbg !1210
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1212
  %27 = load i8*, i8** %26, align 8, !dbg !1212, !tbaa !782
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1212
  %29 = load i8*, i8** %28, align 8, !dbg !1212, !tbaa !785
  %30 = icmp ult i8* %27, %29, !dbg !1212
  br i1 %30, label %33, label %31, !dbg !1212, !prof !786

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !1212
  br label %35, !dbg !1212

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1212
  store i8* %34, i8** %26, align 8, !dbg !1212, !tbaa !782
  store i8 10, i8* %27, align 1, !dbg !1212, !tbaa !578
  br label %35, !dbg !1212

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1213, !tbaa !483
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !1213
  %38 = icmp eq i32 %0, 0, !dbg !1214
  br i1 %38, label %40, label %39, !dbg !1216

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !1217
  unreachable, !dbg !1217

40:                                               ; preds = %35
  ret void, !dbg !1218
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1219 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1223 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1227 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1231, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %1, metadata !1232, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %2, metadata !1233, metadata !DIExpression()), !dbg !1235
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1236
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1236
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1234, metadata !DIExpression()), !dbg !1237
  call void @llvm.va_start(i8* nonnull %6), !dbg !1238
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1239
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1239
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1239, !tbaa.struct !1101
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1239
  call void @llvm.va_end(i8* nonnull %6), !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1241
  ret void, !dbg !1241
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !153 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !171, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %1, metadata !172, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %2, metadata !173, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %3, metadata !174, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %4, metadata !175, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !176, metadata !DIExpression()), !dbg !1243
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1244, !tbaa !569
  %9 = icmp eq i32 %8, 0, !dbg !1244
  br i1 %9, label %24, label %10, !dbg !1246

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1247, !tbaa !569
  %12 = icmp eq i32 %11, %3, !dbg !1250
  br i1 %12, label %13, label %23, !dbg !1251

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1252, !tbaa !483
  %15 = icmp eq i8* %14, %2, !dbg !1253
  br i1 %15, label %39, label %16, !dbg !1254

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1255
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1256
  br i1 %19, label %20, label %23, !dbg !1256

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !1257
  %22 = icmp eq i32 %21, 0, !dbg !1258
  br i1 %22, label %39, label %23, !dbg !1259

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1260, !tbaa !483
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1261, !tbaa !569
  br label %24, !dbg !1262

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1263
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1264, !tbaa !483
  %26 = icmp eq void ()* %25, null, !dbg !1264
  br i1 %26, label %28, label %27, !dbg !1266

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !1267
  br label %32, !dbg !1267

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1268, !tbaa !483
  %30 = tail call i8* @getprogname() #33, !dbg !1268
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.61, i64 0, i64 0), i8* noundef %30) #32, !dbg !1268
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1270, !tbaa !483
  %34 = icmp eq i8* %2, null, !dbg !1270
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.62, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.63, i64 0, i64 0), !dbg !1270
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !1270
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1271
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1271
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1271, !tbaa.struct !1101
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1271
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1271
  br label %39, !dbg !1272

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1272
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1273 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1277, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i32 %1, metadata !1278, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %2, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i32 %3, metadata !1280, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i8* %4, metadata !1281, metadata !DIExpression()), !dbg !1283
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1284
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1284
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.va_start(i8* nonnull %8), !dbg !1286
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1287
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1287, !tbaa.struct !1101
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !1287
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1287
  call void @llvm.va_end(i8* nonnull %8), !dbg !1288
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1289
  ret void, !dbg !1289
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1290 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1328, metadata !DIExpression()), !dbg !1329
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !1330
  ret i32 0, !dbg !1331
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1332 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1335, !tbaa !483
  ret i8* %1, !dbg !1336
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1337 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1339, metadata !DIExpression()), !dbg !1342
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1343
  call void @llvm.dbg.value(metadata i8* %2, metadata !1340, metadata !DIExpression()), !dbg !1342
  %3 = icmp eq i8* %2, null, !dbg !1344
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1344
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1344
  call void @llvm.dbg.value(metadata i8* %5, metadata !1341, metadata !DIExpression()), !dbg !1342
  %6 = ptrtoint i8* %5 to i64, !dbg !1345
  %7 = ptrtoint i8* %0 to i64, !dbg !1345
  %8 = sub i64 %6, %7, !dbg !1345
  %9 = icmp sgt i64 %8, 6, !dbg !1347
  br i1 %9, label %10, label %19, !dbg !1348

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1349
  call void @llvm.dbg.value(metadata i8* %11, metadata !1350, metadata !DIExpression()) #32, !dbg !1357
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), metadata !1355, metadata !DIExpression()) #32, !dbg !1357
  call void @llvm.dbg.value(metadata i64 7, metadata !1356, metadata !DIExpression()) #32, !dbg !1357
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), i64 7) #32, !dbg !1359
  %13 = icmp eq i32 %12, 0, !dbg !1360
  br i1 %13, label %14, label %19, !dbg !1361

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1339, metadata !DIExpression()), !dbg !1342
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.75, i64 0, i64 0), i64 noundef 3) #33, !dbg !1362
  %16 = icmp eq i32 %15, 0, !dbg !1365
  %17 = select i1 %16, i64 3, i64 0, !dbg !1366
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1366
  br label %19, !dbg !1366

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1342
  call void @llvm.dbg.value(metadata i8* %21, metadata !1341, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i8* %20, metadata !1339, metadata !DIExpression()), !dbg !1342
  store i8* %20, i8** @program_name, align 8, !dbg !1367, !tbaa !483
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1368, !tbaa !483
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1369, !tbaa !483
  ret void, !dbg !1370
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !194 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !201, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8* %1, metadata !202, metadata !DIExpression()), !dbg !1371
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1372
  call void @llvm.dbg.value(metadata i8* %5, metadata !203, metadata !DIExpression()), !dbg !1371
  %6 = icmp eq i8* %5, %0, !dbg !1373
  br i1 %6, label %7, label %17, !dbg !1375

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1376
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1376
  %10 = bitcast i64* %4 to i8*, !dbg !1377
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1377
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !209, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1379, metadata !DIExpression()) #32, !dbg !1386
  call void @llvm.dbg.value(metadata i8* %10, metadata !1388, metadata !DIExpression()) #32, !dbg !1396
  call void @llvm.dbg.value(metadata i32 0, metadata !1394, metadata !DIExpression()) #32, !dbg !1396
  call void @llvm.dbg.value(metadata i64 8, metadata !1395, metadata !DIExpression()) #32, !dbg !1396
  store i64 0, i64* %4, align 8, !dbg !1398
  call void @llvm.dbg.value(metadata i32* %3, metadata !204, metadata !DIExpression(DW_OP_deref)), !dbg !1371
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1399
  %12 = icmp eq i64 %11, 2, !dbg !1401
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !204, metadata !DIExpression()), !dbg !1371
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1402
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1371
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1403
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1403
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1371
  ret i8* %18, !dbg !1403
}

; Function Attrs: nounwind
declare !dbg !1404 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1410 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1415, metadata !DIExpression()), !dbg !1418
  %2 = tail call i32* @__errno_location() #35, !dbg !1419
  %3 = load i32, i32* %2, align 4, !dbg !1419, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %3, metadata !1416, metadata !DIExpression()), !dbg !1418
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1420
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1420
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1420
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1421
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1421
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1417, metadata !DIExpression()), !dbg !1418
  store i32 %3, i32* %2, align 4, !dbg !1422, !tbaa !569
  ret %struct.quoting_options* %8, !dbg !1423
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1424 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1430, metadata !DIExpression()), !dbg !1431
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1432
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1432
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1433
  %5 = load i32, i32* %4, align 8, !dbg !1433, !tbaa !1434
  ret i32 %5, !dbg !1436
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1437 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1441, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i32 %1, metadata !1442, metadata !DIExpression()), !dbg !1443
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1444
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1444
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1445
  store i32 %1, i32* %5, align 8, !dbg !1446, !tbaa !1434
  ret void, !dbg !1447
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1448 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1452, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %1, metadata !1453, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i32 %2, metadata !1454, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %1, metadata !1455, metadata !DIExpression()), !dbg !1460
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1461
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1461
  %6 = lshr i8 %1, 5, !dbg !1462
  %7 = zext i8 %6 to i64, !dbg !1462
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1463
  call void @llvm.dbg.value(metadata i32* %8, metadata !1456, metadata !DIExpression()), !dbg !1460
  %9 = and i8 %1, 31, !dbg !1464
  %10 = zext i8 %9 to i32, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %10, metadata !1458, metadata !DIExpression()), !dbg !1460
  %11 = load i32, i32* %8, align 4, !dbg !1465, !tbaa !569
  %12 = lshr i32 %11, %10, !dbg !1466
  %13 = and i32 %12, 1, !dbg !1467
  call void @llvm.dbg.value(metadata i32 %13, metadata !1459, metadata !DIExpression()), !dbg !1460
  %14 = and i32 %2, 1, !dbg !1468
  %15 = xor i32 %13, %14, !dbg !1469
  %16 = shl i32 %15, %10, !dbg !1470
  %17 = xor i32 %16, %11, !dbg !1471
  store i32 %17, i32* %8, align 4, !dbg !1471, !tbaa !569
  ret i32 %13, !dbg !1472
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1473 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1477, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %1, metadata !1478, metadata !DIExpression()), !dbg !1480
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1481
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1477, metadata !DIExpression()), !dbg !1480
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1484
  %6 = load i32, i32* %5, align 4, !dbg !1484, !tbaa !1485
  call void @llvm.dbg.value(metadata i32 %6, metadata !1479, metadata !DIExpression()), !dbg !1480
  store i32 %1, i32* %5, align 4, !dbg !1486, !tbaa !1485
  ret i32 %6, !dbg !1487
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1488 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1492, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i8* %1, metadata !1493, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i8* %2, metadata !1494, metadata !DIExpression()), !dbg !1495
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1496
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1498
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1492, metadata !DIExpression()), !dbg !1495
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1499
  store i32 10, i32* %6, align 8, !dbg !1500, !tbaa !1434
  %7 = icmp ne i8* %1, null, !dbg !1501
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1503
  br i1 %9, label %11, label %10, !dbg !1503

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1504
  unreachable, !dbg !1504

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1505
  store i8* %1, i8** %12, align 8, !dbg !1506, !tbaa !1507
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1508
  store i8* %2, i8** %13, align 8, !dbg !1509, !tbaa !1510
  ret void, !dbg !1511
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1512 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1516, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %1, metadata !1517, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8* %2, metadata !1518, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %3, metadata !1519, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1520, metadata !DIExpression()), !dbg !1524
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1525
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1521, metadata !DIExpression()), !dbg !1524
  %8 = tail call i32* @__errno_location() #35, !dbg !1526
  %9 = load i32, i32* %8, align 4, !dbg !1526, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %9, metadata !1522, metadata !DIExpression()), !dbg !1524
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1527
  %11 = load i32, i32* %10, align 8, !dbg !1527, !tbaa !1434
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1528
  %13 = load i32, i32* %12, align 4, !dbg !1528, !tbaa !1485
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1529
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1530
  %16 = load i8*, i8** %15, align 8, !dbg !1530, !tbaa !1507
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1531
  %18 = load i8*, i8** %17, align 8, !dbg !1531, !tbaa !1510
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %19, metadata !1523, metadata !DIExpression()), !dbg !1524
  store i32 %9, i32* %8, align 4, !dbg !1533, !tbaa !569
  ret i64 %19, !dbg !1534
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1535 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1541, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %1, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %2, metadata !1543, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %3, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %4, metadata !1545, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %5, metadata !1546, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32* %6, metadata !1547, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %7, metadata !1548, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %8, metadata !1549, metadata !DIExpression()), !dbg !1603
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1604
  %18 = icmp eq i64 %17, 1, !dbg !1605
  call void @llvm.dbg.value(metadata i1 %18, metadata !1550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* null, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !1554, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 0, metadata !1555, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %5, metadata !1556, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1603
  call void @llvm.dbg.value(metadata i8 0, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1603
  %19 = and i32 %5, 2, !dbg !1606
  %20 = icmp ne i32 %19, 0, !dbg !1606
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
  br label %36, !dbg !1606

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1607
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1608
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1609
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %43, metadata !1554, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %42, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %41, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %40, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %39, metadata !1549, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %38, metadata !1548, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %37, metadata !1545, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.label(metadata !1596), !dbg !1610
  call void @llvm.dbg.value(metadata i8 0, metadata !1559, metadata !DIExpression()), !dbg !1603
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
  ], !dbg !1611

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 5, metadata !1545, metadata !DIExpression()), !dbg !1603
  br label %111, !dbg !1612

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 5, metadata !1545, metadata !DIExpression()), !dbg !1603
  br i1 %45, label %111, label %51, !dbg !1612

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1613
  br i1 %52, label %111, label %53, !dbg !1617

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1613, !tbaa !578
  br label %111, !dbg !1613

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), metadata !285, metadata !DIExpression()) #32, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #32, !dbg !1618
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !1622
  call void @llvm.dbg.value(metadata i8* %55, metadata !287, metadata !DIExpression()) #32, !dbg !1618
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), !dbg !1623
  br i1 %56, label %57, label %66, !dbg !1625

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1626
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1627
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !289, metadata !DIExpression()) #32, !dbg !1628
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1629, metadata !DIExpression()) #32, !dbg !1635
  call void @llvm.dbg.value(metadata i8* %23, metadata !1637, metadata !DIExpression()) #32, !dbg !1642
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()) #32, !dbg !1642
  call void @llvm.dbg.value(metadata i64 8, metadata !1641, metadata !DIExpression()) #32, !dbg !1642
  store i64 0, i64* %13, align 8, !dbg !1644
  call void @llvm.dbg.value(metadata i32* %12, metadata !288, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1618
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1645
  %59 = icmp eq i64 %58, 3, !dbg !1647
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !288, metadata !DIExpression()) #32, !dbg !1618
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1648
  %63 = icmp eq i32 %37, 9, !dbg !1648
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), !dbg !1648
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1648
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1649
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1649
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1618
  call void @llvm.dbg.value(metadata i8* %67, metadata !1548, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), metadata !285, metadata !DIExpression()) #32, !dbg !1650
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #32, !dbg !1650
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %68, metadata !287, metadata !DIExpression()) #32, !dbg !1650
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), !dbg !1653
  br i1 %69, label %70, label %79, !dbg !1654

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1655
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1656
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !289, metadata !DIExpression()) #32, !dbg !1657
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1629, metadata !DIExpression()) #32, !dbg !1658
  call void @llvm.dbg.value(metadata i8* %26, metadata !1637, metadata !DIExpression()) #32, !dbg !1660
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()) #32, !dbg !1660
  call void @llvm.dbg.value(metadata i64 8, metadata !1641, metadata !DIExpression()) #32, !dbg !1660
  store i64 0, i64* %11, align 8, !dbg !1662
  call void @llvm.dbg.value(metadata i32* %10, metadata !288, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1650
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1663
  %72 = icmp eq i64 %71, 3, !dbg !1664
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !288, metadata !DIExpression()) #32, !dbg !1650
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1665
  %76 = icmp eq i32 %37, 9, !dbg !1665
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), !dbg !1665
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1665
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1666
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1666
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1549, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %80, metadata !1548, metadata !DIExpression()), !dbg !1603
  br i1 %45, label %97, label %82, !dbg !1667

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1560, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 0, metadata !1551, metadata !DIExpression()), !dbg !1603
  %83 = load i8, i8* %80, align 1, !dbg !1669, !tbaa !578
  %84 = icmp eq i8 %83, 0, !dbg !1671
  br i1 %84, label %97, label %85, !dbg !1671

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1560, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %88, metadata !1551, metadata !DIExpression()), !dbg !1603
  %89 = icmp ult i64 %88, %48, !dbg !1672
  br i1 %89, label %90, label %92, !dbg !1675

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1672
  store i8 %86, i8* %91, align 1, !dbg !1672, !tbaa !578
  br label %92, !dbg !1672

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %93, metadata !1551, metadata !DIExpression()), !dbg !1603
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1676
  call void @llvm.dbg.value(metadata i8* %94, metadata !1560, metadata !DIExpression()), !dbg !1668
  %95 = load i8, i8* %94, align 1, !dbg !1669, !tbaa !578
  %96 = icmp eq i8 %95, 0, !dbg !1671
  br i1 %96, label %97, label %85, !dbg !1671, !llvm.loop !1677

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1679
  call void @llvm.dbg.value(metadata i64 %98, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, metadata !1555, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %81, metadata !1553, metadata !DIExpression()), !dbg !1603
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %99, metadata !1554, metadata !DIExpression()), !dbg !1603
  br label %111, !dbg !1681

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1555, metadata !DIExpression()), !dbg !1603
  br label %102, !dbg !1682

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1603
  br i1 %45, label %102, label %105, !dbg !1683

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 2, metadata !1545, metadata !DIExpression()), !dbg !1603
  br label %111, !dbg !1684

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 2, metadata !1545, metadata !DIExpression()), !dbg !1603
  br i1 %45, label %111, label %105, !dbg !1684

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1685
  br i1 %107, label %111, label %108, !dbg !1689

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1685, !tbaa !578
  br label %111, !dbg !1685

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1556, metadata !DIExpression()), !dbg !1603
  br label %111, !dbg !1690

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1691
  unreachable, !dbg !1691

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1679
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %102 ], !dbg !1603
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1603
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1556, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1555, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %117, metadata !1554, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %116, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %115, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %114, metadata !1549, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %113, metadata !1548, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %112, metadata !1545, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !1565, metadata !DIExpression()), !dbg !1692
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
  br label %132, !dbg !1693

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1679
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1607
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1692
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %139, metadata !1565, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %135, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %134, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %133, metadata !1544, metadata !DIExpression()), !dbg !1603
  %141 = icmp eq i64 %133, -1, !dbg !1694
  br i1 %141, label %142, label %146, !dbg !1695

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1696
  %144 = load i8, i8* %143, align 1, !dbg !1696, !tbaa !578
  %145 = icmp eq i8 %144, 0, !dbg !1697
  br i1 %145, label %596, label %148, !dbg !1698

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1699
  br i1 %147, label %596, label %148, !dbg !1698

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1567, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 0, metadata !1570, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 0, metadata !1571, metadata !DIExpression()), !dbg !1700
  br i1 %123, label %149, label %163, !dbg !1701

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1703
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1704
  br i1 %151, label %152, label %154, !dbg !1704

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %153, metadata !1544, metadata !DIExpression()), !dbg !1603
  br label %154, !dbg !1706

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1706
  call void @llvm.dbg.value(metadata i64 %155, metadata !1544, metadata !DIExpression()), !dbg !1603
  %156 = icmp ugt i64 %150, %155, !dbg !1707
  br i1 %156, label %163, label %157, !dbg !1708

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1709
  call void @llvm.dbg.value(metadata i8* %158, metadata !1710, metadata !DIExpression()) #32, !dbg !1715
  call void @llvm.dbg.value(metadata i8* %116, metadata !1713, metadata !DIExpression()) #32, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %117, metadata !1714, metadata !DIExpression()) #32, !dbg !1715
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1717
  %160 = icmp ne i32 %159, 0, !dbg !1718
  %161 = or i1 %160, %125, !dbg !1719
  %162 = xor i1 %160, true, !dbg !1719
  br i1 %161, label %163, label %647, !dbg !1719

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %164, metadata !1544, metadata !DIExpression()), !dbg !1603
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1720
  %167 = load i8, i8* %166, align 1, !dbg !1720, !tbaa !578
  call void @llvm.dbg.value(metadata i8 %167, metadata !1572, metadata !DIExpression()), !dbg !1700
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
  ], !dbg !1721

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1722

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1723

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1570, metadata !DIExpression()), !dbg !1700
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1727
  br i1 %171, label %188, label %172, !dbg !1727

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1729
  br i1 %173, label %174, label %176, !dbg !1733

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1729
  store i8 39, i8* %175, align 1, !dbg !1729, !tbaa !578
  br label %176, !dbg !1729

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %177, metadata !1551, metadata !DIExpression()), !dbg !1603
  %178 = icmp ult i64 %177, %140, !dbg !1734
  br i1 %178, label %179, label %181, !dbg !1737

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1734
  store i8 36, i8* %180, align 1, !dbg !1734, !tbaa !578
  br label %181, !dbg !1734

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %182, metadata !1551, metadata !DIExpression()), !dbg !1603
  %183 = icmp ult i64 %182, %140, !dbg !1738
  br i1 %183, label %184, label %186, !dbg !1741

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1738
  store i8 39, i8* %185, align 1, !dbg !1738, !tbaa !578
  br label %186, !dbg !1738

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %187, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, metadata !1559, metadata !DIExpression()), !dbg !1603
  br label %188, !dbg !1742

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1603
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %189, metadata !1551, metadata !DIExpression()), !dbg !1603
  %191 = icmp ult i64 %189, %140, !dbg !1743
  br i1 %191, label %192, label %194, !dbg !1746

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1743
  store i8 92, i8* %193, align 1, !dbg !1743, !tbaa !578
  br label %194, !dbg !1743

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %195, metadata !1551, metadata !DIExpression()), !dbg !1603
  br i1 %120, label %196, label %499, !dbg !1747

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1749
  %198 = icmp ult i64 %197, %164, !dbg !1750
  br i1 %198, label %199, label %456, !dbg !1751

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1752
  %201 = load i8, i8* %200, align 1, !dbg !1752, !tbaa !578
  %202 = add i8 %201, -48, !dbg !1753
  %203 = icmp ult i8 %202, 10, !dbg !1753
  br i1 %203, label %204, label %456, !dbg !1753

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1754
  br i1 %205, label %206, label %208, !dbg !1758

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1754
  store i8 48, i8* %207, align 1, !dbg !1754, !tbaa !578
  br label %208, !dbg !1754

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %209, metadata !1551, metadata !DIExpression()), !dbg !1603
  %210 = icmp ult i64 %209, %140, !dbg !1759
  br i1 %210, label %211, label %213, !dbg !1762

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1759
  store i8 48, i8* %212, align 1, !dbg !1759, !tbaa !578
  br label %213, !dbg !1759

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %214, metadata !1551, metadata !DIExpression()), !dbg !1603
  br label %456, !dbg !1763

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1764

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1765

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1766

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1768

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1770
  %221 = icmp ult i64 %220, %164, !dbg !1771
  br i1 %221, label %222, label %456, !dbg !1772

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1773
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1774
  %225 = load i8, i8* %224, align 1, !dbg !1774, !tbaa !578
  %226 = icmp eq i8 %225, 63, !dbg !1775
  br i1 %226, label %227, label %456, !dbg !1776

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1777
  %229 = load i8, i8* %228, align 1, !dbg !1777, !tbaa !578
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
  ], !dbg !1778

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1779

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1572, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %220, metadata !1565, metadata !DIExpression()), !dbg !1692
  %232 = icmp ult i64 %134, %140, !dbg !1781
  br i1 %232, label %233, label %235, !dbg !1784

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1781
  store i8 63, i8* %234, align 1, !dbg !1781, !tbaa !578
  br label %235, !dbg !1781

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %236, metadata !1551, metadata !DIExpression()), !dbg !1603
  %237 = icmp ult i64 %236, %140, !dbg !1785
  br i1 %237, label %238, label %240, !dbg !1788

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1785
  store i8 34, i8* %239, align 1, !dbg !1785, !tbaa !578
  br label %240, !dbg !1785

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %241, metadata !1551, metadata !DIExpression()), !dbg !1603
  %242 = icmp ult i64 %241, %140, !dbg !1789
  br i1 %242, label %243, label %245, !dbg !1792

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1789
  store i8 34, i8* %244, align 1, !dbg !1789, !tbaa !578
  br label %245, !dbg !1789

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %246, metadata !1551, metadata !DIExpression()), !dbg !1603
  %247 = icmp ult i64 %246, %140, !dbg !1793
  br i1 %247, label %248, label %250, !dbg !1796

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1793
  store i8 63, i8* %249, align 1, !dbg !1793, !tbaa !578
  br label %250, !dbg !1793

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %251, metadata !1551, metadata !DIExpression()), !dbg !1603
  br label %456, !dbg !1797

252:                                              ; preds = %163
  br label %263, !dbg !1798

253:                                              ; preds = %163
  br label %263, !dbg !1799

254:                                              ; preds = %163
  br label %261, !dbg !1800

255:                                              ; preds = %163
  br label %261, !dbg !1801

256:                                              ; preds = %163
  br label %263, !dbg !1802

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1803

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1804

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1807

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1809

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1810
  call void @llvm.dbg.label(metadata !1597), !dbg !1811
  br i1 %128, label %263, label %638, !dbg !1812

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1810
  call void @llvm.dbg.label(metadata !1599), !dbg !1814
  br i1 %118, label %510, label %467, !dbg !1815

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1816

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1817, !tbaa !578
  %268 = icmp eq i8 %267, 0, !dbg !1819
  br i1 %268, label %269, label %456, !dbg !1820

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1821
  br i1 %270, label %271, label %456, !dbg !1823

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1571, metadata !DIExpression()), !dbg !1700
  br label %272, !dbg !1824

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1571, metadata !DIExpression()), !dbg !1700
  br i1 %126, label %274, label %456, !dbg !1825

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1827

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, metadata !1571, metadata !DIExpression()), !dbg !1700
  br i1 %126, label %276, label %456, !dbg !1828

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1829

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1832
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1834
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1834
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %282, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %281, metadata !1552, metadata !DIExpression()), !dbg !1603
  %283 = icmp ult i64 %134, %282, !dbg !1835
  br i1 %283, label %284, label %286, !dbg !1838

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1835
  store i8 39, i8* %285, align 1, !dbg !1835, !tbaa !578
  br label %286, !dbg !1835

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %287, metadata !1551, metadata !DIExpression()), !dbg !1603
  %288 = icmp ult i64 %287, %282, !dbg !1839
  br i1 %288, label %289, label %291, !dbg !1842

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1839
  store i8 92, i8* %290, align 1, !dbg !1839, !tbaa !578
  br label %291, !dbg !1839

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %292, metadata !1551, metadata !DIExpression()), !dbg !1603
  %293 = icmp ult i64 %292, %282, !dbg !1843
  br i1 %293, label %294, label %296, !dbg !1846

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1843
  store i8 39, i8* %295, align 1, !dbg !1843, !tbaa !578
  br label %296, !dbg !1843

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %297, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 0, metadata !1559, metadata !DIExpression()), !dbg !1603
  br label %456, !dbg !1847

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1848

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1573, metadata !DIExpression()), !dbg !1849
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1850
  %301 = load i16*, i16** %300, align 8, !dbg !1850, !tbaa !483
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1850
  %304 = load i16, i16* %303, align 2, !dbg !1850, !tbaa !603
  %305 = and i16 %304, 16384, !dbg !1850
  %306 = icmp ne i16 %305, 0, !dbg !1852
  call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %349, metadata !1573, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %312, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i1 %350, metadata !1571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1700
  br label %352, !dbg !1853

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1854
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1577, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1629, metadata !DIExpression()) #32, !dbg !1856
  call void @llvm.dbg.value(metadata i8* %32, metadata !1637, metadata !DIExpression()) #32, !dbg !1858
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()) #32, !dbg !1858
  call void @llvm.dbg.value(metadata i64 8, metadata !1641, metadata !DIExpression()) #32, !dbg !1858
  store i64 0, i64* %14, align 8, !dbg !1860
  call void @llvm.dbg.value(metadata i64 0, metadata !1573, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 1, metadata !1576, metadata !DIExpression()), !dbg !1849
  %308 = icmp eq i64 %164, -1, !dbg !1861
  br i1 %308, label %309, label %311, !dbg !1863

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %310, metadata !1544, metadata !DIExpression()), !dbg !1603
  br label %311, !dbg !1865

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1700
  call void @llvm.dbg.value(metadata i64 %312, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1866
  %313 = sub i64 %312, %139, !dbg !1867
  call void @llvm.dbg.value(metadata i32* %16, metadata !1580, metadata !DIExpression(DW_OP_deref)), !dbg !1868
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %314, metadata !1584, metadata !DIExpression()), !dbg !1868
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1870

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1573, metadata !DIExpression()), !dbg !1849
  %316 = icmp ugt i64 %312, %139, !dbg !1871
  br i1 %316, label %319, label %317, !dbg !1873

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 0, metadata !1573, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %349, metadata !1573, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %312, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i1 %350, metadata !1571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1700
  br label %352, !dbg !1853

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1576, metadata !DIExpression()), !dbg !1849
  br label %346, !dbg !1876

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1573, metadata !DIExpression()), !dbg !1849
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1878
  %323 = load i8, i8* %322, align 1, !dbg !1878, !tbaa !578
  %324 = icmp eq i8 %323, 0, !dbg !1873
  br i1 %324, label %348, label %325, !dbg !1879

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %326, metadata !1573, metadata !DIExpression()), !dbg !1849
  %327 = add i64 %326, %139, !dbg !1881
  %328 = icmp eq i64 %326, %313, !dbg !1871
  br i1 %328, label %348, label %319, !dbg !1873, !llvm.loop !1882

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1883
  call void @llvm.dbg.value(metadata i64 1, metadata !1585, metadata !DIExpression()), !dbg !1884
  br i1 %331, label %332, label %340, !dbg !1883

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1585, metadata !DIExpression()), !dbg !1884
  %334 = add i64 %333, %139, !dbg !1885
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1887
  %336 = load i8, i8* %335, align 1, !dbg !1887, !tbaa !578
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1888

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %338, metadata !1585, metadata !DIExpression()), !dbg !1884
  %339 = icmp eq i64 %338, %314, !dbg !1890
  br i1 %339, label %340, label %332, !dbg !1891, !llvm.loop !1892

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1894, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %341, metadata !1580, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %341, metadata !1896, metadata !DIExpression()) #32, !dbg !1904
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1906
  %343 = icmp ne i32 %342, 0, !dbg !1907
  call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %314, metadata !1573, metadata !DIExpression()), !dbg !1849
  br label %348, !dbg !1908

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 0, metadata !1573, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1875
  call void @llvm.dbg.label(metadata !1602), !dbg !1909
  %345 = select i1 %118, i32 4, i32 2, !dbg !1910
  br label %643, !dbg !1910

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 0, metadata !1573, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %349, metadata !1573, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %312, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i1 %350, metadata !1571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1700
  br label %352, !dbg !1853

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1576, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 0, metadata !1573, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %349, metadata !1573, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %312, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i1 %350, metadata !1571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1700
  %351 = icmp ugt i64 %349, 1, !dbg !1912
  br i1 %351, label %357, label %352, !dbg !1853

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1913
  br i1 %356, label %456, label %357, !dbg !1913

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %361, metadata !1593, metadata !DIExpression()), !dbg !1915
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1916

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1603
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1692
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1917
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1700
  call void @llvm.dbg.value(metadata i8 %369, metadata !1572, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %368, metadata !1570, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %366, metadata !1565, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %364, metadata !1551, metadata !DIExpression()), !dbg !1603
  br i1 %362, label %414, label %370, !dbg !1918

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1923

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1570, metadata !DIExpression()), !dbg !1700
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1926
  br i1 %372, label %389, label %373, !dbg !1926

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1928
  br i1 %374, label %375, label %377, !dbg !1932

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1928
  store i8 39, i8* %376, align 1, !dbg !1928, !tbaa !578
  br label %377, !dbg !1928

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %378, metadata !1551, metadata !DIExpression()), !dbg !1603
  %379 = icmp ult i64 %378, %140, !dbg !1933
  br i1 %379, label %380, label %382, !dbg !1936

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1933
  store i8 36, i8* %381, align 1, !dbg !1933, !tbaa !578
  br label %382, !dbg !1933

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %383, metadata !1551, metadata !DIExpression()), !dbg !1603
  %384 = icmp ult i64 %383, %140, !dbg !1937
  br i1 %384, label %385, label %387, !dbg !1940

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1937
  store i8 39, i8* %386, align 1, !dbg !1937, !tbaa !578
  br label %387, !dbg !1937

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %388, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, metadata !1559, metadata !DIExpression()), !dbg !1603
  br label %389, !dbg !1941

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1603
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %390, metadata !1551, metadata !DIExpression()), !dbg !1603
  %392 = icmp ult i64 %390, %140, !dbg !1942
  br i1 %392, label %393, label %395, !dbg !1945

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1942
  store i8 92, i8* %394, align 1, !dbg !1942, !tbaa !578
  br label %395, !dbg !1942

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %396, metadata !1551, metadata !DIExpression()), !dbg !1603
  %397 = icmp ult i64 %396, %140, !dbg !1946
  br i1 %397, label %398, label %402, !dbg !1949

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1946
  %400 = or i8 %399, 48, !dbg !1946
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1946
  store i8 %400, i8* %401, align 1, !dbg !1946, !tbaa !578
  br label %402, !dbg !1946

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %403, metadata !1551, metadata !DIExpression()), !dbg !1603
  %404 = icmp ult i64 %403, %140, !dbg !1950
  br i1 %404, label %405, label %410, !dbg !1953

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1950
  %407 = and i8 %406, 7, !dbg !1950
  %408 = or i8 %407, 48, !dbg !1950
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1950
  store i8 %408, i8* %409, align 1, !dbg !1950, !tbaa !578
  br label %410, !dbg !1950

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %411, metadata !1551, metadata !DIExpression()), !dbg !1603
  %412 = and i8 %369, 7, !dbg !1954
  %413 = or i8 %412, 48, !dbg !1955
  call void @llvm.dbg.value(metadata i8 %413, metadata !1572, metadata !DIExpression()), !dbg !1700
  br label %421, !dbg !1956

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1957

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1958
  br i1 %416, label %417, label %419, !dbg !1963

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1958
  store i8 92, i8* %418, align 1, !dbg !1958, !tbaa !578
  br label %419, !dbg !1958

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %420, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 0, metadata !1567, metadata !DIExpression()), !dbg !1700
  br label %421, !dbg !1964

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1603
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1700
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1700
  call void @llvm.dbg.value(metadata i8 %426, metadata !1572, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %425, metadata !1570, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %422, metadata !1551, metadata !DIExpression()), !dbg !1603
  %427 = add i64 %366, 1, !dbg !1965
  %428 = icmp ugt i64 %361, %427, !dbg !1967
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1968

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1969
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1969
  br i1 %432, label %433, label %444, !dbg !1969

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1972
  br i1 %434, label %435, label %437, !dbg !1976

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1972
  store i8 39, i8* %436, align 1, !dbg !1972, !tbaa !578
  br label %437, !dbg !1972

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %438, metadata !1551, metadata !DIExpression()), !dbg !1603
  %439 = icmp ult i64 %438, %140, !dbg !1977
  br i1 %439, label %440, label %442, !dbg !1980

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1977
  store i8 39, i8* %441, align 1, !dbg !1977, !tbaa !578
  br label %442, !dbg !1977

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %443, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 0, metadata !1559, metadata !DIExpression()), !dbg !1603
  br label %444, !dbg !1981

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1982
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %445, metadata !1551, metadata !DIExpression()), !dbg !1603
  %447 = icmp ult i64 %445, %140, !dbg !1983
  br i1 %447, label %448, label %450, !dbg !1986

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1983
  store i8 %426, i8* %449, align 1, !dbg !1983, !tbaa !578
  br label %450, !dbg !1983

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %451, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %427, metadata !1565, metadata !DIExpression()), !dbg !1692
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1987
  %453 = load i8, i8* %452, align 1, !dbg !1987, !tbaa !578
  call void @llvm.dbg.value(metadata i8 %453, metadata !1572, metadata !DIExpression()), !dbg !1700
  br label %363, !dbg !1988, !llvm.loop !1989

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1572, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i1 %358, metadata !1571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %425, metadata !1570, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %366, metadata !1565, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %422, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %360, metadata !1544, metadata !DIExpression()), !dbg !1603
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1992
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1603
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1607
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1692
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1700
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %465, metadata !1572, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1571, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1570, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1567, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %462, metadata !1565, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %459, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %458, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %457, metadata !1544, metadata !DIExpression()), !dbg !1603
  br i1 %121, label %478, label %467, !dbg !1993

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
  br i1 %131, label %479, label %499, !dbg !1995

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1996

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
  %490 = lshr i8 %481, 5, !dbg !1997
  %491 = zext i8 %490 to i64, !dbg !1997
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1998
  %493 = load i32, i32* %492, align 4, !dbg !1998, !tbaa !569
  %494 = and i8 %481, 31, !dbg !1999
  %495 = zext i8 %494 to i32, !dbg !1999
  %496 = shl nuw i32 1, %495, !dbg !2000
  %497 = and i32 %493, %496, !dbg !2000
  %498 = icmp eq i32 %497, 0, !dbg !2000
  br i1 %498, label %499, label %510, !dbg !2001

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
  br i1 %165, label %510, label %546, !dbg !2002

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1992
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1603
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1607
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2003
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1700
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %518, metadata !1572, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1571, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %516, metadata !1565, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %513, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %512, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %511, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.label(metadata !1600), !dbg !2004
  br i1 %119, label %638, label %520, !dbg !2005

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1570, metadata !DIExpression()), !dbg !1700
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2007
  br i1 %521, label %538, label %522, !dbg !2007

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2009
  br i1 %523, label %524, label %526, !dbg !2013

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2009
  store i8 39, i8* %525, align 1, !dbg !2009, !tbaa !578
  br label %526, !dbg !2009

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %527, metadata !1551, metadata !DIExpression()), !dbg !1603
  %528 = icmp ult i64 %527, %519, !dbg !2014
  br i1 %528, label %529, label %531, !dbg !2017

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2014
  store i8 36, i8* %530, align 1, !dbg !2014, !tbaa !578
  br label %531, !dbg !2014

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %532, metadata !1551, metadata !DIExpression()), !dbg !1603
  %533 = icmp ult i64 %532, %519, !dbg !2018
  br i1 %533, label %534, label %536, !dbg !2021

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2018
  store i8 39, i8* %535, align 1, !dbg !2018, !tbaa !578
  br label %536, !dbg !2018

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %537, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 1, metadata !1559, metadata !DIExpression()), !dbg !1603
  br label %538, !dbg !2022

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1700
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %539, metadata !1551, metadata !DIExpression()), !dbg !1603
  %541 = icmp ult i64 %539, %519, !dbg !2023
  br i1 %541, label %542, label %544, !dbg !2026

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2023
  store i8 92, i8* %543, align 1, !dbg !2023, !tbaa !578
  br label %544, !dbg !2023

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %556, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %555, metadata !1572, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1571, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1570, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %552, metadata !1565, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %549, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %548, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %547, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.label(metadata !1601), !dbg !2027
  br label %570, !dbg !2028

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1992
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1603
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1607
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2003
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2031
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 %555, metadata !1572, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1571, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 poison, metadata !1570, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %552, metadata !1565, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %549, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %548, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %547, metadata !1544, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.label(metadata !1601), !dbg !2027
  %557 = xor i1 %551, true, !dbg !2028
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2028
  br i1 %558, label %570, label %559, !dbg !2028

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2032
  br i1 %560, label %561, label %563, !dbg !2036

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2032
  store i8 39, i8* %562, align 1, !dbg !2032, !tbaa !578
  br label %563, !dbg !2032

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %564, metadata !1551, metadata !DIExpression()), !dbg !1603
  %565 = icmp ult i64 %564, %556, !dbg !2037
  br i1 %565, label %566, label %568, !dbg !2040

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2037
  store i8 39, i8* %567, align 1, !dbg !2037, !tbaa !578
  br label %568, !dbg !2037

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %569, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 0, metadata !1559, metadata !DIExpression()), !dbg !1603
  br label %570, !dbg !2041

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1700
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %578, metadata !1551, metadata !DIExpression()), !dbg !1603
  %580 = icmp ult i64 %578, %571, !dbg !2042
  br i1 %580, label %581, label %583, !dbg !2045

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2042
  store i8 %572, i8* %582, align 1, !dbg !2042, !tbaa !578
  br label %583, !dbg !2042

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %584, metadata !1551, metadata !DIExpression()), !dbg !1603
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2046
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1603
  br label %586, !dbg !2047

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1992
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1603
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1607
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2003
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %593, metadata !1565, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 poison, metadata !1559, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %589, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %588, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %587, metadata !1544, metadata !DIExpression()), !dbg !1603
  %595 = add i64 %593, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %595, metadata !1565, metadata !DIExpression()), !dbg !1692
  br label %132, !dbg !2049, !llvm.loop !2050

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1542, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1558, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 poison, metadata !1557, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 undef, metadata !1552, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 undef, metadata !1551, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 undef, metadata !1544, metadata !DIExpression()), !dbg !1603
  %597 = icmp eq i64 %134, 0, !dbg !2052
  %598 = and i1 %126, %597, !dbg !2054
  %599 = and i1 %598, %119, !dbg !2054
  br i1 %599, label %638, label %600, !dbg !2054

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2055
  %602 = or i1 %119, %601, !dbg !2055
  %603 = xor i1 %136, true, !dbg !2055
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2055
  br i1 %604, label %612, label %605, !dbg !2055

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2057

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2059
  br label %653, !dbg !2061

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2062
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2064
  br i1 %611, label %36, label %612, !dbg !2064

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2065
  %615 = or i1 %614, %613, !dbg !2067
  br i1 %615, label %631, label %616, !dbg !2067

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %134, metadata !1551, metadata !DIExpression()), !dbg !1603
  %617 = load i8, i8* %116, align 1, !dbg !2068, !tbaa !578
  %618 = icmp eq i8 %617, 0, !dbg !2071
  br i1 %618, label %631, label %619, !dbg !2071

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1553, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %622, metadata !1551, metadata !DIExpression()), !dbg !1603
  %623 = icmp ult i64 %622, %140, !dbg !2072
  br i1 %623, label %624, label %626, !dbg !2075

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2072
  store i8 %620, i8* %625, align 1, !dbg !2072, !tbaa !578
  br label %626, !dbg !2072

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %627, metadata !1551, metadata !DIExpression()), !dbg !1603
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2076
  call void @llvm.dbg.value(metadata i8* %628, metadata !1553, metadata !DIExpression()), !dbg !1603
  %629 = load i8, i8* %628, align 1, !dbg !2068, !tbaa !578
  %630 = icmp eq i8 %629, 0, !dbg !2071
  br i1 %630, label %631, label %619, !dbg !2071, !llvm.loop !2077

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1679
  call void @llvm.dbg.value(metadata i64 %632, metadata !1551, metadata !DIExpression()), !dbg !1603
  %633 = icmp ult i64 %632, %140, !dbg !2079
  br i1 %633, label %634, label %653, !dbg !2081

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2082
  store i8 0, i8* %635, align 1, !dbg !2083, !tbaa !578
  br label %653, !dbg !2082

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1602), !dbg !1909
  %637 = icmp eq i32 %112, 2, !dbg !2084
  br i1 %637, label %643, label %647, !dbg !1910

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1602), !dbg !1909
  %641 = icmp eq i32 %112, 2, !dbg !2084
  %642 = select i1 %118, i32 4, i32 2, !dbg !1910
  br i1 %641, label %643, label %647, !dbg !1910

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1910

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1545, metadata !DIExpression()), !dbg !1603
  %651 = and i32 %5, -3, !dbg !2085
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2086
  br label %653, !dbg !2087

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2088
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2089 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2091 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2095, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i64 %1, metadata !2096, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2097, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8* %0, metadata !2099, metadata !DIExpression()) #32, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %1, metadata !2104, metadata !DIExpression()) #32, !dbg !2112
  call void @llvm.dbg.value(metadata i64* null, metadata !2105, metadata !DIExpression()) #32, !dbg !2112
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2106, metadata !DIExpression()) #32, !dbg !2112
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2114
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2114
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2107, metadata !DIExpression()) #32, !dbg !2112
  %6 = tail call i32* @__errno_location() #35, !dbg !2115
  %7 = load i32, i32* %6, align 4, !dbg !2115, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %7, metadata !2108, metadata !DIExpression()) #32, !dbg !2112
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2116
  %9 = load i32, i32* %8, align 4, !dbg !2116, !tbaa !1485
  %10 = or i32 %9, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %10, metadata !2109, metadata !DIExpression()) #32, !dbg !2112
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2118
  %12 = load i32, i32* %11, align 8, !dbg !2118, !tbaa !1434
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2119
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2120
  %15 = load i8*, i8** %14, align 8, !dbg !2120, !tbaa !1507
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2121
  %17 = load i8*, i8** %16, align 8, !dbg !2121, !tbaa !1510
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !2122
  %19 = add i64 %18, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %19, metadata !2110, metadata !DIExpression()) #32, !dbg !2112
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !2124
  call void @llvm.dbg.value(metadata i8* %20, metadata !2111, metadata !DIExpression()) #32, !dbg !2112
  %21 = load i32, i32* %11, align 8, !dbg !2125, !tbaa !1434
  %22 = load i8*, i8** %14, align 8, !dbg !2126, !tbaa !1507
  %23 = load i8*, i8** %16, align 8, !dbg !2127, !tbaa !1510
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !2128
  store i32 %7, i32* %6, align 4, !dbg !2129, !tbaa !569
  ret i8* %20, !dbg !2130
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2099, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %1, metadata !2104, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64* %2, metadata !2105, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2106, metadata !DIExpression()), !dbg !2131
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2132
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2107, metadata !DIExpression()), !dbg !2131
  %7 = tail call i32* @__errno_location() #35, !dbg !2133
  %8 = load i32, i32* %7, align 4, !dbg !2133, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %8, metadata !2108, metadata !DIExpression()), !dbg !2131
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2134
  %10 = load i32, i32* %9, align 4, !dbg !2134, !tbaa !1485
  %11 = icmp eq i64* %2, null, !dbg !2135
  %12 = zext i1 %11 to i32, !dbg !2135
  %13 = or i32 %10, %12, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %13, metadata !2109, metadata !DIExpression()), !dbg !2131
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2137
  %15 = load i32, i32* %14, align 8, !dbg !2137, !tbaa !1434
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2138
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2139
  %18 = load i8*, i8** %17, align 8, !dbg !2139, !tbaa !1507
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2140
  %20 = load i8*, i8** %19, align 8, !dbg !2140, !tbaa !1510
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2141
  %22 = add i64 %21, 1, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %22, metadata !2110, metadata !DIExpression()), !dbg !2131
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !2143
  call void @llvm.dbg.value(metadata i8* %23, metadata !2111, metadata !DIExpression()), !dbg !2131
  %24 = load i32, i32* %14, align 8, !dbg !2144, !tbaa !1434
  %25 = load i8*, i8** %17, align 8, !dbg !2145, !tbaa !1507
  %26 = load i8*, i8** %19, align 8, !dbg !2146, !tbaa !1510
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2147
  store i32 %8, i32* %7, align 4, !dbg !2148, !tbaa !569
  br i1 %11, label %29, label %28, !dbg !2149

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2150, !tbaa !2152
  br label %29, !dbg !2153

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2154
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2155 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2160, !tbaa !483
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2157, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i32 1, metadata !2158, metadata !DIExpression()), !dbg !2162
  %2 = load i32, i32* @nslots, align 4, !tbaa !569
  call void @llvm.dbg.value(metadata i32 1, metadata !2158, metadata !DIExpression()), !dbg !2162
  %3 = icmp sgt i32 %2, 1, !dbg !2163
  br i1 %3, label %4, label %6, !dbg !2165

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2163
  br label %10, !dbg !2165

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2166
  %8 = load i8*, i8** %7, align 8, !dbg !2166, !tbaa !2168
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2170
  br i1 %9, label %17, label %16, !dbg !2171

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2158, metadata !DIExpression()), !dbg !2162
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2172
  %13 = load i8*, i8** %12, align 8, !dbg !2172, !tbaa !2168
  tail call void @free(i8* noundef %13) #32, !dbg !2173
  %14 = add nuw nsw i64 %11, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %14, metadata !2158, metadata !DIExpression()), !dbg !2162
  %15 = icmp eq i64 %14, %5, !dbg !2163
  br i1 %15, label %6, label %10, !dbg !2165, !llvm.loop !2175

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !2177
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2179, !tbaa !2180
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2181, !tbaa !2168
  br label %17, !dbg !2182

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2183
  br i1 %18, label %21, label %19, !dbg !2185

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2186
  tail call void @free(i8* noundef %20) #32, !dbg !2188
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2189, !tbaa !483
  br label %21, !dbg !2190

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2191, !tbaa !569
  ret void, !dbg !2192
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2193 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2195, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8* %1, metadata !2196, metadata !DIExpression()), !dbg !2197
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2198
  ret i8* %3, !dbg !2199
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2200 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2204, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8* %1, metadata !2205, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %2, metadata !2206, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2207, metadata !DIExpression()), !dbg !2220
  %6 = tail call i32* @__errno_location() #35, !dbg !2221
  %7 = load i32, i32* %6, align 4, !dbg !2221, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %7, metadata !2208, metadata !DIExpression()), !dbg !2220
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2222, !tbaa !483
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2209, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2210, metadata !DIExpression()), !dbg !2220
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2223
  br i1 %9, label %10, label %11, !dbg !2223

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2225
  unreachable, !dbg !2225

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2226, !tbaa !569
  %13 = icmp sgt i32 %12, %0, !dbg !2227
  br i1 %13, label %36, label %14, !dbg !2228

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2229
  call void @llvm.dbg.value(metadata i1 %15, metadata !2211, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2230
  %16 = bitcast i64* %5 to i8*, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2231
  %17 = sext i32 %12 to i64, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %17, metadata !2214, metadata !DIExpression()), !dbg !2230
  store i64 %17, i64* %5, align 8, !dbg !2233, !tbaa !2152
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2234
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2234
  %20 = add nuw nsw i32 %0, 1, !dbg !2235
  %21 = sub i32 %20, %12, !dbg !2236
  %22 = sext i32 %21 to i64, !dbg !2237
  call void @llvm.dbg.value(metadata i64* %5, metadata !2214, metadata !DIExpression(DW_OP_deref)), !dbg !2230
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !2238
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2238
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2209, metadata !DIExpression()), !dbg !2220
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2239, !tbaa !483
  br i1 %15, label %25, label %26, !dbg !2240

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2241, !tbaa.struct !2243
  br label %26, !dbg !2244

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2245, !tbaa !569
  %28 = sext i32 %27 to i64, !dbg !2246
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2246
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2247
  %31 = load i64, i64* %5, align 8, !dbg !2248, !tbaa !2152
  call void @llvm.dbg.value(metadata i64 %31, metadata !2214, metadata !DIExpression()), !dbg !2230
  %32 = sub nsw i64 %31, %28, !dbg !2249
  %33 = shl i64 %32, 4, !dbg !2250
  call void @llvm.dbg.value(metadata i8* %30, metadata !1637, metadata !DIExpression()) #32, !dbg !2251
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()) #32, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %33, metadata !1641, metadata !DIExpression()) #32, !dbg !2251
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !2253
  %34 = load i64, i64* %5, align 8, !dbg !2254, !tbaa !2152
  call void @llvm.dbg.value(metadata i64 %34, metadata !2214, metadata !DIExpression()), !dbg !2230
  %35 = trunc i64 %34 to i32, !dbg !2254
  store i32 %35, i32* @nslots, align 4, !dbg !2255, !tbaa !569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2256
  br label %36, !dbg !2257

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2220
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2209, metadata !DIExpression()), !dbg !2220
  %38 = zext i32 %0 to i64, !dbg !2258
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2259
  %40 = load i64, i64* %39, align 8, !dbg !2259, !tbaa !2180
  call void @llvm.dbg.value(metadata i64 %40, metadata !2215, metadata !DIExpression()), !dbg !2260
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2261
  %42 = load i8*, i8** %41, align 8, !dbg !2261, !tbaa !2168
  call void @llvm.dbg.value(metadata i8* %42, metadata !2217, metadata !DIExpression()), !dbg !2260
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2262
  %44 = load i32, i32* %43, align 4, !dbg !2262, !tbaa !1485
  %45 = or i32 %44, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %45, metadata !2218, metadata !DIExpression()), !dbg !2260
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2264
  %47 = load i32, i32* %46, align 8, !dbg !2264, !tbaa !1434
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2265
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2266
  %50 = load i8*, i8** %49, align 8, !dbg !2266, !tbaa !1507
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2267
  %52 = load i8*, i8** %51, align 8, !dbg !2267, !tbaa !1510
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %53, metadata !2219, metadata !DIExpression()), !dbg !2260
  %54 = icmp ugt i64 %40, %53, !dbg !2269
  br i1 %54, label %65, label %55, !dbg !2271

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %56, metadata !2215, metadata !DIExpression()), !dbg !2260
  store i64 %56, i64* %39, align 8, !dbg !2274, !tbaa !2180
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2275
  br i1 %57, label %59, label %58, !dbg !2277

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !2278
  br label %59, !dbg !2278

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !2279
  call void @llvm.dbg.value(metadata i8* %60, metadata !2217, metadata !DIExpression()), !dbg !2260
  store i8* %60, i8** %41, align 8, !dbg !2280, !tbaa !2168
  %61 = load i32, i32* %46, align 8, !dbg !2281, !tbaa !1434
  %62 = load i8*, i8** %49, align 8, !dbg !2282, !tbaa !1507
  %63 = load i8*, i8** %51, align 8, !dbg !2283, !tbaa !1510
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2284
  br label %65, !dbg !2285

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2260
  call void @llvm.dbg.value(metadata i8* %66, metadata !2217, metadata !DIExpression()), !dbg !2260
  store i32 %7, i32* %6, align 4, !dbg !2286, !tbaa !569
  ret i8* %66, !dbg !2287
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2292, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %1, metadata !2293, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %2, metadata !2294, metadata !DIExpression()), !dbg !2295
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2296
  ret i8* %4, !dbg !2297
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2298 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2300, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 0, metadata !2195, metadata !DIExpression()) #32, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %0, metadata !2196, metadata !DIExpression()) #32, !dbg !2302
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2304
  ret i8* %2, !dbg !2305
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2306 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %1, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 0, metadata !2292, metadata !DIExpression()) #32, !dbg !2313
  call void @llvm.dbg.value(metadata i8* %0, metadata !2293, metadata !DIExpression()) #32, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %1, metadata !2294, metadata !DIExpression()) #32, !dbg !2313
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2315
  ret i8* %3, !dbg !2316
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2317 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2321, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %1, metadata !2322, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8* %2, metadata !2323, metadata !DIExpression()), !dbg !2325
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2326
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2324, metadata !DIExpression()), !dbg !2327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %1, metadata !2332, metadata !DIExpression()) #32, !dbg !2338
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2337, metadata !DIExpression()) #32, !dbg !2340
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2340, !alias.scope !2328
  %6 = icmp eq i32 %1, 10, !dbg !2341
  br i1 %6, label %7, label %8, !dbg !2343

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2344, !noalias !2328
  unreachable, !dbg !2344

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2345
  store i32 %1, i32* %9, align 8, !dbg !2346, !tbaa !1434, !alias.scope !2328
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2347
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2348
  ret i8* %10, !dbg !2349
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2350 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2354, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 %1, metadata !2355, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8* %2, metadata !2356, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %3, metadata !2357, metadata !DIExpression()), !dbg !2359
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2360
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2360
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2358, metadata !DIExpression()), !dbg !2361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %1, metadata !2332, metadata !DIExpression()) #32, !dbg !2366
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2337, metadata !DIExpression()) #32, !dbg !2368
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2368, !alias.scope !2362
  %7 = icmp eq i32 %1, 10, !dbg !2369
  br i1 %7, label %8, label %9, !dbg !2370

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2371, !noalias !2362
  unreachable, !dbg !2371

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2372
  store i32 %1, i32* %10, align 8, !dbg !2373, !tbaa !1434, !alias.scope !2362
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2374
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2375
  ret i8* %11, !dbg !2376
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2377 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2381, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %1, metadata !2382, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 0, metadata !2321, metadata !DIExpression()) #32, !dbg !2384
  call void @llvm.dbg.value(metadata i32 %0, metadata !2322, metadata !DIExpression()) #32, !dbg !2384
  call void @llvm.dbg.value(metadata i8* %1, metadata !2323, metadata !DIExpression()) #32, !dbg !2384
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2386
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2324, metadata !DIExpression()) #32, !dbg !2387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2388) #32, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %0, metadata !2332, metadata !DIExpression()) #32, !dbg !2392
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2337, metadata !DIExpression()) #32, !dbg !2394
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2394, !alias.scope !2388
  %5 = icmp eq i32 %0, 10, !dbg !2395
  br i1 %5, label %6, label %7, !dbg !2396

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2397, !noalias !2388
  unreachable, !dbg !2397

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2398
  store i32 %0, i32* %8, align 8, !dbg !2399, !tbaa !1434, !alias.scope !2388
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2400
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2401
  ret i8* %9, !dbg !2402
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2403 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i64 %2, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 0, metadata !2354, metadata !DIExpression()) #32, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %0, metadata !2355, metadata !DIExpression()) #32, !dbg !2411
  call void @llvm.dbg.value(metadata i8* %1, metadata !2356, metadata !DIExpression()) #32, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %2, metadata !2357, metadata !DIExpression()) #32, !dbg !2411
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2413
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2413
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2358, metadata !DIExpression()) #32, !dbg !2414
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2415) #32, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %0, metadata !2332, metadata !DIExpression()) #32, !dbg !2419
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2337, metadata !DIExpression()) #32, !dbg !2421
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2421, !alias.scope !2415
  %6 = icmp eq i32 %0, 10, !dbg !2422
  br i1 %6, label %7, label %8, !dbg !2423

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2424, !noalias !2415
  unreachable, !dbg !2424

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2425
  store i32 %0, i32* %9, align 8, !dbg !2426, !tbaa !1434, !alias.scope !2415
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2427
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2428
  ret i8* %10, !dbg !2429
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2430 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2434, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %1, metadata !2435, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8 %2, metadata !2436, metadata !DIExpression()), !dbg !2438
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2439
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2439
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2441, !tbaa.struct !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1452, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %2, metadata !1453, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i32 1, metadata !1454, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %2, metadata !1455, metadata !DIExpression()), !dbg !2443
  %6 = lshr i8 %2, 5, !dbg !2445
  %7 = zext i8 %6 to i64, !dbg !2445
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2446
  call void @llvm.dbg.value(metadata i32* %8, metadata !1456, metadata !DIExpression()), !dbg !2443
  %9 = and i8 %2, 31, !dbg !2447
  %10 = zext i8 %9 to i32, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %10, metadata !1458, metadata !DIExpression()), !dbg !2443
  %11 = load i32, i32* %8, align 4, !dbg !2448, !tbaa !569
  %12 = lshr i32 %11, %10, !dbg !2449
  %13 = and i32 %12, 1, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %13, metadata !1459, metadata !DIExpression()), !dbg !2443
  %14 = xor i32 %13, 1, !dbg !2451
  %15 = shl i32 %14, %10, !dbg !2452
  %16 = xor i32 %15, %11, !dbg !2453
  store i32 %16, i32* %8, align 4, !dbg !2453, !tbaa !569
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2454
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2455
  ret i8* %17, !dbg !2456
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2457 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %1, metadata !2462, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* %0, metadata !2434, metadata !DIExpression()) #32, !dbg !2464
  call void @llvm.dbg.value(metadata i64 -1, metadata !2435, metadata !DIExpression()) #32, !dbg !2464
  call void @llvm.dbg.value(metadata i8 %1, metadata !2436, metadata !DIExpression()) #32, !dbg !2464
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2466
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2466
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2437, metadata !DIExpression()) #32, !dbg !2467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2468, !tbaa.struct !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1452, metadata !DIExpression()) #32, !dbg !2469
  call void @llvm.dbg.value(metadata i8 %1, metadata !1453, metadata !DIExpression()) #32, !dbg !2469
  call void @llvm.dbg.value(metadata i32 1, metadata !1454, metadata !DIExpression()) #32, !dbg !2469
  call void @llvm.dbg.value(metadata i8 %1, metadata !1455, metadata !DIExpression()) #32, !dbg !2469
  %5 = lshr i8 %1, 5, !dbg !2471
  %6 = zext i8 %5 to i64, !dbg !2471
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2472
  call void @llvm.dbg.value(metadata i32* %7, metadata !1456, metadata !DIExpression()) #32, !dbg !2469
  %8 = and i8 %1, 31, !dbg !2473
  %9 = zext i8 %8 to i32, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %9, metadata !1458, metadata !DIExpression()) #32, !dbg !2469
  %10 = load i32, i32* %7, align 4, !dbg !2474, !tbaa !569
  %11 = lshr i32 %10, %9, !dbg !2475
  %12 = and i32 %11, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %12, metadata !1459, metadata !DIExpression()) #32, !dbg !2469
  %13 = xor i32 %12, 1, !dbg !2477
  %14 = shl i32 %13, %9, !dbg !2478
  %15 = xor i32 %14, %10, !dbg !2479
  store i32 %15, i32* %7, align 4, !dbg !2479, !tbaa !569
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2480
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2481
  ret i8* %16, !dbg !2482
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2483 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* %0, metadata !2461, metadata !DIExpression()) #32, !dbg !2487
  call void @llvm.dbg.value(metadata i8 58, metadata !2462, metadata !DIExpression()) #32, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %0, metadata !2434, metadata !DIExpression()) #32, !dbg !2489
  call void @llvm.dbg.value(metadata i64 -1, metadata !2435, metadata !DIExpression()) #32, !dbg !2489
  call void @llvm.dbg.value(metadata i8 58, metadata !2436, metadata !DIExpression()) #32, !dbg !2489
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2491
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2491
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2437, metadata !DIExpression()) #32, !dbg !2492
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2493, !tbaa.struct !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1452, metadata !DIExpression()) #32, !dbg !2494
  call void @llvm.dbg.value(metadata i8 58, metadata !1453, metadata !DIExpression()) #32, !dbg !2494
  call void @llvm.dbg.value(metadata i32 1, metadata !1454, metadata !DIExpression()) #32, !dbg !2494
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()) #32, !dbg !2494
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2496
  call void @llvm.dbg.value(metadata i32* %4, metadata !1456, metadata !DIExpression()) #32, !dbg !2494
  call void @llvm.dbg.value(metadata i32 26, metadata !1458, metadata !DIExpression()) #32, !dbg !2494
  %5 = load i32, i32* %4, align 4, !dbg !2497, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %5, metadata !1459, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2494
  %6 = or i32 %5, 67108864, !dbg !2498
  store i32 %6, i32* %4, align 4, !dbg !2498, !tbaa !569
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2499
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2500
  ret i8* %7, !dbg !2501
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2502 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2504, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %1, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8* %0, metadata !2434, metadata !DIExpression()) #32, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %1, metadata !2435, metadata !DIExpression()) #32, !dbg !2507
  call void @llvm.dbg.value(metadata i8 58, metadata !2436, metadata !DIExpression()) #32, !dbg !2507
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2509
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2509
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2437, metadata !DIExpression()) #32, !dbg !2510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2511, !tbaa.struct !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1452, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i8 58, metadata !1453, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i32 1, metadata !1454, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()) #32, !dbg !2512
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2514
  call void @llvm.dbg.value(metadata i32* %5, metadata !1456, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i32 26, metadata !1458, metadata !DIExpression()) #32, !dbg !2512
  %6 = load i32, i32* %5, align 4, !dbg !2515, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %6, metadata !1459, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2512
  %7 = or i32 %6, 67108864, !dbg !2516
  store i32 %7, i32* %5, align 4, !dbg !2516, !tbaa !569
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2517
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2518
  ret i8* %8, !dbg !2519
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2520 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %1, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %2, metadata !2524, metadata !DIExpression()), !dbg !2526
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2527
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2527
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2525, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %1, metadata !2332, metadata !DIExpression()) #32, !dbg !2529
  call void @llvm.dbg.value(metadata i32 0, metadata !2337, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2529
  %6 = icmp eq i32 %1, 10, !dbg !2531
  br i1 %6, label %7, label %8, !dbg !2532

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2533, !noalias !2534
  unreachable, !dbg !2533

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2337, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2529
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2537
  store i32 %1, i32* %9, align 8, !dbg !2537, !tbaa.struct !2442
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2537
  %11 = bitcast i32* %10 to i8*, !dbg !2537
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1452, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 58, metadata !1453, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 1, metadata !1454, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()), !dbg !2538
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2540
  call void @llvm.dbg.value(metadata i32* %12, metadata !1456, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 26, metadata !1458, metadata !DIExpression()), !dbg !2538
  %13 = load i32, i32* %12, align 4, !dbg !2541, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %13, metadata !1459, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2538
  %14 = or i32 %13, 67108864, !dbg !2542
  store i32 %14, i32* %12, align 4, !dbg !2542, !tbaa !569
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2543
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2544
  ret i8* %15, !dbg !2545
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2546 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2550, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %1, metadata !2551, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %2, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %3, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()) #32, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %1, metadata !2560, metadata !DIExpression()) #32, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %2, metadata !2561, metadata !DIExpression()) #32, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %3, metadata !2562, metadata !DIExpression()) #32, !dbg !2565
  call void @llvm.dbg.value(metadata i64 -1, metadata !2563, metadata !DIExpression()) #32, !dbg !2565
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2567
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2567
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2564, metadata !DIExpression()) #32, !dbg !2568
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2569, !tbaa.struct !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1492, metadata !DIExpression()) #32, !dbg !2570
  call void @llvm.dbg.value(metadata i8* %1, metadata !1493, metadata !DIExpression()) #32, !dbg !2570
  call void @llvm.dbg.value(metadata i8* %2, metadata !1494, metadata !DIExpression()) #32, !dbg !2570
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1492, metadata !DIExpression()) #32, !dbg !2570
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2572
  store i32 10, i32* %7, align 8, !dbg !2573, !tbaa !1434
  %8 = icmp ne i8* %1, null, !dbg !2574
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2575
  br i1 %10, label %12, label %11, !dbg !2575

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2576
  unreachable, !dbg !2576

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2577
  store i8* %1, i8** %13, align 8, !dbg !2578, !tbaa !1507
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2579
  store i8* %2, i8** %14, align 8, !dbg !2580, !tbaa !1510
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2581
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2582
  ret i8* %15, !dbg !2583
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2556 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %1, metadata !2560, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %2, metadata !2561, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %3, metadata !2562, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %4, metadata !2563, metadata !DIExpression()), !dbg !2584
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2585
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2585
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2564, metadata !DIExpression()), !dbg !2586
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2587, !tbaa.struct !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1492, metadata !DIExpression()) #32, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !1493, metadata !DIExpression()) #32, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %2, metadata !1494, metadata !DIExpression()) #32, !dbg !2588
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1492, metadata !DIExpression()) #32, !dbg !2588
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2590
  store i32 10, i32* %8, align 8, !dbg !2591, !tbaa !1434
  %9 = icmp ne i8* %1, null, !dbg !2592
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2593
  br i1 %11, label %13, label %12, !dbg !2593

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2594
  unreachable, !dbg !2594

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2595
  store i8* %1, i8** %14, align 8, !dbg !2596, !tbaa !1507
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2597
  store i8* %2, i8** %15, align 8, !dbg !2598, !tbaa !1510
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2599
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2600
  ret i8* %16, !dbg !2601
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2602 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %1, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %2, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2550, metadata !DIExpression()) #32, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %0, metadata !2551, metadata !DIExpression()) #32, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %1, metadata !2552, metadata !DIExpression()) #32, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %2, metadata !2553, metadata !DIExpression()) #32, !dbg !2610
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()) #32, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %0, metadata !2560, metadata !DIExpression()) #32, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()) #32, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %2, metadata !2562, metadata !DIExpression()) #32, !dbg !2612
  call void @llvm.dbg.value(metadata i64 -1, metadata !2563, metadata !DIExpression()) #32, !dbg !2612
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2614
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2614
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2564, metadata !DIExpression()) #32, !dbg !2615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2616, !tbaa.struct !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1492, metadata !DIExpression()) #32, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %0, metadata !1493, metadata !DIExpression()) #32, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %1, metadata !1494, metadata !DIExpression()) #32, !dbg !2617
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1492, metadata !DIExpression()) #32, !dbg !2617
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2619
  store i32 10, i32* %6, align 8, !dbg !2620, !tbaa !1434
  %7 = icmp ne i8* %0, null, !dbg !2621
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2622
  br i1 %9, label %11, label %10, !dbg !2622

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2623
  unreachable, !dbg !2623

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2624
  store i8* %0, i8** %12, align 8, !dbg !2625, !tbaa !1507
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2626
  store i8* %1, i8** %13, align 8, !dbg !2627, !tbaa !1510
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2628
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2629
  ret i8* %14, !dbg !2630
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2631 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8* %1, metadata !2636, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8* %2, metadata !2637, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %3, metadata !2638, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()) #32, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %0, metadata !2560, metadata !DIExpression()) #32, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()) #32, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %2, metadata !2562, metadata !DIExpression()) #32, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %3, metadata !2563, metadata !DIExpression()) #32, !dbg !2640
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2642
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2564, metadata !DIExpression()) #32, !dbg !2643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2644, !tbaa.struct !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1492, metadata !DIExpression()) #32, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %0, metadata !1493, metadata !DIExpression()) #32, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %1, metadata !1494, metadata !DIExpression()) #32, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1492, metadata !DIExpression()) #32, !dbg !2645
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2647
  store i32 10, i32* %7, align 8, !dbg !2648, !tbaa !1434
  %8 = icmp ne i8* %0, null, !dbg !2649
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2650
  br i1 %10, label %12, label %11, !dbg !2650

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2651
  unreachable, !dbg !2651

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2652
  store i8* %0, i8** %13, align 8, !dbg !2653, !tbaa !1507
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2654
  store i8* %1, i8** %14, align 8, !dbg !2655, !tbaa !1510
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2657
  ret i8* %15, !dbg !2658
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8* %1, metadata !2664, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %2, metadata !2665, metadata !DIExpression()), !dbg !2666
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2667
  ret i8* %4, !dbg !2668
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2669 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !2663, metadata !DIExpression()) #32, !dbg !2676
  call void @llvm.dbg.value(metadata i8* %0, metadata !2664, metadata !DIExpression()) #32, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %1, metadata !2665, metadata !DIExpression()) #32, !dbg !2676
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2678
  ret i8* %3, !dbg !2679
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2680 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2684, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8* %1, metadata !2685, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 %0, metadata !2663, metadata !DIExpression()) #32, !dbg !2687
  call void @llvm.dbg.value(metadata i8* %1, metadata !2664, metadata !DIExpression()) #32, !dbg !2687
  call void @llvm.dbg.value(metadata i64 -1, metadata !2665, metadata !DIExpression()) #32, !dbg !2687
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2689
  ret i8* %3, !dbg !2690
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i32 0, metadata !2684, metadata !DIExpression()) #32, !dbg !2697
  call void @llvm.dbg.value(metadata i8* %0, metadata !2685, metadata !DIExpression()) #32, !dbg !2697
  call void @llvm.dbg.value(metadata i32 0, metadata !2663, metadata !DIExpression()) #32, !dbg !2699
  call void @llvm.dbg.value(metadata i8* %0, metadata !2664, metadata !DIExpression()) #32, !dbg !2699
  call void @llvm.dbg.value(metadata i64 -1, metadata !2665, metadata !DIExpression()) #32, !dbg !2699
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2701
  ret i8* %2, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2703 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2742, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %1, metadata !2743, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %2, metadata !2744, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %3, metadata !2745, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8** %4, metadata !2746, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %5, metadata !2747, metadata !DIExpression()), !dbg !2748
  %7 = icmp eq i8* %1, null, !dbg !2749
  br i1 %7, label %10, label %8, !dbg !2751

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2752
  br label %12, !dbg !2752

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.97, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2753
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.99, i64 0, i64 0), i32 noundef 5) #32, !dbg !2754
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2754
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2755
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.101, i64 0, i64 0), i32 noundef 5) #32, !dbg !2756
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.102, i64 0, i64 0)) #32, !dbg !2756
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2757
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
  ], !dbg !2758

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.103, i64 0, i64 0), i32 noundef 5) #32, !dbg !2759
  %21 = load i8*, i8** %4, align 8, !dbg !2759, !tbaa !483
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2759
  br label %147, !dbg !2761

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.104, i64 0, i64 0), i32 noundef 5) #32, !dbg !2762
  %25 = load i8*, i8** %4, align 8, !dbg !2762, !tbaa !483
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2762
  %27 = load i8*, i8** %26, align 8, !dbg !2762, !tbaa !483
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2762
  br label %147, !dbg !2763

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.105, i64 0, i64 0), i32 noundef 5) #32, !dbg !2764
  %31 = load i8*, i8** %4, align 8, !dbg !2764, !tbaa !483
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2764
  %33 = load i8*, i8** %32, align 8, !dbg !2764, !tbaa !483
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2764
  %35 = load i8*, i8** %34, align 8, !dbg !2764, !tbaa !483
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2764
  br label %147, !dbg !2765

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.106, i64 0, i64 0), i32 noundef 5) #32, !dbg !2766
  %39 = load i8*, i8** %4, align 8, !dbg !2766, !tbaa !483
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2766
  %41 = load i8*, i8** %40, align 8, !dbg !2766, !tbaa !483
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2766
  %43 = load i8*, i8** %42, align 8, !dbg !2766, !tbaa !483
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2766
  %45 = load i8*, i8** %44, align 8, !dbg !2766, !tbaa !483
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2766
  br label %147, !dbg !2767

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.107, i64 0, i64 0), i32 noundef 5) #32, !dbg !2768
  %49 = load i8*, i8** %4, align 8, !dbg !2768, !tbaa !483
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2768
  %51 = load i8*, i8** %50, align 8, !dbg !2768, !tbaa !483
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2768
  %53 = load i8*, i8** %52, align 8, !dbg !2768, !tbaa !483
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2768
  %55 = load i8*, i8** %54, align 8, !dbg !2768, !tbaa !483
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2768
  %57 = load i8*, i8** %56, align 8, !dbg !2768, !tbaa !483
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2768
  br label %147, !dbg !2769

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.108, i64 0, i64 0), i32 noundef 5) #32, !dbg !2770
  %61 = load i8*, i8** %4, align 8, !dbg !2770, !tbaa !483
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2770
  %63 = load i8*, i8** %62, align 8, !dbg !2770, !tbaa !483
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2770
  %65 = load i8*, i8** %64, align 8, !dbg !2770, !tbaa !483
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2770
  %67 = load i8*, i8** %66, align 8, !dbg !2770, !tbaa !483
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2770
  %69 = load i8*, i8** %68, align 8, !dbg !2770, !tbaa !483
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2770
  %71 = load i8*, i8** %70, align 8, !dbg !2770, !tbaa !483
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2770
  br label %147, !dbg !2771

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.109, i64 0, i64 0), i32 noundef 5) #32, !dbg !2772
  %75 = load i8*, i8** %4, align 8, !dbg !2772, !tbaa !483
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2772
  %77 = load i8*, i8** %76, align 8, !dbg !2772, !tbaa !483
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2772
  %79 = load i8*, i8** %78, align 8, !dbg !2772, !tbaa !483
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2772
  %81 = load i8*, i8** %80, align 8, !dbg !2772, !tbaa !483
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2772
  %83 = load i8*, i8** %82, align 8, !dbg !2772, !tbaa !483
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2772
  %85 = load i8*, i8** %84, align 8, !dbg !2772, !tbaa !483
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2772
  %87 = load i8*, i8** %86, align 8, !dbg !2772, !tbaa !483
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2772
  br label %147, !dbg !2773

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.110, i64 0, i64 0), i32 noundef 5) #32, !dbg !2774
  %91 = load i8*, i8** %4, align 8, !dbg !2774, !tbaa !483
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2774
  %93 = load i8*, i8** %92, align 8, !dbg !2774, !tbaa !483
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2774
  %95 = load i8*, i8** %94, align 8, !dbg !2774, !tbaa !483
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2774
  %97 = load i8*, i8** %96, align 8, !dbg !2774, !tbaa !483
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2774
  %99 = load i8*, i8** %98, align 8, !dbg !2774, !tbaa !483
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2774
  %101 = load i8*, i8** %100, align 8, !dbg !2774, !tbaa !483
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2774
  %103 = load i8*, i8** %102, align 8, !dbg !2774, !tbaa !483
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2774
  %105 = load i8*, i8** %104, align 8, !dbg !2774, !tbaa !483
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2774
  br label %147, !dbg !2775

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.111, i64 0, i64 0), i32 noundef 5) #32, !dbg !2776
  %109 = load i8*, i8** %4, align 8, !dbg !2776, !tbaa !483
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2776
  %111 = load i8*, i8** %110, align 8, !dbg !2776, !tbaa !483
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2776
  %113 = load i8*, i8** %112, align 8, !dbg !2776, !tbaa !483
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2776
  %115 = load i8*, i8** %114, align 8, !dbg !2776, !tbaa !483
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2776
  %117 = load i8*, i8** %116, align 8, !dbg !2776, !tbaa !483
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2776
  %119 = load i8*, i8** %118, align 8, !dbg !2776, !tbaa !483
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2776
  %121 = load i8*, i8** %120, align 8, !dbg !2776, !tbaa !483
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2776
  %123 = load i8*, i8** %122, align 8, !dbg !2776, !tbaa !483
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2776
  %125 = load i8*, i8** %124, align 8, !dbg !2776, !tbaa !483
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2776
  br label %147, !dbg !2777

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.112, i64 0, i64 0), i32 noundef 5) #32, !dbg !2778
  %129 = load i8*, i8** %4, align 8, !dbg !2778, !tbaa !483
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2778
  %131 = load i8*, i8** %130, align 8, !dbg !2778, !tbaa !483
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2778
  %133 = load i8*, i8** %132, align 8, !dbg !2778, !tbaa !483
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2778
  %135 = load i8*, i8** %134, align 8, !dbg !2778, !tbaa !483
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2778
  %137 = load i8*, i8** %136, align 8, !dbg !2778, !tbaa !483
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2778
  %139 = load i8*, i8** %138, align 8, !dbg !2778, !tbaa !483
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2778
  %141 = load i8*, i8** %140, align 8, !dbg !2778, !tbaa !483
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2778
  %143 = load i8*, i8** %142, align 8, !dbg !2778, !tbaa !483
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2778
  %145 = load i8*, i8** %144, align 8, !dbg !2778, !tbaa !483
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2778
  br label %147, !dbg !2779

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2780
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2781 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %1, metadata !2786, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %2, metadata !2787, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %3, metadata !2788, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8** %4, metadata !2789, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 0, metadata !2790, metadata !DIExpression()), !dbg !2791
  br label %6, !dbg !2792

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2794
  call void @llvm.dbg.value(metadata i64 %7, metadata !2790, metadata !DIExpression()), !dbg !2791
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2795
  %9 = load i8*, i8** %8, align 8, !dbg !2795, !tbaa !483
  %10 = icmp eq i8* %9, null, !dbg !2797
  %11 = add i64 %7, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %11, metadata !2790, metadata !DIExpression()), !dbg !2791
  br i1 %10, label %12, label %6, !dbg !2797, !llvm.loop !2799

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2801
  ret void, !dbg !2802
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2803 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2818, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %1, metadata !2819, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %2, metadata !2820, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %3, metadata !2821, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2822, metadata !DIExpression()), !dbg !2827
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2828
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2828
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2824, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 0, metadata !2823, metadata !DIExpression()), !dbg !2826
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2823, metadata !DIExpression()), !dbg !2826
  %11 = load i32, i32* %8, align 8, !dbg !2830
  %12 = icmp sgt i32 %11, -1, !dbg !2830
  br i1 %12, label %20, label %13, !dbg !2830

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2830
  store i32 %14, i32* %8, align 8, !dbg !2830
  %15 = icmp ult i32 %11, -7, !dbg !2830
  br i1 %15, label %16, label %20, !dbg !2830

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2830
  %18 = sext i32 %11 to i64, !dbg !2830
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2830
  br label %24, !dbg !2830

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2830
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2830
  store i8* %23, i8** %10, align 8, !dbg !2830
  br label %24, !dbg !2830

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2830
  %28 = load i8*, i8** %27, align 8, !dbg !2830
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2833
  store i8* %28, i8** %29, align 8, !dbg !2834, !tbaa !483
  %30 = icmp eq i8* %28, null, !dbg !2835
  br i1 %30, label %210, label %31, !dbg !2836

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 1, metadata !2823, metadata !DIExpression()), !dbg !2826
  %32 = icmp sgt i32 %25, -1, !dbg !2830
  br i1 %32, label %40, label %33, !dbg !2830

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2830
  store i32 %34, i32* %8, align 8, !dbg !2830
  %35 = icmp ult i32 %25, -7, !dbg !2830
  br i1 %35, label %36, label %40, !dbg !2830

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2830
  %38 = sext i32 %25 to i64, !dbg !2830
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2830
  br label %44, !dbg !2830

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2830
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2830
  store i8* %43, i8** %10, align 8, !dbg !2830
  br label %44, !dbg !2830

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2830
  %48 = load i8*, i8** %47, align 8, !dbg !2830
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2833
  store i8* %48, i8** %49, align 8, !dbg !2834, !tbaa !483
  %50 = icmp eq i8* %48, null, !dbg !2835
  br i1 %50, label %210, label %51, !dbg !2836

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 2, metadata !2823, metadata !DIExpression()), !dbg !2826
  %52 = icmp sgt i32 %45, -1, !dbg !2830
  br i1 %52, label %60, label %53, !dbg !2830

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2830
  store i32 %54, i32* %8, align 8, !dbg !2830
  %55 = icmp ult i32 %45, -7, !dbg !2830
  br i1 %55, label %56, label %60, !dbg !2830

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2830
  %58 = sext i32 %45 to i64, !dbg !2830
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2830
  br label %64, !dbg !2830

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2830
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2830
  store i8* %63, i8** %10, align 8, !dbg !2830
  br label %64, !dbg !2830

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2830
  %68 = load i8*, i8** %67, align 8, !dbg !2830
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2833
  store i8* %68, i8** %69, align 8, !dbg !2834, !tbaa !483
  %70 = icmp eq i8* %68, null, !dbg !2835
  br i1 %70, label %210, label %71, !dbg !2836

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 3, metadata !2823, metadata !DIExpression()), !dbg !2826
  %72 = icmp sgt i32 %65, -1, !dbg !2830
  br i1 %72, label %80, label %73, !dbg !2830

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2830
  store i32 %74, i32* %8, align 8, !dbg !2830
  %75 = icmp ult i32 %65, -7, !dbg !2830
  br i1 %75, label %76, label %80, !dbg !2830

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2830
  %78 = sext i32 %65 to i64, !dbg !2830
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2830
  br label %84, !dbg !2830

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2830
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2830
  store i8* %83, i8** %10, align 8, !dbg !2830
  br label %84, !dbg !2830

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2830
  %88 = load i8*, i8** %87, align 8, !dbg !2830
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2833
  store i8* %88, i8** %89, align 8, !dbg !2834, !tbaa !483
  %90 = icmp eq i8* %88, null, !dbg !2835
  br i1 %90, label %210, label %91, !dbg !2836

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 4, metadata !2823, metadata !DIExpression()), !dbg !2826
  %92 = icmp sgt i32 %85, -1, !dbg !2830
  br i1 %92, label %100, label %93, !dbg !2830

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2830
  store i32 %94, i32* %8, align 8, !dbg !2830
  %95 = icmp ult i32 %85, -7, !dbg !2830
  br i1 %95, label %96, label %100, !dbg !2830

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2830
  %98 = sext i32 %85 to i64, !dbg !2830
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2830
  br label %104, !dbg !2830

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2830
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2830
  store i8* %103, i8** %10, align 8, !dbg !2830
  br label %104, !dbg !2830

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2830
  %108 = load i8*, i8** %107, align 8, !dbg !2830
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2833
  store i8* %108, i8** %109, align 8, !dbg !2834, !tbaa !483
  %110 = icmp eq i8* %108, null, !dbg !2835
  br i1 %110, label %210, label %111, !dbg !2836

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 5, metadata !2823, metadata !DIExpression()), !dbg !2826
  %112 = icmp sgt i32 %105, -1, !dbg !2830
  br i1 %112, label %120, label %113, !dbg !2830

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2830
  store i32 %114, i32* %8, align 8, !dbg !2830
  %115 = icmp ult i32 %105, -7, !dbg !2830
  br i1 %115, label %116, label %120, !dbg !2830

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2830
  %118 = sext i32 %105 to i64, !dbg !2830
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2830
  br label %124, !dbg !2830

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2830
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2830
  store i8* %123, i8** %10, align 8, !dbg !2830
  br label %124, !dbg !2830

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2830
  %128 = load i8*, i8** %127, align 8, !dbg !2830
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2833
  store i8* %128, i8** %129, align 8, !dbg !2834, !tbaa !483
  %130 = icmp eq i8* %128, null, !dbg !2835
  br i1 %130, label %210, label %131, !dbg !2836

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 6, metadata !2823, metadata !DIExpression()), !dbg !2826
  %132 = icmp sgt i32 %125, -1, !dbg !2830
  br i1 %132, label %140, label %133, !dbg !2830

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2830
  store i32 %134, i32* %8, align 8, !dbg !2830
  %135 = icmp ult i32 %125, -7, !dbg !2830
  br i1 %135, label %136, label %140, !dbg !2830

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2830
  %138 = sext i32 %125 to i64, !dbg !2830
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2830
  br label %144, !dbg !2830

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2830
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2830
  store i8* %143, i8** %10, align 8, !dbg !2830
  br label %144, !dbg !2830

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2830
  %148 = load i8*, i8** %147, align 8, !dbg !2830
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2833
  store i8* %148, i8** %149, align 8, !dbg !2834, !tbaa !483
  %150 = icmp eq i8* %148, null, !dbg !2835
  br i1 %150, label %210, label %151, !dbg !2836

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 7, metadata !2823, metadata !DIExpression()), !dbg !2826
  %152 = icmp sgt i32 %145, -1, !dbg !2830
  br i1 %152, label %160, label %153, !dbg !2830

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2830
  store i32 %154, i32* %8, align 8, !dbg !2830
  %155 = icmp ult i32 %145, -7, !dbg !2830
  br i1 %155, label %156, label %160, !dbg !2830

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2830
  %158 = sext i32 %145 to i64, !dbg !2830
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2830
  br label %164, !dbg !2830

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2830
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2830
  store i8* %163, i8** %10, align 8, !dbg !2830
  br label %164, !dbg !2830

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2830
  %168 = load i8*, i8** %167, align 8, !dbg !2830
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2833
  store i8* %168, i8** %169, align 8, !dbg !2834, !tbaa !483
  %170 = icmp eq i8* %168, null, !dbg !2835
  br i1 %170, label %210, label %171, !dbg !2836

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 8, metadata !2823, metadata !DIExpression()), !dbg !2826
  %172 = icmp sgt i32 %165, -1, !dbg !2830
  br i1 %172, label %180, label %173, !dbg !2830

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2830
  store i32 %174, i32* %8, align 8, !dbg !2830
  %175 = icmp ult i32 %165, -7, !dbg !2830
  br i1 %175, label %176, label %180, !dbg !2830

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2830
  %178 = sext i32 %165 to i64, !dbg !2830
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2830
  br label %184, !dbg !2830

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2830
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2830
  store i8* %183, i8** %10, align 8, !dbg !2830
  br label %184, !dbg !2830

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2830
  %188 = load i8*, i8** %187, align 8, !dbg !2830
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2833
  store i8* %188, i8** %189, align 8, !dbg !2834, !tbaa !483
  %190 = icmp eq i8* %188, null, !dbg !2835
  br i1 %190, label %210, label %191, !dbg !2836

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 9, metadata !2823, metadata !DIExpression()), !dbg !2826
  %192 = icmp sgt i32 %185, -1, !dbg !2830
  br i1 %192, label %200, label %193, !dbg !2830

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2830
  store i32 %194, i32* %8, align 8, !dbg !2830
  %195 = icmp ult i32 %185, -7, !dbg !2830
  br i1 %195, label %196, label %200, !dbg !2830

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2830
  %198 = sext i32 %185 to i64, !dbg !2830
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2830
  br label %203, !dbg !2830

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2830
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2830
  store i8* %202, i8** %10, align 8, !dbg !2830
  br label %203, !dbg !2830

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2830
  %206 = load i8*, i8** %205, align 8, !dbg !2830
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2833
  store i8* %206, i8** %207, align 8, !dbg !2834, !tbaa !483
  %208 = icmp eq i8* %206, null, !dbg !2835
  %209 = select i1 %208, i64 9, i64 10, !dbg !2836
  br label %210, !dbg !2836

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2837
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2839
  ret void, !dbg !2839
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2840 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2844, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8* %1, metadata !2845, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8* %2, metadata !2846, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8* %3, metadata !2847, metadata !DIExpression()), !dbg !2849
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2850
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2850
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2848, metadata !DIExpression()), !dbg !2851
  call void @llvm.va_start(i8* nonnull %7), !dbg !2852
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2853
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2853, !tbaa.struct !1101
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2853
  call void @llvm.va_end(i8* nonnull %7), !dbg !2854
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2855
  ret void, !dbg !2855
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2856 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2857, !tbaa !483
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2857
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.117, i64 0, i64 0), i32 noundef 5) #32, !dbg !2858
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.118, i64 0, i64 0)) #32, !dbg !2858
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.119, i64 0, i64 0), i32 noundef 5) #32, !dbg !2859
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.121, i64 0, i64 0)) #32, !dbg !2859
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.122, i64 0, i64 0), i32 noundef 5) #32, !dbg !2860
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2860
  ret void, !dbg !2861
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1, metadata !2868, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %2, metadata !2869, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #32, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()) #32, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %2, metadata !2875, metadata !DIExpression()) #32, !dbg !2876
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %4, metadata !2879, metadata !DIExpression()) #32, !dbg !2884
  %5 = icmp eq i8* %4, null, !dbg !2886
  br i1 %5, label %6, label %7, !dbg !2888

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2889
  unreachable, !dbg !2889

7:                                                ; preds = %3
  ret i8* %4, !dbg !2890
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2872 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 %2, metadata !2875, metadata !DIExpression()), !dbg !2891
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %4, metadata !2879, metadata !DIExpression()) #32, !dbg !2893
  %5 = icmp eq i8* %4, null, !dbg !2895
  br i1 %5, label %6, label %7, !dbg !2896

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2897
  unreachable, !dbg !2897

7:                                                ; preds = %3
  ret i8* %4, !dbg !2898
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2899 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2903, metadata !DIExpression()), !dbg !2904
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2905
  call void @llvm.dbg.value(metadata i8* %2, metadata !2879, metadata !DIExpression()) #32, !dbg !2906
  %3 = icmp eq i8* %2, null, !dbg !2908
  br i1 %3, label %4, label %5, !dbg !2909

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2910
  unreachable, !dbg !2910

5:                                                ; preds = %1
  ret i8* %2, !dbg !2911
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2912 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2916, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 %0, metadata !2918, metadata !DIExpression()) #32, !dbg !2922
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2924
  call void @llvm.dbg.value(metadata i8* %2, metadata !2879, metadata !DIExpression()) #32, !dbg !2925
  %3 = icmp eq i8* %2, null, !dbg !2927
  br i1 %3, label %4, label %5, !dbg !2928

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2929
  unreachable, !dbg !2929

5:                                                ; preds = %1
  ret i8* %2, !dbg !2930
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2931 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2935, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %0, metadata !2903, metadata !DIExpression()) #32, !dbg !2937
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %2, metadata !2879, metadata !DIExpression()) #32, !dbg !2940
  %3 = icmp eq i8* %2, null, !dbg !2942
  br i1 %3, label %4, label %5, !dbg !2943

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2944
  unreachable, !dbg !2944

5:                                                ; preds = %1
  ret i8* %2, !dbg !2945
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2946 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2950, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 %1, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()) #32, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()) #32, !dbg !2958
  %3 = icmp eq i64 %1, 0, !dbg !2960
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2960
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %5, metadata !2879, metadata !DIExpression()) #32, !dbg !2962
  %6 = icmp eq i8* %5, null, !dbg !2964
  br i1 %6, label %7, label %8, !dbg !2965

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2966
  unreachable, !dbg !2966

8:                                                ; preds = %2
  ret i8* %5, !dbg !2967
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2968 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2972, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %1, metadata !2973, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %0, metadata !2975, metadata !DIExpression()) #32, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()) #32, !dbg !2979
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()) #32, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()) #32, !dbg !2981
  %3 = icmp eq i64 %1, 0, !dbg !2983
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2983
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2984
  call void @llvm.dbg.value(metadata i8* %5, metadata !2879, metadata !DIExpression()) #32, !dbg !2985
  %6 = icmp eq i8* %5, null, !dbg !2987
  br i1 %6, label %7, label %8, !dbg !2988

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2989
  unreachable, !dbg !2989

8:                                                ; preds = %2
  ret i8* %5, !dbg !2990
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2991 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %1, metadata !2996, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %2, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %0, metadata !2999, metadata !DIExpression()) #32, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()) #32, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %2, metadata !3003, metadata !DIExpression()) #32, !dbg !3004
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !3006
  call void @llvm.dbg.value(metadata i8* %4, metadata !2879, metadata !DIExpression()) #32, !dbg !3007
  %5 = icmp eq i8* %4, null, !dbg !3009
  br i1 %5, label %6, label %7, !dbg !3010

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !3011
  unreachable, !dbg !3011

7:                                                ; preds = %3
  ret i8* %4, !dbg !3012
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3013 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %1, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8* null, metadata !2871, metadata !DIExpression()) #32, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %0, metadata !2874, metadata !DIExpression()) #32, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %1, metadata !2875, metadata !DIExpression()) #32, !dbg !3020
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3022
  call void @llvm.dbg.value(metadata i8* %3, metadata !2879, metadata !DIExpression()) #32, !dbg !3023
  %4 = icmp eq i8* %3, null, !dbg !3025
  br i1 %4, label %5, label %6, !dbg !3026

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3027
  unreachable, !dbg !3027

6:                                                ; preds = %2
  ret i8* %3, !dbg !3028
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3029 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3033, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %1, metadata !3034, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i8* null, metadata !2995, metadata !DIExpression()) #32, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %0, metadata !2996, metadata !DIExpression()) #32, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %1, metadata !2997, metadata !DIExpression()) #32, !dbg !3036
  call void @llvm.dbg.value(metadata i8* null, metadata !2999, metadata !DIExpression()) #32, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %0, metadata !3002, metadata !DIExpression()) #32, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %1, metadata !3003, metadata !DIExpression()) #32, !dbg !3038
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3040
  call void @llvm.dbg.value(metadata i8* %3, metadata !2879, metadata !DIExpression()) #32, !dbg !3041
  %4 = icmp eq i8* %3, null, !dbg !3043
  br i1 %4, label %5, label %6, !dbg !3044

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3045
  unreachable, !dbg !3045

6:                                                ; preds = %2
  ret i8* %3, !dbg !3046
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64* %1, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8* %0, metadata !373, metadata !DIExpression()) #32, !dbg !3054
  call void @llvm.dbg.value(metadata i64* %1, metadata !374, metadata !DIExpression()) #32, !dbg !3054
  call void @llvm.dbg.value(metadata i64 1, metadata !375, metadata !DIExpression()) #32, !dbg !3054
  %3 = load i64, i64* %1, align 8, !dbg !3056, !tbaa !2152
  call void @llvm.dbg.value(metadata i64 %3, metadata !376, metadata !DIExpression()) #32, !dbg !3054
  %4 = icmp eq i8* %0, null, !dbg !3057
  br i1 %4, label %5, label %8, !dbg !3059

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3060
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3063
  br label %15, !dbg !3063

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3064
  %10 = add nuw i64 %9, 1, !dbg !3064
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !3064
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3064
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %13, metadata !376, metadata !DIExpression()) #32, !dbg !3054
  br i1 %12, label %14, label %15, !dbg !3067

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !3068
  unreachable, !dbg !3068

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3054
  call void @llvm.dbg.value(metadata i64 %16, metadata !376, metadata !DIExpression()) #32, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #32, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %16, metadata !2874, metadata !DIExpression()) #32, !dbg !3069
  call void @llvm.dbg.value(metadata i64 1, metadata !2875, metadata !DIExpression()) #32, !dbg !3069
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !3071
  call void @llvm.dbg.value(metadata i8* %17, metadata !2879, metadata !DIExpression()) #32, !dbg !3072
  %18 = icmp eq i8* %17, null, !dbg !3074
  br i1 %18, label %19, label %20, !dbg !3075

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !3076
  unreachable, !dbg !3076

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !373, metadata !DIExpression()) #32, !dbg !3054
  store i64 %16, i64* %1, align 8, !dbg !3077, !tbaa !2152
  ret i8* %17, !dbg !3078
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !373, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i64* %1, metadata !374, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %2, metadata !375, metadata !DIExpression()), !dbg !3079
  %4 = load i64, i64* %1, align 8, !dbg !3080, !tbaa !2152
  call void @llvm.dbg.value(metadata i64 %4, metadata !376, metadata !DIExpression()), !dbg !3079
  %5 = icmp eq i8* %0, null, !dbg !3081
  br i1 %5, label %6, label %13, !dbg !3082

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3083
  br i1 %7, label %8, label %20, !dbg !3084

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %9, metadata !376, metadata !DIExpression()), !dbg !3079
  %10 = icmp ugt i64 %2, 128, !dbg !3087
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %12, metadata !376, metadata !DIExpression()), !dbg !3079
  br label %20, !dbg !3089

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3090
  %15 = add nuw i64 %14, 1, !dbg !3090
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3090
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3090
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %18, metadata !376, metadata !DIExpression()), !dbg !3079
  br i1 %17, label %19, label %20, !dbg !3091

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !3092
  unreachable, !dbg !3092

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3079
  call void @llvm.dbg.value(metadata i64 %21, metadata !376, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #32, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %21, metadata !2874, metadata !DIExpression()) #32, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %2, metadata !2875, metadata !DIExpression()) #32, !dbg !3093
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %22, metadata !2879, metadata !DIExpression()) #32, !dbg !3096
  %23 = icmp eq i8* %22, null, !dbg !3098
  br i1 %23, label %24, label %25, !dbg !3099

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !3100
  unreachable, !dbg !3100

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !373, metadata !DIExpression()), !dbg !3079
  store i64 %21, i64* %1, align 8, !dbg !3101, !tbaa !2152
  ret i8* %22, !dbg !3102
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !388, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64* %1, metadata !389, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %2, metadata !390, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %3, metadata !391, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %4, metadata !392, metadata !DIExpression()), !dbg !3103
  %6 = load i64, i64* %1, align 8, !dbg !3104, !tbaa !2152
  call void @llvm.dbg.value(metadata i64 %6, metadata !393, metadata !DIExpression()), !dbg !3103
  %7 = ashr i64 %6, 1, !dbg !3105
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3105
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3105
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %10, metadata !394, metadata !DIExpression()), !dbg !3103
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %11, metadata !394, metadata !DIExpression()), !dbg !3103
  %12 = icmp sgt i64 %3, -1, !dbg !3108
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3110
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %15, metadata !394, metadata !DIExpression()), !dbg !3103
  %16 = icmp slt i64 %4, 0, !dbg !3111
  br i1 %16, label %17, label %30, !dbg !3111

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3111
  br i1 %18, label %19, label %24, !dbg !3111

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3111
  %21 = udiv i64 9223372036854775807, %20, !dbg !3111
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3111
  br i1 %23, label %46, label %43, !dbg !3111

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3111
  br i1 %25, label %43, label %26, !dbg !3111

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3111
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3111
  %29 = icmp ult i64 %28, %15, !dbg !3111
  br i1 %29, label %46, label %43, !dbg !3111

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3111
  br i1 %31, label %43, label %32, !dbg !3111

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3111
  br i1 %33, label %34, label %40, !dbg !3111

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3111
  br i1 %35, label %43, label %36, !dbg !3111

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3111
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3111
  %39 = icmp ult i64 %38, %4, !dbg !3111
  br i1 %39, label %46, label %43, !dbg !3111

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3111
  %42 = icmp ult i64 %41, %15, !dbg !3111
  br i1 %42, label %46, label %43, !dbg !3111

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !395, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3103
  %44 = mul i64 %15, %4, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %44, metadata !395, metadata !DIExpression()), !dbg !3103
  %45 = icmp slt i64 %44, 128, !dbg !3111
  br i1 %45, label %46, label %52, !dbg !3111

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !396, metadata !DIExpression()), !dbg !3103
  %48 = sdiv i64 %47, %4, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %48, metadata !394, metadata !DIExpression()), !dbg !3103
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %51, metadata !395, metadata !DIExpression()), !dbg !3103
  br label %52, !dbg !3116

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3103
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3103
  call void @llvm.dbg.value(metadata i64 %54, metadata !395, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %53, metadata !394, metadata !DIExpression()), !dbg !3103
  %55 = icmp eq i8* %0, null, !dbg !3117
  br i1 %55, label %56, label %57, !dbg !3119

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3120, !tbaa !2152
  br label %57, !dbg !3121

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3122
  %59 = icmp slt i64 %58, %2, !dbg !3124
  br i1 %59, label %60, label %97, !dbg !3125

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3126
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3126
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %63, metadata !394, metadata !DIExpression()), !dbg !3103
  br i1 %62, label %96, label %64, !dbg !3127

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3128
  br i1 %66, label %96, label %67, !dbg !3128

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3129

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3129
  br i1 %69, label %70, label %75, !dbg !3129

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3129
  %72 = udiv i64 9223372036854775807, %71, !dbg !3129
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3129
  br i1 %74, label %96, label %94, !dbg !3129

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3129
  br i1 %76, label %94, label %77, !dbg !3129

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3129
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3129
  %80 = icmp ult i64 %79, %63, !dbg !3129
  br i1 %80, label %96, label %94, !dbg !3129

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3129
  br i1 %82, label %94, label %83, !dbg !3129

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3129
  br i1 %84, label %85, label %91, !dbg !3129

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3129
  br i1 %86, label %94, label %87, !dbg !3129

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3129
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3129
  %90 = icmp ult i64 %89, %4, !dbg !3129
  br i1 %90, label %96, label %94, !dbg !3129

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3129
  %93 = icmp ult i64 %92, %63, !dbg !3129
  br i1 %93, label %96, label %94, !dbg !3129

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !395, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3103
  %95 = mul i64 %63, %4, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %95, metadata !395, metadata !DIExpression()), !dbg !3103
  br label %97, !dbg !3130

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !3131
  unreachable, !dbg !3131

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3103
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3103
  call void @llvm.dbg.value(metadata i64 %99, metadata !395, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %98, metadata !394, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8* %0, metadata !2950, metadata !DIExpression()) #32, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %99, metadata !2951, metadata !DIExpression()) #32, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()) #32, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %99, metadata !2957, metadata !DIExpression()) #32, !dbg !3134
  %100 = icmp eq i64 %99, 0, !dbg !3136
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3136
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %102, metadata !2879, metadata !DIExpression()) #32, !dbg !3138
  %103 = icmp eq i8* %102, null, !dbg !3140
  br i1 %103, label %104, label %105, !dbg !3141

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !3142
  unreachable, !dbg !3142

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !388, metadata !DIExpression()), !dbg !3103
  store i64 %98, i64* %1, align 8, !dbg !3143, !tbaa !2152
  ret i8* %102, !dbg !3144
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3145 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3147, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %0, metadata !3149, metadata !DIExpression()) #32, !dbg !3153
  call void @llvm.dbg.value(metadata i64 1, metadata !3152, metadata !DIExpression()) #32, !dbg !3153
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3155
  call void @llvm.dbg.value(metadata i8* %2, metadata !2879, metadata !DIExpression()) #32, !dbg !3156
  %3 = icmp eq i8* %2, null, !dbg !3158
  br i1 %3, label %4, label %5, !dbg !3159

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3160
  unreachable, !dbg !3160

5:                                                ; preds = %1
  ret i8* %2, !dbg !3161
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3150 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3149, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3162
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3163
  call void @llvm.dbg.value(metadata i8* %3, metadata !2879, metadata !DIExpression()) #32, !dbg !3164
  %4 = icmp eq i8* %3, null, !dbg !3166
  br i1 %4, label %5, label %6, !dbg !3167

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3168
  unreachable, !dbg !3168

6:                                                ; preds = %2
  ret i8* %3, !dbg !3169
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3170 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3172, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %0, metadata !3174, metadata !DIExpression()) #32, !dbg !3178
  call void @llvm.dbg.value(metadata i64 1, metadata !3177, metadata !DIExpression()) #32, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %0, metadata !3180, metadata !DIExpression()) #32, !dbg !3184
  call void @llvm.dbg.value(metadata i64 1, metadata !3183, metadata !DIExpression()) #32, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %0, metadata !3180, metadata !DIExpression()) #32, !dbg !3184
  call void @llvm.dbg.value(metadata i64 1, metadata !3183, metadata !DIExpression()) #32, !dbg !3184
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %2, metadata !2879, metadata !DIExpression()) #32, !dbg !3187
  %3 = icmp eq i8* %2, null, !dbg !3189
  br i1 %3, label %4, label %5, !dbg !3190

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3191
  unreachable, !dbg !3191

5:                                                ; preds = %1
  ret i8* %2, !dbg !3192
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3175 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3174, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3177, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %0, metadata !3180, metadata !DIExpression()) #32, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %1, metadata !3183, metadata !DIExpression()) #32, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %0, metadata !3180, metadata !DIExpression()) #32, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %1, metadata !3183, metadata !DIExpression()) #32, !dbg !3194
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %3, metadata !2879, metadata !DIExpression()) #32, !dbg !3197
  %4 = icmp eq i8* %3, null, !dbg !3199
  br i1 %4, label %5, label %6, !dbg !3200

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3201
  unreachable, !dbg !3201

6:                                                ; preds = %2
  ret i8* %3, !dbg !3202
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3203 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3207, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %1, metadata !3208, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %1, metadata !2903, metadata !DIExpression()) #32, !dbg !3210
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %3, metadata !2879, metadata !DIExpression()) #32, !dbg !3213
  %4 = icmp eq i8* %3, null, !dbg !3215
  br i1 %4, label %5, label %6, !dbg !3216

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3217
  unreachable, !dbg !3217

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3218, metadata !DIExpression()) #32, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #32, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()) #32, !dbg !3226
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3228
  ret i8* %3, !dbg !3229
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3230 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3234, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %1, metadata !3235, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()) #32, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %1, metadata !2918, metadata !DIExpression()) #32, !dbg !3239
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %3, metadata !2879, metadata !DIExpression()) #32, !dbg !3242
  %4 = icmp eq i8* %3, null, !dbg !3244
  br i1 %4, label %5, label %6, !dbg !3245

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3246
  unreachable, !dbg !3246

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3218, metadata !DIExpression()) #32, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #32, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()) #32, !dbg !3247
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3249
  ret i8* %3, !dbg !3250
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3251 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3255, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3256, metadata !DIExpression()), !dbg !3258
  %3 = add nsw i64 %1, 1, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %3, metadata !2916, metadata !DIExpression()) #32, !dbg !3260
  call void @llvm.dbg.value(metadata i64 %3, metadata !2918, metadata !DIExpression()) #32, !dbg !3262
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %4, metadata !2879, metadata !DIExpression()) #32, !dbg !3265
  %5 = icmp eq i8* %4, null, !dbg !3267
  br i1 %5, label %6, label %7, !dbg !3268

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3269
  unreachable, !dbg !3269

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3257, metadata !DIExpression()), !dbg !3258
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3270
  store i8 0, i8* %8, align 1, !dbg !3271, !tbaa !578
  call void @llvm.dbg.value(metadata i8* %4, metadata !3218, metadata !DIExpression()) #32, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #32, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()) #32, !dbg !3272
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3274
  ret i8* %4, !dbg !3275
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3276 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3278, metadata !DIExpression()), !dbg !3279
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !3280
  %3 = add i64 %2, 1, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %0, metadata !3207, metadata !DIExpression()) #32, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %3, metadata !3208, metadata !DIExpression()) #32, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %3, metadata !2903, metadata !DIExpression()) #32, !dbg !3284
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %4, metadata !2879, metadata !DIExpression()) #32, !dbg !3287
  %5 = icmp eq i8* %4, null, !dbg !3289
  br i1 %5, label %6, label %7, !dbg !3290

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3291
  unreachable, !dbg !3291

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3218, metadata !DIExpression()) #32, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #32, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %3, metadata !3225, metadata !DIExpression()) #32, !dbg !3292
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3294
  ret i8* %4, !dbg !3295
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3296 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3301, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %1, metadata !3298, metadata !DIExpression()), !dbg !3302
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.134, i64 0, i64 0), i32 noundef 5) #32, !dbg !3301
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i64 0, i64 0), i8* noundef %2) #32, !dbg !3301
  %3 = icmp eq i32 %1, 0, !dbg !3301
  tail call void @llvm.assume(i1 %3), !dbg !3301
  tail call void @abort() #34, !dbg !3303
  unreachable, !dbg !3303
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) local_unnamed_addr #12 !dbg !3304 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %1, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32** %2, metadata !3308, metadata !DIExpression()), !dbg !3310
  %4 = tail call i32 @mgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) #32, !dbg !3311
  call void @llvm.dbg.value(metadata i32 %4, metadata !3309, metadata !DIExpression()), !dbg !3310
  %5 = icmp eq i32 %4, -1, !dbg !3312
  br i1 %5, label %6, label %11, !dbg !3314

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #35, !dbg !3315
  %8 = load i32, i32* %7, align 4, !dbg !3315, !tbaa !569
  %9 = icmp eq i32 %8, 12, !dbg !3316
  br i1 %9, label %10, label %11, !dbg !3317

10:                                               ; preds = %6
  tail call void @xalloc_die() #34, !dbg !3318
  unreachable, !dbg !3318

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3319
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3320 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3358, metadata !DIExpression()), !dbg !3363
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3364
  call void @llvm.dbg.value(metadata i1 undef, metadata !3359, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3363
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3365, metadata !DIExpression()), !dbg !3368
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3370
  %4 = load i32, i32* %3, align 8, !dbg !3370, !tbaa !820
  %5 = and i32 %4, 32, !dbg !3371
  %6 = icmp eq i32 %5, 0, !dbg !3371
  call void @llvm.dbg.value(metadata i1 %6, metadata !3361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3363
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3372
  %8 = icmp eq i32 %7, 0, !dbg !3373
  call void @llvm.dbg.value(metadata i1 %8, metadata !3362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3363
  br i1 %6, label %9, label %19, !dbg !3374

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3376
  call void @llvm.dbg.value(metadata i1 %10, metadata !3359, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3363
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3377
  %12 = xor i1 %8, true, !dbg !3377
  %13 = sext i1 %12 to i32, !dbg !3377
  br i1 %11, label %22, label %14, !dbg !3377

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3378
  %16 = load i32, i32* %15, align 4, !dbg !3378, !tbaa !569
  %17 = icmp ne i32 %16, 9, !dbg !3379
  %18 = sext i1 %17 to i32, !dbg !3380
  br label %22, !dbg !3380

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3381

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3383
  store i32 0, i32* %21, align 4, !dbg !3385, !tbaa !569
  br label %22, !dbg !3383

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3363
  ret i32 %23, !dbg !3386
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3387 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3425, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 0, metadata !3426, metadata !DIExpression()), !dbg !3429
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3430
  call void @llvm.dbg.value(metadata i32 %2, metadata !3427, metadata !DIExpression()), !dbg !3429
  %3 = icmp slt i32 %2, 0, !dbg !3431
  br i1 %3, label %4, label %6, !dbg !3433

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3434
  br label %24, !dbg !3435

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3436
  %8 = icmp eq i32 %7, 0, !dbg !3436
  br i1 %8, label %13, label %9, !dbg !3438

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3439
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3440
  %12 = icmp eq i64 %11, -1, !dbg !3441
  br i1 %12, label %16, label %13, !dbg !3442

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3443
  %15 = icmp eq i32 %14, 0, !dbg !3443
  br i1 %15, label %16, label %18, !dbg !3444

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()), !dbg !3429
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %21, metadata !3428, metadata !DIExpression()), !dbg !3429
  br label %24, !dbg !3446

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3447
  %20 = load i32, i32* %19, align 4, !dbg !3447, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %20, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()), !dbg !3429
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %21, metadata !3428, metadata !DIExpression()), !dbg !3429
  %22 = icmp eq i32 %20, 0, !dbg !3448
  br i1 %22, label %24, label %23, !dbg !3446

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3450, !tbaa !569
  call void @llvm.dbg.value(metadata i32 -1, metadata !3428, metadata !DIExpression()), !dbg !3429
  br label %24, !dbg !3452

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3429
  ret i32 %25, !dbg !3453
}

; Function Attrs: nofree nounwind
declare !dbg !3454 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3455 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3456 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3459 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3497, metadata !DIExpression()), !dbg !3498
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3499
  br i1 %2, label %6, label %3, !dbg !3501

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3502
  %5 = icmp eq i32 %4, 0, !dbg !3502
  br i1 %5, label %6, label %8, !dbg !3503

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3504
  br label %17, !dbg !3505

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3506, metadata !DIExpression()) #32, !dbg !3511
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3513
  %10 = load i32, i32* %9, align 8, !dbg !3513, !tbaa !820
  %11 = and i32 %10, 256, !dbg !3515
  %12 = icmp eq i32 %11, 0, !dbg !3515
  br i1 %12, label %15, label %13, !dbg !3516

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3517
  br label %15, !dbg !3517

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3518
  br label %17, !dbg !3519

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3498
  ret i32 %18, !dbg !3520
}

; Function Attrs: nofree nounwind
declare !dbg !3521 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3522 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3561, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3562, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i32 %2, metadata !3563, metadata !DIExpression()), !dbg !3567
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3568
  %5 = load i8*, i8** %4, align 8, !dbg !3568, !tbaa !3569
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3570
  %7 = load i8*, i8** %6, align 8, !dbg !3570, !tbaa !3571
  %8 = icmp eq i8* %5, %7, !dbg !3572
  br i1 %8, label %9, label %28, !dbg !3573

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3574
  %11 = load i8*, i8** %10, align 8, !dbg !3574, !tbaa !782
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3575
  %13 = load i8*, i8** %12, align 8, !dbg !3575, !tbaa !3576
  %14 = icmp eq i8* %11, %13, !dbg !3577
  br i1 %14, label %15, label %28, !dbg !3578

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3579
  %17 = load i8*, i8** %16, align 8, !dbg !3579, !tbaa !3580
  %18 = icmp eq i8* %17, null, !dbg !3581
  br i1 %18, label %19, label %28, !dbg !3582

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3583
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %21, metadata !3564, metadata !DIExpression()), !dbg !3585
  %22 = icmp eq i64 %21, -1, !dbg !3586
  br i1 %22, label %30, label %23, !dbg !3588

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3589
  %25 = load i32, i32* %24, align 8, !dbg !3590, !tbaa !820
  %26 = and i32 %25, -17, !dbg !3590
  store i32 %26, i32* %24, align 8, !dbg !3590, !tbaa !820
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3591
  store i64 %21, i64* %27, align 8, !dbg !3592, !tbaa !3593
  br label %30, !dbg !3594

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3595
  br label %30, !dbg !3596

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3567
  ret i32 %31, !dbg !3597
}

; Function Attrs: nofree nounwind
declare !dbg !3598 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3601 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3606, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %1, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 %2, metadata !3608, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3609, metadata !DIExpression()), !dbg !3611
  %5 = icmp eq i8* %1, null, !dbg !3612
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3614
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.148, i64 0, i64 0), i8* %1, !dbg !3614
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3614
  call void @llvm.dbg.value(metadata i64 %8, metadata !3608, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %7, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32* %6, metadata !3606, metadata !DIExpression()), !dbg !3611
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3615
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3617
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3609, metadata !DIExpression()), !dbg !3611
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %11, metadata !3610, metadata !DIExpression()), !dbg !3611
  %12 = icmp ult i64 %11, -3, !dbg !3619
  br i1 %12, label %13, label %18, !dbg !3621

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3622
  %15 = icmp eq i32 %14, 0, !dbg !3622
  br i1 %15, label %16, label %30, !dbg !3623

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3624, metadata !DIExpression()) #32, !dbg !3629
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3631, metadata !DIExpression()) #32, !dbg !3636
  call void @llvm.dbg.value(metadata i32 0, metadata !3634, metadata !DIExpression()) #32, !dbg !3636
  call void @llvm.dbg.value(metadata i64 8, metadata !3635, metadata !DIExpression()) #32, !dbg !3636
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3638
  store i64 0, i64* %17, align 1, !dbg !3638
  br label %30, !dbg !3639

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3640
  br i1 %19, label %20, label %21, !dbg !3642

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3643
  unreachable, !dbg !3643

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3644

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3646
  br i1 %24, label %30, label %25, !dbg !3647

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3648
  br i1 %26, label %30, label %27, !dbg !3651

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3652, !tbaa !578
  %29 = zext i8 %28 to i32, !dbg !3653
  store i32 %29, i32* %6, align 4, !dbg !3654, !tbaa !569
  br label %30, !dbg !3655

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3611
  ret i64 %31, !dbg !3656
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3657 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(i8* noundef %0, i32 noundef %1, i32** nocapture noundef writeonly %2) local_unnamed_addr #12 !dbg !414 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !423, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 %1, metadata !424, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32** %2, metadata !425, metadata !DIExpression()), !dbg !3663
  %5 = icmp eq i8* %0, null, !dbg !3664
  br i1 %5, label %40, label %6, !dbg !3665

6:                                                ; preds = %3
  %7 = bitcast i32* %4 to i8*, !dbg !3666
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #32, !dbg !3666
  call void @llvm.dbg.value(metadata i32 10, metadata !426, metadata !DIExpression()), !dbg !3667
  store i32 10, i32* %4, align 4, !dbg !3668, !tbaa !569
  call void @llvm.dbg.value(metadata i32* null, metadata !3669, metadata !DIExpression()) #32, !dbg !3675
  call void @llvm.dbg.value(metadata i64 10, metadata !3674, metadata !DIExpression()) #32, !dbg !3675
  call void @llvm.dbg.value(metadata i8* null, metadata !3677, metadata !DIExpression()) #32, !dbg !3681
  call void @llvm.dbg.value(metadata i64 40, metadata !3680, metadata !DIExpression()) #32, !dbg !3681
  %8 = tail call dereferenceable_or_null(40) i8* @malloc(i64 40), !dbg !3683
  call void @llvm.dbg.value(metadata i8* %8, metadata !429, metadata !DIExpression()), !dbg !3667
  %9 = icmp eq i8* %8, null, !dbg !3684
  br i1 %9, label %38, label %10, !dbg !3686

10:                                               ; preds = %6, %34
  %11 = phi i32 [ %22, %34 ], [ 10, %6 ], !dbg !3687
  %12 = phi i8* [ %31, %34 ], [ %8, %6 ]
  %13 = bitcast i8* %12 to i32*, !dbg !3688
  call void @llvm.dbg.value(metadata i32* %13, metadata !429, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 %11, metadata !430, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32* %4, metadata !426, metadata !DIExpression(DW_OP_deref)), !dbg !3667
  %14 = call i32 @getgrouplist(i8* noundef nonnull %0, i32 noundef %1, i32* noundef nonnull %13, i32* noundef nonnull %4) #32, !dbg !3690
  call void @llvm.dbg.value(metadata i32 %14, metadata !432, metadata !DIExpression()), !dbg !3689
  %15 = icmp slt i32 %14, 0, !dbg !3691
  %16 = load i32, i32* %4, align 4, !dbg !3689, !tbaa !569
  %17 = icmp eq i32 %11, %16
  %18 = select i1 %15, i1 %17, i1 false, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %16, metadata !426, metadata !DIExpression()), !dbg !3667
  br i1 %18, label %19, label %21, !dbg !3693

19:                                               ; preds = %10
  %20 = shl nuw nsw i32 %11, 1, !dbg !3694
  call void @llvm.dbg.value(metadata i32 %20, metadata !426, metadata !DIExpression()), !dbg !3667
  store i32 %20, i32* %4, align 4, !dbg !3694, !tbaa !569
  br label %21, !dbg !3695

21:                                               ; preds = %10, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !3696
  call void @llvm.dbg.value(metadata i32 %22, metadata !426, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32* %13, metadata !3669, metadata !DIExpression()) #32, !dbg !3697
  call void @llvm.dbg.value(metadata i32 %22, metadata !3674, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #32, !dbg !3697
  %23 = icmp slt i32 %22, 0, !dbg !3699
  br i1 %23, label %24, label %26, !dbg !3701

24:                                               ; preds = %21
  %25 = tail call i32* @__errno_location() #35, !dbg !3702
  store i32 12, i32* %25, align 4, !dbg !3704, !tbaa !569
  call void @llvm.dbg.value(metadata i8* %31, metadata !433, metadata !DIExpression()), !dbg !3689
  br label %33, !dbg !3705

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64, !dbg !3696
  call void @llvm.dbg.value(metadata i64 %27, metadata !3674, metadata !DIExpression()) #32, !dbg !3697
  %28 = shl nuw nsw i64 %27, 2, !dbg !3706
  call void @llvm.dbg.value(metadata i8* %12, metadata !3677, metadata !DIExpression()) #32, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %28, metadata !3680, metadata !DIExpression()) #32, !dbg !3707
  %29 = icmp eq i32 %22, 0, !dbg !3709
  %30 = select i1 %29, i64 1, i64 %28, !dbg !3709
  %31 = call i8* @realloc(i8* noundef nonnull %12, i64 noundef %30) #32, !dbg !3710
  call void @llvm.dbg.value(metadata i8* %31, metadata !433, metadata !DIExpression()), !dbg !3689
  %32 = icmp eq i8* %31, null, !dbg !3711
  br i1 %32, label %33, label %34, !dbg !3705

33:                                               ; preds = %26, %24
  call void @free(i8* noundef nonnull %12) #32, !dbg !3713
  br label %38, !dbg !3715

34:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %31, metadata !433, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i8* %31, metadata !429, metadata !DIExpression()), !dbg !3667
  %35 = icmp sgt i32 %14, -1, !dbg !3716
  br i1 %35, label %36, label %10, !dbg !3718, !llvm.loop !3719

36:                                               ; preds = %34
  %37 = bitcast i32** %2 to i8**, !dbg !3722
  store i8* %31, i8** %37, align 8, !dbg !3722, !tbaa !483
  call void @llvm.dbg.value(metadata i32 %22, metadata !426, metadata !DIExpression()), !dbg !3667
  br label %38, !dbg !3724

38:                                               ; preds = %33, %36, %6
  %39 = phi i32 [ -1, %6 ], [ -1, %33 ], [ %22, %36 ], !dbg !3667
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #32, !dbg !3725
  br label %107

40:                                               ; preds = %3
  %41 = tail call i32 @getgroups(i32 noundef 0, i32* noundef null) #32, !dbg !3726
  call void @llvm.dbg.value(metadata i32 %41, metadata !434, metadata !DIExpression()), !dbg !3663
  %42 = icmp slt i32 %41, 0, !dbg !3727
  br i1 %42, label %43, label %55, !dbg !3728

43:                                               ; preds = %40
  %44 = tail call i32* @__errno_location() #35, !dbg !3729
  %45 = load i32, i32* %44, align 4, !dbg !3729, !tbaa !569
  %46 = icmp eq i32 %45, 38, !dbg !3730
  br i1 %46, label %47, label %107, !dbg !3731

47:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32* null, metadata !3669, metadata !DIExpression()) #32, !dbg !3732
  call void @llvm.dbg.value(metadata i64 1, metadata !3674, metadata !DIExpression()) #32, !dbg !3732
  call void @llvm.dbg.value(metadata i8* null, metadata !3677, metadata !DIExpression()) #32, !dbg !3734
  call void @llvm.dbg.value(metadata i64 4, metadata !3680, metadata !DIExpression()) #32, !dbg !3734
  %48 = tail call dereferenceable_or_null(4) i8* @malloc(i64 4), !dbg !3736
  call void @llvm.dbg.value(metadata i8* %48, metadata !435, metadata !DIExpression()), !dbg !3737
  %49 = icmp eq i8* %48, null, !dbg !3738
  br i1 %49, label %107, label %50, !dbg !3740

50:                                               ; preds = %47
  %51 = bitcast i8* %48 to i32*, !dbg !3741
  call void @llvm.dbg.value(metadata i32* %51, metadata !435, metadata !DIExpression()), !dbg !3737
  %52 = bitcast i32** %2 to i8**, !dbg !3742
  store i8* %48, i8** %52, align 8, !dbg !3742, !tbaa !483
  store i32 %1, i32* %51, align 4, !dbg !3744, !tbaa !569
  %53 = icmp ne i32 %1, -1, !dbg !3745
  %54 = zext i1 %53 to i32, !dbg !3745
  br label %107

55:                                               ; preds = %40
  %56 = icmp ne i32 %41, 0, !dbg !3746
  %57 = icmp eq i32 %1, -1
  %58 = and i1 %57, %56, !dbg !3748
  %59 = xor i1 %58, true, !dbg !3748
  %60 = zext i1 %59 to i32, !dbg !3748
  %61 = add nuw nsw i32 %41, %60, !dbg !3748
  call void @llvm.dbg.value(metadata i32 %61, metadata !434, metadata !DIExpression()), !dbg !3663
  %62 = zext i32 %61 to i64, !dbg !3749
  call void @llvm.dbg.value(metadata i32* null, metadata !3669, metadata !DIExpression()) #32, !dbg !3750
  call void @llvm.dbg.value(metadata i64 %62, metadata !3674, metadata !DIExpression()) #32, !dbg !3750
  %63 = shl nuw nsw i64 %62, 2, !dbg !3752
  call void @llvm.dbg.value(metadata i8* null, metadata !3677, metadata !DIExpression()) #32, !dbg !3753
  call void @llvm.dbg.value(metadata i64 %63, metadata !3680, metadata !DIExpression()) #32, !dbg !3753
  %64 = tail call i8* @malloc(i64 %63), !dbg !3755
  %65 = bitcast i8* %64 to i32*, !dbg !3756
  call void @llvm.dbg.value(metadata i32* %65, metadata !440, metadata !DIExpression()), !dbg !3663
  %66 = icmp eq i8* %64, null, !dbg !3757
  br i1 %66, label %107, label %67, !dbg !3759

67:                                               ; preds = %55
  %68 = icmp ne i32 %1, -1, !dbg !3760
  %69 = sext i1 %68 to i32, !dbg !3760
  %70 = add nsw i32 %61, %69, !dbg !3761
  %71 = zext i1 %68 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71, !dbg !3762
  %73 = tail call i32 @getgroups(i32 noundef %70, i32* noundef nonnull %72) #32, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %73, metadata !441, metadata !DIExpression()), !dbg !3663
  %74 = icmp slt i32 %73, 0, !dbg !3764
  br i1 %74, label %75, label %76, !dbg !3766

75:                                               ; preds = %67
  tail call void @free(i8* noundef nonnull %64) #32, !dbg !3767
  br label %107, !dbg !3769

76:                                               ; preds = %67
  br i1 %57, label %79, label %77, !dbg !3770

77:                                               ; preds = %76
  store i32 %1, i32* %65, align 4, !dbg !3772, !tbaa !569
  %78 = add nuw nsw i32 %73, 1, !dbg !3774
  call void @llvm.dbg.value(metadata i32 %78, metadata !441, metadata !DIExpression()), !dbg !3663
  br label %79, !dbg !3775

79:                                               ; preds = %77, %76
  %80 = phi i32 [ %78, %77 ], [ %73, %76 ], !dbg !3663
  call void @llvm.dbg.value(metadata i32 %80, metadata !441, metadata !DIExpression()), !dbg !3663
  %81 = bitcast i32** %2 to i8**, !dbg !3776
  store i8* %64, i8** %81, align 8, !dbg !3776, !tbaa !483
  %82 = icmp ugt i32 %80, 1, !dbg !3777
  br i1 %82, label %83, label %107, !dbg !3778

83:                                               ; preds = %79
  %84 = load i32, i32* %65, align 4, !dbg !3779, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %84, metadata !442, metadata !DIExpression()), !dbg !3780
  %85 = zext i32 %80 to i64, !dbg !3781
  %86 = getelementptr inbounds i32, i32* %65, i64 %85, !dbg !3781
  call void @llvm.dbg.value(metadata i32* %86, metadata !445, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32* %65, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3782
  call void @llvm.dbg.value(metadata i32 %80, metadata !441, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32* %65, metadata !440, metadata !DIExpression()), !dbg !3663
  %87 = getelementptr inbounds i32, i32* %65, i64 1, !dbg !3782
  call void @llvm.dbg.value(metadata i32* %87, metadata !446, metadata !DIExpression()), !dbg !3782
  br label %88, !dbg !3783

88:                                               ; preds = %83, %101
  %89 = phi i32 [ %102, %101 ], [ %84, %83 ]
  %90 = phi i32* [ %105, %101 ], [ %87, %83 ]
  %91 = phi i32 [ %104, %101 ], [ %80, %83 ]
  %92 = phi i32* [ %103, %101 ], [ %65, %83 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !441, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32* %92, metadata !440, metadata !DIExpression()), !dbg !3663
  %93 = load i32, i32* %90, align 4, !dbg !3784, !tbaa !569
  %94 = icmp eq i32 %93, %84, !dbg !3788
  %95 = icmp eq i32 %93, %89
  %96 = select i1 %94, i1 true, i1 %95, !dbg !3789
  br i1 %96, label %97, label %99, !dbg !3789

97:                                               ; preds = %88
  %98 = add nsw i32 %91, -1, !dbg !3790
  call void @llvm.dbg.value(metadata i32 %98, metadata !441, metadata !DIExpression()), !dbg !3663
  br label %101, !dbg !3791

99:                                               ; preds = %88
  %100 = getelementptr inbounds i32, i32* %92, i64 1, !dbg !3792
  call void @llvm.dbg.value(metadata i32* %100, metadata !440, metadata !DIExpression()), !dbg !3663
  store i32 %93, i32* %100, align 4, !dbg !3793, !tbaa !569
  br label %101

101:                                              ; preds = %97, %99
  %102 = phi i32 [ %89, %97 ], [ %93, %99 ]
  %103 = phi i32* [ %92, %97 ], [ %100, %99 ], !dbg !3663
  %104 = phi i32 [ %98, %97 ], [ %91, %99 ], !dbg !3663
  call void @llvm.dbg.value(metadata i32 %104, metadata !441, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32* %103, metadata !440, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32* %90, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3782
  %105 = getelementptr inbounds i32, i32* %90, i64 1, !dbg !3782
  call void @llvm.dbg.value(metadata i32* %105, metadata !446, metadata !DIExpression()), !dbg !3782
  %106 = icmp ult i32* %105, %86, !dbg !3794
  br i1 %106, label %88, label %107, !dbg !3783, !llvm.loop !3795

107:                                              ; preds = %101, %47, %43, %50, %75, %79, %55, %38
  %108 = phi i32 [ %39, %38 ], [ %54, %50 ], [ -1, %55 ], [ -1, %75 ], [ %80, %79 ], [ -1, %43 ], [ -1, %47 ], [ %104, %101 ], !dbg !3663
  ret i32 %108, !dbg !3797
}

declare !dbg !3798 i32 @getgrouplist(i8* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3802 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3804, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %1, metadata !3805, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()), !dbg !3808
  %4 = icmp eq i64 %2, 0, !dbg !3809
  br i1 %4, label %8, label %5, !dbg !3809

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3809
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3809
  br i1 %7, label %13, label %8, !dbg !3809

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3807, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3808
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3807, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3808
  %9 = mul i64 %2, %1, !dbg !3809
  call void @llvm.dbg.value(metadata i64 %9, metadata !3807, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()) #32, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %9, metadata !3814, metadata !DIExpression()) #32, !dbg !3815
  %10 = icmp eq i64 %9, 0, !dbg !3817
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3817
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3818
  br label %15, !dbg !3819

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3807, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3808
  %14 = tail call i32* @__errno_location() #35, !dbg !3820
  store i32 12, i32* %14, align 4, !dbg !3822, !tbaa !569
  br label %15, !dbg !3823

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3808
  ret i8* %16, !dbg !3824
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3825 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3829, metadata !DIExpression()), !dbg !3834
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3835
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3835
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3830, metadata !DIExpression()), !dbg !3836
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3837
  %5 = icmp eq i32 %4, 0, !dbg !3837
  br i1 %5, label %6, label %13, !dbg !3839

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3840, metadata !DIExpression()) #32, !dbg !3844
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0), metadata !3843, metadata !DIExpression()) #32, !dbg !3844
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0), i64 2), !dbg !3847
  %8 = icmp eq i32 %7, 0, !dbg !3848
  br i1 %8, label %12, label %9, !dbg !3849

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3840, metadata !DIExpression()) #32, !dbg !3850
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), metadata !3843, metadata !DIExpression()) #32, !dbg !3850
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), i64 6), !dbg !3852
  %11 = icmp eq i32 %10, 0, !dbg !3853
  br i1 %11, label %12, label %13, !dbg !3854

12:                                               ; preds = %9, %6
  br label %13, !dbg !3855

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3834
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3856
  ret i1 %14, !dbg !3856
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3861, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8* %1, metadata !3862, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %2, metadata !3863, metadata !DIExpression()), !dbg !3864
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3865
  ret i32 %4, !dbg !3866
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3867 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3871, metadata !DIExpression()), !dbg !3872
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3873
  ret i8* %2, !dbg !3874
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3875 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3877, metadata !DIExpression()), !dbg !3879
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %2, metadata !3878, metadata !DIExpression()), !dbg !3879
  ret i8* %2, !dbg !3881
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3884, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i8* %1, metadata !3885, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 %2, metadata !3886, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i32 %0, metadata !3877, metadata !DIExpression()) #32, !dbg !3892
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %4, metadata !3878, metadata !DIExpression()) #32, !dbg !3892
  call void @llvm.dbg.value(metadata i8* %4, metadata !3887, metadata !DIExpression()), !dbg !3891
  %5 = icmp eq i8* %4, null, !dbg !3895
  br i1 %5, label %6, label %9, !dbg !3896

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3897
  br i1 %7, label %19, label %8, !dbg !3900

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3901, !tbaa !578
  br label %19, !dbg !3902

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3903
  call void @llvm.dbg.value(metadata i64 %10, metadata !3888, metadata !DIExpression()), !dbg !3904
  %11 = icmp ult i64 %10, %2, !dbg !3905
  br i1 %11, label %12, label %14, !dbg !3907

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3908
  call void @llvm.dbg.value(metadata i8* %1, metadata !3910, metadata !DIExpression()) #32, !dbg !3915
  call void @llvm.dbg.value(metadata i8* %4, metadata !3913, metadata !DIExpression()) #32, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %13, metadata !3914, metadata !DIExpression()) #32, !dbg !3915
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3917
  br label %19, !dbg !3918

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3919
  br i1 %15, label %19, label %16, !dbg !3922

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %1, metadata !3910, metadata !DIExpression()) #32, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %4, metadata !3913, metadata !DIExpression()) #32, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %17, metadata !3914, metadata !DIExpression()) #32, !dbg !3925
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3927
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3928
  store i8 0, i8* %18, align 1, !dbg !3929, !tbaa !578
  br label %19, !dbg !3930

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3931
  ret i32 %20, !dbg !3932
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
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !347, !135, !140, !147, !327, !353, !355, !188, !198, !230, !357, !319, !364, !398, !400, !402, !404, !406, !408, !333, !410, !451, !454, !456, !458}
!llvm.ident = !{!460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460, !460}
!llvm.module.flags = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !121, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/groups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d48dc102a9c02fb59e67fc9e395fa6a9")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256)
!10 = !DIEnumerator(name: "_ISlower", value: 512)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!14 = !DIEnumerator(name: "_ISspace", value: 8192)
!15 = !DIEnumerator(name: "_ISprint", value: 16384)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768)
!17 = !DIEnumerator(name: "_ISblank", value: 1)
!18 = !DIEnumerator(name: "_IScntrl", value: 2)
!19 = !DIEnumerator(name: "_ISpunct", value: 4)
!20 = !DIEnumerator(name: "_ISalnum", value: 8)
!21 = !{!22, !24, !25, !26, !27, !30, !32}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !0}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !36, file: !37, line: 575, type: !25, isLocal: true, isDefinition: true)
!36 = distinct !DISubprogram(name: "oputs_", scope: !37, file: !37, line: 573, type: !38, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!37 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!38 = !DISubroutineType(types: !39)
!39 = !{null, !30, !30}
!40 = !{!41, !42, !43, !46, !48, !49, !50, !54, !55, !56, !57, !59, !115, !116, !117, !119, !120}
!41 = !DILocalVariable(name: "program", arg: 1, scope: !36, file: !37, line: 573, type: !30)
!42 = !DILocalVariable(name: "option", arg: 2, scope: !36, file: !37, line: 573, type: !30)
!43 = !DILocalVariable(name: "term", scope: !44, file: !37, line: 585, type: !30)
!44 = distinct !DILexicalBlock(scope: !45, file: !37, line: 582, column: 5)
!45 = distinct !DILexicalBlock(scope: !36, file: !37, line: 581, column: 7)
!46 = !DILocalVariable(name: "double_space", scope: !36, file: !37, line: 594, type: !47)
!47 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DILocalVariable(name: "first_word", scope: !36, file: !37, line: 595, type: !30)
!49 = !DILocalVariable(name: "option_text", scope: !36, file: !37, line: 596, type: !30)
!50 = !DILocalVariable(name: "s", scope: !51, file: !37, line: 608, type: !30)
!51 = distinct !DILexicalBlock(scope: !52, file: !37, line: 605, column: 5)
!52 = distinct !DILexicalBlock(scope: !53, file: !37, line: 604, column: 12)
!53 = distinct !DILexicalBlock(scope: !36, file: !37, line: 597, column: 7)
!54 = !DILocalVariable(name: "spaces", scope: !51, file: !37, line: 609, type: !27)
!55 = !DILocalVariable(name: "anchor_len", scope: !36, file: !37, line: 620, type: !27)
!56 = !DILocalVariable(name: "desc_text", scope: !36, file: !37, line: 625, type: !30)
!57 = !DILocalVariable(name: "__ptr", scope: !58, file: !37, line: 644, type: !30)
!58 = distinct !DILexicalBlock(scope: !36, file: !37, line: 644, column: 3)
!59 = !DILocalVariable(name: "__stream", scope: !58, file: !37, line: 644, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !63)
!62 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !65)
!64 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !81, !83, !84, !85, !89, !90, !92, !96, !99, !101, !104, !107, !108, !109, !110, !111}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !63, file: !64, line: 51, baseType: !25, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !63, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !63, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !63, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !63, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !63, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !63, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !63, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !63, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !63, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !63, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !63, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !63, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !64, line: 36, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !63, file: !64, line: 70, baseType: !82, size: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !63, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !63, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !63, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !87, line: 152, baseType: !88)
!87 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!88 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !63, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !63, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!91 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !63, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !63, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !64, line: 43, baseType: null)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !63, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !87, line: 153, baseType: !88)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !63, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !64, line: 37, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !63, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !64, line: 38, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !63, file: !64, line: 93, baseType: !82, size: 64, offset: 1344)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !63, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !63, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !63, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !63, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 20)
!115 = !DILocalVariable(name: "__cnt", scope: !58, file: !37, line: 644, type: !27)
!116 = !DILocalVariable(name: "url_program", scope: !36, file: !37, line: 648, type: !30)
!117 = !DILocalVariable(name: "__ptr", scope: !118, file: !37, line: 686, type: !30)
!118 = distinct !DILexicalBlock(scope: !36, file: !37, line: 686, column: 3)
!119 = !DILocalVariable(name: "__stream", scope: !118, file: !37, line: 686, type: !60)
!120 = !DILocalVariable(name: "__cnt", scope: !118, file: !37, line: 686, type: !27)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 768, elements: !131)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !124, line: 50, size: 256, elements: !125)
!124 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!125 = !{!126, !127, !128, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !124, line: 52, baseType: !30, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !123, file: !124, line: 55, baseType: !25, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !123, file: !124, line: 56, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !124, line: 57, baseType: !25, size: 32, offset: 192)
!131 = !{!132}
!132 = !DISubrange(count: 3)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "Version", scope: !135, file: !136, line: 3, type: !30, isLocal: false, isDefinition: true)
!135 = distinct !DICompileUnit(language: DW_LANG_C99, file: !136, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !137, splitDebugInlining: false, nameTableKind: None)
!136 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!137 = !{!133}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "file_name", scope: !140, file: !141, line: 45, type: !30, isLocal: true, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !142, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!142 = !{!138, !143}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !140, file: !141, line: 55, type: !47, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !147, file: !148, line: 66, type: !183, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !149, globals: !150, splitDebugInlining: false, nameTableKind: None)
!148 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!149 = !{!24, !32}
!150 = !{!151, !177, !145, !179, !181}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "old_file_name", scope: !153, file: !148, line: 304, type: !30, isLocal: true, isDefinition: true)
!153 = distinct !DISubprogram(name: "verror_at_line", scope: !148, file: !148, line: 298, type: !154, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !170)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !25, !25, !30, !7, !30, !156}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !158)
!157 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !161, baseType: !162)
!161 = !DIFile(filename: "lib/error.c", directory: "/src")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !164)
!163 = !DINamespace(name: "std", scope: null)
!164 = !{!165, !166, !167, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !162, file: !161, baseType: !24, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !162, file: !161, baseType: !24, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !162, file: !161, baseType: !24, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !162, file: !161, baseType: !25, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !162, file: !161, baseType: !25, size: 32, offset: 224)
!170 = !{!171, !172, !173, !174, !175, !176}
!171 = !DILocalVariable(name: "status", arg: 1, scope: !153, file: !148, line: 298, type: !25)
!172 = !DILocalVariable(name: "errnum", arg: 2, scope: !153, file: !148, line: 298, type: !25)
!173 = !DILocalVariable(name: "file_name", arg: 3, scope: !153, file: !148, line: 298, type: !30)
!174 = !DILocalVariable(name: "line_number", arg: 4, scope: !153, file: !148, line: 298, type: !7)
!175 = !DILocalVariable(name: "message", arg: 5, scope: !153, file: !148, line: 298, type: !30)
!176 = !DILocalVariable(name: "args", arg: 6, scope: !153, file: !148, line: 298, type: !156)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "old_line_number", scope: !153, file: !148, line: 305, type: !7, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "error_message_count", scope: !147, file: !148, line: 69, type: !7, isLocal: false, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !147, file: !148, line: 295, type: !25, isLocal: false, isDefinition: true)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "program_name", scope: !188, file: !189, line: 31, type: !30, isLocal: false, isDefinition: true)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !190, globals: !191, splitDebugInlining: false, nameTableKind: None)
!189 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!190 = !{!22}
!191 = !{!186}
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "utf07FF", scope: !194, file: !195, line: 46, type: !225, isLocal: true, isDefinition: true)
!194 = distinct !DISubprogram(name: "proper_name_lite", scope: !195, file: !195, line: 38, type: !196, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !200)
!195 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!196 = !DISubroutineType(types: !197)
!197 = !{!30, !30, !30}
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !199, splitDebugInlining: false, nameTableKind: None)
!199 = !{!192}
!200 = !{!201, !202, !203, !204, !209}
!201 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !194, file: !195, line: 38, type: !30)
!202 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !194, file: !195, line: 38, type: !30)
!203 = !DILocalVariable(name: "translation", scope: !194, file: !195, line: 40, type: !30)
!204 = !DILocalVariable(name: "w", scope: !194, file: !195, line: 47, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !206, line: 37, baseType: !207)
!206 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !87, line: 57, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !87, line: 42, baseType: !7)
!209 = !DILocalVariable(name: "mbs", scope: !194, file: !195, line: 48, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !211, line: 6, baseType: !212)
!211 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !213, line: 21, baseType: !214)
!213 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 13, size: 64, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !214, file: !213, line: 15, baseType: !25, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !214, file: !213, line: 20, baseType: !218, size: 32, offset: 32)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !213, line: 16, size: 32, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !218, file: !213, line: 18, baseType: !7, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !218, file: !213, line: 19, baseType: !222, size: 32)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 4)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 2)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !230, file: !231, line: 76, type: !313, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !252, globals: !253, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!232 = !{!233, !247, !5}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !234, line: 42, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!236 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!237 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!238 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!239 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!240 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!241 = !DIEnumerator(name: "c_quoting_style", value: 5)
!242 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!243 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!244 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!245 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!246 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !234, line: 254, baseType: !7, size: 32, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!250 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!251 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!252 = !{!25, !26, !27}
!253 = !{!228, !254, !260, !272, !274, !279, !302, !309, !311}
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !230, file: !231, line: 92, type: !256, isLocal: false, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 320, elements: !258)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!258 = !{!259}
!259 = !DISubrange(count: 10)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !230, file: !231, line: 1040, type: !262, isLocal: false, isDefinition: true)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !231, line: 56, size: 448, elements: !263)
!263 = !{!264, !265, !266, !270, !271}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !262, file: !231, line: 59, baseType: !233, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !231, line: 62, baseType: !25, size: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !262, file: !231, line: 66, baseType: !267, size: 256, offset: 64)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !262, file: !231, line: 69, baseType: !30, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !262, file: !231, line: 72, baseType: !30, size: 64, offset: 384)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !230, file: !231, line: 107, type: !262, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "slot0", scope: !230, file: !231, line: 831, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 256)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "quote", scope: !281, file: !231, line: 228, type: !300, isLocal: true, isDefinition: true)
!281 = distinct !DISubprogram(name: "gettext_quote", scope: !231, file: !231, line: 197, type: !282, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{!30, !30, !233}
!284 = !{!285, !286, !287, !288, !289}
!285 = !DILocalVariable(name: "msgid", arg: 1, scope: !281, file: !231, line: 197, type: !30)
!286 = !DILocalVariable(name: "s", arg: 2, scope: !281, file: !231, line: 197, type: !233)
!287 = !DILocalVariable(name: "translation", scope: !281, file: !231, line: 199, type: !30)
!288 = !DILocalVariable(name: "w", scope: !281, file: !231, line: 229, type: !205)
!289 = !DILocalVariable(name: "mbs", scope: !281, file: !231, line: 230, type: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !211, line: 6, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !213, line: 21, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 13, size: 64, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !292, file: !213, line: 15, baseType: !25, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !292, file: !213, line: 20, baseType: !296, size: 32, offset: 32)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !213, line: 16, size: 32, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !296, file: !213, line: 18, baseType: !7, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !296, file: !213, line: 19, baseType: !222, size: 32)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !301)
!301 = !{!227, !224}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "slotvec", scope: !230, file: !231, line: 834, type: !304, isLocal: true, isDefinition: true)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !231, line: 823, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !305, file: !231, line: 825, baseType: !27, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !305, file: !231, line: 826, baseType: !22, size: 64, offset: 64)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "nslots", scope: !230, file: !231, line: 832, type: !25, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "slotvec0", scope: !230, file: !231, line: 833, type: !305, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 704, elements: !315)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!315 = !{!316}
!316 = !DISubrange(count: 11)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !319, file: !320, line: 26, type: !322, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !321, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!321 = !{!317}
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 47)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "exit_failure", scope: !327, file: !328, line: 24, type: !330, isLocal: false, isDefinition: true)
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !329, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!329 = !{!325}
!330 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "internal_state", scope: !333, file: !334, line: 97, type: !337, isLocal: true, isDefinition: true)
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !335, globals: !336, splitDebugInlining: false, nameTableKind: None)
!334 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!335 = !{!24, !27, !32}
!336 = !{!331}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !211, line: 6, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !213, line: 21, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 13, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !339, file: !213, line: 15, baseType: !25, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !339, file: !213, line: 20, baseType: !343, size: 32, offset: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !213, line: 16, size: 32, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !343, file: !213, line: 18, baseType: !7, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !343, file: !213, line: 19, baseType: !222, size: 32)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !349, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "src/group-list.c", directory: "/src", checksumkind: CSK_MD5, checksum: "86bc740edd29a2e1277335d35d8d331e")
!349 = !{!24, !350, !32}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !351, line: 102, baseType: !352)
!351 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !87, line: 73, baseType: !29)
!353 = distinct !DICompileUnit(language: DW_LANG_C99, file: !354, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!354 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!355 = distinct !DICompileUnit(language: DW_LANG_C99, file: !356, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!356 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !359, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!359 = !{!360}
!360 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !358, line: 40, baseType: !7, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!363 = !{!24}
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !366, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!366 = !{!367, !379}
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !368, file: !365, line: 188, baseType: !7, size: 32, elements: !377)
!368 = distinct !DISubprogram(name: "x2nrealloc", scope: !365, file: !365, line: 176, type: !369, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !372)
!369 = !DISubroutineType(types: !370)
!370 = !{!24, !24, !371, !27}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!372 = !{!373, !374, !375, !376}
!373 = !DILocalVariable(name: "p", arg: 1, scope: !368, file: !365, line: 176, type: !24)
!374 = !DILocalVariable(name: "pn", arg: 2, scope: !368, file: !365, line: 176, type: !371)
!375 = !DILocalVariable(name: "s", arg: 3, scope: !368, file: !365, line: 176, type: !27)
!376 = !DILocalVariable(name: "n", scope: !368, file: !365, line: 178, type: !27)
!377 = !{!378}
!378 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !380, file: !365, line: 228, baseType: !7, size: 32, elements: !377)
!380 = distinct !DISubprogram(name: "xpalloc", scope: !365, file: !365, line: 223, type: !381, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !387)
!381 = !DISubroutineType(types: !382)
!382 = !{!24, !24, !383, !384, !386, !384}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !385, line: 130, baseType: !386)
!385 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !28, line: 35, baseType: !88)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396}
!388 = !DILocalVariable(name: "pa", arg: 1, scope: !380, file: !365, line: 223, type: !24)
!389 = !DILocalVariable(name: "pn", arg: 2, scope: !380, file: !365, line: 223, type: !383)
!390 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !380, file: !365, line: 223, type: !384)
!391 = !DILocalVariable(name: "n_max", arg: 4, scope: !380, file: !365, line: 223, type: !386)
!392 = !DILocalVariable(name: "s", arg: 5, scope: !380, file: !365, line: 223, type: !384)
!393 = !DILocalVariable(name: "n0", scope: !380, file: !365, line: 230, type: !384)
!394 = !DILocalVariable(name: "n", scope: !380, file: !365, line: 237, type: !384)
!395 = !DILocalVariable(name: "nbytes", scope: !380, file: !365, line: 248, type: !384)
!396 = !DILocalVariable(name: "adjusted_nbytes", scope: !380, file: !365, line: 252, type: !384)
!397 = !{!22, !24, !47, !88, !29}
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!408 = distinct !DICompileUnit(language: DW_LANG_C99, file: !409, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!410 = distinct !DICompileUnit(language: DW_LANG_C99, file: !411, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !412, retainedTypes: !450, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/mgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6d0df677a26dbd2695c193e3d6de3d1")
!412 = !{!413}
!413 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !414, file: !411, line: 79, baseType: !7, size: 32, elements: !448)
!414 = distinct !DISubprogram(name: "mgetgroups", scope: !411, file: !411, line: 66, type: !415, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !422)
!415 = !DISubroutineType(types: !416)
!416 = !{!25, !30, !417, !420}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !418, line: 64, baseType: !419)
!418 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !87, line: 147, baseType: !7)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!422 = !{!423, !424, !425, !426, !429, !430, !432, !433, !434, !435, !440, !441, !442, !445, !446}
!423 = !DILocalVariable(name: "username", arg: 1, scope: !414, file: !411, line: 66, type: !30)
!424 = !DILocalVariable(name: "gid", arg: 2, scope: !414, file: !411, line: 66, type: !417)
!425 = !DILocalVariable(name: "groups", arg: 3, scope: !414, file: !411, line: 66, type: !420)
!426 = !DILocalVariable(name: "max_n_groups", scope: !427, file: !411, line: 80, type: !25)
!427 = distinct !DILexicalBlock(scope: !428, file: !411, line: 78, column: 5)
!428 = distinct !DILexicalBlock(scope: !414, file: !411, line: 77, column: 7)
!429 = !DILocalVariable(name: "g", scope: !427, file: !411, line: 82, type: !421)
!430 = !DILocalVariable(name: "last_n_groups", scope: !431, file: !411, line: 88, type: !25)
!431 = distinct !DILexicalBlock(scope: !427, file: !411, line: 87, column: 9)
!432 = !DILocalVariable(name: "ng", scope: !431, file: !411, line: 91, type: !25)
!433 = !DILocalVariable(name: "h", scope: !431, file: !411, line: 98, type: !421)
!434 = !DILocalVariable(name: "max_n_groups", scope: !414, file: !411, line: 118, type: !25)
!435 = !DILocalVariable(name: "g", scope: !436, file: !411, line: 129, type: !421)
!436 = distinct !DILexicalBlock(scope: !437, file: !411, line: 128, column: 9)
!437 = distinct !DILexicalBlock(scope: !438, file: !411, line: 127, column: 11)
!438 = distinct !DILexicalBlock(scope: !439, file: !411, line: 126, column: 5)
!439 = distinct !DILexicalBlock(scope: !414, file: !411, line: 125, column: 7)
!440 = !DILocalVariable(name: "g", scope: !414, file: !411, line: 142, type: !421)
!441 = !DILocalVariable(name: "ng", scope: !414, file: !411, line: 146, type: !25)
!442 = !DILocalVariable(name: "first", scope: !443, file: !411, line: 183, type: !417)
!443 = distinct !DILexicalBlock(scope: !444, file: !411, line: 182, column: 5)
!444 = distinct !DILexicalBlock(scope: !414, file: !411, line: 181, column: 7)
!445 = !DILocalVariable(name: "groups_end", scope: !443, file: !411, line: 184, type: !421)
!446 = !DILocalVariable(name: "next", scope: !447, file: !411, line: 186, type: !421)
!447 = distinct !DILexicalBlock(scope: !443, file: !411, line: 186, column: 7)
!448 = !{!449}
!449 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!450 = !{!24, !417}
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !453, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!453 = !{!47, !29, !24}
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!460 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!461 = !{i32 7, !"Dwarf Version", i32 5}
!462 = !{i32 2, !"Debug Info Version", i32 3}
!463 = !{i32 1, !"wchar_size", i32 4}
!464 = !{i32 1, !"branch-target-enforcement", i32 0}
!465 = !{i32 1, !"sign-return-address", i32 0}
!466 = !{i32 1, !"sign-return-address-all", i32 0}
!467 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!468 = !{i32 7, !"PIC Level", i32 2}
!469 = !{i32 7, !"PIE Level", i32 2}
!470 = !{i32 7, !"uwtable", i32 1}
!471 = !{i32 7, !"frame-pointer", i32 1}
!472 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 47, type: !473, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !25}
!475 = !{!476}
!476 = !DILocalVariable(name: "status", arg: 1, scope: !472, file: !3, line: 47, type: !25)
!477 = !DILocation(line: 0, scope: !472)
!478 = !DILocation(line: 49, column: 14, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !3, line: 49, column: 7)
!480 = !DILocation(line: 49, column: 7, scope: !472)
!481 = !DILocation(line: 50, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !3, line: 50, column: 5)
!483 = !{!484, !484, i64 0}
!484 = !{!"any pointer", !485, i64 0}
!485 = !{!"omnipotent char", !486, i64 0}
!486 = !{!"Simple C/C++ TBAA"}
!487 = !DILocation(line: 53, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !479, file: !3, line: 52, column: 5)
!489 = !DILocation(line: 54, column: 7, scope: !488)
!490 = !DILocation(line: 59, column: 7, scope: !488)
!491 = !DILocation(line: 60, column: 7, scope: !488)
!492 = !DILocalVariable(name: "program", arg: 1, scope: !493, file: !37, line: 836, type: !30)
!493 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !37, file: !37, line: 836, type: !494, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !30}
!496 = !{!492, !497, !506, !507, !509, !510}
!497 = !DILocalVariable(name: "infomap", scope: !493, file: !37, line: 838, type: !498)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 896, elements: !504)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !493, file: !37, line: 838, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !500, file: !37, line: 838, baseType: !30, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !37, line: 838, baseType: !30, size: 64, offset: 64)
!504 = !{!505}
!505 = !DISubrange(count: 7)
!506 = !DILocalVariable(name: "node", scope: !493, file: !37, line: 848, type: !30)
!507 = !DILocalVariable(name: "map_prog", scope: !493, file: !37, line: 849, type: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!509 = !DILocalVariable(name: "lc_messages", scope: !493, file: !37, line: 861, type: !30)
!510 = !DILocalVariable(name: "url_program", scope: !493, file: !37, line: 874, type: !30)
!511 = !DILocation(line: 0, scope: !493, inlinedAt: !512)
!512 = distinct !DILocation(line: 61, column: 7, scope: !488)
!513 = !DILocation(line: 838, column: 3, scope: !493, inlinedAt: !512)
!514 = !DILocation(line: 838, column: 67, scope: !493, inlinedAt: !512)
!515 = !DILocation(line: 849, column: 36, scope: !493, inlinedAt: !512)
!516 = !DILocation(line: 851, column: 3, scope: !493, inlinedAt: !512)
!517 = !DILocalVariable(name: "__s1", arg: 1, scope: !518, file: !519, line: 1359, type: !30)
!518 = distinct !DISubprogram(name: "streq", scope: !519, file: !519, line: 1359, type: !520, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !522)
!519 = !DIFile(filename: "./lib/string.h", directory: "/src")
!520 = !DISubroutineType(types: !521)
!521 = !{!47, !30, !30}
!522 = !{!517, !523}
!523 = !DILocalVariable(name: "__s2", arg: 2, scope: !518, file: !519, line: 1359, type: !30)
!524 = !DILocation(line: 0, scope: !518, inlinedAt: !525)
!525 = distinct !DILocation(line: 851, column: 33, scope: !493, inlinedAt: !512)
!526 = !DILocation(line: 1361, column: 11, scope: !518, inlinedAt: !525)
!527 = !DILocation(line: 1361, column: 10, scope: !518, inlinedAt: !525)
!528 = !DILocation(line: 852, column: 13, scope: !493, inlinedAt: !512)
!529 = !DILocation(line: 851, column: 20, scope: !493, inlinedAt: !512)
!530 = !{!531, !484, i64 0}
!531 = !{!"infomap", !484, i64 0, !484, i64 8}
!532 = !DILocation(line: 851, column: 10, scope: !493, inlinedAt: !512)
!533 = !DILocation(line: 851, column: 28, scope: !493, inlinedAt: !512)
!534 = distinct !{!534, !516, !528, !535}
!535 = !{!"llvm.loop.mustprogress"}
!536 = !DILocation(line: 854, column: 17, scope: !537, inlinedAt: !512)
!537 = distinct !DILexicalBlock(scope: !493, file: !37, line: 854, column: 7)
!538 = !{!531, !484, i64 8}
!539 = !DILocation(line: 854, column: 7, scope: !537, inlinedAt: !512)
!540 = !DILocation(line: 854, column: 7, scope: !493, inlinedAt: !512)
!541 = !DILocation(line: 857, column: 3, scope: !493, inlinedAt: !512)
!542 = !DILocation(line: 861, column: 29, scope: !493, inlinedAt: !512)
!543 = !DILocation(line: 862, column: 7, scope: !544, inlinedAt: !512)
!544 = distinct !DILexicalBlock(scope: !493, file: !37, line: 862, column: 7)
!545 = !DILocation(line: 862, column: 19, scope: !544, inlinedAt: !512)
!546 = !DILocation(line: 862, column: 22, scope: !544, inlinedAt: !512)
!547 = !DILocation(line: 862, column: 7, scope: !493, inlinedAt: !512)
!548 = !DILocation(line: 868, column: 7, scope: !549, inlinedAt: !512)
!549 = distinct !DILexicalBlock(scope: !544, file: !37, line: 863, column: 5)
!550 = !DILocation(line: 870, column: 5, scope: !549, inlinedAt: !512)
!551 = !DILocation(line: 0, scope: !518, inlinedAt: !552)
!552 = distinct !DILocation(line: 874, column: 29, scope: !493, inlinedAt: !512)
!553 = !DILocation(line: 875, column: 3, scope: !493, inlinedAt: !512)
!554 = !DILocation(line: 877, column: 3, scope: !493, inlinedAt: !512)
!555 = !DILocation(line: 879, column: 1, scope: !493, inlinedAt: !512)
!556 = !DILocation(line: 63, column: 3, scope: !472)
!557 = !DISubprogram(name: "dcgettext", scope: !558, file: !558, line: 51, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!558 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!559 = !DISubroutineType(types: !560)
!560 = !{!22, !30, !30, !25}
!561 = !{}
!562 = !DISubprogram(name: "fputs_unlocked", scope: !157, file: !157, line: 691, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!563 = !DISubroutineType(types: !564)
!564 = !{!25, !565, !566}
!565 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!566 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!567 = !DILocation(line: 0, scope: !36)
!568 = !DILocation(line: 581, column: 7, scope: !45)
!569 = !{!570, !570, i64 0}
!570 = !{!"int", !485, i64 0}
!571 = !DILocation(line: 581, column: 19, scope: !45)
!572 = !DILocation(line: 581, column: 7, scope: !36)
!573 = !DILocation(line: 585, column: 26, scope: !44)
!574 = !DILocation(line: 0, scope: !44)
!575 = !DILocation(line: 586, column: 23, scope: !44)
!576 = !DILocation(line: 586, column: 28, scope: !44)
!577 = !DILocation(line: 586, column: 32, scope: !44)
!578 = !{!485, !485, i64 0}
!579 = !DILocation(line: 586, column: 38, scope: !44)
!580 = !DILocation(line: 0, scope: !518, inlinedAt: !581)
!581 = distinct !DILocation(line: 586, column: 41, scope: !44)
!582 = !DILocation(line: 1361, column: 11, scope: !518, inlinedAt: !581)
!583 = !DILocation(line: 1361, column: 10, scope: !518, inlinedAt: !581)
!584 = !DILocation(line: 586, column: 19, scope: !44)
!585 = !DILocation(line: 587, column: 5, scope: !44)
!586 = !DILocation(line: 588, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !36, file: !37, line: 588, column: 7)
!588 = !DILocation(line: 588, column: 7, scope: !36)
!589 = !DILocation(line: 590, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !37, line: 589, column: 5)
!591 = !DILocation(line: 591, column: 7, scope: !590)
!592 = !DILocation(line: 595, column: 37, scope: !36)
!593 = !DILocation(line: 595, column: 35, scope: !36)
!594 = !DILocation(line: 596, column: 29, scope: !36)
!595 = !DILocation(line: 597, column: 8, scope: !53)
!596 = !DILocation(line: 597, column: 7, scope: !36)
!597 = !DILocation(line: 604, column: 24, scope: !52)
!598 = !DILocation(line: 604, column: 12, scope: !53)
!599 = !DILocation(line: 0, scope: !51)
!600 = !DILocation(line: 610, column: 16, scope: !51)
!601 = !DILocation(line: 610, column: 7, scope: !51)
!602 = !DILocation(line: 611, column: 21, scope: !51)
!603 = !{!604, !604, i64 0}
!604 = !{!"short", !485, i64 0}
!605 = !DILocation(line: 611, column: 19, scope: !51)
!606 = !DILocation(line: 611, column: 16, scope: !51)
!607 = !DILocation(line: 610, column: 30, scope: !51)
!608 = distinct !{!608, !601, !602, !535}
!609 = !DILocation(line: 612, column: 18, scope: !610)
!610 = distinct !DILexicalBlock(scope: !51, file: !37, line: 612, column: 11)
!611 = !DILocation(line: 612, column: 11, scope: !51)
!612 = !DILocation(line: 620, column: 23, scope: !36)
!613 = !DILocation(line: 625, column: 39, scope: !36)
!614 = !DILocation(line: 626, column: 3, scope: !36)
!615 = !DILocation(line: 626, column: 10, scope: !36)
!616 = !DILocation(line: 626, column: 21, scope: !36)
!617 = !DILocation(line: 628, column: 44, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !37, line: 628, column: 11)
!619 = distinct !DILexicalBlock(scope: !36, file: !37, line: 627, column: 5)
!620 = !DILocation(line: 628, column: 32, scope: !618)
!621 = !DILocation(line: 628, column: 49, scope: !618)
!622 = !DILocation(line: 628, column: 11, scope: !619)
!623 = !DILocation(line: 630, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !37, line: 630, column: 11)
!625 = !DILocation(line: 630, column: 11, scope: !619)
!626 = !DILocation(line: 632, column: 26, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !37, line: 632, column: 15)
!628 = distinct !DILexicalBlock(scope: !624, file: !37, line: 631, column: 9)
!629 = !DILocation(line: 632, column: 34, scope: !627)
!630 = !DILocation(line: 632, column: 37, scope: !627)
!631 = !DILocation(line: 632, column: 15, scope: !628)
!632 = !DILocation(line: 636, column: 29, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !37, line: 636, column: 15)
!634 = !DILocation(line: 640, column: 16, scope: !619)
!635 = distinct !{!635, !614, !636, !535}
!636 = !DILocation(line: 641, column: 5, scope: !36)
!637 = !DILocation(line: 644, column: 3, scope: !36)
!638 = !DILocation(line: 0, scope: !518, inlinedAt: !639)
!639 = distinct !DILocation(line: 648, column: 31, scope: !36)
!640 = !DILocation(line: 0, scope: !518, inlinedAt: !641)
!641 = distinct !DILocation(line: 649, column: 31, scope: !36)
!642 = !DILocation(line: 0, scope: !518, inlinedAt: !643)
!643 = distinct !DILocation(line: 650, column: 31, scope: !36)
!644 = !DILocation(line: 0, scope: !518, inlinedAt: !645)
!645 = distinct !DILocation(line: 651, column: 31, scope: !36)
!646 = !DILocation(line: 0, scope: !518, inlinedAt: !647)
!647 = distinct !DILocation(line: 652, column: 31, scope: !36)
!648 = !DILocation(line: 0, scope: !518, inlinedAt: !649)
!649 = distinct !DILocation(line: 653, column: 31, scope: !36)
!650 = !DILocation(line: 0, scope: !518, inlinedAt: !651)
!651 = distinct !DILocation(line: 654, column: 31, scope: !36)
!652 = !DILocation(line: 0, scope: !518, inlinedAt: !653)
!653 = distinct !DILocation(line: 655, column: 31, scope: !36)
!654 = !DILocation(line: 0, scope: !518, inlinedAt: !655)
!655 = distinct !DILocation(line: 656, column: 31, scope: !36)
!656 = !DILocation(line: 0, scope: !518, inlinedAt: !657)
!657 = distinct !DILocation(line: 657, column: 31, scope: !36)
!658 = !DILocation(line: 663, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !36, file: !37, line: 663, column: 7)
!660 = !DILocation(line: 664, column: 7, scope: !659)
!661 = !DILocation(line: 664, column: 10, scope: !659)
!662 = !DILocation(line: 663, column: 7, scope: !36)
!663 = !DILocation(line: 669, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !37, line: 665, column: 5)
!665 = !DILocation(line: 671, column: 5, scope: !664)
!666 = !DILocation(line: 676, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !659, file: !37, line: 673, column: 5)
!668 = !DILocation(line: 679, column: 3, scope: !36)
!669 = !DILocation(line: 683, column: 3, scope: !36)
!670 = !DILocation(line: 686, column: 3, scope: !36)
!671 = !DILocation(line: 688, column: 3, scope: !36)
!672 = !DILocation(line: 691, column: 3, scope: !36)
!673 = !DILocation(line: 695, column: 3, scope: !36)
!674 = !DILocation(line: 696, column: 1, scope: !36)
!675 = !DISubprogram(name: "setlocale", scope: !676, file: !676, line: 122, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!676 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!677 = !DISubroutineType(types: !678)
!678 = !{!22, !25, !30}
!679 = !DISubprogram(name: "getenv", scope: !680, file: !680, line: 641, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!680 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!681 = !DISubroutineType(types: !682)
!682 = !{!22, !30}
!683 = !DISubprogram(name: "fwrite_unlocked", scope: !157, file: !157, line: 704, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!684 = !DISubroutineType(types: !685)
!685 = !{!27, !686, !27, !27, !566}
!686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!689 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 67, type: !690, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!690 = !DISubroutineType(types: !691)
!691 = !{!25, !25, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!693 = !{!694, !695, !696, !697, !698, !703, !704, !705, !706, !707, !723, !724, !725}
!694 = !DILocalVariable(name: "argc", arg: 1, scope: !689, file: !3, line: 67, type: !25)
!695 = !DILocalVariable(name: "argv", arg: 2, scope: !689, file: !3, line: 67, type: !692)
!696 = !DILocalVariable(name: "optc", scope: !689, file: !3, line: 79, type: !25)
!697 = !DILocalVariable(name: "ok", scope: !689, file: !3, line: 91, type: !47)
!698 = !DILocalVariable(name: "NO_UID", scope: !699, file: !3, line: 95, type: !701)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 93, column: 5)
!700 = distinct !DILexicalBlock(scope: !689, file: !3, line: 92, column: 7)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !418, line: 79, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !87, line: 146, baseType: !7)
!703 = !DILocalVariable(name: "NO_GID", scope: !699, file: !3, line: 96, type: !417)
!704 = !DILocalVariable(name: "ruid", scope: !699, file: !3, line: 99, type: !701)
!705 = !DILocalVariable(name: "egid", scope: !699, file: !3, line: 104, type: !417)
!706 = !DILocalVariable(name: "rgid", scope: !699, file: !3, line: 109, type: !417)
!707 = !DILocalVariable(name: "pwd", scope: !708, file: !3, line: 122, type: !712)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 121, column: 9)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 120, column: 7)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 120, column: 7)
!711 = distinct !DILexicalBlock(scope: !700, file: !3, line: 118, column: 5)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !714, line: 49, size: 384, elements: !715)
!714 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!715 = !{!716, !717, !718, !719, !720, !721, !722}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !713, file: !714, line: 51, baseType: !22, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !713, file: !714, line: 52, baseType: !22, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !713, file: !714, line: 54, baseType: !702, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !713, file: !714, line: 55, baseType: !419, size: 32, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !713, file: !714, line: 56, baseType: !22, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !713, file: !714, line: 57, baseType: !22, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !713, file: !714, line: 58, baseType: !22, size: 64, offset: 320)
!723 = !DILocalVariable(name: "ruid", scope: !708, file: !3, line: 129, type: !701)
!724 = !DILocalVariable(name: "rgid", scope: !708, file: !3, line: 130, type: !417)
!725 = !DILocalVariable(name: "egid", scope: !708, file: !3, line: 131, type: !417)
!726 = !DILocation(line: 0, scope: !689)
!727 = !DILocation(line: 70, column: 21, scope: !689)
!728 = !DILocation(line: 70, column: 3, scope: !689)
!729 = !DILocation(line: 71, column: 3, scope: !689)
!730 = !DILocation(line: 72, column: 3, scope: !689)
!731 = !DILocation(line: 73, column: 3, scope: !689)
!732 = !DILocation(line: 75, column: 3, scope: !689)
!733 = !DILocation(line: 80, column: 18, scope: !689)
!734 = !DILocation(line: 80, column: 3, scope: !689)
!735 = !DILocation(line: 84, column: 9, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 83, column: 9)
!737 = distinct !DILexicalBlock(scope: !689, file: !3, line: 81, column: 5)
!738 = !DILocation(line: 85, column: 9, scope: !736)
!739 = !DILocation(line: 87, column: 11, scope: !736)
!740 = !DILocation(line: 92, column: 7, scope: !700)
!741 = !DILocation(line: 92, column: 14, scope: !700)
!742 = !DILocation(line: 92, column: 7, scope: !689)
!743 = !DILocation(line: 120, column: 22, scope: !709)
!744 = !DILocation(line: 120, column: 7, scope: !710)
!745 = !DILocation(line: 0, scope: !699)
!746 = !DILocation(line: 98, column: 7, scope: !699)
!747 = !DILocation(line: 98, column: 13, scope: !699)
!748 = !DILocation(line: 99, column: 20, scope: !699)
!749 = !DILocation(line: 100, column: 16, scope: !750)
!750 = distinct !DILexicalBlock(scope: !699, file: !3, line: 100, column: 11)
!751 = !DILocation(line: 100, column: 26, scope: !750)
!752 = !DILocation(line: 100, column: 29, scope: !750)
!753 = !DILocation(line: 100, column: 11, scope: !699)
!754 = !DILocation(line: 101, column: 9, scope: !750)
!755 = !DILocation(line: 103, column: 13, scope: !699)
!756 = !DILocation(line: 104, column: 20, scope: !699)
!757 = !DILocation(line: 105, column: 16, scope: !758)
!758 = distinct !DILexicalBlock(scope: !699, file: !3, line: 105, column: 11)
!759 = !DILocation(line: 105, column: 26, scope: !758)
!760 = !DILocation(line: 105, column: 29, scope: !758)
!761 = !DILocation(line: 105, column: 11, scope: !699)
!762 = !DILocation(line: 106, column: 9, scope: !758)
!763 = !DILocation(line: 108, column: 13, scope: !699)
!764 = !DILocation(line: 109, column: 20, scope: !699)
!765 = !DILocation(line: 110, column: 16, scope: !766)
!766 = distinct !DILexicalBlock(scope: !699, file: !3, line: 110, column: 11)
!767 = !DILocation(line: 110, column: 26, scope: !766)
!768 = !DILocation(line: 110, column: 29, scope: !766)
!769 = !DILocation(line: 110, column: 11, scope: !699)
!770 = !DILocation(line: 111, column: 9, scope: !766)
!771 = !DILocation(line: 113, column: 12, scope: !772)
!772 = distinct !DILexicalBlock(scope: !699, file: !3, line: 113, column: 11)
!773 = !DILocalVariable(name: "__c", arg: 1, scope: !774, file: !775, line: 108, type: !25)
!774 = distinct !DISubprogram(name: "putchar_unlocked", scope: !775, file: !775, line: 108, type: !776, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!775 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!776 = !DISubroutineType(types: !777)
!777 = !{!25, !25}
!778 = !{!773}
!779 = !DILocation(line: 0, scope: !774, inlinedAt: !780)
!780 = distinct !DILocation(line: 115, column: 7, scope: !699)
!781 = !DILocation(line: 110, column: 10, scope: !774, inlinedAt: !780)
!782 = !{!783, !484, i64 40}
!783 = !{!"_IO_FILE", !570, i64 0, !484, i64 8, !484, i64 16, !484, i64 24, !484, i64 32, !484, i64 40, !484, i64 48, !484, i64 56, !484, i64 64, !484, i64 72, !484, i64 80, !484, i64 88, !484, i64 96, !484, i64 104, !570, i64 112, !570, i64 116, !784, i64 120, !604, i64 128, !485, i64 130, !485, i64 131, !484, i64 136, !784, i64 144, !484, i64 152, !484, i64 160, !484, i64 168, !484, i64 176, !784, i64 184, !570, i64 192, !485, i64 196}
!784 = !{!"long", !485, i64 0}
!785 = !{!783, !484, i64 48}
!786 = !{!"branch_weights", i32 2000, i32 1}
!787 = !DILocation(line: 122, column: 42, scope: !708)
!788 = !DILocation(line: 122, column: 32, scope: !708)
!789 = !DILocation(line: 0, scope: !708)
!790 = !DILocation(line: 123, column: 19, scope: !791)
!791 = distinct !DILexicalBlock(scope: !708, file: !3, line: 123, column: 15)
!792 = !DILocation(line: 123, column: 15, scope: !708)
!793 = !DILocation(line: 125, column: 15, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !3, line: 124, column: 13)
!795 = !DILocation(line: 127, column: 15, scope: !794)
!796 = !DILocation(line: 129, column: 29, scope: !708)
!797 = !{!798, !570, i64 16}
!798 = !{!"passwd", !484, i64 0, !484, i64 8, !570, i64 16, !570, i64 20, !484, i64 24, !484, i64 32, !484, i64 40}
!799 = !DILocation(line: 130, column: 29, scope: !708)
!800 = !{!798, !570, i64 20}
!801 = !DILocation(line: 133, column: 11, scope: !708)
!802 = !DILocation(line: 134, column: 39, scope: !803)
!803 = distinct !DILexicalBlock(scope: !708, file: !3, line: 134, column: 15)
!804 = !DILocation(line: 134, column: 34, scope: !803)
!805 = !DILocation(line: 134, column: 16, scope: !803)
!806 = !DILocation(line: 134, column: 15, scope: !708)
!807 = !DILocation(line: 0, scope: !774, inlinedAt: !808)
!808 = distinct !DILocation(line: 136, column: 11, scope: !708)
!809 = !DILocation(line: 110, column: 10, scope: !774, inlinedAt: !808)
!810 = !DILocation(line: 138, column: 15, scope: !811)
!811 = distinct !DILexicalBlock(scope: !708, file: !3, line: 138, column: 15)
!812 = !DILocalVariable(name: "__stream", arg: 1, scope: !813, file: !775, line: 135, type: !60)
!813 = distinct !DISubprogram(name: "ferror_unlocked", scope: !775, file: !775, line: 135, type: !814, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!25, !60}
!816 = !{!812}
!817 = !DILocation(line: 0, scope: !813, inlinedAt: !818)
!818 = distinct !DILocation(line: 138, column: 15, scope: !811)
!819 = !DILocation(line: 137, column: 10, scope: !813, inlinedAt: !818)
!820 = !{!783, !570, i64 0}
!821 = !DILocation(line: 138, column: 15, scope: !708)
!822 = !DILocation(line: 948, column: 21, scope: !823, inlinedAt: !826)
!823 = distinct !DISubprogram(name: "write_error", scope: !37, file: !37, line: 946, type: !184, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!824 = !{!825}
!825 = !DILocalVariable(name: "saved_errno", scope: !823, file: !37, line: 948, type: !25)
!826 = distinct !DILocation(line: 139, column: 13, scope: !811)
!827 = !DILocation(line: 0, scope: !823, inlinedAt: !826)
!828 = !DILocation(line: 949, column: 3, scope: !823, inlinedAt: !826)
!829 = !DILocation(line: 950, column: 11, scope: !823, inlinedAt: !826)
!830 = !DILocation(line: 950, column: 3, scope: !823, inlinedAt: !826)
!831 = !DILocation(line: 951, column: 3, scope: !823, inlinedAt: !826)
!832 = !DILocation(line: 952, column: 3, scope: !823, inlinedAt: !826)
!833 = !DILocation(line: 120, column: 36, scope: !709)
!834 = distinct !{!834, !744, !835, !535}
!835 = !DILocation(line: 140, column: 9, scope: !710)
!836 = !DILocation(line: 143, column: 10, scope: !689)
!837 = !DILocation(line: 144, column: 1, scope: !689)
!838 = !DISubprogram(name: "bindtextdomain", scope: !558, file: !558, line: 86, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!839 = !DISubroutineType(types: !840)
!840 = !{!22, !30, !30}
!841 = !DISubprogram(name: "textdomain", scope: !558, file: !558, line: 82, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!842 = !DISubprogram(name: "atexit", scope: !680, file: !680, line: 602, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!843 = !DISubroutineType(types: !844)
!844 = !{!25, !183}
!845 = !DISubprogram(name: "getopt_long", scope: !124, file: !124, line: 66, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!846 = !DISubroutineType(types: !847)
!847 = !{!25, !25, !848, !30, !850, !129}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!851 = !DISubprogram(name: "getuid", scope: !852, file: !852, line: 697, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!852 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!853 = !DISubroutineType(types: !854)
!854 = !{!702}
!855 = !DISubprogram(name: "getegid", scope: !852, file: !852, line: 706, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!856 = !DISubroutineType(types: !857)
!857 = !{!419}
!858 = !DISubprogram(name: "getgid", scope: !852, file: !852, line: 703, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!859 = !DISubprogram(name: "getpwnam", scope: !714, file: !714, line: 116, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!860 = !DISubroutineType(types: !861)
!861 = !{!712, !30}
!862 = !DISubprogram(name: "fflush_unlocked", scope: !157, file: !157, line: 239, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!863 = !DISubprogram(name: "clearerr_unlocked", scope: !157, file: !157, line: 794, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !60}
!866 = distinct !DISubprogram(name: "print_group_list", scope: !348, file: !348, line: 35, type: !867, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!47, !30, !701, !417, !417, !47, !23}
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877, !888, !890, !891}
!870 = !DILocalVariable(name: "username", arg: 1, scope: !866, file: !348, line: 35, type: !30)
!871 = !DILocalVariable(name: "ruid", arg: 2, scope: !866, file: !348, line: 36, type: !701)
!872 = !DILocalVariable(name: "rgid", arg: 3, scope: !866, file: !348, line: 36, type: !417)
!873 = !DILocalVariable(name: "egid", arg: 4, scope: !866, file: !348, line: 36, type: !417)
!874 = !DILocalVariable(name: "use_names", arg: 5, scope: !866, file: !348, line: 37, type: !47)
!875 = !DILocalVariable(name: "delim", arg: 6, scope: !866, file: !348, line: 37, type: !23)
!876 = !DILocalVariable(name: "ok", scope: !866, file: !348, line: 39, type: !47)
!877 = !DILocalVariable(name: "pwd", scope: !866, file: !348, line: 40, type: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !714, line: 49, size: 384, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !886, !887}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !879, file: !714, line: 51, baseType: !22, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !879, file: !714, line: 52, baseType: !22, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !879, file: !714, line: 54, baseType: !702, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !879, file: !714, line: 55, baseType: !419, size: 32, offset: 160)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !879, file: !714, line: 56, baseType: !22, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !879, file: !714, line: 57, baseType: !22, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !879, file: !714, line: 58, baseType: !22, size: 64, offset: 320)
!888 = !DILocalVariable(name: "groups", scope: !889, file: !348, line: 60, type: !421)
!889 = distinct !DILexicalBlock(scope: !866, file: !348, line: 59, column: 3)
!890 = !DILocalVariable(name: "n_groups", scope: !889, file: !348, line: 62, type: !25)
!891 = !DILocalVariable(name: "i", scope: !892, file: !348, line: 77, type: !25)
!892 = distinct !DILexicalBlock(scope: !889, file: !348, line: 77, column: 5)
!893 = !DILocation(line: 0, scope: !866)
!894 = !DILocation(line: 42, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !866, file: !348, line: 42, column: 7)
!896 = !DILocation(line: 42, column: 7, scope: !866)
!897 = !DILocation(line: 44, column: 13, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !348, line: 43, column: 5)
!899 = !DILocation(line: 45, column: 15, scope: !900)
!900 = distinct !DILexicalBlock(scope: !898, file: !348, line: 45, column: 11)
!901 = !DILocation(line: 45, column: 11, scope: !898)
!902 = !DILocalVariable(name: "gid", arg: 1, scope: !903, file: !348, line: 91, type: !417)
!903 = distinct !DISubprogram(name: "print_group", scope: !348, file: !348, line: 91, type: !904, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!47, !417, !47}
!906 = !{!902, !907, !908, !917, !918}
!907 = !DILocalVariable(name: "use_name", arg: 2, scope: !903, file: !348, line: 91, type: !47)
!908 = !DILocalVariable(name: "grp", scope: !903, file: !348, line: 93, type: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !911, line: 42, size: 256, elements: !912)
!911 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!912 = !{!913, !914, !915, !916}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !910, file: !911, line: 44, baseType: !22, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !910, file: !911, line: 45, baseType: !22, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !910, file: !911, line: 46, baseType: !419, size: 32, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !910, file: !911, line: 47, baseType: !692, size: 64, offset: 192)
!917 = !DILocalVariable(name: "ok", scope: !903, file: !348, line: 94, type: !47)
!918 = !DILocalVariable(name: "g", scope: !919, file: !348, line: 108, type: !350)
!919 = distinct !DILexicalBlock(scope: !920, file: !348, line: 107, column: 13)
!920 = distinct !DILexicalBlock(scope: !921, file: !348, line: 101, column: 15)
!921 = distinct !DILexicalBlock(scope: !922, file: !348, line: 100, column: 9)
!922 = distinct !DILexicalBlock(scope: !923, file: !348, line: 99, column: 11)
!923 = distinct !DILexicalBlock(scope: !924, file: !348, line: 97, column: 5)
!924 = distinct !DILexicalBlock(scope: !903, file: !348, line: 96, column: 7)
!925 = !DILocation(line: 0, scope: !903, inlinedAt: !926)
!926 = distinct !DILocation(line: 49, column: 8, scope: !927)
!927 = distinct !DILexicalBlock(scope: !866, file: !348, line: 49, column: 7)
!928 = !DILocation(line: 96, column: 7, scope: !903, inlinedAt: !926)
!929 = !DILocation(line: 118, column: 5, scope: !930, inlinedAt: !926)
!930 = distinct !DILexicalBlock(scope: !903, file: !348, line: 115, column: 7)
!931 = !DILocation(line: 98, column: 13, scope: !923, inlinedAt: !926)
!932 = !DILocation(line: 99, column: 15, scope: !922, inlinedAt: !926)
!933 = !DILocation(line: 99, column: 11, scope: !923, inlinedAt: !926)
!934 = !DILocation(line: 108, column: 29, scope: !919, inlinedAt: !926)
!935 = !DILocation(line: 0, scope: !919, inlinedAt: !926)
!936 = !DILocation(line: 109, column: 15, scope: !919, inlinedAt: !926)
!937 = !DILocation(line: 112, column: 9, scope: !921, inlinedAt: !926)
!938 = !DILocation(line: 116, column: 5, scope: !930, inlinedAt: !926)
!939 = !{!940, !484, i64 0}
!940 = !{!"group", !484, i64 0, !484, i64 8, !570, i64 16, !484, i64 24}
!941 = !DILocation(line: 52, column: 12, scope: !942)
!942 = distinct !DILexicalBlock(scope: !866, file: !348, line: 52, column: 7)
!943 = !DILocation(line: 52, column: 7, scope: !866)
!944 = !DILocalVariable(name: "__c", arg: 1, scope: !945, file: !775, line: 108, type: !25)
!945 = distinct !DISubprogram(name: "putchar_unlocked", scope: !775, file: !775, line: 108, type: !776, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !946)
!946 = !{!944}
!947 = !DILocation(line: 0, scope: !945, inlinedAt: !948)
!948 = distinct !DILocation(line: 54, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !942, file: !348, line: 53, column: 5)
!950 = !DILocation(line: 110, column: 10, scope: !945, inlinedAt: !948)
!951 = !DILocation(line: 54, column: 7, scope: !949)
!952 = !DILocation(line: 0, scope: !903, inlinedAt: !953)
!953 = distinct !DILocation(line: 55, column: 12, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !348, line: 55, column: 11)
!955 = !DILocation(line: 96, column: 7, scope: !903, inlinedAt: !953)
!956 = !DILocation(line: 118, column: 5, scope: !930, inlinedAt: !953)
!957 = !DILocation(line: 98, column: 13, scope: !923, inlinedAt: !953)
!958 = !DILocation(line: 99, column: 15, scope: !922, inlinedAt: !953)
!959 = !DILocation(line: 99, column: 11, scope: !923, inlinedAt: !953)
!960 = !DILocation(line: 108, column: 29, scope: !919, inlinedAt: !953)
!961 = !DILocation(line: 0, scope: !919, inlinedAt: !953)
!962 = !DILocation(line: 109, column: 15, scope: !919, inlinedAt: !953)
!963 = !DILocation(line: 112, column: 9, scope: !921, inlinedAt: !953)
!964 = !DILocation(line: 116, column: 5, scope: !930, inlinedAt: !953)
!965 = !DILocation(line: 60, column: 5, scope: !889)
!966 = !DILocation(line: 62, column: 43, scope: !889)
!967 = !DILocation(line: 62, column: 54, scope: !889)
!968 = !DILocation(line: 0, scope: !889)
!969 = !DILocation(line: 62, column: 20, scope: !889)
!970 = !DILocation(line: 63, column: 18, scope: !971)
!971 = distinct !DILexicalBlock(scope: !889, file: !348, line: 63, column: 9)
!972 = !DILocation(line: 63, column: 9, scope: !889)
!973 = !DILocation(line: 0, scope: !892)
!974 = !DILocation(line: 77, column: 23, scope: !975)
!975 = distinct !DILexicalBlock(scope: !892, file: !348, line: 77, column: 5)
!976 = !DILocation(line: 77, column: 5, scope: !892)
!977 = !DILocation(line: 0, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !348, line: 65, column: 13)
!979 = distinct !DILexicalBlock(scope: !971, file: !348, line: 64, column: 7)
!980 = !DILocation(line: 65, column: 13, scope: !979)
!981 = !DILocation(line: 67, column: 13, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !348, line: 66, column: 11)
!983 = !DILocation(line: 69, column: 11, scope: !982)
!984 = !DILocation(line: 72, column: 13, scope: !985)
!985 = distinct !DILexicalBlock(scope: !978, file: !348, line: 71, column: 11)
!986 = !DILocation(line: 84, column: 11, scope: !889)
!987 = !DILocation(line: 84, column: 5, scope: !889)
!988 = !DILocation(line: 85, column: 3, scope: !866)
!989 = !DILocation(line: 78, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !975, file: !348, line: 78, column: 11)
!991 = !DILocation(line: 78, column: 21, scope: !990)
!992 = !DILocation(line: 78, column: 29, scope: !990)
!993 = !DILocation(line: 0, scope: !945, inlinedAt: !994)
!994 = distinct !DILocation(line: 80, column: 11, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !348, line: 79, column: 9)
!996 = !DILocation(line: 110, column: 10, scope: !945, inlinedAt: !994)
!997 = !DILocation(line: 81, column: 29, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !348, line: 81, column: 15)
!999 = !DILocation(line: 0, scope: !903, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 81, column: 16, scope: !998)
!1001 = !DILocation(line: 96, column: 7, scope: !903, inlinedAt: !1000)
!1002 = !DILocation(line: 118, column: 5, scope: !930, inlinedAt: !1000)
!1003 = !DILocation(line: 98, column: 13, scope: !923, inlinedAt: !1000)
!1004 = !DILocation(line: 99, column: 15, scope: !922, inlinedAt: !1000)
!1005 = !DILocation(line: 99, column: 11, scope: !923, inlinedAt: !1000)
!1006 = !DILocation(line: 108, column: 29, scope: !919, inlinedAt: !1000)
!1007 = !DILocation(line: 0, scope: !919, inlinedAt: !1000)
!1008 = !DILocation(line: 109, column: 15, scope: !919, inlinedAt: !1000)
!1009 = !DILocation(line: 112, column: 9, scope: !921, inlinedAt: !1000)
!1010 = !DILocation(line: 116, column: 5, scope: !930, inlinedAt: !1000)
!1011 = !DILocation(line: 81, column: 15, scope: !995)
!1012 = !DILocation(line: 77, column: 36, scope: !975)
!1013 = distinct !{!1013, !976, !1014, !535}
!1014 = !DILocation(line: 83, column: 9, scope: !892)
!1015 = !DILocation(line: 87, column: 1, scope: !866)
!1016 = !DISubprogram(name: "getpwuid", scope: !714, file: !714, line: 110, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!878, !702}
!1019 = !DISubprogram(name: "getgrgid", scope: !911, file: !911, line: 101, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!909, !419}
!1022 = !DILocation(line: 0, scope: !903)
!1023 = !DILocation(line: 96, column: 7, scope: !903)
!1024 = !DILocation(line: 118, column: 5, scope: !930)
!1025 = !DILocation(line: 98, column: 13, scope: !923)
!1026 = !DILocation(line: 99, column: 15, scope: !922)
!1027 = !DILocation(line: 99, column: 11, scope: !923)
!1028 = !DILocation(line: 108, column: 29, scope: !919)
!1029 = !DILocation(line: 0, scope: !919)
!1030 = !DILocation(line: 109, column: 15, scope: !919)
!1031 = !DILocation(line: 112, column: 9, scope: !921)
!1032 = !DILocation(line: 116, column: 5, scope: !930)
!1033 = !DILocation(line: 119, column: 3, scope: !903)
!1034 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !141, file: !141, line: 50, type: !494, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1035)
!1035 = !{!1036}
!1036 = !DILocalVariable(name: "file", arg: 1, scope: !1034, file: !141, line: 50, type: !30)
!1037 = !DILocation(line: 0, scope: !1034)
!1038 = !DILocation(line: 52, column: 13, scope: !1034)
!1039 = !DILocation(line: 53, column: 1, scope: !1034)
!1040 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !141, file: !141, line: 87, type: !1041, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !47}
!1043 = !{!1044}
!1044 = !DILocalVariable(name: "ignore", arg: 1, scope: !1040, file: !141, line: 87, type: !47)
!1045 = !DILocation(line: 0, scope: !1040)
!1046 = !DILocation(line: 89, column: 16, scope: !1040)
!1047 = !{!1048, !1048, i64 0}
!1048 = !{!"_Bool", !485, i64 0}
!1049 = !DILocation(line: 90, column: 1, scope: !1040)
!1050 = distinct !DISubprogram(name: "close_stdout", scope: !141, file: !141, line: 116, type: !184, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1051)
!1051 = !{!1052}
!1052 = !DILocalVariable(name: "write_error", scope: !1053, file: !141, line: 121, type: !30)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !141, line: 120, column: 5)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !141, line: 118, column: 7)
!1055 = !DILocation(line: 118, column: 21, scope: !1054)
!1056 = !DILocation(line: 118, column: 7, scope: !1054)
!1057 = !DILocation(line: 118, column: 29, scope: !1054)
!1058 = !DILocation(line: 119, column: 7, scope: !1054)
!1059 = !DILocation(line: 119, column: 12, scope: !1054)
!1060 = !{i8 0, i8 2}
!1061 = !DILocation(line: 119, column: 25, scope: !1054)
!1062 = !DILocation(line: 119, column: 28, scope: !1054)
!1063 = !DILocation(line: 119, column: 34, scope: !1054)
!1064 = !DILocation(line: 118, column: 7, scope: !1050)
!1065 = !DILocation(line: 121, column: 33, scope: !1053)
!1066 = !DILocation(line: 0, scope: !1053)
!1067 = !DILocation(line: 122, column: 11, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1053, file: !141, line: 122, column: 11)
!1069 = !DILocation(line: 0, scope: !1068)
!1070 = !DILocation(line: 122, column: 11, scope: !1053)
!1071 = !DILocation(line: 123, column: 9, scope: !1068)
!1072 = !DILocation(line: 126, column: 9, scope: !1068)
!1073 = !DILocation(line: 128, column: 14, scope: !1053)
!1074 = !DILocation(line: 128, column: 7, scope: !1053)
!1075 = !DILocation(line: 133, column: 42, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1050, file: !141, line: 133, column: 7)
!1077 = !DILocation(line: 133, column: 28, scope: !1076)
!1078 = !DILocation(line: 133, column: 50, scope: !1076)
!1079 = !DILocation(line: 133, column: 7, scope: !1050)
!1080 = !DILocation(line: 134, column: 12, scope: !1076)
!1081 = !DILocation(line: 134, column: 5, scope: !1076)
!1082 = !DILocation(line: 135, column: 1, scope: !1050)
!1083 = distinct !DISubprogram(name: "verror", scope: !148, file: !148, line: 251, type: !1084, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !25, !25, !30, !156}
!1086 = !{!1087, !1088, !1089, !1090}
!1087 = !DILocalVariable(name: "status", arg: 1, scope: !1083, file: !148, line: 251, type: !25)
!1088 = !DILocalVariable(name: "errnum", arg: 2, scope: !1083, file: !148, line: 251, type: !25)
!1089 = !DILocalVariable(name: "message", arg: 3, scope: !1083, file: !148, line: 251, type: !30)
!1090 = !DILocalVariable(name: "args", arg: 4, scope: !1083, file: !148, line: 251, type: !156)
!1091 = !DILocation(line: 0, scope: !1083)
!1092 = !DILocation(line: 251, column: 1, scope: !1083)
!1093 = !DILocation(line: 261, column: 3, scope: !1083)
!1094 = !DILocation(line: 265, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1083, file: !148, line: 265, column: 7)
!1096 = !DILocation(line: 265, column: 7, scope: !1083)
!1097 = !DILocation(line: 266, column: 5, scope: !1095)
!1098 = !DILocation(line: 272, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !148, line: 268, column: 5)
!1100 = !DILocation(line: 276, column: 3, scope: !1083)
!1101 = !{i64 0, i64 8, !483, i64 8, i64 8, !483, i64 16, i64 8, !483, i64 24, i64 4, !569, i64 28, i64 4, !569}
!1102 = !DILocation(line: 282, column: 1, scope: !1083)
!1103 = distinct !DISubprogram(name: "flush_stdout", scope: !148, file: !148, line: 163, type: !184, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1104)
!1104 = !{!1105}
!1105 = !DILocalVariable(name: "stdout_fd", scope: !1103, file: !148, line: 166, type: !25)
!1106 = !DILocation(line: 0, scope: !1103)
!1107 = !DILocalVariable(name: "fd", arg: 1, scope: !1108, file: !148, line: 145, type: !25)
!1108 = distinct !DISubprogram(name: "is_open", scope: !148, file: !148, line: 145, type: !776, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1109)
!1109 = !{!1107}
!1110 = !DILocation(line: 0, scope: !1108, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 182, column: 25, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1103, file: !148, line: 182, column: 7)
!1113 = !DILocation(line: 157, column: 15, scope: !1108, inlinedAt: !1111)
!1114 = !DILocation(line: 182, column: 25, scope: !1112)
!1115 = !DILocation(line: 182, column: 7, scope: !1103)
!1116 = !DILocation(line: 184, column: 5, scope: !1112)
!1117 = !DILocation(line: 185, column: 1, scope: !1103)
!1118 = distinct !DISubprogram(name: "error_tail", scope: !148, file: !148, line: 219, type: !1084, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1119)
!1119 = !{!1120, !1121, !1122, !1123}
!1120 = !DILocalVariable(name: "status", arg: 1, scope: !1118, file: !148, line: 219, type: !25)
!1121 = !DILocalVariable(name: "errnum", arg: 2, scope: !1118, file: !148, line: 219, type: !25)
!1122 = !DILocalVariable(name: "message", arg: 3, scope: !1118, file: !148, line: 219, type: !30)
!1123 = !DILocalVariable(name: "args", arg: 4, scope: !1118, file: !148, line: 219, type: !156)
!1124 = !DILocation(line: 0, scope: !1118)
!1125 = !DILocation(line: 219, column: 1, scope: !1118)
!1126 = !DILocation(line: 229, column: 13, scope: !1118)
!1127 = !DILocation(line: 229, column: 3, scope: !1118)
!1128 = !DILocalVariable(name: "__stream", arg: 1, scope: !1129, file: !1130, line: 132, type: !1133)
!1129 = distinct !DISubprogram(name: "vfprintf", scope: !1130, file: !1130, line: 132, type: !1131, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1168)
!1130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!25, !1133, !565, !158}
!1133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1136, file: !64, line: 51, baseType: !25, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1136, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1136, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1136, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1136, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1136, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1136, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1136, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1136, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1136, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1136, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1136, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1136, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1136, file: !64, line: 70, baseType: !1152, size: 64, offset: 832)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1136, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1136, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1136, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1136, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1136, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1136, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1136, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1136, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1136, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1136, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1136, file: !64, line: 93, baseType: !1152, size: 64, offset: 1344)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1136, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1136, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1136, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1136, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!1168 = !{!1128, !1169, !1170}
!1169 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1129, file: !1130, line: 133, type: !565)
!1170 = !DILocalVariable(name: "__ap", arg: 3, scope: !1129, file: !1130, line: 133, type: !158)
!1171 = !DILocation(line: 0, scope: !1129, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 229, column: 3, scope: !1118)
!1173 = !DILocation(line: 135, column: 10, scope: !1129, inlinedAt: !1172)
!1174 = !{!1175, !1177}
!1175 = distinct !{!1175, !1176, !"vfprintf.inline: argument 0"}
!1176 = distinct !{!1176, !"vfprintf.inline"}
!1177 = distinct !{!1177, !1176, !"vfprintf.inline: argument 1"}
!1178 = !DILocation(line: 232, column: 3, scope: !1118)
!1179 = !DILocation(line: 233, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1118, file: !148, line: 233, column: 7)
!1181 = !DILocation(line: 233, column: 7, scope: !1118)
!1182 = !DILocalVariable(name: "errnum", arg: 1, scope: !1183, file: !148, line: 188, type: !25)
!1183 = distinct !DISubprogram(name: "print_errno_message", scope: !148, file: !148, line: 188, type: !473, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1184)
!1184 = !{!1182, !1185, !1186}
!1185 = !DILocalVariable(name: "s", scope: !1183, file: !148, line: 190, type: !30)
!1186 = !DILocalVariable(name: "errbuf", scope: !1183, file: !148, line: 193, type: !1187)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !1188)
!1188 = !{!1189}
!1189 = !DISubrange(count: 1024)
!1190 = !DILocation(line: 0, scope: !1183, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 234, column: 5, scope: !1180)
!1192 = !DILocation(line: 193, column: 3, scope: !1183, inlinedAt: !1191)
!1193 = !DILocation(line: 193, column: 8, scope: !1183, inlinedAt: !1191)
!1194 = !DILocation(line: 195, column: 7, scope: !1183, inlinedAt: !1191)
!1195 = !DILocation(line: 207, column: 9, scope: !1196, inlinedAt: !1191)
!1196 = distinct !DILexicalBlock(scope: !1183, file: !148, line: 207, column: 7)
!1197 = !DILocation(line: 207, column: 7, scope: !1183, inlinedAt: !1191)
!1198 = !DILocation(line: 208, column: 9, scope: !1196, inlinedAt: !1191)
!1199 = !DILocation(line: 208, column: 5, scope: !1196, inlinedAt: !1191)
!1200 = !DILocation(line: 214, column: 3, scope: !1183, inlinedAt: !1191)
!1201 = !DILocation(line: 216, column: 1, scope: !1183, inlinedAt: !1191)
!1202 = !DILocation(line: 234, column: 5, scope: !1180)
!1203 = !DILocation(line: 238, column: 3, scope: !1118)
!1204 = !DILocalVariable(name: "__c", arg: 1, scope: !1205, file: !775, line: 101, type: !25)
!1205 = distinct !DISubprogram(name: "putc_unlocked", scope: !775, file: !775, line: 101, type: !1206, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!25, !25, !1134}
!1208 = !{!1204, !1209}
!1209 = !DILocalVariable(name: "__stream", arg: 2, scope: !1205, file: !775, line: 101, type: !1134)
!1210 = !DILocation(line: 0, scope: !1205, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 238, column: 3, scope: !1118)
!1212 = !DILocation(line: 103, column: 10, scope: !1205, inlinedAt: !1211)
!1213 = !DILocation(line: 240, column: 3, scope: !1118)
!1214 = !DILocation(line: 241, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1118, file: !148, line: 241, column: 7)
!1216 = !DILocation(line: 241, column: 7, scope: !1118)
!1217 = !DILocation(line: 242, column: 5, scope: !1215)
!1218 = !DILocation(line: 243, column: 1, scope: !1118)
!1219 = !DISubprogram(name: "strerror_r", scope: !1220, file: !1220, line: 444, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1220 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!22, !25, !22, !27}
!1223 = !DISubprogram(name: "fcntl", scope: !1224, file: !1224, line: 149, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1224 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!25, !25, !25, null}
!1227 = distinct !DISubprogram(name: "error", scope: !148, file: !148, line: 285, type: !1228, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !25, !25, !30, null}
!1230 = !{!1231, !1232, !1233, !1234}
!1231 = !DILocalVariable(name: "status", arg: 1, scope: !1227, file: !148, line: 285, type: !25)
!1232 = !DILocalVariable(name: "errnum", arg: 2, scope: !1227, file: !148, line: 285, type: !25)
!1233 = !DILocalVariable(name: "message", arg: 3, scope: !1227, file: !148, line: 285, type: !30)
!1234 = !DILocalVariable(name: "ap", scope: !1227, file: !148, line: 287, type: !156)
!1235 = !DILocation(line: 0, scope: !1227)
!1236 = !DILocation(line: 287, column: 3, scope: !1227)
!1237 = !DILocation(line: 287, column: 11, scope: !1227)
!1238 = !DILocation(line: 288, column: 3, scope: !1227)
!1239 = !DILocation(line: 289, column: 3, scope: !1227)
!1240 = !DILocation(line: 290, column: 3, scope: !1227)
!1241 = !DILocation(line: 291, column: 1, scope: !1227)
!1242 = !DILocation(line: 0, scope: !153)
!1243 = !DILocation(line: 298, column: 1, scope: !153)
!1244 = !DILocation(line: 302, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !153, file: !148, line: 302, column: 7)
!1246 = !DILocation(line: 302, column: 7, scope: !153)
!1247 = !DILocation(line: 307, column: 11, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !148, line: 307, column: 11)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !148, line: 303, column: 5)
!1250 = !DILocation(line: 307, column: 27, scope: !1248)
!1251 = !DILocation(line: 308, column: 11, scope: !1248)
!1252 = !DILocation(line: 308, column: 28, scope: !1248)
!1253 = !DILocation(line: 308, column: 25, scope: !1248)
!1254 = !DILocation(line: 309, column: 15, scope: !1248)
!1255 = !DILocation(line: 309, column: 33, scope: !1248)
!1256 = !DILocation(line: 310, column: 19, scope: !1248)
!1257 = !DILocation(line: 311, column: 22, scope: !1248)
!1258 = !DILocation(line: 311, column: 56, scope: !1248)
!1259 = !DILocation(line: 307, column: 11, scope: !1249)
!1260 = !DILocation(line: 316, column: 21, scope: !1249)
!1261 = !DILocation(line: 317, column: 23, scope: !1249)
!1262 = !DILocation(line: 318, column: 5, scope: !1249)
!1263 = !DILocation(line: 327, column: 3, scope: !153)
!1264 = !DILocation(line: 331, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !153, file: !148, line: 331, column: 7)
!1266 = !DILocation(line: 331, column: 7, scope: !153)
!1267 = !DILocation(line: 332, column: 5, scope: !1265)
!1268 = !DILocation(line: 338, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !148, line: 334, column: 5)
!1270 = !DILocation(line: 346, column: 3, scope: !153)
!1271 = !DILocation(line: 350, column: 3, scope: !153)
!1272 = !DILocation(line: 356, column: 1, scope: !153)
!1273 = distinct !DISubprogram(name: "error_at_line", scope: !148, file: !148, line: 359, type: !1274, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !25, !25, !30, !7, !30, null}
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282}
!1277 = !DILocalVariable(name: "status", arg: 1, scope: !1273, file: !148, line: 359, type: !25)
!1278 = !DILocalVariable(name: "errnum", arg: 2, scope: !1273, file: !148, line: 359, type: !25)
!1279 = !DILocalVariable(name: "file_name", arg: 3, scope: !1273, file: !148, line: 359, type: !30)
!1280 = !DILocalVariable(name: "line_number", arg: 4, scope: !1273, file: !148, line: 360, type: !7)
!1281 = !DILocalVariable(name: "message", arg: 5, scope: !1273, file: !148, line: 360, type: !30)
!1282 = !DILocalVariable(name: "ap", scope: !1273, file: !148, line: 362, type: !156)
!1283 = !DILocation(line: 0, scope: !1273)
!1284 = !DILocation(line: 362, column: 3, scope: !1273)
!1285 = !DILocation(line: 362, column: 11, scope: !1273)
!1286 = !DILocation(line: 363, column: 3, scope: !1273)
!1287 = !DILocation(line: 364, column: 3, scope: !1273)
!1288 = !DILocation(line: 366, column: 3, scope: !1273)
!1289 = !DILocation(line: 367, column: 1, scope: !1273)
!1290 = distinct !DISubprogram(name: "fpurge", scope: !354, file: !354, line: 32, type: !1291, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !1327)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!25, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1295, file: !64, line: 51, baseType: !25, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1295, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1295, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1295, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1295, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1295, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1295, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1295, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1295, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1295, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1295, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1295, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1295, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1295, file: !64, line: 70, baseType: !1311, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1295, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1295, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1295, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1295, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1295, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1295, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1295, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1295, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1295, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1295, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1295, file: !64, line: 93, baseType: !1311, size: 64, offset: 1344)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1295, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1295, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1295, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1295, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!1327 = !{!1328}
!1328 = !DILocalVariable(name: "fp", arg: 1, scope: !1290, file: !354, line: 32, type: !1293)
!1329 = !DILocation(line: 0, scope: !1290)
!1330 = !DILocation(line: 36, column: 3, scope: !1290)
!1331 = !DILocation(line: 38, column: 3, scope: !1290)
!1332 = distinct !DISubprogram(name: "getprogname", scope: !356, file: !356, line: 54, type: !1333, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !561)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!30}
!1335 = !DILocation(line: 58, column: 10, scope: !1332)
!1336 = !DILocation(line: 58, column: 3, scope: !1332)
!1337 = distinct !DISubprogram(name: "set_program_name", scope: !189, file: !189, line: 37, type: !494, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DILocalVariable(name: "argv0", arg: 1, scope: !1337, file: !189, line: 37, type: !30)
!1340 = !DILocalVariable(name: "slash", scope: !1337, file: !189, line: 44, type: !30)
!1341 = !DILocalVariable(name: "base", scope: !1337, file: !189, line: 45, type: !30)
!1342 = !DILocation(line: 0, scope: !1337)
!1343 = !DILocation(line: 44, column: 23, scope: !1337)
!1344 = !DILocation(line: 45, column: 22, scope: !1337)
!1345 = !DILocation(line: 46, column: 17, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1337, file: !189, line: 46, column: 7)
!1347 = !DILocation(line: 46, column: 9, scope: !1346)
!1348 = !DILocation(line: 46, column: 25, scope: !1346)
!1349 = !DILocation(line: 46, column: 40, scope: !1346)
!1350 = !DILocalVariable(name: "__s1", arg: 1, scope: !1351, file: !519, line: 974, type: !687)
!1351 = distinct !DISubprogram(name: "memeq", scope: !519, file: !519, line: 974, type: !1352, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!47, !687, !687, !27}
!1354 = !{!1350, !1355, !1356}
!1355 = !DILocalVariable(name: "__s2", arg: 2, scope: !1351, file: !519, line: 974, type: !687)
!1356 = !DILocalVariable(name: "__n", arg: 3, scope: !1351, file: !519, line: 974, type: !27)
!1357 = !DILocation(line: 0, scope: !1351, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 46, column: 28, scope: !1346)
!1359 = !DILocation(line: 976, column: 11, scope: !1351, inlinedAt: !1358)
!1360 = !DILocation(line: 976, column: 10, scope: !1351, inlinedAt: !1358)
!1361 = !DILocation(line: 46, column: 7, scope: !1337)
!1362 = !DILocation(line: 49, column: 11, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !189, line: 49, column: 11)
!1364 = distinct !DILexicalBlock(scope: !1346, file: !189, line: 47, column: 5)
!1365 = !DILocation(line: 49, column: 36, scope: !1363)
!1366 = !DILocation(line: 49, column: 11, scope: !1364)
!1367 = !DILocation(line: 65, column: 16, scope: !1337)
!1368 = !DILocation(line: 71, column: 27, scope: !1337)
!1369 = !DILocation(line: 74, column: 33, scope: !1337)
!1370 = !DILocation(line: 76, column: 1, scope: !1337)
!1371 = !DILocation(line: 0, scope: !194)
!1372 = !DILocation(line: 40, column: 29, scope: !194)
!1373 = !DILocation(line: 41, column: 19, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !194, file: !195, line: 41, column: 7)
!1375 = !DILocation(line: 41, column: 7, scope: !194)
!1376 = !DILocation(line: 47, column: 3, scope: !194)
!1377 = !DILocation(line: 48, column: 3, scope: !194)
!1378 = !DILocation(line: 48, column: 13, scope: !194)
!1379 = !DILocalVariable(name: "ps", arg: 1, scope: !1380, file: !1381, line: 1135, type: !1384)
!1380 = distinct !DISubprogram(name: "mbszero", scope: !1381, file: !1381, line: 1135, type: !1382, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1385)
!1381 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1385 = !{!1379}
!1386 = !DILocation(line: 0, scope: !1380, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 48, column: 18, scope: !194)
!1388 = !DILocalVariable(name: "__dest", arg: 1, scope: !1389, file: !1390, line: 57, type: !24)
!1389 = distinct !DISubprogram(name: "memset", scope: !1390, file: !1390, line: 57, type: !1391, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1393)
!1390 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!24, !24, !25, !27}
!1393 = !{!1388, !1394, !1395}
!1394 = !DILocalVariable(name: "__ch", arg: 2, scope: !1389, file: !1390, line: 57, type: !25)
!1395 = !DILocalVariable(name: "__len", arg: 3, scope: !1389, file: !1390, line: 57, type: !27)
!1396 = !DILocation(line: 0, scope: !1389, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 1137, column: 3, scope: !1380, inlinedAt: !1387)
!1398 = !DILocation(line: 59, column: 10, scope: !1389, inlinedAt: !1397)
!1399 = !DILocation(line: 49, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !194, file: !195, line: 49, column: 7)
!1401 = !DILocation(line: 49, column: 39, scope: !1400)
!1402 = !DILocation(line: 49, column: 44, scope: !1400)
!1403 = !DILocation(line: 54, column: 1, scope: !194)
!1404 = !DISubprogram(name: "mbrtoc32", scope: !206, file: !206, line: 57, type: !1405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!27, !1407, !565, !27, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1384)
!1410 = distinct !DISubprogram(name: "clone_quoting_options", scope: !231, file: !231, line: 113, type: !1411, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1414)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1413, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1414 = !{!1415, !1416, !1417}
!1415 = !DILocalVariable(name: "o", arg: 1, scope: !1410, file: !231, line: 113, type: !1413)
!1416 = !DILocalVariable(name: "saved_errno", scope: !1410, file: !231, line: 115, type: !25)
!1417 = !DILocalVariable(name: "p", scope: !1410, file: !231, line: 116, type: !1413)
!1418 = !DILocation(line: 0, scope: !1410)
!1419 = !DILocation(line: 115, column: 21, scope: !1410)
!1420 = !DILocation(line: 116, column: 40, scope: !1410)
!1421 = !DILocation(line: 116, column: 31, scope: !1410)
!1422 = !DILocation(line: 118, column: 9, scope: !1410)
!1423 = !DILocation(line: 119, column: 3, scope: !1410)
!1424 = distinct !DISubprogram(name: "get_quoting_style", scope: !231, file: !231, line: 124, type: !1425, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1429)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!233, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "o", arg: 1, scope: !1424, file: !231, line: 124, type: !1427)
!1431 = !DILocation(line: 0, scope: !1424)
!1432 = !DILocation(line: 126, column: 11, scope: !1424)
!1433 = !DILocation(line: 126, column: 46, scope: !1424)
!1434 = !{!1435, !485, i64 0}
!1435 = !{!"quoting_options", !485, i64 0, !570, i64 4, !485, i64 8, !484, i64 40, !484, i64 48}
!1436 = !DILocation(line: 126, column: 3, scope: !1424)
!1437 = distinct !DISubprogram(name: "set_quoting_style", scope: !231, file: !231, line: 132, type: !1438, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !1413, !233}
!1440 = !{!1441, !1442}
!1441 = !DILocalVariable(name: "o", arg: 1, scope: !1437, file: !231, line: 132, type: !1413)
!1442 = !DILocalVariable(name: "s", arg: 2, scope: !1437, file: !231, line: 132, type: !233)
!1443 = !DILocation(line: 0, scope: !1437)
!1444 = !DILocation(line: 134, column: 4, scope: !1437)
!1445 = !DILocation(line: 134, column: 39, scope: !1437)
!1446 = !DILocation(line: 134, column: 45, scope: !1437)
!1447 = !DILocation(line: 135, column: 1, scope: !1437)
!1448 = distinct !DISubprogram(name: "set_char_quoting", scope: !231, file: !231, line: 143, type: !1449, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!25, !1413, !23, !25}
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1458, !1459}
!1452 = !DILocalVariable(name: "o", arg: 1, scope: !1448, file: !231, line: 143, type: !1413)
!1453 = !DILocalVariable(name: "c", arg: 2, scope: !1448, file: !231, line: 143, type: !23)
!1454 = !DILocalVariable(name: "i", arg: 3, scope: !1448, file: !231, line: 143, type: !25)
!1455 = !DILocalVariable(name: "uc", scope: !1448, file: !231, line: 145, type: !32)
!1456 = !DILocalVariable(name: "p", scope: !1448, file: !231, line: 146, type: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1458 = !DILocalVariable(name: "shift", scope: !1448, file: !231, line: 148, type: !25)
!1459 = !DILocalVariable(name: "r", scope: !1448, file: !231, line: 149, type: !7)
!1460 = !DILocation(line: 0, scope: !1448)
!1461 = !DILocation(line: 147, column: 6, scope: !1448)
!1462 = !DILocation(line: 147, column: 62, scope: !1448)
!1463 = !DILocation(line: 147, column: 57, scope: !1448)
!1464 = !DILocation(line: 148, column: 15, scope: !1448)
!1465 = !DILocation(line: 149, column: 21, scope: !1448)
!1466 = !DILocation(line: 149, column: 24, scope: !1448)
!1467 = !DILocation(line: 149, column: 34, scope: !1448)
!1468 = !DILocation(line: 150, column: 13, scope: !1448)
!1469 = !DILocation(line: 150, column: 19, scope: !1448)
!1470 = !DILocation(line: 150, column: 24, scope: !1448)
!1471 = !DILocation(line: 150, column: 6, scope: !1448)
!1472 = !DILocation(line: 151, column: 3, scope: !1448)
!1473 = distinct !DISubprogram(name: "set_quoting_flags", scope: !231, file: !231, line: 159, type: !1474, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1476)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!25, !1413, !25}
!1476 = !{!1477, !1478, !1479}
!1477 = !DILocalVariable(name: "o", arg: 1, scope: !1473, file: !231, line: 159, type: !1413)
!1478 = !DILocalVariable(name: "i", arg: 2, scope: !1473, file: !231, line: 159, type: !25)
!1479 = !DILocalVariable(name: "r", scope: !1473, file: !231, line: 163, type: !25)
!1480 = !DILocation(line: 0, scope: !1473)
!1481 = !DILocation(line: 161, column: 8, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1473, file: !231, line: 161, column: 7)
!1483 = !DILocation(line: 161, column: 7, scope: !1473)
!1484 = !DILocation(line: 163, column: 14, scope: !1473)
!1485 = !{!1435, !570, i64 4}
!1486 = !DILocation(line: 164, column: 12, scope: !1473)
!1487 = !DILocation(line: 165, column: 3, scope: !1473)
!1488 = distinct !DISubprogram(name: "set_custom_quoting", scope: !231, file: !231, line: 169, type: !1489, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !1413, !30, !30}
!1491 = !{!1492, !1493, !1494}
!1492 = !DILocalVariable(name: "o", arg: 1, scope: !1488, file: !231, line: 169, type: !1413)
!1493 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1488, file: !231, line: 170, type: !30)
!1494 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1488, file: !231, line: 170, type: !30)
!1495 = !DILocation(line: 0, scope: !1488)
!1496 = !DILocation(line: 172, column: 8, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1488, file: !231, line: 172, column: 7)
!1498 = !DILocation(line: 172, column: 7, scope: !1488)
!1499 = !DILocation(line: 174, column: 6, scope: !1488)
!1500 = !DILocation(line: 174, column: 12, scope: !1488)
!1501 = !DILocation(line: 175, column: 8, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1488, file: !231, line: 175, column: 7)
!1503 = !DILocation(line: 175, column: 19, scope: !1502)
!1504 = !DILocation(line: 176, column: 5, scope: !1502)
!1505 = !DILocation(line: 177, column: 6, scope: !1488)
!1506 = !DILocation(line: 177, column: 17, scope: !1488)
!1507 = !{!1435, !484, i64 40}
!1508 = !DILocation(line: 178, column: 6, scope: !1488)
!1509 = !DILocation(line: 178, column: 18, scope: !1488)
!1510 = !{!1435, !484, i64 48}
!1511 = !DILocation(line: 179, column: 1, scope: !1488)
!1512 = distinct !DISubprogram(name: "quotearg_buffer", scope: !231, file: !231, line: 774, type: !1513, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!27, !22, !27, !30, !27, !1427}
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523}
!1516 = !DILocalVariable(name: "buffer", arg: 1, scope: !1512, file: !231, line: 774, type: !22)
!1517 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1512, file: !231, line: 774, type: !27)
!1518 = !DILocalVariable(name: "arg", arg: 3, scope: !1512, file: !231, line: 775, type: !30)
!1519 = !DILocalVariable(name: "argsize", arg: 4, scope: !1512, file: !231, line: 775, type: !27)
!1520 = !DILocalVariable(name: "o", arg: 5, scope: !1512, file: !231, line: 776, type: !1427)
!1521 = !DILocalVariable(name: "p", scope: !1512, file: !231, line: 778, type: !1427)
!1522 = !DILocalVariable(name: "saved_errno", scope: !1512, file: !231, line: 779, type: !25)
!1523 = !DILocalVariable(name: "r", scope: !1512, file: !231, line: 780, type: !27)
!1524 = !DILocation(line: 0, scope: !1512)
!1525 = !DILocation(line: 778, column: 37, scope: !1512)
!1526 = !DILocation(line: 779, column: 21, scope: !1512)
!1527 = !DILocation(line: 781, column: 43, scope: !1512)
!1528 = !DILocation(line: 781, column: 53, scope: !1512)
!1529 = !DILocation(line: 781, column: 60, scope: !1512)
!1530 = !DILocation(line: 782, column: 43, scope: !1512)
!1531 = !DILocation(line: 782, column: 58, scope: !1512)
!1532 = !DILocation(line: 780, column: 14, scope: !1512)
!1533 = !DILocation(line: 783, column: 9, scope: !1512)
!1534 = !DILocation(line: 784, column: 3, scope: !1512)
!1535 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !231, file: !231, line: 251, type: !1536, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1540)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!27, !22, !27, !30, !27, !233, !25, !1538, !30, !30}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1565, !1567, !1570, !1571, !1572, !1573, !1576, !1577, !1580, !1584, !1585, !1593, !1596, !1597, !1599, !1600, !1601, !1602}
!1541 = !DILocalVariable(name: "buffer", arg: 1, scope: !1535, file: !231, line: 251, type: !22)
!1542 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1535, file: !231, line: 251, type: !27)
!1543 = !DILocalVariable(name: "arg", arg: 3, scope: !1535, file: !231, line: 252, type: !30)
!1544 = !DILocalVariable(name: "argsize", arg: 4, scope: !1535, file: !231, line: 252, type: !27)
!1545 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1535, file: !231, line: 253, type: !233)
!1546 = !DILocalVariable(name: "flags", arg: 6, scope: !1535, file: !231, line: 253, type: !25)
!1547 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1535, file: !231, line: 254, type: !1538)
!1548 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1535, file: !231, line: 255, type: !30)
!1549 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1535, file: !231, line: 256, type: !30)
!1550 = !DILocalVariable(name: "unibyte_locale", scope: !1535, file: !231, line: 258, type: !47)
!1551 = !DILocalVariable(name: "len", scope: !1535, file: !231, line: 260, type: !27)
!1552 = !DILocalVariable(name: "orig_buffersize", scope: !1535, file: !231, line: 261, type: !27)
!1553 = !DILocalVariable(name: "quote_string", scope: !1535, file: !231, line: 262, type: !30)
!1554 = !DILocalVariable(name: "quote_string_len", scope: !1535, file: !231, line: 263, type: !27)
!1555 = !DILocalVariable(name: "backslash_escapes", scope: !1535, file: !231, line: 264, type: !47)
!1556 = !DILocalVariable(name: "elide_outer_quotes", scope: !1535, file: !231, line: 265, type: !47)
!1557 = !DILocalVariable(name: "encountered_single_quote", scope: !1535, file: !231, line: 266, type: !47)
!1558 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1535, file: !231, line: 267, type: !47)
!1559 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1535, file: !231, line: 309, type: !47)
!1560 = !DILocalVariable(name: "lq", scope: !1561, file: !231, line: 361, type: !30)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !231, line: 361, column: 11)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !231, line: 360, column: 13)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !231, line: 333, column: 7)
!1564 = distinct !DILexicalBlock(scope: !1535, file: !231, line: 312, column: 5)
!1565 = !DILocalVariable(name: "i", scope: !1566, file: !231, line: 395, type: !27)
!1566 = distinct !DILexicalBlock(scope: !1535, file: !231, line: 395, column: 3)
!1567 = !DILocalVariable(name: "is_right_quote", scope: !1568, file: !231, line: 397, type: !47)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !231, line: 396, column: 5)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !231, line: 395, column: 3)
!1570 = !DILocalVariable(name: "escaping", scope: !1568, file: !231, line: 398, type: !47)
!1571 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1568, file: !231, line: 399, type: !47)
!1572 = !DILocalVariable(name: "c", scope: !1568, file: !231, line: 417, type: !32)
!1573 = !DILocalVariable(name: "m", scope: !1574, file: !231, line: 598, type: !27)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !231, line: 596, column: 11)
!1575 = distinct !DILexicalBlock(scope: !1568, file: !231, line: 419, column: 9)
!1576 = !DILocalVariable(name: "printable", scope: !1574, file: !231, line: 600, type: !47)
!1577 = !DILocalVariable(name: "mbs", scope: !1578, file: !231, line: 609, type: !290)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !231, line: 608, column: 15)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 602, column: 17)
!1580 = !DILocalVariable(name: "w", scope: !1581, file: !231, line: 618, type: !205)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !231, line: 617, column: 19)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !231, line: 616, column: 17)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !231, line: 616, column: 17)
!1584 = !DILocalVariable(name: "bytes", scope: !1581, file: !231, line: 619, type: !27)
!1585 = !DILocalVariable(name: "j", scope: !1586, file: !231, line: 648, type: !27)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !231, line: 648, column: 29)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !231, line: 647, column: 27)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !231, line: 645, column: 29)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !231, line: 636, column: 23)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !231, line: 628, column: 30)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !231, line: 623, column: 30)
!1592 = distinct !DILexicalBlock(scope: !1581, file: !231, line: 621, column: 25)
!1593 = !DILocalVariable(name: "ilim", scope: !1594, file: !231, line: 674, type: !27)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !231, line: 671, column: 15)
!1595 = distinct !DILexicalBlock(scope: !1574, file: !231, line: 670, column: 17)
!1596 = !DILabel(scope: !1535, name: "process_input", file: !231, line: 308)
!1597 = !DILabel(scope: !1598, name: "c_and_shell_escape", file: !231, line: 502)
!1598 = distinct !DILexicalBlock(scope: !1575, file: !231, line: 478, column: 9)
!1599 = !DILabel(scope: !1598, name: "c_escape", file: !231, line: 507)
!1600 = !DILabel(scope: !1568, name: "store_escape", file: !231, line: 709)
!1601 = !DILabel(scope: !1568, name: "store_c", file: !231, line: 712)
!1602 = !DILabel(scope: !1535, name: "force_outer_quoting_style", file: !231, line: 753)
!1603 = !DILocation(line: 0, scope: !1535)
!1604 = !DILocation(line: 258, column: 25, scope: !1535)
!1605 = !DILocation(line: 258, column: 36, scope: !1535)
!1606 = !DILocation(line: 267, column: 3, scope: !1535)
!1607 = !DILocation(line: 261, column: 10, scope: !1535)
!1608 = !DILocation(line: 262, column: 15, scope: !1535)
!1609 = !DILocation(line: 263, column: 10, scope: !1535)
!1610 = !DILocation(line: 308, column: 2, scope: !1535)
!1611 = !DILocation(line: 311, column: 3, scope: !1535)
!1612 = !DILocation(line: 318, column: 11, scope: !1564)
!1613 = !DILocation(line: 319, column: 9, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !231, line: 319, column: 9)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !231, line: 319, column: 9)
!1616 = distinct !DILexicalBlock(scope: !1564, file: !231, line: 318, column: 11)
!1617 = !DILocation(line: 319, column: 9, scope: !1615)
!1618 = !DILocation(line: 0, scope: !281, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 357, column: 26, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !231, line: 335, column: 11)
!1621 = distinct !DILexicalBlock(scope: !1563, file: !231, line: 334, column: 13)
!1622 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1619)
!1623 = !DILocation(line: 201, column: 19, scope: !1624, inlinedAt: !1619)
!1624 = distinct !DILexicalBlock(scope: !281, file: !231, line: 201, column: 7)
!1625 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1619)
!1626 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1619)
!1627 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1619)
!1628 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1619)
!1629 = !DILocalVariable(name: "ps", arg: 1, scope: !1630, file: !1381, line: 1135, type: !1633)
!1630 = distinct !DISubprogram(name: "mbszero", scope: !1381, file: !1381, line: 1135, type: !1631, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1634)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !1633}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1634 = !{!1629}
!1635 = !DILocation(line: 0, scope: !1630, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1619)
!1637 = !DILocalVariable(name: "__dest", arg: 1, scope: !1638, file: !1390, line: 57, type: !24)
!1638 = distinct !DISubprogram(name: "memset", scope: !1390, file: !1390, line: 57, type: !1391, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1639)
!1639 = !{!1637, !1640, !1641}
!1640 = !DILocalVariable(name: "__ch", arg: 2, scope: !1638, file: !1390, line: 57, type: !25)
!1641 = !DILocalVariable(name: "__len", arg: 3, scope: !1638, file: !1390, line: 57, type: !27)
!1642 = !DILocation(line: 0, scope: !1638, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 1137, column: 3, scope: !1630, inlinedAt: !1636)
!1644 = !DILocation(line: 59, column: 10, scope: !1638, inlinedAt: !1643)
!1645 = !DILocation(line: 231, column: 7, scope: !1646, inlinedAt: !1619)
!1646 = distinct !DILexicalBlock(scope: !281, file: !231, line: 231, column: 7)
!1647 = !DILocation(line: 231, column: 40, scope: !1646, inlinedAt: !1619)
!1648 = !DILocation(line: 231, column: 45, scope: !1646, inlinedAt: !1619)
!1649 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1619)
!1650 = !DILocation(line: 0, scope: !281, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 358, column: 27, scope: !1620)
!1652 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1651)
!1653 = !DILocation(line: 201, column: 19, scope: !1624, inlinedAt: !1651)
!1654 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1651)
!1655 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1651)
!1656 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1651)
!1657 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1651)
!1658 = !DILocation(line: 0, scope: !1630, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1651)
!1660 = !DILocation(line: 0, scope: !1638, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 1137, column: 3, scope: !1630, inlinedAt: !1659)
!1662 = !DILocation(line: 59, column: 10, scope: !1638, inlinedAt: !1661)
!1663 = !DILocation(line: 231, column: 7, scope: !1646, inlinedAt: !1651)
!1664 = !DILocation(line: 231, column: 40, scope: !1646, inlinedAt: !1651)
!1665 = !DILocation(line: 231, column: 45, scope: !1646, inlinedAt: !1651)
!1666 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1651)
!1667 = !DILocation(line: 360, column: 13, scope: !1563)
!1668 = !DILocation(line: 0, scope: !1561)
!1669 = !DILocation(line: 361, column: 45, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1561, file: !231, line: 361, column: 11)
!1671 = !DILocation(line: 361, column: 11, scope: !1561)
!1672 = !DILocation(line: 362, column: 13, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !231, line: 362, column: 13)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !231, line: 362, column: 13)
!1675 = !DILocation(line: 362, column: 13, scope: !1674)
!1676 = !DILocation(line: 361, column: 52, scope: !1670)
!1677 = distinct !{!1677, !1671, !1678, !535}
!1678 = !DILocation(line: 362, column: 13, scope: !1561)
!1679 = !DILocation(line: 260, column: 10, scope: !1535)
!1680 = !DILocation(line: 365, column: 28, scope: !1563)
!1681 = !DILocation(line: 367, column: 7, scope: !1564)
!1682 = !DILocation(line: 370, column: 7, scope: !1564)
!1683 = !DILocation(line: 376, column: 11, scope: !1564)
!1684 = !DILocation(line: 381, column: 11, scope: !1564)
!1685 = !DILocation(line: 382, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !231, line: 382, column: 9)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !231, line: 382, column: 9)
!1688 = distinct !DILexicalBlock(scope: !1564, file: !231, line: 381, column: 11)
!1689 = !DILocation(line: 382, column: 9, scope: !1687)
!1690 = !DILocation(line: 389, column: 7, scope: !1564)
!1691 = !DILocation(line: 392, column: 7, scope: !1564)
!1692 = !DILocation(line: 0, scope: !1566)
!1693 = !DILocation(line: 395, column: 8, scope: !1566)
!1694 = !DILocation(line: 395, column: 34, scope: !1569)
!1695 = !DILocation(line: 395, column: 26, scope: !1569)
!1696 = !DILocation(line: 395, column: 48, scope: !1569)
!1697 = !DILocation(line: 395, column: 55, scope: !1569)
!1698 = !DILocation(line: 395, column: 3, scope: !1566)
!1699 = !DILocation(line: 395, column: 67, scope: !1569)
!1700 = !DILocation(line: 0, scope: !1568)
!1701 = !DILocation(line: 402, column: 11, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1568, file: !231, line: 401, column: 11)
!1703 = !DILocation(line: 404, column: 17, scope: !1702)
!1704 = !DILocation(line: 405, column: 39, scope: !1702)
!1705 = !DILocation(line: 409, column: 32, scope: !1702)
!1706 = !DILocation(line: 405, column: 19, scope: !1702)
!1707 = !DILocation(line: 405, column: 15, scope: !1702)
!1708 = !DILocation(line: 410, column: 11, scope: !1702)
!1709 = !DILocation(line: 410, column: 25, scope: !1702)
!1710 = !DILocalVariable(name: "__s1", arg: 1, scope: !1711, file: !519, line: 974, type: !687)
!1711 = distinct !DISubprogram(name: "memeq", scope: !519, file: !519, line: 974, type: !1352, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1712)
!1712 = !{!1710, !1713, !1714}
!1713 = !DILocalVariable(name: "__s2", arg: 2, scope: !1711, file: !519, line: 974, type: !687)
!1714 = !DILocalVariable(name: "__n", arg: 3, scope: !1711, file: !519, line: 974, type: !27)
!1715 = !DILocation(line: 0, scope: !1711, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 410, column: 14, scope: !1702)
!1717 = !DILocation(line: 976, column: 11, scope: !1711, inlinedAt: !1716)
!1718 = !DILocation(line: 976, column: 10, scope: !1711, inlinedAt: !1716)
!1719 = !DILocation(line: 401, column: 11, scope: !1568)
!1720 = !DILocation(line: 417, column: 25, scope: !1568)
!1721 = !DILocation(line: 418, column: 7, scope: !1568)
!1722 = !DILocation(line: 421, column: 15, scope: !1575)
!1723 = !DILocation(line: 423, column: 15, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !231, line: 423, column: 15)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !231, line: 422, column: 13)
!1726 = distinct !DILexicalBlock(scope: !1575, file: !231, line: 421, column: 15)
!1727 = !DILocation(line: 423, column: 15, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !231, line: 423, column: 15)
!1729 = !DILocation(line: 423, column: 15, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !231, line: 423, column: 15)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !231, line: 423, column: 15)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !231, line: 423, column: 15)
!1733 = !DILocation(line: 423, column: 15, scope: !1731)
!1734 = !DILocation(line: 423, column: 15, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !231, line: 423, column: 15)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !231, line: 423, column: 15)
!1737 = !DILocation(line: 423, column: 15, scope: !1736)
!1738 = !DILocation(line: 423, column: 15, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !231, line: 423, column: 15)
!1740 = distinct !DILexicalBlock(scope: !1732, file: !231, line: 423, column: 15)
!1741 = !DILocation(line: 423, column: 15, scope: !1740)
!1742 = !DILocation(line: 423, column: 15, scope: !1732)
!1743 = !DILocation(line: 423, column: 15, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !231, line: 423, column: 15)
!1745 = distinct !DILexicalBlock(scope: !1724, file: !231, line: 423, column: 15)
!1746 = !DILocation(line: 423, column: 15, scope: !1745)
!1747 = !DILocation(line: 431, column: 19, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1725, file: !231, line: 430, column: 19)
!1749 = !DILocation(line: 431, column: 24, scope: !1748)
!1750 = !DILocation(line: 431, column: 28, scope: !1748)
!1751 = !DILocation(line: 431, column: 38, scope: !1748)
!1752 = !DILocation(line: 431, column: 48, scope: !1748)
!1753 = !DILocation(line: 431, column: 59, scope: !1748)
!1754 = !DILocation(line: 433, column: 19, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !231, line: 433, column: 19)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !231, line: 433, column: 19)
!1757 = distinct !DILexicalBlock(scope: !1748, file: !231, line: 432, column: 17)
!1758 = !DILocation(line: 433, column: 19, scope: !1756)
!1759 = !DILocation(line: 434, column: 19, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !231, line: 434, column: 19)
!1761 = distinct !DILexicalBlock(scope: !1757, file: !231, line: 434, column: 19)
!1762 = !DILocation(line: 434, column: 19, scope: !1761)
!1763 = !DILocation(line: 435, column: 17, scope: !1757)
!1764 = !DILocation(line: 442, column: 20, scope: !1726)
!1765 = !DILocation(line: 447, column: 11, scope: !1575)
!1766 = !DILocation(line: 450, column: 19, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1575, file: !231, line: 448, column: 13)
!1768 = !DILocation(line: 456, column: 19, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1767, file: !231, line: 455, column: 19)
!1770 = !DILocation(line: 456, column: 24, scope: !1769)
!1771 = !DILocation(line: 456, column: 28, scope: !1769)
!1772 = !DILocation(line: 456, column: 38, scope: !1769)
!1773 = !DILocation(line: 456, column: 47, scope: !1769)
!1774 = !DILocation(line: 456, column: 41, scope: !1769)
!1775 = !DILocation(line: 456, column: 52, scope: !1769)
!1776 = !DILocation(line: 455, column: 19, scope: !1767)
!1777 = !DILocation(line: 457, column: 25, scope: !1769)
!1778 = !DILocation(line: 457, column: 17, scope: !1769)
!1779 = !DILocation(line: 464, column: 25, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1769, file: !231, line: 458, column: 19)
!1781 = !DILocation(line: 468, column: 21, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !231, line: 468, column: 21)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !231, line: 468, column: 21)
!1784 = !DILocation(line: 468, column: 21, scope: !1783)
!1785 = !DILocation(line: 469, column: 21, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !231, line: 469, column: 21)
!1787 = distinct !DILexicalBlock(scope: !1780, file: !231, line: 469, column: 21)
!1788 = !DILocation(line: 469, column: 21, scope: !1787)
!1789 = !DILocation(line: 470, column: 21, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !231, line: 470, column: 21)
!1791 = distinct !DILexicalBlock(scope: !1780, file: !231, line: 470, column: 21)
!1792 = !DILocation(line: 470, column: 21, scope: !1791)
!1793 = !DILocation(line: 471, column: 21, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !231, line: 471, column: 21)
!1795 = distinct !DILexicalBlock(scope: !1780, file: !231, line: 471, column: 21)
!1796 = !DILocation(line: 471, column: 21, scope: !1795)
!1797 = !DILocation(line: 472, column: 21, scope: !1780)
!1798 = !DILocation(line: 482, column: 33, scope: !1598)
!1799 = !DILocation(line: 483, column: 33, scope: !1598)
!1800 = !DILocation(line: 485, column: 33, scope: !1598)
!1801 = !DILocation(line: 486, column: 33, scope: !1598)
!1802 = !DILocation(line: 487, column: 33, scope: !1598)
!1803 = !DILocation(line: 490, column: 17, scope: !1598)
!1804 = !DILocation(line: 492, column: 21, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !231, line: 491, column: 15)
!1806 = distinct !DILexicalBlock(scope: !1598, file: !231, line: 490, column: 17)
!1807 = !DILocation(line: 499, column: 35, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1598, file: !231, line: 499, column: 17)
!1809 = !DILocation(line: 499, column: 57, scope: !1808)
!1810 = !DILocation(line: 0, scope: !1598)
!1811 = !DILocation(line: 502, column: 11, scope: !1598)
!1812 = !DILocation(line: 504, column: 17, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1598, file: !231, line: 503, column: 17)
!1814 = !DILocation(line: 507, column: 11, scope: !1598)
!1815 = !DILocation(line: 508, column: 17, scope: !1598)
!1816 = !DILocation(line: 517, column: 15, scope: !1575)
!1817 = !DILocation(line: 517, column: 40, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1575, file: !231, line: 517, column: 15)
!1819 = !DILocation(line: 517, column: 47, scope: !1818)
!1820 = !DILocation(line: 517, column: 18, scope: !1818)
!1821 = !DILocation(line: 521, column: 17, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1575, file: !231, line: 521, column: 15)
!1823 = !DILocation(line: 521, column: 15, scope: !1575)
!1824 = !DILocation(line: 525, column: 11, scope: !1575)
!1825 = !DILocation(line: 537, column: 15, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1575, file: !231, line: 536, column: 15)
!1827 = !DILocation(line: 536, column: 15, scope: !1575)
!1828 = !DILocation(line: 544, column: 15, scope: !1575)
!1829 = !DILocation(line: 546, column: 19, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !231, line: 545, column: 13)
!1831 = distinct !DILexicalBlock(scope: !1575, file: !231, line: 544, column: 15)
!1832 = !DILocation(line: 549, column: 19, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !231, line: 549, column: 19)
!1834 = !DILocation(line: 549, column: 30, scope: !1833)
!1835 = !DILocation(line: 558, column: 15, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !231, line: 558, column: 15)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !231, line: 558, column: 15)
!1838 = !DILocation(line: 558, column: 15, scope: !1837)
!1839 = !DILocation(line: 559, column: 15, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !231, line: 559, column: 15)
!1841 = distinct !DILexicalBlock(scope: !1830, file: !231, line: 559, column: 15)
!1842 = !DILocation(line: 559, column: 15, scope: !1841)
!1843 = !DILocation(line: 560, column: 15, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !231, line: 560, column: 15)
!1845 = distinct !DILexicalBlock(scope: !1830, file: !231, line: 560, column: 15)
!1846 = !DILocation(line: 560, column: 15, scope: !1845)
!1847 = !DILocation(line: 562, column: 13, scope: !1830)
!1848 = !DILocation(line: 602, column: 17, scope: !1574)
!1849 = !DILocation(line: 0, scope: !1574)
!1850 = !DILocation(line: 605, column: 29, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1579, file: !231, line: 603, column: 15)
!1852 = !DILocation(line: 605, column: 41, scope: !1851)
!1853 = !DILocation(line: 670, column: 23, scope: !1595)
!1854 = !DILocation(line: 609, column: 17, scope: !1578)
!1855 = !DILocation(line: 609, column: 27, scope: !1578)
!1856 = !DILocation(line: 0, scope: !1630, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 609, column: 32, scope: !1578)
!1858 = !DILocation(line: 0, scope: !1638, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 1137, column: 3, scope: !1630, inlinedAt: !1857)
!1860 = !DILocation(line: 59, column: 10, scope: !1638, inlinedAt: !1859)
!1861 = !DILocation(line: 613, column: 29, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1578, file: !231, line: 613, column: 21)
!1863 = !DILocation(line: 613, column: 21, scope: !1578)
!1864 = !DILocation(line: 614, column: 29, scope: !1862)
!1865 = !DILocation(line: 614, column: 19, scope: !1862)
!1866 = !DILocation(line: 618, column: 21, scope: !1581)
!1867 = !DILocation(line: 620, column: 54, scope: !1581)
!1868 = !DILocation(line: 0, scope: !1581)
!1869 = !DILocation(line: 619, column: 36, scope: !1581)
!1870 = !DILocation(line: 621, column: 25, scope: !1581)
!1871 = !DILocation(line: 631, column: 38, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1590, file: !231, line: 629, column: 23)
!1873 = !DILocation(line: 631, column: 48, scope: !1872)
!1874 = !DILocation(line: 665, column: 19, scope: !1582)
!1875 = !DILocation(line: 666, column: 15, scope: !1579)
!1876 = !DILocation(line: 626, column: 25, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1591, file: !231, line: 624, column: 23)
!1878 = !DILocation(line: 631, column: 51, scope: !1872)
!1879 = !DILocation(line: 631, column: 25, scope: !1872)
!1880 = !DILocation(line: 632, column: 28, scope: !1872)
!1881 = !DILocation(line: 631, column: 34, scope: !1872)
!1882 = distinct !{!1882, !1879, !1880, !535}
!1883 = !DILocation(line: 646, column: 29, scope: !1588)
!1884 = !DILocation(line: 0, scope: !1586)
!1885 = !DILocation(line: 649, column: 49, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1586, file: !231, line: 648, column: 29)
!1887 = !DILocation(line: 649, column: 39, scope: !1886)
!1888 = !DILocation(line: 649, column: 31, scope: !1886)
!1889 = !DILocation(line: 648, column: 60, scope: !1886)
!1890 = !DILocation(line: 648, column: 50, scope: !1886)
!1891 = !DILocation(line: 648, column: 29, scope: !1586)
!1892 = distinct !{!1892, !1891, !1893, !535}
!1893 = !DILocation(line: 654, column: 33, scope: !1586)
!1894 = !DILocation(line: 657, column: 43, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1589, file: !231, line: 657, column: 29)
!1896 = !DILocalVariable(name: "wc", arg: 1, scope: !1897, file: !1898, line: 865, type: !1901)
!1897 = distinct !DISubprogram(name: "c32isprint", scope: !1898, file: !1898, line: 865, type: !1899, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1903)
!1898 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!25, !1901}
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1902, line: 20, baseType: !7)
!1902 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1903 = !{!1896}
!1904 = !DILocation(line: 0, scope: !1897, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 657, column: 31, scope: !1895)
!1906 = !DILocation(line: 871, column: 10, scope: !1897, inlinedAt: !1905)
!1907 = !DILocation(line: 657, column: 31, scope: !1895)
!1908 = !DILocation(line: 664, column: 23, scope: !1581)
!1909 = !DILocation(line: 753, column: 2, scope: !1535)
!1910 = !DILocation(line: 756, column: 51, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1535, file: !231, line: 756, column: 7)
!1912 = !DILocation(line: 670, column: 19, scope: !1595)
!1913 = !DILocation(line: 670, column: 45, scope: !1595)
!1914 = !DILocation(line: 674, column: 33, scope: !1594)
!1915 = !DILocation(line: 0, scope: !1594)
!1916 = !DILocation(line: 676, column: 17, scope: !1594)
!1917 = !DILocation(line: 398, column: 12, scope: !1568)
!1918 = !DILocation(line: 678, column: 43, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !231, line: 678, column: 25)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !231, line: 677, column: 19)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !231, line: 676, column: 17)
!1922 = distinct !DILexicalBlock(scope: !1594, file: !231, line: 676, column: 17)
!1923 = !DILocation(line: 680, column: 25, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !231, line: 680, column: 25)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !231, line: 679, column: 23)
!1926 = !DILocation(line: 680, column: 25, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1924, file: !231, line: 680, column: 25)
!1928 = !DILocation(line: 680, column: 25, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !231, line: 680, column: 25)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !231, line: 680, column: 25)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !231, line: 680, column: 25)
!1932 = !DILocation(line: 680, column: 25, scope: !1930)
!1933 = !DILocation(line: 680, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !231, line: 680, column: 25)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !231, line: 680, column: 25)
!1936 = !DILocation(line: 680, column: 25, scope: !1935)
!1937 = !DILocation(line: 680, column: 25, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !231, line: 680, column: 25)
!1939 = distinct !DILexicalBlock(scope: !1931, file: !231, line: 680, column: 25)
!1940 = !DILocation(line: 680, column: 25, scope: !1939)
!1941 = !DILocation(line: 680, column: 25, scope: !1931)
!1942 = !DILocation(line: 680, column: 25, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !231, line: 680, column: 25)
!1944 = distinct !DILexicalBlock(scope: !1924, file: !231, line: 680, column: 25)
!1945 = !DILocation(line: 680, column: 25, scope: !1944)
!1946 = !DILocation(line: 681, column: 25, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !231, line: 681, column: 25)
!1948 = distinct !DILexicalBlock(scope: !1925, file: !231, line: 681, column: 25)
!1949 = !DILocation(line: 681, column: 25, scope: !1948)
!1950 = !DILocation(line: 682, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !231, line: 682, column: 25)
!1952 = distinct !DILexicalBlock(scope: !1925, file: !231, line: 682, column: 25)
!1953 = !DILocation(line: 682, column: 25, scope: !1952)
!1954 = !DILocation(line: 683, column: 38, scope: !1925)
!1955 = !DILocation(line: 683, column: 33, scope: !1925)
!1956 = !DILocation(line: 684, column: 23, scope: !1925)
!1957 = !DILocation(line: 685, column: 30, scope: !1919)
!1958 = !DILocation(line: 687, column: 25, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !231, line: 687, column: 25)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !231, line: 687, column: 25)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !231, line: 686, column: 23)
!1962 = distinct !DILexicalBlock(scope: !1919, file: !231, line: 685, column: 30)
!1963 = !DILocation(line: 687, column: 25, scope: !1960)
!1964 = !DILocation(line: 689, column: 23, scope: !1961)
!1965 = !DILocation(line: 690, column: 35, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1920, file: !231, line: 690, column: 25)
!1967 = !DILocation(line: 690, column: 30, scope: !1966)
!1968 = !DILocation(line: 690, column: 25, scope: !1920)
!1969 = !DILocation(line: 692, column: 21, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !231, line: 692, column: 21)
!1971 = distinct !DILexicalBlock(scope: !1920, file: !231, line: 692, column: 21)
!1972 = !DILocation(line: 692, column: 21, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !231, line: 692, column: 21)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !231, line: 692, column: 21)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !231, line: 692, column: 21)
!1976 = !DILocation(line: 692, column: 21, scope: !1974)
!1977 = !DILocation(line: 692, column: 21, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !231, line: 692, column: 21)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !231, line: 692, column: 21)
!1980 = !DILocation(line: 692, column: 21, scope: !1979)
!1981 = !DILocation(line: 692, column: 21, scope: !1975)
!1982 = !DILocation(line: 0, scope: !1920)
!1983 = !DILocation(line: 693, column: 21, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !231, line: 693, column: 21)
!1985 = distinct !DILexicalBlock(scope: !1920, file: !231, line: 693, column: 21)
!1986 = !DILocation(line: 693, column: 21, scope: !1985)
!1987 = !DILocation(line: 694, column: 25, scope: !1920)
!1988 = !DILocation(line: 676, column: 17, scope: !1921)
!1989 = distinct !{!1989, !1990, !1991}
!1990 = !DILocation(line: 676, column: 17, scope: !1922)
!1991 = !DILocation(line: 695, column: 19, scope: !1922)
!1992 = !DILocation(line: 409, column: 30, scope: !1702)
!1993 = !DILocation(line: 702, column: 34, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1568, file: !231, line: 702, column: 11)
!1995 = !DILocation(line: 704, column: 14, scope: !1994)
!1996 = !DILocation(line: 705, column: 14, scope: !1994)
!1997 = !DILocation(line: 705, column: 35, scope: !1994)
!1998 = !DILocation(line: 705, column: 17, scope: !1994)
!1999 = !DILocation(line: 705, column: 47, scope: !1994)
!2000 = !DILocation(line: 705, column: 65, scope: !1994)
!2001 = !DILocation(line: 706, column: 11, scope: !1994)
!2002 = !DILocation(line: 702, column: 11, scope: !1568)
!2003 = !DILocation(line: 395, column: 15, scope: !1566)
!2004 = !DILocation(line: 709, column: 5, scope: !1568)
!2005 = !DILocation(line: 710, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1568, file: !231, line: 710, column: 7)
!2007 = !DILocation(line: 710, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2006, file: !231, line: 710, column: 7)
!2009 = !DILocation(line: 710, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !231, line: 710, column: 7)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !231, line: 710, column: 7)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !231, line: 710, column: 7)
!2013 = !DILocation(line: 710, column: 7, scope: !2011)
!2014 = !DILocation(line: 710, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !231, line: 710, column: 7)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !231, line: 710, column: 7)
!2017 = !DILocation(line: 710, column: 7, scope: !2016)
!2018 = !DILocation(line: 710, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !231, line: 710, column: 7)
!2020 = distinct !DILexicalBlock(scope: !2012, file: !231, line: 710, column: 7)
!2021 = !DILocation(line: 710, column: 7, scope: !2020)
!2022 = !DILocation(line: 710, column: 7, scope: !2012)
!2023 = !DILocation(line: 710, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !231, line: 710, column: 7)
!2025 = distinct !DILexicalBlock(scope: !2006, file: !231, line: 710, column: 7)
!2026 = !DILocation(line: 710, column: 7, scope: !2025)
!2027 = !DILocation(line: 712, column: 5, scope: !1568)
!2028 = !DILocation(line: 713, column: 7, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !231, line: 713, column: 7)
!2030 = distinct !DILexicalBlock(scope: !1568, file: !231, line: 713, column: 7)
!2031 = !DILocation(line: 417, column: 21, scope: !1568)
!2032 = !DILocation(line: 713, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !231, line: 713, column: 7)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !231, line: 713, column: 7)
!2035 = distinct !DILexicalBlock(scope: !2029, file: !231, line: 713, column: 7)
!2036 = !DILocation(line: 713, column: 7, scope: !2034)
!2037 = !DILocation(line: 713, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !231, line: 713, column: 7)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !231, line: 713, column: 7)
!2040 = !DILocation(line: 713, column: 7, scope: !2039)
!2041 = !DILocation(line: 713, column: 7, scope: !2035)
!2042 = !DILocation(line: 714, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !231, line: 714, column: 7)
!2044 = distinct !DILexicalBlock(scope: !1568, file: !231, line: 714, column: 7)
!2045 = !DILocation(line: 714, column: 7, scope: !2044)
!2046 = !DILocation(line: 716, column: 11, scope: !1568)
!2047 = !DILocation(line: 718, column: 5, scope: !1569)
!2048 = !DILocation(line: 395, column: 82, scope: !1569)
!2049 = !DILocation(line: 395, column: 3, scope: !1569)
!2050 = distinct !{!2050, !1698, !2051, !535}
!2051 = !DILocation(line: 718, column: 5, scope: !1566)
!2052 = !DILocation(line: 720, column: 11, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1535, file: !231, line: 720, column: 7)
!2054 = !DILocation(line: 720, column: 16, scope: !2053)
!2055 = !DILocation(line: 728, column: 51, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1535, file: !231, line: 728, column: 7)
!2057 = !DILocation(line: 731, column: 11, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2056, file: !231, line: 730, column: 5)
!2059 = !DILocation(line: 732, column: 16, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2058, file: !231, line: 731, column: 11)
!2061 = !DILocation(line: 732, column: 9, scope: !2060)
!2062 = !DILocation(line: 736, column: 18, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !231, line: 736, column: 16)
!2064 = !DILocation(line: 736, column: 29, scope: !2063)
!2065 = !DILocation(line: 745, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1535, file: !231, line: 745, column: 7)
!2067 = !DILocation(line: 745, column: 20, scope: !2066)
!2068 = !DILocation(line: 746, column: 12, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !231, line: 746, column: 5)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !231, line: 746, column: 5)
!2071 = !DILocation(line: 746, column: 5, scope: !2070)
!2072 = !DILocation(line: 747, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !231, line: 747, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2069, file: !231, line: 747, column: 7)
!2075 = !DILocation(line: 747, column: 7, scope: !2074)
!2076 = !DILocation(line: 746, column: 39, scope: !2069)
!2077 = distinct !{!2077, !2071, !2078, !535}
!2078 = !DILocation(line: 747, column: 7, scope: !2070)
!2079 = !DILocation(line: 749, column: 11, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1535, file: !231, line: 749, column: 7)
!2081 = !DILocation(line: 749, column: 7, scope: !1535)
!2082 = !DILocation(line: 750, column: 5, scope: !2080)
!2083 = !DILocation(line: 750, column: 17, scope: !2080)
!2084 = !DILocation(line: 756, column: 21, scope: !1911)
!2085 = !DILocation(line: 760, column: 42, scope: !1535)
!2086 = !DILocation(line: 758, column: 10, scope: !1535)
!2087 = !DILocation(line: 758, column: 3, scope: !1535)
!2088 = !DILocation(line: 762, column: 1, scope: !1535)
!2089 = !DISubprogram(name: "iswprint", scope: !2090, file: !2090, line: 120, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!2090 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2091 = distinct !DISubprogram(name: "quotearg_alloc", scope: !231, file: !231, line: 788, type: !2092, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!22, !30, !27, !1427}
!2094 = !{!2095, !2096, !2097}
!2095 = !DILocalVariable(name: "arg", arg: 1, scope: !2091, file: !231, line: 788, type: !30)
!2096 = !DILocalVariable(name: "argsize", arg: 2, scope: !2091, file: !231, line: 788, type: !27)
!2097 = !DILocalVariable(name: "o", arg: 3, scope: !2091, file: !231, line: 789, type: !1427)
!2098 = !DILocation(line: 0, scope: !2091)
!2099 = !DILocalVariable(name: "arg", arg: 1, scope: !2100, file: !231, line: 801, type: !30)
!2100 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !231, file: !231, line: 801, type: !2101, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!22, !30, !27, !371, !1427}
!2103 = !{!2099, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!2104 = !DILocalVariable(name: "argsize", arg: 2, scope: !2100, file: !231, line: 801, type: !27)
!2105 = !DILocalVariable(name: "size", arg: 3, scope: !2100, file: !231, line: 801, type: !371)
!2106 = !DILocalVariable(name: "o", arg: 4, scope: !2100, file: !231, line: 802, type: !1427)
!2107 = !DILocalVariable(name: "p", scope: !2100, file: !231, line: 804, type: !1427)
!2108 = !DILocalVariable(name: "saved_errno", scope: !2100, file: !231, line: 805, type: !25)
!2109 = !DILocalVariable(name: "flags", scope: !2100, file: !231, line: 807, type: !25)
!2110 = !DILocalVariable(name: "bufsize", scope: !2100, file: !231, line: 808, type: !27)
!2111 = !DILocalVariable(name: "buf", scope: !2100, file: !231, line: 812, type: !22)
!2112 = !DILocation(line: 0, scope: !2100, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 791, column: 10, scope: !2091)
!2114 = !DILocation(line: 804, column: 37, scope: !2100, inlinedAt: !2113)
!2115 = !DILocation(line: 805, column: 21, scope: !2100, inlinedAt: !2113)
!2116 = !DILocation(line: 807, column: 18, scope: !2100, inlinedAt: !2113)
!2117 = !DILocation(line: 807, column: 24, scope: !2100, inlinedAt: !2113)
!2118 = !DILocation(line: 808, column: 72, scope: !2100, inlinedAt: !2113)
!2119 = !DILocation(line: 809, column: 53, scope: !2100, inlinedAt: !2113)
!2120 = !DILocation(line: 810, column: 49, scope: !2100, inlinedAt: !2113)
!2121 = !DILocation(line: 811, column: 49, scope: !2100, inlinedAt: !2113)
!2122 = !DILocation(line: 808, column: 20, scope: !2100, inlinedAt: !2113)
!2123 = !DILocation(line: 811, column: 62, scope: !2100, inlinedAt: !2113)
!2124 = !DILocation(line: 812, column: 15, scope: !2100, inlinedAt: !2113)
!2125 = !DILocation(line: 813, column: 60, scope: !2100, inlinedAt: !2113)
!2126 = !DILocation(line: 815, column: 32, scope: !2100, inlinedAt: !2113)
!2127 = !DILocation(line: 815, column: 47, scope: !2100, inlinedAt: !2113)
!2128 = !DILocation(line: 813, column: 3, scope: !2100, inlinedAt: !2113)
!2129 = !DILocation(line: 816, column: 9, scope: !2100, inlinedAt: !2113)
!2130 = !DILocation(line: 791, column: 3, scope: !2091)
!2131 = !DILocation(line: 0, scope: !2100)
!2132 = !DILocation(line: 804, column: 37, scope: !2100)
!2133 = !DILocation(line: 805, column: 21, scope: !2100)
!2134 = !DILocation(line: 807, column: 18, scope: !2100)
!2135 = !DILocation(line: 807, column: 27, scope: !2100)
!2136 = !DILocation(line: 807, column: 24, scope: !2100)
!2137 = !DILocation(line: 808, column: 72, scope: !2100)
!2138 = !DILocation(line: 809, column: 53, scope: !2100)
!2139 = !DILocation(line: 810, column: 49, scope: !2100)
!2140 = !DILocation(line: 811, column: 49, scope: !2100)
!2141 = !DILocation(line: 808, column: 20, scope: !2100)
!2142 = !DILocation(line: 811, column: 62, scope: !2100)
!2143 = !DILocation(line: 812, column: 15, scope: !2100)
!2144 = !DILocation(line: 813, column: 60, scope: !2100)
!2145 = !DILocation(line: 815, column: 32, scope: !2100)
!2146 = !DILocation(line: 815, column: 47, scope: !2100)
!2147 = !DILocation(line: 813, column: 3, scope: !2100)
!2148 = !DILocation(line: 816, column: 9, scope: !2100)
!2149 = !DILocation(line: 817, column: 7, scope: !2100)
!2150 = !DILocation(line: 818, column: 11, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2100, file: !231, line: 817, column: 7)
!2152 = !{!784, !784, i64 0}
!2153 = !DILocation(line: 818, column: 5, scope: !2151)
!2154 = !DILocation(line: 819, column: 3, scope: !2100)
!2155 = distinct !DISubprogram(name: "quotearg_free", scope: !231, file: !231, line: 837, type: !184, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2156)
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "sv", scope: !2155, file: !231, line: 839, type: !304)
!2158 = !DILocalVariable(name: "i", scope: !2159, file: !231, line: 840, type: !25)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !231, line: 840, column: 3)
!2160 = !DILocation(line: 839, column: 24, scope: !2155)
!2161 = !DILocation(line: 0, scope: !2155)
!2162 = !DILocation(line: 0, scope: !2159)
!2163 = !DILocation(line: 840, column: 21, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2159, file: !231, line: 840, column: 3)
!2165 = !DILocation(line: 840, column: 3, scope: !2159)
!2166 = !DILocation(line: 842, column: 13, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2155, file: !231, line: 842, column: 7)
!2168 = !{!2169, !484, i64 8}
!2169 = !{!"slotvec", !784, i64 0, !484, i64 8}
!2170 = !DILocation(line: 842, column: 17, scope: !2167)
!2171 = !DILocation(line: 842, column: 7, scope: !2155)
!2172 = !DILocation(line: 841, column: 17, scope: !2164)
!2173 = !DILocation(line: 841, column: 5, scope: !2164)
!2174 = !DILocation(line: 840, column: 32, scope: !2164)
!2175 = distinct !{!2175, !2165, !2176, !535}
!2176 = !DILocation(line: 841, column: 20, scope: !2159)
!2177 = !DILocation(line: 844, column: 7, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2167, file: !231, line: 843, column: 5)
!2179 = !DILocation(line: 845, column: 21, scope: !2178)
!2180 = !{!2169, !784, i64 0}
!2181 = !DILocation(line: 846, column: 20, scope: !2178)
!2182 = !DILocation(line: 847, column: 5, scope: !2178)
!2183 = !DILocation(line: 848, column: 10, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2155, file: !231, line: 848, column: 7)
!2185 = !DILocation(line: 848, column: 7, scope: !2155)
!2186 = !DILocation(line: 850, column: 13, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !231, line: 849, column: 5)
!2188 = !DILocation(line: 850, column: 7, scope: !2187)
!2189 = !DILocation(line: 851, column: 15, scope: !2187)
!2190 = !DILocation(line: 852, column: 5, scope: !2187)
!2191 = !DILocation(line: 853, column: 10, scope: !2155)
!2192 = !DILocation(line: 854, column: 1, scope: !2155)
!2193 = distinct !DISubprogram(name: "quotearg_n", scope: !231, file: !231, line: 919, type: !677, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2194)
!2194 = !{!2195, !2196}
!2195 = !DILocalVariable(name: "n", arg: 1, scope: !2193, file: !231, line: 919, type: !25)
!2196 = !DILocalVariable(name: "arg", arg: 2, scope: !2193, file: !231, line: 919, type: !30)
!2197 = !DILocation(line: 0, scope: !2193)
!2198 = !DILocation(line: 921, column: 10, scope: !2193)
!2199 = !DILocation(line: 921, column: 3, scope: !2193)
!2200 = distinct !DISubprogram(name: "quotearg_n_options", scope: !231, file: !231, line: 866, type: !2201, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!22, !25, !30, !27, !1427}
!2203 = !{!2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2214, !2215, !2217, !2218, !2219}
!2204 = !DILocalVariable(name: "n", arg: 1, scope: !2200, file: !231, line: 866, type: !25)
!2205 = !DILocalVariable(name: "arg", arg: 2, scope: !2200, file: !231, line: 866, type: !30)
!2206 = !DILocalVariable(name: "argsize", arg: 3, scope: !2200, file: !231, line: 866, type: !27)
!2207 = !DILocalVariable(name: "options", arg: 4, scope: !2200, file: !231, line: 867, type: !1427)
!2208 = !DILocalVariable(name: "saved_errno", scope: !2200, file: !231, line: 869, type: !25)
!2209 = !DILocalVariable(name: "sv", scope: !2200, file: !231, line: 871, type: !304)
!2210 = !DILocalVariable(name: "nslots_max", scope: !2200, file: !231, line: 873, type: !25)
!2211 = !DILocalVariable(name: "preallocated", scope: !2212, file: !231, line: 879, type: !47)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !231, line: 878, column: 5)
!2213 = distinct !DILexicalBlock(scope: !2200, file: !231, line: 877, column: 7)
!2214 = !DILocalVariable(name: "new_nslots", scope: !2212, file: !231, line: 880, type: !384)
!2215 = !DILocalVariable(name: "size", scope: !2216, file: !231, line: 891, type: !27)
!2216 = distinct !DILexicalBlock(scope: !2200, file: !231, line: 890, column: 3)
!2217 = !DILocalVariable(name: "val", scope: !2216, file: !231, line: 892, type: !22)
!2218 = !DILocalVariable(name: "flags", scope: !2216, file: !231, line: 894, type: !25)
!2219 = !DILocalVariable(name: "qsize", scope: !2216, file: !231, line: 895, type: !27)
!2220 = !DILocation(line: 0, scope: !2200)
!2221 = !DILocation(line: 869, column: 21, scope: !2200)
!2222 = !DILocation(line: 871, column: 24, scope: !2200)
!2223 = !DILocation(line: 874, column: 17, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2200, file: !231, line: 874, column: 7)
!2225 = !DILocation(line: 875, column: 5, scope: !2224)
!2226 = !DILocation(line: 877, column: 7, scope: !2213)
!2227 = !DILocation(line: 877, column: 14, scope: !2213)
!2228 = !DILocation(line: 877, column: 7, scope: !2200)
!2229 = !DILocation(line: 879, column: 31, scope: !2212)
!2230 = !DILocation(line: 0, scope: !2212)
!2231 = !DILocation(line: 880, column: 7, scope: !2212)
!2232 = !DILocation(line: 880, column: 26, scope: !2212)
!2233 = !DILocation(line: 880, column: 13, scope: !2212)
!2234 = !DILocation(line: 882, column: 31, scope: !2212)
!2235 = !DILocation(line: 883, column: 33, scope: !2212)
!2236 = !DILocation(line: 883, column: 42, scope: !2212)
!2237 = !DILocation(line: 883, column: 31, scope: !2212)
!2238 = !DILocation(line: 882, column: 22, scope: !2212)
!2239 = !DILocation(line: 882, column: 15, scope: !2212)
!2240 = !DILocation(line: 884, column: 11, scope: !2212)
!2241 = !DILocation(line: 885, column: 15, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2212, file: !231, line: 884, column: 11)
!2243 = !{i64 0, i64 8, !2152, i64 8, i64 8, !483}
!2244 = !DILocation(line: 885, column: 9, scope: !2242)
!2245 = !DILocation(line: 886, column: 20, scope: !2212)
!2246 = !DILocation(line: 886, column: 18, scope: !2212)
!2247 = !DILocation(line: 886, column: 15, scope: !2212)
!2248 = !DILocation(line: 886, column: 32, scope: !2212)
!2249 = !DILocation(line: 886, column: 43, scope: !2212)
!2250 = !DILocation(line: 886, column: 53, scope: !2212)
!2251 = !DILocation(line: 0, scope: !1638, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 886, column: 7, scope: !2212)
!2253 = !DILocation(line: 59, column: 10, scope: !1638, inlinedAt: !2252)
!2254 = !DILocation(line: 887, column: 16, scope: !2212)
!2255 = !DILocation(line: 887, column: 14, scope: !2212)
!2256 = !DILocation(line: 888, column: 5, scope: !2213)
!2257 = !DILocation(line: 888, column: 5, scope: !2212)
!2258 = !DILocation(line: 891, column: 19, scope: !2216)
!2259 = !DILocation(line: 891, column: 25, scope: !2216)
!2260 = !DILocation(line: 0, scope: !2216)
!2261 = !DILocation(line: 892, column: 23, scope: !2216)
!2262 = !DILocation(line: 894, column: 26, scope: !2216)
!2263 = !DILocation(line: 894, column: 32, scope: !2216)
!2264 = !DILocation(line: 896, column: 55, scope: !2216)
!2265 = !DILocation(line: 897, column: 46, scope: !2216)
!2266 = !DILocation(line: 898, column: 55, scope: !2216)
!2267 = !DILocation(line: 899, column: 55, scope: !2216)
!2268 = !DILocation(line: 895, column: 20, scope: !2216)
!2269 = !DILocation(line: 901, column: 14, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2216, file: !231, line: 901, column: 9)
!2271 = !DILocation(line: 901, column: 9, scope: !2216)
!2272 = !DILocation(line: 903, column: 35, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !231, line: 902, column: 7)
!2274 = !DILocation(line: 903, column: 20, scope: !2273)
!2275 = !DILocation(line: 904, column: 17, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !231, line: 904, column: 13)
!2277 = !DILocation(line: 904, column: 13, scope: !2273)
!2278 = !DILocation(line: 905, column: 11, scope: !2276)
!2279 = !DILocation(line: 906, column: 27, scope: !2273)
!2280 = !DILocation(line: 906, column: 19, scope: !2273)
!2281 = !DILocation(line: 907, column: 69, scope: !2273)
!2282 = !DILocation(line: 909, column: 44, scope: !2273)
!2283 = !DILocation(line: 910, column: 44, scope: !2273)
!2284 = !DILocation(line: 907, column: 9, scope: !2273)
!2285 = !DILocation(line: 911, column: 7, scope: !2273)
!2286 = !DILocation(line: 913, column: 11, scope: !2216)
!2287 = !DILocation(line: 914, column: 5, scope: !2216)
!2288 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !231, file: !231, line: 925, type: !2289, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!22, !25, !30, !27}
!2291 = !{!2292, !2293, !2294}
!2292 = !DILocalVariable(name: "n", arg: 1, scope: !2288, file: !231, line: 925, type: !25)
!2293 = !DILocalVariable(name: "arg", arg: 2, scope: !2288, file: !231, line: 925, type: !30)
!2294 = !DILocalVariable(name: "argsize", arg: 3, scope: !2288, file: !231, line: 925, type: !27)
!2295 = !DILocation(line: 0, scope: !2288)
!2296 = !DILocation(line: 927, column: 10, scope: !2288)
!2297 = !DILocation(line: 927, column: 3, scope: !2288)
!2298 = distinct !DISubprogram(name: "quotearg", scope: !231, file: !231, line: 931, type: !681, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2299)
!2299 = !{!2300}
!2300 = !DILocalVariable(name: "arg", arg: 1, scope: !2298, file: !231, line: 931, type: !30)
!2301 = !DILocation(line: 0, scope: !2298)
!2302 = !DILocation(line: 0, scope: !2193, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 933, column: 10, scope: !2298)
!2304 = !DILocation(line: 921, column: 10, scope: !2193, inlinedAt: !2303)
!2305 = !DILocation(line: 933, column: 3, scope: !2298)
!2306 = distinct !DISubprogram(name: "quotearg_mem", scope: !231, file: !231, line: 937, type: !2307, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!22, !30, !27}
!2309 = !{!2310, !2311}
!2310 = !DILocalVariable(name: "arg", arg: 1, scope: !2306, file: !231, line: 937, type: !30)
!2311 = !DILocalVariable(name: "argsize", arg: 2, scope: !2306, file: !231, line: 937, type: !27)
!2312 = !DILocation(line: 0, scope: !2306)
!2313 = !DILocation(line: 0, scope: !2288, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 939, column: 10, scope: !2306)
!2315 = !DILocation(line: 927, column: 10, scope: !2288, inlinedAt: !2314)
!2316 = !DILocation(line: 939, column: 3, scope: !2306)
!2317 = distinct !DISubprogram(name: "quotearg_n_style", scope: !231, file: !231, line: 943, type: !2318, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!22, !25, !233, !30}
!2320 = !{!2321, !2322, !2323, !2324}
!2321 = !DILocalVariable(name: "n", arg: 1, scope: !2317, file: !231, line: 943, type: !25)
!2322 = !DILocalVariable(name: "s", arg: 2, scope: !2317, file: !231, line: 943, type: !233)
!2323 = !DILocalVariable(name: "arg", arg: 3, scope: !2317, file: !231, line: 943, type: !30)
!2324 = !DILocalVariable(name: "o", scope: !2317, file: !231, line: 945, type: !1428)
!2325 = !DILocation(line: 0, scope: !2317)
!2326 = !DILocation(line: 945, column: 3, scope: !2317)
!2327 = !DILocation(line: 945, column: 32, scope: !2317)
!2328 = !{!2329}
!2329 = distinct !{!2329, !2330, !"quoting_options_from_style: argument 0"}
!2330 = distinct !{!2330, !"quoting_options_from_style"}
!2331 = !DILocation(line: 945, column: 36, scope: !2317)
!2332 = !DILocalVariable(name: "style", arg: 1, scope: !2333, file: !231, line: 183, type: !233)
!2333 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !231, file: !231, line: 183, type: !2334, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!262, !233}
!2336 = !{!2332, !2337}
!2337 = !DILocalVariable(name: "o", scope: !2333, file: !231, line: 185, type: !262)
!2338 = !DILocation(line: 0, scope: !2333, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 945, column: 36, scope: !2317)
!2340 = !DILocation(line: 185, column: 26, scope: !2333, inlinedAt: !2339)
!2341 = !DILocation(line: 186, column: 13, scope: !2342, inlinedAt: !2339)
!2342 = distinct !DILexicalBlock(scope: !2333, file: !231, line: 186, column: 7)
!2343 = !DILocation(line: 186, column: 7, scope: !2333, inlinedAt: !2339)
!2344 = !DILocation(line: 187, column: 5, scope: !2342, inlinedAt: !2339)
!2345 = !DILocation(line: 188, column: 5, scope: !2333, inlinedAt: !2339)
!2346 = !DILocation(line: 188, column: 11, scope: !2333, inlinedAt: !2339)
!2347 = !DILocation(line: 946, column: 10, scope: !2317)
!2348 = !DILocation(line: 947, column: 1, scope: !2317)
!2349 = !DILocation(line: 946, column: 3, scope: !2317)
!2350 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !231, file: !231, line: 950, type: !2351, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!22, !25, !233, !30, !27}
!2353 = !{!2354, !2355, !2356, !2357, !2358}
!2354 = !DILocalVariable(name: "n", arg: 1, scope: !2350, file: !231, line: 950, type: !25)
!2355 = !DILocalVariable(name: "s", arg: 2, scope: !2350, file: !231, line: 950, type: !233)
!2356 = !DILocalVariable(name: "arg", arg: 3, scope: !2350, file: !231, line: 951, type: !30)
!2357 = !DILocalVariable(name: "argsize", arg: 4, scope: !2350, file: !231, line: 951, type: !27)
!2358 = !DILocalVariable(name: "o", scope: !2350, file: !231, line: 953, type: !1428)
!2359 = !DILocation(line: 0, scope: !2350)
!2360 = !DILocation(line: 953, column: 3, scope: !2350)
!2361 = !DILocation(line: 953, column: 32, scope: !2350)
!2362 = !{!2363}
!2363 = distinct !{!2363, !2364, !"quoting_options_from_style: argument 0"}
!2364 = distinct !{!2364, !"quoting_options_from_style"}
!2365 = !DILocation(line: 953, column: 36, scope: !2350)
!2366 = !DILocation(line: 0, scope: !2333, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 953, column: 36, scope: !2350)
!2368 = !DILocation(line: 185, column: 26, scope: !2333, inlinedAt: !2367)
!2369 = !DILocation(line: 186, column: 13, scope: !2342, inlinedAt: !2367)
!2370 = !DILocation(line: 186, column: 7, scope: !2333, inlinedAt: !2367)
!2371 = !DILocation(line: 187, column: 5, scope: !2342, inlinedAt: !2367)
!2372 = !DILocation(line: 188, column: 5, scope: !2333, inlinedAt: !2367)
!2373 = !DILocation(line: 188, column: 11, scope: !2333, inlinedAt: !2367)
!2374 = !DILocation(line: 954, column: 10, scope: !2350)
!2375 = !DILocation(line: 955, column: 1, scope: !2350)
!2376 = !DILocation(line: 954, column: 3, scope: !2350)
!2377 = distinct !DISubprogram(name: "quotearg_style", scope: !231, file: !231, line: 958, type: !2378, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!22, !233, !30}
!2380 = !{!2381, !2382}
!2381 = !DILocalVariable(name: "s", arg: 1, scope: !2377, file: !231, line: 958, type: !233)
!2382 = !DILocalVariable(name: "arg", arg: 2, scope: !2377, file: !231, line: 958, type: !30)
!2383 = !DILocation(line: 0, scope: !2377)
!2384 = !DILocation(line: 0, scope: !2317, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 960, column: 10, scope: !2377)
!2386 = !DILocation(line: 945, column: 3, scope: !2317, inlinedAt: !2385)
!2387 = !DILocation(line: 945, column: 32, scope: !2317, inlinedAt: !2385)
!2388 = !{!2389}
!2389 = distinct !{!2389, !2390, !"quoting_options_from_style: argument 0"}
!2390 = distinct !{!2390, !"quoting_options_from_style"}
!2391 = !DILocation(line: 945, column: 36, scope: !2317, inlinedAt: !2385)
!2392 = !DILocation(line: 0, scope: !2333, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 945, column: 36, scope: !2317, inlinedAt: !2385)
!2394 = !DILocation(line: 185, column: 26, scope: !2333, inlinedAt: !2393)
!2395 = !DILocation(line: 186, column: 13, scope: !2342, inlinedAt: !2393)
!2396 = !DILocation(line: 186, column: 7, scope: !2333, inlinedAt: !2393)
!2397 = !DILocation(line: 187, column: 5, scope: !2342, inlinedAt: !2393)
!2398 = !DILocation(line: 188, column: 5, scope: !2333, inlinedAt: !2393)
!2399 = !DILocation(line: 188, column: 11, scope: !2333, inlinedAt: !2393)
!2400 = !DILocation(line: 946, column: 10, scope: !2317, inlinedAt: !2385)
!2401 = !DILocation(line: 947, column: 1, scope: !2317, inlinedAt: !2385)
!2402 = !DILocation(line: 960, column: 3, scope: !2377)
!2403 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !231, file: !231, line: 964, type: !2404, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!22, !233, !30, !27}
!2406 = !{!2407, !2408, !2409}
!2407 = !DILocalVariable(name: "s", arg: 1, scope: !2403, file: !231, line: 964, type: !233)
!2408 = !DILocalVariable(name: "arg", arg: 2, scope: !2403, file: !231, line: 964, type: !30)
!2409 = !DILocalVariable(name: "argsize", arg: 3, scope: !2403, file: !231, line: 964, type: !27)
!2410 = !DILocation(line: 0, scope: !2403)
!2411 = !DILocation(line: 0, scope: !2350, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 966, column: 10, scope: !2403)
!2413 = !DILocation(line: 953, column: 3, scope: !2350, inlinedAt: !2412)
!2414 = !DILocation(line: 953, column: 32, scope: !2350, inlinedAt: !2412)
!2415 = !{!2416}
!2416 = distinct !{!2416, !2417, !"quoting_options_from_style: argument 0"}
!2417 = distinct !{!2417, !"quoting_options_from_style"}
!2418 = !DILocation(line: 953, column: 36, scope: !2350, inlinedAt: !2412)
!2419 = !DILocation(line: 0, scope: !2333, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 953, column: 36, scope: !2350, inlinedAt: !2412)
!2421 = !DILocation(line: 185, column: 26, scope: !2333, inlinedAt: !2420)
!2422 = !DILocation(line: 186, column: 13, scope: !2342, inlinedAt: !2420)
!2423 = !DILocation(line: 186, column: 7, scope: !2333, inlinedAt: !2420)
!2424 = !DILocation(line: 187, column: 5, scope: !2342, inlinedAt: !2420)
!2425 = !DILocation(line: 188, column: 5, scope: !2333, inlinedAt: !2420)
!2426 = !DILocation(line: 188, column: 11, scope: !2333, inlinedAt: !2420)
!2427 = !DILocation(line: 954, column: 10, scope: !2350, inlinedAt: !2412)
!2428 = !DILocation(line: 955, column: 1, scope: !2350, inlinedAt: !2412)
!2429 = !DILocation(line: 966, column: 3, scope: !2403)
!2430 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !231, file: !231, line: 970, type: !2431, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!22, !30, !27, !23}
!2433 = !{!2434, !2435, !2436, !2437}
!2434 = !DILocalVariable(name: "arg", arg: 1, scope: !2430, file: !231, line: 970, type: !30)
!2435 = !DILocalVariable(name: "argsize", arg: 2, scope: !2430, file: !231, line: 970, type: !27)
!2436 = !DILocalVariable(name: "ch", arg: 3, scope: !2430, file: !231, line: 970, type: !23)
!2437 = !DILocalVariable(name: "options", scope: !2430, file: !231, line: 972, type: !262)
!2438 = !DILocation(line: 0, scope: !2430)
!2439 = !DILocation(line: 972, column: 3, scope: !2430)
!2440 = !DILocation(line: 972, column: 26, scope: !2430)
!2441 = !DILocation(line: 973, column: 13, scope: !2430)
!2442 = !{i64 0, i64 4, !578, i64 4, i64 4, !569, i64 8, i64 32, !578, i64 40, i64 8, !483, i64 48, i64 8, !483}
!2443 = !DILocation(line: 0, scope: !1448, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 974, column: 3, scope: !2430)
!2445 = !DILocation(line: 147, column: 62, scope: !1448, inlinedAt: !2444)
!2446 = !DILocation(line: 147, column: 57, scope: !1448, inlinedAt: !2444)
!2447 = !DILocation(line: 148, column: 15, scope: !1448, inlinedAt: !2444)
!2448 = !DILocation(line: 149, column: 21, scope: !1448, inlinedAt: !2444)
!2449 = !DILocation(line: 149, column: 24, scope: !1448, inlinedAt: !2444)
!2450 = !DILocation(line: 149, column: 34, scope: !1448, inlinedAt: !2444)
!2451 = !DILocation(line: 150, column: 19, scope: !1448, inlinedAt: !2444)
!2452 = !DILocation(line: 150, column: 24, scope: !1448, inlinedAt: !2444)
!2453 = !DILocation(line: 150, column: 6, scope: !1448, inlinedAt: !2444)
!2454 = !DILocation(line: 975, column: 10, scope: !2430)
!2455 = !DILocation(line: 976, column: 1, scope: !2430)
!2456 = !DILocation(line: 975, column: 3, scope: !2430)
!2457 = distinct !DISubprogram(name: "quotearg_char", scope: !231, file: !231, line: 979, type: !2458, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!22, !30, !23}
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "arg", arg: 1, scope: !2457, file: !231, line: 979, type: !30)
!2462 = !DILocalVariable(name: "ch", arg: 2, scope: !2457, file: !231, line: 979, type: !23)
!2463 = !DILocation(line: 0, scope: !2457)
!2464 = !DILocation(line: 0, scope: !2430, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 981, column: 10, scope: !2457)
!2466 = !DILocation(line: 972, column: 3, scope: !2430, inlinedAt: !2465)
!2467 = !DILocation(line: 972, column: 26, scope: !2430, inlinedAt: !2465)
!2468 = !DILocation(line: 973, column: 13, scope: !2430, inlinedAt: !2465)
!2469 = !DILocation(line: 0, scope: !1448, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 974, column: 3, scope: !2430, inlinedAt: !2465)
!2471 = !DILocation(line: 147, column: 62, scope: !1448, inlinedAt: !2470)
!2472 = !DILocation(line: 147, column: 57, scope: !1448, inlinedAt: !2470)
!2473 = !DILocation(line: 148, column: 15, scope: !1448, inlinedAt: !2470)
!2474 = !DILocation(line: 149, column: 21, scope: !1448, inlinedAt: !2470)
!2475 = !DILocation(line: 149, column: 24, scope: !1448, inlinedAt: !2470)
!2476 = !DILocation(line: 149, column: 34, scope: !1448, inlinedAt: !2470)
!2477 = !DILocation(line: 150, column: 19, scope: !1448, inlinedAt: !2470)
!2478 = !DILocation(line: 150, column: 24, scope: !1448, inlinedAt: !2470)
!2479 = !DILocation(line: 150, column: 6, scope: !1448, inlinedAt: !2470)
!2480 = !DILocation(line: 975, column: 10, scope: !2430, inlinedAt: !2465)
!2481 = !DILocation(line: 976, column: 1, scope: !2430, inlinedAt: !2465)
!2482 = !DILocation(line: 981, column: 3, scope: !2457)
!2483 = distinct !DISubprogram(name: "quotearg_colon", scope: !231, file: !231, line: 985, type: !681, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2484)
!2484 = !{!2485}
!2485 = !DILocalVariable(name: "arg", arg: 1, scope: !2483, file: !231, line: 985, type: !30)
!2486 = !DILocation(line: 0, scope: !2483)
!2487 = !DILocation(line: 0, scope: !2457, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 987, column: 10, scope: !2483)
!2489 = !DILocation(line: 0, scope: !2430, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 981, column: 10, scope: !2457, inlinedAt: !2488)
!2491 = !DILocation(line: 972, column: 3, scope: !2430, inlinedAt: !2490)
!2492 = !DILocation(line: 972, column: 26, scope: !2430, inlinedAt: !2490)
!2493 = !DILocation(line: 973, column: 13, scope: !2430, inlinedAt: !2490)
!2494 = !DILocation(line: 0, scope: !1448, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 974, column: 3, scope: !2430, inlinedAt: !2490)
!2496 = !DILocation(line: 147, column: 57, scope: !1448, inlinedAt: !2495)
!2497 = !DILocation(line: 149, column: 21, scope: !1448, inlinedAt: !2495)
!2498 = !DILocation(line: 150, column: 6, scope: !1448, inlinedAt: !2495)
!2499 = !DILocation(line: 975, column: 10, scope: !2430, inlinedAt: !2490)
!2500 = !DILocation(line: 976, column: 1, scope: !2430, inlinedAt: !2490)
!2501 = !DILocation(line: 987, column: 3, scope: !2483)
!2502 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !231, file: !231, line: 991, type: !2307, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2503)
!2503 = !{!2504, !2505}
!2504 = !DILocalVariable(name: "arg", arg: 1, scope: !2502, file: !231, line: 991, type: !30)
!2505 = !DILocalVariable(name: "argsize", arg: 2, scope: !2502, file: !231, line: 991, type: !27)
!2506 = !DILocation(line: 0, scope: !2502)
!2507 = !DILocation(line: 0, scope: !2430, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 993, column: 10, scope: !2502)
!2509 = !DILocation(line: 972, column: 3, scope: !2430, inlinedAt: !2508)
!2510 = !DILocation(line: 972, column: 26, scope: !2430, inlinedAt: !2508)
!2511 = !DILocation(line: 973, column: 13, scope: !2430, inlinedAt: !2508)
!2512 = !DILocation(line: 0, scope: !1448, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 974, column: 3, scope: !2430, inlinedAt: !2508)
!2514 = !DILocation(line: 147, column: 57, scope: !1448, inlinedAt: !2513)
!2515 = !DILocation(line: 149, column: 21, scope: !1448, inlinedAt: !2513)
!2516 = !DILocation(line: 150, column: 6, scope: !1448, inlinedAt: !2513)
!2517 = !DILocation(line: 975, column: 10, scope: !2430, inlinedAt: !2508)
!2518 = !DILocation(line: 976, column: 1, scope: !2430, inlinedAt: !2508)
!2519 = !DILocation(line: 993, column: 3, scope: !2502)
!2520 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !231, file: !231, line: 997, type: !2318, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2521)
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DILocalVariable(name: "n", arg: 1, scope: !2520, file: !231, line: 997, type: !25)
!2523 = !DILocalVariable(name: "s", arg: 2, scope: !2520, file: !231, line: 997, type: !233)
!2524 = !DILocalVariable(name: "arg", arg: 3, scope: !2520, file: !231, line: 997, type: !30)
!2525 = !DILocalVariable(name: "options", scope: !2520, file: !231, line: 999, type: !262)
!2526 = !DILocation(line: 0, scope: !2520)
!2527 = !DILocation(line: 999, column: 3, scope: !2520)
!2528 = !DILocation(line: 999, column: 26, scope: !2520)
!2529 = !DILocation(line: 0, scope: !2333, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 1000, column: 13, scope: !2520)
!2531 = !DILocation(line: 186, column: 13, scope: !2342, inlinedAt: !2530)
!2532 = !DILocation(line: 186, column: 7, scope: !2333, inlinedAt: !2530)
!2533 = !DILocation(line: 187, column: 5, scope: !2342, inlinedAt: !2530)
!2534 = !{!2535}
!2535 = distinct !{!2535, !2536, !"quoting_options_from_style: argument 0"}
!2536 = distinct !{!2536, !"quoting_options_from_style"}
!2537 = !DILocation(line: 1000, column: 13, scope: !2520)
!2538 = !DILocation(line: 0, scope: !1448, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 1001, column: 3, scope: !2520)
!2540 = !DILocation(line: 147, column: 57, scope: !1448, inlinedAt: !2539)
!2541 = !DILocation(line: 149, column: 21, scope: !1448, inlinedAt: !2539)
!2542 = !DILocation(line: 150, column: 6, scope: !1448, inlinedAt: !2539)
!2543 = !DILocation(line: 1002, column: 10, scope: !2520)
!2544 = !DILocation(line: 1003, column: 1, scope: !2520)
!2545 = !DILocation(line: 1002, column: 3, scope: !2520)
!2546 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !231, file: !231, line: 1006, type: !2547, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!22, !25, !30, !30, !30}
!2549 = !{!2550, !2551, !2552, !2553}
!2550 = !DILocalVariable(name: "n", arg: 1, scope: !2546, file: !231, line: 1006, type: !25)
!2551 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2546, file: !231, line: 1006, type: !30)
!2552 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2546, file: !231, line: 1007, type: !30)
!2553 = !DILocalVariable(name: "arg", arg: 4, scope: !2546, file: !231, line: 1007, type: !30)
!2554 = !DILocation(line: 0, scope: !2546)
!2555 = !DILocalVariable(name: "n", arg: 1, scope: !2556, file: !231, line: 1014, type: !25)
!2556 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !231, file: !231, line: 1014, type: !2557, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!22, !25, !30, !30, !30, !27}
!2559 = !{!2555, !2560, !2561, !2562, !2563, !2564}
!2560 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2556, file: !231, line: 1014, type: !30)
!2561 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2556, file: !231, line: 1015, type: !30)
!2562 = !DILocalVariable(name: "arg", arg: 4, scope: !2556, file: !231, line: 1016, type: !30)
!2563 = !DILocalVariable(name: "argsize", arg: 5, scope: !2556, file: !231, line: 1016, type: !27)
!2564 = !DILocalVariable(name: "o", scope: !2556, file: !231, line: 1018, type: !262)
!2565 = !DILocation(line: 0, scope: !2556, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1009, column: 10, scope: !2546)
!2567 = !DILocation(line: 1018, column: 3, scope: !2556, inlinedAt: !2566)
!2568 = !DILocation(line: 1018, column: 26, scope: !2556, inlinedAt: !2566)
!2569 = !DILocation(line: 1018, column: 30, scope: !2556, inlinedAt: !2566)
!2570 = !DILocation(line: 0, scope: !1488, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 1019, column: 3, scope: !2556, inlinedAt: !2566)
!2572 = !DILocation(line: 174, column: 6, scope: !1488, inlinedAt: !2571)
!2573 = !DILocation(line: 174, column: 12, scope: !1488, inlinedAt: !2571)
!2574 = !DILocation(line: 175, column: 8, scope: !1502, inlinedAt: !2571)
!2575 = !DILocation(line: 175, column: 19, scope: !1502, inlinedAt: !2571)
!2576 = !DILocation(line: 176, column: 5, scope: !1502, inlinedAt: !2571)
!2577 = !DILocation(line: 177, column: 6, scope: !1488, inlinedAt: !2571)
!2578 = !DILocation(line: 177, column: 17, scope: !1488, inlinedAt: !2571)
!2579 = !DILocation(line: 178, column: 6, scope: !1488, inlinedAt: !2571)
!2580 = !DILocation(line: 178, column: 18, scope: !1488, inlinedAt: !2571)
!2581 = !DILocation(line: 1020, column: 10, scope: !2556, inlinedAt: !2566)
!2582 = !DILocation(line: 1021, column: 1, scope: !2556, inlinedAt: !2566)
!2583 = !DILocation(line: 1009, column: 3, scope: !2546)
!2584 = !DILocation(line: 0, scope: !2556)
!2585 = !DILocation(line: 1018, column: 3, scope: !2556)
!2586 = !DILocation(line: 1018, column: 26, scope: !2556)
!2587 = !DILocation(line: 1018, column: 30, scope: !2556)
!2588 = !DILocation(line: 0, scope: !1488, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 1019, column: 3, scope: !2556)
!2590 = !DILocation(line: 174, column: 6, scope: !1488, inlinedAt: !2589)
!2591 = !DILocation(line: 174, column: 12, scope: !1488, inlinedAt: !2589)
!2592 = !DILocation(line: 175, column: 8, scope: !1502, inlinedAt: !2589)
!2593 = !DILocation(line: 175, column: 19, scope: !1502, inlinedAt: !2589)
!2594 = !DILocation(line: 176, column: 5, scope: !1502, inlinedAt: !2589)
!2595 = !DILocation(line: 177, column: 6, scope: !1488, inlinedAt: !2589)
!2596 = !DILocation(line: 177, column: 17, scope: !1488, inlinedAt: !2589)
!2597 = !DILocation(line: 178, column: 6, scope: !1488, inlinedAt: !2589)
!2598 = !DILocation(line: 178, column: 18, scope: !1488, inlinedAt: !2589)
!2599 = !DILocation(line: 1020, column: 10, scope: !2556)
!2600 = !DILocation(line: 1021, column: 1, scope: !2556)
!2601 = !DILocation(line: 1020, column: 3, scope: !2556)
!2602 = distinct !DISubprogram(name: "quotearg_custom", scope: !231, file: !231, line: 1024, type: !2603, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!22, !30, !30, !30}
!2605 = !{!2606, !2607, !2608}
!2606 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2602, file: !231, line: 1024, type: !30)
!2607 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2602, file: !231, line: 1024, type: !30)
!2608 = !DILocalVariable(name: "arg", arg: 3, scope: !2602, file: !231, line: 1025, type: !30)
!2609 = !DILocation(line: 0, scope: !2602)
!2610 = !DILocation(line: 0, scope: !2546, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1027, column: 10, scope: !2602)
!2612 = !DILocation(line: 0, scope: !2556, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 1009, column: 10, scope: !2546, inlinedAt: !2611)
!2614 = !DILocation(line: 1018, column: 3, scope: !2556, inlinedAt: !2613)
!2615 = !DILocation(line: 1018, column: 26, scope: !2556, inlinedAt: !2613)
!2616 = !DILocation(line: 1018, column: 30, scope: !2556, inlinedAt: !2613)
!2617 = !DILocation(line: 0, scope: !1488, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 1019, column: 3, scope: !2556, inlinedAt: !2613)
!2619 = !DILocation(line: 174, column: 6, scope: !1488, inlinedAt: !2618)
!2620 = !DILocation(line: 174, column: 12, scope: !1488, inlinedAt: !2618)
!2621 = !DILocation(line: 175, column: 8, scope: !1502, inlinedAt: !2618)
!2622 = !DILocation(line: 175, column: 19, scope: !1502, inlinedAt: !2618)
!2623 = !DILocation(line: 176, column: 5, scope: !1502, inlinedAt: !2618)
!2624 = !DILocation(line: 177, column: 6, scope: !1488, inlinedAt: !2618)
!2625 = !DILocation(line: 177, column: 17, scope: !1488, inlinedAt: !2618)
!2626 = !DILocation(line: 178, column: 6, scope: !1488, inlinedAt: !2618)
!2627 = !DILocation(line: 178, column: 18, scope: !1488, inlinedAt: !2618)
!2628 = !DILocation(line: 1020, column: 10, scope: !2556, inlinedAt: !2613)
!2629 = !DILocation(line: 1021, column: 1, scope: !2556, inlinedAt: !2613)
!2630 = !DILocation(line: 1027, column: 3, scope: !2602)
!2631 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !231, file: !231, line: 1031, type: !2632, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!22, !30, !30, !30, !27}
!2634 = !{!2635, !2636, !2637, !2638}
!2635 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2631, file: !231, line: 1031, type: !30)
!2636 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2631, file: !231, line: 1031, type: !30)
!2637 = !DILocalVariable(name: "arg", arg: 3, scope: !2631, file: !231, line: 1032, type: !30)
!2638 = !DILocalVariable(name: "argsize", arg: 4, scope: !2631, file: !231, line: 1032, type: !27)
!2639 = !DILocation(line: 0, scope: !2631)
!2640 = !DILocation(line: 0, scope: !2556, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 1034, column: 10, scope: !2631)
!2642 = !DILocation(line: 1018, column: 3, scope: !2556, inlinedAt: !2641)
!2643 = !DILocation(line: 1018, column: 26, scope: !2556, inlinedAt: !2641)
!2644 = !DILocation(line: 1018, column: 30, scope: !2556, inlinedAt: !2641)
!2645 = !DILocation(line: 0, scope: !1488, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 1019, column: 3, scope: !2556, inlinedAt: !2641)
!2647 = !DILocation(line: 174, column: 6, scope: !1488, inlinedAt: !2646)
!2648 = !DILocation(line: 174, column: 12, scope: !1488, inlinedAt: !2646)
!2649 = !DILocation(line: 175, column: 8, scope: !1502, inlinedAt: !2646)
!2650 = !DILocation(line: 175, column: 19, scope: !1502, inlinedAt: !2646)
!2651 = !DILocation(line: 176, column: 5, scope: !1502, inlinedAt: !2646)
!2652 = !DILocation(line: 177, column: 6, scope: !1488, inlinedAt: !2646)
!2653 = !DILocation(line: 177, column: 17, scope: !1488, inlinedAt: !2646)
!2654 = !DILocation(line: 178, column: 6, scope: !1488, inlinedAt: !2646)
!2655 = !DILocation(line: 178, column: 18, scope: !1488, inlinedAt: !2646)
!2656 = !DILocation(line: 1020, column: 10, scope: !2556, inlinedAt: !2641)
!2657 = !DILocation(line: 1021, column: 1, scope: !2556, inlinedAt: !2641)
!2658 = !DILocation(line: 1034, column: 3, scope: !2631)
!2659 = distinct !DISubprogram(name: "quote_n_mem", scope: !231, file: !231, line: 1049, type: !2660, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!30, !25, !30, !27}
!2662 = !{!2663, !2664, !2665}
!2663 = !DILocalVariable(name: "n", arg: 1, scope: !2659, file: !231, line: 1049, type: !25)
!2664 = !DILocalVariable(name: "arg", arg: 2, scope: !2659, file: !231, line: 1049, type: !30)
!2665 = !DILocalVariable(name: "argsize", arg: 3, scope: !2659, file: !231, line: 1049, type: !27)
!2666 = !DILocation(line: 0, scope: !2659)
!2667 = !DILocation(line: 1051, column: 10, scope: !2659)
!2668 = !DILocation(line: 1051, column: 3, scope: !2659)
!2669 = distinct !DISubprogram(name: "quote_mem", scope: !231, file: !231, line: 1055, type: !2670, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!30, !30, !27}
!2672 = !{!2673, !2674}
!2673 = !DILocalVariable(name: "arg", arg: 1, scope: !2669, file: !231, line: 1055, type: !30)
!2674 = !DILocalVariable(name: "argsize", arg: 2, scope: !2669, file: !231, line: 1055, type: !27)
!2675 = !DILocation(line: 0, scope: !2669)
!2676 = !DILocation(line: 0, scope: !2659, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1057, column: 10, scope: !2669)
!2678 = !DILocation(line: 1051, column: 10, scope: !2659, inlinedAt: !2677)
!2679 = !DILocation(line: 1057, column: 3, scope: !2669)
!2680 = distinct !DISubprogram(name: "quote_n", scope: !231, file: !231, line: 1061, type: !2681, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!30, !25, !30}
!2683 = !{!2684, !2685}
!2684 = !DILocalVariable(name: "n", arg: 1, scope: !2680, file: !231, line: 1061, type: !25)
!2685 = !DILocalVariable(name: "arg", arg: 2, scope: !2680, file: !231, line: 1061, type: !30)
!2686 = !DILocation(line: 0, scope: !2680)
!2687 = !DILocation(line: 0, scope: !2659, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1063, column: 10, scope: !2680)
!2689 = !DILocation(line: 1051, column: 10, scope: !2659, inlinedAt: !2688)
!2690 = !DILocation(line: 1063, column: 3, scope: !2680)
!2691 = distinct !DISubprogram(name: "quote", scope: !231, file: !231, line: 1067, type: !2692, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!30, !30}
!2694 = !{!2695}
!2695 = !DILocalVariable(name: "arg", arg: 1, scope: !2691, file: !231, line: 1067, type: !30)
!2696 = !DILocation(line: 0, scope: !2691)
!2697 = !DILocation(line: 0, scope: !2680, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1069, column: 10, scope: !2691)
!2699 = !DILocation(line: 0, scope: !2659, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 1063, column: 10, scope: !2680, inlinedAt: !2698)
!2701 = !DILocation(line: 1051, column: 10, scope: !2659, inlinedAt: !2700)
!2702 = !DILocation(line: 1069, column: 3, scope: !2691)
!2703 = distinct !DISubprogram(name: "version_etc_arn", scope: !358, file: !358, line: 61, type: !2704, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2741)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !2706, !30, !30, !30, !2740, !27}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !2709)
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2708, file: !64, line: 51, baseType: !25, size: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2708, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2708, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2708, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2708, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2708, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2708, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2708, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2708, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2708, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2708, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2708, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2708, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2708, file: !64, line: 70, baseType: !2724, size: 64, offset: 832)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2708, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2708, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2708, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2708, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2708, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2708, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2708, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2708, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2708, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2708, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2708, file: !64, line: 93, baseType: !2724, size: 64, offset: 1344)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2708, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2708, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2708, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2708, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747}
!2742 = !DILocalVariable(name: "stream", arg: 1, scope: !2703, file: !358, line: 61, type: !2706)
!2743 = !DILocalVariable(name: "command_name", arg: 2, scope: !2703, file: !358, line: 62, type: !30)
!2744 = !DILocalVariable(name: "package", arg: 3, scope: !2703, file: !358, line: 62, type: !30)
!2745 = !DILocalVariable(name: "version", arg: 4, scope: !2703, file: !358, line: 63, type: !30)
!2746 = !DILocalVariable(name: "authors", arg: 5, scope: !2703, file: !358, line: 64, type: !2740)
!2747 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2703, file: !358, line: 64, type: !27)
!2748 = !DILocation(line: 0, scope: !2703)
!2749 = !DILocation(line: 66, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2703, file: !358, line: 66, column: 7)
!2751 = !DILocation(line: 66, column: 7, scope: !2703)
!2752 = !DILocation(line: 67, column: 5, scope: !2750)
!2753 = !DILocation(line: 69, column: 5, scope: !2750)
!2754 = !DILocation(line: 83, column: 3, scope: !2703)
!2755 = !DILocation(line: 85, column: 3, scope: !2703)
!2756 = !DILocation(line: 88, column: 3, scope: !2703)
!2757 = !DILocation(line: 95, column: 3, scope: !2703)
!2758 = !DILocation(line: 97, column: 3, scope: !2703)
!2759 = !DILocation(line: 105, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2703, file: !358, line: 98, column: 5)
!2761 = !DILocation(line: 106, column: 7, scope: !2760)
!2762 = !DILocation(line: 109, column: 7, scope: !2760)
!2763 = !DILocation(line: 110, column: 7, scope: !2760)
!2764 = !DILocation(line: 113, column: 7, scope: !2760)
!2765 = !DILocation(line: 115, column: 7, scope: !2760)
!2766 = !DILocation(line: 120, column: 7, scope: !2760)
!2767 = !DILocation(line: 122, column: 7, scope: !2760)
!2768 = !DILocation(line: 127, column: 7, scope: !2760)
!2769 = !DILocation(line: 129, column: 7, scope: !2760)
!2770 = !DILocation(line: 134, column: 7, scope: !2760)
!2771 = !DILocation(line: 137, column: 7, scope: !2760)
!2772 = !DILocation(line: 142, column: 7, scope: !2760)
!2773 = !DILocation(line: 145, column: 7, scope: !2760)
!2774 = !DILocation(line: 150, column: 7, scope: !2760)
!2775 = !DILocation(line: 154, column: 7, scope: !2760)
!2776 = !DILocation(line: 159, column: 7, scope: !2760)
!2777 = !DILocation(line: 163, column: 7, scope: !2760)
!2778 = !DILocation(line: 170, column: 7, scope: !2760)
!2779 = !DILocation(line: 174, column: 7, scope: !2760)
!2780 = !DILocation(line: 176, column: 1, scope: !2703)
!2781 = distinct !DISubprogram(name: "version_etc_ar", scope: !358, file: !358, line: 183, type: !2782, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{null, !2706, !30, !30, !30, !2740}
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790}
!2785 = !DILocalVariable(name: "stream", arg: 1, scope: !2781, file: !358, line: 183, type: !2706)
!2786 = !DILocalVariable(name: "command_name", arg: 2, scope: !2781, file: !358, line: 184, type: !30)
!2787 = !DILocalVariable(name: "package", arg: 3, scope: !2781, file: !358, line: 184, type: !30)
!2788 = !DILocalVariable(name: "version", arg: 4, scope: !2781, file: !358, line: 185, type: !30)
!2789 = !DILocalVariable(name: "authors", arg: 5, scope: !2781, file: !358, line: 185, type: !2740)
!2790 = !DILocalVariable(name: "n_authors", scope: !2781, file: !358, line: 187, type: !27)
!2791 = !DILocation(line: 0, scope: !2781)
!2792 = !DILocation(line: 189, column: 8, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2781, file: !358, line: 189, column: 3)
!2794 = !DILocation(line: 0, scope: !2793)
!2795 = !DILocation(line: 189, column: 23, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !358, line: 189, column: 3)
!2797 = !DILocation(line: 189, column: 3, scope: !2793)
!2798 = !DILocation(line: 189, column: 52, scope: !2796)
!2799 = distinct !{!2799, !2797, !2800, !535}
!2800 = !DILocation(line: 190, column: 5, scope: !2793)
!2801 = !DILocation(line: 191, column: 3, scope: !2781)
!2802 = !DILocation(line: 192, column: 1, scope: !2781)
!2803 = distinct !DISubprogram(name: "version_etc_va", scope: !358, file: !358, line: 199, type: !2804, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2817)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2706, !30, !30, !30, !2806}
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !2807)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2809, baseType: !2810)
!2809 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2815, !2816}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2810, file: !2809, line: 192, baseType: !24, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2810, file: !2809, line: 192, baseType: !24, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2810, file: !2809, line: 192, baseType: !24, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2810, file: !2809, line: 192, baseType: !25, size: 32, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2810, file: !2809, line: 192, baseType: !25, size: 32, offset: 224)
!2817 = !{!2818, !2819, !2820, !2821, !2822, !2823, !2824}
!2818 = !DILocalVariable(name: "stream", arg: 1, scope: !2803, file: !358, line: 199, type: !2706)
!2819 = !DILocalVariable(name: "command_name", arg: 2, scope: !2803, file: !358, line: 200, type: !30)
!2820 = !DILocalVariable(name: "package", arg: 3, scope: !2803, file: !358, line: 200, type: !30)
!2821 = !DILocalVariable(name: "version", arg: 4, scope: !2803, file: !358, line: 201, type: !30)
!2822 = !DILocalVariable(name: "authors", arg: 5, scope: !2803, file: !358, line: 201, type: !2806)
!2823 = !DILocalVariable(name: "n_authors", scope: !2803, file: !358, line: 203, type: !27)
!2824 = !DILocalVariable(name: "authtab", scope: !2803, file: !358, line: 204, type: !2825)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !258)
!2826 = !DILocation(line: 0, scope: !2803)
!2827 = !DILocation(line: 201, column: 46, scope: !2803)
!2828 = !DILocation(line: 204, column: 3, scope: !2803)
!2829 = !DILocation(line: 204, column: 15, scope: !2803)
!2830 = !DILocation(line: 208, column: 35, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !358, line: 206, column: 3)
!2832 = distinct !DILexicalBlock(scope: !2803, file: !358, line: 206, column: 3)
!2833 = !DILocation(line: 208, column: 14, scope: !2831)
!2834 = !DILocation(line: 208, column: 33, scope: !2831)
!2835 = !DILocation(line: 208, column: 67, scope: !2831)
!2836 = !DILocation(line: 206, column: 3, scope: !2832)
!2837 = !DILocation(line: 0, scope: !2832)
!2838 = !DILocation(line: 211, column: 3, scope: !2803)
!2839 = !DILocation(line: 213, column: 1, scope: !2803)
!2840 = distinct !DISubprogram(name: "version_etc", scope: !358, file: !358, line: 230, type: !2841, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !2706, !30, !30, !30, null}
!2843 = !{!2844, !2845, !2846, !2847, !2848}
!2844 = !DILocalVariable(name: "stream", arg: 1, scope: !2840, file: !358, line: 230, type: !2706)
!2845 = !DILocalVariable(name: "command_name", arg: 2, scope: !2840, file: !358, line: 231, type: !30)
!2846 = !DILocalVariable(name: "package", arg: 3, scope: !2840, file: !358, line: 231, type: !30)
!2847 = !DILocalVariable(name: "version", arg: 4, scope: !2840, file: !358, line: 232, type: !30)
!2848 = !DILocalVariable(name: "authors", scope: !2840, file: !358, line: 234, type: !2806)
!2849 = !DILocation(line: 0, scope: !2840)
!2850 = !DILocation(line: 234, column: 3, scope: !2840)
!2851 = !DILocation(line: 234, column: 11, scope: !2840)
!2852 = !DILocation(line: 235, column: 3, scope: !2840)
!2853 = !DILocation(line: 236, column: 3, scope: !2840)
!2854 = !DILocation(line: 237, column: 3, scope: !2840)
!2855 = !DILocation(line: 238, column: 1, scope: !2840)
!2856 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !358, file: !358, line: 241, type: !184, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !561)
!2857 = !DILocation(line: 243, column: 3, scope: !2856)
!2858 = !DILocation(line: 248, column: 3, scope: !2856)
!2859 = !DILocation(line: 254, column: 3, scope: !2856)
!2860 = !DILocation(line: 259, column: 3, scope: !2856)
!2861 = !DILocation(line: 261, column: 1, scope: !2856)
!2862 = distinct !DISubprogram(name: "xnrealloc", scope: !2863, file: !2863, line: 147, type: !2864, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2866)
!2863 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!24, !24, !27, !27}
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "p", arg: 1, scope: !2862, file: !2863, line: 147, type: !24)
!2868 = !DILocalVariable(name: "n", arg: 2, scope: !2862, file: !2863, line: 147, type: !27)
!2869 = !DILocalVariable(name: "s", arg: 3, scope: !2862, file: !2863, line: 147, type: !27)
!2870 = !DILocation(line: 0, scope: !2862)
!2871 = !DILocalVariable(name: "p", arg: 1, scope: !2872, file: !365, line: 83, type: !24)
!2872 = distinct !DISubprogram(name: "xreallocarray", scope: !365, file: !365, line: 83, type: !2864, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2873)
!2873 = !{!2871, !2874, !2875}
!2874 = !DILocalVariable(name: "n", arg: 2, scope: !2872, file: !365, line: 83, type: !27)
!2875 = !DILocalVariable(name: "s", arg: 3, scope: !2872, file: !365, line: 83, type: !27)
!2876 = !DILocation(line: 0, scope: !2872, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 149, column: 10, scope: !2862)
!2878 = !DILocation(line: 85, column: 25, scope: !2872, inlinedAt: !2877)
!2879 = !DILocalVariable(name: "p", arg: 1, scope: !2880, file: !365, line: 37, type: !24)
!2880 = distinct !DISubprogram(name: "check_nonnull", scope: !365, file: !365, line: 37, type: !2881, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!24, !24}
!2883 = !{!2879}
!2884 = !DILocation(line: 0, scope: !2880, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 85, column: 10, scope: !2872, inlinedAt: !2877)
!2886 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !2885)
!2887 = distinct !DILexicalBlock(scope: !2880, file: !365, line: 39, column: 7)
!2888 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !2885)
!2889 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !2885)
!2890 = !DILocation(line: 149, column: 3, scope: !2862)
!2891 = !DILocation(line: 0, scope: !2872)
!2892 = !DILocation(line: 85, column: 25, scope: !2872)
!2893 = !DILocation(line: 0, scope: !2880, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 85, column: 10, scope: !2872)
!2895 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !2894)
!2896 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !2894)
!2897 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !2894)
!2898 = !DILocation(line: 85, column: 3, scope: !2872)
!2899 = distinct !DISubprogram(name: "xmalloc", scope: !365, file: !365, line: 47, type: !2900, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!24, !27}
!2902 = !{!2903}
!2903 = !DILocalVariable(name: "s", arg: 1, scope: !2899, file: !365, line: 47, type: !27)
!2904 = !DILocation(line: 0, scope: !2899)
!2905 = !DILocation(line: 49, column: 25, scope: !2899)
!2906 = !DILocation(line: 0, scope: !2880, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 49, column: 10, scope: !2899)
!2908 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !2907)
!2909 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !2907)
!2910 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !2907)
!2911 = !DILocation(line: 49, column: 3, scope: !2899)
!2912 = distinct !DISubprogram(name: "ximalloc", scope: !365, file: !365, line: 53, type: !2913, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!24, !384}
!2915 = !{!2916}
!2916 = !DILocalVariable(name: "s", arg: 1, scope: !2912, file: !365, line: 53, type: !384)
!2917 = !DILocation(line: 0, scope: !2912)
!2918 = !DILocalVariable(name: "s", arg: 1, scope: !2919, file: !2920, line: 55, type: !384)
!2919 = distinct !DISubprogram(name: "imalloc", scope: !2920, file: !2920, line: 55, type: !2913, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2921)
!2920 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2921 = !{!2918}
!2922 = !DILocation(line: 0, scope: !2919, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 55, column: 25, scope: !2912)
!2924 = !DILocation(line: 57, column: 26, scope: !2919, inlinedAt: !2923)
!2925 = !DILocation(line: 0, scope: !2880, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 55, column: 10, scope: !2912)
!2927 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !2926)
!2928 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !2926)
!2929 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !2926)
!2930 = !DILocation(line: 55, column: 3, scope: !2912)
!2931 = distinct !DISubprogram(name: "xcharalloc", scope: !365, file: !365, line: 59, type: !2932, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!22, !27}
!2934 = !{!2935}
!2935 = !DILocalVariable(name: "n", arg: 1, scope: !2931, file: !365, line: 59, type: !27)
!2936 = !DILocation(line: 0, scope: !2931)
!2937 = !DILocation(line: 0, scope: !2899, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 61, column: 10, scope: !2931)
!2939 = !DILocation(line: 49, column: 25, scope: !2899, inlinedAt: !2938)
!2940 = !DILocation(line: 0, scope: !2880, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 49, column: 10, scope: !2899, inlinedAt: !2938)
!2942 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !2941)
!2943 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !2941)
!2944 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !2941)
!2945 = !DILocation(line: 61, column: 3, scope: !2931)
!2946 = distinct !DISubprogram(name: "xrealloc", scope: !365, file: !365, line: 68, type: !2947, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!24, !24, !27}
!2949 = !{!2950, !2951}
!2950 = !DILocalVariable(name: "p", arg: 1, scope: !2946, file: !365, line: 68, type: !24)
!2951 = !DILocalVariable(name: "s", arg: 2, scope: !2946, file: !365, line: 68, type: !27)
!2952 = !DILocation(line: 0, scope: !2946)
!2953 = !DILocalVariable(name: "ptr", arg: 1, scope: !2954, file: !2955, line: 2057, type: !24)
!2954 = distinct !DISubprogram(name: "rpl_realloc", scope: !2955, file: !2955, line: 2057, type: !2947, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2956)
!2955 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2956 = !{!2953, !2957}
!2957 = !DILocalVariable(name: "size", arg: 2, scope: !2954, file: !2955, line: 2057, type: !27)
!2958 = !DILocation(line: 0, scope: !2954, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 70, column: 25, scope: !2946)
!2960 = !DILocation(line: 2059, column: 24, scope: !2954, inlinedAt: !2959)
!2961 = !DILocation(line: 2059, column: 10, scope: !2954, inlinedAt: !2959)
!2962 = !DILocation(line: 0, scope: !2880, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 70, column: 10, scope: !2946)
!2964 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !2963)
!2965 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !2963)
!2966 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !2963)
!2967 = !DILocation(line: 70, column: 3, scope: !2946)
!2968 = distinct !DISubprogram(name: "xirealloc", scope: !365, file: !365, line: 74, type: !2969, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2971)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!24, !24, !384}
!2971 = !{!2972, !2973}
!2972 = !DILocalVariable(name: "p", arg: 1, scope: !2968, file: !365, line: 74, type: !24)
!2973 = !DILocalVariable(name: "s", arg: 2, scope: !2968, file: !365, line: 74, type: !384)
!2974 = !DILocation(line: 0, scope: !2968)
!2975 = !DILocalVariable(name: "p", arg: 1, scope: !2976, file: !2920, line: 66, type: !24)
!2976 = distinct !DISubprogram(name: "irealloc", scope: !2920, file: !2920, line: 66, type: !2969, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2977)
!2977 = !{!2975, !2978}
!2978 = !DILocalVariable(name: "s", arg: 2, scope: !2976, file: !2920, line: 66, type: !384)
!2979 = !DILocation(line: 0, scope: !2976, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 76, column: 25, scope: !2968)
!2981 = !DILocation(line: 0, scope: !2954, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 68, column: 26, scope: !2976, inlinedAt: !2980)
!2983 = !DILocation(line: 2059, column: 24, scope: !2954, inlinedAt: !2982)
!2984 = !DILocation(line: 2059, column: 10, scope: !2954, inlinedAt: !2982)
!2985 = !DILocation(line: 0, scope: !2880, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 76, column: 10, scope: !2968)
!2987 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !2986)
!2988 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !2986)
!2989 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !2986)
!2990 = !DILocation(line: 76, column: 3, scope: !2968)
!2991 = distinct !DISubprogram(name: "xireallocarray", scope: !365, file: !365, line: 89, type: !2992, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!24, !24, !384, !384}
!2994 = !{!2995, !2996, !2997}
!2995 = !DILocalVariable(name: "p", arg: 1, scope: !2991, file: !365, line: 89, type: !24)
!2996 = !DILocalVariable(name: "n", arg: 2, scope: !2991, file: !365, line: 89, type: !384)
!2997 = !DILocalVariable(name: "s", arg: 3, scope: !2991, file: !365, line: 89, type: !384)
!2998 = !DILocation(line: 0, scope: !2991)
!2999 = !DILocalVariable(name: "p", arg: 1, scope: !3000, file: !2920, line: 98, type: !24)
!3000 = distinct !DISubprogram(name: "ireallocarray", scope: !2920, file: !2920, line: 98, type: !2992, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3001)
!3001 = !{!2999, !3002, !3003}
!3002 = !DILocalVariable(name: "n", arg: 2, scope: !3000, file: !2920, line: 98, type: !384)
!3003 = !DILocalVariable(name: "s", arg: 3, scope: !3000, file: !2920, line: 98, type: !384)
!3004 = !DILocation(line: 0, scope: !3000, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 91, column: 25, scope: !2991)
!3006 = !DILocation(line: 101, column: 13, scope: !3000, inlinedAt: !3005)
!3007 = !DILocation(line: 0, scope: !2880, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 91, column: 10, scope: !2991)
!3009 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3008)
!3010 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3008)
!3011 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3008)
!3012 = !DILocation(line: 91, column: 3, scope: !2991)
!3013 = distinct !DISubprogram(name: "xnmalloc", scope: !365, file: !365, line: 98, type: !3014, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!24, !27, !27}
!3016 = !{!3017, !3018}
!3017 = !DILocalVariable(name: "n", arg: 1, scope: !3013, file: !365, line: 98, type: !27)
!3018 = !DILocalVariable(name: "s", arg: 2, scope: !3013, file: !365, line: 98, type: !27)
!3019 = !DILocation(line: 0, scope: !3013)
!3020 = !DILocation(line: 0, scope: !2872, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 100, column: 10, scope: !3013)
!3022 = !DILocation(line: 85, column: 25, scope: !2872, inlinedAt: !3021)
!3023 = !DILocation(line: 0, scope: !2880, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 85, column: 10, scope: !2872, inlinedAt: !3021)
!3025 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3024)
!3026 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3024)
!3027 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3024)
!3028 = !DILocation(line: 100, column: 3, scope: !3013)
!3029 = distinct !DISubprogram(name: "xinmalloc", scope: !365, file: !365, line: 104, type: !3030, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!24, !384, !384}
!3032 = !{!3033, !3034}
!3033 = !DILocalVariable(name: "n", arg: 1, scope: !3029, file: !365, line: 104, type: !384)
!3034 = !DILocalVariable(name: "s", arg: 2, scope: !3029, file: !365, line: 104, type: !384)
!3035 = !DILocation(line: 0, scope: !3029)
!3036 = !DILocation(line: 0, scope: !2991, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 106, column: 10, scope: !3029)
!3038 = !DILocation(line: 0, scope: !3000, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 91, column: 25, scope: !2991, inlinedAt: !3037)
!3040 = !DILocation(line: 101, column: 13, scope: !3000, inlinedAt: !3039)
!3041 = !DILocation(line: 0, scope: !2880, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 91, column: 10, scope: !2991, inlinedAt: !3037)
!3043 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3042)
!3044 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3042)
!3045 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3042)
!3046 = !DILocation(line: 106, column: 3, scope: !3029)
!3047 = distinct !DISubprogram(name: "x2realloc", scope: !365, file: !365, line: 116, type: !3048, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!24, !24, !371}
!3050 = !{!3051, !3052}
!3051 = !DILocalVariable(name: "p", arg: 1, scope: !3047, file: !365, line: 116, type: !24)
!3052 = !DILocalVariable(name: "ps", arg: 2, scope: !3047, file: !365, line: 116, type: !371)
!3053 = !DILocation(line: 0, scope: !3047)
!3054 = !DILocation(line: 0, scope: !368, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 118, column: 10, scope: !3047)
!3056 = !DILocation(line: 178, column: 14, scope: !368, inlinedAt: !3055)
!3057 = !DILocation(line: 180, column: 9, scope: !3058, inlinedAt: !3055)
!3058 = distinct !DILexicalBlock(scope: !368, file: !365, line: 180, column: 7)
!3059 = !DILocation(line: 180, column: 7, scope: !368, inlinedAt: !3055)
!3060 = !DILocation(line: 182, column: 13, scope: !3061, inlinedAt: !3055)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !365, line: 182, column: 11)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !365, line: 181, column: 5)
!3063 = !DILocation(line: 182, column: 11, scope: !3062, inlinedAt: !3055)
!3064 = !DILocation(line: 197, column: 11, scope: !3065, inlinedAt: !3055)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !365, line: 197, column: 11)
!3066 = distinct !DILexicalBlock(scope: !3058, file: !365, line: 195, column: 5)
!3067 = !DILocation(line: 197, column: 11, scope: !3066, inlinedAt: !3055)
!3068 = !DILocation(line: 198, column: 9, scope: !3065, inlinedAt: !3055)
!3069 = !DILocation(line: 0, scope: !2872, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 201, column: 7, scope: !368, inlinedAt: !3055)
!3071 = !DILocation(line: 85, column: 25, scope: !2872, inlinedAt: !3070)
!3072 = !DILocation(line: 0, scope: !2880, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 85, column: 10, scope: !2872, inlinedAt: !3070)
!3074 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3073)
!3075 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3073)
!3076 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3073)
!3077 = !DILocation(line: 202, column: 7, scope: !368, inlinedAt: !3055)
!3078 = !DILocation(line: 118, column: 3, scope: !3047)
!3079 = !DILocation(line: 0, scope: !368)
!3080 = !DILocation(line: 178, column: 14, scope: !368)
!3081 = !DILocation(line: 180, column: 9, scope: !3058)
!3082 = !DILocation(line: 180, column: 7, scope: !368)
!3083 = !DILocation(line: 182, column: 13, scope: !3061)
!3084 = !DILocation(line: 182, column: 11, scope: !3062)
!3085 = !DILocation(line: 190, column: 30, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3061, file: !365, line: 183, column: 9)
!3087 = !DILocation(line: 191, column: 16, scope: !3086)
!3088 = !DILocation(line: 191, column: 13, scope: !3086)
!3089 = !DILocation(line: 192, column: 9, scope: !3086)
!3090 = !DILocation(line: 197, column: 11, scope: !3065)
!3091 = !DILocation(line: 197, column: 11, scope: !3066)
!3092 = !DILocation(line: 198, column: 9, scope: !3065)
!3093 = !DILocation(line: 0, scope: !2872, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 201, column: 7, scope: !368)
!3095 = !DILocation(line: 85, column: 25, scope: !2872, inlinedAt: !3094)
!3096 = !DILocation(line: 0, scope: !2880, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 85, column: 10, scope: !2872, inlinedAt: !3094)
!3098 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3097)
!3099 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3097)
!3100 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3097)
!3101 = !DILocation(line: 202, column: 7, scope: !368)
!3102 = !DILocation(line: 203, column: 3, scope: !368)
!3103 = !DILocation(line: 0, scope: !380)
!3104 = !DILocation(line: 230, column: 14, scope: !380)
!3105 = !DILocation(line: 238, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !380, file: !365, line: 238, column: 7)
!3107 = !DILocation(line: 238, column: 7, scope: !380)
!3108 = !DILocation(line: 240, column: 9, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !380, file: !365, line: 240, column: 7)
!3110 = !DILocation(line: 240, column: 18, scope: !3109)
!3111 = !DILocation(line: 253, column: 8, scope: !380)
!3112 = !DILocation(line: 258, column: 27, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !365, line: 257, column: 5)
!3114 = distinct !DILexicalBlock(scope: !380, file: !365, line: 256, column: 7)
!3115 = !DILocation(line: 259, column: 32, scope: !3113)
!3116 = !DILocation(line: 260, column: 5, scope: !3113)
!3117 = !DILocation(line: 262, column: 9, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !380, file: !365, line: 262, column: 7)
!3119 = !DILocation(line: 262, column: 7, scope: !380)
!3120 = !DILocation(line: 263, column: 9, scope: !3118)
!3121 = !DILocation(line: 263, column: 5, scope: !3118)
!3122 = !DILocation(line: 264, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !380, file: !365, line: 264, column: 7)
!3124 = !DILocation(line: 264, column: 14, scope: !3123)
!3125 = !DILocation(line: 265, column: 7, scope: !3123)
!3126 = !DILocation(line: 265, column: 11, scope: !3123)
!3127 = !DILocation(line: 266, column: 11, scope: !3123)
!3128 = !DILocation(line: 266, column: 26, scope: !3123)
!3129 = !DILocation(line: 267, column: 14, scope: !3123)
!3130 = !DILocation(line: 264, column: 7, scope: !380)
!3131 = !DILocation(line: 268, column: 5, scope: !3123)
!3132 = !DILocation(line: 0, scope: !2946, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 269, column: 8, scope: !380)
!3134 = !DILocation(line: 0, scope: !2954, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 70, column: 25, scope: !2946, inlinedAt: !3133)
!3136 = !DILocation(line: 2059, column: 24, scope: !2954, inlinedAt: !3135)
!3137 = !DILocation(line: 2059, column: 10, scope: !2954, inlinedAt: !3135)
!3138 = !DILocation(line: 0, scope: !2880, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 70, column: 10, scope: !2946, inlinedAt: !3133)
!3140 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3139)
!3141 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3139)
!3142 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3139)
!3143 = !DILocation(line: 270, column: 7, scope: !380)
!3144 = !DILocation(line: 271, column: 3, scope: !380)
!3145 = distinct !DISubprogram(name: "xzalloc", scope: !365, file: !365, line: 279, type: !2900, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3146)
!3146 = !{!3147}
!3147 = !DILocalVariable(name: "s", arg: 1, scope: !3145, file: !365, line: 279, type: !27)
!3148 = !DILocation(line: 0, scope: !3145)
!3149 = !DILocalVariable(name: "n", arg: 1, scope: !3150, file: !365, line: 294, type: !27)
!3150 = distinct !DISubprogram(name: "xcalloc", scope: !365, file: !365, line: 294, type: !3014, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3151)
!3151 = !{!3149, !3152}
!3152 = !DILocalVariable(name: "s", arg: 2, scope: !3150, file: !365, line: 294, type: !27)
!3153 = !DILocation(line: 0, scope: !3150, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 281, column: 10, scope: !3145)
!3155 = !DILocation(line: 296, column: 25, scope: !3150, inlinedAt: !3154)
!3156 = !DILocation(line: 0, scope: !2880, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 296, column: 10, scope: !3150, inlinedAt: !3154)
!3158 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3157)
!3159 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3157)
!3160 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3157)
!3161 = !DILocation(line: 281, column: 3, scope: !3145)
!3162 = !DILocation(line: 0, scope: !3150)
!3163 = !DILocation(line: 296, column: 25, scope: !3150)
!3164 = !DILocation(line: 0, scope: !2880, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 296, column: 10, scope: !3150)
!3166 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3165)
!3167 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3165)
!3168 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3165)
!3169 = !DILocation(line: 296, column: 3, scope: !3150)
!3170 = distinct !DISubprogram(name: "xizalloc", scope: !365, file: !365, line: 285, type: !2913, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3171)
!3171 = !{!3172}
!3172 = !DILocalVariable(name: "s", arg: 1, scope: !3170, file: !365, line: 285, type: !384)
!3173 = !DILocation(line: 0, scope: !3170)
!3174 = !DILocalVariable(name: "n", arg: 1, scope: !3175, file: !365, line: 300, type: !384)
!3175 = distinct !DISubprogram(name: "xicalloc", scope: !365, file: !365, line: 300, type: !3030, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3176)
!3176 = !{!3174, !3177}
!3177 = !DILocalVariable(name: "s", arg: 2, scope: !3175, file: !365, line: 300, type: !384)
!3178 = !DILocation(line: 0, scope: !3175, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 287, column: 10, scope: !3170)
!3180 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !2920, line: 77, type: !384)
!3181 = distinct !DISubprogram(name: "icalloc", scope: !2920, file: !2920, line: 77, type: !3030, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3182)
!3182 = !{!3180, !3183}
!3183 = !DILocalVariable(name: "s", arg: 2, scope: !3181, file: !2920, line: 77, type: !384)
!3184 = !DILocation(line: 0, scope: !3181, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 302, column: 25, scope: !3175, inlinedAt: !3179)
!3186 = !DILocation(line: 91, column: 10, scope: !3181, inlinedAt: !3185)
!3187 = !DILocation(line: 0, scope: !2880, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 302, column: 10, scope: !3175, inlinedAt: !3179)
!3189 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3188)
!3190 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3188)
!3191 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3188)
!3192 = !DILocation(line: 287, column: 3, scope: !3170)
!3193 = !DILocation(line: 0, scope: !3175)
!3194 = !DILocation(line: 0, scope: !3181, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 302, column: 25, scope: !3175)
!3196 = !DILocation(line: 91, column: 10, scope: !3181, inlinedAt: !3195)
!3197 = !DILocation(line: 0, scope: !2880, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 302, column: 10, scope: !3175)
!3199 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3198)
!3200 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3198)
!3201 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3198)
!3202 = !DILocation(line: 302, column: 3, scope: !3175)
!3203 = distinct !DISubprogram(name: "xmemdup", scope: !365, file: !365, line: 310, type: !3204, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!24, !687, !27}
!3206 = !{!3207, !3208}
!3207 = !DILocalVariable(name: "p", arg: 1, scope: !3203, file: !365, line: 310, type: !687)
!3208 = !DILocalVariable(name: "s", arg: 2, scope: !3203, file: !365, line: 310, type: !27)
!3209 = !DILocation(line: 0, scope: !3203)
!3210 = !DILocation(line: 0, scope: !2899, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 312, column: 18, scope: !3203)
!3212 = !DILocation(line: 49, column: 25, scope: !2899, inlinedAt: !3211)
!3213 = !DILocation(line: 0, scope: !2880, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 49, column: 10, scope: !2899, inlinedAt: !3211)
!3215 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3214)
!3216 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3214)
!3217 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3214)
!3218 = !DILocalVariable(name: "__dest", arg: 1, scope: !3219, file: !1390, line: 26, type: !3222)
!3219 = distinct !DISubprogram(name: "memcpy", scope: !1390, file: !1390, line: 26, type: !3220, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3223)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!24, !3222, !686, !27}
!3222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!3223 = !{!3218, !3224, !3225}
!3224 = !DILocalVariable(name: "__src", arg: 2, scope: !3219, file: !1390, line: 26, type: !686)
!3225 = !DILocalVariable(name: "__len", arg: 3, scope: !3219, file: !1390, line: 26, type: !27)
!3226 = !DILocation(line: 0, scope: !3219, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 312, column: 10, scope: !3203)
!3228 = !DILocation(line: 29, column: 10, scope: !3219, inlinedAt: !3227)
!3229 = !DILocation(line: 312, column: 3, scope: !3203)
!3230 = distinct !DISubprogram(name: "ximemdup", scope: !365, file: !365, line: 316, type: !3231, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!24, !687, !384}
!3233 = !{!3234, !3235}
!3234 = !DILocalVariable(name: "p", arg: 1, scope: !3230, file: !365, line: 316, type: !687)
!3235 = !DILocalVariable(name: "s", arg: 2, scope: !3230, file: !365, line: 316, type: !384)
!3236 = !DILocation(line: 0, scope: !3230)
!3237 = !DILocation(line: 0, scope: !2912, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 318, column: 18, scope: !3230)
!3239 = !DILocation(line: 0, scope: !2919, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 55, column: 25, scope: !2912, inlinedAt: !3238)
!3241 = !DILocation(line: 57, column: 26, scope: !2919, inlinedAt: !3240)
!3242 = !DILocation(line: 0, scope: !2880, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 55, column: 10, scope: !2912, inlinedAt: !3238)
!3244 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3243)
!3245 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3243)
!3246 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3243)
!3247 = !DILocation(line: 0, scope: !3219, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 318, column: 10, scope: !3230)
!3249 = !DILocation(line: 29, column: 10, scope: !3219, inlinedAt: !3248)
!3250 = !DILocation(line: 318, column: 3, scope: !3230)
!3251 = distinct !DISubprogram(name: "ximemdup0", scope: !365, file: !365, line: 325, type: !3252, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!22, !687, !384}
!3254 = !{!3255, !3256, !3257}
!3255 = !DILocalVariable(name: "p", arg: 1, scope: !3251, file: !365, line: 325, type: !687)
!3256 = !DILocalVariable(name: "s", arg: 2, scope: !3251, file: !365, line: 325, type: !384)
!3257 = !DILocalVariable(name: "result", scope: !3251, file: !365, line: 327, type: !22)
!3258 = !DILocation(line: 0, scope: !3251)
!3259 = !DILocation(line: 327, column: 30, scope: !3251)
!3260 = !DILocation(line: 0, scope: !2912, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 327, column: 18, scope: !3251)
!3262 = !DILocation(line: 0, scope: !2919, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 55, column: 25, scope: !2912, inlinedAt: !3261)
!3264 = !DILocation(line: 57, column: 26, scope: !2919, inlinedAt: !3263)
!3265 = !DILocation(line: 0, scope: !2880, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 55, column: 10, scope: !2912, inlinedAt: !3261)
!3267 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3266)
!3268 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3266)
!3269 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3266)
!3270 = !DILocation(line: 328, column: 3, scope: !3251)
!3271 = !DILocation(line: 328, column: 13, scope: !3251)
!3272 = !DILocation(line: 0, scope: !3219, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 329, column: 10, scope: !3251)
!3274 = !DILocation(line: 29, column: 10, scope: !3219, inlinedAt: !3273)
!3275 = !DILocation(line: 329, column: 3, scope: !3251)
!3276 = distinct !DISubprogram(name: "xstrdup", scope: !365, file: !365, line: 335, type: !681, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3277)
!3277 = !{!3278}
!3278 = !DILocalVariable(name: "string", arg: 1, scope: !3276, file: !365, line: 335, type: !30)
!3279 = !DILocation(line: 0, scope: !3276)
!3280 = !DILocation(line: 337, column: 27, scope: !3276)
!3281 = !DILocation(line: 337, column: 43, scope: !3276)
!3282 = !DILocation(line: 0, scope: !3203, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 337, column: 10, scope: !3276)
!3284 = !DILocation(line: 0, scope: !2899, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 312, column: 18, scope: !3203, inlinedAt: !3283)
!3286 = !DILocation(line: 49, column: 25, scope: !2899, inlinedAt: !3285)
!3287 = !DILocation(line: 0, scope: !2880, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 49, column: 10, scope: !2899, inlinedAt: !3285)
!3289 = !DILocation(line: 39, column: 8, scope: !2887, inlinedAt: !3288)
!3290 = !DILocation(line: 39, column: 7, scope: !2880, inlinedAt: !3288)
!3291 = !DILocation(line: 40, column: 5, scope: !2887, inlinedAt: !3288)
!3292 = !DILocation(line: 0, scope: !3219, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 312, column: 10, scope: !3203, inlinedAt: !3283)
!3294 = !DILocation(line: 29, column: 10, scope: !3219, inlinedAt: !3293)
!3295 = !DILocation(line: 337, column: 3, scope: !3276)
!3296 = distinct !DISubprogram(name: "xalloc_die", scope: !399, file: !399, line: 32, type: !184, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !3297)
!3297 = !{!3298}
!3298 = !DILocalVariable(name: "__errstatus", scope: !3299, file: !399, line: 34, type: !3300)
!3299 = distinct !DILexicalBlock(scope: !3296, file: !399, line: 34, column: 3)
!3300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3301 = !DILocation(line: 34, column: 3, scope: !3299)
!3302 = !DILocation(line: 0, scope: !3299)
!3303 = !DILocation(line: 40, column: 3, scope: !3296)
!3304 = distinct !DISubprogram(name: "xgetgroups", scope: !401, file: !401, line: 31, type: !415, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3305)
!3305 = !{!3306, !3307, !3308, !3309}
!3306 = !DILocalVariable(name: "username", arg: 1, scope: !3304, file: !401, line: 31, type: !30)
!3307 = !DILocalVariable(name: "gid", arg: 2, scope: !3304, file: !401, line: 31, type: !417)
!3308 = !DILocalVariable(name: "groups", arg: 3, scope: !3304, file: !401, line: 31, type: !420)
!3309 = !DILocalVariable(name: "result", scope: !3304, file: !401, line: 33, type: !25)
!3310 = !DILocation(line: 0, scope: !3304)
!3311 = !DILocation(line: 33, column: 16, scope: !3304)
!3312 = !DILocation(line: 34, column: 14, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3304, file: !401, line: 34, column: 7)
!3314 = !DILocation(line: 34, column: 20, scope: !3313)
!3315 = !DILocation(line: 34, column: 23, scope: !3313)
!3316 = !DILocation(line: 34, column: 29, scope: !3313)
!3317 = !DILocation(line: 34, column: 7, scope: !3304)
!3318 = !DILocation(line: 35, column: 5, scope: !3313)
!3319 = !DILocation(line: 36, column: 3, scope: !3304)
!3320 = distinct !DISubprogram(name: "close_stream", scope: !403, file: !403, line: 55, type: !3321, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3357)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!25, !3323}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3325)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3325, file: !64, line: 51, baseType: !25, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3325, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3325, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3325, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3325, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3325, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3325, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3325, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3325, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3325, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3325, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3325, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3325, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3325, file: !64, line: 70, baseType: !3341, size: 64, offset: 832)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3325, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3325, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3325, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3325, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3325, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3325, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3325, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3325, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3325, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3325, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3325, file: !64, line: 93, baseType: !3341, size: 64, offset: 1344)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3325, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3325, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3325, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3325, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3357 = !{!3358, !3359, !3361, !3362}
!3358 = !DILocalVariable(name: "stream", arg: 1, scope: !3320, file: !403, line: 55, type: !3323)
!3359 = !DILocalVariable(name: "some_pending", scope: !3320, file: !403, line: 57, type: !3360)
!3360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!3361 = !DILocalVariable(name: "prev_fail", scope: !3320, file: !403, line: 58, type: !3360)
!3362 = !DILocalVariable(name: "fclose_fail", scope: !3320, file: !403, line: 59, type: !3360)
!3363 = !DILocation(line: 0, scope: !3320)
!3364 = !DILocation(line: 57, column: 30, scope: !3320)
!3365 = !DILocalVariable(name: "__stream", arg: 1, scope: !3366, file: !775, line: 135, type: !3323)
!3366 = distinct !DISubprogram(name: "ferror_unlocked", scope: !775, file: !775, line: 135, type: !3321, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3367)
!3367 = !{!3365}
!3368 = !DILocation(line: 0, scope: !3366, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 58, column: 27, scope: !3320)
!3370 = !DILocation(line: 137, column: 10, scope: !3366, inlinedAt: !3369)
!3371 = !DILocation(line: 58, column: 43, scope: !3320)
!3372 = !DILocation(line: 59, column: 29, scope: !3320)
!3373 = !DILocation(line: 59, column: 45, scope: !3320)
!3374 = !DILocation(line: 69, column: 17, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3320, file: !403, line: 69, column: 7)
!3376 = !DILocation(line: 57, column: 50, scope: !3320)
!3377 = !DILocation(line: 69, column: 33, scope: !3375)
!3378 = !DILocation(line: 69, column: 53, scope: !3375)
!3379 = !DILocation(line: 69, column: 59, scope: !3375)
!3380 = !DILocation(line: 69, column: 7, scope: !3320)
!3381 = !DILocation(line: 71, column: 11, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3375, file: !403, line: 70, column: 5)
!3383 = !DILocation(line: 72, column: 9, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3382, file: !403, line: 71, column: 11)
!3385 = !DILocation(line: 72, column: 15, scope: !3384)
!3386 = !DILocation(line: 77, column: 1, scope: !3320)
!3387 = distinct !DISubprogram(name: "rpl_fclose", scope: !405, file: !405, line: 58, type: !3388, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3424)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!25, !3390}
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3392, file: !64, line: 51, baseType: !25, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3392, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3392, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3392, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3392, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3392, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3392, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3392, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3392, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3392, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3392, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3392, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3392, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3392, file: !64, line: 70, baseType: !3408, size: 64, offset: 832)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3392, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3392, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3392, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3392, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3392, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3392, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3392, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3392, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3392, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3392, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3392, file: !64, line: 93, baseType: !3408, size: 64, offset: 1344)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3392, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3392, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3392, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3392, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3424 = !{!3425, !3426, !3427, !3428}
!3425 = !DILocalVariable(name: "fp", arg: 1, scope: !3387, file: !405, line: 58, type: !3390)
!3426 = !DILocalVariable(name: "saved_errno", scope: !3387, file: !405, line: 60, type: !25)
!3427 = !DILocalVariable(name: "fd", scope: !3387, file: !405, line: 63, type: !25)
!3428 = !DILocalVariable(name: "result", scope: !3387, file: !405, line: 74, type: !25)
!3429 = !DILocation(line: 0, scope: !3387)
!3430 = !DILocation(line: 63, column: 12, scope: !3387)
!3431 = !DILocation(line: 64, column: 10, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3387, file: !405, line: 64, column: 7)
!3433 = !DILocation(line: 64, column: 7, scope: !3387)
!3434 = !DILocation(line: 65, column: 12, scope: !3432)
!3435 = !DILocation(line: 65, column: 5, scope: !3432)
!3436 = !DILocation(line: 70, column: 9, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3387, file: !405, line: 70, column: 7)
!3438 = !DILocation(line: 70, column: 23, scope: !3437)
!3439 = !DILocation(line: 70, column: 33, scope: !3437)
!3440 = !DILocation(line: 70, column: 26, scope: !3437)
!3441 = !DILocation(line: 70, column: 59, scope: !3437)
!3442 = !DILocation(line: 71, column: 7, scope: !3437)
!3443 = !DILocation(line: 71, column: 10, scope: !3437)
!3444 = !DILocation(line: 70, column: 7, scope: !3387)
!3445 = !DILocation(line: 100, column: 12, scope: !3387)
!3446 = !DILocation(line: 105, column: 7, scope: !3387)
!3447 = !DILocation(line: 72, column: 19, scope: !3437)
!3448 = !DILocation(line: 105, column: 19, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3387, file: !405, line: 105, column: 7)
!3450 = !DILocation(line: 107, column: 13, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3449, file: !405, line: 106, column: 5)
!3452 = !DILocation(line: 109, column: 5, scope: !3451)
!3453 = !DILocation(line: 112, column: 1, scope: !3387)
!3454 = !DISubprogram(name: "fileno", scope: !157, file: !157, line: 809, type: !3388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3455 = !DISubprogram(name: "fclose", scope: !157, file: !157, line: 178, type: !3388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3456 = !DISubprogram(name: "lseek", scope: !852, file: !852, line: 339, type: !3457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!86, !25, !86, !25}
!3459 = distinct !DISubprogram(name: "rpl_fflush", scope: !407, file: !407, line: 130, type: !3460, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3496)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!25, !3462}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3464)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3464, file: !64, line: 51, baseType: !25, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3464, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3464, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3464, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3464, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3464, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3464, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3464, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3464, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3464, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3464, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3464, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3464, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3464, file: !64, line: 70, baseType: !3480, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3464, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3464, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3464, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3464, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3464, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3464, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3464, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3464, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3464, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3464, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3464, file: !64, line: 93, baseType: !3480, size: 64, offset: 1344)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3464, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3464, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3464, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3464, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3496 = !{!3497}
!3497 = !DILocalVariable(name: "stream", arg: 1, scope: !3459, file: !407, line: 130, type: !3462)
!3498 = !DILocation(line: 0, scope: !3459)
!3499 = !DILocation(line: 151, column: 14, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3459, file: !407, line: 151, column: 7)
!3501 = !DILocation(line: 151, column: 22, scope: !3500)
!3502 = !DILocation(line: 151, column: 27, scope: !3500)
!3503 = !DILocation(line: 151, column: 7, scope: !3459)
!3504 = !DILocation(line: 152, column: 12, scope: !3500)
!3505 = !DILocation(line: 152, column: 5, scope: !3500)
!3506 = !DILocalVariable(name: "fp", arg: 1, scope: !3507, file: !407, line: 42, type: !3462)
!3507 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !407, file: !407, line: 42, type: !3508, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !3462}
!3510 = !{!3506}
!3511 = !DILocation(line: 0, scope: !3507, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 157, column: 3, scope: !3459)
!3513 = !DILocation(line: 44, column: 12, scope: !3514, inlinedAt: !3512)
!3514 = distinct !DILexicalBlock(scope: !3507, file: !407, line: 44, column: 7)
!3515 = !DILocation(line: 44, column: 19, scope: !3514, inlinedAt: !3512)
!3516 = !DILocation(line: 44, column: 7, scope: !3507, inlinedAt: !3512)
!3517 = !DILocation(line: 46, column: 5, scope: !3514, inlinedAt: !3512)
!3518 = !DILocation(line: 159, column: 10, scope: !3459)
!3519 = !DILocation(line: 159, column: 3, scope: !3459)
!3520 = !DILocation(line: 236, column: 1, scope: !3459)
!3521 = !DISubprogram(name: "fflush", scope: !157, file: !157, line: 230, type: !3460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3522 = distinct !DISubprogram(name: "rpl_fseeko", scope: !409, file: !409, line: 28, type: !3523, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3560)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!25, !3525, !3559, !25}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3527)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3527, file: !64, line: 51, baseType: !25, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3527, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3527, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3527, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3527, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3527, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3527, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3527, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3527, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3527, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3527, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3527, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3527, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3527, file: !64, line: 70, baseType: !3543, size: 64, offset: 832)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3527, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3527, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3527, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3527, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3527, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3527, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3527, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3527, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3527, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3527, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3527, file: !64, line: 93, baseType: !3543, size: 64, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3527, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3527, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3527, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3527, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3559 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !157, line: 63, baseType: !86)
!3560 = !{!3561, !3562, !3563, !3564}
!3561 = !DILocalVariable(name: "fp", arg: 1, scope: !3522, file: !409, line: 28, type: !3525)
!3562 = !DILocalVariable(name: "offset", arg: 2, scope: !3522, file: !409, line: 28, type: !3559)
!3563 = !DILocalVariable(name: "whence", arg: 3, scope: !3522, file: !409, line: 28, type: !25)
!3564 = !DILocalVariable(name: "pos", scope: !3565, file: !409, line: 123, type: !3559)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !409, line: 119, column: 5)
!3566 = distinct !DILexicalBlock(scope: !3522, file: !409, line: 55, column: 7)
!3567 = !DILocation(line: 0, scope: !3522)
!3568 = !DILocation(line: 55, column: 12, scope: !3566)
!3569 = !{!783, !484, i64 16}
!3570 = !DILocation(line: 55, column: 33, scope: !3566)
!3571 = !{!783, !484, i64 8}
!3572 = !DILocation(line: 55, column: 25, scope: !3566)
!3573 = !DILocation(line: 56, column: 7, scope: !3566)
!3574 = !DILocation(line: 56, column: 15, scope: !3566)
!3575 = !DILocation(line: 56, column: 37, scope: !3566)
!3576 = !{!783, !484, i64 32}
!3577 = !DILocation(line: 56, column: 29, scope: !3566)
!3578 = !DILocation(line: 57, column: 7, scope: !3566)
!3579 = !DILocation(line: 57, column: 15, scope: !3566)
!3580 = !{!783, !484, i64 72}
!3581 = !DILocation(line: 57, column: 29, scope: !3566)
!3582 = !DILocation(line: 55, column: 7, scope: !3522)
!3583 = !DILocation(line: 123, column: 26, scope: !3565)
!3584 = !DILocation(line: 123, column: 19, scope: !3565)
!3585 = !DILocation(line: 0, scope: !3565)
!3586 = !DILocation(line: 124, column: 15, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3565, file: !409, line: 124, column: 11)
!3588 = !DILocation(line: 124, column: 11, scope: !3565)
!3589 = !DILocation(line: 135, column: 12, scope: !3565)
!3590 = !DILocation(line: 135, column: 19, scope: !3565)
!3591 = !DILocation(line: 136, column: 12, scope: !3565)
!3592 = !DILocation(line: 136, column: 20, scope: !3565)
!3593 = !{!783, !784, i64 144}
!3594 = !DILocation(line: 167, column: 7, scope: !3565)
!3595 = !DILocation(line: 169, column: 10, scope: !3522)
!3596 = !DILocation(line: 169, column: 3, scope: !3522)
!3597 = !DILocation(line: 170, column: 1, scope: !3522)
!3598 = !DISubprogram(name: "fseeko", scope: !157, file: !157, line: 736, type: !3599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!25, !3525, !86, !25}
!3601 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !334, file: !334, line: 100, type: !3602, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3605)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!27, !1408, !30, !27, !3604}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3605 = !{!3606, !3607, !3608, !3609, !3610}
!3606 = !DILocalVariable(name: "pwc", arg: 1, scope: !3601, file: !334, line: 100, type: !1408)
!3607 = !DILocalVariable(name: "s", arg: 2, scope: !3601, file: !334, line: 100, type: !30)
!3608 = !DILocalVariable(name: "n", arg: 3, scope: !3601, file: !334, line: 100, type: !27)
!3609 = !DILocalVariable(name: "ps", arg: 4, scope: !3601, file: !334, line: 100, type: !3604)
!3610 = !DILocalVariable(name: "ret", scope: !3601, file: !334, line: 130, type: !27)
!3611 = !DILocation(line: 0, scope: !3601)
!3612 = !DILocation(line: 105, column: 9, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3601, file: !334, line: 105, column: 7)
!3614 = !DILocation(line: 105, column: 7, scope: !3601)
!3615 = !DILocation(line: 117, column: 10, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3601, file: !334, line: 117, column: 7)
!3617 = !DILocation(line: 117, column: 7, scope: !3601)
!3618 = !DILocation(line: 130, column: 16, scope: !3601)
!3619 = !DILocation(line: 135, column: 11, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3601, file: !334, line: 135, column: 7)
!3621 = !DILocation(line: 135, column: 25, scope: !3620)
!3622 = !DILocation(line: 135, column: 30, scope: !3620)
!3623 = !DILocation(line: 135, column: 7, scope: !3601)
!3624 = !DILocalVariable(name: "ps", arg: 1, scope: !3625, file: !1381, line: 1135, type: !3604)
!3625 = distinct !DISubprogram(name: "mbszero", scope: !1381, file: !1381, line: 1135, type: !3626, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{null, !3604}
!3628 = !{!3624}
!3629 = !DILocation(line: 0, scope: !3625, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 137, column: 5, scope: !3620)
!3631 = !DILocalVariable(name: "__dest", arg: 1, scope: !3632, file: !1390, line: 57, type: !24)
!3632 = distinct !DISubprogram(name: "memset", scope: !1390, file: !1390, line: 57, type: !1391, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3633)
!3633 = !{!3631, !3634, !3635}
!3634 = !DILocalVariable(name: "__ch", arg: 2, scope: !3632, file: !1390, line: 57, type: !25)
!3635 = !DILocalVariable(name: "__len", arg: 3, scope: !3632, file: !1390, line: 57, type: !27)
!3636 = !DILocation(line: 0, scope: !3632, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 1137, column: 3, scope: !3625, inlinedAt: !3630)
!3638 = !DILocation(line: 59, column: 10, scope: !3632, inlinedAt: !3637)
!3639 = !DILocation(line: 137, column: 5, scope: !3620)
!3640 = !DILocation(line: 138, column: 11, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3601, file: !334, line: 138, column: 7)
!3642 = !DILocation(line: 138, column: 7, scope: !3601)
!3643 = !DILocation(line: 139, column: 5, scope: !3641)
!3644 = !DILocation(line: 143, column: 26, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3601, file: !334, line: 143, column: 7)
!3646 = !DILocation(line: 143, column: 41, scope: !3645)
!3647 = !DILocation(line: 143, column: 7, scope: !3601)
!3648 = !DILocation(line: 145, column: 15, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !334, line: 145, column: 11)
!3650 = distinct !DILexicalBlock(scope: !3645, file: !334, line: 144, column: 5)
!3651 = !DILocation(line: 145, column: 11, scope: !3650)
!3652 = !DILocation(line: 146, column: 32, scope: !3649)
!3653 = !DILocation(line: 146, column: 16, scope: !3649)
!3654 = !DILocation(line: 146, column: 14, scope: !3649)
!3655 = !DILocation(line: 146, column: 9, scope: !3649)
!3656 = !DILocation(line: 286, column: 1, scope: !3601)
!3657 = !DISubprogram(name: "mbsinit", scope: !3658, file: !3658, line: 293, type: !3659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3658 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!25, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!3663 = !DILocation(line: 0, scope: !414)
!3664 = !DILocation(line: 77, column: 7, scope: !428)
!3665 = !DILocation(line: 77, column: 7, scope: !414)
!3666 = !DILocation(line: 80, column: 7, scope: !427)
!3667 = !DILocation(line: 0, scope: !427)
!3668 = !DILocation(line: 80, column: 11, scope: !427)
!3669 = !DILocalVariable(name: "g", arg: 1, scope: !3670, file: !411, line: 43, type: !421)
!3670 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !411, file: !411, line: 43, type: !3671, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!421, !421, !27}
!3673 = !{!3669, !3674}
!3674 = !DILocalVariable(name: "num", arg: 2, scope: !3670, file: !411, line: 43, type: !27)
!3675 = !DILocation(line: 0, scope: !3670, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 82, column: 18, scope: !427)
!3677 = !DILocalVariable(name: "ptr", arg: 1, scope: !3678, file: !2955, line: 2057, type: !24)
!3678 = distinct !DISubprogram(name: "rpl_realloc", scope: !2955, file: !2955, line: 2057, type: !2947, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3679)
!3679 = !{!3677, !3680}
!3680 = !DILocalVariable(name: "size", arg: 2, scope: !3678, file: !2955, line: 2057, type: !27)
!3681 = !DILocation(line: 0, scope: !3678, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 51, column: 10, scope: !3670, inlinedAt: !3676)
!3683 = !DILocation(line: 2059, column: 10, scope: !3678, inlinedAt: !3682)
!3684 = !DILocation(line: 83, column: 13, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !427, file: !411, line: 83, column: 11)
!3686 = !DILocation(line: 83, column: 11, scope: !427)
!3687 = !DILocation(line: 88, column: 31, scope: !431)
!3688 = !DILocation(line: 82, column: 14, scope: !427)
!3689 = !DILocation(line: 0, scope: !431)
!3690 = !DILocation(line: 91, column: 20, scope: !431)
!3691 = !DILocation(line: 95, column: 18, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !431, file: !411, line: 95, column: 15)
!3693 = !DILocation(line: 95, column: 22, scope: !3692)
!3694 = !DILocation(line: 96, column: 26, scope: !3692)
!3695 = !DILocation(line: 96, column: 13, scope: !3692)
!3696 = !DILocation(line: 98, column: 43, scope: !431)
!3697 = !DILocation(line: 0, scope: !3670, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 98, column: 22, scope: !431)
!3699 = !DILocation(line: 45, column: 7, scope: !3700, inlinedAt: !3698)
!3700 = distinct !DILexicalBlock(scope: !3670, file: !411, line: 45, column: 7)
!3701 = !DILocation(line: 45, column: 7, scope: !3670, inlinedAt: !3698)
!3702 = !DILocation(line: 47, column: 7, scope: !3703, inlinedAt: !3698)
!3703 = distinct !DILexicalBlock(scope: !3700, file: !411, line: 46, column: 5)
!3704 = !DILocation(line: 47, column: 13, scope: !3703, inlinedAt: !3698)
!3705 = !DILocation(line: 99, column: 15, scope: !431)
!3706 = !DILocation(line: 51, column: 26, scope: !3670, inlinedAt: !3698)
!3707 = !DILocation(line: 0, scope: !3678, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 51, column: 10, scope: !3670, inlinedAt: !3698)
!3709 = !DILocation(line: 2059, column: 24, scope: !3678, inlinedAt: !3708)
!3710 = !DILocation(line: 2059, column: 10, scope: !3678, inlinedAt: !3708)
!3711 = !DILocation(line: 99, column: 17, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !431, file: !411, line: 99, column: 15)
!3713 = !DILocation(line: 101, column: 15, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3712, file: !411, line: 100, column: 13)
!3715 = !DILocation(line: 102, column: 15, scope: !3714)
!3716 = !DILocation(line: 106, column: 17, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !431, file: !411, line: 106, column: 15)
!3718 = !DILocation(line: 106, column: 15, scope: !431)
!3719 = distinct !{!3719, !3720, !3721}
!3720 = !DILocation(line: 86, column: 7, scope: !427)
!3721 = !DILocation(line: 113, column: 9, scope: !427)
!3722 = !DILocation(line: 108, column: 23, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3717, file: !411, line: 107, column: 13)
!3724 = !DILocation(line: 111, column: 15, scope: !3723)
!3725 = !DILocation(line: 114, column: 5, scope: !428)
!3726 = !DILocation(line: 120, column: 25, scope: !414)
!3727 = !DILocation(line: 125, column: 20, scope: !439)
!3728 = !DILocation(line: 125, column: 7, scope: !414)
!3729 = !DILocation(line: 127, column: 11, scope: !437)
!3730 = !DILocation(line: 127, column: 17, scope: !437)
!3731 = !DILocation(line: 127, column: 11, scope: !438)
!3732 = !DILocation(line: 0, scope: !3670, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 129, column: 22, scope: !436)
!3734 = !DILocation(line: 0, scope: !3678, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 51, column: 10, scope: !3670, inlinedAt: !3733)
!3736 = !DILocation(line: 2059, column: 10, scope: !3678, inlinedAt: !3735)
!3737 = !DILocation(line: 0, scope: !436)
!3738 = !DILocation(line: 130, column: 15, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !436, file: !411, line: 130, column: 15)
!3740 = !DILocation(line: 130, column: 15, scope: !436)
!3741 = !DILocation(line: 51, column: 10, scope: !3670, inlinedAt: !3733)
!3742 = !DILocation(line: 132, column: 23, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3739, file: !411, line: 131, column: 13)
!3744 = !DILocation(line: 133, column: 18, scope: !3743)
!3745 = !DILocation(line: 134, column: 26, scope: !3743)
!3746 = !DILocation(line: 140, column: 20, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !414, file: !411, line: 140, column: 7)
!3748 = !DILocation(line: 140, column: 25, scope: !3747)
!3749 = !DILocation(line: 142, column: 38, scope: !414)
!3750 = !DILocation(line: 0, scope: !3670, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 142, column: 14, scope: !414)
!3752 = !DILocation(line: 51, column: 26, scope: !3670, inlinedAt: !3751)
!3753 = !DILocation(line: 0, scope: !3678, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 51, column: 10, scope: !3670, inlinedAt: !3751)
!3755 = !DILocation(line: 2059, column: 10, scope: !3678, inlinedAt: !3754)
!3756 = !DILocation(line: 51, column: 10, scope: !3670, inlinedAt: !3751)
!3757 = !DILocation(line: 143, column: 9, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !414, file: !411, line: 143, column: 7)
!3759 = !DILocation(line: 143, column: 7, scope: !414)
!3760 = !DILocation(line: 148, column: 46, scope: !414)
!3761 = !DILocation(line: 148, column: 39, scope: !414)
!3762 = !DILocation(line: 149, column: 39, scope: !414)
!3763 = !DILocation(line: 148, column: 15, scope: !414)
!3764 = !DILocation(line: 151, column: 10, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !414, file: !411, line: 151, column: 7)
!3766 = !DILocation(line: 151, column: 7, scope: !414)
!3767 = !DILocation(line: 154, column: 7, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3765, file: !411, line: 152, column: 5)
!3769 = !DILocation(line: 155, column: 7, scope: !3768)
!3770 = !DILocation(line: 158, column: 17, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !414, file: !411, line: 158, column: 7)
!3772 = !DILocation(line: 160, column: 10, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3771, file: !411, line: 159, column: 5)
!3774 = !DILocation(line: 161, column: 9, scope: !3773)
!3775 = !DILocation(line: 162, column: 5, scope: !3773)
!3776 = !DILocation(line: 163, column: 11, scope: !414)
!3777 = !DILocation(line: 181, column: 9, scope: !444)
!3778 = !DILocation(line: 181, column: 7, scope: !414)
!3779 = !DILocation(line: 183, column: 21, scope: !443)
!3780 = !DILocation(line: 0, scope: !443)
!3781 = !DILocation(line: 184, column: 29, scope: !443)
!3782 = !DILocation(line: 0, scope: !447)
!3783 = !DILocation(line: 186, column: 7, scope: !447)
!3784 = !DILocation(line: 188, column: 15, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !411, line: 188, column: 15)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !411, line: 187, column: 9)
!3787 = distinct !DILexicalBlock(scope: !447, file: !411, line: 186, column: 7)
!3788 = !DILocation(line: 188, column: 21, scope: !3785)
!3789 = !DILocation(line: 188, column: 30, scope: !3785)
!3790 = !DILocation(line: 189, column: 15, scope: !3785)
!3791 = !DILocation(line: 189, column: 13, scope: !3785)
!3792 = !DILocation(line: 191, column: 14, scope: !3785)
!3793 = !DILocation(line: 191, column: 18, scope: !3785)
!3794 = !DILocation(line: 186, column: 38, scope: !3787)
!3795 = distinct !{!3795, !3783, !3796, !535}
!3796 = !DILocation(line: 192, column: 9, scope: !447)
!3797 = !DILocation(line: 196, column: 1, scope: !414)
!3798 = !DISubprogram(name: "getgrouplist", scope: !911, file: !911, line: 186, type: !3799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !561)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!25, !30, !419, !3801, !129}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!3802 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !452, file: !452, line: 27, type: !2864, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3803)
!3803 = !{!3804, !3805, !3806, !3807}
!3804 = !DILocalVariable(name: "ptr", arg: 1, scope: !3802, file: !452, line: 27, type: !24)
!3805 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3802, file: !452, line: 27, type: !27)
!3806 = !DILocalVariable(name: "size", arg: 3, scope: !3802, file: !452, line: 27, type: !27)
!3807 = !DILocalVariable(name: "nbytes", scope: !3802, file: !452, line: 29, type: !27)
!3808 = !DILocation(line: 0, scope: !3802)
!3809 = !DILocation(line: 30, column: 7, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3802, file: !452, line: 30, column: 7)
!3811 = !DILocalVariable(name: "ptr", arg: 1, scope: !3812, file: !2955, line: 2057, type: !24)
!3812 = distinct !DISubprogram(name: "rpl_realloc", scope: !2955, file: !2955, line: 2057, type: !2947, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3813)
!3813 = !{!3811, !3814}
!3814 = !DILocalVariable(name: "size", arg: 2, scope: !3812, file: !2955, line: 2057, type: !27)
!3815 = !DILocation(line: 0, scope: !3812, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 37, column: 10, scope: !3802)
!3817 = !DILocation(line: 2059, column: 24, scope: !3812, inlinedAt: !3816)
!3818 = !DILocation(line: 2059, column: 10, scope: !3812, inlinedAt: !3816)
!3819 = !DILocation(line: 37, column: 3, scope: !3802)
!3820 = !DILocation(line: 32, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3810, file: !452, line: 31, column: 5)
!3822 = !DILocation(line: 32, column: 13, scope: !3821)
!3823 = !DILocation(line: 33, column: 7, scope: !3821)
!3824 = !DILocation(line: 38, column: 1, scope: !3802)
!3825 = distinct !DISubprogram(name: "hard_locale", scope: !455, file: !455, line: 28, type: !3826, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!47, !25}
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "category", arg: 1, scope: !3825, file: !455, line: 28, type: !25)
!3830 = !DILocalVariable(name: "locale", scope: !3825, file: !455, line: 30, type: !3831)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !3832)
!3832 = !{!3833}
!3833 = !DISubrange(count: 257)
!3834 = !DILocation(line: 0, scope: !3825)
!3835 = !DILocation(line: 30, column: 3, scope: !3825)
!3836 = !DILocation(line: 30, column: 8, scope: !3825)
!3837 = !DILocation(line: 32, column: 7, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3825, file: !455, line: 32, column: 7)
!3839 = !DILocation(line: 32, column: 7, scope: !3825)
!3840 = !DILocalVariable(name: "__s1", arg: 1, scope: !3841, file: !519, line: 1359, type: !30)
!3841 = distinct !DISubprogram(name: "streq", scope: !519, file: !519, line: 1359, type: !520, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3842)
!3842 = !{!3840, !3843}
!3843 = !DILocalVariable(name: "__s2", arg: 2, scope: !3841, file: !519, line: 1359, type: !30)
!3844 = !DILocation(line: 0, scope: !3841, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 35, column: 9, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3825, file: !455, line: 35, column: 7)
!3847 = !DILocation(line: 1361, column: 11, scope: !3841, inlinedAt: !3845)
!3848 = !DILocation(line: 1361, column: 10, scope: !3841, inlinedAt: !3845)
!3849 = !DILocation(line: 35, column: 29, scope: !3846)
!3850 = !DILocation(line: 0, scope: !3841, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 35, column: 32, scope: !3846)
!3852 = !DILocation(line: 1361, column: 11, scope: !3841, inlinedAt: !3851)
!3853 = !DILocation(line: 1361, column: 10, scope: !3841, inlinedAt: !3851)
!3854 = !DILocation(line: 35, column: 7, scope: !3825)
!3855 = !DILocation(line: 46, column: 3, scope: !3825)
!3856 = !DILocation(line: 47, column: 1, scope: !3825)
!3857 = distinct !DISubprogram(name: "setlocale_null_r", scope: !457, file: !457, line: 154, type: !3858, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3860)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!25, !25, !22, !27}
!3860 = !{!3861, !3862, !3863}
!3861 = !DILocalVariable(name: "category", arg: 1, scope: !3857, file: !457, line: 154, type: !25)
!3862 = !DILocalVariable(name: "buf", arg: 2, scope: !3857, file: !457, line: 154, type: !22)
!3863 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3857, file: !457, line: 154, type: !27)
!3864 = !DILocation(line: 0, scope: !3857)
!3865 = !DILocation(line: 159, column: 10, scope: !3857)
!3866 = !DILocation(line: 159, column: 3, scope: !3857)
!3867 = distinct !DISubprogram(name: "setlocale_null", scope: !457, file: !457, line: 186, type: !3868, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!30, !25}
!3870 = !{!3871}
!3871 = !DILocalVariable(name: "category", arg: 1, scope: !3867, file: !457, line: 186, type: !25)
!3872 = !DILocation(line: 0, scope: !3867)
!3873 = !DILocation(line: 189, column: 10, scope: !3867)
!3874 = !DILocation(line: 189, column: 3, scope: !3867)
!3875 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !459, file: !459, line: 35, type: !3868, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3876)
!3876 = !{!3877, !3878}
!3877 = !DILocalVariable(name: "category", arg: 1, scope: !3875, file: !459, line: 35, type: !25)
!3878 = !DILocalVariable(name: "result", scope: !3875, file: !459, line: 37, type: !30)
!3879 = !DILocation(line: 0, scope: !3875)
!3880 = !DILocation(line: 37, column: 24, scope: !3875)
!3881 = !DILocation(line: 62, column: 3, scope: !3875)
!3882 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !459, file: !459, line: 66, type: !3858, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3883)
!3883 = !{!3884, !3885, !3886, !3887, !3888}
!3884 = !DILocalVariable(name: "category", arg: 1, scope: !3882, file: !459, line: 66, type: !25)
!3885 = !DILocalVariable(name: "buf", arg: 2, scope: !3882, file: !459, line: 66, type: !22)
!3886 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3882, file: !459, line: 66, type: !27)
!3887 = !DILocalVariable(name: "result", scope: !3882, file: !459, line: 111, type: !30)
!3888 = !DILocalVariable(name: "length", scope: !3889, file: !459, line: 125, type: !27)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !459, line: 124, column: 5)
!3890 = distinct !DILexicalBlock(scope: !3882, file: !459, line: 113, column: 7)
!3891 = !DILocation(line: 0, scope: !3882)
!3892 = !DILocation(line: 0, scope: !3875, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 111, column: 24, scope: !3882)
!3894 = !DILocation(line: 37, column: 24, scope: !3875, inlinedAt: !3893)
!3895 = !DILocation(line: 113, column: 14, scope: !3890)
!3896 = !DILocation(line: 113, column: 7, scope: !3882)
!3897 = !DILocation(line: 116, column: 19, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !459, line: 116, column: 11)
!3899 = distinct !DILexicalBlock(scope: !3890, file: !459, line: 114, column: 5)
!3900 = !DILocation(line: 116, column: 11, scope: !3899)
!3901 = !DILocation(line: 120, column: 16, scope: !3898)
!3902 = !DILocation(line: 120, column: 9, scope: !3898)
!3903 = !DILocation(line: 125, column: 23, scope: !3889)
!3904 = !DILocation(line: 0, scope: !3889)
!3905 = !DILocation(line: 126, column: 18, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3889, file: !459, line: 126, column: 11)
!3907 = !DILocation(line: 126, column: 11, scope: !3889)
!3908 = !DILocation(line: 128, column: 39, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3906, file: !459, line: 127, column: 9)
!3910 = !DILocalVariable(name: "__dest", arg: 1, scope: !3911, file: !1390, line: 26, type: !3222)
!3911 = distinct !DISubprogram(name: "memcpy", scope: !1390, file: !1390, line: 26, type: !3220, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3912)
!3912 = !{!3910, !3913, !3914}
!3913 = !DILocalVariable(name: "__src", arg: 2, scope: !3911, file: !1390, line: 26, type: !686)
!3914 = !DILocalVariable(name: "__len", arg: 3, scope: !3911, file: !1390, line: 26, type: !27)
!3915 = !DILocation(line: 0, scope: !3911, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 128, column: 11, scope: !3909)
!3917 = !DILocation(line: 29, column: 10, scope: !3911, inlinedAt: !3916)
!3918 = !DILocation(line: 129, column: 11, scope: !3909)
!3919 = !DILocation(line: 133, column: 23, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3921, file: !459, line: 133, column: 15)
!3921 = distinct !DILexicalBlock(scope: !3906, file: !459, line: 132, column: 9)
!3922 = !DILocation(line: 133, column: 15, scope: !3921)
!3923 = !DILocation(line: 138, column: 44, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3920, file: !459, line: 134, column: 13)
!3925 = !DILocation(line: 0, scope: !3911, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 138, column: 15, scope: !3924)
!3927 = !DILocation(line: 29, column: 10, scope: !3911, inlinedAt: !3926)
!3928 = !DILocation(line: 139, column: 15, scope: !3924)
!3929 = !DILocation(line: 139, column: 32, scope: !3924)
!3930 = !DILocation(line: 140, column: 13, scope: !3924)
!3931 = !DILocation(line: 0, scope: !3890)
!3932 = !DILocation(line: 145, column: 1, scope: !3882)
