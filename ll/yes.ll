; ModuleID = 'src/yes.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.iovec = type { i8*, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !0
@.str.13 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), align 8, !dbg !122
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !127
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !132
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !134
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !170
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !140
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !166
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !168
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !175
@opterr = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.49, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.50, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !193
@optind = external local_unnamed_addr global i32, align 4
@.str.1.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !210
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !216
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 8, !dbg !252
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !278
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !296
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !326
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !333
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !298
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !335
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !284
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !303
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !341
@exit_failure = dso_local global i32 1, align 4, !dbg !349
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !355
@rpl_pipe2.have_pipe2_really = internal unnamed_addr global i32 0, align 4, !dbg !371
@.str.142 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !490 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !494, metadata !DIExpression()), !dbg !495
  %3 = icmp eq i32 %0, 0, !dbg !496
  br i1 %3, label %9, label %4, !dbg !498

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !499, !tbaa !501
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !499
  %7 = load i8*, i8** @program_name, align 8, !dbg !499, !tbaa !501
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !499
  br label %52, !dbg !499

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !505
  %11 = load i8*, i8** @program_name, align 8, !dbg !505, !tbaa !501
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11, i8* noundef %11) #34, !dbg !505
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !507
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !507, !tbaa !501
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !507
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !508
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !508
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !509
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !510, metadata !DIExpression()) #34, !dbg !529
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !531
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #34, !dbg !531
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !515, metadata !DIExpression()) #34, !dbg !532
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !532
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !524, metadata !DIExpression()) #34, !dbg !529
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !525, metadata !DIExpression()) #34, !dbg !529
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !533
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !525, metadata !DIExpression()) #34, !dbg !529
  br label %20, !dbg !534

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !525, metadata !DIExpression()) #34, !dbg !529
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !542
  call void @llvm.dbg.value(metadata i8* %21, metadata !541, metadata !DIExpression()) #34, !dbg !542
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #35, !dbg !544
  %24 = icmp eq i32 %23, 0, !dbg !545
  br i1 %24, label %30, label %25, !dbg !534

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.infomap, %struct.infomap* %22, i64 1, !dbg !546
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !525, metadata !DIExpression()) #34, !dbg !529
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 0, i32 0, !dbg !547
  %28 = load i8*, i8** %27, align 8, !dbg !547, !tbaa !548
  %29 = icmp eq i8* %28, null, !dbg !550
  br i1 %29, label %30, label %20, !dbg !551, !llvm.loop !552

30:                                               ; preds = %25, %20
  %31 = phi %struct.infomap* [ %22, %20 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 0, i32 1, !dbg !554
  %33 = load i8*, i8** %32, align 8, !dbg !554, !tbaa !556
  %34 = icmp eq i8* %33, null, !dbg !557
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %33, !dbg !558
  call void @llvm.dbg.value(metadata i8* %35, metadata !524, metadata !DIExpression()) #34, !dbg !529
  tail call void @emit_bug_reporting_address() #34, !dbg !559
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !560
  call void @llvm.dbg.value(metadata i8* %36, metadata !527, metadata !DIExpression()) #34, !dbg !529
  %37 = icmp eq i8* %36, null, !dbg !561
  br i1 %37, label %45, label %38, !dbg !563

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 noundef 3) #35, !dbg !564
  %40 = icmp eq i32 %39, 0, !dbg !564
  br i1 %40, label %45, label %41, !dbg !565

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0), i32 noundef 5) #34, !dbg !566
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !566, !tbaa !501
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #34, !dbg !566
  br label %45, !dbg !568

45:                                               ; preds = %30, %38, %41
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !569
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !541, metadata !DIExpression()) #34, !dbg !569
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !528, metadata !DIExpression()) #34, !dbg !529
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #34, !dbg !571
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !571
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #34, !dbg !572
  %49 = icmp eq i8* %35, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !572
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !572
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef %35, i8* noundef %50) #34, !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %18) #34, !dbg !573
  br label %52

52:                                               ; preds = %45, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !574
  unreachable, !dbg !574
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !575 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !580 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !42, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i8* %0, metadata !43, metadata !DIExpression()), !dbg !585
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !586, !tbaa !587
  %3 = icmp eq i32 %2, -1, !dbg !589
  br i1 %3, label %4, label %16, !dbg !590

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #34, !dbg !591
  call void @llvm.dbg.value(metadata i8* %5, metadata !44, metadata !DIExpression()), !dbg !592
  %6 = icmp eq i8* %5, null, !dbg !593
  br i1 %6, label %14, label %7, !dbg !594

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !595, !tbaa !596
  %9 = icmp eq i8 %8, 0, !dbg !595
  br i1 %9, label %14, label %10, !dbg !597

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !535, metadata !DIExpression()) #34, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !541, metadata !DIExpression()) #34, !dbg !598
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #35, !dbg !600
  %12 = icmp eq i32 %11, 0, !dbg !601
  %13 = zext i1 %12 to i32, !dbg !597
  br label %14, !dbg !597

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !602, !tbaa !587
  br label %16, !dbg !603

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !604
  %18 = icmp eq i32 %17, 0, !dbg !604
  br i1 %18, label %22, label %19, !dbg !606

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !607, !tbaa !501
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !607
  br label %121, !dbg !609

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !47, metadata !DIExpression()), !dbg !585
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #35, !dbg !610
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !611
  call void @llvm.dbg.value(metadata i8* %24, metadata !49, metadata !DIExpression()), !dbg !585
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !612
  call void @llvm.dbg.value(metadata i8* %25, metadata !50, metadata !DIExpression()), !dbg !585
  %26 = icmp eq i8* %25, null, !dbg !613
  br i1 %26, label %53, label %27, !dbg !614

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !615
  br i1 %28, label %53, label %29, !dbg !616

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !51, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()), !dbg !617
  %30 = icmp ult i8* %24, %25, !dbg !618
  br i1 %30, label %31, label %53, !dbg !619

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !585
  %33 = load i16*, i16** %32, align 8, !tbaa !501
  br label %34, !dbg !619

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !51, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i64 %36, metadata !55, metadata !DIExpression()), !dbg !617
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !620
  call void @llvm.dbg.value(metadata i8* %37, metadata !51, metadata !DIExpression()), !dbg !617
  %38 = load i8, i8* %35, align 1, !dbg !620, !tbaa !596
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !620
  %41 = load i16, i16* %40, align 2, !dbg !620, !tbaa !621
  %42 = lshr i16 %41, 13, !dbg !623
  %43 = and i16 %42, 1, !dbg !623
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !624
  call void @llvm.dbg.value(metadata i64 %45, metadata !55, metadata !DIExpression()), !dbg !617
  %46 = icmp ult i8* %37, %25, !dbg !618
  %47 = icmp ult i64 %45, 2, !dbg !625
  %48 = select i1 %46, i1 %47, i1 false, !dbg !625
  br i1 %48, label %34, label %49, !dbg !619, !llvm.loop !626

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !627
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !629
  %52 = xor i1 %50, true, !dbg !629
  br label %53, !dbg !629

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !585
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i8* %54, metadata !50, metadata !DIExpression()), !dbg !585
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !630
  call void @llvm.dbg.value(metadata i64 %56, metadata !56, metadata !DIExpression()), !dbg !585
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !631
  call void @llvm.dbg.value(metadata i8* %57, metadata !57, metadata !DIExpression()), !dbg !585
  br label %58, !dbg !632

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !585
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i8* %59, metadata !57, metadata !DIExpression()), !dbg !585
  %61 = load i8, i8* %59, align 1, !dbg !633, !tbaa !596
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !634

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !635
  %64 = load i8, i8* %63, align 1, !dbg !638, !tbaa !596
  %65 = icmp ne i8 %64, 45, !dbg !639
  %66 = select i1 %65, i1 %60, i1 false, !dbg !640
  br label %67, !dbg !640

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !585
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !641
  %70 = load i16*, i16** %69, align 8, !dbg !641, !tbaa !501
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !641
  %73 = load i16, i16* %72, align 2, !dbg !641, !tbaa !621
  %74 = and i16 %73, 8192, !dbg !641
  %75 = icmp eq i16 %74, 0, !dbg !641
  br i1 %75, label %89, label %76, !dbg !643

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !644
  br i1 %77, label %91, label %78, !dbg !647

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !648
  %80 = load i8, i8* %79, align 1, !dbg !648, !tbaa !596
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !648
  %83 = load i16, i16* %82, align 2, !dbg !648, !tbaa !621
  %84 = and i16 %83, 8192, !dbg !648
  %85 = icmp eq i16 %84, 0, !dbg !648
  br i1 %85, label %86, label %91, !dbg !649

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !650
  br i1 %88, label %89, label %91, !dbg !650

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !652
  call void @llvm.dbg.value(metadata i8* %90, metadata !57, metadata !DIExpression()), !dbg !585
  br label %58, !dbg !632, !llvm.loop !653

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !655
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !501
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !541, metadata !DIExpression()) #34, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !660
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !666
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !535, metadata !DIExpression()) #34, !dbg !674
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !117, metadata !DIExpression()), !dbg !585
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 noundef 6) #35, !dbg !676
  %96 = icmp eq i32 %95, 0, !dbg !676
  br i1 %96, label %100, label %97, !dbg !678

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 noundef 9) #35, !dbg !679
  %99 = icmp eq i32 %98, 0, !dbg !679
  br i1 %99, label %100, label %103, !dbg !680

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !681
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !681
  br label %106, !dbg !683

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !684
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !684
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !501
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !686
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !501
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !687
  %111 = ptrtoint i8* %59 to i64, !dbg !688
  %112 = sub i64 %111, %92, !dbg !688
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !501
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !688
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !501
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !689
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !690, !tbaa !501
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !690
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !501
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !691
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !692
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
declare !dbg !693 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !697 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !701 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !707 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.iovec, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !712, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %1, metadata !713, metadata !DIExpression()), !dbg !726
  %5 = load i8*, i8** %1, align 8, !dbg !727, !tbaa !501
  tail call void @set_program_name(i8* noundef %5) #34, !dbg !728
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #34, !dbg !729
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #34, !dbg !730
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #34, !dbg !731
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !732
  %10 = load i8*, i8** @Version, align 8, !dbg !733, !tbaa !501
  %11 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !734
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %10, i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %11, i8* noundef null) #34, !dbg !735
  %12 = load i32, i32* @optind, align 4, !dbg !736, !tbaa !587
  %13 = sext i32 %12 to i64, !dbg !737
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !737
  call void @llvm.dbg.value(metadata i8** %14, metadata !714, metadata !DIExpression()), !dbg !726
  %15 = sext i32 %0 to i64, !dbg !738
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !738
  call void @llvm.dbg.value(metadata i8** %16, metadata !715, metadata !DIExpression()), !dbg !726
  %17 = icmp eq i32 %12, %0, !dbg !739
  br i1 %17, label %18, label %20, !dbg !741

18:                                               ; preds = %2
  %19 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !742
  call void @llvm.dbg.value(metadata i8** %19, metadata !715, metadata !DIExpression()), !dbg !726
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %16, align 8, !dbg !743, !tbaa !501
  br label %20, !dbg !744

20:                                               ; preds = %18, %2
  %21 = phi i8** [ %19, %18 ], [ %16, %2 ], !dbg !726
  call void @llvm.dbg.value(metadata i8** %21, metadata !715, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i64 0, metadata !716, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8 1, metadata !717, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %14, metadata !718, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8 poison, metadata !717, metadata !DIExpression()), !dbg !726
  %22 = load i8*, i8** %14, align 8, !dbg !745, !tbaa !501
  %23 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %22) #35, !dbg !746
  call void @llvm.dbg.value(metadata i64 %23, metadata !719, metadata !DIExpression()), !dbg !747
  %24 = add i64 %23, 1, !dbg !748
  call void @llvm.dbg.value(metadata i64 %24, metadata !716, metadata !DIExpression()), !dbg !726
  %25 = getelementptr inbounds i8*, i8** %14, i64 1, !dbg !749
  %26 = icmp ult i8** %25, %21, !dbg !751
  br i1 %26, label %27, label %43, !dbg !752

27:                                               ; preds = %20, %27
  %28 = phi i8** [ %41, %27 ], [ %25, %20 ]
  %29 = phi i64 [ %40, %27 ], [ %24, %20 ]
  %30 = phi i64 [ %38, %27 ], [ %23, %20 ]
  %31 = phi i8* [ %35, %27 ], [ %22, %20 ]
  %32 = phi i1 [ %37, %27 ], [ true, %20 ]
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !753
  %34 = getelementptr inbounds i8, i8* %33, i64 %30, !dbg !754
  %35 = load i8*, i8** %28, align 8, !dbg !755, !tbaa !501
  %36 = icmp eq i8* %34, %35, !dbg !756
  %37 = select i1 %36, i1 %32, i1 false, !dbg !757
  call void @llvm.dbg.value(metadata i64 %29, metadata !716, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8 poison, metadata !717, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %28, metadata !718, metadata !DIExpression()), !dbg !726
  %38 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %35) #35, !dbg !746
  call void @llvm.dbg.value(metadata i64 %38, metadata !719, metadata !DIExpression()), !dbg !747
  %39 = add i64 %29, 1, !dbg !758
  %40 = add i64 %39, %38, !dbg !748
  call void @llvm.dbg.value(metadata i64 %40, metadata !716, metadata !DIExpression()), !dbg !726
  %41 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !749
  %42 = icmp ult i8** %41, %21, !dbg !751
  br i1 %42, label %27, label %43, !dbg !752

43:                                               ; preds = %27, %20
  %44 = phi i1 [ true, %20 ], [ %37, %27 ]
  %45 = phi i64 [ %24, %20 ], [ %40, %27 ], !dbg !748
  call void @llvm.dbg.value(metadata i8 poison, metadata !717, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** undef, metadata !718, metadata !DIExpression()), !dbg !726
  %46 = icmp ult i64 %45, 4097, !dbg !759
  %47 = xor i1 %46, true, !dbg !761
  %48 = select i1 %47, i1 %44, i1 false, !dbg !761
  %49 = select i1 %46, i64 8192, i64 %45, !dbg !761
  call void @llvm.dbg.value(metadata i64 %49, metadata !716, metadata !DIExpression()), !dbg !726
  br i1 %48, label %52, label %50, !dbg !762

50:                                               ; preds = %43
  %51 = tail call noalias nonnull i8* @xmalloc(i64 noundef %49) #38, !dbg !763
  br label %52, !dbg !762

52:                                               ; preds = %43, %50
  %53 = phi i8* [ %51, %50 ], [ %22, %43 ], !dbg !762
  call void @llvm.dbg.value(metadata i8* %53, metadata !721, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i64 0, metadata !722, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %14, metadata !718, metadata !DIExpression()), !dbg !726
  br label %54, !dbg !764

54:                                               ; preds = %61, %52
  %55 = phi i8** [ %14, %52 ], [ %65, %61 ], !dbg !726
  %56 = phi i64 [ 0, %52 ], [ %63, %61 ], !dbg !726
  call void @llvm.dbg.value(metadata i64 %56, metadata !722, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8** %55, metadata !718, metadata !DIExpression()), !dbg !726
  %57 = load i8*, i8** %55, align 8, !dbg !765, !tbaa !501
  %58 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #35, !dbg !766
  call void @llvm.dbg.value(metadata i64 %58, metadata !723, metadata !DIExpression()), !dbg !767
  br i1 %48, label %61, label %59, !dbg !768

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, i8* %53, i64 %56, !dbg !769
  call void @llvm.dbg.value(metadata i8* %60, metadata !771, metadata !DIExpression()) #34, !dbg !780
  call void @llvm.dbg.value(metadata i8* %57, metadata !778, metadata !DIExpression()) #34, !dbg !780
  call void @llvm.dbg.value(metadata i64 %58, metadata !779, metadata !DIExpression()) #34, !dbg !780
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %60, i8* noundef nonnull align 1 %57, i64 noundef %58, i1 noundef false) #34, !dbg !782
  br label %61, !dbg !783

61:                                               ; preds = %59, %54
  %62 = add i64 %58, %56, !dbg !784
  call void @llvm.dbg.value(metadata i64 %62, metadata !722, metadata !DIExpression()), !dbg !726
  %63 = add i64 %62, 1, !dbg !785
  call void @llvm.dbg.value(metadata i64 %63, metadata !722, metadata !DIExpression()), !dbg !726
  %64 = getelementptr inbounds i8, i8* %53, i64 %62, !dbg !786
  store i8 32, i8* %64, align 1, !dbg !787, !tbaa !596
  %65 = getelementptr inbounds i8*, i8** %55, i64 1, !dbg !788
  call void @llvm.dbg.value(metadata i8** %65, metadata !718, metadata !DIExpression()), !dbg !726
  %66 = icmp ult i8** %65, %21, !dbg !789
  br i1 %66, label %54, label %67, !dbg !790, !llvm.loop !791

67:                                               ; preds = %61
  %68 = getelementptr inbounds i8, i8* %53, i64 %62, !dbg !786
  store i8 10, i8* %68, align 1, !dbg !793, !tbaa !596
  call void @llvm.dbg.value(metadata i64 %63, metadata !725, metadata !DIExpression()), !dbg !726
  %69 = tail call i64 @full_write(i32 noundef 1, i8* noundef nonnull %53, i64 noundef %63) #34, !dbg !794
  %70 = icmp eq i64 %69, %63, !dbg !796
  br i1 %70, label %71, label %205, !dbg !797

71:                                               ; preds = %67
  %72 = bitcast i64* %3 to [2 x i32]*
  call void @llvm.dbg.value(metadata i8* %53, metadata !798, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.value(metadata i64 %63, metadata !803, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.value(metadata i8 0, metadata !804, metadata !DIExpression()) #34, !dbg !834
  %73 = tail call i32 @getpagesize() #37, !dbg !836
  %74 = sext i32 %73 to i64, !dbg !836
  call void @llvm.dbg.value(metadata i64 %74, metadata !805, metadata !DIExpression()) #34, !dbg !834
  %75 = tail call i32 @isapipe(i32 noundef 1) #34, !dbg !837
  %76 = icmp sgt i32 %75, 0, !dbg !838
  call void @llvm.dbg.value(metadata i1 %76, metadata !806, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !834
  %77 = bitcast i64* %3 to i8*, !dbg !839
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %77) #34, !dbg !839
  call void @llvm.dbg.declare(metadata [2 x i32]* %72, metadata !807, metadata !DIExpression()) #34, !dbg !840
  store i64 -1, i64* %3, align 8, !dbg !840
  call void @llvm.dbg.value(metadata i8* null, metadata !809, metadata !DIExpression()) #34, !dbg !834
  br i1 %76, label %78, label %83, !dbg !841

78:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 1, metadata !842, metadata !DIExpression()) #34, !dbg !850
  call void @llvm.dbg.value(metadata i64 %63, metadata !847, metadata !DIExpression()) #34, !dbg !850
  call void @llvm.dbg.value(metadata i32 0, metadata !848, metadata !DIExpression()) #34, !dbg !850
  %79 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1031, i32 noundef 524288) #34, !dbg !853
  call void @llvm.dbg.value(metadata i32 %79, metadata !848, metadata !DIExpression()) #34, !dbg !850
  %80 = icmp slt i32 %79, 0, !dbg !855
  br i1 %80, label %81, label %94, !dbg !856

81:                                               ; preds = %78
  %82 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1032) #34, !dbg !857
  call void @llvm.dbg.value(metadata i32 %82, metadata !848, metadata !DIExpression()) #34, !dbg !850
  br label %94, !dbg !858

83:                                               ; preds = %71
  %84 = bitcast i64* %3 to i32*, !dbg !859
  %85 = call i32 @pipe2_safer(i32* noundef nonnull %84, i32 noundef 0) #34, !dbg !862
  %86 = icmp slt i32 %85, 0, !dbg !863
  br i1 %86, label %87, label %88, !dbg !864

87:                                               ; preds = %83
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #34, !dbg !865
  br label %187, !dbg !866

88:                                               ; preds = %83
  %89 = load i32, i32* %84, align 8, !dbg !867, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %89, metadata !842, metadata !DIExpression()) #34, !dbg !868
  call void @llvm.dbg.value(metadata i64 %63, metadata !847, metadata !DIExpression()) #34, !dbg !868
  call void @llvm.dbg.value(metadata i32 0, metadata !848, metadata !DIExpression()) #34, !dbg !868
  %90 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %89, i32 noundef 1031, i32 noundef 524288) #34, !dbg !870
  call void @llvm.dbg.value(metadata i32 %90, metadata !848, metadata !DIExpression()) #34, !dbg !868
  %91 = icmp slt i32 %90, 0, !dbg !871
  br i1 %91, label %92, label %94, !dbg !872

92:                                               ; preds = %88
  %93 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %89, i32 noundef 1032) #34, !dbg !873
  call void @llvm.dbg.value(metadata i32 %93, metadata !848, metadata !DIExpression()) #34, !dbg !868
  br label %94, !dbg !874

94:                                               ; preds = %92, %88, %81, %78
  %95 = phi i32 [ %82, %81 ], [ %79, %78 ], [ %93, %92 ], [ %90, %88 ]
  %96 = icmp slt i32 %95, 1, !dbg !875
  %97 = sdiv i32 %95, 4, !dbg !875
  %98 = select i1 %96, i32 16384, i32 %97, !dbg !875
  %99 = sext i32 %98 to i64, !dbg !875
  %100 = urem i64 %99, %63, !dbg !875
  %101 = sub i64 %99, %100, !dbg !875
  call void @llvm.dbg.value(metadata i64 %101, metadata !808, metadata !DIExpression()) #34, !dbg !834
  %102 = icmp eq i64 %101, 0, !dbg !876
  br i1 %102, label %173, label %103, !dbg !878

103:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i64 %74, metadata !879, metadata !DIExpression()) #34, !dbg !886
  call void @llvm.dbg.value(metadata i64 %101, metadata !885, metadata !DIExpression()) #34, !dbg !886
  %104 = call noalias i8* @aligned_alloc(i64 noundef %74, i64 noundef %101) #34, !dbg !889
  call void @llvm.assume(i1 true) #34 [ "align"(i8* %104, i64 %74) ], !dbg !889
  call void @llvm.dbg.value(metadata i8* %104, metadata !809, metadata !DIExpression()) #34, !dbg !834
  %105 = icmp eq i8* %104, null, !dbg !890
  br i1 %105, label %173, label %106, !dbg !891

106:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i8* %104, metadata !892, metadata !DIExpression()) #34, !dbg !905
  call void @llvm.dbg.value(metadata i8* %53, metadata !897, metadata !DIExpression()) #34, !dbg !905
  call void @llvm.dbg.value(metadata i64 %63, metadata !898, metadata !DIExpression()) #34, !dbg !905
  call void @llvm.dbg.value(metadata i64 %101, metadata !899, metadata !DIExpression()) #34, !dbg !905
  %107 = icmp eq i8* %104, %53, !dbg !907
  br i1 %107, label %109, label %108, !dbg !909

108:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i8* %104, metadata !771, metadata !DIExpression()) #34, !dbg !910
  call void @llvm.dbg.value(metadata i8* %53, metadata !778, metadata !DIExpression()) #34, !dbg !910
  call void @llvm.dbg.value(metadata i64 %63, metadata !779, metadata !DIExpression()) #34, !dbg !910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %104, i8* noundef nonnull align 1 %53, i64 noundef %63, i1 noundef false) #34, !dbg !912
  br label %109, !dbg !913

109:                                              ; preds = %108, %106
  call void @llvm.dbg.value(metadata i64 %63, metadata !900, metadata !DIExpression()) #34, !dbg !914
  %110 = icmp sgt i64 %101, %63, !dbg !915
  br i1 %110, label %111, label %119, !dbg !916

111:                                              ; preds = %109, %111
  %112 = phi i64 [ %117, %111 ], [ %63, %109 ]
  call void @llvm.dbg.value(metadata i64 %112, metadata !900, metadata !DIExpression()) #34, !dbg !914
  %113 = sub nsw i64 %101, %112, !dbg !917
  %114 = icmp slt i64 %112, %113, !dbg !917
  %115 = select i1 %114, i64 %112, i64 %113, !dbg !917
  call void @llvm.dbg.value(metadata i64 %115, metadata !902, metadata !DIExpression()) #34, !dbg !918
  %116 = getelementptr inbounds i8, i8* %104, i64 %112, !dbg !919
  call void @llvm.dbg.value(metadata i8* %116, metadata !771, metadata !DIExpression()) #34, !dbg !920
  call void @llvm.dbg.value(metadata i8* %104, metadata !778, metadata !DIExpression()) #34, !dbg !920
  call void @llvm.dbg.value(metadata i64 %115, metadata !779, metadata !DIExpression()) #34, !dbg !920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %116, i8* noundef nonnull align 1 %104, i64 noundef %115, i1 noundef false) #34, !dbg !922
  %117 = add nsw i64 %115, %112, !dbg !923
  call void @llvm.dbg.value(metadata i64 %117, metadata !900, metadata !DIExpression()) #34, !dbg !914
  %118 = icmp slt i64 %117, %101, !dbg !915
  br i1 %118, label %111, label %119, !dbg !916, !llvm.loop !924

119:                                              ; preds = %111, %109
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 0, i64 1, !dbg !926
  %121 = load i32, i32* %120, align 4, !dbg !926
  %122 = select i1 %76, i32 1, i32 %121, !dbg !926
  call void @llvm.dbg.value(metadata i32 %122, metadata !810, metadata !DIExpression()) #34, !dbg !834
  %123 = bitcast %struct.iovec* %4 to i8*
  %124 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i64 0, i32 0
  %125 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i64 0, i32 1
  %126 = bitcast i64* %3 to i32*
  %127 = icmp slt i64 %101, 1
  %128 = select i1 %76, i1 true, i1 %127
  br label %129, !dbg !927

129:                                              ; preds = %166, %119
  %130 = phi i8 [ 0, %119 ], [ %167, %166 ], !dbg !928
  call void @llvm.dbg.value(metadata i8 %130, metadata !804, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %123) #34, !dbg !929
  call void @llvm.dbg.declare(metadata %struct.iovec* %4, metadata !811, metadata !DIExpression()) #34, !dbg !930
  store i8* %104, i8** %124, align 8, !dbg !931, !tbaa !932
  store i64 %101, i64* %125, align 8, !dbg !935, !tbaa !936
  br label %138, !dbg !937

131:                                              ; preds = %138
  %132 = select i1 %76, i8 1, i8 %139, !dbg !938
  call void @llvm.dbg.value(metadata i8 %132, metadata !804, metadata !DIExpression()) #34, !dbg !834
  %133 = load i8*, i8** %124, align 8, !dbg !939, !tbaa !932
  %134 = getelementptr inbounds i8, i8* %133, i64 %144, !dbg !940
  store i8* %134, i8** %124, align 8, !dbg !941, !tbaa !932
  %135 = load i64, i64* %125, align 8, !dbg !942, !tbaa !936
  %136 = sub i64 %135, %144, !dbg !942
  store i64 %136, i64* %125, align 8, !dbg !935, !tbaa !936
  %137 = icmp eq i64 %136, 0, !dbg !943
  br i1 %137, label %149, label %138, !dbg !937

138:                                              ; preds = %131, %129
  %139 = phi i8 [ %130, %129 ], [ %132, %131 ]
  %140 = phi i64 [ %101, %129 ], [ %136, %131 ]
  call void @llvm.dbg.value(metadata i8 %139, metadata !804, metadata !DIExpression()) #34, !dbg !834
  %141 = urem i64 %140, %74, !dbg !944
  %142 = icmp eq i64 %141, 0, !dbg !945
  %143 = select i1 %142, i32 8, i32 0, !dbg !945
  call void @llvm.dbg.value(metadata i32 %143, metadata !820, metadata !DIExpression()) #34, !dbg !946
  %144 = call i64 @vmsplice(i32 noundef %122, %struct.iovec* noundef nonnull %4, i64 noundef 1, i32 noundef %143) #34, !dbg !947
  call void @llvm.dbg.value(metadata i64 %144, metadata !822, metadata !DIExpression()) #34, !dbg !946
  %145 = icmp slt i64 %144, 1, !dbg !948
  br i1 %145, label %146, label %131, !dbg !950

146:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i8 %132, metadata !804, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %123) #34, !dbg !951
  %147 = and i8 %139, 1
  %148 = icmp ne i8 %147, 0
  br label %173

149:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i8 %132, metadata !804, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.value(metadata i8 %132, metadata !804, metadata !DIExpression()) #34, !dbg !834
  br i1 %128, label %165, label %150, !dbg !952

150:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i64 %101, metadata !825, metadata !DIExpression()) #34, !dbg !953
  %151 = load i32, i32* %126, align 8, !dbg !954, !tbaa !587
  %152 = call i64 @splice(i32 noundef %151, i64* noundef null, i32 noundef 1, i64* noundef null, i64 noundef %101, i32 noundef 1) #34, !dbg !955
  call void @llvm.dbg.value(metadata i64 %152, metadata !828, metadata !DIExpression()) #34, !dbg !956
  %153 = icmp slt i64 %152, 1, !dbg !957
  call void @llvm.dbg.value(metadata i8 undef, metadata !804, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.value(metadata i64 undef, metadata !825, metadata !DIExpression()) #34, !dbg !953
  br i1 %153, label %168, label %154, !llvm.loop !959

154:                                              ; preds = %150
  %155 = sub nsw i64 %101, %152, !dbg !962
  br label %156, !dbg !960

156:                                              ; preds = %154, %159
  %157 = phi i64 [ %163, %159 ], [ %155, %154 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !804, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.value(metadata i64 undef, metadata !825, metadata !DIExpression()) #34, !dbg !953
  %158 = icmp sgt i64 %157, 0, !dbg !963
  br i1 %158, label %159, label %164, !dbg !960, !llvm.loop !964

159:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i8 1, metadata !804, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.value(metadata i64 undef, metadata !825, metadata !DIExpression()) #34, !dbg !953
  %160 = load i32, i32* %126, align 8, !dbg !954, !tbaa !587
  %161 = call i64 @splice(i32 noundef %160, i64* noundef null, i32 noundef 1, i64* noundef null, i64 noundef %157, i32 noundef 1) #34, !dbg !955
  call void @llvm.dbg.value(metadata i64 %161, metadata !828, metadata !DIExpression()) #34, !dbg !956
  %162 = icmp slt i64 %161, 1, !dbg !957
  %163 = sub nsw i64 %157, %161, !dbg !962
  call void @llvm.dbg.value(metadata i8 undef, metadata !804, metadata !DIExpression()) #34, !dbg !834
  br i1 %162, label %171, label %156, !llvm.loop !964

164:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i8 %132, metadata !804, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %123) #34, !dbg !951
  br label %166

165:                                              ; preds = %149
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %123) #34, !dbg !951
  br label %166

166:                                              ; preds = %165, %164
  %167 = phi i8 [ %132, %165 ], [ 1, %164 ]
  br label %129, !dbg !834

168:                                              ; preds = %150
  %169 = and i8 %132, 1, !dbg !951
  %170 = icmp ne i8 %169, 0, !dbg !951
  br label %171, !dbg !951

171:                                              ; preds = %159, %168
  %172 = phi i1 [ %170, %168 ], [ true, %159 ]
  call void @llvm.dbg.value(metadata i8 %132, metadata !804, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %123) #34, !dbg !951
  br label %173, !dbg !965

173:                                              ; preds = %171, %146, %103, %94
  %174 = phi i8* [ null, %94 ], [ null, %103 ], [ %104, %146 ], [ %104, %171 ], !dbg !834
  %175 = phi i1 [ false, %94 ], [ false, %103 ], [ %148, %146 ], [ %172, %171 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !804, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.value(metadata i8* %174, metadata !809, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.label(metadata !833) #34, !dbg !966
  %176 = bitcast i64* %3 to i32*, !dbg !965
  %177 = load i32, i32* %176, align 8, !dbg !965, !tbaa !587
  %178 = icmp sgt i32 %177, -1, !dbg !967
  br i1 %178, label %179, label %186, !dbg !968

179:                                              ; preds = %173
  %180 = tail call i32* @__errno_location() #37, !dbg !969
  %181 = load i32, i32* %180, align 4, !dbg !969, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %181, metadata !830, metadata !DIExpression()) #34, !dbg !970
  %182 = call i32 @close(i32 noundef %177) #34, !dbg !971
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 0, i64 1, !dbg !972
  %184 = load i32, i32* %183, align 4, !dbg !972, !tbaa !587
  %185 = call i32 @close(i32 noundef %184) #34, !dbg !973
  store i32 %181, i32* %180, align 4, !dbg !974, !tbaa !587
  br label %186, !dbg !975

186:                                              ; preds = %173, %179
  call void @llvm.dbg.value(metadata i8* %174, metadata !976, metadata !DIExpression()) #34, !dbg !981
  call void @free(i8* noundef %174) #34, !dbg !983
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #34, !dbg !865
  br i1 %175, label %205, label %187, !dbg !866

187:                                              ; preds = %87, %186
  %188 = urem i64 %49, %63, !dbg !984
  %189 = sub i64 %49, %188, !dbg !984
  call void @llvm.dbg.value(metadata i64 %189, metadata !722, metadata !DIExpression()), !dbg !726
  %190 = icmp ugt i64 %189, %63, !dbg !986
  %191 = icmp slt i64 %63, %189
  %192 = and i1 %190, %191, !dbg !988
  call void @llvm.dbg.value(metadata i8* %53, metadata !892, metadata !DIExpression()) #34, !dbg !989
  call void @llvm.dbg.value(metadata i8* %53, metadata !897, metadata !DIExpression()) #34, !dbg !989
  call void @llvm.dbg.value(metadata i64 %63, metadata !898, metadata !DIExpression()) #34, !dbg !989
  call void @llvm.dbg.value(metadata i64 %189, metadata !899, metadata !DIExpression()) #34, !dbg !989
  call void @llvm.dbg.value(metadata i64 %63, metadata !900, metadata !DIExpression()) #34, !dbg !991
  br i1 %192, label %193, label %201, !dbg !988

193:                                              ; preds = %187, %193
  %194 = phi i64 [ %199, %193 ], [ %63, %187 ]
  call void @llvm.dbg.value(metadata i64 %194, metadata !900, metadata !DIExpression()) #34, !dbg !991
  %195 = sub nsw i64 %189, %194, !dbg !992
  %196 = icmp slt i64 %194, %195, !dbg !992
  %197 = select i1 %196, i64 %194, i64 %195, !dbg !992
  call void @llvm.dbg.value(metadata i64 %197, metadata !902, metadata !DIExpression()) #34, !dbg !993
  %198 = getelementptr inbounds i8, i8* %53, i64 %194, !dbg !994
  call void @llvm.dbg.value(metadata i8* %198, metadata !771, metadata !DIExpression()) #34, !dbg !995
  call void @llvm.dbg.value(metadata i8* %53, metadata !778, metadata !DIExpression()) #34, !dbg !995
  call void @llvm.dbg.value(metadata i64 %197, metadata !779, metadata !DIExpression()) #34, !dbg !995
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %198, i8* noundef nonnull align 1 %53, i64 noundef %197, i1 noundef false) #34, !dbg !997
  %199 = add nsw i64 %197, %194, !dbg !998
  call void @llvm.dbg.value(metadata i64 %199, metadata !900, metadata !DIExpression()) #34, !dbg !991
  %200 = icmp slt i64 %199, %189, !dbg !999
  br i1 %200, label %193, label %201, !dbg !1000, !llvm.loop !1001

201:                                              ; preds = %193, %187
  br label %202, !dbg !1003

202:                                              ; preds = %201, %202
  %203 = call i64 @full_write(i32 noundef 1, i8* noundef %53, i64 noundef %189) #34, !dbg !1004
  %204 = icmp eq i64 %203, %189, !dbg !1005
  br i1 %204, label %202, label %205, !dbg !1003, !llvm.loop !1006

205:                                              ; preds = %202, %186, %67
  %206 = tail call i32* @__errno_location() #37, !dbg !1008
  %207 = load i32, i32* %206, align 4, !dbg !1008, !tbaa !587
  %208 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #34, !dbg !1008
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %207, i8* noundef %208) #34, !dbg !1008
  ret i32 1, !dbg !1009
}

; Function Attrs: nounwind
declare !dbg !1010 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1013 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1014 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare !dbg !1017 i32 @getpagesize() local_unnamed_addr #11

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @aligned_alloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #14

declare !dbg !1021 i64 @vmsplice(i32 noundef, %struct.iovec* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1027 i64 @splice(i32 noundef, i64* noundef, i32 noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !1031 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #16 !dbg !1034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1036, metadata !DIExpression()), !dbg !1037
  store i8* %0, i8** @file_name, align 8, !dbg !1038, !tbaa !501
  ret void, !dbg !1039
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1040 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1046, !tbaa !1047
  ret void, !dbg !1049
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1050 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1055, !tbaa !501
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !1056
  %3 = icmp eq i32 %2, 0, !dbg !1057
  br i1 %3, label %22, label %4, !dbg !1058

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1059, !tbaa !1047, !range !1060
  %6 = icmp eq i8 %5, 0, !dbg !1059
  br i1 %6, label %11, label %7, !dbg !1061

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !1062
  %9 = load i32, i32* %8, align 4, !dbg !1062, !tbaa !587
  %10 = icmp eq i32 %9, 32, !dbg !1063
  br i1 %10, label %22, label %11, !dbg !1064

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.22, i64 0, i64 0), i32 noundef 5) #34, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %12, metadata !1052, metadata !DIExpression()), !dbg !1066
  %13 = load i8*, i8** @file_name, align 8, !dbg !1067, !tbaa !501
  %14 = icmp eq i8* %13, null, !dbg !1067
  %15 = tail call i32* @__errno_location() #37, !dbg !1069
  %16 = load i32, i32* %15, align 4, !dbg !1069, !tbaa !587
  br i1 %14, label %19, label %17, !dbg !1070

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !1071
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.23, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !1071
  br label %20, !dbg !1071

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.24, i64 0, i64 0), i8* noundef %12) #34, !dbg !1072
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1073, !tbaa !587
  tail call void @_exit(i32 noundef %21) #36, !dbg !1074
  unreachable, !dbg !1074

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1075, !tbaa !501
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !1077
  %25 = icmp eq i32 %24, 0, !dbg !1078
  br i1 %25, label %28, label %26, !dbg !1079

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1080, !tbaa !587
  tail call void @_exit(i32 noundef %27) #36, !dbg !1081
  unreachable, !dbg !1081

28:                                               ; preds = %22
  ret void, !dbg !1082
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1083 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1087, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i32 %1, metadata !1088, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %2, metadata !1089, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1090, metadata !DIExpression()), !dbg !1092
  tail call fastcc void @flush_stdout(), !dbg !1093
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1094, !tbaa !501
  %7 = icmp eq void ()* %6, null, !dbg !1094
  br i1 %7, label %9, label %8, !dbg !1096

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !1097
  br label %13, !dbg !1097

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1098, !tbaa !501
  %11 = tail call i8* @getprogname() #35, !dbg !1098
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* noundef %11) #34, !dbg !1098
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1100
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1100, !tbaa.struct !1101
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1100
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1100
  ret void, !dbg !1102
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1103 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 1, metadata !1107, metadata !DIExpression()) #34, !dbg !1110
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !1113
  %2 = icmp slt i32 %1, 0, !dbg !1114
  br i1 %2, label %6, label %3, !dbg !1115

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1116, !tbaa !501
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !1116
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
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1126, !tbaa !501
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1127
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1128, metadata !DIExpression()) #34, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %2, metadata !1169, metadata !DIExpression()) #34, !dbg !1171
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1173
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1173, !noalias !1174
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1173
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !1173
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1173, !noalias !1174
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1178, !tbaa !587
  %12 = add i32 %11, 1, !dbg !1178
  store i32 %12, i32* @error_message_count, align 4, !dbg !1178, !tbaa !587
  %13 = icmp eq i32 %1, 0, !dbg !1179
  br i1 %13, label %24, label %14, !dbg !1181

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1182, metadata !DIExpression()) #34, !dbg !1190
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1192
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1192
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1186, metadata !DIExpression()) #34, !dbg !1193
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %16, metadata !1185, metadata !DIExpression()) #34, !dbg !1190
  %17 = icmp eq i8* %16, null, !dbg !1195
  br i1 %17, label %18, label %20, !dbg !1197

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.27, i64 0, i64 0), i32 noundef 5) #34, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %19, metadata !1185, metadata !DIExpression()) #34, !dbg !1190
  br label %20, !dbg !1199

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1190
  call void @llvm.dbg.value(metadata i8* %21, metadata !1185, metadata !DIExpression()) #34, !dbg !1190
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1200, !tbaa !501
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.28, i64 0, i64 0), i8* noundef %21) #34, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1201
  br label %24, !dbg !1202

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1203, !tbaa !501
  call void @llvm.dbg.value(metadata i32 10, metadata !1204, metadata !DIExpression()) #34, !dbg !1211
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1210, metadata !DIExpression()) #34, !dbg !1211
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1213
  %27 = load i8*, i8** %26, align 8, !dbg !1213, !tbaa !1214
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1213
  %29 = load i8*, i8** %28, align 8, !dbg !1213, !tbaa !1216
  %30 = icmp ult i8* %27, %29, !dbg !1213
  br i1 %30, label %33, label %31, !dbg !1213, !prof !1217

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1213
  br label %35, !dbg !1213

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1213
  store i8* %34, i8** %26, align 8, !dbg !1213, !tbaa !1214
  store i8 10, i8* %27, align 1, !dbg !1213, !tbaa !596
  br label %35, !dbg !1213

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1218, !tbaa !501
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !1218
  %38 = icmp eq i32 %0, 0, !dbg !1219
  br i1 %38, label %40, label %39, !dbg !1221

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !1222
  unreachable, !dbg !1222

40:                                               ; preds = %35
  ret void, !dbg !1223
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1224 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1228 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1231 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1235 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1239, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 %1, metadata !1240, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i8* %2, metadata !1241, metadata !DIExpression()), !dbg !1243
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1244
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1244
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1242, metadata !DIExpression()), !dbg !1245
  call void @llvm.va_start(i8* nonnull %6), !dbg !1246
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1247
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1247, !tbaa.struct !1101
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1247
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1247
  call void @llvm.va_end(i8* nonnull %6), !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1249
  ret void, !dbg !1249
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #19

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !142 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %1, metadata !161, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %2, metadata !162, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %3, metadata !163, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %4, metadata !164, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !165, metadata !DIExpression()), !dbg !1251
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1252, !tbaa !587
  %9 = icmp eq i32 %8, 0, !dbg !1252
  br i1 %9, label %24, label %10, !dbg !1254

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1255, !tbaa !587
  %12 = icmp eq i32 %11, %3, !dbg !1258
  br i1 %12, label %13, label %23, !dbg !1259

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1260, !tbaa !501
  %15 = icmp eq i8* %14, %2, !dbg !1261
  br i1 %15, label %39, label %16, !dbg !1262

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1263
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1264
  br i1 %19, label %20, label %23, !dbg !1264

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1265
  %22 = icmp eq i32 %21, 0, !dbg !1266
  br i1 %22, label %39, label %23, !dbg !1267

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1268, !tbaa !501
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1269, !tbaa !587
  br label %24, !dbg !1270

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1271
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1272, !tbaa !501
  %26 = icmp eq void ()* %25, null, !dbg !1272
  br i1 %26, label %28, label %27, !dbg !1274

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1275
  br label %32, !dbg !1275

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1276, !tbaa !501
  %30 = tail call i8* @getprogname() #35, !dbg !1276
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.31, i64 0, i64 0), i8* noundef %30) #34, !dbg !1276
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1278, !tbaa !501
  %34 = icmp eq i8* %2, null, !dbg !1278
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.32, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.33, i64 0, i64 0), !dbg !1278
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1278
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1279
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1279
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1279, !tbaa.struct !1101
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1279
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1279
  br label %39, !dbg !1280

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1280
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1281 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1285, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i32 %1, metadata !1286, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %2, metadata !1287, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i32 %3, metadata !1288, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %4, metadata !1289, metadata !DIExpression()), !dbg !1291
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1292
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1292
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1290, metadata !DIExpression()), !dbg !1293
  call void @llvm.va_start(i8* nonnull %8), !dbg !1294
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1295
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1295, !tbaa.struct !1101
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1295
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1295
  call void @llvm.va_end(i8* nonnull %8), !dbg !1296
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1297
  ret void, !dbg !1297
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !1298 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1300, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %1, metadata !1301, metadata !DIExpression()), !dbg !1325
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1326
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #34, !dbg !1326
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1302, metadata !DIExpression()), !dbg !1327
  call void @llvm.va_start(i8* nonnull %4), !dbg !1328
  call void @llvm.dbg.value(metadata i32 -1, metadata !1313, metadata !DIExpression()), !dbg !1325
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
  ], !dbg !1329

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1330
  %7 = load i32, i32* %6, align 8, !dbg !1330
  %8 = icmp sgt i32 %7, -1, !dbg !1330
  br i1 %8, label %17, label %9, !dbg !1330

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !1330
  store i32 %10, i32* %6, align 8, !dbg !1330
  %11 = icmp ult i32 %7, -7, !dbg !1330
  br i1 %11, label %12, label %17, !dbg !1330

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1330
  %14 = load i8*, i8** %13, align 8, !dbg !1330
  %15 = sext i32 %7 to i64, !dbg !1330
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !1330
  br label %21, !dbg !1330

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1330
  %19 = load i8*, i8** %18, align 8, !dbg !1330
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1330
  store i8* %20, i8** %18, align 8, !dbg !1330
  br label %21, !dbg !1330

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !1330
  %24 = load i32, i32* %23, align 8, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %24, metadata !1314, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 %0, metadata !1332, metadata !DIExpression()) #34, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %24, metadata !1335, metadata !DIExpression()) #34, !dbg !1337
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #34, !dbg !1339
  call void @llvm.dbg.value(metadata i32 %25, metadata !1336, metadata !DIExpression()) #34, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %25, metadata !1313, metadata !DIExpression()), !dbg !1325
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1340
  %28 = load i32, i32* %27, align 8, !dbg !1340
  %29 = icmp sgt i32 %28, -1, !dbg !1340
  br i1 %29, label %38, label %30, !dbg !1340

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !1340
  store i32 %31, i32* %27, align 8, !dbg !1340
  %32 = icmp ult i32 %28, -7, !dbg !1340
  br i1 %32, label %33, label %38, !dbg !1340

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1340
  %35 = load i8*, i8** %34, align 8, !dbg !1340
  %36 = sext i32 %28 to i64, !dbg !1340
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !1340
  br label %42, !dbg !1340

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1340
  %40 = load i8*, i8** %39, align 8, !dbg !1340
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !1340
  store i8* %41, i8** %39, align 8, !dbg !1340
  br label %42, !dbg !1340

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !1340
  %45 = load i32, i32* %44, align 8, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %45, metadata !1317, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %0, metadata !184, metadata !DIExpression()) #34, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %45, metadata !185, metadata !DIExpression()) #34, !dbg !1342
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1344, !tbaa !587
  %47 = icmp sgt i32 %46, -1, !dbg !1346
  br i1 %47, label %48, label %60, !dbg !1347

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #34, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %49, metadata !186, metadata !DIExpression()) #34, !dbg !1342
  %50 = icmp sgt i32 %49, -1, !dbg !1350
  br i1 %50, label %55, label %51, !dbg !1352

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #37, !dbg !1353
  %53 = load i32, i32* %52, align 4, !dbg !1353, !tbaa !587
  %54 = icmp eq i32 %53, 22, !dbg !1354
  br i1 %54, label %56, label %55, !dbg !1355

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1356, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %66, metadata !186, metadata !DIExpression()) #34, !dbg !1342
  br label %124, !dbg !1358

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !1332, metadata !DIExpression()) #34, !dbg !1359
  call void @llvm.dbg.value(metadata i32 %45, metadata !1335, metadata !DIExpression()) #34, !dbg !1359
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #34, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %57, metadata !1336, metadata !DIExpression()) #34, !dbg !1359
  call void @llvm.dbg.value(metadata i32 %57, metadata !186, metadata !DIExpression()) #34, !dbg !1342
  %58 = icmp sgt i32 %57, -1, !dbg !1363
  br i1 %58, label %59, label %124, !dbg !1365

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1366, !tbaa !587
  br label %64, !dbg !1367

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1332, metadata !DIExpression()) #34, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %45, metadata !1335, metadata !DIExpression()) #34, !dbg !1368
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #34, !dbg !1370
  call void @llvm.dbg.value(metadata i32 %61, metadata !1336, metadata !DIExpression()) #34, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %61, metadata !186, metadata !DIExpression()) #34, !dbg !1342
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !1371
  call void @llvm.dbg.value(metadata i32 %66, metadata !186, metadata !DIExpression()) #34, !dbg !1342
  %67 = icmp sgt i32 %66, -1, !dbg !1372
  %68 = select i1 %67, i1 %65, i1 false, !dbg !1358
  br i1 %68, label %69, label %124, !dbg !1358

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #34, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %70, metadata !187, metadata !DIExpression()) #34, !dbg !1374
  %71 = icmp slt i32 %70, 0, !dbg !1375
  br i1 %71, label %76, label %72, !dbg !1376

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !1377
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #34, !dbg !1378
  %75 = icmp eq i32 %74, -1, !dbg !1379
  br i1 %75, label %76, label %124, !dbg !1380

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #37, !dbg !1381
  %78 = load i32, i32* %77, align 4, !dbg !1381, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %78, metadata !190, metadata !DIExpression()) #34, !dbg !1382
  %79 = call i32 @close(i32 noundef %66) #34, !dbg !1383
  store i32 %78, i32* %77, align 4, !dbg !1384, !tbaa !587
  call void @llvm.dbg.value(metadata i32 -1, metadata !186, metadata !DIExpression()) #34, !dbg !1342
  br label %124, !dbg !1385

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #34, !dbg !1386
  call void @llvm.dbg.value(metadata i32 %81, metadata !1313, metadata !DIExpression()), !dbg !1325
  br label %124, !dbg !1387

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1388
  %84 = load i32, i32* %83, align 8, !dbg !1388
  %85 = icmp sgt i32 %84, -1, !dbg !1388
  br i1 %85, label %94, label %86, !dbg !1388

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !1388
  store i32 %87, i32* %83, align 8, !dbg !1388
  %88 = icmp ult i32 %84, -7, !dbg !1388
  br i1 %88, label %89, label %94, !dbg !1388

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1388
  %91 = load i8*, i8** %90, align 8, !dbg !1388
  %92 = sext i32 %84 to i64, !dbg !1388
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !1388
  br label %98, !dbg !1388

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1388
  %96 = load i8*, i8** %95, align 8, !dbg !1388
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !1388
  store i8* %97, i8** %95, align 8, !dbg !1388
  br label %98, !dbg !1388

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !1388
  %101 = load i32, i32* %100, align 8, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %101, metadata !1319, metadata !DIExpression()), !dbg !1389
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #34, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %102, metadata !1313, metadata !DIExpression()), !dbg !1325
  br label %124, !dbg !1391

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1392
  %105 = load i32, i32* %104, align 8, !dbg !1392
  %106 = icmp sgt i32 %105, -1, !dbg !1392
  br i1 %106, label %115, label %107, !dbg !1392

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !1392
  store i32 %108, i32* %104, align 8, !dbg !1392
  %109 = icmp ult i32 %105, -7, !dbg !1392
  br i1 %109, label %110, label %115, !dbg !1392

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1392
  %112 = load i8*, i8** %111, align 8, !dbg !1392
  %113 = sext i32 %105 to i64, !dbg !1392
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !1392
  br label %119, !dbg !1392

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1392
  %117 = load i8*, i8** %116, align 8, !dbg !1392
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !1392
  store i8* %118, i8** %116, align 8, !dbg !1392
  br label %119, !dbg !1392

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !1392
  %122 = load i8*, i8** %121, align 8, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %122, metadata !1323, metadata !DIExpression()), !dbg !1393
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #34, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %123, metadata !1313, metadata !DIExpression()), !dbg !1325
  br label %124, !dbg !1395

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !1396
  call void @llvm.dbg.value(metadata i32 %125, metadata !1313, metadata !DIExpression()), !dbg !1325
  call void @llvm.va_end(i8* nonnull %4), !dbg !1397
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #34, !dbg !1398
  ret i32 %125, !dbg !1399
}

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1400 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %1, metadata !1405, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %2, metadata !1406, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 0, metadata !1407, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %1, metadata !1408, metadata !DIExpression()), !dbg !1411
  %4 = icmp sgt i64 %2, 0, !dbg !1412
  br i1 %4, label %5, label %20, !dbg !1413

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi i8* [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !1406, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %7, metadata !1408, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %8, metadata !1407, metadata !DIExpression()), !dbg !1411
  %9 = tail call i64 @safe_write(i32 noundef %0, i8* noundef %7, i64 noundef %6) #34, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %9, metadata !1409, metadata !DIExpression()), !dbg !1415
  %10 = icmp slt i64 %9, 0, !dbg !1416
  br i1 %10, label %20, label %11, !dbg !1418

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !1419
  br i1 %12, label %13, label %15, !dbg !1421

13:                                               ; preds = %11
  %14 = tail call i32* @__errno_location() #37, !dbg !1422
  store i32 28, i32* %14, align 4, !dbg !1424, !tbaa !587
  br label %20, !dbg !1425

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %16, metadata !1407, metadata !DIExpression()), !dbg !1411
  %17 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !1427
  call void @llvm.dbg.value(metadata i8* %17, metadata !1408, metadata !DIExpression()), !dbg !1411
  %18 = sub nsw i64 %6, %9, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %18, metadata !1406, metadata !DIExpression()), !dbg !1411
  %19 = icmp sgt i64 %18, 0, !dbg !1412
  br i1 %19, label %5, label %20, !dbg !1413

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1407, metadata !DIExpression()), !dbg !1411
  ret i64 %21, !dbg !1429
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #20 !dbg !1430 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1432, !tbaa !501
  ret i8* %1, !dbg !1433
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #21 !dbg !1434 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1436, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 1, metadata !1437, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8 1, metadata !1441, metadata !DIExpression()), !dbg !1477
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1478
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #34, !dbg !1478
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1442, metadata !DIExpression()), !dbg !1479
  %4 = call i32 @fstat(i32 noundef %0, %struct.stat* noundef nonnull %2) #34, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %4, metadata !1476, metadata !DIExpression()), !dbg !1477
  %5 = icmp eq i32 %4, 0, !dbg !1481
  br i1 %5, label %6, label %16, !dbg !1483

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1484
  %8 = load i32, i32* %7, align 4, !dbg !1484, !tbaa !1485
  %9 = icmp ult i32 %8, 2, !dbg !1488
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1489
  %11 = load i32, i32* %10, align 8, !dbg !1489
  %12 = and i32 %11, 61440, !dbg !1489
  %13 = icmp eq i32 %12, 4096, !dbg !1489
  %14 = select i1 %9, i1 %13, i1 false, !dbg !1489
  %15 = zext i1 %14 to i32, !dbg !1489
  br label %16, !dbg !1490

16:                                               ; preds = %1, %6
  %17 = phi i32 [ %15, %6 ], [ %4, %1 ], !dbg !1477
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #34, !dbg !1491
  ret i32 %17, !dbg !1491
}

; Function Attrs: nofree nounwind
declare !dbg !1492 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !1497 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1502, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8** %1, metadata !1503, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8* %2, metadata !1504, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8* %3, metadata !1505, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8* %4, metadata !1506, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1507, metadata !DIExpression()), !dbg !1528
  %9 = load i32, i32* @opterr, align 4, !dbg !1529, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %9, metadata !1508, metadata !DIExpression()), !dbg !1528
  store i32 0, i32* @opterr, align 4, !dbg !1530, !tbaa !587
  %10 = icmp eq i32 %0, 2, !dbg !1531
  br i1 %10, label %11, label %18, !dbg !1532

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !1533
  call void @llvm.dbg.value(metadata i32 %12, metadata !1509, metadata !DIExpression()), !dbg !1534
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1535

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #34, !dbg !1536
  br label %18, !dbg !1537

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1538
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #34, !dbg !1538
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1512, metadata !DIExpression()), !dbg !1539
  call void @llvm.va_start(i8* nonnull %15), !dbg !1540
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1541, !tbaa !501
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1542
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #34, !dbg !1542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1542, !tbaa.struct !1101
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #34, !dbg !1542
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #34, !dbg !1542
  call void @exit(i32 noundef 0) #36, !dbg !1543
  unreachable, !dbg !1543

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !1544, !tbaa !587
  store i32 0, i32* @optind, align 4, !dbg !1545, !tbaa !587
  ret void, !dbg !1546
}

; Function Attrs: nounwind
declare !dbg !1547 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1553 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1557, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8** %1, metadata !1558, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %2, metadata !1559, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %3, metadata !1560, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %4, metadata !1561, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i1 %5, metadata !1562, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1572
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1563, metadata !DIExpression()), !dbg !1572
  %10 = load i32, i32* @opterr, align 4, !dbg !1573, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %10, metadata !1564, metadata !DIExpression()), !dbg !1572
  store i32 1, i32* @opterr, align 4, !dbg !1574, !tbaa !587
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), !dbg !1575
  call void @llvm.dbg.value(metadata i8* %11, metadata !1565, metadata !DIExpression()), !dbg !1572
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %12, metadata !1566, metadata !DIExpression()), !dbg !1572
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1577

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1578
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1578
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1567, metadata !DIExpression()), !dbg !1579
  call void @llvm.va_start(i8* nonnull %14), !dbg !1580
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1581, !tbaa !501
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1582
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #34, !dbg !1582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1582, !tbaa.struct !1101
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #34, !dbg !1582
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #34, !dbg !1582
  call void @exit(i32 noundef 0) #36, !dbg !1583
  unreachable, !dbg !1583

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1584, !tbaa !587
  br label %19, !dbg !1585

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #34, !dbg !1586
  br label %21, !dbg !1587

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1587, !tbaa !587
  ret void, !dbg !1588
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pipe2_safer(i32* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1589 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1591, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %1, metadata !1592, metadata !DIExpression()), !dbg !1602
  %3 = tail call i32 @rpl_pipe2(i32* noundef %0, i32 noundef %1) #34, !dbg !1603
  %4 = icmp eq i32 %3, 0, !dbg !1604
  br i1 %4, label %5, label %21, !dbg !1605

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1606
  %6 = load i32, i32* %0, align 4, !dbg !1607, !tbaa !587
  %7 = tail call i32 @fd_safer_flag(i32 noundef %6, i32 noundef %1) #34, !dbg !1608
  store i32 %7, i32* %0, align 4, !dbg !1609, !tbaa !587
  %8 = icmp slt i32 %7, 0, !dbg !1610
  br i1 %8, label %9, label %16, !dbg !1611

9:                                                ; preds = %16, %5
  %10 = phi i64 [ 1, %5 ], [ 0, %16 ]
  %11 = tail call i32* @__errno_location() #37, !dbg !1612
  %12 = load i32, i32* %11, align 4, !dbg !1612, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %12, metadata !1597, metadata !DIExpression()), !dbg !1613
  %13 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !1614
  %14 = load i32, i32* %13, align 4, !dbg !1614, !tbaa !587
  %15 = tail call i32 @close(i32 noundef %14) #34, !dbg !1615
  store i32 %12, i32* %11, align 4, !dbg !1616, !tbaa !587
  br label %21

16:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 1, metadata !1593, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 1, metadata !1593, metadata !DIExpression()), !dbg !1606
  %17 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1607
  %18 = load i32, i32* %17, align 4, !dbg !1607, !tbaa !587
  %19 = tail call i32 @fd_safer_flag(i32 noundef %18, i32 noundef %1) #34, !dbg !1608
  store i32 %19, i32* %17, align 4, !dbg !1609, !tbaa !587
  %20 = icmp slt i32 %19, 0, !dbg !1610
  br i1 %20, label %9, label %21, !dbg !1611

21:                                               ; preds = %9, %16, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %9 ], [ 0, %16 ], !dbg !1602
  ret i32 %22, !dbg !1617
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !1618 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1620, metadata !DIExpression()), !dbg !1623
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !1624
  call void @llvm.dbg.value(metadata i8* %2, metadata !1621, metadata !DIExpression()), !dbg !1623
  %3 = icmp eq i8* %2, null, !dbg !1625
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1625
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %5, metadata !1622, metadata !DIExpression()), !dbg !1623
  %6 = ptrtoint i8* %5 to i64, !dbg !1626
  %7 = ptrtoint i8* %0 to i64, !dbg !1626
  %8 = sub i64 %6, %7, !dbg !1626
  %9 = icmp sgt i64 %8, 6, !dbg !1628
  br i1 %9, label %10, label %19, !dbg !1629

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1630
  call void @llvm.dbg.value(metadata i8* %11, metadata !1631, metadata !DIExpression()) #34, !dbg !1638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), metadata !1636, metadata !DIExpression()) #34, !dbg !1638
  call void @llvm.dbg.value(metadata i64 7, metadata !1637, metadata !DIExpression()) #34, !dbg !1638
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), i64 7) #34, !dbg !1640
  %13 = icmp eq i32 %12, 0, !dbg !1641
  br i1 %13, label %14, label %19, !dbg !1642

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1620, metadata !DIExpression()), !dbg !1623
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.61, i64 0, i64 0), i64 noundef 3) #35, !dbg !1643
  %16 = icmp eq i32 %15, 0, !dbg !1646
  %17 = select i1 %16, i64 3, i64 0, !dbg !1647
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1647
  br label %19, !dbg !1647

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1623
  call void @llvm.dbg.value(metadata i8* %21, metadata !1622, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8* %20, metadata !1620, metadata !DIExpression()), !dbg !1623
  store i8* %20, i8** @program_name, align 8, !dbg !1648, !tbaa !501
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1649, !tbaa !501
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1650, !tbaa !501
  ret void, !dbg !1651
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !218 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !225, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8* %1, metadata !226, metadata !DIExpression()), !dbg !1652
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %5, metadata !227, metadata !DIExpression()), !dbg !1652
  %6 = icmp eq i8* %5, %0, !dbg !1654
  br i1 %6, label %7, label %17, !dbg !1656

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1657
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1657
  %10 = bitcast i64* %4 to i8*, !dbg !1658
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1658
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !233, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1660, metadata !DIExpression()) #34, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %10, metadata !1669, metadata !DIExpression()) #34, !dbg !1676
  call void @llvm.dbg.value(metadata i32 0, metadata !1674, metadata !DIExpression()) #34, !dbg !1676
  call void @llvm.dbg.value(metadata i64 8, metadata !1675, metadata !DIExpression()) #34, !dbg !1676
  store i64 0, i64* %4, align 8, !dbg !1678
  call void @llvm.dbg.value(metadata i32* %3, metadata !228, metadata !DIExpression(DW_OP_deref)), !dbg !1652
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !1679
  %12 = icmp eq i64 %11, 2, !dbg !1681
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !228, metadata !DIExpression()), !dbg !1652
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1682
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1652
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1683
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1683
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1652
  ret i8* %18, !dbg !1683
}

; Function Attrs: nounwind
declare !dbg !1684 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1690 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1695, metadata !DIExpression()), !dbg !1698
  %2 = tail call i32* @__errno_location() #37, !dbg !1699
  %3 = load i32, i32* %2, align 4, !dbg !1699, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %3, metadata !1696, metadata !DIExpression()), !dbg !1698
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1700
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1700
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1700
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !1701
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1697, metadata !DIExpression()), !dbg !1698
  store i32 %3, i32* %2, align 4, !dbg !1702, !tbaa !587
  ret %struct.quoting_options* %8, !dbg !1703
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #20 !dbg !1704 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1710, metadata !DIExpression()), !dbg !1711
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1712
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1712
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1713
  %5 = load i32, i32* %4, align 8, !dbg !1713, !tbaa !1714
  ret i32 %5, !dbg !1716
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #16 !dbg !1717 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1721, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i32 %1, metadata !1722, metadata !DIExpression()), !dbg !1723
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1724
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1724
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1725
  store i32 %1, i32* %5, align 8, !dbg !1726, !tbaa !1714
  ret void, !dbg !1727
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1728 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1732, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8 %1, metadata !1733, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %2, metadata !1734, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8 %1, metadata !1735, metadata !DIExpression()), !dbg !1740
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1741
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1741
  %6 = lshr i8 %1, 5, !dbg !1742
  %7 = zext i8 %6 to i64, !dbg !1742
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1743
  call void @llvm.dbg.value(metadata i32* %8, metadata !1736, metadata !DIExpression()), !dbg !1740
  %9 = and i8 %1, 31, !dbg !1744
  %10 = zext i8 %9 to i32, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %10, metadata !1738, metadata !DIExpression()), !dbg !1740
  %11 = load i32, i32* %8, align 4, !dbg !1745, !tbaa !587
  %12 = lshr i32 %11, %10, !dbg !1746
  %13 = and i32 %12, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %13, metadata !1739, metadata !DIExpression()), !dbg !1740
  %14 = and i32 %2, 1, !dbg !1748
  %15 = xor i32 %13, %14, !dbg !1749
  %16 = shl i32 %15, %10, !dbg !1750
  %17 = xor i32 %16, %11, !dbg !1751
  store i32 %17, i32* %8, align 4, !dbg !1751, !tbaa !587
  ret i32 %13, !dbg !1752
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1753 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1757, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %1, metadata !1758, metadata !DIExpression()), !dbg !1760
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1761
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1757, metadata !DIExpression()), !dbg !1760
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1764
  %6 = load i32, i32* %5, align 4, !dbg !1764, !tbaa !1765
  call void @llvm.dbg.value(metadata i32 %6, metadata !1759, metadata !DIExpression()), !dbg !1760
  store i32 %1, i32* %5, align 4, !dbg !1766, !tbaa !1765
  ret i32 %6, !dbg !1767
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1768 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1772, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8* %1, metadata !1773, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8* %2, metadata !1774, metadata !DIExpression()), !dbg !1775
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1776
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1772, metadata !DIExpression()), !dbg !1775
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1779
  store i32 10, i32* %6, align 8, !dbg !1780, !tbaa !1714
  %7 = icmp ne i8* %1, null, !dbg !1781
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1783
  br i1 %9, label %11, label %10, !dbg !1783

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !1784
  unreachable, !dbg !1784

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1785
  store i8* %1, i8** %12, align 8, !dbg !1786, !tbaa !1787
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1788
  store i8* %2, i8** %13, align 8, !dbg !1789, !tbaa !1790
  ret void, !dbg !1791
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1792 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1796, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %1, metadata !1797, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %2, metadata !1798, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %3, metadata !1799, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1800, metadata !DIExpression()), !dbg !1804
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1805
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1805
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1801, metadata !DIExpression()), !dbg !1804
  %8 = tail call i32* @__errno_location() #37, !dbg !1806
  %9 = load i32, i32* %8, align 4, !dbg !1806, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %9, metadata !1802, metadata !DIExpression()), !dbg !1804
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1807
  %11 = load i32, i32* %10, align 8, !dbg !1807, !tbaa !1714
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1808
  %13 = load i32, i32* %12, align 4, !dbg !1808, !tbaa !1765
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1809
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1810
  %16 = load i8*, i8** %15, align 8, !dbg !1810, !tbaa !1787
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1811
  %18 = load i8*, i8** %17, align 8, !dbg !1811, !tbaa !1790
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %19, metadata !1803, metadata !DIExpression()), !dbg !1804
  store i32 %9, i32* %8, align 4, !dbg !1813, !tbaa !587
  ret i64 %19, !dbg !1814
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1815 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1821, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %1, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %2, metadata !1823, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %3, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %4, metadata !1825, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %5, metadata !1826, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32* %6, metadata !1827, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %7, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %8, metadata !1829, metadata !DIExpression()), !dbg !1883
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !1884
  %18 = icmp eq i64 %17, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i1 %18, metadata !1830, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* null, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1834, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %5, metadata !1836, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1838, metadata !DIExpression()), !dbg !1883
  %19 = and i32 %5, 2, !dbg !1886
  %20 = icmp ne i32 %19, 0, !dbg !1886
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
  br label %36, !dbg !1886

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1887
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1888
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1889
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %43, metadata !1834, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %42, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %41, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %40, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %39, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %38, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %37, metadata !1825, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1876), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1883
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
  ], !dbg !1891

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 5, metadata !1825, metadata !DIExpression()), !dbg !1883
  br label %111, !dbg !1892

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 5, metadata !1825, metadata !DIExpression()), !dbg !1883
  br i1 %45, label %111, label %51, !dbg !1892

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1893
  br i1 %52, label %111, label %53, !dbg !1897

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1893, !tbaa !596
  br label %111, !dbg !1893

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), metadata !309, metadata !DIExpression()) #34, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %37, metadata !310, metadata !DIExpression()) #34, !dbg !1898
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 noundef 5) #34, !dbg !1902
  call void @llvm.dbg.value(metadata i8* %55, metadata !311, metadata !DIExpression()) #34, !dbg !1898
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), !dbg !1903
  br i1 %56, label %57, label %66, !dbg !1905

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1906
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1907
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !313, metadata !DIExpression()) #34, !dbg !1908
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1909, metadata !DIExpression()) #34, !dbg !1915
  call void @llvm.dbg.value(metadata i8* %23, metadata !1917, metadata !DIExpression()) #34, !dbg !1922
  call void @llvm.dbg.value(metadata i32 0, metadata !1920, metadata !DIExpression()) #34, !dbg !1922
  call void @llvm.dbg.value(metadata i64 8, metadata !1921, metadata !DIExpression()) #34, !dbg !1922
  store i64 0, i64* %13, align 8, !dbg !1924
  call void @llvm.dbg.value(metadata i32* %12, metadata !312, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1898
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !1925
  %59 = icmp eq i64 %58, 3, !dbg !1927
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !312, metadata !DIExpression()) #34, !dbg !1898
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1928
  %63 = icmp eq i32 %37, 9, !dbg !1928
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1928
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1928
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1929
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1929
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1898
  call void @llvm.dbg.value(metadata i8* %67, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), metadata !309, metadata !DIExpression()) #34, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %37, metadata !310, metadata !DIExpression()) #34, !dbg !1930
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !1932
  call void @llvm.dbg.value(metadata i8* %68, metadata !311, metadata !DIExpression()) #34, !dbg !1930
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1933
  br i1 %69, label %70, label %79, !dbg !1934

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1935
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !313, metadata !DIExpression()) #34, !dbg !1937
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1909, metadata !DIExpression()) #34, !dbg !1938
  call void @llvm.dbg.value(metadata i8* %26, metadata !1917, metadata !DIExpression()) #34, !dbg !1940
  call void @llvm.dbg.value(metadata i32 0, metadata !1920, metadata !DIExpression()) #34, !dbg !1940
  call void @llvm.dbg.value(metadata i64 8, metadata !1921, metadata !DIExpression()) #34, !dbg !1940
  store i64 0, i64* %11, align 8, !dbg !1942
  call void @llvm.dbg.value(metadata i32* %10, metadata !312, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1930
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !1943
  %72 = icmp eq i64 %71, 3, !dbg !1944
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !312, metadata !DIExpression()) #34, !dbg !1930
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1945
  %76 = icmp eq i32 %37, 9, !dbg !1945
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1945
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1945
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1946
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1946
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %80, metadata !1828, metadata !DIExpression()), !dbg !1883
  br i1 %45, label %97, label %82, !dbg !1947

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1840, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 0, metadata !1831, metadata !DIExpression()), !dbg !1883
  %83 = load i8, i8* %80, align 1, !dbg !1949, !tbaa !596
  %84 = icmp eq i8 %83, 0, !dbg !1951
  br i1 %84, label %97, label %85, !dbg !1951

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1840, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %88, metadata !1831, metadata !DIExpression()), !dbg !1883
  %89 = icmp ult i64 %88, %48, !dbg !1952
  br i1 %89, label %90, label %92, !dbg !1955

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1952
  store i8 %86, i8* %91, align 1, !dbg !1952, !tbaa !596
  br label %92, !dbg !1952

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %93, metadata !1831, metadata !DIExpression()), !dbg !1883
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1956
  call void @llvm.dbg.value(metadata i8* %94, metadata !1840, metadata !DIExpression()), !dbg !1948
  %95 = load i8, i8* %94, align 1, !dbg !1949, !tbaa !596
  %96 = icmp eq i8 %95, 0, !dbg !1951
  br i1 %96, label %97, label %85, !dbg !1951, !llvm.loop !1957

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1959
  call void @llvm.dbg.value(metadata i64 %98, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %81, metadata !1833, metadata !DIExpression()), !dbg !1883
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %99, metadata !1834, metadata !DIExpression()), !dbg !1883
  br label %111, !dbg !1961

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1835, metadata !DIExpression()), !dbg !1883
  br label %102, !dbg !1962

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1883
  br i1 %45, label %102, label %105, !dbg !1963

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1825, metadata !DIExpression()), !dbg !1883
  br label %111, !dbg !1964

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 2, metadata !1825, metadata !DIExpression()), !dbg !1883
  br i1 %45, label %111, label %105, !dbg !1964

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1965
  br i1 %107, label %111, label %108, !dbg !1969

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1965, !tbaa !596
  br label %111, !dbg !1965

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1883
  br label %111, !dbg !1970

110:                                              ; preds = %36
  call void @abort() #36, !dbg !1971
  unreachable, !dbg !1971

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1959
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %102 ], !dbg !1883
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1883
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1836, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1835, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %117, metadata !1834, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %116, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %115, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %114, metadata !1829, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8* %113, metadata !1828, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %112, metadata !1825, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1845, metadata !DIExpression()), !dbg !1972
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
  br label %132, !dbg !1973

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1959
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1887
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1972
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %139, metadata !1845, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %135, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %134, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %133, metadata !1824, metadata !DIExpression()), !dbg !1883
  %141 = icmp eq i64 %133, -1, !dbg !1974
  br i1 %141, label %142, label %146, !dbg !1975

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1976
  %144 = load i8, i8* %143, align 1, !dbg !1976, !tbaa !596
  %145 = icmp eq i8 %144, 0, !dbg !1977
  br i1 %145, label %596, label %148, !dbg !1978

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1979
  br i1 %147, label %596, label %148, !dbg !1978

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1847, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1980
  br i1 %123, label %149, label %163, !dbg !1981

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1983
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1984
  br i1 %151, label %152, label %154, !dbg !1984

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %153, metadata !1824, metadata !DIExpression()), !dbg !1883
  br label %154, !dbg !1986

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1986
  call void @llvm.dbg.value(metadata i64 %155, metadata !1824, metadata !DIExpression()), !dbg !1883
  %156 = icmp ugt i64 %150, %155, !dbg !1987
  br i1 %156, label %163, label %157, !dbg !1988

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %158, metadata !1990, metadata !DIExpression()) #34, !dbg !1995
  call void @llvm.dbg.value(metadata i8* %116, metadata !1993, metadata !DIExpression()) #34, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %117, metadata !1994, metadata !DIExpression()) #34, !dbg !1995
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !1997
  %160 = icmp ne i32 %159, 0, !dbg !1998
  %161 = or i1 %160, %125, !dbg !1999
  %162 = xor i1 %160, true, !dbg !1999
  br i1 %161, label %163, label %647, !dbg !1999

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %164, metadata !1824, metadata !DIExpression()), !dbg !1883
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2000
  %167 = load i8, i8* %166, align 1, !dbg !2000, !tbaa !596
  call void @llvm.dbg.value(metadata i8 %167, metadata !1852, metadata !DIExpression()), !dbg !1980
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
  ], !dbg !2001

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2002

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2003

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1850, metadata !DIExpression()), !dbg !1980
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2007
  br i1 %171, label %188, label %172, !dbg !2007

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2009
  br i1 %173, label %174, label %176, !dbg !2013

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2009
  store i8 39, i8* %175, align 1, !dbg !2009, !tbaa !596
  br label %176, !dbg !2009

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %177, metadata !1831, metadata !DIExpression()), !dbg !1883
  %178 = icmp ult i64 %177, %140, !dbg !2014
  br i1 %178, label %179, label %181, !dbg !2017

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2014
  store i8 36, i8* %180, align 1, !dbg !2014, !tbaa !596
  br label %181, !dbg !2014

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %182, metadata !1831, metadata !DIExpression()), !dbg !1883
  %183 = icmp ult i64 %182, %140, !dbg !2018
  br i1 %183, label %184, label %186, !dbg !2021

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2018
  store i8 39, i8* %185, align 1, !dbg !2018, !tbaa !596
  br label %186, !dbg !2018

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %187, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1839, metadata !DIExpression()), !dbg !1883
  br label %188, !dbg !2022

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1883
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %189, metadata !1831, metadata !DIExpression()), !dbg !1883
  %191 = icmp ult i64 %189, %140, !dbg !2023
  br i1 %191, label %192, label %194, !dbg !2026

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2023
  store i8 92, i8* %193, align 1, !dbg !2023, !tbaa !596
  br label %194, !dbg !2023

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %195, metadata !1831, metadata !DIExpression()), !dbg !1883
  br i1 %120, label %196, label %499, !dbg !2027

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2029
  %198 = icmp ult i64 %197, %164, !dbg !2030
  br i1 %198, label %199, label %456, !dbg !2031

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2032
  %201 = load i8, i8* %200, align 1, !dbg !2032, !tbaa !596
  %202 = add i8 %201, -48, !dbg !2033
  %203 = icmp ult i8 %202, 10, !dbg !2033
  br i1 %203, label %204, label %456, !dbg !2033

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2034
  br i1 %205, label %206, label %208, !dbg !2038

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2034
  store i8 48, i8* %207, align 1, !dbg !2034, !tbaa !596
  br label %208, !dbg !2034

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %209, metadata !1831, metadata !DIExpression()), !dbg !1883
  %210 = icmp ult i64 %209, %140, !dbg !2039
  br i1 %210, label %211, label %213, !dbg !2042

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2039
  store i8 48, i8* %212, align 1, !dbg !2039, !tbaa !596
  br label %213, !dbg !2039

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %214, metadata !1831, metadata !DIExpression()), !dbg !1883
  br label %456, !dbg !2043

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2044

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2045

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2046

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2048

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2050
  %221 = icmp ult i64 %220, %164, !dbg !2051
  br i1 %221, label %222, label %456, !dbg !2052

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2053
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2054
  %225 = load i8, i8* %224, align 1, !dbg !2054, !tbaa !596
  %226 = icmp eq i8 %225, 63, !dbg !2055
  br i1 %226, label %227, label %456, !dbg !2056

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2057
  %229 = load i8, i8* %228, align 1, !dbg !2057, !tbaa !596
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
  ], !dbg !2058

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2059

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1852, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %220, metadata !1845, metadata !DIExpression()), !dbg !1972
  %232 = icmp ult i64 %134, %140, !dbg !2061
  br i1 %232, label %233, label %235, !dbg !2064

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2061
  store i8 63, i8* %234, align 1, !dbg !2061, !tbaa !596
  br label %235, !dbg !2061

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %236, metadata !1831, metadata !DIExpression()), !dbg !1883
  %237 = icmp ult i64 %236, %140, !dbg !2065
  br i1 %237, label %238, label %240, !dbg !2068

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2065
  store i8 34, i8* %239, align 1, !dbg !2065, !tbaa !596
  br label %240, !dbg !2065

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %241, metadata !1831, metadata !DIExpression()), !dbg !1883
  %242 = icmp ult i64 %241, %140, !dbg !2069
  br i1 %242, label %243, label %245, !dbg !2072

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2069
  store i8 34, i8* %244, align 1, !dbg !2069, !tbaa !596
  br label %245, !dbg !2069

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %246, metadata !1831, metadata !DIExpression()), !dbg !1883
  %247 = icmp ult i64 %246, %140, !dbg !2073
  br i1 %247, label %248, label %250, !dbg !2076

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2073
  store i8 63, i8* %249, align 1, !dbg !2073, !tbaa !596
  br label %250, !dbg !2073

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %251, metadata !1831, metadata !DIExpression()), !dbg !1883
  br label %456, !dbg !2077

252:                                              ; preds = %163
  br label %263, !dbg !2078

253:                                              ; preds = %163
  br label %263, !dbg !2079

254:                                              ; preds = %163
  br label %261, !dbg !2080

255:                                              ; preds = %163
  br label %261, !dbg !2081

256:                                              ; preds = %163
  br label %263, !dbg !2082

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2083

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2084

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2087

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2089

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2090
  call void @llvm.dbg.label(metadata !1877), !dbg !2091
  br i1 %128, label %263, label %638, !dbg !2092

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2090
  call void @llvm.dbg.label(metadata !1879), !dbg !2094
  br i1 %118, label %510, label %467, !dbg !2095

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2096

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2097, !tbaa !596
  %268 = icmp eq i8 %267, 0, !dbg !2099
  br i1 %268, label %269, label %456, !dbg !2100

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2101
  br i1 %270, label %271, label %456, !dbg !2103

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1851, metadata !DIExpression()), !dbg !1980
  br label %272, !dbg !2104

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1851, metadata !DIExpression()), !dbg !1980
  br i1 %126, label %274, label %456, !dbg !2105

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2107

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1851, metadata !DIExpression()), !dbg !1980
  br i1 %126, label %276, label %456, !dbg !2108

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2109

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2112
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2114
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2114
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %282, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %281, metadata !1832, metadata !DIExpression()), !dbg !1883
  %283 = icmp ult i64 %134, %282, !dbg !2115
  br i1 %283, label %284, label %286, !dbg !2118

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2115
  store i8 39, i8* %285, align 1, !dbg !2115, !tbaa !596
  br label %286, !dbg !2115

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %287, metadata !1831, metadata !DIExpression()), !dbg !1883
  %288 = icmp ult i64 %287, %282, !dbg !2119
  br i1 %288, label %289, label %291, !dbg !2122

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2119
  store i8 92, i8* %290, align 1, !dbg !2119, !tbaa !596
  br label %291, !dbg !2119

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %292, metadata !1831, metadata !DIExpression()), !dbg !1883
  %293 = icmp ult i64 %292, %282, !dbg !2123
  br i1 %293, label %294, label %296, !dbg !2126

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2123
  store i8 39, i8* %295, align 1, !dbg !2123, !tbaa !596
  br label %296, !dbg !2123

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %297, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1883
  br label %456, !dbg !2127

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2128

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1853, metadata !DIExpression()), !dbg !2129
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !2130
  %301 = load i16*, i16** %300, align 8, !dbg !2130, !tbaa !501
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2130
  %304 = load i16, i16* %303, align 2, !dbg !2130, !tbaa !621
  %305 = and i16 %304, 16384, !dbg !2130
  %306 = icmp ne i16 %305, 0, !dbg !2132
  call void @llvm.dbg.value(metadata i8 poison, metadata !1856, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %349, metadata !1853, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %312, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i1 %350, metadata !1851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  br label %352, !dbg !2133

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2134
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1857, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1909, metadata !DIExpression()) #34, !dbg !2136
  call void @llvm.dbg.value(metadata i8* %32, metadata !1917, metadata !DIExpression()) #34, !dbg !2138
  call void @llvm.dbg.value(metadata i32 0, metadata !1920, metadata !DIExpression()) #34, !dbg !2138
  call void @llvm.dbg.value(metadata i64 8, metadata !1921, metadata !DIExpression()) #34, !dbg !2138
  store i64 0, i64* %14, align 8, !dbg !2140
  call void @llvm.dbg.value(metadata i64 0, metadata !1853, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 1, metadata !1856, metadata !DIExpression()), !dbg !2129
  %308 = icmp eq i64 %164, -1, !dbg !2141
  br i1 %308, label %309, label %311, !dbg !2143

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %310, metadata !1824, metadata !DIExpression()), !dbg !1883
  br label %311, !dbg !2145

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1980
  call void @llvm.dbg.value(metadata i64 %312, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2146
  %313 = sub i64 %312, %139, !dbg !2147
  call void @llvm.dbg.value(metadata i32* %16, metadata !1860, metadata !DIExpression(DW_OP_deref)), !dbg !2148
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %314, metadata !1864, metadata !DIExpression()), !dbg !2148
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2150

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1853, metadata !DIExpression()), !dbg !2129
  %316 = icmp ugt i64 %312, %139, !dbg !2151
  br i1 %316, label %319, label %317, !dbg !2153

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1856, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 0, metadata !1853, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %349, metadata !1853, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %312, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i1 %350, metadata !1851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  br label %352, !dbg !2133

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1856, metadata !DIExpression()), !dbg !2129
  br label %346, !dbg !2156

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1853, metadata !DIExpression()), !dbg !2129
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2158
  %323 = load i8, i8* %322, align 1, !dbg !2158, !tbaa !596
  %324 = icmp eq i8 %323, 0, !dbg !2153
  br i1 %324, label %348, label %325, !dbg !2159

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %326, metadata !1853, metadata !DIExpression()), !dbg !2129
  %327 = add i64 %326, %139, !dbg !2161
  %328 = icmp eq i64 %326, %313, !dbg !2151
  br i1 %328, label %348, label %319, !dbg !2153, !llvm.loop !2162

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2163
  call void @llvm.dbg.value(metadata i64 1, metadata !1865, metadata !DIExpression()), !dbg !2164
  br i1 %331, label %332, label %340, !dbg !2163

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1865, metadata !DIExpression()), !dbg !2164
  %334 = add i64 %333, %139, !dbg !2165
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2167
  %336 = load i8, i8* %335, align 1, !dbg !2167, !tbaa !596
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2168

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %338, metadata !1865, metadata !DIExpression()), !dbg !2164
  %339 = icmp eq i64 %338, %314, !dbg !2170
  br i1 %339, label %340, label %332, !dbg !2171, !llvm.loop !2172

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2174, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %341, metadata !1860, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i32 %341, metadata !2176, metadata !DIExpression()) #34, !dbg !2184
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !2186
  %343 = icmp ne i32 %342, 0, !dbg !2187
  call void @llvm.dbg.value(metadata i8 poison, metadata !1856, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %314, metadata !1853, metadata !DIExpression()), !dbg !2129
  br label %348, !dbg !2188

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1856, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 0, metadata !1853, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2155
  call void @llvm.dbg.label(metadata !1882), !dbg !2189
  %345 = select i1 %118, i32 4, i32 2, !dbg !2190
  br label %643, !dbg !2190

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1856, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 0, metadata !1853, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %349, metadata !1853, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %312, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i1 %350, metadata !1851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  br label %352, !dbg !2133

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1856, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 0, metadata !1853, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %349, metadata !1853, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %312, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i1 %350, metadata !1851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  %351 = icmp ugt i64 %349, 1, !dbg !2192
  br i1 %351, label %357, label %352, !dbg !2133

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2193
  br i1 %356, label %456, label %357, !dbg !2193

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %361, metadata !1873, metadata !DIExpression()), !dbg !2195
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2196

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1883
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1972
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2197
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1980
  call void @llvm.dbg.value(metadata i8 %369, metadata !1852, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 %368, metadata !1850, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %366, metadata !1845, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %364, metadata !1831, metadata !DIExpression()), !dbg !1883
  br i1 %362, label %414, label %370, !dbg !2198

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2203

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1850, metadata !DIExpression()), !dbg !1980
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2206
  br i1 %372, label %389, label %373, !dbg !2206

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2208
  br i1 %374, label %375, label %377, !dbg !2212

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2208
  store i8 39, i8* %376, align 1, !dbg !2208, !tbaa !596
  br label %377, !dbg !2208

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %378, metadata !1831, metadata !DIExpression()), !dbg !1883
  %379 = icmp ult i64 %378, %140, !dbg !2213
  br i1 %379, label %380, label %382, !dbg !2216

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2213
  store i8 36, i8* %381, align 1, !dbg !2213, !tbaa !596
  br label %382, !dbg !2213

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %383, metadata !1831, metadata !DIExpression()), !dbg !1883
  %384 = icmp ult i64 %383, %140, !dbg !2217
  br i1 %384, label %385, label %387, !dbg !2220

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2217
  store i8 39, i8* %386, align 1, !dbg !2217, !tbaa !596
  br label %387, !dbg !2217

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %388, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1839, metadata !DIExpression()), !dbg !1883
  br label %389, !dbg !2221

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1883
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %390, metadata !1831, metadata !DIExpression()), !dbg !1883
  %392 = icmp ult i64 %390, %140, !dbg !2222
  br i1 %392, label %393, label %395, !dbg !2225

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2222
  store i8 92, i8* %394, align 1, !dbg !2222, !tbaa !596
  br label %395, !dbg !2222

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %396, metadata !1831, metadata !DIExpression()), !dbg !1883
  %397 = icmp ult i64 %396, %140, !dbg !2226
  br i1 %397, label %398, label %402, !dbg !2229

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2226
  %400 = or i8 %399, 48, !dbg !2226
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2226
  store i8 %400, i8* %401, align 1, !dbg !2226, !tbaa !596
  br label %402, !dbg !2226

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %403, metadata !1831, metadata !DIExpression()), !dbg !1883
  %404 = icmp ult i64 %403, %140, !dbg !2230
  br i1 %404, label %405, label %410, !dbg !2233

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2230
  %407 = and i8 %406, 7, !dbg !2230
  %408 = or i8 %407, 48, !dbg !2230
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2230
  store i8 %408, i8* %409, align 1, !dbg !2230, !tbaa !596
  br label %410, !dbg !2230

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %411, metadata !1831, metadata !DIExpression()), !dbg !1883
  %412 = and i8 %369, 7, !dbg !2234
  %413 = or i8 %412, 48, !dbg !2235
  call void @llvm.dbg.value(metadata i8 %413, metadata !1852, metadata !DIExpression()), !dbg !1980
  br label %421, !dbg !2236

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2237

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2238
  br i1 %416, label %417, label %419, !dbg !2243

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2238
  store i8 92, i8* %418, align 1, !dbg !2238, !tbaa !596
  br label %419, !dbg !2238

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %420, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1847, metadata !DIExpression()), !dbg !1980
  br label %421, !dbg !2244

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1883
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1980
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1980
  call void @llvm.dbg.value(metadata i8 %426, metadata !1852, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 %425, metadata !1850, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %422, metadata !1831, metadata !DIExpression()), !dbg !1883
  %427 = add i64 %366, 1, !dbg !2245
  %428 = icmp ugt i64 %361, %427, !dbg !2247
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2248

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2249
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2249
  br i1 %432, label %433, label %444, !dbg !2249

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2252
  br i1 %434, label %435, label %437, !dbg !2256

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2252
  store i8 39, i8* %436, align 1, !dbg !2252, !tbaa !596
  br label %437, !dbg !2252

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %438, metadata !1831, metadata !DIExpression()), !dbg !1883
  %439 = icmp ult i64 %438, %140, !dbg !2257
  br i1 %439, label %440, label %442, !dbg !2260

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2257
  store i8 39, i8* %441, align 1, !dbg !2257, !tbaa !596
  br label %442, !dbg !2257

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %443, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1883
  br label %444, !dbg !2261

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2262
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %445, metadata !1831, metadata !DIExpression()), !dbg !1883
  %447 = icmp ult i64 %445, %140, !dbg !2263
  br i1 %447, label %448, label %450, !dbg !2266

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2263
  store i8 %426, i8* %449, align 1, !dbg !2263, !tbaa !596
  br label %450, !dbg !2263

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %451, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %427, metadata !1845, metadata !DIExpression()), !dbg !1972
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2267
  %453 = load i8, i8* %452, align 1, !dbg !2267, !tbaa !596
  call void @llvm.dbg.value(metadata i8 %453, metadata !1852, metadata !DIExpression()), !dbg !1980
  br label %363, !dbg !2268, !llvm.loop !2269

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1852, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i1 %358, metadata !1851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  call void @llvm.dbg.value(metadata i8 %425, metadata !1850, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %366, metadata !1845, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %422, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %360, metadata !1824, metadata !DIExpression()), !dbg !1883
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2272
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1883
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1887
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1972
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1980
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %465, metadata !1852, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1851, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1850, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %462, metadata !1845, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %459, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %458, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %457, metadata !1824, metadata !DIExpression()), !dbg !1883
  br i1 %121, label %478, label %467, !dbg !2273

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
  br i1 %131, label %479, label %499, !dbg !2275

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2276

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
  %490 = lshr i8 %481, 5, !dbg !2277
  %491 = zext i8 %490 to i64, !dbg !2277
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2278
  %493 = load i32, i32* %492, align 4, !dbg !2278, !tbaa !587
  %494 = and i8 %481, 31, !dbg !2279
  %495 = zext i8 %494 to i32, !dbg !2279
  %496 = shl nuw i32 1, %495, !dbg !2280
  %497 = and i32 %493, %496, !dbg !2280
  %498 = icmp eq i32 %497, 0, !dbg !2280
  br i1 %498, label %499, label %510, !dbg !2281

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
  br i1 %165, label %510, label %546, !dbg !2282

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2272
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1883
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1887
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2283
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1980
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %518, metadata !1852, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1851, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %516, metadata !1845, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %513, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %512, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %511, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1880), !dbg !2284
  br i1 %119, label %638, label %520, !dbg !2285

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1850, metadata !DIExpression()), !dbg !1980
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2287
  br i1 %521, label %538, label %522, !dbg !2287

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2289
  br i1 %523, label %524, label %526, !dbg !2293

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2289
  store i8 39, i8* %525, align 1, !dbg !2289, !tbaa !596
  br label %526, !dbg !2289

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %527, metadata !1831, metadata !DIExpression()), !dbg !1883
  %528 = icmp ult i64 %527, %519, !dbg !2294
  br i1 %528, label %529, label %531, !dbg !2297

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2294
  store i8 36, i8* %530, align 1, !dbg !2294, !tbaa !596
  br label %531, !dbg !2294

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %532, metadata !1831, metadata !DIExpression()), !dbg !1883
  %533 = icmp ult i64 %532, %519, !dbg !2298
  br i1 %533, label %534, label %536, !dbg !2301

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2298
  store i8 39, i8* %535, align 1, !dbg !2298, !tbaa !596
  br label %536, !dbg !2298

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %537, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 1, metadata !1839, metadata !DIExpression()), !dbg !1883
  br label %538, !dbg !2302

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1980
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %539, metadata !1831, metadata !DIExpression()), !dbg !1883
  %541 = icmp ult i64 %539, %519, !dbg !2303
  br i1 %541, label %542, label %544, !dbg !2306

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2303
  store i8 92, i8* %543, align 1, !dbg !2303, !tbaa !596
  br label %544, !dbg !2303

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %556, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %555, metadata !1852, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1851, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1850, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %552, metadata !1845, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %549, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %548, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %547, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1881), !dbg !2307
  br label %570, !dbg !2308

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2272
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1883
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1887
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2283
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2311
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 %555, metadata !1852, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1851, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1850, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %552, metadata !1845, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %549, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %548, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %547, metadata !1824, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.label(metadata !1881), !dbg !2307
  %557 = xor i1 %551, true, !dbg !2308
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2308
  br i1 %558, label %570, label %559, !dbg !2308

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2312
  br i1 %560, label %561, label %563, !dbg !2316

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2312
  store i8 39, i8* %562, align 1, !dbg !2312, !tbaa !596
  br label %563, !dbg !2312

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %564, metadata !1831, metadata !DIExpression()), !dbg !1883
  %565 = icmp ult i64 %564, %556, !dbg !2317
  br i1 %565, label %566, label %568, !dbg !2320

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2317
  store i8 39, i8* %567, align 1, !dbg !2317, !tbaa !596
  br label %568, !dbg !2317

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %569, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1883
  br label %570, !dbg !2321

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1980
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %578, metadata !1831, metadata !DIExpression()), !dbg !1883
  %580 = icmp ult i64 %578, %571, !dbg !2322
  br i1 %580, label %581, label %583, !dbg !2325

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2322
  store i8 %572, i8* %582, align 1, !dbg !2322, !tbaa !596
  br label %583, !dbg !2322

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %584, metadata !1831, metadata !DIExpression()), !dbg !1883
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !1883
  br label %586, !dbg !2327

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2272
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1883
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1887
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2283
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %593, metadata !1845, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %589, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %588, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %587, metadata !1824, metadata !DIExpression()), !dbg !1883
  %595 = add i64 %593, 1, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %595, metadata !1845, metadata !DIExpression()), !dbg !1972
  br label %132, !dbg !2329, !llvm.loop !2330

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 poison, metadata !1837, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 undef, metadata !1832, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 undef, metadata !1831, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 undef, metadata !1824, metadata !DIExpression()), !dbg !1883
  %597 = icmp eq i64 %134, 0, !dbg !2332
  %598 = and i1 %126, %597, !dbg !2334
  %599 = and i1 %598, %119, !dbg !2334
  br i1 %599, label %638, label %600, !dbg !2334

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2335
  %602 = or i1 %119, %601, !dbg !2335
  %603 = xor i1 %136, true, !dbg !2335
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2335
  br i1 %604, label %612, label %605, !dbg !2335

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2337

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2339
  br label %653, !dbg !2341

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2342
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2344
  br i1 %611, label %36, label %612, !dbg !2344

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2345
  %615 = or i1 %614, %613, !dbg !2347
  br i1 %615, label %631, label %616, !dbg !2347

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %134, metadata !1831, metadata !DIExpression()), !dbg !1883
  %617 = load i8, i8* %116, align 1, !dbg !2348, !tbaa !596
  %618 = icmp eq i8 %617, 0, !dbg !2351
  br i1 %618, label %631, label %619, !dbg !2351

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1833, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %622, metadata !1831, metadata !DIExpression()), !dbg !1883
  %623 = icmp ult i64 %622, %140, !dbg !2352
  br i1 %623, label %624, label %626, !dbg !2355

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2352
  store i8 %620, i8* %625, align 1, !dbg !2352, !tbaa !596
  br label %626, !dbg !2352

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %627, metadata !1831, metadata !DIExpression()), !dbg !1883
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2356
  call void @llvm.dbg.value(metadata i8* %628, metadata !1833, metadata !DIExpression()), !dbg !1883
  %629 = load i8, i8* %628, align 1, !dbg !2348, !tbaa !596
  %630 = icmp eq i8 %629, 0, !dbg !2351
  br i1 %630, label %631, label %619, !dbg !2351, !llvm.loop !2357

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1959
  call void @llvm.dbg.value(metadata i64 %632, metadata !1831, metadata !DIExpression()), !dbg !1883
  %633 = icmp ult i64 %632, %140, !dbg !2359
  br i1 %633, label %634, label %653, !dbg !2361

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2362
  store i8 0, i8* %635, align 1, !dbg !2363, !tbaa !596
  br label %653, !dbg !2362

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1882), !dbg !2189
  %637 = icmp eq i32 %112, 2, !dbg !2364
  br i1 %637, label %643, label %647, !dbg !2190

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1882), !dbg !2189
  %641 = icmp eq i32 %112, 2, !dbg !2364
  %642 = select i1 %118, i32 4, i32 2, !dbg !2190
  br i1 %641, label %643, label %647, !dbg !2190

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2190

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1825, metadata !DIExpression()), !dbg !1883
  %651 = and i32 %5, -3, !dbg !2365
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2366
  br label %653, !dbg !2367

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2368
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2369 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2375, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %1, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2377, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()) #34, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %1, metadata !2384, metadata !DIExpression()) #34, !dbg !2392
  call void @llvm.dbg.value(metadata i64* null, metadata !2385, metadata !DIExpression()) #34, !dbg !2392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2386, metadata !DIExpression()) #34, !dbg !2392
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2394
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2394
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2387, metadata !DIExpression()) #34, !dbg !2392
  %6 = tail call i32* @__errno_location() #37, !dbg !2395
  %7 = load i32, i32* %6, align 4, !dbg !2395, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %7, metadata !2388, metadata !DIExpression()) #34, !dbg !2392
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2396
  %9 = load i32, i32* %8, align 4, !dbg !2396, !tbaa !1765
  %10 = or i32 %9, 1, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %10, metadata !2389, metadata !DIExpression()) #34, !dbg !2392
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2398
  %12 = load i32, i32* %11, align 8, !dbg !2398, !tbaa !1714
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2399
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2400
  %15 = load i8*, i8** %14, align 8, !dbg !2400, !tbaa !1787
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2401
  %17 = load i8*, i8** %16, align 8, !dbg !2401, !tbaa !1790
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !2402
  %19 = add i64 %18, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %19, metadata !2390, metadata !DIExpression()) #34, !dbg !2392
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !2404
  call void @llvm.dbg.value(metadata i8* %20, metadata !2391, metadata !DIExpression()) #34, !dbg !2392
  %21 = load i32, i32* %11, align 8, !dbg !2405, !tbaa !1714
  %22 = load i8*, i8** %14, align 8, !dbg !2406, !tbaa !1787
  %23 = load i8*, i8** %16, align 8, !dbg !2407, !tbaa !1790
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !2408
  store i32 %7, i32* %6, align 4, !dbg !2409, !tbaa !587
  ret i8* %20, !dbg !2410
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i64 %1, metadata !2384, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i64* %2, metadata !2385, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2386, metadata !DIExpression()), !dbg !2411
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2412
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2387, metadata !DIExpression()), !dbg !2411
  %7 = tail call i32* @__errno_location() #37, !dbg !2413
  %8 = load i32, i32* %7, align 4, !dbg !2413, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %8, metadata !2388, metadata !DIExpression()), !dbg !2411
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2414
  %10 = load i32, i32* %9, align 4, !dbg !2414, !tbaa !1765
  %11 = icmp eq i64* %2, null, !dbg !2415
  %12 = zext i1 %11 to i32, !dbg !2415
  %13 = or i32 %10, %12, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %13, metadata !2389, metadata !DIExpression()), !dbg !2411
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2417
  %15 = load i32, i32* %14, align 8, !dbg !2417, !tbaa !1714
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2418
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2419
  %18 = load i8*, i8** %17, align 8, !dbg !2419, !tbaa !1787
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2420
  %20 = load i8*, i8** %19, align 8, !dbg !2420, !tbaa !1790
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2421
  %22 = add i64 %21, 1, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %22, metadata !2390, metadata !DIExpression()), !dbg !2411
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %23, metadata !2391, metadata !DIExpression()), !dbg !2411
  %24 = load i32, i32* %14, align 8, !dbg !2424, !tbaa !1714
  %25 = load i8*, i8** %17, align 8, !dbg !2425, !tbaa !1787
  %26 = load i8*, i8** %19, align 8, !dbg !2426, !tbaa !1790
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2427
  store i32 %8, i32* %7, align 4, !dbg !2428, !tbaa !587
  br i1 %11, label %29, label %28, !dbg !2429

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2430, !tbaa !2432
  br label %29, !dbg !2433

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2434
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2435 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2440, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2437, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 1, metadata !2438, metadata !DIExpression()), !dbg !2442
  %2 = load i32, i32* @nslots, align 4, !tbaa !587
  call void @llvm.dbg.value(metadata i32 1, metadata !2438, metadata !DIExpression()), !dbg !2442
  %3 = icmp sgt i32 %2, 1, !dbg !2443
  br i1 %3, label %4, label %6, !dbg !2445

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2443
  br label %10, !dbg !2445

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2446
  %8 = load i8*, i8** %7, align 8, !dbg !2446, !tbaa !2448
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2450
  br i1 %9, label %17, label %16, !dbg !2451

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2438, metadata !DIExpression()), !dbg !2442
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2452
  %13 = load i8*, i8** %12, align 8, !dbg !2452, !tbaa !2448
  tail call void @free(i8* noundef %13) #34, !dbg !2453
  %14 = add nuw nsw i64 %11, 1, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %14, metadata !2438, metadata !DIExpression()), !dbg !2442
  %15 = icmp eq i64 %14, %5, !dbg !2443
  br i1 %15, label %6, label %10, !dbg !2445, !llvm.loop !2455

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !2457
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2459, !tbaa !2460
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2461, !tbaa !2448
  br label %17, !dbg !2462

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2463
  br i1 %18, label %21, label %19, !dbg !2465

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2466
  tail call void @free(i8* noundef %20) #34, !dbg !2468
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2469, !tbaa !501
  br label %21, !dbg !2470

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2471, !tbaa !587
  ret void, !dbg !2472
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2473 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %1, metadata !2476, metadata !DIExpression()), !dbg !2477
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2478
  ret i8* %3, !dbg !2479
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2480 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8* %1, metadata !2485, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %2, metadata !2486, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2487, metadata !DIExpression()), !dbg !2500
  %6 = tail call i32* @__errno_location() #37, !dbg !2501
  %7 = load i32, i32* %6, align 4, !dbg !2501, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %7, metadata !2488, metadata !DIExpression()), !dbg !2500
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2502, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2489, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2490, metadata !DIExpression()), !dbg !2500
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2503
  br i1 %9, label %10, label %11, !dbg !2503

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2505
  unreachable, !dbg !2505

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2506, !tbaa !587
  %13 = icmp sgt i32 %12, %0, !dbg !2507
  br i1 %13, label %36, label %14, !dbg !2508

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2509
  call void @llvm.dbg.value(metadata i1 %15, metadata !2491, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2510
  %16 = bitcast i64* %5 to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2511
  %17 = sext i32 %12 to i64, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %17, metadata !2494, metadata !DIExpression()), !dbg !2510
  store i64 %17, i64* %5, align 8, !dbg !2513, !tbaa !2432
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2514
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2514
  %20 = add nuw nsw i32 %0, 1, !dbg !2515
  %21 = sub i32 %20, %12, !dbg !2516
  %22 = sext i32 %21 to i64, !dbg !2517
  call void @llvm.dbg.value(metadata i64* %5, metadata !2494, metadata !DIExpression(DW_OP_deref)), !dbg !2510
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !2518
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2518
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2489, metadata !DIExpression()), !dbg !2500
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2519, !tbaa !501
  br i1 %15, label %25, label %26, !dbg !2520

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2521, !tbaa.struct !2523
  br label %26, !dbg !2524

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2525, !tbaa !587
  %28 = sext i32 %27 to i64, !dbg !2526
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2526
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2527
  %31 = load i64, i64* %5, align 8, !dbg !2528, !tbaa !2432
  call void @llvm.dbg.value(metadata i64 %31, metadata !2494, metadata !DIExpression()), !dbg !2510
  %32 = sub nsw i64 %31, %28, !dbg !2529
  %33 = shl i64 %32, 4, !dbg !2530
  call void @llvm.dbg.value(metadata i8* %30, metadata !1917, metadata !DIExpression()) #34, !dbg !2531
  call void @llvm.dbg.value(metadata i32 0, metadata !1920, metadata !DIExpression()) #34, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %33, metadata !1921, metadata !DIExpression()) #34, !dbg !2531
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !2533
  %34 = load i64, i64* %5, align 8, !dbg !2534, !tbaa !2432
  call void @llvm.dbg.value(metadata i64 %34, metadata !2494, metadata !DIExpression()), !dbg !2510
  %35 = trunc i64 %34 to i32, !dbg !2534
  store i32 %35, i32* @nslots, align 4, !dbg !2535, !tbaa !587
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2536
  br label %36, !dbg !2537

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2500
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2489, metadata !DIExpression()), !dbg !2500
  %38 = zext i32 %0 to i64, !dbg !2538
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2539
  %40 = load i64, i64* %39, align 8, !dbg !2539, !tbaa !2460
  call void @llvm.dbg.value(metadata i64 %40, metadata !2495, metadata !DIExpression()), !dbg !2540
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2541
  %42 = load i8*, i8** %41, align 8, !dbg !2541, !tbaa !2448
  call void @llvm.dbg.value(metadata i8* %42, metadata !2497, metadata !DIExpression()), !dbg !2540
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2542
  %44 = load i32, i32* %43, align 4, !dbg !2542, !tbaa !1765
  %45 = or i32 %44, 1, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %45, metadata !2498, metadata !DIExpression()), !dbg !2540
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2544
  %47 = load i32, i32* %46, align 8, !dbg !2544, !tbaa !1714
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2545
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2546
  %50 = load i8*, i8** %49, align 8, !dbg !2546, !tbaa !1787
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2547
  %52 = load i8*, i8** %51, align 8, !dbg !2547, !tbaa !1790
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2548
  call void @llvm.dbg.value(metadata i64 %53, metadata !2499, metadata !DIExpression()), !dbg !2540
  %54 = icmp ugt i64 %40, %53, !dbg !2549
  br i1 %54, label %65, label %55, !dbg !2551

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %56, metadata !2495, metadata !DIExpression()), !dbg !2540
  store i64 %56, i64* %39, align 8, !dbg !2554, !tbaa !2460
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2555
  br i1 %57, label %59, label %58, !dbg !2557

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !2558
  br label %59, !dbg !2558

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2559
  call void @llvm.dbg.value(metadata i8* %60, metadata !2497, metadata !DIExpression()), !dbg !2540
  store i8* %60, i8** %41, align 8, !dbg !2560, !tbaa !2448
  %61 = load i32, i32* %46, align 8, !dbg !2561, !tbaa !1714
  %62 = load i8*, i8** %49, align 8, !dbg !2562, !tbaa !1787
  %63 = load i8*, i8** %51, align 8, !dbg !2563, !tbaa !1790
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2564
  br label %65, !dbg !2565

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2540
  call void @llvm.dbg.value(metadata i8* %66, metadata !2497, metadata !DIExpression()), !dbg !2540
  store i32 %7, i32* %6, align 4, !dbg !2566, !tbaa !587
  ret i8* %66, !dbg !2567
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2568 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2572, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %1, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i64 %2, metadata !2574, metadata !DIExpression()), !dbg !2575
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2576
  ret i8* %4, !dbg !2577
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2578 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 0, metadata !2475, metadata !DIExpression()) #34, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %0, metadata !2476, metadata !DIExpression()) #34, !dbg !2582
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2584
  ret i8* %2, !dbg !2585
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2586 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()) #34, !dbg !2593
  call void @llvm.dbg.value(metadata i8* %0, metadata !2573, metadata !DIExpression()) #34, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %1, metadata !2574, metadata !DIExpression()) #34, !dbg !2593
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2595
  ret i8* %3, !dbg !2596
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2597 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2601, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 %1, metadata !2602, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %2, metadata !2603, metadata !DIExpression()), !dbg !2605
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2606
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2606
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2604, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %1, metadata !2612, metadata !DIExpression()) #34, !dbg !2618
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2617, metadata !DIExpression()) #34, !dbg !2620
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2620, !alias.scope !2608
  %6 = icmp eq i32 %1, 10, !dbg !2621
  br i1 %6, label %7, label %8, !dbg !2623

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2624, !noalias !2608
  unreachable, !dbg !2624

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2625
  store i32 %1, i32* %9, align 8, !dbg !2626, !tbaa !1714, !alias.scope !2608
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2628
  ret i8* %10, !dbg !2629
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2630 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2634, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i32 %1, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8* %2, metadata !2636, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %3, metadata !2637, metadata !DIExpression()), !dbg !2639
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2640
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2638, metadata !DIExpression()), !dbg !2641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1, metadata !2612, metadata !DIExpression()) #34, !dbg !2646
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2617, metadata !DIExpression()) #34, !dbg !2648
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !2648, !alias.scope !2642
  %7 = icmp eq i32 %1, 10, !dbg !2649
  br i1 %7, label %8, label %9, !dbg !2650

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2651, !noalias !2642
  unreachable, !dbg !2651

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2652
  store i32 %1, i32* %10, align 8, !dbg !2653, !tbaa !1714, !alias.scope !2642
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2654
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2655
  ret i8* %11, !dbg !2656
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2657 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8* %1, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2601, metadata !DIExpression()) #34, !dbg !2664
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()) #34, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %1, metadata !2603, metadata !DIExpression()) #34, !dbg !2664
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2666
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2666
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2604, metadata !DIExpression()) #34, !dbg !2667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668) #34, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %0, metadata !2612, metadata !DIExpression()) #34, !dbg !2672
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2617, metadata !DIExpression()) #34, !dbg !2674
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !2674, !alias.scope !2668
  %5 = icmp eq i32 %0, 10, !dbg !2675
  br i1 %5, label %6, label %7, !dbg !2676

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !2677, !noalias !2668
  unreachable, !dbg !2677

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2678
  store i32 %0, i32* %8, align 8, !dbg !2679, !tbaa !1714, !alias.scope !2668
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2680
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2681
  ret i8* %9, !dbg !2682
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2683 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2687, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8* %1, metadata !2688, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i64 %2, metadata !2689, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 0, metadata !2634, metadata !DIExpression()) #34, !dbg !2691
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()) #34, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !2636, metadata !DIExpression()) #34, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %2, metadata !2637, metadata !DIExpression()) #34, !dbg !2691
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2693
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2693
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2638, metadata !DIExpression()) #34, !dbg !2694
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2695) #34, !dbg !2698
  call void @llvm.dbg.value(metadata i32 %0, metadata !2612, metadata !DIExpression()) #34, !dbg !2699
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2617, metadata !DIExpression()) #34, !dbg !2701
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2701, !alias.scope !2695
  %6 = icmp eq i32 %0, 10, !dbg !2702
  br i1 %6, label %7, label %8, !dbg !2703

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2704, !noalias !2695
  unreachable, !dbg !2704

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2705
  store i32 %0, i32* %9, align 8, !dbg !2706, !tbaa !1714, !alias.scope !2695
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2707
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2708
  ret i8* %10, !dbg !2709
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2710 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 %2, metadata !2716, metadata !DIExpression()), !dbg !2718
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2719
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2717, metadata !DIExpression()), !dbg !2720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2721, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1732, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 %2, metadata !1733, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i32 1, metadata !1734, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8 %2, metadata !1735, metadata !DIExpression()), !dbg !2723
  %6 = lshr i8 %2, 5, !dbg !2725
  %7 = zext i8 %6 to i64, !dbg !2725
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2726
  call void @llvm.dbg.value(metadata i32* %8, metadata !1736, metadata !DIExpression()), !dbg !2723
  %9 = and i8 %2, 31, !dbg !2727
  %10 = zext i8 %9 to i32, !dbg !2727
  call void @llvm.dbg.value(metadata i32 %10, metadata !1738, metadata !DIExpression()), !dbg !2723
  %11 = load i32, i32* %8, align 4, !dbg !2728, !tbaa !587
  %12 = lshr i32 %11, %10, !dbg !2729
  %13 = and i32 %12, 1, !dbg !2730
  call void @llvm.dbg.value(metadata i32 %13, metadata !1739, metadata !DIExpression()), !dbg !2723
  %14 = xor i32 %13, 1, !dbg !2731
  %15 = shl i32 %14, %10, !dbg !2732
  %16 = xor i32 %15, %11, !dbg !2733
  store i32 %16, i32* %8, align 4, !dbg !2733, !tbaa !587
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2735
  ret i8* %17, !dbg !2736
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2737 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 %1, metadata !2742, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()) #34, !dbg !2744
  call void @llvm.dbg.value(metadata i64 -1, metadata !2715, metadata !DIExpression()) #34, !dbg !2744
  call void @llvm.dbg.value(metadata i8 %1, metadata !2716, metadata !DIExpression()) #34, !dbg !2744
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2746
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2746
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2717, metadata !DIExpression()) #34, !dbg !2747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2748, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1732, metadata !DIExpression()) #34, !dbg !2749
  call void @llvm.dbg.value(metadata i8 %1, metadata !1733, metadata !DIExpression()) #34, !dbg !2749
  call void @llvm.dbg.value(metadata i32 1, metadata !1734, metadata !DIExpression()) #34, !dbg !2749
  call void @llvm.dbg.value(metadata i8 %1, metadata !1735, metadata !DIExpression()) #34, !dbg !2749
  %5 = lshr i8 %1, 5, !dbg !2751
  %6 = zext i8 %5 to i64, !dbg !2751
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2752
  call void @llvm.dbg.value(metadata i32* %7, metadata !1736, metadata !DIExpression()) #34, !dbg !2749
  %8 = and i8 %1, 31, !dbg !2753
  %9 = zext i8 %8 to i32, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %9, metadata !1738, metadata !DIExpression()) #34, !dbg !2749
  %10 = load i32, i32* %7, align 4, !dbg !2754, !tbaa !587
  %11 = lshr i32 %10, %9, !dbg !2755
  %12 = and i32 %11, 1, !dbg !2756
  call void @llvm.dbg.value(metadata i32 %12, metadata !1739, metadata !DIExpression()) #34, !dbg !2749
  %13 = xor i32 %12, 1, !dbg !2757
  %14 = shl i32 %13, %9, !dbg !2758
  %15 = xor i32 %14, %10, !dbg !2759
  store i32 %15, i32* %7, align 4, !dbg !2759, !tbaa !587
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2760
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2761
  ret i8* %16, !dbg !2762
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2763 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()) #34, !dbg !2767
  call void @llvm.dbg.value(metadata i8 58, metadata !2742, metadata !DIExpression()) #34, !dbg !2767
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()) #34, !dbg !2769
  call void @llvm.dbg.value(metadata i64 -1, metadata !2715, metadata !DIExpression()) #34, !dbg !2769
  call void @llvm.dbg.value(metadata i8 58, metadata !2716, metadata !DIExpression()) #34, !dbg !2769
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2771
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2771
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2717, metadata !DIExpression()) #34, !dbg !2772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2773, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1732, metadata !DIExpression()) #34, !dbg !2774
  call void @llvm.dbg.value(metadata i8 58, metadata !1733, metadata !DIExpression()) #34, !dbg !2774
  call void @llvm.dbg.value(metadata i32 1, metadata !1734, metadata !DIExpression()) #34, !dbg !2774
  call void @llvm.dbg.value(metadata i8 58, metadata !1735, metadata !DIExpression()) #34, !dbg !2774
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2776
  call void @llvm.dbg.value(metadata i32* %4, metadata !1736, metadata !DIExpression()) #34, !dbg !2774
  call void @llvm.dbg.value(metadata i32 26, metadata !1738, metadata !DIExpression()) #34, !dbg !2774
  %5 = load i32, i32* %4, align 4, !dbg !2777, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %5, metadata !1739, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2774
  %6 = or i32 %5, 67108864, !dbg !2778
  store i32 %6, i32* %4, align 4, !dbg !2778, !tbaa !587
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2780
  ret i8* %7, !dbg !2781
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2782 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %1, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()) #34, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()) #34, !dbg !2787
  call void @llvm.dbg.value(metadata i8 58, metadata !2716, metadata !DIExpression()) #34, !dbg !2787
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2789
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2717, metadata !DIExpression()) #34, !dbg !2790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2791, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1732, metadata !DIExpression()) #34, !dbg !2792
  call void @llvm.dbg.value(metadata i8 58, metadata !1733, metadata !DIExpression()) #34, !dbg !2792
  call void @llvm.dbg.value(metadata i32 1, metadata !1734, metadata !DIExpression()) #34, !dbg !2792
  call void @llvm.dbg.value(metadata i8 58, metadata !1735, metadata !DIExpression()) #34, !dbg !2792
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2794
  call void @llvm.dbg.value(metadata i32* %5, metadata !1736, metadata !DIExpression()) #34, !dbg !2792
  call void @llvm.dbg.value(metadata i32 26, metadata !1738, metadata !DIExpression()) #34, !dbg !2792
  %6 = load i32, i32* %5, align 4, !dbg !2795, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %6, metadata !1739, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2792
  %7 = or i32 %6, 67108864, !dbg !2796
  store i32 %7, i32* %5, align 4, !dbg !2796, !tbaa !587
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2797
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2798
  ret i8* %8, !dbg !2799
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2800 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2802, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %1, metadata !2803, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %2, metadata !2804, metadata !DIExpression()), !dbg !2806
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2807
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2805, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i32 %1, metadata !2612, metadata !DIExpression()) #34, !dbg !2809
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2809
  %6 = icmp eq i32 %1, 10, !dbg !2811
  br i1 %6, label %7, label %8, !dbg !2812

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2813, !noalias !2814
  unreachable, !dbg !2813

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2617, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2809
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2817
  store i32 %1, i32* %9, align 8, !dbg !2817, !tbaa.struct !2722
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2817
  %11 = bitcast i32* %10 to i8*, !dbg !2817
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2817
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1732, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8 58, metadata !1733, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 1, metadata !1734, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8 58, metadata !1735, metadata !DIExpression()), !dbg !2818
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2820
  call void @llvm.dbg.value(metadata i32* %12, metadata !1736, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 26, metadata !1738, metadata !DIExpression()), !dbg !2818
  %13 = load i32, i32* %12, align 4, !dbg !2821, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %13, metadata !1739, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2818
  %14 = or i32 %13, 67108864, !dbg !2822
  store i32 %14, i32* %12, align 4, !dbg !2822, !tbaa !587
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2823
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2824
  ret i8* %15, !dbg !2825
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2826 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %1, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %2, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %3, metadata !2833, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 %0, metadata !2835, metadata !DIExpression()) #34, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %1, metadata !2840, metadata !DIExpression()) #34, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %2, metadata !2841, metadata !DIExpression()) #34, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %3, metadata !2842, metadata !DIExpression()) #34, !dbg !2845
  call void @llvm.dbg.value(metadata i64 -1, metadata !2843, metadata !DIExpression()) #34, !dbg !2845
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2847
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2847
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2844, metadata !DIExpression()) #34, !dbg !2848
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2849, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1772, metadata !DIExpression()) #34, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %1, metadata !1773, metadata !DIExpression()) #34, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %2, metadata !1774, metadata !DIExpression()) #34, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1772, metadata !DIExpression()) #34, !dbg !2850
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2852
  store i32 10, i32* %7, align 8, !dbg !2853, !tbaa !1714
  %8 = icmp ne i8* %1, null, !dbg !2854
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2855
  br i1 %10, label %12, label %11, !dbg !2855

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2856
  unreachable, !dbg !2856

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2857
  store i8* %1, i8** %13, align 8, !dbg !2858, !tbaa !1787
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2859
  store i8* %2, i8** %14, align 8, !dbg !2860, !tbaa !1790
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2861
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2862
  ret i8* %15, !dbg !2863
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2836 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2835, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %1, metadata !2840, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %2, metadata !2841, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %3, metadata !2842, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %4, metadata !2843, metadata !DIExpression()), !dbg !2864
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2865
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2865
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2844, metadata !DIExpression()), !dbg !2866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2867, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1772, metadata !DIExpression()) #34, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %1, metadata !1773, metadata !DIExpression()) #34, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %2, metadata !1774, metadata !DIExpression()) #34, !dbg !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1772, metadata !DIExpression()) #34, !dbg !2868
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2870
  store i32 10, i32* %8, align 8, !dbg !2871, !tbaa !1714
  %9 = icmp ne i8* %1, null, !dbg !2872
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2873
  br i1 %11, label %13, label %12, !dbg !2873

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !2874
  unreachable, !dbg !2874

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2875
  store i8* %1, i8** %14, align 8, !dbg !2876, !tbaa !1787
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2877
  store i8* %2, i8** %15, align 8, !dbg !2878, !tbaa !1790
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2879
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2880
  ret i8* %16, !dbg !2881
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2882 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %1, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %2, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 0, metadata !2830, metadata !DIExpression()) #34, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %0, metadata !2831, metadata !DIExpression()) #34, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %1, metadata !2832, metadata !DIExpression()) #34, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %2, metadata !2833, metadata !DIExpression()) #34, !dbg !2890
  call void @llvm.dbg.value(metadata i32 0, metadata !2835, metadata !DIExpression()) #34, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %0, metadata !2840, metadata !DIExpression()) #34, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %1, metadata !2841, metadata !DIExpression()) #34, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %2, metadata !2842, metadata !DIExpression()) #34, !dbg !2892
  call void @llvm.dbg.value(metadata i64 -1, metadata !2843, metadata !DIExpression()) #34, !dbg !2892
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2894
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2894
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2844, metadata !DIExpression()) #34, !dbg !2895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2896, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1772, metadata !DIExpression()) #34, !dbg !2897
  call void @llvm.dbg.value(metadata i8* %0, metadata !1773, metadata !DIExpression()) #34, !dbg !2897
  call void @llvm.dbg.value(metadata i8* %1, metadata !1774, metadata !DIExpression()) #34, !dbg !2897
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1772, metadata !DIExpression()) #34, !dbg !2897
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2899
  store i32 10, i32* %6, align 8, !dbg !2900, !tbaa !1714
  %7 = icmp ne i8* %0, null, !dbg !2901
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2902
  br i1 %9, label %11, label %10, !dbg !2902

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2903
  unreachable, !dbg !2903

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2904
  store i8* %0, i8** %12, align 8, !dbg !2905, !tbaa !1787
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2906
  store i8* %1, i8** %13, align 8, !dbg !2907, !tbaa !1790
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2908
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2909
  ret i8* %14, !dbg !2910
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2911 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8* %1, metadata !2916, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8* %2, metadata !2917, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 %3, metadata !2918, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 0, metadata !2835, metadata !DIExpression()) #34, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %0, metadata !2840, metadata !DIExpression()) #34, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %1, metadata !2841, metadata !DIExpression()) #34, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %2, metadata !2842, metadata !DIExpression()) #34, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %3, metadata !2843, metadata !DIExpression()) #34, !dbg !2920
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2922
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2922
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2844, metadata !DIExpression()) #34, !dbg !2923
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2924, !tbaa.struct !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1772, metadata !DIExpression()) #34, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %0, metadata !1773, metadata !DIExpression()) #34, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %1, metadata !1774, metadata !DIExpression()) #34, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1772, metadata !DIExpression()) #34, !dbg !2925
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2927
  store i32 10, i32* %7, align 8, !dbg !2928, !tbaa !1714
  %8 = icmp ne i8* %0, null, !dbg !2929
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2930
  br i1 %10, label %12, label %11, !dbg !2930

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2931
  unreachable, !dbg !2931

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2932
  store i8* %0, i8** %13, align 8, !dbg !2933, !tbaa !1787
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2934
  store i8* %1, i8** %14, align 8, !dbg !2935, !tbaa !1790
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2936
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2937
  ret i8* %15, !dbg !2938
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2943, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8* %1, metadata !2944, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 %2, metadata !2945, metadata !DIExpression()), !dbg !2946
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2947
  ret i8* %4, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2949 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %1, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 0, metadata !2943, metadata !DIExpression()) #34, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()) #34, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2945, metadata !DIExpression()) #34, !dbg !2956
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2958
  ret i8* %3, !dbg !2959
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2964, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8* %1, metadata !2965, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 %0, metadata !2943, metadata !DIExpression()) #34, !dbg !2967
  call void @llvm.dbg.value(metadata i8* %1, metadata !2944, metadata !DIExpression()) #34, !dbg !2967
  call void @llvm.dbg.value(metadata i64 -1, metadata !2945, metadata !DIExpression()) #34, !dbg !2967
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2969
  ret i8* %3, !dbg !2970
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2971 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2975, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 0, metadata !2964, metadata !DIExpression()) #34, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %0, metadata !2965, metadata !DIExpression()) #34, !dbg !2977
  call void @llvm.dbg.value(metadata i32 0, metadata !2943, metadata !DIExpression()) #34, !dbg !2979
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()) #34, !dbg !2979
  call void @llvm.dbg.value(metadata i64 -1, metadata !2945, metadata !DIExpression()) #34, !dbg !2979
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2981
  ret i8* %2, !dbg !2982
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_write(i32 noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #21 !dbg !2983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2989, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2990, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %2, metadata !2991, metadata !DIExpression()), !dbg !2997
  br label %4, !dbg !2998

4:                                                ; preds = %22, %3
  %5 = phi i64 [ %2, %3 ], [ %23, %22 ]
  %6 = phi i64 [ undef, %3 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2991, metadata !DIExpression()), !dbg !2997
  %7 = tail call i64 @write(i32 noundef %0, i8* noundef %1, i64 noundef %5) #34, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %7, metadata !2992, metadata !DIExpression()), !dbg !3000
  %8 = icmp sgt i64 %7, -1, !dbg !3001
  br i1 %8, label %27, label %9, !dbg !3003

9:                                                ; preds = %4
  %10 = tail call i32* @__errno_location() #37, !dbg !3004
  %11 = load i32, i32* %10, align 4, !dbg !3004, !tbaa !587
  %12 = icmp eq i32 %11, 4, !dbg !3004
  br i1 %12, label %22, label %13, !dbg !3006, !llvm.loop !3007

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3010
  %15 = icmp sgt i64 %5, 2146435072
  %16 = and i1 %15, %14, !dbg !3012
  %17 = select i1 %16, i64 2146435072, i64 %5, !dbg !3013
  %18 = select i1 %16, i64 %6, i64 %7, !dbg !3013
  %19 = and i1 %15, %14, !dbg !3013
  %20 = xor i1 %19, true, !dbg !3013
  %21 = zext i1 %20 to i32, !dbg !3013
  br label %22, !dbg !3013

22:                                               ; preds = %13, %9
  %23 = phi i64 [ %5, %9 ], [ %17, %13 ]
  %24 = phi i64 [ %6, %9 ], [ %18, %13 ]
  %25 = phi i32 [ 3, %9 ], [ %21, %13 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !2991, metadata !DIExpression()), !dbg !2997
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %4

27:                                               ; preds = %4, %22
  %28 = phi i64 [ %24, %22 ], [ %7, %4 ]
  ret i64 %28, !dbg !3014
}

; Function Attrs: nofree
declare !dbg !3015 noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3018 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3057, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i8* %1, metadata !3058, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i8* %2, metadata !3059, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i8* %3, metadata !3060, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i8** %4, metadata !3061, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %5, metadata !3062, metadata !DIExpression()), !dbg !3063
  %7 = icmp eq i8* %1, null, !dbg !3064
  br i1 %7, label %10, label %8, !dbg !3066

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !3067
  br label %12, !dbg !3067

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !3068
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.85, i64 0, i64 0), i32 noundef 5) #34, !dbg !3069
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !3069
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3070
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.87, i64 0, i64 0), i32 noundef 5) #34, !dbg !3071
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.88, i64 0, i64 0)) #34, !dbg !3071
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3072
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
  ], !dbg !3073

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.89, i64 0, i64 0), i32 noundef 5) #34, !dbg !3074
  %21 = load i8*, i8** %4, align 8, !dbg !3074, !tbaa !501
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !3074
  br label %147, !dbg !3076

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.90, i64 0, i64 0), i32 noundef 5) #34, !dbg !3077
  %25 = load i8*, i8** %4, align 8, !dbg !3077, !tbaa !501
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3077
  %27 = load i8*, i8** %26, align 8, !dbg !3077, !tbaa !501
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !3077
  br label %147, !dbg !3078

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.91, i64 0, i64 0), i32 noundef 5) #34, !dbg !3079
  %31 = load i8*, i8** %4, align 8, !dbg !3079, !tbaa !501
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3079
  %33 = load i8*, i8** %32, align 8, !dbg !3079, !tbaa !501
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3079
  %35 = load i8*, i8** %34, align 8, !dbg !3079, !tbaa !501
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !3079
  br label %147, !dbg !3080

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.92, i64 0, i64 0), i32 noundef 5) #34, !dbg !3081
  %39 = load i8*, i8** %4, align 8, !dbg !3081, !tbaa !501
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3081
  %41 = load i8*, i8** %40, align 8, !dbg !3081, !tbaa !501
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3081
  %43 = load i8*, i8** %42, align 8, !dbg !3081, !tbaa !501
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3081
  %45 = load i8*, i8** %44, align 8, !dbg !3081, !tbaa !501
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !3081
  br label %147, !dbg !3082

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.93, i64 0, i64 0), i32 noundef 5) #34, !dbg !3083
  %49 = load i8*, i8** %4, align 8, !dbg !3083, !tbaa !501
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3083
  %51 = load i8*, i8** %50, align 8, !dbg !3083, !tbaa !501
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3083
  %53 = load i8*, i8** %52, align 8, !dbg !3083, !tbaa !501
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3083
  %55 = load i8*, i8** %54, align 8, !dbg !3083, !tbaa !501
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3083
  %57 = load i8*, i8** %56, align 8, !dbg !3083, !tbaa !501
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !3083
  br label %147, !dbg !3084

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.94, i64 0, i64 0), i32 noundef 5) #34, !dbg !3085
  %61 = load i8*, i8** %4, align 8, !dbg !3085, !tbaa !501
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3085
  %63 = load i8*, i8** %62, align 8, !dbg !3085, !tbaa !501
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3085
  %65 = load i8*, i8** %64, align 8, !dbg !3085, !tbaa !501
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3085
  %67 = load i8*, i8** %66, align 8, !dbg !3085, !tbaa !501
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3085
  %69 = load i8*, i8** %68, align 8, !dbg !3085, !tbaa !501
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3085
  %71 = load i8*, i8** %70, align 8, !dbg !3085, !tbaa !501
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !3085
  br label %147, !dbg !3086

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.95, i64 0, i64 0), i32 noundef 5) #34, !dbg !3087
  %75 = load i8*, i8** %4, align 8, !dbg !3087, !tbaa !501
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3087
  %77 = load i8*, i8** %76, align 8, !dbg !3087, !tbaa !501
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3087
  %79 = load i8*, i8** %78, align 8, !dbg !3087, !tbaa !501
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3087
  %81 = load i8*, i8** %80, align 8, !dbg !3087, !tbaa !501
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3087
  %83 = load i8*, i8** %82, align 8, !dbg !3087, !tbaa !501
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3087
  %85 = load i8*, i8** %84, align 8, !dbg !3087, !tbaa !501
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3087
  %87 = load i8*, i8** %86, align 8, !dbg !3087, !tbaa !501
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !3087
  br label %147, !dbg !3088

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !3089
  %91 = load i8*, i8** %4, align 8, !dbg !3089, !tbaa !501
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3089
  %93 = load i8*, i8** %92, align 8, !dbg !3089, !tbaa !501
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3089
  %95 = load i8*, i8** %94, align 8, !dbg !3089, !tbaa !501
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3089
  %97 = load i8*, i8** %96, align 8, !dbg !3089, !tbaa !501
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3089
  %99 = load i8*, i8** %98, align 8, !dbg !3089, !tbaa !501
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3089
  %101 = load i8*, i8** %100, align 8, !dbg !3089, !tbaa !501
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3089
  %103 = load i8*, i8** %102, align 8, !dbg !3089, !tbaa !501
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3089
  %105 = load i8*, i8** %104, align 8, !dbg !3089, !tbaa !501
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !3089
  br label %147, !dbg !3090

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.97, i64 0, i64 0), i32 noundef 5) #34, !dbg !3091
  %109 = load i8*, i8** %4, align 8, !dbg !3091, !tbaa !501
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3091
  %111 = load i8*, i8** %110, align 8, !dbg !3091, !tbaa !501
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3091
  %113 = load i8*, i8** %112, align 8, !dbg !3091, !tbaa !501
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3091
  %115 = load i8*, i8** %114, align 8, !dbg !3091, !tbaa !501
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3091
  %117 = load i8*, i8** %116, align 8, !dbg !3091, !tbaa !501
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3091
  %119 = load i8*, i8** %118, align 8, !dbg !3091, !tbaa !501
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3091
  %121 = load i8*, i8** %120, align 8, !dbg !3091, !tbaa !501
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3091
  %123 = load i8*, i8** %122, align 8, !dbg !3091, !tbaa !501
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3091
  %125 = load i8*, i8** %124, align 8, !dbg !3091, !tbaa !501
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !3091
  br label %147, !dbg !3092

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.98, i64 0, i64 0), i32 noundef 5) #34, !dbg !3093
  %129 = load i8*, i8** %4, align 8, !dbg !3093, !tbaa !501
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3093
  %131 = load i8*, i8** %130, align 8, !dbg !3093, !tbaa !501
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3093
  %133 = load i8*, i8** %132, align 8, !dbg !3093, !tbaa !501
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3093
  %135 = load i8*, i8** %134, align 8, !dbg !3093, !tbaa !501
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3093
  %137 = load i8*, i8** %136, align 8, !dbg !3093, !tbaa !501
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3093
  %139 = load i8*, i8** %138, align 8, !dbg !3093, !tbaa !501
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3093
  %141 = load i8*, i8** %140, align 8, !dbg !3093, !tbaa !501
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3093
  %143 = load i8*, i8** %142, align 8, !dbg !3093, !tbaa !501
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3093
  %145 = load i8*, i8** %144, align 8, !dbg !3093, !tbaa !501
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !3093
  br label %147, !dbg !3094

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3095
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3096 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3100, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %1, metadata !3101, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %2, metadata !3102, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %3, metadata !3103, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8** %4, metadata !3104, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 0, metadata !3105, metadata !DIExpression()), !dbg !3106
  br label %6, !dbg !3107

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3109
  call void @llvm.dbg.value(metadata i64 %7, metadata !3105, metadata !DIExpression()), !dbg !3106
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3110
  %9 = load i8*, i8** %8, align 8, !dbg !3110, !tbaa !501
  %10 = icmp eq i8* %9, null, !dbg !3112
  %11 = add i64 %7, 1, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %11, metadata !3105, metadata !DIExpression()), !dbg !3106
  br i1 %10, label %12, label %6, !dbg !3112, !llvm.loop !3114

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3116
  ret void, !dbg !3117
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3118 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3133, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %1, metadata !3134, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %2, metadata !3135, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %3, metadata !3136, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3137, metadata !DIExpression()), !dbg !3142
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3143
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3143
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3139, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 0, metadata !3138, metadata !DIExpression()), !dbg !3141
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3138, metadata !DIExpression()), !dbg !3141
  %11 = load i32, i32* %8, align 8, !dbg !3145
  %12 = icmp sgt i32 %11, -1, !dbg !3145
  br i1 %12, label %20, label %13, !dbg !3145

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3145
  store i32 %14, i32* %8, align 8, !dbg !3145
  %15 = icmp ult i32 %11, -7, !dbg !3145
  br i1 %15, label %16, label %20, !dbg !3145

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3145
  %18 = sext i32 %11 to i64, !dbg !3145
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3145
  br label %24, !dbg !3145

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3145
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3145
  store i8* %23, i8** %10, align 8, !dbg !3145
  br label %24, !dbg !3145

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3145
  %28 = load i8*, i8** %27, align 8, !dbg !3145
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3148
  store i8* %28, i8** %29, align 8, !dbg !3149, !tbaa !501
  %30 = icmp eq i8* %28, null, !dbg !3150
  br i1 %30, label %210, label %31, !dbg !3151

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 1, metadata !3138, metadata !DIExpression()), !dbg !3141
  %32 = icmp sgt i32 %25, -1, !dbg !3145
  br i1 %32, label %40, label %33, !dbg !3145

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3145
  store i32 %34, i32* %8, align 8, !dbg !3145
  %35 = icmp ult i32 %25, -7, !dbg !3145
  br i1 %35, label %36, label %40, !dbg !3145

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3145
  %38 = sext i32 %25 to i64, !dbg !3145
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3145
  br label %44, !dbg !3145

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3145
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3145
  store i8* %43, i8** %10, align 8, !dbg !3145
  br label %44, !dbg !3145

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3145
  %48 = load i8*, i8** %47, align 8, !dbg !3145
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3148
  store i8* %48, i8** %49, align 8, !dbg !3149, !tbaa !501
  %50 = icmp eq i8* %48, null, !dbg !3150
  br i1 %50, label %210, label %51, !dbg !3151

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 2, metadata !3138, metadata !DIExpression()), !dbg !3141
  %52 = icmp sgt i32 %45, -1, !dbg !3145
  br i1 %52, label %60, label %53, !dbg !3145

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3145
  store i32 %54, i32* %8, align 8, !dbg !3145
  %55 = icmp ult i32 %45, -7, !dbg !3145
  br i1 %55, label %56, label %60, !dbg !3145

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3145
  %58 = sext i32 %45 to i64, !dbg !3145
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3145
  br label %64, !dbg !3145

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3145
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3145
  store i8* %63, i8** %10, align 8, !dbg !3145
  br label %64, !dbg !3145

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3145
  %68 = load i8*, i8** %67, align 8, !dbg !3145
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3148
  store i8* %68, i8** %69, align 8, !dbg !3149, !tbaa !501
  %70 = icmp eq i8* %68, null, !dbg !3150
  br i1 %70, label %210, label %71, !dbg !3151

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 3, metadata !3138, metadata !DIExpression()), !dbg !3141
  %72 = icmp sgt i32 %65, -1, !dbg !3145
  br i1 %72, label %80, label %73, !dbg !3145

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3145
  store i32 %74, i32* %8, align 8, !dbg !3145
  %75 = icmp ult i32 %65, -7, !dbg !3145
  br i1 %75, label %76, label %80, !dbg !3145

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3145
  %78 = sext i32 %65 to i64, !dbg !3145
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3145
  br label %84, !dbg !3145

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3145
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3145
  store i8* %83, i8** %10, align 8, !dbg !3145
  br label %84, !dbg !3145

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3145
  %88 = load i8*, i8** %87, align 8, !dbg !3145
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3148
  store i8* %88, i8** %89, align 8, !dbg !3149, !tbaa !501
  %90 = icmp eq i8* %88, null, !dbg !3150
  br i1 %90, label %210, label %91, !dbg !3151

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 4, metadata !3138, metadata !DIExpression()), !dbg !3141
  %92 = icmp sgt i32 %85, -1, !dbg !3145
  br i1 %92, label %100, label %93, !dbg !3145

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3145
  store i32 %94, i32* %8, align 8, !dbg !3145
  %95 = icmp ult i32 %85, -7, !dbg !3145
  br i1 %95, label %96, label %100, !dbg !3145

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3145
  %98 = sext i32 %85 to i64, !dbg !3145
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3145
  br label %104, !dbg !3145

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3145
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3145
  store i8* %103, i8** %10, align 8, !dbg !3145
  br label %104, !dbg !3145

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3145
  %108 = load i8*, i8** %107, align 8, !dbg !3145
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3148
  store i8* %108, i8** %109, align 8, !dbg !3149, !tbaa !501
  %110 = icmp eq i8* %108, null, !dbg !3150
  br i1 %110, label %210, label %111, !dbg !3151

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 5, metadata !3138, metadata !DIExpression()), !dbg !3141
  %112 = icmp sgt i32 %105, -1, !dbg !3145
  br i1 %112, label %120, label %113, !dbg !3145

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3145
  store i32 %114, i32* %8, align 8, !dbg !3145
  %115 = icmp ult i32 %105, -7, !dbg !3145
  br i1 %115, label %116, label %120, !dbg !3145

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3145
  %118 = sext i32 %105 to i64, !dbg !3145
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3145
  br label %124, !dbg !3145

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3145
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3145
  store i8* %123, i8** %10, align 8, !dbg !3145
  br label %124, !dbg !3145

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3145
  %128 = load i8*, i8** %127, align 8, !dbg !3145
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3148
  store i8* %128, i8** %129, align 8, !dbg !3149, !tbaa !501
  %130 = icmp eq i8* %128, null, !dbg !3150
  br i1 %130, label %210, label %131, !dbg !3151

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 6, metadata !3138, metadata !DIExpression()), !dbg !3141
  %132 = icmp sgt i32 %125, -1, !dbg !3145
  br i1 %132, label %140, label %133, !dbg !3145

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3145
  store i32 %134, i32* %8, align 8, !dbg !3145
  %135 = icmp ult i32 %125, -7, !dbg !3145
  br i1 %135, label %136, label %140, !dbg !3145

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3145
  %138 = sext i32 %125 to i64, !dbg !3145
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3145
  br label %144, !dbg !3145

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3145
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3145
  store i8* %143, i8** %10, align 8, !dbg !3145
  br label %144, !dbg !3145

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3145
  %148 = load i8*, i8** %147, align 8, !dbg !3145
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3148
  store i8* %148, i8** %149, align 8, !dbg !3149, !tbaa !501
  %150 = icmp eq i8* %148, null, !dbg !3150
  br i1 %150, label %210, label %151, !dbg !3151

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 7, metadata !3138, metadata !DIExpression()), !dbg !3141
  %152 = icmp sgt i32 %145, -1, !dbg !3145
  br i1 %152, label %160, label %153, !dbg !3145

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3145
  store i32 %154, i32* %8, align 8, !dbg !3145
  %155 = icmp ult i32 %145, -7, !dbg !3145
  br i1 %155, label %156, label %160, !dbg !3145

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3145
  %158 = sext i32 %145 to i64, !dbg !3145
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3145
  br label %164, !dbg !3145

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3145
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3145
  store i8* %163, i8** %10, align 8, !dbg !3145
  br label %164, !dbg !3145

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3145
  %168 = load i8*, i8** %167, align 8, !dbg !3145
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3148
  store i8* %168, i8** %169, align 8, !dbg !3149, !tbaa !501
  %170 = icmp eq i8* %168, null, !dbg !3150
  br i1 %170, label %210, label %171, !dbg !3151

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 8, metadata !3138, metadata !DIExpression()), !dbg !3141
  %172 = icmp sgt i32 %165, -1, !dbg !3145
  br i1 %172, label %180, label %173, !dbg !3145

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3145
  store i32 %174, i32* %8, align 8, !dbg !3145
  %175 = icmp ult i32 %165, -7, !dbg !3145
  br i1 %175, label %176, label %180, !dbg !3145

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3145
  %178 = sext i32 %165 to i64, !dbg !3145
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3145
  br label %184, !dbg !3145

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3145
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3145
  store i8* %183, i8** %10, align 8, !dbg !3145
  br label %184, !dbg !3145

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3145
  %188 = load i8*, i8** %187, align 8, !dbg !3145
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3148
  store i8* %188, i8** %189, align 8, !dbg !3149, !tbaa !501
  %190 = icmp eq i8* %188, null, !dbg !3150
  br i1 %190, label %210, label %191, !dbg !3151

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 9, metadata !3138, metadata !DIExpression()), !dbg !3141
  %192 = icmp sgt i32 %185, -1, !dbg !3145
  br i1 %192, label %200, label %193, !dbg !3145

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3145
  store i32 %194, i32* %8, align 8, !dbg !3145
  %195 = icmp ult i32 %185, -7, !dbg !3145
  br i1 %195, label %196, label %200, !dbg !3145

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3145
  %198 = sext i32 %185 to i64, !dbg !3145
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3145
  br label %203, !dbg !3145

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3145
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3145
  store i8* %202, i8** %10, align 8, !dbg !3145
  br label %203, !dbg !3145

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3145
  %206 = load i8*, i8** %205, align 8, !dbg !3145
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3148
  store i8* %206, i8** %207, align 8, !dbg !3149, !tbaa !501
  %208 = icmp eq i8* %206, null, !dbg !3150
  %209 = select i1 %208, i64 9, i64 10, !dbg !3151
  br label %210, !dbg !3151

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3152
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3154
  ret void, !dbg !3154
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3155 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3159, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8* %2, metadata !3161, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8* %3, metadata !3162, metadata !DIExpression()), !dbg !3164
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3165
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3165
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3163, metadata !DIExpression()), !dbg !3166
  call void @llvm.va_start(i8* nonnull %7), !dbg !3167
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3168
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3168, !tbaa.struct !1101
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3168
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3168
  call void @llvm.va_end(i8* nonnull %7), !dbg !3169
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3170
  ret void, !dbg !3170
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3171 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3172, !tbaa !501
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3172
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.103, i64 0, i64 0), i32 noundef 5) #34, !dbg !3173
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.104, i64 0, i64 0)) #34, !dbg !3173
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #34, !dbg !3174
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.105, i64 0, i64 0)) #34, !dbg !3174
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #34, !dbg !3175
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #34, !dbg !3175
  ret void, !dbg !3176
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3182, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %1, metadata !3183, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %2, metadata !3184, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()) #34, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %1, metadata !3189, metadata !DIExpression()) #34, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %2, metadata !3190, metadata !DIExpression()) #34, !dbg !3191
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3193
  call void @llvm.dbg.value(metadata i8* %4, metadata !3194, metadata !DIExpression()) #34, !dbg !3199
  %5 = icmp eq i8* %4, null, !dbg !3201
  br i1 %5, label %6, label %7, !dbg !3203

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3204
  unreachable, !dbg !3204

7:                                                ; preds = %3
  ret i8* %4, !dbg !3205
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3187 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %1, metadata !3189, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %2, metadata !3190, metadata !DIExpression()), !dbg !3206
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %4, metadata !3194, metadata !DIExpression()) #34, !dbg !3208
  %5 = icmp eq i8* %4, null, !dbg !3210
  br i1 %5, label %6, label %7, !dbg !3211

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3212
  unreachable, !dbg !3212

7:                                                ; preds = %3
  ret i8* %4, !dbg !3213
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3214 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3218, metadata !DIExpression()), !dbg !3219
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %2, metadata !3194, metadata !DIExpression()) #34, !dbg !3221
  %3 = icmp eq i8* %2, null, !dbg !3223
  br i1 %3, label %4, label %5, !dbg !3224

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3225
  unreachable, !dbg !3225

5:                                                ; preds = %1
  ret i8* %2, !dbg !3226
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3227 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3231, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %0, metadata !3233, metadata !DIExpression()) #34, !dbg !3237
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %2, metadata !3194, metadata !DIExpression()) #34, !dbg !3240
  %3 = icmp eq i8* %2, null, !dbg !3242
  br i1 %3, label %4, label %5, !dbg !3243

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3244
  unreachable, !dbg !3244

5:                                                ; preds = %1
  ret i8* %2, !dbg !3245
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3246 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3250, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %0, metadata !3218, metadata !DIExpression()) #34, !dbg !3252
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %2, metadata !3194, metadata !DIExpression()) #34, !dbg !3255
  %3 = icmp eq i8* %2, null, !dbg !3257
  br i1 %3, label %4, label %5, !dbg !3258

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3259
  unreachable, !dbg !3259

5:                                                ; preds = %1
  ret i8* %2, !dbg !3260
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3261 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8* %0, metadata !3268, metadata !DIExpression()) #34, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()) #34, !dbg !3273
  %3 = icmp eq i64 %1, 0, !dbg !3275
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3275
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %5, metadata !3194, metadata !DIExpression()) #34, !dbg !3277
  %6 = icmp eq i8* %5, null, !dbg !3279
  br i1 %6, label %7, label %8, !dbg !3280

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3281
  unreachable, !dbg !3281

8:                                                ; preds = %2
  ret i8* %5, !dbg !3282
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3283 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3287, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %0, metadata !3290, metadata !DIExpression()) #34, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %1, metadata !3293, metadata !DIExpression()) #34, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %0, metadata !3268, metadata !DIExpression()) #34, !dbg !3296
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()) #34, !dbg !3296
  %3 = icmp eq i64 %1, 0, !dbg !3298
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3298
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %5, metadata !3194, metadata !DIExpression()) #34, !dbg !3300
  %6 = icmp eq i8* %5, null, !dbg !3302
  br i1 %6, label %7, label %8, !dbg !3303

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3304
  unreachable, !dbg !3304

8:                                                ; preds = %2
  ret i8* %5, !dbg !3305
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3306 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3310, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3311, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %2, metadata !3312, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8* %0, metadata !3314, metadata !DIExpression()) #34, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()) #34, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %2, metadata !3318, metadata !DIExpression()) #34, !dbg !3319
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3321
  call void @llvm.dbg.value(metadata i8* %4, metadata !3194, metadata !DIExpression()) #34, !dbg !3322
  %5 = icmp eq i8* %4, null, !dbg !3324
  br i1 %5, label %6, label %7, !dbg !3325

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3326
  unreachable, !dbg !3326

7:                                                ; preds = %3
  ret i8* %4, !dbg !3327
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3328 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3332, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %1, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* null, metadata !3186, metadata !DIExpression()) #34, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %0, metadata !3189, metadata !DIExpression()) #34, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %1, metadata !3190, metadata !DIExpression()) #34, !dbg !3335
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %3, metadata !3194, metadata !DIExpression()) #34, !dbg !3338
  %4 = icmp eq i8* %3, null, !dbg !3340
  br i1 %4, label %5, label %6, !dbg !3341

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3342
  unreachable, !dbg !3342

6:                                                ; preds = %2
  ret i8* %3, !dbg !3343
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3344 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3346, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %1, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* null, metadata !3310, metadata !DIExpression()) #34, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %0, metadata !3311, metadata !DIExpression()) #34, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()) #34, !dbg !3349
  call void @llvm.dbg.value(metadata i8* null, metadata !3314, metadata !DIExpression()) #34, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %0, metadata !3317, metadata !DIExpression()) #34, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %1, metadata !3318, metadata !DIExpression()) #34, !dbg !3351
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %3, metadata !3194, metadata !DIExpression()) #34, !dbg !3354
  %4 = icmp eq i8* %3, null, !dbg !3356
  br i1 %4, label %5, label %6, !dbg !3357

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3358
  unreachable, !dbg !3358

6:                                                ; preds = %2
  ret i8* %3, !dbg !3359
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3360 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3364, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64* %1, metadata !3365, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %0, metadata !430, metadata !DIExpression()) #34, !dbg !3367
  call void @llvm.dbg.value(metadata i64* %1, metadata !431, metadata !DIExpression()) #34, !dbg !3367
  call void @llvm.dbg.value(metadata i64 1, metadata !432, metadata !DIExpression()) #34, !dbg !3367
  %3 = load i64, i64* %1, align 8, !dbg !3369, !tbaa !2432
  call void @llvm.dbg.value(metadata i64 %3, metadata !433, metadata !DIExpression()) #34, !dbg !3367
  %4 = icmp eq i8* %0, null, !dbg !3370
  br i1 %4, label %5, label %8, !dbg !3372

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3373
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3376
  br label %15, !dbg !3376

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3377
  %10 = add nuw i64 %9, 1, !dbg !3377
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !3377
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3377
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %13, metadata !433, metadata !DIExpression()) #34, !dbg !3367
  br i1 %12, label %14, label %15, !dbg !3380

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !3381
  unreachable, !dbg !3381

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3367
  call void @llvm.dbg.value(metadata i64 %16, metadata !433, metadata !DIExpression()) #34, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()) #34, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %16, metadata !3189, metadata !DIExpression()) #34, !dbg !3382
  call void @llvm.dbg.value(metadata i64 1, metadata !3190, metadata !DIExpression()) #34, !dbg !3382
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !3384
  call void @llvm.dbg.value(metadata i8* %17, metadata !3194, metadata !DIExpression()) #34, !dbg !3385
  %18 = icmp eq i8* %17, null, !dbg !3387
  br i1 %18, label %19, label %20, !dbg !3388

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !3389
  unreachable, !dbg !3389

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !430, metadata !DIExpression()) #34, !dbg !3367
  store i64 %16, i64* %1, align 8, !dbg !3390, !tbaa !2432
  ret i8* %17, !dbg !3391
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !425 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !430, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64* %1, metadata !431, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %2, metadata !432, metadata !DIExpression()), !dbg !3392
  %4 = load i64, i64* %1, align 8, !dbg !3393, !tbaa !2432
  call void @llvm.dbg.value(metadata i64 %4, metadata !433, metadata !DIExpression()), !dbg !3392
  %5 = icmp eq i8* %0, null, !dbg !3394
  br i1 %5, label %6, label %13, !dbg !3395

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3396
  br i1 %7, label %8, label %20, !dbg !3397

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %9, metadata !433, metadata !DIExpression()), !dbg !3392
  %10 = icmp ugt i64 %2, 128, !dbg !3400
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %12, metadata !433, metadata !DIExpression()), !dbg !3392
  br label %20, !dbg !3402

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3403
  %15 = add nuw i64 %14, 1, !dbg !3403
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3403
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3403
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %18, metadata !433, metadata !DIExpression()), !dbg !3392
  br i1 %17, label %19, label %20, !dbg !3404

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !3405
  unreachable, !dbg !3405

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3392
  call void @llvm.dbg.value(metadata i64 %21, metadata !433, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()) #34, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %21, metadata !3189, metadata !DIExpression()) #34, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %2, metadata !3190, metadata !DIExpression()) #34, !dbg !3406
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !3408
  call void @llvm.dbg.value(metadata i8* %22, metadata !3194, metadata !DIExpression()) #34, !dbg !3409
  %23 = icmp eq i8* %22, null, !dbg !3411
  br i1 %23, label %24, label %25, !dbg !3412

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !3413
  unreachable, !dbg !3413

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !430, metadata !DIExpression()), !dbg !3392
  store i64 %21, i64* %1, align 8, !dbg !3414, !tbaa !2432
  ret i8* %22, !dbg !3415
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !437 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64* %1, metadata !446, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %2, metadata !447, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %3, metadata !448, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %4, metadata !449, metadata !DIExpression()), !dbg !3416
  %6 = load i64, i64* %1, align 8, !dbg !3417, !tbaa !2432
  call void @llvm.dbg.value(metadata i64 %6, metadata !450, metadata !DIExpression()), !dbg !3416
  %7 = ashr i64 %6, 1, !dbg !3418
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3418
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3418
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %10, metadata !451, metadata !DIExpression()), !dbg !3416
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %11, metadata !451, metadata !DIExpression()), !dbg !3416
  %12 = icmp sgt i64 %3, -1, !dbg !3421
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3423
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %15, metadata !451, metadata !DIExpression()), !dbg !3416
  %16 = icmp slt i64 %4, 0, !dbg !3424
  br i1 %16, label %17, label %30, !dbg !3424

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3424
  br i1 %18, label %19, label %24, !dbg !3424

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3424
  %21 = udiv i64 9223372036854775807, %20, !dbg !3424
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3424
  br i1 %23, label %46, label %43, !dbg !3424

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3424
  br i1 %25, label %43, label %26, !dbg !3424

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3424
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3424
  %29 = icmp ult i64 %28, %15, !dbg !3424
  br i1 %29, label %46, label %43, !dbg !3424

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3424
  br i1 %31, label %43, label %32, !dbg !3424

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3424
  br i1 %33, label %34, label %40, !dbg !3424

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3424
  br i1 %35, label %43, label %36, !dbg !3424

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3424
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3424
  %39 = icmp ult i64 %38, %4, !dbg !3424
  br i1 %39, label %46, label %43, !dbg !3424

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3424
  %42 = icmp ult i64 %41, %15, !dbg !3424
  br i1 %42, label %46, label %43, !dbg !3424

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !452, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3416
  %44 = mul i64 %15, %4, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %44, metadata !452, metadata !DIExpression()), !dbg !3416
  %45 = icmp slt i64 %44, 128, !dbg !3424
  br i1 %45, label %46, label %52, !dbg !3424

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !453, metadata !DIExpression()), !dbg !3416
  %48 = sdiv i64 %47, %4, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %48, metadata !451, metadata !DIExpression()), !dbg !3416
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %51, metadata !452, metadata !DIExpression()), !dbg !3416
  br label %52, !dbg !3429

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3416
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3416
  call void @llvm.dbg.value(metadata i64 %54, metadata !452, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %53, metadata !451, metadata !DIExpression()), !dbg !3416
  %55 = icmp eq i8* %0, null, !dbg !3430
  br i1 %55, label %56, label %57, !dbg !3432

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3433, !tbaa !2432
  br label %57, !dbg !3434

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3435
  %59 = icmp slt i64 %58, %2, !dbg !3437
  br i1 %59, label %60, label %97, !dbg !3438

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3439
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3439
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3439
  call void @llvm.dbg.value(metadata i64 %63, metadata !451, metadata !DIExpression()), !dbg !3416
  br i1 %62, label %96, label %64, !dbg !3440

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3441
  br i1 %66, label %96, label %67, !dbg !3441

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3442

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3442
  br i1 %69, label %70, label %75, !dbg !3442

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3442
  %72 = udiv i64 9223372036854775807, %71, !dbg !3442
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3442
  br i1 %74, label %96, label %94, !dbg !3442

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3442
  br i1 %76, label %94, label %77, !dbg !3442

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3442
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3442
  %80 = icmp ult i64 %79, %63, !dbg !3442
  br i1 %80, label %96, label %94, !dbg !3442

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3442
  br i1 %82, label %94, label %83, !dbg !3442

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3442
  br i1 %84, label %85, label %91, !dbg !3442

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3442
  br i1 %86, label %94, label %87, !dbg !3442

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3442
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3442
  %90 = icmp ult i64 %89, %4, !dbg !3442
  br i1 %90, label %96, label %94, !dbg !3442

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3442
  %93 = icmp ult i64 %92, %63, !dbg !3442
  br i1 %93, label %96, label %94, !dbg !3442

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !452, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3416
  %95 = mul i64 %63, %4, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %95, metadata !452, metadata !DIExpression()), !dbg !3416
  br label %97, !dbg !3443

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !3444
  unreachable, !dbg !3444

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3416
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3416
  call void @llvm.dbg.value(metadata i64 %99, metadata !452, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %98, metadata !451, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #34, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %99, metadata !3266, metadata !DIExpression()) #34, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %0, metadata !3268, metadata !DIExpression()) #34, !dbg !3447
  call void @llvm.dbg.value(metadata i64 %99, metadata !3272, metadata !DIExpression()) #34, !dbg !3447
  %100 = icmp eq i64 %99, 0, !dbg !3449
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3449
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !3450
  call void @llvm.dbg.value(metadata i8* %102, metadata !3194, metadata !DIExpression()) #34, !dbg !3451
  %103 = icmp eq i8* %102, null, !dbg !3453
  br i1 %103, label %104, label %105, !dbg !3454

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !3455
  unreachable, !dbg !3455

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !445, metadata !DIExpression()), !dbg !3416
  store i64 %98, i64* %1, align 8, !dbg !3456, !tbaa !2432
  ret i8* %102, !dbg !3457
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3458 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3460, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %0, metadata !3462, metadata !DIExpression()) #34, !dbg !3466
  call void @llvm.dbg.value(metadata i64 1, metadata !3465, metadata !DIExpression()) #34, !dbg !3466
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %2, metadata !3194, metadata !DIExpression()) #34, !dbg !3469
  %3 = icmp eq i8* %2, null, !dbg !3471
  br i1 %3, label %4, label %5, !dbg !3472

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3473
  unreachable, !dbg !3473

5:                                                ; preds = %1
  ret i8* %2, !dbg !3474
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3463 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3462, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %1, metadata !3465, metadata !DIExpression()), !dbg !3475
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3476
  call void @llvm.dbg.value(metadata i8* %3, metadata !3194, metadata !DIExpression()) #34, !dbg !3477
  %4 = icmp eq i8* %3, null, !dbg !3479
  br i1 %4, label %5, label %6, !dbg !3480

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3481
  unreachable, !dbg !3481

6:                                                ; preds = %2
  ret i8* %3, !dbg !3482
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3483 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3485, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %0, metadata !3487, metadata !DIExpression()) #34, !dbg !3491
  call void @llvm.dbg.value(metadata i64 1, metadata !3490, metadata !DIExpression()) #34, !dbg !3491
  call void @llvm.dbg.value(metadata i64 %0, metadata !3493, metadata !DIExpression()) #34, !dbg !3497
  call void @llvm.dbg.value(metadata i64 1, metadata !3496, metadata !DIExpression()) #34, !dbg !3497
  call void @llvm.dbg.value(metadata i64 %0, metadata !3493, metadata !DIExpression()) #34, !dbg !3497
  call void @llvm.dbg.value(metadata i64 1, metadata !3496, metadata !DIExpression()) #34, !dbg !3497
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %2, metadata !3194, metadata !DIExpression()) #34, !dbg !3500
  %3 = icmp eq i8* %2, null, !dbg !3502
  br i1 %3, label %4, label %5, !dbg !3503

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3504
  unreachable, !dbg !3504

5:                                                ; preds = %1
  ret i8* %2, !dbg !3505
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3488 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3487, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %1, metadata !3490, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %0, metadata !3493, metadata !DIExpression()) #34, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %1, metadata !3496, metadata !DIExpression()) #34, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %0, metadata !3493, metadata !DIExpression()) #34, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %1, metadata !3496, metadata !DIExpression()) #34, !dbg !3507
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %3, metadata !3194, metadata !DIExpression()) #34, !dbg !3510
  %4 = icmp eq i8* %3, null, !dbg !3512
  br i1 %4, label %5, label %6, !dbg !3513

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3514
  unreachable, !dbg !3514

6:                                                ; preds = %2
  ret i8* %3, !dbg !3515
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3516 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3520, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %1, metadata !3521, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()) #34, !dbg !3523
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %3, metadata !3194, metadata !DIExpression()) #34, !dbg !3526
  %4 = icmp eq i8* %3, null, !dbg !3528
  br i1 %4, label %5, label %6, !dbg !3529

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3530
  unreachable, !dbg !3530

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3531, metadata !DIExpression()) #34, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %0, metadata !3534, metadata !DIExpression()) #34, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %1, metadata !3535, metadata !DIExpression()) #34, !dbg !3536
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3538
  ret i8* %3, !dbg !3539
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3540 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3231, metadata !DIExpression()) #34, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %1, metadata !3233, metadata !DIExpression()) #34, !dbg !3549
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3551
  call void @llvm.dbg.value(metadata i8* %3, metadata !3194, metadata !DIExpression()) #34, !dbg !3552
  %4 = icmp eq i8* %3, null, !dbg !3554
  br i1 %4, label %5, label %6, !dbg !3555

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3556
  unreachable, !dbg !3556

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3531, metadata !DIExpression()) #34, !dbg !3557
  call void @llvm.dbg.value(metadata i8* %0, metadata !3534, metadata !DIExpression()) #34, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %1, metadata !3535, metadata !DIExpression()) #34, !dbg !3557
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3559
  ret i8* %3, !dbg !3560
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3561 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3565, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %1, metadata !3566, metadata !DIExpression()), !dbg !3568
  %3 = add nsw i64 %1, 1, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %3, metadata !3231, metadata !DIExpression()) #34, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %3, metadata !3233, metadata !DIExpression()) #34, !dbg !3572
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %4, metadata !3194, metadata !DIExpression()) #34, !dbg !3575
  %5 = icmp eq i8* %4, null, !dbg !3577
  br i1 %5, label %6, label %7, !dbg !3578

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3579
  unreachable, !dbg !3579

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3567, metadata !DIExpression()), !dbg !3568
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3580
  store i8 0, i8* %8, align 1, !dbg !3581, !tbaa !596
  call void @llvm.dbg.value(metadata i8* %4, metadata !3531, metadata !DIExpression()) #34, !dbg !3582
  call void @llvm.dbg.value(metadata i8* %0, metadata !3534, metadata !DIExpression()) #34, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %1, metadata !3535, metadata !DIExpression()) #34, !dbg !3582
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3584
  ret i8* %4, !dbg !3585
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3586 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3588, metadata !DIExpression()), !dbg !3589
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !3590
  %3 = add i64 %2, 1, !dbg !3591
  call void @llvm.dbg.value(metadata i8* %0, metadata !3520, metadata !DIExpression()) #34, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %3, metadata !3521, metadata !DIExpression()) #34, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %3, metadata !3218, metadata !DIExpression()) #34, !dbg !3594
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %4, metadata !3194, metadata !DIExpression()) #34, !dbg !3597
  %5 = icmp eq i8* %4, null, !dbg !3599
  br i1 %5, label %6, label %7, !dbg !3600

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3601
  unreachable, !dbg !3601

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3531, metadata !DIExpression()) #34, !dbg !3602
  call void @llvm.dbg.value(metadata i8* %0, metadata !3534, metadata !DIExpression()) #34, !dbg !3602
  call void @llvm.dbg.value(metadata i64 %3, metadata !3535, metadata !DIExpression()) #34, !dbg !3602
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !3604
  ret i8* %4, !dbg !3605
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3606 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3611, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %1, metadata !3608, metadata !DIExpression()), !dbg !3612
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.119, i64 0, i64 0), i32 noundef 5) #34, !dbg !3611
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* noundef %2) #34, !dbg !3611
  %3 = icmp eq i32 %1, 0, !dbg !3611
  tail call void @llvm.assume(i1 %3), !dbg !3611
  tail call void @abort() #36, !dbg !3613
  unreachable, !dbg !3613
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3614 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3652, metadata !DIExpression()), !dbg !3657
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !3658
  call void @llvm.dbg.value(metadata i1 undef, metadata !3653, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3657
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3659, metadata !DIExpression()), !dbg !3662
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3664
  %4 = load i32, i32* %3, align 8, !dbg !3664, !tbaa !3665
  %5 = and i32 %4, 32, !dbg !3666
  %6 = icmp eq i32 %5, 0, !dbg !3666
  call void @llvm.dbg.value(metadata i1 %6, metadata !3655, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3657
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !3667
  %8 = icmp eq i32 %7, 0, !dbg !3668
  call void @llvm.dbg.value(metadata i1 %8, metadata !3656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3657
  br i1 %6, label %9, label %19, !dbg !3669

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3671
  call void @llvm.dbg.value(metadata i1 %10, metadata !3653, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3657
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3672
  %12 = xor i1 %8, true, !dbg !3672
  %13 = sext i1 %12 to i32, !dbg !3672
  br i1 %11, label %22, label %14, !dbg !3672

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !3673
  %16 = load i32, i32* %15, align 4, !dbg !3673, !tbaa !587
  %17 = icmp ne i32 %16, 9, !dbg !3674
  %18 = sext i1 %17 to i32, !dbg !3675
  br label %22, !dbg !3675

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3676

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !3678
  store i32 0, i32* %21, align 4, !dbg !3680, !tbaa !587
  br label %22, !dbg !3678

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3657
  ret i32 %23, !dbg !3681
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3682 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3720, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i32 0, metadata !3721, metadata !DIExpression()), !dbg !3724
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3725
  call void @llvm.dbg.value(metadata i32 %2, metadata !3722, metadata !DIExpression()), !dbg !3724
  %3 = icmp slt i32 %2, 0, !dbg !3726
  br i1 %3, label %4, label %6, !dbg !3728

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3729
  br label %24, !dbg !3730

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3731
  %8 = icmp eq i32 %7, 0, !dbg !3731
  br i1 %8, label %13, label %9, !dbg !3733

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3734
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !3735
  %12 = icmp eq i64 %11, -1, !dbg !3736
  br i1 %12, label %16, label %13, !dbg !3737

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3738
  %15 = icmp eq i32 %14, 0, !dbg !3738
  br i1 %15, label %16, label %18, !dbg !3739

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3721, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i32 0, metadata !3723, metadata !DIExpression()), !dbg !3724
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3740
  call void @llvm.dbg.value(metadata i32 %21, metadata !3723, metadata !DIExpression()), !dbg !3724
  br label %24, !dbg !3741

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !3742
  %20 = load i32, i32* %19, align 4, !dbg !3742, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %20, metadata !3721, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i32 0, metadata !3723, metadata !DIExpression()), !dbg !3724
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3740
  call void @llvm.dbg.value(metadata i32 %21, metadata !3723, metadata !DIExpression()), !dbg !3724
  %22 = icmp eq i32 %20, 0, !dbg !3743
  br i1 %22, label %24, label %23, !dbg !3741

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3745, !tbaa !587
  call void @llvm.dbg.value(metadata i32 -1, metadata !3723, metadata !DIExpression()), !dbg !3724
  br label %24, !dbg !3747

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3724
  ret i32 %25, !dbg !3748
}

; Function Attrs: nofree nounwind
declare !dbg !3749 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3750 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3751 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !3754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3756, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %1, metadata !3757, metadata !DIExpression()), !dbg !3762
  %3 = icmp ult i32 %0, 3, !dbg !3763
  br i1 %3, label %4, label %9, !dbg !3763

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #34, !dbg !3764
  call void @llvm.dbg.value(metadata i32 %5, metadata !3758, metadata !DIExpression()), !dbg !3765
  %6 = tail call i32* @__errno_location() #37, !dbg !3766
  %7 = load i32, i32* %6, align 4, !dbg !3766, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %7, metadata !3761, metadata !DIExpression()), !dbg !3765
  %8 = tail call i32 @close(i32 noundef %0) #34, !dbg !3767
  store i32 %7, i32* %6, align 4, !dbg !3768, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %5, metadata !3756, metadata !DIExpression()), !dbg !3762
  br label %9, !dbg !3769

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !3756, metadata !DIExpression()), !dbg !3762
  ret i32 %10, !dbg !3770
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !3771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 %1, metadata !3774, metadata !DIExpression()), !dbg !3775
  %3 = and i32 %1, 524288, !dbg !3776
  %4 = icmp eq i32 %3, 0, !dbg !3777
  %5 = select i1 %4, i32 0, i32 1030, !dbg !3777
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #34, !dbg !3778
  ret i32 %6, !dbg !3779
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3780 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3818, metadata !DIExpression()), !dbg !3819
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3820
  br i1 %2, label %6, label %3, !dbg !3822

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3823
  %5 = icmp eq i32 %4, 0, !dbg !3823
  br i1 %5, label %6, label %8, !dbg !3824

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3825
  br label %17, !dbg !3826

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3827, metadata !DIExpression()) #34, !dbg !3832
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3834
  %10 = load i32, i32* %9, align 8, !dbg !3834, !tbaa !3665
  %11 = and i32 %10, 256, !dbg !3836
  %12 = icmp eq i32 %11, 0, !dbg !3836
  br i1 %12, label %15, label %13, !dbg !3837

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !3838
  br label %15, !dbg !3838

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3839
  br label %17, !dbg !3840

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3819
  ret i32 %18, !dbg !3841
}

; Function Attrs: nofree nounwind
declare !dbg !3842 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3843 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3882, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %1, metadata !3883, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i32 %2, metadata !3884, metadata !DIExpression()), !dbg !3888
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3889
  %5 = load i8*, i8** %4, align 8, !dbg !3889, !tbaa !3890
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3891
  %7 = load i8*, i8** %6, align 8, !dbg !3891, !tbaa !3892
  %8 = icmp eq i8* %5, %7, !dbg !3893
  br i1 %8, label %9, label %28, !dbg !3894

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3895
  %11 = load i8*, i8** %10, align 8, !dbg !3895, !tbaa !1214
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3896
  %13 = load i8*, i8** %12, align 8, !dbg !3896, !tbaa !3897
  %14 = icmp eq i8* %11, %13, !dbg !3898
  br i1 %14, label %15, label %28, !dbg !3899

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3900
  %17 = load i8*, i8** %16, align 8, !dbg !3900, !tbaa !3901
  %18 = icmp eq i8* %17, null, !dbg !3902
  br i1 %18, label %19, label %28, !dbg !3903

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3904
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !3905
  call void @llvm.dbg.value(metadata i64 %21, metadata !3885, metadata !DIExpression()), !dbg !3906
  %22 = icmp eq i64 %21, -1, !dbg !3907
  br i1 %22, label %30, label %23, !dbg !3909

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3910
  %25 = load i32, i32* %24, align 8, !dbg !3911, !tbaa !3665
  %26 = and i32 %25, -17, !dbg !3911
  store i32 %26, i32* %24, align 8, !dbg !3911, !tbaa !3665
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3912
  store i64 %21, i64* %27, align 8, !dbg !3913, !tbaa !3914
  br label %30, !dbg !3915

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3916
  br label %30, !dbg !3917

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3888
  ret i32 %31, !dbg !3918
}

; Function Attrs: nofree nounwind
declare !dbg !3919 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3922 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3927, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i8* %1, metadata !3928, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 %2, metadata !3929, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3930, metadata !DIExpression()), !dbg !3932
  %5 = icmp eq i8* %1, null, !dbg !3933
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3935
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %1, !dbg !3935
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3935
  call void @llvm.dbg.value(metadata i64 %8, metadata !3929, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i8* %7, metadata !3928, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32* %6, metadata !3927, metadata !DIExpression()), !dbg !3932
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3936
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3938
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3930, metadata !DIExpression()), !dbg !3932
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %11, metadata !3931, metadata !DIExpression()), !dbg !3932
  %12 = icmp ult i64 %11, -3, !dbg !3940
  br i1 %12, label %13, label %18, !dbg !3942

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !3943
  %15 = icmp eq i32 %14, 0, !dbg !3943
  br i1 %15, label %16, label %30, !dbg !3944

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3945, metadata !DIExpression()) #34, !dbg !3950
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3952, metadata !DIExpression()) #34, !dbg !3957
  call void @llvm.dbg.value(metadata i32 0, metadata !3955, metadata !DIExpression()) #34, !dbg !3957
  call void @llvm.dbg.value(metadata i64 8, metadata !3956, metadata !DIExpression()) #34, !dbg !3957
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3959
  store i64 0, i64* %17, align 1, !dbg !3959
  br label %30, !dbg !3960

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3961
  br i1 %19, label %20, label %21, !dbg !3963

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !3964
  unreachable, !dbg !3964

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3965

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !3967
  br i1 %24, label %30, label %25, !dbg !3968

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3969
  br i1 %26, label %30, label %27, !dbg !3972

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3973, !tbaa !596
  %29 = zext i8 %28 to i32, !dbg !3974
  store i32 %29, i32* %6, align 4, !dbg !3975, !tbaa !587
  br label %30, !dbg !3976

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3932
  ret i64 %31, !dbg !3977
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3978 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_pipe2(i32* noundef nonnull %0, i32 noundef %1) local_unnamed_addr #12 !dbg !373 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !380, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 %1, metadata !381, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 undef, metadata !382, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3984
  %3 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !3985
  %4 = bitcast i32* %0 to <2 x i32>*, !dbg !3986
  %5 = load <2 x i32>, <2 x i32>* %4, align 4, !dbg !3986, !tbaa !587
  call void @llvm.dbg.value(metadata i32 undef, metadata !382, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !3984
  %6 = load i32, i32* @rpl_pipe2.have_pipe2_really, align 4, !dbg !3987, !tbaa !587
  %7 = icmp sgt i32 %6, -1, !dbg !3988
  br i1 %7, label %8, label %17, !dbg !3989

8:                                                ; preds = %2
  %9 = tail call i32 @pipe2(i32* noundef nonnull %0, i32 noundef %1) #34, !dbg !3990
  call void @llvm.dbg.value(metadata i32 %9, metadata !384, metadata !DIExpression()), !dbg !3991
  %10 = icmp slt i32 %9, 0, !dbg !3992
  br i1 %10, label %11, label %15, !dbg !3994

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #37, !dbg !3995
  %13 = load i32, i32* %12, align 4, !dbg !3995, !tbaa !587
  %14 = icmp eq i32 %13, 38, !dbg !3996
  br i1 %14, label %16, label %15, !dbg !3997

15:                                               ; preds = %8, %11
  store i32 1, i32* @rpl_pipe2.have_pipe2_really, align 4, !dbg !3991, !tbaa !587
  br label %75

16:                                               ; preds = %11
  store i32 -1, i32* @rpl_pipe2.have_pipe2_really, align 4, !dbg !3991, !tbaa !587
  br label %17

17:                                               ; preds = %16, %2
  %18 = and i32 %1, -526337, !dbg !3998
  %19 = icmp eq i32 %18, 0, !dbg !4000
  br i1 %19, label %22, label %20, !dbg !4001

20:                                               ; preds = %17
  %21 = tail call i32* @__errno_location() #37, !dbg !4002
  store i32 22, i32* %21, align 4, !dbg !4004, !tbaa !587
  br label %75, !dbg !4005

22:                                               ; preds = %17
  %23 = tail call i32 @pipe(i32* noundef nonnull %0) #34, !dbg !4006
  %24 = icmp slt i32 %23, 0, !dbg !4008
  br i1 %24, label %75, label %25, !dbg !4009

25:                                               ; preds = %22
  %26 = and i32 %1, 2048, !dbg !4010
  %27 = icmp eq i32 %26, 0, !dbg !4010
  br i1 %27, label %46, label %28, !dbg !4011

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4, !dbg !4012, !tbaa !587
  %30 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %29, i32 noundef 3, i32 noundef 0) #34, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %30, metadata !388, metadata !DIExpression()), !dbg !4015
  %31 = icmp slt i32 %30, 0, !dbg !4016
  br i1 %31, label %67, label %32, !dbg !4017

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4, !dbg !4018, !tbaa !587
  %34 = or i32 %30, 2048, !dbg !4019
  %35 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %33, i32 noundef 4, i32 noundef %34) #34, !dbg !4020
  %36 = icmp eq i32 %35, -1, !dbg !4021
  br i1 %36, label %67, label %37, !dbg !4022

37:                                               ; preds = %32
  %38 = load i32, i32* %0, align 4, !dbg !4023, !tbaa !587
  %39 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %38, i32 noundef 3, i32 noundef 0) #34, !dbg !4024
  call void @llvm.dbg.value(metadata i32 %39, metadata !388, metadata !DIExpression()), !dbg !4015
  %40 = icmp slt i32 %39, 0, !dbg !4025
  br i1 %40, label %67, label %41, !dbg !4026

41:                                               ; preds = %37
  %42 = load i32, i32* %0, align 4, !dbg !4027, !tbaa !587
  %43 = or i32 %39, 2048, !dbg !4028
  %44 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %42, i32 noundef 4, i32 noundef %43) #34, !dbg !4029
  %45 = icmp eq i32 %44, -1, !dbg !4030
  br i1 %45, label %67, label %46, !dbg !4031

46:                                               ; preds = %41, %25
  %47 = and i32 %1, 524288, !dbg !4032
  %48 = icmp eq i32 %47, 0, !dbg !4032
  br i1 %48, label %75, label %49, !dbg !4033

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4, !dbg !4034, !tbaa !587
  %51 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %50, i32 noundef 1, i32 noundef 0) #34, !dbg !4036
  call void @llvm.dbg.value(metadata i32 %51, metadata !391, metadata !DIExpression()), !dbg !4037
  %52 = icmp slt i32 %51, 0, !dbg !4038
  br i1 %52, label %67, label %53, !dbg !4039

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4, !dbg !4040, !tbaa !587
  %55 = or i32 %51, 1, !dbg !4041
  %56 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %54, i32 noundef 2, i32 noundef %55) #34, !dbg !4042
  %57 = icmp eq i32 %56, -1, !dbg !4043
  br i1 %57, label %67, label %58, !dbg !4044

58:                                               ; preds = %53
  %59 = load i32, i32* %0, align 4, !dbg !4045, !tbaa !587
  %60 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %59, i32 noundef 1, i32 noundef 0) #34, !dbg !4046
  call void @llvm.dbg.value(metadata i32 %60, metadata !391, metadata !DIExpression()), !dbg !4037
  %61 = icmp slt i32 %60, 0, !dbg !4047
  br i1 %61, label %67, label %62, !dbg !4048

62:                                               ; preds = %58
  %63 = load i32, i32* %0, align 4, !dbg !4049, !tbaa !587
  %64 = or i32 %60, 1, !dbg !4050
  %65 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %63, i32 noundef 2, i32 noundef %64) #34, !dbg !4051
  %66 = icmp eq i32 %65, -1, !dbg !4052
  br i1 %66, label %67, label %75, !dbg !4053

67:                                               ; preds = %62, %49, %53, %58, %41, %28, %32, %37
  call void @llvm.dbg.label(metadata !396), !dbg !4054
  %68 = tail call i32* @__errno_location() #37, !dbg !4055
  %69 = load i32, i32* %68, align 4, !dbg !4055, !tbaa !587
  call void @llvm.dbg.value(metadata i32 %69, metadata !394, metadata !DIExpression()), !dbg !4056
  %70 = load i32, i32* %0, align 4, !dbg !4057, !tbaa !587
  %71 = tail call i32 @close(i32 noundef %70) #34, !dbg !4058
  %72 = load i32, i32* %3, align 4, !dbg !4059, !tbaa !587
  %73 = tail call i32 @close(i32 noundef %72) #34, !dbg !4060
  %74 = bitcast i32* %0 to <2 x i32>*, !dbg !4061
  store <2 x i32> %5, <2 x i32>* %74, align 4, !dbg !4061, !tbaa !587
  store i32 %69, i32* %68, align 4, !dbg !4062, !tbaa !587
  br label %75

75:                                               ; preds = %62, %46, %22, %15, %67, %20
  %76 = phi i32 [ -1, %20 ], [ -1, %67 ], [ %9, %15 ], [ -1, %22 ], [ 0, %46 ], [ 0, %62 ]
  ret i32 %76, !dbg !4063
}

; Function Attrs: nounwind
declare !dbg !4064 i32 @pipe2(i32* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4065 i32 @pipe(i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4068 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4070, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i64 %1, metadata !4071, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i64 %2, metadata !4072, metadata !DIExpression()), !dbg !4074
  %4 = icmp eq i64 %2, 0, !dbg !4075
  br i1 %4, label %8, label %5, !dbg !4075

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4075
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4075
  br i1 %7, label %13, label %8, !dbg !4075

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4073, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4074
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4073, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4074
  %9 = mul i64 %2, %1, !dbg !4075
  call void @llvm.dbg.value(metadata i64 %9, metadata !4073, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i8* %0, metadata !4077, metadata !DIExpression()) #34, !dbg !4081
  call void @llvm.dbg.value(metadata i64 %9, metadata !4080, metadata !DIExpression()) #34, !dbg !4081
  %10 = icmp eq i64 %9, 0, !dbg !4083
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4083
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !4084
  br label %15, !dbg !4085

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4073, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4074
  %14 = tail call i32* @__errno_location() #37, !dbg !4086
  store i32 12, i32* %14, align 4, !dbg !4088, !tbaa !587
  br label %15, !dbg !4089

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4074
  ret i8* %16, !dbg !4090
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4091 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4095, metadata !DIExpression()), !dbg !4100
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4101
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4101
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4096, metadata !DIExpression()), !dbg !4102
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !4103
  %5 = icmp eq i32 %4, 0, !dbg !4103
  br i1 %5, label %6, label %13, !dbg !4105

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4106, metadata !DIExpression()) #34, !dbg !4110
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), metadata !4109, metadata !DIExpression()) #34, !dbg !4110
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), i64 2), !dbg !4113
  %8 = icmp eq i32 %7, 0, !dbg !4114
  br i1 %8, label %12, label %9, !dbg !4115

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4106, metadata !DIExpression()) #34, !dbg !4116
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), metadata !4109, metadata !DIExpression()) #34, !dbg !4116
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i64 6), !dbg !4118
  %11 = icmp eq i32 %10, 0, !dbg !4119
  br i1 %11, label %12, label %13, !dbg !4120

12:                                               ; preds = %9, %6
  br label %13, !dbg !4121

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4100
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4122
  ret i1 %14, !dbg !4122
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4127, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i8* %1, metadata !4128, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %2, metadata !4129, metadata !DIExpression()), !dbg !4130
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !4131
  ret i32 %4, !dbg !4132
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4133 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4137, metadata !DIExpression()), !dbg !4138
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !4139
  ret i8* %2, !dbg !4140
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4143, metadata !DIExpression()), !dbg !4145
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4146
  call void @llvm.dbg.value(metadata i8* %2, metadata !4144, metadata !DIExpression()), !dbg !4145
  ret i8* %2, !dbg !4147
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4148 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4150, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i8* %1, metadata !4151, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %2, metadata !4152, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i32 %0, metadata !4143, metadata !DIExpression()) #34, !dbg !4158
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i8* %4, metadata !4144, metadata !DIExpression()) #34, !dbg !4158
  call void @llvm.dbg.value(metadata i8* %4, metadata !4153, metadata !DIExpression()), !dbg !4157
  %5 = icmp eq i8* %4, null, !dbg !4161
  br i1 %5, label %6, label %9, !dbg !4162

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4163
  br i1 %7, label %19, label %8, !dbg !4166

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4167, !tbaa !596
  br label %19, !dbg !4168

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !4169
  call void @llvm.dbg.value(metadata i64 %10, metadata !4154, metadata !DIExpression()), !dbg !4170
  %11 = icmp ult i64 %10, %2, !dbg !4171
  br i1 %11, label %12, label %14, !dbg !4173

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4174
  call void @llvm.dbg.value(metadata i8* %1, metadata !4176, metadata !DIExpression()) #34, !dbg !4181
  call void @llvm.dbg.value(metadata i8* %4, metadata !4179, metadata !DIExpression()) #34, !dbg !4181
  call void @llvm.dbg.value(metadata i64 %13, metadata !4180, metadata !DIExpression()) #34, !dbg !4181
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !4183
  br label %19, !dbg !4184

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4185
  br i1 %15, label %19, label %16, !dbg !4188

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4189
  call void @llvm.dbg.value(metadata i8* %1, metadata !4176, metadata !DIExpression()) #34, !dbg !4191
  call void @llvm.dbg.value(metadata i8* %4, metadata !4179, metadata !DIExpression()) #34, !dbg !4191
  call void @llvm.dbg.value(metadata i64 %17, metadata !4180, metadata !DIExpression()) #34, !dbg !4191
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !4193
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4194
  store i8 0, i8* %18, align 1, !dbg !4195, !tbaa !596
  br label %19, !dbg !4196

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4197
  ret i32 %20, !dbg !4198
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
attributes #13 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { argmemonly nofree nounwind willreturn writeonly }
attributes #26 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readonly willreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind readnone willreturn }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!9, !124, !129, !136, !351, !181, !397, !400, !402, !195, !404, !212, !222, !254, !406, !414, !343, !421, !455, !457, !459, !461, !463, !465, !467, !357, !377, !469, !472, !474, !476}
!llvm.ident = !{!478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478, !478}
!llvm.module.flags = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !41)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !31, globals: !40, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/yes.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e168110abf014226da6862ea552ec304")
!11 = !{!12, !28}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DIEnumerator(name: "_ISupper", value: 256)
!17 = !DIEnumerator(name: "_ISlower", value: 512)
!18 = !DIEnumerator(name: "_ISalpha", value: 1024)
!19 = !DIEnumerator(name: "_ISdigit", value: 2048)
!20 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!21 = !DIEnumerator(name: "_ISspace", value: 8192)
!22 = !DIEnumerator(name: "_ISprint", value: 16384)
!23 = !DIEnumerator(name: "_ISgraph", value: 32768)
!24 = !DIEnumerator(name: "_ISblank", value: 1)
!25 = !DIEnumerator(name: "_IScntrl", value: 2)
!26 = !DIEnumerator(name: "_ISpunct", value: 4)
!27 = !DIEnumerator(name: "_ISalnum", value: 8)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 81, baseType: !14, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIEnumerator(name: "SPLICE_PIPE_SIZE", value: 524288)
!31 = !{!6, !32, !33, !34, !35, !38, !39}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!40 = !{!0}
!41 = !{!42, !43, !44, !47, !49, !50, !51, !55, !56, !57, !58, !60, !116, !117, !118, !120, !121}
!42 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!43 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!44 = !DILocalVariable(name: "term", scope: !45, file: !3, line: 585, type: !6)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 582, column: 5)
!46 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!47 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !48)
!48 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!49 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!50 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!51 = !DILocalVariable(name: "s", scope: !52, file: !3, line: 608, type: !6)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 605, column: 5)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 604, column: 12)
!54 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!55 = !DILocalVariable(name: "spaces", scope: !52, file: !3, line: 609, type: !35)
!56 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !35)
!57 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!58 = !DILocalVariable(name: "__ptr", scope: !59, file: !3, line: 644, type: !6)
!59 = distinct !DILexicalBlock(scope: !2, file: !3, line: 644, column: 3)
!60 = !DILocalVariable(name: "__stream", scope: !59, file: !3, line: 644, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !64)
!63 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !66)
!65 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !82, !84, !85, !86, !90, !91, !93, !97, !100, !102, !105, !108, !109, !110, !111, !112}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 51, baseType: !33, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 36, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 70, baseType: !83, size: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !88, line: 152, baseType: !89)
!88 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!89 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!92 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 43, baseType: null)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !88, line: 153, baseType: !89)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !64, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !65, line: 37, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !64, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !65, line: 38, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !64, file: !65, line: 93, baseType: !83, size: 64, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !64, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DILocalVariable(name: "__cnt", scope: !59, file: !3, line: 644, type: !35)
!117 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!118 = !DILocalVariable(name: "__ptr", scope: !119, file: !3, line: 686, type: !6)
!119 = distinct !DILexicalBlock(scope: !2, file: !3, line: 686, column: 3)
!120 = !DILocalVariable(name: "__stream", scope: !119, file: !3, line: 686, type: !61)
!121 = !DILocalVariable(name: "__cnt", scope: !119, file: !3, line: 686, type: !35)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "Version", scope: !124, file: !125, line: 3, type: !6, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !126, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!126 = !{!122}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "file_name", scope: !129, file: !130, line: 45, type: !6, isLocal: true, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !131, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!131 = !{!127, !132}
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !129, file: !130, line: 55, type: !48, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !136, file: !137, line: 66, type: !172, isLocal: false, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !138, globals: !139, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!138 = !{!32, !38}
!139 = !{!140, !166, !134, !168, !170}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "old_file_name", scope: !142, file: !137, line: 304, type: !6, isLocal: true, isDefinition: true)
!142 = distinct !DISubprogram(name: "verror_at_line", scope: !137, file: !137, line: 298, type: !143, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !159)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !33, !33, !6, !14, !6, !145}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !147)
!146 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !150, baseType: !151)
!150 = !DIFile(filename: "lib/error.c", directory: "/src")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !153)
!152 = !DINamespace(name: "std", scope: null)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !151, file: !150, baseType: !32, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !151, file: !150, baseType: !32, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !151, file: !150, baseType: !32, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !151, file: !150, baseType: !33, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !151, file: !150, baseType: !33, size: 32, offset: 224)
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DILocalVariable(name: "status", arg: 1, scope: !142, file: !137, line: 298, type: !33)
!161 = !DILocalVariable(name: "errnum", arg: 2, scope: !142, file: !137, line: 298, type: !33)
!162 = !DILocalVariable(name: "file_name", arg: 3, scope: !142, file: !137, line: 298, type: !6)
!163 = !DILocalVariable(name: "line_number", arg: 4, scope: !142, file: !137, line: 298, type: !14)
!164 = !DILocalVariable(name: "message", arg: 5, scope: !142, file: !137, line: 298, type: !6)
!165 = !DILocalVariable(name: "args", arg: 6, scope: !142, file: !137, line: 298, type: !145)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "old_line_number", scope: !142, file: !137, line: 305, type: !14, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "error_message_count", scope: !136, file: !137, line: 69, type: !14, isLocal: false, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !136, file: !137, line: 295, type: !33, isLocal: false, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !177, file: !178, line: 506, type: !33, isLocal: true, isDefinition: true)
!177 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !178, file: !178, line: 485, type: !179, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !183)
!178 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!179 = !DISubroutineType(types: !180)
!180 = !{!33, !33, !33}
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !182, splitDebugInlining: false, nameTableKind: None)
!182 = !{!175}
!183 = !{!184, !185, !186, !187, !190}
!184 = !DILocalVariable(name: "fd", arg: 1, scope: !177, file: !178, line: 485, type: !33)
!185 = !DILocalVariable(name: "target", arg: 2, scope: !177, file: !178, line: 485, type: !33)
!186 = !DILocalVariable(name: "result", scope: !177, file: !178, line: 487, type: !33)
!187 = !DILocalVariable(name: "flags", scope: !188, file: !178, line: 530, type: !33)
!188 = distinct !DILexicalBlock(scope: !189, file: !178, line: 529, column: 5)
!189 = distinct !DILexicalBlock(scope: !177, file: !178, line: 528, column: 7)
!190 = !DILocalVariable(name: "saved_errno", scope: !191, file: !178, line: 533, type: !33)
!191 = distinct !DILexicalBlock(scope: !192, file: !178, line: 532, column: 9)
!192 = distinct !DILexicalBlock(scope: !188, file: !178, line: 531, column: 11)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "long_options", scope: !195, file: !196, line: 34, type: !198, isLocal: true, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !197, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!197 = !{!193}
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 768, elements: !208)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !201, line: 50, size: 256, elements: !202)
!201 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!202 = !{!203, !204, !205, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !201, line: 52, baseType: !6, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !200, file: !201, line: 55, baseType: !33, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !200, file: !201, line: 56, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !201, line: 57, baseType: !33, size: 32, offset: 192)
!208 = !{!209}
!209 = !DISubrange(count: 3)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "program_name", scope: !212, file: !213, line: 31, type: !6, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !214, globals: !215, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!214 = !{!39}
!215 = !{!210}
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "utf07FF", scope: !218, file: !219, line: 46, type: !249, isLocal: true, isDefinition: true)
!218 = distinct !DISubprogram(name: "proper_name_lite", scope: !219, file: !219, line: 38, type: !220, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !224)
!219 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!220 = !DISubroutineType(types: !221)
!221 = !{!6, !6, !6}
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !223, splitDebugInlining: false, nameTableKind: None)
!223 = !{!216}
!224 = !{!225, !226, !227, !228, !233}
!225 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !218, file: !219, line: 38, type: !6)
!226 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !218, file: !219, line: 38, type: !6)
!227 = !DILocalVariable(name: "translation", scope: !218, file: !219, line: 40, type: !6)
!228 = !DILocalVariable(name: "w", scope: !218, file: !219, line: 47, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !230, line: 37, baseType: !231)
!230 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !88, line: 57, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !88, line: 42, baseType: !14)
!233 = !DILocalVariable(name: "mbs", scope: !218, file: !219, line: 48, type: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !235, line: 6, baseType: !236)
!235 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !237, line: 21, baseType: !238)
!237 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 13, size: 64, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !238, file: !237, line: 15, baseType: !33, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !238, file: !237, line: 20, baseType: !242, size: 32, offset: 32)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !237, line: 16, size: 32, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !242, file: !237, line: 18, baseType: !14, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !242, file: !237, line: 19, baseType: !246, size: 32)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 4)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 2)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !254, file: !255, line: 76, type: !337, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !276, globals: !277, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!256 = !{!257, !271, !12}
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !258, line: 42, baseType: !14, size: 32, elements: !259)
!258 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!260 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!261 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!262 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!263 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!264 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!265 = !DIEnumerator(name: "c_quoting_style", value: 5)
!266 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!267 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!268 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!269 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!270 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !258, line: 254, baseType: !14, size: 32, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!274 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!275 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!276 = !{!33, !34, !35}
!277 = !{!252, !278, !284, !296, !298, !303, !326, !333, !335}
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !254, file: !255, line: 92, type: !280, isLocal: false, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 320, elements: !282)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!282 = !{!283}
!283 = !DISubrange(count: 10)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !254, file: !255, line: 1040, type: !286, isLocal: false, isDefinition: true)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !255, line: 56, size: 448, elements: !287)
!287 = !{!288, !289, !290, !294, !295}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !286, file: !255, line: 59, baseType: !257, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !255, line: 62, baseType: !33, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !286, file: !255, line: 66, baseType: !291, size: 256, offset: 64)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !286, file: !255, line: 69, baseType: !6, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !286, file: !255, line: 72, baseType: !6, size: 64, offset: 384)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !254, file: !255, line: 107, type: !286, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "slot0", scope: !254, file: !255, line: 831, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 256)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "quote", scope: !305, file: !255, line: 228, type: !324, isLocal: true, isDefinition: true)
!305 = distinct !DISubprogram(name: "gettext_quote", scope: !255, file: !255, line: 197, type: !306, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!6, !6, !257}
!308 = !{!309, !310, !311, !312, !313}
!309 = !DILocalVariable(name: "msgid", arg: 1, scope: !305, file: !255, line: 197, type: !6)
!310 = !DILocalVariable(name: "s", arg: 2, scope: !305, file: !255, line: 197, type: !257)
!311 = !DILocalVariable(name: "translation", scope: !305, file: !255, line: 199, type: !6)
!312 = !DILocalVariable(name: "w", scope: !305, file: !255, line: 229, type: !229)
!313 = !DILocalVariable(name: "mbs", scope: !305, file: !255, line: 230, type: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !235, line: 6, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !237, line: 21, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 13, size: 64, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !316, file: !237, line: 15, baseType: !33, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !316, file: !237, line: 20, baseType: !320, size: 32, offset: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !237, line: 16, size: 32, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !320, file: !237, line: 18, baseType: !14, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !320, file: !237, line: 19, baseType: !246, size: 32)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !325)
!325 = !{!251, !248}
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "slotvec", scope: !254, file: !255, line: 834, type: !328, isLocal: true, isDefinition: true)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !255, line: 823, size: 128, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !329, file: !255, line: 825, baseType: !35, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !329, file: !255, line: 826, baseType: !39, size: 64, offset: 64)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "nslots", scope: !254, file: !255, line: 832, type: !33, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "slotvec0", scope: !254, file: !255, line: 833, type: !329, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 704, elements: !339)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!339 = !{!340}
!340 = !DISubrange(count: 11)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !343, file: !344, line: 26, type: !346, isLocal: false, isDefinition: true)
!343 = distinct !DICompileUnit(language: DW_LANG_C99, file: !344, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !345, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!345 = !{!341}
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 47)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "exit_failure", scope: !351, file: !352, line: 24, type: !354, isLocal: false, isDefinition: true)
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !353, splitDebugInlining: false, nameTableKind: None)
!352 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!353 = !{!349}
!354 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "internal_state", scope: !357, file: !358, line: 97, type: !361, isLocal: true, isDefinition: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !359, globals: !360, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!359 = !{!32, !35, !38}
!360 = !{!355}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !235, line: 6, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !237, line: 21, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 13, size: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !363, file: !237, line: 15, baseType: !33, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !363, file: !237, line: 20, baseType: !367, size: 32, offset: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !237, line: 16, size: 32, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !367, file: !237, line: 18, baseType: !14, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !367, file: !237, line: 19, baseType: !246, size: 32)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "have_pipe2_really", scope: !373, file: !374, line: 54, type: !33, isLocal: true, isDefinition: true)
!373 = distinct !DISubprogram(name: "rpl_pipe2", scope: !374, file: !374, line: 39, type: !375, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !379)
!374 = !DIFile(filename: "lib/pipe2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b2941420442dd7afd7b1a45758b7ccee")
!375 = !DISubroutineType(types: !376)
!376 = !{!33, !206, !33}
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !378, splitDebugInlining: false, nameTableKind: None)
!378 = !{!371}
!379 = !{!380, !381, !382, !384, !388, !391, !394, !396}
!380 = !DILocalVariable(name: "fd", arg: 1, scope: !373, file: !374, line: 39, type: !206)
!381 = !DILocalVariable(name: "flags", arg: 2, scope: !373, file: !374, line: 39, type: !33)
!382 = !DILocalVariable(name: "tmp", scope: !373, file: !374, line: 44, type: !383)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !250)
!384 = !DILocalVariable(name: "result", scope: !385, file: !374, line: 57, type: !33)
!385 = distinct !DILexicalBlock(scope: !386, file: !374, line: 56, column: 7)
!386 = distinct !DILexicalBlock(scope: !387, file: !374, line: 55, column: 9)
!387 = distinct !DILexicalBlock(scope: !373, file: !374, line: 52, column: 3)
!388 = !DILocalVariable(name: "fcntl_flags", scope: !389, file: !374, line: 117, type: !33)
!389 = distinct !DILexicalBlock(scope: !390, file: !374, line: 116, column: 5)
!390 = distinct !DILexicalBlock(scope: !373, file: !374, line: 115, column: 7)
!391 = !DILocalVariable(name: "fcntl_flags", scope: !392, file: !374, line: 128, type: !33)
!392 = distinct !DILexicalBlock(scope: !393, file: !374, line: 127, column: 5)
!393 = distinct !DILexicalBlock(scope: !373, file: !374, line: 126, column: 7)
!394 = !DILocalVariable(name: "saved_errno", scope: !395, file: !374, line: 157, type: !33)
!395 = distinct !DILexicalBlock(scope: !373, file: !374, line: 156, column: 3)
!396 = !DILabel(scope: !373, name: "fail", file: !374, line: 155)
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !399, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!399 = !{!6}
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "lib/pipe2-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5a0d0feff89b6f036d8f7a6e8480abb")
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !408, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!408 = !{!409}
!409 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !410, line: 36, baseType: !14, size: 32, elements: !411)
!410 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!411 = !{!412}
!412 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!413 = !{!35}
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !416, retainedTypes: !420, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!416 = !{!417}
!417 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !415, line: 40, baseType: !14, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!420 = !{!32}
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !423, retainedTypes: !454, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!423 = !{!424, !436}
!424 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !425, file: !422, line: 188, baseType: !14, size: 32, elements: !434)
!425 = distinct !DISubprogram(name: "x2nrealloc", scope: !422, file: !422, line: 176, type: !426, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !429)
!426 = !DISubroutineType(types: !427)
!427 = !{!32, !32, !428, !35}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!429 = !{!430, !431, !432, !433}
!430 = !DILocalVariable(name: "p", arg: 1, scope: !425, file: !422, line: 176, type: !32)
!431 = !DILocalVariable(name: "pn", arg: 2, scope: !425, file: !422, line: 176, type: !428)
!432 = !DILocalVariable(name: "s", arg: 3, scope: !425, file: !422, line: 176, type: !35)
!433 = !DILocalVariable(name: "n", scope: !425, file: !422, line: 178, type: !35)
!434 = !{!435}
!435 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!436 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !437, file: !422, line: 228, baseType: !14, size: 32, elements: !434)
!437 = distinct !DISubprogram(name: "xpalloc", scope: !422, file: !422, line: 223, type: !438, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !444)
!438 = !DISubroutineType(types: !439)
!439 = !{!32, !32, !440, !441, !443, !441}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !442, line: 130, baseType: !443)
!442 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !36, line: 35, baseType: !89)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453}
!445 = !DILocalVariable(name: "pa", arg: 1, scope: !437, file: !422, line: 223, type: !32)
!446 = !DILocalVariable(name: "pn", arg: 2, scope: !437, file: !422, line: 223, type: !440)
!447 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !437, file: !422, line: 223, type: !441)
!448 = !DILocalVariable(name: "n_max", arg: 4, scope: !437, file: !422, line: 223, type: !443)
!449 = !DILocalVariable(name: "s", arg: 5, scope: !437, file: !422, line: 223, type: !441)
!450 = !DILocalVariable(name: "n0", scope: !437, file: !422, line: 230, type: !441)
!451 = !DILocalVariable(name: "n", scope: !437, file: !422, line: 237, type: !441)
!452 = !DILocalVariable(name: "nbytes", scope: !437, file: !422, line: 248, type: !441)
!453 = !DILocalVariable(name: "adjusted_nbytes", scope: !437, file: !422, line: 252, type: !441)
!454 = !{!39, !32, !48, !89, !37}
!455 = distinct !DICompileUnit(language: DW_LANG_C99, file: !456, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!456 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !420, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!467 = distinct !DICompileUnit(language: DW_LANG_C99, file: !468, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !420, splitDebugInlining: false, nameTableKind: None)
!468 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!469 = distinct !DICompileUnit(language: DW_LANG_C99, file: !470, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !471, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!471 = !{!48, !37, !32}
!472 = distinct !DICompileUnit(language: DW_LANG_C99, file: !473, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!473 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!474 = distinct !DICompileUnit(language: DW_LANG_C99, file: !475, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!476 = distinct !DICompileUnit(language: DW_LANG_C99, file: !477, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !420, splitDebugInlining: false, nameTableKind: None)
!477 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!478 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!479 = !{i32 7, !"Dwarf Version", i32 5}
!480 = !{i32 2, !"Debug Info Version", i32 3}
!481 = !{i32 1, !"wchar_size", i32 4}
!482 = !{i32 1, !"branch-target-enforcement", i32 0}
!483 = !{i32 1, !"sign-return-address", i32 0}
!484 = !{i32 1, !"sign-return-address-all", i32 0}
!485 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!486 = !{i32 7, !"PIC Level", i32 2}
!487 = !{i32 7, !"PIE Level", i32 2}
!488 = !{i32 7, !"uwtable", i32 1}
!489 = !{i32 7, !"frame-pointer", i32 1}
!490 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 38, type: !491, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !33}
!493 = !{!494}
!494 = !DILocalVariable(name: "status", arg: 1, scope: !490, file: !10, line: 38, type: !33)
!495 = !DILocation(line: 0, scope: !490)
!496 = !DILocation(line: 40, column: 14, scope: !497)
!497 = distinct !DILexicalBlock(scope: !490, file: !10, line: 40, column: 7)
!498 = !DILocation(line: 40, column: 7, scope: !490)
!499 = !DILocation(line: 41, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !10, line: 41, column: 5)
!501 = !{!502, !502, i64 0}
!502 = !{!"any pointer", !503, i64 0}
!503 = !{!"omnipotent char", !504, i64 0}
!504 = !{!"Simple C/C++ TBAA"}
!505 = !DILocation(line: 44, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !497, file: !10, line: 43, column: 5)
!507 = !DILocation(line: 50, column: 7, scope: !506)
!508 = !DILocation(line: 54, column: 7, scope: !506)
!509 = !DILocation(line: 55, column: 7, scope: !506)
!510 = !DILocalVariable(name: "program", arg: 1, scope: !511, file: !3, line: 836, type: !6)
!511 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !512, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !6}
!514 = !{!510, !515, !524, !525, !527, !528}
!515 = !DILocalVariable(name: "infomap", scope: !511, file: !3, line: 838, type: !516)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 896, elements: !522)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !511, file: !3, line: 838, size: 128, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !518, file: !3, line: 838, baseType: !6, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !518, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!522 = !{!523}
!523 = !DISubrange(count: 7)
!524 = !DILocalVariable(name: "node", scope: !511, file: !3, line: 848, type: !6)
!525 = !DILocalVariable(name: "map_prog", scope: !511, file: !3, line: 849, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!527 = !DILocalVariable(name: "lc_messages", scope: !511, file: !3, line: 861, type: !6)
!528 = !DILocalVariable(name: "url_program", scope: !511, file: !3, line: 874, type: !6)
!529 = !DILocation(line: 0, scope: !511, inlinedAt: !530)
!530 = distinct !DILocation(line: 56, column: 7, scope: !506)
!531 = !DILocation(line: 838, column: 3, scope: !511, inlinedAt: !530)
!532 = !DILocation(line: 838, column: 67, scope: !511, inlinedAt: !530)
!533 = !DILocation(line: 849, column: 36, scope: !511, inlinedAt: !530)
!534 = !DILocation(line: 851, column: 3, scope: !511, inlinedAt: !530)
!535 = !DILocalVariable(name: "__s1", arg: 1, scope: !536, file: !537, line: 1359, type: !6)
!536 = distinct !DISubprogram(name: "streq", scope: !537, file: !537, line: 1359, type: !538, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !540)
!537 = !DIFile(filename: "./lib/string.h", directory: "/src")
!538 = !DISubroutineType(types: !539)
!539 = !{!48, !6, !6}
!540 = !{!535, !541}
!541 = !DILocalVariable(name: "__s2", arg: 2, scope: !536, file: !537, line: 1359, type: !6)
!542 = !DILocation(line: 0, scope: !536, inlinedAt: !543)
!543 = distinct !DILocation(line: 851, column: 33, scope: !511, inlinedAt: !530)
!544 = !DILocation(line: 1361, column: 11, scope: !536, inlinedAt: !543)
!545 = !DILocation(line: 1361, column: 10, scope: !536, inlinedAt: !543)
!546 = !DILocation(line: 852, column: 13, scope: !511, inlinedAt: !530)
!547 = !DILocation(line: 851, column: 20, scope: !511, inlinedAt: !530)
!548 = !{!549, !502, i64 0}
!549 = !{!"infomap", !502, i64 0, !502, i64 8}
!550 = !DILocation(line: 851, column: 10, scope: !511, inlinedAt: !530)
!551 = !DILocation(line: 851, column: 28, scope: !511, inlinedAt: !530)
!552 = distinct !{!552, !534, !546, !553}
!553 = !{!"llvm.loop.mustprogress"}
!554 = !DILocation(line: 854, column: 17, scope: !555, inlinedAt: !530)
!555 = distinct !DILexicalBlock(scope: !511, file: !3, line: 854, column: 7)
!556 = !{!549, !502, i64 8}
!557 = !DILocation(line: 854, column: 7, scope: !555, inlinedAt: !530)
!558 = !DILocation(line: 854, column: 7, scope: !511, inlinedAt: !530)
!559 = !DILocation(line: 857, column: 3, scope: !511, inlinedAt: !530)
!560 = !DILocation(line: 861, column: 29, scope: !511, inlinedAt: !530)
!561 = !DILocation(line: 862, column: 7, scope: !562, inlinedAt: !530)
!562 = distinct !DILexicalBlock(scope: !511, file: !3, line: 862, column: 7)
!563 = !DILocation(line: 862, column: 19, scope: !562, inlinedAt: !530)
!564 = !DILocation(line: 862, column: 22, scope: !562, inlinedAt: !530)
!565 = !DILocation(line: 862, column: 7, scope: !511, inlinedAt: !530)
!566 = !DILocation(line: 868, column: 7, scope: !567, inlinedAt: !530)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 863, column: 5)
!568 = !DILocation(line: 870, column: 5, scope: !567, inlinedAt: !530)
!569 = !DILocation(line: 0, scope: !536, inlinedAt: !570)
!570 = distinct !DILocation(line: 874, column: 29, scope: !511, inlinedAt: !530)
!571 = !DILocation(line: 875, column: 3, scope: !511, inlinedAt: !530)
!572 = !DILocation(line: 877, column: 3, scope: !511, inlinedAt: !530)
!573 = !DILocation(line: 879, column: 1, scope: !511, inlinedAt: !530)
!574 = !DILocation(line: 58, column: 3, scope: !490)
!575 = !DISubprogram(name: "dcgettext", scope: !576, file: !576, line: 51, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!576 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!577 = !DISubroutineType(types: !578)
!578 = !{!39, !6, !6, !33}
!579 = !{}
!580 = !DISubprogram(name: "fputs_unlocked", scope: !146, file: !146, line: 691, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!581 = !DISubroutineType(types: !582)
!582 = !{!33, !583, !584}
!583 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!584 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!585 = !DILocation(line: 0, scope: !2)
!586 = !DILocation(line: 581, column: 7, scope: !46)
!587 = !{!588, !588, i64 0}
!588 = !{!"int", !503, i64 0}
!589 = !DILocation(line: 581, column: 19, scope: !46)
!590 = !DILocation(line: 581, column: 7, scope: !2)
!591 = !DILocation(line: 585, column: 26, scope: !45)
!592 = !DILocation(line: 0, scope: !45)
!593 = !DILocation(line: 586, column: 23, scope: !45)
!594 = !DILocation(line: 586, column: 28, scope: !45)
!595 = !DILocation(line: 586, column: 32, scope: !45)
!596 = !{!503, !503, i64 0}
!597 = !DILocation(line: 586, column: 38, scope: !45)
!598 = !DILocation(line: 0, scope: !536, inlinedAt: !599)
!599 = distinct !DILocation(line: 586, column: 41, scope: !45)
!600 = !DILocation(line: 1361, column: 11, scope: !536, inlinedAt: !599)
!601 = !DILocation(line: 1361, column: 10, scope: !536, inlinedAt: !599)
!602 = !DILocation(line: 586, column: 19, scope: !45)
!603 = !DILocation(line: 587, column: 5, scope: !45)
!604 = !DILocation(line: 588, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!606 = !DILocation(line: 588, column: 7, scope: !2)
!607 = !DILocation(line: 590, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 589, column: 5)
!609 = !DILocation(line: 591, column: 7, scope: !608)
!610 = !DILocation(line: 595, column: 37, scope: !2)
!611 = !DILocation(line: 595, column: 35, scope: !2)
!612 = !DILocation(line: 596, column: 29, scope: !2)
!613 = !DILocation(line: 597, column: 8, scope: !54)
!614 = !DILocation(line: 597, column: 7, scope: !2)
!615 = !DILocation(line: 604, column: 24, scope: !53)
!616 = !DILocation(line: 604, column: 12, scope: !54)
!617 = !DILocation(line: 0, scope: !52)
!618 = !DILocation(line: 610, column: 16, scope: !52)
!619 = !DILocation(line: 610, column: 7, scope: !52)
!620 = !DILocation(line: 611, column: 21, scope: !52)
!621 = !{!622, !622, i64 0}
!622 = !{!"short", !503, i64 0}
!623 = !DILocation(line: 611, column: 19, scope: !52)
!624 = !DILocation(line: 611, column: 16, scope: !52)
!625 = !DILocation(line: 610, column: 30, scope: !52)
!626 = distinct !{!626, !619, !620, !553}
!627 = !DILocation(line: 612, column: 18, scope: !628)
!628 = distinct !DILexicalBlock(scope: !52, file: !3, line: 612, column: 11)
!629 = !DILocation(line: 612, column: 11, scope: !52)
!630 = !DILocation(line: 620, column: 23, scope: !2)
!631 = !DILocation(line: 625, column: 39, scope: !2)
!632 = !DILocation(line: 626, column: 3, scope: !2)
!633 = !DILocation(line: 626, column: 10, scope: !2)
!634 = !DILocation(line: 626, column: 21, scope: !2)
!635 = !DILocation(line: 628, column: 44, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 628, column: 11)
!637 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!638 = !DILocation(line: 628, column: 32, scope: !636)
!639 = !DILocation(line: 628, column: 49, scope: !636)
!640 = !DILocation(line: 628, column: 11, scope: !637)
!641 = !DILocation(line: 630, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !637, file: !3, line: 630, column: 11)
!643 = !DILocation(line: 630, column: 11, scope: !637)
!644 = !DILocation(line: 632, column: 26, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 632, column: 15)
!646 = distinct !DILexicalBlock(scope: !642, file: !3, line: 631, column: 9)
!647 = !DILocation(line: 632, column: 34, scope: !645)
!648 = !DILocation(line: 632, column: 37, scope: !645)
!649 = !DILocation(line: 632, column: 15, scope: !646)
!650 = !DILocation(line: 636, column: 29, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !3, line: 636, column: 15)
!652 = !DILocation(line: 640, column: 16, scope: !637)
!653 = distinct !{!653, !632, !654, !553}
!654 = !DILocation(line: 641, column: 5, scope: !2)
!655 = !DILocation(line: 644, column: 3, scope: !2)
!656 = !DILocation(line: 0, scope: !536, inlinedAt: !657)
!657 = distinct !DILocation(line: 648, column: 31, scope: !2)
!658 = !DILocation(line: 0, scope: !536, inlinedAt: !659)
!659 = distinct !DILocation(line: 649, column: 31, scope: !2)
!660 = !DILocation(line: 0, scope: !536, inlinedAt: !661)
!661 = distinct !DILocation(line: 650, column: 31, scope: !2)
!662 = !DILocation(line: 0, scope: !536, inlinedAt: !663)
!663 = distinct !DILocation(line: 651, column: 31, scope: !2)
!664 = !DILocation(line: 0, scope: !536, inlinedAt: !665)
!665 = distinct !DILocation(line: 652, column: 31, scope: !2)
!666 = !DILocation(line: 0, scope: !536, inlinedAt: !667)
!667 = distinct !DILocation(line: 653, column: 31, scope: !2)
!668 = !DILocation(line: 0, scope: !536, inlinedAt: !669)
!669 = distinct !DILocation(line: 654, column: 31, scope: !2)
!670 = !DILocation(line: 0, scope: !536, inlinedAt: !671)
!671 = distinct !DILocation(line: 655, column: 31, scope: !2)
!672 = !DILocation(line: 0, scope: !536, inlinedAt: !673)
!673 = distinct !DILocation(line: 656, column: 31, scope: !2)
!674 = !DILocation(line: 0, scope: !536, inlinedAt: !675)
!675 = distinct !DILocation(line: 657, column: 31, scope: !2)
!676 = !DILocation(line: 663, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!678 = !DILocation(line: 664, column: 7, scope: !677)
!679 = !DILocation(line: 664, column: 10, scope: !677)
!680 = !DILocation(line: 663, column: 7, scope: !2)
!681 = !DILocation(line: 669, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !677, file: !3, line: 665, column: 5)
!683 = !DILocation(line: 671, column: 5, scope: !682)
!684 = !DILocation(line: 676, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !677, file: !3, line: 673, column: 5)
!686 = !DILocation(line: 679, column: 3, scope: !2)
!687 = !DILocation(line: 683, column: 3, scope: !2)
!688 = !DILocation(line: 686, column: 3, scope: !2)
!689 = !DILocation(line: 688, column: 3, scope: !2)
!690 = !DILocation(line: 691, column: 3, scope: !2)
!691 = !DILocation(line: 695, column: 3, scope: !2)
!692 = !DILocation(line: 696, column: 1, scope: !2)
!693 = !DISubprogram(name: "setlocale", scope: !694, file: !694, line: 122, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!694 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!695 = !DISubroutineType(types: !696)
!696 = !{!39, !33, !6}
!697 = !DISubprogram(name: "getenv", scope: !698, file: !698, line: 641, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!698 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!699 = !DISubroutineType(types: !700)
!700 = !{!39, !6}
!701 = !DISubprogram(name: "fwrite_unlocked", scope: !146, file: !146, line: 704, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!702 = !DISubroutineType(types: !703)
!703 = !{!35, !704, !35, !35, !584}
!704 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!707 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 201, type: !708, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !711)
!708 = !DISubroutineType(types: !709)
!709 = !{!33, !33, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !721, !722, !723, !725}
!712 = !DILocalVariable(name: "argc", arg: 1, scope: !707, file: !10, line: 201, type: !33)
!713 = !DILocalVariable(name: "argv", arg: 2, scope: !707, file: !10, line: 201, type: !710)
!714 = !DILocalVariable(name: "operands", scope: !707, file: !10, line: 215, type: !710)
!715 = !DILocalVariable(name: "operand_lim", scope: !707, file: !10, line: 216, type: !710)
!716 = !DILocalVariable(name: "bufalloc", scope: !707, file: !10, line: 222, type: !35)
!717 = !DILocalVariable(name: "reuse_operand_strings", scope: !707, file: !10, line: 223, type: !48)
!718 = !DILocalVariable(name: "operandp", scope: !707, file: !10, line: 224, type: !710)
!719 = !DILocalVariable(name: "operand_len", scope: !720, file: !10, line: 227, type: !35)
!720 = distinct !DILexicalBlock(scope: !707, file: !10, line: 226, column: 5)
!721 = !DILocalVariable(name: "buf", scope: !707, file: !10, line: 249, type: !39)
!722 = !DILocalVariable(name: "bufused", scope: !707, file: !10, line: 250, type: !35)
!723 = !DILocalVariable(name: "operand_len", scope: !724, file: !10, line: 254, type: !35)
!724 = distinct !DILexicalBlock(scope: !707, file: !10, line: 253, column: 5)
!725 = !DILocalVariable(name: "copysize", scope: !707, file: !10, line: 263, type: !441)
!726 = !DILocation(line: 0, scope: !707)
!727 = !DILocation(line: 204, column: 21, scope: !707)
!728 = !DILocation(line: 204, column: 3, scope: !707)
!729 = !DILocation(line: 205, column: 3, scope: !707)
!730 = !DILocation(line: 206, column: 3, scope: !707)
!731 = !DILocation(line: 207, column: 3, scope: !707)
!732 = !DILocation(line: 209, column: 3, scope: !707)
!733 = !DILocation(line: 212, column: 36, scope: !707)
!734 = !DILocation(line: 212, column: 58, scope: !707)
!735 = !DILocation(line: 211, column: 3, scope: !707)
!736 = !DILocation(line: 215, column: 28, scope: !707)
!737 = !DILocation(line: 215, column: 26, scope: !707)
!738 = !DILocation(line: 216, column: 29, scope: !707)
!739 = !DILocation(line: 217, column: 14, scope: !740)
!740 = distinct !DILexicalBlock(scope: !707, file: !10, line: 217, column: 7)
!741 = !DILocation(line: 217, column: 7, scope: !707)
!742 = !DILocation(line: 218, column: 17, scope: !740)
!743 = !DILocation(line: 218, column: 20, scope: !740)
!744 = !DILocation(line: 218, column: 5, scope: !740)
!745 = !DILocation(line: 227, column: 36, scope: !720)
!746 = !DILocation(line: 227, column: 28, scope: !720)
!747 = !DILocation(line: 0, scope: !720)
!748 = !DILocation(line: 228, column: 16, scope: !720)
!749 = !DILocation(line: 229, column: 20, scope: !750)
!750 = distinct !DILexicalBlock(scope: !720, file: !10, line: 229, column: 11)
!751 = !DILocation(line: 229, column: 24, scope: !750)
!752 = !DILocation(line: 230, column: 11, scope: !750)
!753 = !DILocation(line: 230, column: 24, scope: !750)
!754 = !DILocation(line: 230, column: 38, scope: !750)
!755 = !DILocation(line: 230, column: 45, scope: !750)
!756 = !DILocation(line: 230, column: 42, scope: !750)
!757 = !DILocation(line: 229, column: 11, scope: !720)
!758 = !DILocation(line: 228, column: 31, scope: !720)
!759 = !DILocation(line: 236, column: 16, scope: !760)
!760 = distinct !DILexicalBlock(scope: !707, file: !10, line: 236, column: 7)
!761 = !DILocation(line: 236, column: 7, scope: !707)
!762 = !DILocation(line: 249, column: 15, scope: !707)
!763 = !DILocation(line: 249, column: 51, scope: !707)
!764 = !DILocation(line: 252, column: 3, scope: !707)
!765 = !DILocation(line: 254, column: 36, scope: !724)
!766 = !DILocation(line: 254, column: 28, scope: !724)
!767 = !DILocation(line: 0, scope: !724)
!768 = !DILocation(line: 255, column: 11, scope: !724)
!769 = !DILocation(line: 256, column: 21, scope: !770)
!770 = distinct !DILexicalBlock(scope: !724, file: !10, line: 255, column: 11)
!771 = !DILocalVariable(name: "__dest", arg: 1, scope: !772, file: !773, line: 26, type: !776)
!772 = distinct !DISubprogram(name: "memcpy", scope: !773, file: !773, line: 26, type: !774, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !777)
!773 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!774 = !DISubroutineType(types: !775)
!775 = !{!32, !776, !704, !35}
!776 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!777 = !{!771, !778, !779}
!778 = !DILocalVariable(name: "__src", arg: 2, scope: !772, file: !773, line: 26, type: !704)
!779 = !DILocalVariable(name: "__len", arg: 3, scope: !772, file: !773, line: 26, type: !35)
!780 = !DILocation(line: 0, scope: !772, inlinedAt: !781)
!781 = distinct !DILocation(line: 256, column: 9, scope: !770)
!782 = !DILocation(line: 29, column: 10, scope: !772, inlinedAt: !781)
!783 = !DILocation(line: 256, column: 9, scope: !770)
!784 = !DILocation(line: 257, column: 15, scope: !724)
!785 = !DILocation(line: 258, column: 18, scope: !724)
!786 = !DILocation(line: 258, column: 7, scope: !724)
!787 = !DILocation(line: 258, column: 22, scope: !724)
!788 = !DILocation(line: 260, column: 10, scope: !707)
!789 = !DILocation(line: 260, column: 21, scope: !707)
!790 = !DILocation(line: 259, column: 5, scope: !724)
!791 = distinct !{!791, !764, !792, !553}
!792 = !DILocation(line: 260, column: 34, scope: !707)
!793 = !DILocation(line: 261, column: 20, scope: !707)
!794 = !DILocation(line: 268, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !707, file: !10, line: 268, column: 7)
!796 = !DILocation(line: 268, column: 49, scope: !795)
!797 = !DILocation(line: 269, column: 7, scope: !795)
!798 = !DILocalVariable(name: "buf", arg: 1, scope: !799, file: !10, line: 113, type: !6)
!799 = distinct !DISubprogram(name: "splice_write", scope: !10, file: !10, line: 113, type: !800, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{!48, !6, !441}
!802 = !{!798, !803, !804, !805, !806, !807, !808, !809, !810, !811, !820, !822, !825, !828, !830, !833}
!803 = !DILocalVariable(name: "copysize", arg: 2, scope: !799, file: !10, line: 113, type: !441)
!804 = !DILocalVariable(name: "output_started", scope: !799, file: !10, line: 115, type: !48)
!805 = !DILocalVariable(name: "page_size", scope: !799, file: !10, line: 117, type: !441)
!806 = !DILocalVariable(name: "stdout_is_pipe", scope: !799, file: !10, line: 119, type: !48)
!807 = !DILocalVariable(name: "pipefd", scope: !799, file: !10, line: 123, type: !383)
!808 = !DILocalVariable(name: "splice_bufsize", scope: !799, file: !10, line: 124, type: !441)
!809 = !DILocalVariable(name: "splice_buf", scope: !799, file: !10, line: 125, type: !39)
!810 = !DILocalVariable(name: "vmsplice_fd", scope: !799, file: !10, line: 149, type: !33)
!811 = !DILocalVariable(name: "iov", scope: !812, file: !10, line: 153, type: !815)
!812 = distinct !DILexicalBlock(scope: !813, file: !10, line: 152, column: 5)
!813 = distinct !DILexicalBlock(scope: !814, file: !10, line: 151, column: 3)
!814 = distinct !DILexicalBlock(scope: !799, file: !10, line: 151, column: 3)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !816, line: 26, size: 128, elements: !817)
!816 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !815, file: !816, line: 28, baseType: !32, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !815, file: !816, line: 29, baseType: !35, size: 64, offset: 64)
!820 = !DILocalVariable(name: "flags", scope: !821, file: !10, line: 161, type: !14)
!821 = distinct !DILexicalBlock(scope: !812, file: !10, line: 157, column: 9)
!822 = !DILocalVariable(name: "n", scope: !821, file: !10, line: 162, type: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !146, line: 77, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !88, line: 194, baseType: !89)
!825 = !DILocalVariable(name: "remaining", scope: !826, file: !10, line: 174, type: !441)
!826 = distinct !DILexicalBlock(scope: !827, file: !10, line: 173, column: 9)
!827 = distinct !DILexicalBlock(scope: !812, file: !10, line: 172, column: 11)
!828 = !DILocalVariable(name: "s", scope: !829, file: !10, line: 177, type: !823)
!829 = distinct !DILexicalBlock(scope: !826, file: !10, line: 176, column: 13)
!830 = !DILocalVariable(name: "saved_errno", scope: !831, file: !10, line: 190, type: !33)
!831 = distinct !DILexicalBlock(scope: !832, file: !10, line: 189, column: 5)
!832 = distinct !DILexicalBlock(scope: !799, file: !10, line: 188, column: 7)
!833 = !DILabel(scope: !799, name: "done", file: !10, line: 187)
!834 = !DILocation(line: 0, scope: !799, inlinedAt: !835)
!835 = distinct !DILocation(line: 269, column: 10, scope: !795)
!836 = !DILocation(line: 117, column: 21, scope: !799, inlinedAt: !835)
!837 = !DILocation(line: 119, column: 25, scope: !799, inlinedAt: !835)
!838 = !DILocation(line: 119, column: 49, scope: !799, inlinedAt: !835)
!839 = !DILocation(line: 123, column: 3, scope: !799, inlinedAt: !835)
!840 = !DILocation(line: 123, column: 7, scope: !799, inlinedAt: !835)
!841 = !DILocation(line: 127, column: 7, scope: !799, inlinedAt: !835)
!842 = !DILocalVariable(name: "fd", arg: 1, scope: !843, file: !10, line: 89, type: !33)
!843 = distinct !DISubprogram(name: "pipe_splice_size", scope: !10, file: !10, line: 89, type: !844, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!441, !33, !441}
!846 = !{!842, !847, !848, !849}
!847 = !DILocalVariable(name: "copysize", arg: 2, scope: !843, file: !10, line: 89, type: !441)
!848 = !DILocalVariable(name: "pipe_cap", scope: !843, file: !10, line: 91, type: !33)
!849 = !DILocalVariable(name: "buf_cap", scope: !843, file: !10, line: 99, type: !35)
!850 = !DILocation(line: 0, scope: !843, inlinedAt: !851)
!851 = distinct !DILocation(line: 128, column: 22, scope: !852, inlinedAt: !835)
!852 = distinct !DILexicalBlock(scope: !799, file: !10, line: 127, column: 7)
!853 = !DILocation(line: 93, column: 19, scope: !854, inlinedAt: !851)
!854 = distinct !DILexicalBlock(scope: !843, file: !10, line: 93, column: 7)
!855 = !DILocation(line: 93, column: 63, scope: !854, inlinedAt: !851)
!856 = !DILocation(line: 93, column: 7, scope: !843, inlinedAt: !851)
!857 = !DILocation(line: 94, column: 16, scope: !854, inlinedAt: !851)
!858 = !DILocation(line: 94, column: 5, scope: !854, inlinedAt: !851)
!859 = !DILocation(line: 131, column: 18, scope: !860, inlinedAt: !835)
!860 = distinct !DILexicalBlock(scope: !861, file: !10, line: 131, column: 11)
!861 = distinct !DILexicalBlock(scope: !852, file: !10, line: 130, column: 5)
!862 = !DILocation(line: 131, column: 11, scope: !860, inlinedAt: !835)
!863 = !DILocation(line: 131, column: 29, scope: !860, inlinedAt: !835)
!864 = !DILocation(line: 131, column: 11, scope: !861, inlinedAt: !835)
!865 = !DILocation(line: 198, column: 1, scope: !799, inlinedAt: !835)
!866 = !DILocation(line: 268, column: 7, scope: !707)
!867 = !DILocation(line: 133, column: 42, scope: !861, inlinedAt: !835)
!868 = !DILocation(line: 0, scope: !843, inlinedAt: !869)
!869 = distinct !DILocation(line: 133, column: 24, scope: !861, inlinedAt: !835)
!870 = !DILocation(line: 93, column: 19, scope: !854, inlinedAt: !869)
!871 = !DILocation(line: 93, column: 63, scope: !854, inlinedAt: !869)
!872 = !DILocation(line: 93, column: 7, scope: !843, inlinedAt: !869)
!873 = !DILocation(line: 94, column: 16, scope: !854, inlinedAt: !869)
!874 = !DILocation(line: 94, column: 5, scope: !854, inlinedAt: !869)
!875 = !DILocation(line: 0, scope: !852, inlinedAt: !835)
!876 = !DILocation(line: 136, column: 22, scope: !877, inlinedAt: !835)
!877 = distinct !DILexicalBlock(scope: !799, file: !10, line: 136, column: 7)
!878 = !DILocation(line: 136, column: 7, scope: !799, inlinedAt: !835)
!879 = !DILocalVariable(name: "alignment", arg: 1, scope: !880, file: !881, line: 90, type: !441)
!880 = distinct !DISubprogram(name: "alignalloc", scope: !881, file: !881, line: 90, type: !882, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !884)
!881 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!882 = !DISubroutineType(types: !883)
!883 = !{!32, !441, !441}
!884 = !{!879, !885}
!885 = !DILocalVariable(name: "size", arg: 2, scope: !880, file: !881, line: 90, type: !441)
!886 = !DILocation(line: 0, scope: !880, inlinedAt: !887)
!887 = distinct !DILocation(line: 141, column: 23, scope: !888, inlinedAt: !835)
!888 = distinct !DILexicalBlock(scope: !799, file: !10, line: 141, column: 7)
!889 = !DILocation(line: 98, column: 10, scope: !880, inlinedAt: !887)
!890 = !DILocation(line: 141, column: 21, scope: !888, inlinedAt: !835)
!891 = !DILocation(line: 141, column: 7, scope: !799, inlinedAt: !835)
!892 = !DILocalVariable(name: "dest", arg: 1, scope: !893, file: !10, line: 65, type: !39)
!893 = distinct !DISubprogram(name: "repeat_pattern", scope: !10, file: !10, line: 65, type: !894, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !39, !6, !441, !441}
!896 = !{!892, !897, !898, !899, !900, !902}
!897 = !DILocalVariable(name: "src", arg: 2, scope: !893, file: !10, line: 65, type: !6)
!898 = !DILocalVariable(name: "srcsize", arg: 3, scope: !893, file: !10, line: 65, type: !441)
!899 = !DILocalVariable(name: "bufsize", arg: 4, scope: !893, file: !10, line: 65, type: !441)
!900 = !DILocalVariable(name: "filled", scope: !901, file: !10, line: 69, type: !441)
!901 = distinct !DILexicalBlock(scope: !893, file: !10, line: 69, column: 3)
!902 = !DILocalVariable(name: "chunk", scope: !903, file: !10, line: 71, type: !441)
!903 = distinct !DILexicalBlock(scope: !904, file: !10, line: 70, column: 5)
!904 = distinct !DILexicalBlock(scope: !901, file: !10, line: 69, column: 3)
!905 = !DILocation(line: 0, scope: !893, inlinedAt: !906)
!906 = distinct !DILocation(line: 144, column: 3, scope: !799, inlinedAt: !835)
!907 = !DILocation(line: 67, column: 12, scope: !908, inlinedAt: !906)
!908 = distinct !DILexicalBlock(scope: !893, file: !10, line: 67, column: 7)
!909 = !DILocation(line: 67, column: 7, scope: !893, inlinedAt: !906)
!910 = !DILocation(line: 0, scope: !772, inlinedAt: !911)
!911 = distinct !DILocation(line: 68, column: 5, scope: !908, inlinedAt: !906)
!912 = !DILocation(line: 29, column: 10, scope: !772, inlinedAt: !911)
!913 = !DILocation(line: 68, column: 5, scope: !908, inlinedAt: !906)
!914 = !DILocation(line: 0, scope: !901, inlinedAt: !906)
!915 = !DILocation(line: 69, column: 39, scope: !904, inlinedAt: !906)
!916 = !DILocation(line: 69, column: 3, scope: !901, inlinedAt: !906)
!917 = !DILocation(line: 71, column: 21, scope: !903, inlinedAt: !906)
!918 = !DILocation(line: 0, scope: !903, inlinedAt: !906)
!919 = !DILocation(line: 72, column: 20, scope: !903, inlinedAt: !906)
!920 = !DILocation(line: 0, scope: !772, inlinedAt: !921)
!921 = distinct !DILocation(line: 72, column: 7, scope: !903, inlinedAt: !906)
!922 = !DILocation(line: 29, column: 10, scope: !772, inlinedAt: !921)
!923 = !DILocation(line: 73, column: 14, scope: !903, inlinedAt: !906)
!924 = distinct !{!924, !916, !925, !553}
!925 = !DILocation(line: 74, column: 5, scope: !901, inlinedAt: !906)
!926 = !DILocation(line: 149, column: 21, scope: !799, inlinedAt: !835)
!927 = !DILocation(line: 151, column: 3, scope: !799, inlinedAt: !835)
!928 = !DILocation(line: 115, column: 8, scope: !799, inlinedAt: !835)
!929 = !DILocation(line: 153, column: 7, scope: !812, inlinedAt: !835)
!930 = !DILocation(line: 153, column: 20, scope: !812, inlinedAt: !835)
!931 = !DILocation(line: 153, column: 26, scope: !812, inlinedAt: !835)
!932 = !{!933, !502, i64 0}
!933 = !{!"iovec", !502, i64 0, !934, i64 8}
!934 = !{!"long", !503, i64 0}
!935 = !DILocation(line: 0, scope: !812, inlinedAt: !835)
!936 = !{!933, !934, i64 8}
!937 = !DILocation(line: 156, column: 7, scope: !812, inlinedAt: !835)
!938 = !DILocation(line: 165, column: 15, scope: !821, inlinedAt: !835)
!939 = !DILocation(line: 167, column: 39, scope: !821, inlinedAt: !835)
!940 = !DILocation(line: 167, column: 48, scope: !821, inlinedAt: !835)
!941 = !DILocation(line: 167, column: 24, scope: !821, inlinedAt: !835)
!942 = !DILocation(line: 168, column: 23, scope: !821, inlinedAt: !835)
!943 = !DILocation(line: 156, column: 26, scope: !812, inlinedAt: !835)
!944 = !DILocation(line: 161, column: 44, scope: !821, inlinedAt: !835)
!945 = !DILocation(line: 161, column: 32, scope: !821, inlinedAt: !835)
!946 = !DILocation(line: 0, scope: !821, inlinedAt: !835)
!947 = !DILocation(line: 162, column: 23, scope: !821, inlinedAt: !835)
!948 = !DILocation(line: 163, column: 17, scope: !949, inlinedAt: !835)
!949 = distinct !DILexicalBlock(scope: !821, file: !10, line: 163, column: 15)
!950 = !DILocation(line: 163, column: 15, scope: !821, inlinedAt: !835)
!951 = !DILocation(line: 185, column: 5, scope: !813, inlinedAt: !835)
!952 = !DILocation(line: 172, column: 11, scope: !812, inlinedAt: !835)
!953 = !DILocation(line: 0, scope: !826, inlinedAt: !835)
!954 = !DILocation(line: 177, column: 35, scope: !829, inlinedAt: !835)
!955 = !DILocation(line: 177, column: 27, scope: !829, inlinedAt: !835)
!956 = !DILocation(line: 0, scope: !829, inlinedAt: !835)
!957 = !DILocation(line: 179, column: 21, scope: !958, inlinedAt: !835)
!958 = distinct !DILexicalBlock(scope: !829, file: !10, line: 179, column: 19)
!959 = distinct !{!959, !960, !961, !553}
!960 = !DILocation(line: 175, column: 11, scope: !826, inlinedAt: !835)
!961 = !DILocation(line: 183, column: 13, scope: !826, inlinedAt: !835)
!962 = !DILocation(line: 179, column: 19, scope: !829, inlinedAt: !835)
!963 = !DILocation(line: 175, column: 28, scope: !826, inlinedAt: !835)
!964 = distinct !{!964, !960, !961, !553}
!965 = !DILocation(line: 188, column: 7, scope: !832, inlinedAt: !835)
!966 = !DILocation(line: 187, column: 1, scope: !799, inlinedAt: !835)
!967 = !DILocation(line: 188, column: 17, scope: !832, inlinedAt: !835)
!968 = !DILocation(line: 188, column: 7, scope: !799, inlinedAt: !835)
!969 = !DILocation(line: 190, column: 25, scope: !831, inlinedAt: !835)
!970 = !DILocation(line: 0, scope: !831, inlinedAt: !835)
!971 = !DILocation(line: 191, column: 7, scope: !831, inlinedAt: !835)
!972 = !DILocation(line: 192, column: 14, scope: !831, inlinedAt: !835)
!973 = !DILocation(line: 192, column: 7, scope: !831, inlinedAt: !835)
!974 = !DILocation(line: 193, column: 13, scope: !831, inlinedAt: !835)
!975 = !DILocation(line: 194, column: 5, scope: !831, inlinedAt: !835)
!976 = !DILocalVariable(name: "ptr", arg: 1, scope: !977, file: !881, line: 75, type: !32)
!977 = distinct !DISubprogram(name: "alignfree", scope: !881, file: !881, line: 75, type: !978, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !32}
!980 = !{!976}
!981 = !DILocation(line: 0, scope: !977, inlinedAt: !982)
!982 = distinct !DILocation(line: 195, column: 3, scope: !799, inlinedAt: !835)
!983 = !DILocation(line: 77, column: 3, scope: !977, inlinedAt: !982)
!984 = !DILocation(line: 272, column: 37, scope: !985)
!985 = distinct !DILexicalBlock(scope: !795, file: !10, line: 270, column: 5)
!986 = !DILocation(line: 273, column: 19, scope: !987)
!987 = distinct !DILexicalBlock(scope: !985, file: !10, line: 273, column: 11)
!988 = !DILocation(line: 273, column: 11, scope: !985)
!989 = !DILocation(line: 0, scope: !893, inlinedAt: !990)
!990 = distinct !DILocation(line: 274, column: 9, scope: !987)
!991 = !DILocation(line: 0, scope: !901, inlinedAt: !990)
!992 = !DILocation(line: 71, column: 21, scope: !903, inlinedAt: !990)
!993 = !DILocation(line: 0, scope: !903, inlinedAt: !990)
!994 = !DILocation(line: 72, column: 20, scope: !903, inlinedAt: !990)
!995 = !DILocation(line: 0, scope: !772, inlinedAt: !996)
!996 = distinct !DILocation(line: 72, column: 7, scope: !903, inlinedAt: !990)
!997 = !DILocation(line: 29, column: 10, scope: !772, inlinedAt: !996)
!998 = !DILocation(line: 73, column: 14, scope: !903, inlinedAt: !990)
!999 = !DILocation(line: 69, column: 39, scope: !904, inlinedAt: !990)
!1000 = !DILocation(line: 69, column: 3, scope: !901, inlinedAt: !990)
!1001 = distinct !{!1001, !1000, !1002, !553}
!1002 = !DILocation(line: 74, column: 5, scope: !901, inlinedAt: !990)
!1003 = !DILocation(line: 275, column: 7, scope: !985)
!1004 = !DILocation(line: 275, column: 14, scope: !985)
!1005 = !DILocation(line: 275, column: 55, scope: !985)
!1006 = distinct !{!1006, !1003, !1007, !553}
!1007 = !DILocation(line: 276, column: 9, scope: !985)
!1008 = !DILocation(line: 279, column: 3, scope: !707)
!1009 = !DILocation(line: 281, column: 1, scope: !707)
!1010 = !DISubprogram(name: "bindtextdomain", scope: !576, file: !576, line: 86, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!39, !6, !6}
!1013 = !DISubprogram(name: "textdomain", scope: !576, file: !576, line: 82, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1014 = !DISubprogram(name: "atexit", scope: !698, file: !698, line: 602, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!33, !172}
!1017 = !DISubprogram(name: "getpagesize", scope: !1018, file: !1018, line: 1011, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1018 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!33}
!1021 = !DISubprogram(name: "vmsplice", scope: !1022, file: !1022, line: 414, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1022 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/fcntl-linux.h", directory: "", checksumkind: CSK_MD5, checksum: "1c3bf9fc3309d17651ecfc421f385bcf")
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!824, !33, !1025, !35, !14}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!1027 = !DISubprogram(name: "splice", scope: !1022, file: !1022, line: 421, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!824, !33, !1030, !33, !1030, !35, !14}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1031 = !DISubprogram(name: "close", scope: !1018, file: !1018, line: 358, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!33, !33}
!1034 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !130, file: !130, line: 50, type: !512, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !1035)
!1035 = !{!1036}
!1036 = !DILocalVariable(name: "file", arg: 1, scope: !1034, file: !130, line: 50, type: !6)
!1037 = !DILocation(line: 0, scope: !1034)
!1038 = !DILocation(line: 52, column: 13, scope: !1034)
!1039 = !DILocation(line: 53, column: 1, scope: !1034)
!1040 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !130, file: !130, line: 87, type: !1041, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !48}
!1043 = !{!1044}
!1044 = !DILocalVariable(name: "ignore", arg: 1, scope: !1040, file: !130, line: 87, type: !48)
!1045 = !DILocation(line: 0, scope: !1040)
!1046 = !DILocation(line: 89, column: 16, scope: !1040)
!1047 = !{!1048, !1048, i64 0}
!1048 = !{!"_Bool", !503, i64 0}
!1049 = !DILocation(line: 90, column: 1, scope: !1040)
!1050 = distinct !DISubprogram(name: "close_stdout", scope: !130, file: !130, line: 116, type: !173, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !1051)
!1051 = !{!1052}
!1052 = !DILocalVariable(name: "write_error", scope: !1053, file: !130, line: 121, type: !6)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !130, line: 120, column: 5)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !130, line: 118, column: 7)
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
!1068 = distinct !DILexicalBlock(scope: !1053, file: !130, line: 122, column: 11)
!1069 = !DILocation(line: 0, scope: !1068)
!1070 = !DILocation(line: 122, column: 11, scope: !1053)
!1071 = !DILocation(line: 123, column: 9, scope: !1068)
!1072 = !DILocation(line: 126, column: 9, scope: !1068)
!1073 = !DILocation(line: 128, column: 14, scope: !1053)
!1074 = !DILocation(line: 128, column: 7, scope: !1053)
!1075 = !DILocation(line: 133, column: 42, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1050, file: !130, line: 133, column: 7)
!1077 = !DILocation(line: 133, column: 28, scope: !1076)
!1078 = !DILocation(line: 133, column: 50, scope: !1076)
!1079 = !DILocation(line: 133, column: 7, scope: !1050)
!1080 = !DILocation(line: 134, column: 12, scope: !1076)
!1081 = !DILocation(line: 134, column: 5, scope: !1076)
!1082 = !DILocation(line: 135, column: 1, scope: !1050)
!1083 = distinct !DISubprogram(name: "verror", scope: !137, file: !137, line: 251, type: !1084, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !33, !33, !6, !145}
!1086 = !{!1087, !1088, !1089, !1090}
!1087 = !DILocalVariable(name: "status", arg: 1, scope: !1083, file: !137, line: 251, type: !33)
!1088 = !DILocalVariable(name: "errnum", arg: 2, scope: !1083, file: !137, line: 251, type: !33)
!1089 = !DILocalVariable(name: "message", arg: 3, scope: !1083, file: !137, line: 251, type: !6)
!1090 = !DILocalVariable(name: "args", arg: 4, scope: !1083, file: !137, line: 251, type: !145)
!1091 = !DILocation(line: 0, scope: !1083)
!1092 = !DILocation(line: 251, column: 1, scope: !1083)
!1093 = !DILocation(line: 261, column: 3, scope: !1083)
!1094 = !DILocation(line: 265, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1083, file: !137, line: 265, column: 7)
!1096 = !DILocation(line: 265, column: 7, scope: !1083)
!1097 = !DILocation(line: 266, column: 5, scope: !1095)
!1098 = !DILocation(line: 272, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !137, line: 268, column: 5)
!1100 = !DILocation(line: 276, column: 3, scope: !1083)
!1101 = !{i64 0, i64 8, !501, i64 8, i64 8, !501, i64 16, i64 8, !501, i64 24, i64 4, !587, i64 28, i64 4, !587}
!1102 = !DILocation(line: 282, column: 1, scope: !1083)
!1103 = distinct !DISubprogram(name: "flush_stdout", scope: !137, file: !137, line: 163, type: !173, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1104)
!1104 = !{!1105}
!1105 = !DILocalVariable(name: "stdout_fd", scope: !1103, file: !137, line: 166, type: !33)
!1106 = !DILocation(line: 0, scope: !1103)
!1107 = !DILocalVariable(name: "fd", arg: 1, scope: !1108, file: !137, line: 145, type: !33)
!1108 = distinct !DISubprogram(name: "is_open", scope: !137, file: !137, line: 145, type: !1032, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1109)
!1109 = !{!1107}
!1110 = !DILocation(line: 0, scope: !1108, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 182, column: 25, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1103, file: !137, line: 182, column: 7)
!1113 = !DILocation(line: 157, column: 15, scope: !1108, inlinedAt: !1111)
!1114 = !DILocation(line: 182, column: 25, scope: !1112)
!1115 = !DILocation(line: 182, column: 7, scope: !1103)
!1116 = !DILocation(line: 184, column: 5, scope: !1112)
!1117 = !DILocation(line: 185, column: 1, scope: !1103)
!1118 = distinct !DISubprogram(name: "error_tail", scope: !137, file: !137, line: 219, type: !1084, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1119)
!1119 = !{!1120, !1121, !1122, !1123}
!1120 = !DILocalVariable(name: "status", arg: 1, scope: !1118, file: !137, line: 219, type: !33)
!1121 = !DILocalVariable(name: "errnum", arg: 2, scope: !1118, file: !137, line: 219, type: !33)
!1122 = !DILocalVariable(name: "message", arg: 3, scope: !1118, file: !137, line: 219, type: !6)
!1123 = !DILocalVariable(name: "args", arg: 4, scope: !1118, file: !137, line: 219, type: !145)
!1124 = !DILocation(line: 0, scope: !1118)
!1125 = !DILocation(line: 219, column: 1, scope: !1118)
!1126 = !DILocation(line: 229, column: 13, scope: !1118)
!1127 = !DILocation(line: 229, column: 3, scope: !1118)
!1128 = !DILocalVariable(name: "__stream", arg: 1, scope: !1129, file: !1130, line: 132, type: !1133)
!1129 = distinct !DISubprogram(name: "vfprintf", scope: !1130, file: !1130, line: 132, type: !1131, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1168)
!1130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!33, !1133, !583, !147}
!1133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1136, file: !65, line: 51, baseType: !33, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1136, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1136, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1136, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1136, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1136, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1136, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1136, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1136, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1136, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1136, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1136, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1136, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1136, file: !65, line: 70, baseType: !1152, size: 64, offset: 832)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1136, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1136, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1136, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1136, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1136, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1136, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1136, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1136, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1136, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1136, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1136, file: !65, line: 93, baseType: !1152, size: 64, offset: 1344)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1136, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1136, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1136, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1136, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!1168 = !{!1128, !1169, !1170}
!1169 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1129, file: !1130, line: 133, type: !583)
!1170 = !DILocalVariable(name: "__ap", arg: 3, scope: !1129, file: !1130, line: 133, type: !147)
!1171 = !DILocation(line: 0, scope: !1129, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 229, column: 3, scope: !1118)
!1173 = !DILocation(line: 135, column: 10, scope: !1129, inlinedAt: !1172)
!1174 = !{!1175, !1177}
!1175 = distinct !{!1175, !1176, !"vfprintf.inline: argument 0"}
!1176 = distinct !{!1176, !"vfprintf.inline"}
!1177 = distinct !{!1177, !1176, !"vfprintf.inline: argument 1"}
!1178 = !DILocation(line: 232, column: 3, scope: !1118)
!1179 = !DILocation(line: 233, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1118, file: !137, line: 233, column: 7)
!1181 = !DILocation(line: 233, column: 7, scope: !1118)
!1182 = !DILocalVariable(name: "errnum", arg: 1, scope: !1183, file: !137, line: 188, type: !33)
!1183 = distinct !DISubprogram(name: "print_errno_message", scope: !137, file: !137, line: 188, type: !491, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1184)
!1184 = !{!1182, !1185, !1186}
!1185 = !DILocalVariable(name: "s", scope: !1183, file: !137, line: 190, type: !6)
!1186 = !DILocalVariable(name: "errbuf", scope: !1183, file: !137, line: 193, type: !1187)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1188)
!1188 = !{!1189}
!1189 = !DISubrange(count: 1024)
!1190 = !DILocation(line: 0, scope: !1183, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 234, column: 5, scope: !1180)
!1192 = !DILocation(line: 193, column: 3, scope: !1183, inlinedAt: !1191)
!1193 = !DILocation(line: 193, column: 8, scope: !1183, inlinedAt: !1191)
!1194 = !DILocation(line: 195, column: 7, scope: !1183, inlinedAt: !1191)
!1195 = !DILocation(line: 207, column: 9, scope: !1196, inlinedAt: !1191)
!1196 = distinct !DILexicalBlock(scope: !1183, file: !137, line: 207, column: 7)
!1197 = !DILocation(line: 207, column: 7, scope: !1183, inlinedAt: !1191)
!1198 = !DILocation(line: 208, column: 9, scope: !1196, inlinedAt: !1191)
!1199 = !DILocation(line: 208, column: 5, scope: !1196, inlinedAt: !1191)
!1200 = !DILocation(line: 214, column: 3, scope: !1183, inlinedAt: !1191)
!1201 = !DILocation(line: 216, column: 1, scope: !1183, inlinedAt: !1191)
!1202 = !DILocation(line: 234, column: 5, scope: !1180)
!1203 = !DILocation(line: 238, column: 3, scope: !1118)
!1204 = !DILocalVariable(name: "__c", arg: 1, scope: !1205, file: !1206, line: 101, type: !33)
!1205 = distinct !DISubprogram(name: "putc_unlocked", scope: !1206, file: !1206, line: 101, type: !1207, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1209)
!1206 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!33, !33, !1134}
!1209 = !{!1204, !1210}
!1210 = !DILocalVariable(name: "__stream", arg: 2, scope: !1205, file: !1206, line: 101, type: !1134)
!1211 = !DILocation(line: 0, scope: !1205, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 238, column: 3, scope: !1118)
!1213 = !DILocation(line: 103, column: 10, scope: !1205, inlinedAt: !1212)
!1214 = !{!1215, !502, i64 40}
!1215 = !{!"_IO_FILE", !588, i64 0, !502, i64 8, !502, i64 16, !502, i64 24, !502, i64 32, !502, i64 40, !502, i64 48, !502, i64 56, !502, i64 64, !502, i64 72, !502, i64 80, !502, i64 88, !502, i64 96, !502, i64 104, !588, i64 112, !588, i64 116, !934, i64 120, !622, i64 128, !503, i64 130, !503, i64 131, !502, i64 136, !934, i64 144, !502, i64 152, !502, i64 160, !502, i64 168, !502, i64 176, !934, i64 184, !588, i64 192, !503, i64 196}
!1216 = !{!1215, !502, i64 48}
!1217 = !{!"branch_weights", i32 2000, i32 1}
!1218 = !DILocation(line: 240, column: 3, scope: !1118)
!1219 = !DILocation(line: 241, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1118, file: !137, line: 241, column: 7)
!1221 = !DILocation(line: 241, column: 7, scope: !1118)
!1222 = !DILocation(line: 242, column: 5, scope: !1220)
!1223 = !DILocation(line: 243, column: 1, scope: !1118)
!1224 = !DISubprogram(name: "strerror_r", scope: !1225, file: !1225, line: 444, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1225 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!39, !33, !39, !35}
!1228 = !DISubprogram(name: "fflush_unlocked", scope: !146, file: !146, line: 239, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!33, !1134}
!1231 = !DISubprogram(name: "fcntl", scope: !1232, file: !1232, line: 149, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1232 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!33, !33, !33, null}
!1235 = distinct !DISubprogram(name: "error", scope: !137, file: !137, line: 285, type: !1236, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !33, !33, !6, null}
!1238 = !{!1239, !1240, !1241, !1242}
!1239 = !DILocalVariable(name: "status", arg: 1, scope: !1235, file: !137, line: 285, type: !33)
!1240 = !DILocalVariable(name: "errnum", arg: 2, scope: !1235, file: !137, line: 285, type: !33)
!1241 = !DILocalVariable(name: "message", arg: 3, scope: !1235, file: !137, line: 285, type: !6)
!1242 = !DILocalVariable(name: "ap", scope: !1235, file: !137, line: 287, type: !145)
!1243 = !DILocation(line: 0, scope: !1235)
!1244 = !DILocation(line: 287, column: 3, scope: !1235)
!1245 = !DILocation(line: 287, column: 11, scope: !1235)
!1246 = !DILocation(line: 288, column: 3, scope: !1235)
!1247 = !DILocation(line: 289, column: 3, scope: !1235)
!1248 = !DILocation(line: 290, column: 3, scope: !1235)
!1249 = !DILocation(line: 291, column: 1, scope: !1235)
!1250 = !DILocation(line: 0, scope: !142)
!1251 = !DILocation(line: 298, column: 1, scope: !142)
!1252 = !DILocation(line: 302, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !142, file: !137, line: 302, column: 7)
!1254 = !DILocation(line: 302, column: 7, scope: !142)
!1255 = !DILocation(line: 307, column: 11, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !137, line: 307, column: 11)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !137, line: 303, column: 5)
!1258 = !DILocation(line: 307, column: 27, scope: !1256)
!1259 = !DILocation(line: 308, column: 11, scope: !1256)
!1260 = !DILocation(line: 308, column: 28, scope: !1256)
!1261 = !DILocation(line: 308, column: 25, scope: !1256)
!1262 = !DILocation(line: 309, column: 15, scope: !1256)
!1263 = !DILocation(line: 309, column: 33, scope: !1256)
!1264 = !DILocation(line: 310, column: 19, scope: !1256)
!1265 = !DILocation(line: 311, column: 22, scope: !1256)
!1266 = !DILocation(line: 311, column: 56, scope: !1256)
!1267 = !DILocation(line: 307, column: 11, scope: !1257)
!1268 = !DILocation(line: 316, column: 21, scope: !1257)
!1269 = !DILocation(line: 317, column: 23, scope: !1257)
!1270 = !DILocation(line: 318, column: 5, scope: !1257)
!1271 = !DILocation(line: 327, column: 3, scope: !142)
!1272 = !DILocation(line: 331, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !142, file: !137, line: 331, column: 7)
!1274 = !DILocation(line: 331, column: 7, scope: !142)
!1275 = !DILocation(line: 332, column: 5, scope: !1273)
!1276 = !DILocation(line: 338, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !137, line: 334, column: 5)
!1278 = !DILocation(line: 346, column: 3, scope: !142)
!1279 = !DILocation(line: 350, column: 3, scope: !142)
!1280 = !DILocation(line: 356, column: 1, scope: !142)
!1281 = distinct !DISubprogram(name: "error_at_line", scope: !137, file: !137, line: 359, type: !1282, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1284)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !33, !33, !6, !14, !6, null}
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290}
!1285 = !DILocalVariable(name: "status", arg: 1, scope: !1281, file: !137, line: 359, type: !33)
!1286 = !DILocalVariable(name: "errnum", arg: 2, scope: !1281, file: !137, line: 359, type: !33)
!1287 = !DILocalVariable(name: "file_name", arg: 3, scope: !1281, file: !137, line: 359, type: !6)
!1288 = !DILocalVariable(name: "line_number", arg: 4, scope: !1281, file: !137, line: 360, type: !14)
!1289 = !DILocalVariable(name: "message", arg: 5, scope: !1281, file: !137, line: 360, type: !6)
!1290 = !DILocalVariable(name: "ap", scope: !1281, file: !137, line: 362, type: !145)
!1291 = !DILocation(line: 0, scope: !1281)
!1292 = !DILocation(line: 362, column: 3, scope: !1281)
!1293 = !DILocation(line: 362, column: 11, scope: !1281)
!1294 = !DILocation(line: 363, column: 3, scope: !1281)
!1295 = !DILocation(line: 364, column: 3, scope: !1281)
!1296 = !DILocation(line: 366, column: 3, scope: !1281)
!1297 = !DILocation(line: 367, column: 1, scope: !1281)
!1298 = distinct !DISubprogram(name: "rpl_fcntl", scope: !178, file: !178, line: 202, type: !1233, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1299)
!1299 = !{!1300, !1301, !1302, !1313, !1314, !1317, !1319, !1323}
!1300 = !DILocalVariable(name: "fd", arg: 1, scope: !1298, file: !178, line: 202, type: !33)
!1301 = !DILocalVariable(name: "action", arg: 2, scope: !1298, file: !178, line: 202, type: !33)
!1302 = !DILocalVariable(name: "arg", scope: !1298, file: !178, line: 208, type: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !148, line: 14, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1305, baseType: !1306)
!1305 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311, !1312}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1306, file: !1305, line: 208, baseType: !32, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1306, file: !1305, line: 208, baseType: !32, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1306, file: !1305, line: 208, baseType: !32, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1306, file: !1305, line: 208, baseType: !33, size: 32, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1306, file: !1305, line: 208, baseType: !33, size: 32, offset: 224)
!1313 = !DILocalVariable(name: "result", scope: !1298, file: !178, line: 211, type: !33)
!1314 = !DILocalVariable(name: "target", scope: !1315, file: !178, line: 216, type: !33)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !178, line: 215, column: 7)
!1316 = distinct !DILexicalBlock(scope: !1298, file: !178, line: 213, column: 5)
!1317 = !DILocalVariable(name: "target", scope: !1318, file: !178, line: 223, type: !33)
!1318 = distinct !DILexicalBlock(scope: !1316, file: !178, line: 222, column: 7)
!1319 = !DILocalVariable(name: "x", scope: !1320, file: !178, line: 418, type: !33)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !178, line: 417, column: 13)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !178, line: 261, column: 11)
!1322 = distinct !DILexicalBlock(scope: !1316, file: !178, line: 258, column: 7)
!1323 = !DILocalVariable(name: "p", scope: !1324, file: !178, line: 426, type: !32)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !178, line: 425, column: 13)
!1325 = !DILocation(line: 0, scope: !1298)
!1326 = !DILocation(line: 208, column: 3, scope: !1298)
!1327 = !DILocation(line: 208, column: 11, scope: !1298)
!1328 = !DILocation(line: 209, column: 3, scope: !1298)
!1329 = !DILocation(line: 212, column: 3, scope: !1298)
!1330 = !DILocation(line: 216, column: 22, scope: !1315)
!1331 = !DILocation(line: 0, scope: !1315)
!1332 = !DILocalVariable(name: "fd", arg: 1, scope: !1333, file: !178, line: 444, type: !33)
!1333 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !178, file: !178, line: 444, type: !179, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1334)
!1334 = !{!1332, !1335, !1336}
!1335 = !DILocalVariable(name: "target", arg: 2, scope: !1333, file: !178, line: 444, type: !33)
!1336 = !DILocalVariable(name: "result", scope: !1333, file: !178, line: 446, type: !33)
!1337 = !DILocation(line: 0, scope: !1333, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 217, column: 18, scope: !1315)
!1339 = !DILocation(line: 479, column: 12, scope: !1333, inlinedAt: !1338)
!1340 = !DILocation(line: 223, column: 22, scope: !1318)
!1341 = !DILocation(line: 0, scope: !1318)
!1342 = !DILocation(line: 0, scope: !177, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 224, column: 18, scope: !1318)
!1344 = !DILocation(line: 507, column: 12, scope: !1345, inlinedAt: !1343)
!1345 = distinct !DILexicalBlock(scope: !177, file: !178, line: 507, column: 7)
!1346 = !DILocation(line: 507, column: 9, scope: !1345, inlinedAt: !1343)
!1347 = !DILocation(line: 507, column: 7, scope: !177, inlinedAt: !1343)
!1348 = !DILocation(line: 509, column: 16, scope: !1349, inlinedAt: !1343)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !178, line: 508, column: 5)
!1350 = !DILocation(line: 510, column: 13, scope: !1351, inlinedAt: !1343)
!1351 = distinct !DILexicalBlock(scope: !1349, file: !178, line: 510, column: 11)
!1352 = !DILocation(line: 510, column: 23, scope: !1351, inlinedAt: !1343)
!1353 = !DILocation(line: 510, column: 26, scope: !1351, inlinedAt: !1343)
!1354 = !DILocation(line: 510, column: 32, scope: !1351, inlinedAt: !1343)
!1355 = !DILocation(line: 510, column: 11, scope: !1349, inlinedAt: !1343)
!1356 = !DILocation(line: 512, column: 30, scope: !1357, inlinedAt: !1343)
!1357 = distinct !DILexicalBlock(scope: !1351, file: !178, line: 511, column: 9)
!1358 = !DILocation(line: 528, column: 19, scope: !189, inlinedAt: !1343)
!1359 = !DILocation(line: 0, scope: !1333, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 520, column: 20, scope: !1361, inlinedAt: !1343)
!1361 = distinct !DILexicalBlock(scope: !1351, file: !178, line: 519, column: 9)
!1362 = !DILocation(line: 479, column: 12, scope: !1333, inlinedAt: !1360)
!1363 = !DILocation(line: 521, column: 22, scope: !1364, inlinedAt: !1343)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !178, line: 521, column: 15)
!1365 = !DILocation(line: 521, column: 15, scope: !1361, inlinedAt: !1343)
!1366 = !DILocation(line: 522, column: 32, scope: !1364, inlinedAt: !1343)
!1367 = !DILocation(line: 522, column: 13, scope: !1364, inlinedAt: !1343)
!1368 = !DILocation(line: 0, scope: !1333, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 527, column: 14, scope: !1345, inlinedAt: !1343)
!1370 = !DILocation(line: 479, column: 12, scope: !1333, inlinedAt: !1369)
!1371 = !DILocation(line: 0, scope: !1345, inlinedAt: !1343)
!1372 = !DILocation(line: 528, column: 9, scope: !189, inlinedAt: !1343)
!1373 = !DILocation(line: 530, column: 19, scope: !188, inlinedAt: !1343)
!1374 = !DILocation(line: 0, scope: !188, inlinedAt: !1343)
!1375 = !DILocation(line: 531, column: 17, scope: !192, inlinedAt: !1343)
!1376 = !DILocation(line: 531, column: 21, scope: !192, inlinedAt: !1343)
!1377 = !DILocation(line: 531, column: 54, scope: !192, inlinedAt: !1343)
!1378 = !DILocation(line: 531, column: 24, scope: !192, inlinedAt: !1343)
!1379 = !DILocation(line: 531, column: 68, scope: !192, inlinedAt: !1343)
!1380 = !DILocation(line: 531, column: 11, scope: !188, inlinedAt: !1343)
!1381 = !DILocation(line: 533, column: 29, scope: !191, inlinedAt: !1343)
!1382 = !DILocation(line: 0, scope: !191, inlinedAt: !1343)
!1383 = !DILocation(line: 534, column: 11, scope: !191, inlinedAt: !1343)
!1384 = !DILocation(line: 535, column: 17, scope: !191, inlinedAt: !1343)
!1385 = !DILocation(line: 537, column: 9, scope: !191, inlinedAt: !1343)
!1386 = !DILocation(line: 329, column: 22, scope: !1321)
!1387 = !DILocation(line: 330, column: 13, scope: !1321)
!1388 = !DILocation(line: 418, column: 23, scope: !1320)
!1389 = !DILocation(line: 0, scope: !1320)
!1390 = !DILocation(line: 419, column: 24, scope: !1320)
!1391 = !DILocation(line: 421, column: 13, scope: !1321)
!1392 = !DILocation(line: 426, column: 25, scope: !1324)
!1393 = !DILocation(line: 0, scope: !1324)
!1394 = !DILocation(line: 427, column: 24, scope: !1324)
!1395 = !DILocation(line: 429, column: 13, scope: !1321)
!1396 = !DILocation(line: 0, scope: !1316)
!1397 = !DILocation(line: 438, column: 3, scope: !1298)
!1398 = !DILocation(line: 441, column: 1, scope: !1298)
!1399 = !DILocation(line: 440, column: 3, scope: !1298)
!1400 = distinct !DISubprogram(name: "full_write", scope: !398, file: !398, line: 58, type: !1401, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!441, !33, !705, !441}
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409}
!1404 = !DILocalVariable(name: "fd", arg: 1, scope: !1400, file: !398, line: 58, type: !33)
!1405 = !DILocalVariable(name: "buf", arg: 2, scope: !1400, file: !398, line: 58, type: !705)
!1406 = !DILocalVariable(name: "count", arg: 3, scope: !1400, file: !398, line: 58, type: !441)
!1407 = !DILocalVariable(name: "total", scope: !1400, file: !398, line: 60, type: !441)
!1408 = !DILocalVariable(name: "ptr", scope: !1400, file: !398, line: 61, type: !6)
!1409 = !DILocalVariable(name: "n_rw", scope: !1410, file: !398, line: 65, type: !443)
!1410 = distinct !DILexicalBlock(scope: !1400, file: !398, line: 64, column: 5)
!1411 = !DILocation(line: 0, scope: !1400)
!1412 = !DILocation(line: 63, column: 16, scope: !1400)
!1413 = !DILocation(line: 63, column: 3, scope: !1400)
!1414 = !DILocation(line: 65, column: 24, scope: !1410)
!1415 = !DILocation(line: 0, scope: !1410)
!1416 = !DILocation(line: 66, column: 16, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1410, file: !398, line: 66, column: 11)
!1418 = !DILocation(line: 66, column: 11, scope: !1410)
!1419 = !DILocation(line: 68, column: 16, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1410, file: !398, line: 68, column: 11)
!1421 = !DILocation(line: 68, column: 11, scope: !1410)
!1422 = !DILocation(line: 70, column: 11, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !398, line: 69, column: 9)
!1424 = !DILocation(line: 70, column: 17, scope: !1423)
!1425 = !DILocation(line: 71, column: 11, scope: !1423)
!1426 = !DILocation(line: 73, column: 13, scope: !1410)
!1427 = !DILocation(line: 74, column: 11, scope: !1410)
!1428 = !DILocation(line: 75, column: 13, scope: !1410)
!1429 = !DILocation(line: 78, column: 3, scope: !1400)
!1430 = distinct !DISubprogram(name: "getprogname", scope: !401, file: !401, line: 54, type: !1431, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !579)
!1431 = !DISubroutineType(types: !399)
!1432 = !DILocation(line: 58, column: 10, scope: !1430)
!1433 = !DILocation(line: 58, column: 3, scope: !1430)
!1434 = distinct !DISubprogram(name: "isapipe", scope: !403, file: !403, line: 72, type: !1032, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !1435)
!1435 = !{!1436, !1437, !1441, !1442, !1476}
!1436 = !DILocalVariable(name: "fd", arg: 1, scope: !1434, file: !403, line: 72, type: !33)
!1437 = !DILocalVariable(name: "pipe_link_count_max", scope: !1434, file: !403, line: 74, type: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1439, line: 74, baseType: !1440)
!1439 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !88, line: 151, baseType: !14)
!1441 = !DILocalVariable(name: "check_for_fifo", scope: !1434, file: !403, line: 75, type: !48)
!1442 = !DILocalVariable(name: "st", scope: !1434, file: !403, line: 77, type: !1443)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1444, line: 44, size: 1024, elements: !1445)
!1444 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1445 = !{!1446, !1448, !1450, !1452, !1453, !1455, !1457, !1458, !1459, !1460, !1462, !1463, !1465, !1473, !1474, !1475}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1443, file: !1444, line: 46, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !88, line: 145, baseType: !37)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1443, file: !1444, line: 47, baseType: !1449, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !88, line: 148, baseType: !37)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1443, file: !1444, line: 48, baseType: !1451, size: 32, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !88, line: 150, baseType: !14)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1443, file: !1444, line: 49, baseType: !1440, size: 32, offset: 160)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1443, file: !1444, line: 50, baseType: !1454, size: 32, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !88, line: 146, baseType: !14)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1443, file: !1444, line: 51, baseType: !1456, size: 32, offset: 224)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !88, line: 147, baseType: !14)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1443, file: !1444, line: 52, baseType: !1447, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1443, file: !1444, line: 53, baseType: !1447, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1443, file: !1444, line: 54, baseType: !87, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1443, file: !1444, line: 55, baseType: !1461, size: 32, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !88, line: 175, baseType: !33)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1443, file: !1444, line: 56, baseType: !33, size: 32, offset: 480)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1443, file: !1444, line: 57, baseType: !1464, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !88, line: 180, baseType: !89)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1443, file: !1444, line: 65, baseType: !1466, size: 128, offset: 576)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1467, line: 11, size: 128, elements: !1468)
!1467 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1468 = !{!1469, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1466, file: !1467, line: 16, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !88, line: 160, baseType: !89)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1466, file: !1467, line: 21, baseType: !1472, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !88, line: 197, baseType: !89)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1443, file: !1444, line: 66, baseType: !1466, size: 128, offset: 704)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1443, file: !1444, line: 67, baseType: !1466, size: 128, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1443, file: !1444, line: 79, baseType: !383, size: 64, offset: 960)
!1476 = !DILocalVariable(name: "fstat_result", scope: !1434, file: !403, line: 78, type: !33)
!1477 = !DILocation(line: 0, scope: !1434)
!1478 = !DILocation(line: 77, column: 3, scope: !1434)
!1479 = !DILocation(line: 77, column: 15, scope: !1434)
!1480 = !DILocation(line: 78, column: 22, scope: !1434)
!1481 = !DILocation(line: 79, column: 20, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1434, file: !403, line: 79, column: 7)
!1483 = !DILocation(line: 79, column: 7, scope: !1434)
!1484 = !DILocation(line: 118, column: 9, scope: !1434)
!1485 = !{!1486, !588, i64 20}
!1486 = !{!"stat", !934, i64 0, !934, i64 8, !588, i64 16, !588, i64 20, !588, i64 24, !588, i64 28, !934, i64 32, !934, i64 40, !934, i64 48, !588, i64 56, !588, i64 60, !934, i64 64, !1487, i64 72, !1487, i64 88, !1487, i64 104, !503, i64 120}
!1487 = !{!"timespec", !934, i64 0, !934, i64 8}
!1488 = !DILocation(line: 118, column: 18, scope: !1434)
!1489 = !DILocation(line: 119, column: 6, scope: !1434)
!1490 = !DILocation(line: 117, column: 3, scope: !1434)
!1491 = !DILocation(line: 120, column: 1, scope: !1434)
!1492 = !DISubprogram(name: "fstat", scope: !1493, file: !1493, line: 210, type: !1494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1493 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!33, !33, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1497 = distinct !DISubprogram(name: "parse_long_options", scope: !196, file: !196, line: 45, type: !1498, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !1501)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !33, !710, !6, !6, !6, !1500, null}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1512}
!1502 = !DILocalVariable(name: "argc", arg: 1, scope: !1497, file: !196, line: 45, type: !33)
!1503 = !DILocalVariable(name: "argv", arg: 2, scope: !1497, file: !196, line: 46, type: !710)
!1504 = !DILocalVariable(name: "command_name", arg: 3, scope: !1497, file: !196, line: 47, type: !6)
!1505 = !DILocalVariable(name: "package", arg: 4, scope: !1497, file: !196, line: 48, type: !6)
!1506 = !DILocalVariable(name: "version", arg: 5, scope: !1497, file: !196, line: 49, type: !6)
!1507 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1497, file: !196, line: 50, type: !1500)
!1508 = !DILocalVariable(name: "saved_opterr", scope: !1497, file: !196, line: 53, type: !33)
!1509 = !DILocalVariable(name: "c", scope: !1510, file: !196, line: 60, type: !33)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !196, line: 59, column: 5)
!1511 = distinct !DILexicalBlock(scope: !1497, file: !196, line: 58, column: 7)
!1512 = !DILocalVariable(name: "authors", scope: !1513, file: !196, line: 71, type: !1517)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !196, line: 70, column: 15)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !196, line: 64, column: 13)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !196, line: 62, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !196, line: 61, column: 11)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1520, baseType: !1521)
!1520 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1521, file: !1520, line: 71, baseType: !32, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1521, file: !1520, line: 71, baseType: !32, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1521, file: !1520, line: 71, baseType: !32, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1521, file: !1520, line: 71, baseType: !33, size: 32, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1521, file: !1520, line: 71, baseType: !33, size: 32, offset: 224)
!1528 = !DILocation(line: 0, scope: !1497)
!1529 = !DILocation(line: 53, column: 22, scope: !1497)
!1530 = !DILocation(line: 56, column: 10, scope: !1497)
!1531 = !DILocation(line: 58, column: 12, scope: !1511)
!1532 = !DILocation(line: 58, column: 7, scope: !1497)
!1533 = !DILocation(line: 60, column: 15, scope: !1510)
!1534 = !DILocation(line: 0, scope: !1510)
!1535 = !DILocation(line: 61, column: 11, scope: !1510)
!1536 = !DILocation(line: 66, column: 15, scope: !1514)
!1537 = !DILocation(line: 67, column: 15, scope: !1514)
!1538 = !DILocation(line: 71, column: 17, scope: !1513)
!1539 = !DILocation(line: 71, column: 25, scope: !1513)
!1540 = !DILocation(line: 72, column: 17, scope: !1513)
!1541 = !DILocation(line: 73, column: 33, scope: !1513)
!1542 = !DILocation(line: 73, column: 17, scope: !1513)
!1543 = !DILocation(line: 74, column: 17, scope: !1513)
!1544 = !DILocation(line: 85, column: 10, scope: !1497)
!1545 = !DILocation(line: 89, column: 10, scope: !1497)
!1546 = !DILocation(line: 90, column: 1, scope: !1497)
!1547 = !DISubprogram(name: "getopt_long", scope: !201, file: !201, line: 66, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!33, !33, !1550, !6, !1552, !206}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1553 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !196, file: !196, line: 98, type: !1554, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !1556)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !33, !710, !6, !6, !6, !48, !1500, null}
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1557 = !DILocalVariable(name: "argc", arg: 1, scope: !1553, file: !196, line: 98, type: !33)
!1558 = !DILocalVariable(name: "argv", arg: 2, scope: !1553, file: !196, line: 99, type: !710)
!1559 = !DILocalVariable(name: "command_name", arg: 3, scope: !1553, file: !196, line: 100, type: !6)
!1560 = !DILocalVariable(name: "package", arg: 4, scope: !1553, file: !196, line: 101, type: !6)
!1561 = !DILocalVariable(name: "version", arg: 5, scope: !1553, file: !196, line: 102, type: !6)
!1562 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1553, file: !196, line: 103, type: !48)
!1563 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1553, file: !196, line: 104, type: !1500)
!1564 = !DILocalVariable(name: "saved_opterr", scope: !1553, file: !196, line: 107, type: !33)
!1565 = !DILocalVariable(name: "optstring", scope: !1553, file: !196, line: 112, type: !6)
!1566 = !DILocalVariable(name: "c", scope: !1553, file: !196, line: 114, type: !33)
!1567 = !DILocalVariable(name: "authors", scope: !1568, file: !196, line: 125, type: !1517)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !196, line: 124, column: 11)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !196, line: 118, column: 9)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !196, line: 116, column: 5)
!1571 = distinct !DILexicalBlock(scope: !1553, file: !196, line: 115, column: 7)
!1572 = !DILocation(line: 0, scope: !1553)
!1573 = !DILocation(line: 107, column: 22, scope: !1553)
!1574 = !DILocation(line: 110, column: 10, scope: !1553)
!1575 = !DILocation(line: 112, column: 27, scope: !1553)
!1576 = !DILocation(line: 114, column: 11, scope: !1553)
!1577 = !DILocation(line: 115, column: 7, scope: !1553)
!1578 = !DILocation(line: 125, column: 13, scope: !1568)
!1579 = !DILocation(line: 125, column: 21, scope: !1568)
!1580 = !DILocation(line: 126, column: 13, scope: !1568)
!1581 = !DILocation(line: 127, column: 29, scope: !1568)
!1582 = !DILocation(line: 127, column: 13, scope: !1568)
!1583 = !DILocation(line: 128, column: 13, scope: !1568)
!1584 = !DILocation(line: 132, column: 26, scope: !1569)
!1585 = !DILocation(line: 133, column: 11, scope: !1569)
!1586 = !DILocation(line: 0, scope: !1569)
!1587 = !DILocation(line: 138, column: 10, scope: !1553)
!1588 = !DILocation(line: 139, column: 1, scope: !1553)
!1589 = distinct !DISubprogram(name: "pipe2_safer", scope: !405, file: !405, line: 31, type: !375, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1590)
!1590 = !{!1591, !1592, !1593, !1597}
!1591 = !DILocalVariable(name: "fd", arg: 1, scope: !1589, file: !405, line: 31, type: !206)
!1592 = !DILocalVariable(name: "flags", arg: 2, scope: !1589, file: !405, line: 31, type: !33)
!1593 = !DILocalVariable(name: "i", scope: !1594, file: !405, line: 36, type: !33)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !405, line: 36, column: 7)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !405, line: 35, column: 5)
!1596 = distinct !DILexicalBlock(scope: !1589, file: !405, line: 34, column: 7)
!1597 = !DILocalVariable(name: "saved_errno", scope: !1598, file: !405, line: 41, type: !33)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !405, line: 40, column: 13)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !405, line: 39, column: 15)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !405, line: 37, column: 9)
!1601 = distinct !DILexicalBlock(scope: !1594, file: !405, line: 36, column: 7)
!1602 = !DILocation(line: 0, scope: !1589)
!1603 = !DILocation(line: 34, column: 7, scope: !1596)
!1604 = !DILocation(line: 34, column: 25, scope: !1596)
!1605 = !DILocation(line: 34, column: 7, scope: !1589)
!1606 = !DILocation(line: 0, scope: !1594)
!1607 = !DILocation(line: 38, column: 34, scope: !1600)
!1608 = !DILocation(line: 38, column: 19, scope: !1600)
!1609 = !DILocation(line: 38, column: 17, scope: !1600)
!1610 = !DILocation(line: 39, column: 21, scope: !1599)
!1611 = !DILocation(line: 39, column: 15, scope: !1600)
!1612 = !DILocation(line: 41, column: 33, scope: !1598)
!1613 = !DILocation(line: 0, scope: !1598)
!1614 = !DILocation(line: 42, column: 22, scope: !1598)
!1615 = !DILocation(line: 42, column: 15, scope: !1598)
!1616 = !DILocation(line: 43, column: 21, scope: !1598)
!1617 = !DILocation(line: 51, column: 1, scope: !1589)
!1618 = distinct !DISubprogram(name: "set_program_name", scope: !213, file: !213, line: 37, type: !512, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1619)
!1619 = !{!1620, !1621, !1622}
!1620 = !DILocalVariable(name: "argv0", arg: 1, scope: !1618, file: !213, line: 37, type: !6)
!1621 = !DILocalVariable(name: "slash", scope: !1618, file: !213, line: 44, type: !6)
!1622 = !DILocalVariable(name: "base", scope: !1618, file: !213, line: 45, type: !6)
!1623 = !DILocation(line: 0, scope: !1618)
!1624 = !DILocation(line: 44, column: 23, scope: !1618)
!1625 = !DILocation(line: 45, column: 22, scope: !1618)
!1626 = !DILocation(line: 46, column: 17, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !213, line: 46, column: 7)
!1628 = !DILocation(line: 46, column: 9, scope: !1627)
!1629 = !DILocation(line: 46, column: 25, scope: !1627)
!1630 = !DILocation(line: 46, column: 40, scope: !1627)
!1631 = !DILocalVariable(name: "__s1", arg: 1, scope: !1632, file: !537, line: 974, type: !705)
!1632 = distinct !DISubprogram(name: "memeq", scope: !537, file: !537, line: 974, type: !1633, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!48, !705, !705, !35}
!1635 = !{!1631, !1636, !1637}
!1636 = !DILocalVariable(name: "__s2", arg: 2, scope: !1632, file: !537, line: 974, type: !705)
!1637 = !DILocalVariable(name: "__n", arg: 3, scope: !1632, file: !537, line: 974, type: !35)
!1638 = !DILocation(line: 0, scope: !1632, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 46, column: 28, scope: !1627)
!1640 = !DILocation(line: 976, column: 11, scope: !1632, inlinedAt: !1639)
!1641 = !DILocation(line: 976, column: 10, scope: !1632, inlinedAt: !1639)
!1642 = !DILocation(line: 46, column: 7, scope: !1618)
!1643 = !DILocation(line: 49, column: 11, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !213, line: 49, column: 11)
!1645 = distinct !DILexicalBlock(scope: !1627, file: !213, line: 47, column: 5)
!1646 = !DILocation(line: 49, column: 36, scope: !1644)
!1647 = !DILocation(line: 49, column: 11, scope: !1645)
!1648 = !DILocation(line: 65, column: 16, scope: !1618)
!1649 = !DILocation(line: 71, column: 27, scope: !1618)
!1650 = !DILocation(line: 74, column: 33, scope: !1618)
!1651 = !DILocation(line: 76, column: 1, scope: !1618)
!1652 = !DILocation(line: 0, scope: !218)
!1653 = !DILocation(line: 40, column: 29, scope: !218)
!1654 = !DILocation(line: 41, column: 19, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !218, file: !219, line: 41, column: 7)
!1656 = !DILocation(line: 41, column: 7, scope: !218)
!1657 = !DILocation(line: 47, column: 3, scope: !218)
!1658 = !DILocation(line: 48, column: 3, scope: !218)
!1659 = !DILocation(line: 48, column: 13, scope: !218)
!1660 = !DILocalVariable(name: "ps", arg: 1, scope: !1661, file: !1662, line: 1135, type: !1665)
!1661 = distinct !DISubprogram(name: "mbszero", scope: !1662, file: !1662, line: 1135, type: !1663, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !1666)
!1662 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!1666 = !{!1660}
!1667 = !DILocation(line: 0, scope: !1661, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 48, column: 18, scope: !218)
!1669 = !DILocalVariable(name: "__dest", arg: 1, scope: !1670, file: !773, line: 57, type: !32)
!1670 = distinct !DISubprogram(name: "memset", scope: !773, file: !773, line: 57, type: !1671, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!32, !32, !33, !35}
!1673 = !{!1669, !1674, !1675}
!1674 = !DILocalVariable(name: "__ch", arg: 2, scope: !1670, file: !773, line: 57, type: !33)
!1675 = !DILocalVariable(name: "__len", arg: 3, scope: !1670, file: !773, line: 57, type: !35)
!1676 = !DILocation(line: 0, scope: !1670, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 1137, column: 3, scope: !1661, inlinedAt: !1668)
!1678 = !DILocation(line: 59, column: 10, scope: !1670, inlinedAt: !1677)
!1679 = !DILocation(line: 49, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !218, file: !219, line: 49, column: 7)
!1681 = !DILocation(line: 49, column: 39, scope: !1680)
!1682 = !DILocation(line: 49, column: 44, scope: !1680)
!1683 = !DILocation(line: 54, column: 1, scope: !218)
!1684 = !DISubprogram(name: "mbrtoc32", scope: !230, file: !230, line: 57, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!35, !1687, !583, !35, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1688)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1665)
!1690 = distinct !DISubprogram(name: "clone_quoting_options", scope: !255, file: !255, line: 113, type: !1691, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1694)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1693, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1694 = !{!1695, !1696, !1697}
!1695 = !DILocalVariable(name: "o", arg: 1, scope: !1690, file: !255, line: 113, type: !1693)
!1696 = !DILocalVariable(name: "saved_errno", scope: !1690, file: !255, line: 115, type: !33)
!1697 = !DILocalVariable(name: "p", scope: !1690, file: !255, line: 116, type: !1693)
!1698 = !DILocation(line: 0, scope: !1690)
!1699 = !DILocation(line: 115, column: 21, scope: !1690)
!1700 = !DILocation(line: 116, column: 40, scope: !1690)
!1701 = !DILocation(line: 116, column: 31, scope: !1690)
!1702 = !DILocation(line: 118, column: 9, scope: !1690)
!1703 = !DILocation(line: 119, column: 3, scope: !1690)
!1704 = distinct !DISubprogram(name: "get_quoting_style", scope: !255, file: !255, line: 124, type: !1705, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1709)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!257, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!1709 = !{!1710}
!1710 = !DILocalVariable(name: "o", arg: 1, scope: !1704, file: !255, line: 124, type: !1707)
!1711 = !DILocation(line: 0, scope: !1704)
!1712 = !DILocation(line: 126, column: 11, scope: !1704)
!1713 = !DILocation(line: 126, column: 46, scope: !1704)
!1714 = !{!1715, !503, i64 0}
!1715 = !{!"quoting_options", !503, i64 0, !588, i64 4, !503, i64 8, !502, i64 40, !502, i64 48}
!1716 = !DILocation(line: 126, column: 3, scope: !1704)
!1717 = distinct !DISubprogram(name: "set_quoting_style", scope: !255, file: !255, line: 132, type: !1718, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !1693, !257}
!1720 = !{!1721, !1722}
!1721 = !DILocalVariable(name: "o", arg: 1, scope: !1717, file: !255, line: 132, type: !1693)
!1722 = !DILocalVariable(name: "s", arg: 2, scope: !1717, file: !255, line: 132, type: !257)
!1723 = !DILocation(line: 0, scope: !1717)
!1724 = !DILocation(line: 134, column: 4, scope: !1717)
!1725 = !DILocation(line: 134, column: 39, scope: !1717)
!1726 = !DILocation(line: 134, column: 45, scope: !1717)
!1727 = !DILocation(line: 135, column: 1, scope: !1717)
!1728 = distinct !DISubprogram(name: "set_char_quoting", scope: !255, file: !255, line: 143, type: !1729, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!33, !1693, !8, !33}
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1738, !1739}
!1732 = !DILocalVariable(name: "o", arg: 1, scope: !1728, file: !255, line: 143, type: !1693)
!1733 = !DILocalVariable(name: "c", arg: 2, scope: !1728, file: !255, line: 143, type: !8)
!1734 = !DILocalVariable(name: "i", arg: 3, scope: !1728, file: !255, line: 143, type: !33)
!1735 = !DILocalVariable(name: "uc", scope: !1728, file: !255, line: 145, type: !38)
!1736 = !DILocalVariable(name: "p", scope: !1728, file: !255, line: 146, type: !1737)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1738 = !DILocalVariable(name: "shift", scope: !1728, file: !255, line: 148, type: !33)
!1739 = !DILocalVariable(name: "r", scope: !1728, file: !255, line: 149, type: !14)
!1740 = !DILocation(line: 0, scope: !1728)
!1741 = !DILocation(line: 147, column: 6, scope: !1728)
!1742 = !DILocation(line: 147, column: 62, scope: !1728)
!1743 = !DILocation(line: 147, column: 57, scope: !1728)
!1744 = !DILocation(line: 148, column: 15, scope: !1728)
!1745 = !DILocation(line: 149, column: 21, scope: !1728)
!1746 = !DILocation(line: 149, column: 24, scope: !1728)
!1747 = !DILocation(line: 149, column: 34, scope: !1728)
!1748 = !DILocation(line: 150, column: 13, scope: !1728)
!1749 = !DILocation(line: 150, column: 19, scope: !1728)
!1750 = !DILocation(line: 150, column: 24, scope: !1728)
!1751 = !DILocation(line: 150, column: 6, scope: !1728)
!1752 = !DILocation(line: 151, column: 3, scope: !1728)
!1753 = distinct !DISubprogram(name: "set_quoting_flags", scope: !255, file: !255, line: 159, type: !1754, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!33, !1693, !33}
!1756 = !{!1757, !1758, !1759}
!1757 = !DILocalVariable(name: "o", arg: 1, scope: !1753, file: !255, line: 159, type: !1693)
!1758 = !DILocalVariable(name: "i", arg: 2, scope: !1753, file: !255, line: 159, type: !33)
!1759 = !DILocalVariable(name: "r", scope: !1753, file: !255, line: 163, type: !33)
!1760 = !DILocation(line: 0, scope: !1753)
!1761 = !DILocation(line: 161, column: 8, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1753, file: !255, line: 161, column: 7)
!1763 = !DILocation(line: 161, column: 7, scope: !1753)
!1764 = !DILocation(line: 163, column: 14, scope: !1753)
!1765 = !{!1715, !588, i64 4}
!1766 = !DILocation(line: 164, column: 12, scope: !1753)
!1767 = !DILocation(line: 165, column: 3, scope: !1753)
!1768 = distinct !DISubprogram(name: "set_custom_quoting", scope: !255, file: !255, line: 169, type: !1769, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1771)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1693, !6, !6}
!1771 = !{!1772, !1773, !1774}
!1772 = !DILocalVariable(name: "o", arg: 1, scope: !1768, file: !255, line: 169, type: !1693)
!1773 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1768, file: !255, line: 170, type: !6)
!1774 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1768, file: !255, line: 170, type: !6)
!1775 = !DILocation(line: 0, scope: !1768)
!1776 = !DILocation(line: 172, column: 8, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1768, file: !255, line: 172, column: 7)
!1778 = !DILocation(line: 172, column: 7, scope: !1768)
!1779 = !DILocation(line: 174, column: 6, scope: !1768)
!1780 = !DILocation(line: 174, column: 12, scope: !1768)
!1781 = !DILocation(line: 175, column: 8, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1768, file: !255, line: 175, column: 7)
!1783 = !DILocation(line: 175, column: 19, scope: !1782)
!1784 = !DILocation(line: 176, column: 5, scope: !1782)
!1785 = !DILocation(line: 177, column: 6, scope: !1768)
!1786 = !DILocation(line: 177, column: 17, scope: !1768)
!1787 = !{!1715, !502, i64 40}
!1788 = !DILocation(line: 178, column: 6, scope: !1768)
!1789 = !DILocation(line: 178, column: 18, scope: !1768)
!1790 = !{!1715, !502, i64 48}
!1791 = !DILocation(line: 179, column: 1, scope: !1768)
!1792 = distinct !DISubprogram(name: "quotearg_buffer", scope: !255, file: !255, line: 774, type: !1793, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1795)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!35, !39, !35, !6, !35, !1707}
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803}
!1796 = !DILocalVariable(name: "buffer", arg: 1, scope: !1792, file: !255, line: 774, type: !39)
!1797 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1792, file: !255, line: 774, type: !35)
!1798 = !DILocalVariable(name: "arg", arg: 3, scope: !1792, file: !255, line: 775, type: !6)
!1799 = !DILocalVariable(name: "argsize", arg: 4, scope: !1792, file: !255, line: 775, type: !35)
!1800 = !DILocalVariable(name: "o", arg: 5, scope: !1792, file: !255, line: 776, type: !1707)
!1801 = !DILocalVariable(name: "p", scope: !1792, file: !255, line: 778, type: !1707)
!1802 = !DILocalVariable(name: "saved_errno", scope: !1792, file: !255, line: 779, type: !33)
!1803 = !DILocalVariable(name: "r", scope: !1792, file: !255, line: 780, type: !35)
!1804 = !DILocation(line: 0, scope: !1792)
!1805 = !DILocation(line: 778, column: 37, scope: !1792)
!1806 = !DILocation(line: 779, column: 21, scope: !1792)
!1807 = !DILocation(line: 781, column: 43, scope: !1792)
!1808 = !DILocation(line: 781, column: 53, scope: !1792)
!1809 = !DILocation(line: 781, column: 60, scope: !1792)
!1810 = !DILocation(line: 782, column: 43, scope: !1792)
!1811 = !DILocation(line: 782, column: 58, scope: !1792)
!1812 = !DILocation(line: 780, column: 14, scope: !1792)
!1813 = !DILocation(line: 783, column: 9, scope: !1792)
!1814 = !DILocation(line: 784, column: 3, scope: !1792)
!1815 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !255, file: !255, line: 251, type: !1816, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1820)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!35, !39, !35, !6, !35, !257, !33, !1818, !6, !6}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1845, !1847, !1850, !1851, !1852, !1853, !1856, !1857, !1860, !1864, !1865, !1873, !1876, !1877, !1879, !1880, !1881, !1882}
!1821 = !DILocalVariable(name: "buffer", arg: 1, scope: !1815, file: !255, line: 251, type: !39)
!1822 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1815, file: !255, line: 251, type: !35)
!1823 = !DILocalVariable(name: "arg", arg: 3, scope: !1815, file: !255, line: 252, type: !6)
!1824 = !DILocalVariable(name: "argsize", arg: 4, scope: !1815, file: !255, line: 252, type: !35)
!1825 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1815, file: !255, line: 253, type: !257)
!1826 = !DILocalVariable(name: "flags", arg: 6, scope: !1815, file: !255, line: 253, type: !33)
!1827 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1815, file: !255, line: 254, type: !1818)
!1828 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1815, file: !255, line: 255, type: !6)
!1829 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1815, file: !255, line: 256, type: !6)
!1830 = !DILocalVariable(name: "unibyte_locale", scope: !1815, file: !255, line: 258, type: !48)
!1831 = !DILocalVariable(name: "len", scope: !1815, file: !255, line: 260, type: !35)
!1832 = !DILocalVariable(name: "orig_buffersize", scope: !1815, file: !255, line: 261, type: !35)
!1833 = !DILocalVariable(name: "quote_string", scope: !1815, file: !255, line: 262, type: !6)
!1834 = !DILocalVariable(name: "quote_string_len", scope: !1815, file: !255, line: 263, type: !35)
!1835 = !DILocalVariable(name: "backslash_escapes", scope: !1815, file: !255, line: 264, type: !48)
!1836 = !DILocalVariable(name: "elide_outer_quotes", scope: !1815, file: !255, line: 265, type: !48)
!1837 = !DILocalVariable(name: "encountered_single_quote", scope: !1815, file: !255, line: 266, type: !48)
!1838 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1815, file: !255, line: 267, type: !48)
!1839 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1815, file: !255, line: 309, type: !48)
!1840 = !DILocalVariable(name: "lq", scope: !1841, file: !255, line: 361, type: !6)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !255, line: 361, column: 11)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !255, line: 360, column: 13)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !255, line: 333, column: 7)
!1844 = distinct !DILexicalBlock(scope: !1815, file: !255, line: 312, column: 5)
!1845 = !DILocalVariable(name: "i", scope: !1846, file: !255, line: 395, type: !35)
!1846 = distinct !DILexicalBlock(scope: !1815, file: !255, line: 395, column: 3)
!1847 = !DILocalVariable(name: "is_right_quote", scope: !1848, file: !255, line: 397, type: !48)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !255, line: 396, column: 5)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !255, line: 395, column: 3)
!1850 = !DILocalVariable(name: "escaping", scope: !1848, file: !255, line: 398, type: !48)
!1851 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1848, file: !255, line: 399, type: !48)
!1852 = !DILocalVariable(name: "c", scope: !1848, file: !255, line: 417, type: !38)
!1853 = !DILocalVariable(name: "m", scope: !1854, file: !255, line: 598, type: !35)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 596, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1848, file: !255, line: 419, column: 9)
!1856 = !DILocalVariable(name: "printable", scope: !1854, file: !255, line: 600, type: !48)
!1857 = !DILocalVariable(name: "mbs", scope: !1858, file: !255, line: 609, type: !314)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !255, line: 608, column: 15)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !255, line: 602, column: 17)
!1860 = !DILocalVariable(name: "w", scope: !1861, file: !255, line: 618, type: !229)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !255, line: 617, column: 19)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !255, line: 616, column: 17)
!1863 = distinct !DILexicalBlock(scope: !1858, file: !255, line: 616, column: 17)
!1864 = !DILocalVariable(name: "bytes", scope: !1861, file: !255, line: 619, type: !35)
!1865 = !DILocalVariable(name: "j", scope: !1866, file: !255, line: 648, type: !35)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !255, line: 648, column: 29)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !255, line: 647, column: 27)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !255, line: 645, column: 29)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !255, line: 636, column: 23)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !255, line: 628, column: 30)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !255, line: 623, column: 30)
!1872 = distinct !DILexicalBlock(scope: !1861, file: !255, line: 621, column: 25)
!1873 = !DILocalVariable(name: "ilim", scope: !1874, file: !255, line: 674, type: !35)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !255, line: 671, column: 15)
!1875 = distinct !DILexicalBlock(scope: !1854, file: !255, line: 670, column: 17)
!1876 = !DILabel(scope: !1815, name: "process_input", file: !255, line: 308)
!1877 = !DILabel(scope: !1878, name: "c_and_shell_escape", file: !255, line: 502)
!1878 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 478, column: 9)
!1879 = !DILabel(scope: !1878, name: "c_escape", file: !255, line: 507)
!1880 = !DILabel(scope: !1848, name: "store_escape", file: !255, line: 709)
!1881 = !DILabel(scope: !1848, name: "store_c", file: !255, line: 712)
!1882 = !DILabel(scope: !1815, name: "force_outer_quoting_style", file: !255, line: 753)
!1883 = !DILocation(line: 0, scope: !1815)
!1884 = !DILocation(line: 258, column: 25, scope: !1815)
!1885 = !DILocation(line: 258, column: 36, scope: !1815)
!1886 = !DILocation(line: 267, column: 3, scope: !1815)
!1887 = !DILocation(line: 261, column: 10, scope: !1815)
!1888 = !DILocation(line: 262, column: 15, scope: !1815)
!1889 = !DILocation(line: 263, column: 10, scope: !1815)
!1890 = !DILocation(line: 308, column: 2, scope: !1815)
!1891 = !DILocation(line: 311, column: 3, scope: !1815)
!1892 = !DILocation(line: 318, column: 11, scope: !1844)
!1893 = !DILocation(line: 319, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !255, line: 319, column: 9)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !255, line: 319, column: 9)
!1896 = distinct !DILexicalBlock(scope: !1844, file: !255, line: 318, column: 11)
!1897 = !DILocation(line: 319, column: 9, scope: !1895)
!1898 = !DILocation(line: 0, scope: !305, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 357, column: 26, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !255, line: 335, column: 11)
!1901 = distinct !DILexicalBlock(scope: !1843, file: !255, line: 334, column: 13)
!1902 = !DILocation(line: 199, column: 29, scope: !305, inlinedAt: !1899)
!1903 = !DILocation(line: 201, column: 19, scope: !1904, inlinedAt: !1899)
!1904 = distinct !DILexicalBlock(scope: !305, file: !255, line: 201, column: 7)
!1905 = !DILocation(line: 201, column: 7, scope: !305, inlinedAt: !1899)
!1906 = !DILocation(line: 229, column: 3, scope: !305, inlinedAt: !1899)
!1907 = !DILocation(line: 230, column: 3, scope: !305, inlinedAt: !1899)
!1908 = !DILocation(line: 230, column: 13, scope: !305, inlinedAt: !1899)
!1909 = !DILocalVariable(name: "ps", arg: 1, scope: !1910, file: !1662, line: 1135, type: !1913)
!1910 = distinct !DISubprogram(name: "mbszero", scope: !1662, file: !1662, line: 1135, type: !1911, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1914)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1913}
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1914 = !{!1909}
!1915 = !DILocation(line: 0, scope: !1910, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 230, column: 18, scope: !305, inlinedAt: !1899)
!1917 = !DILocalVariable(name: "__dest", arg: 1, scope: !1918, file: !773, line: 57, type: !32)
!1918 = distinct !DISubprogram(name: "memset", scope: !773, file: !773, line: 57, type: !1671, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1919)
!1919 = !{!1917, !1920, !1921}
!1920 = !DILocalVariable(name: "__ch", arg: 2, scope: !1918, file: !773, line: 57, type: !33)
!1921 = !DILocalVariable(name: "__len", arg: 3, scope: !1918, file: !773, line: 57, type: !35)
!1922 = !DILocation(line: 0, scope: !1918, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 1137, column: 3, scope: !1910, inlinedAt: !1916)
!1924 = !DILocation(line: 59, column: 10, scope: !1918, inlinedAt: !1923)
!1925 = !DILocation(line: 231, column: 7, scope: !1926, inlinedAt: !1899)
!1926 = distinct !DILexicalBlock(scope: !305, file: !255, line: 231, column: 7)
!1927 = !DILocation(line: 231, column: 40, scope: !1926, inlinedAt: !1899)
!1928 = !DILocation(line: 231, column: 45, scope: !1926, inlinedAt: !1899)
!1929 = !DILocation(line: 235, column: 1, scope: !305, inlinedAt: !1899)
!1930 = !DILocation(line: 0, scope: !305, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 358, column: 27, scope: !1900)
!1932 = !DILocation(line: 199, column: 29, scope: !305, inlinedAt: !1931)
!1933 = !DILocation(line: 201, column: 19, scope: !1904, inlinedAt: !1931)
!1934 = !DILocation(line: 201, column: 7, scope: !305, inlinedAt: !1931)
!1935 = !DILocation(line: 229, column: 3, scope: !305, inlinedAt: !1931)
!1936 = !DILocation(line: 230, column: 3, scope: !305, inlinedAt: !1931)
!1937 = !DILocation(line: 230, column: 13, scope: !305, inlinedAt: !1931)
!1938 = !DILocation(line: 0, scope: !1910, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 230, column: 18, scope: !305, inlinedAt: !1931)
!1940 = !DILocation(line: 0, scope: !1918, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 1137, column: 3, scope: !1910, inlinedAt: !1939)
!1942 = !DILocation(line: 59, column: 10, scope: !1918, inlinedAt: !1941)
!1943 = !DILocation(line: 231, column: 7, scope: !1926, inlinedAt: !1931)
!1944 = !DILocation(line: 231, column: 40, scope: !1926, inlinedAt: !1931)
!1945 = !DILocation(line: 231, column: 45, scope: !1926, inlinedAt: !1931)
!1946 = !DILocation(line: 235, column: 1, scope: !305, inlinedAt: !1931)
!1947 = !DILocation(line: 360, column: 13, scope: !1843)
!1948 = !DILocation(line: 0, scope: !1841)
!1949 = !DILocation(line: 361, column: 45, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1841, file: !255, line: 361, column: 11)
!1951 = !DILocation(line: 361, column: 11, scope: !1841)
!1952 = !DILocation(line: 362, column: 13, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !255, line: 362, column: 13)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !255, line: 362, column: 13)
!1955 = !DILocation(line: 362, column: 13, scope: !1954)
!1956 = !DILocation(line: 361, column: 52, scope: !1950)
!1957 = distinct !{!1957, !1951, !1958, !553}
!1958 = !DILocation(line: 362, column: 13, scope: !1841)
!1959 = !DILocation(line: 260, column: 10, scope: !1815)
!1960 = !DILocation(line: 365, column: 28, scope: !1843)
!1961 = !DILocation(line: 367, column: 7, scope: !1844)
!1962 = !DILocation(line: 370, column: 7, scope: !1844)
!1963 = !DILocation(line: 376, column: 11, scope: !1844)
!1964 = !DILocation(line: 381, column: 11, scope: !1844)
!1965 = !DILocation(line: 382, column: 9, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !255, line: 382, column: 9)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !255, line: 382, column: 9)
!1968 = distinct !DILexicalBlock(scope: !1844, file: !255, line: 381, column: 11)
!1969 = !DILocation(line: 382, column: 9, scope: !1967)
!1970 = !DILocation(line: 389, column: 7, scope: !1844)
!1971 = !DILocation(line: 392, column: 7, scope: !1844)
!1972 = !DILocation(line: 0, scope: !1846)
!1973 = !DILocation(line: 395, column: 8, scope: !1846)
!1974 = !DILocation(line: 395, column: 34, scope: !1849)
!1975 = !DILocation(line: 395, column: 26, scope: !1849)
!1976 = !DILocation(line: 395, column: 48, scope: !1849)
!1977 = !DILocation(line: 395, column: 55, scope: !1849)
!1978 = !DILocation(line: 395, column: 3, scope: !1846)
!1979 = !DILocation(line: 395, column: 67, scope: !1849)
!1980 = !DILocation(line: 0, scope: !1848)
!1981 = !DILocation(line: 402, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1848, file: !255, line: 401, column: 11)
!1983 = !DILocation(line: 404, column: 17, scope: !1982)
!1984 = !DILocation(line: 405, column: 39, scope: !1982)
!1985 = !DILocation(line: 409, column: 32, scope: !1982)
!1986 = !DILocation(line: 405, column: 19, scope: !1982)
!1987 = !DILocation(line: 405, column: 15, scope: !1982)
!1988 = !DILocation(line: 410, column: 11, scope: !1982)
!1989 = !DILocation(line: 410, column: 25, scope: !1982)
!1990 = !DILocalVariable(name: "__s1", arg: 1, scope: !1991, file: !537, line: 974, type: !705)
!1991 = distinct !DISubprogram(name: "memeq", scope: !537, file: !537, line: 974, type: !1633, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1992)
!1992 = !{!1990, !1993, !1994}
!1993 = !DILocalVariable(name: "__s2", arg: 2, scope: !1991, file: !537, line: 974, type: !705)
!1994 = !DILocalVariable(name: "__n", arg: 3, scope: !1991, file: !537, line: 974, type: !35)
!1995 = !DILocation(line: 0, scope: !1991, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 410, column: 14, scope: !1982)
!1997 = !DILocation(line: 976, column: 11, scope: !1991, inlinedAt: !1996)
!1998 = !DILocation(line: 976, column: 10, scope: !1991, inlinedAt: !1996)
!1999 = !DILocation(line: 401, column: 11, scope: !1848)
!2000 = !DILocation(line: 417, column: 25, scope: !1848)
!2001 = !DILocation(line: 418, column: 7, scope: !1848)
!2002 = !DILocation(line: 421, column: 15, scope: !1855)
!2003 = !DILocation(line: 423, column: 15, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !255, line: 423, column: 15)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !255, line: 422, column: 13)
!2006 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 421, column: 15)
!2007 = !DILocation(line: 423, column: 15, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !255, line: 423, column: 15)
!2009 = !DILocation(line: 423, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !255, line: 423, column: 15)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !255, line: 423, column: 15)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !255, line: 423, column: 15)
!2013 = !DILocation(line: 423, column: 15, scope: !2011)
!2014 = !DILocation(line: 423, column: 15, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !255, line: 423, column: 15)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !255, line: 423, column: 15)
!2017 = !DILocation(line: 423, column: 15, scope: !2016)
!2018 = !DILocation(line: 423, column: 15, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !255, line: 423, column: 15)
!2020 = distinct !DILexicalBlock(scope: !2012, file: !255, line: 423, column: 15)
!2021 = !DILocation(line: 423, column: 15, scope: !2020)
!2022 = !DILocation(line: 423, column: 15, scope: !2012)
!2023 = !DILocation(line: 423, column: 15, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !255, line: 423, column: 15)
!2025 = distinct !DILexicalBlock(scope: !2004, file: !255, line: 423, column: 15)
!2026 = !DILocation(line: 423, column: 15, scope: !2025)
!2027 = !DILocation(line: 431, column: 19, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2005, file: !255, line: 430, column: 19)
!2029 = !DILocation(line: 431, column: 24, scope: !2028)
!2030 = !DILocation(line: 431, column: 28, scope: !2028)
!2031 = !DILocation(line: 431, column: 38, scope: !2028)
!2032 = !DILocation(line: 431, column: 48, scope: !2028)
!2033 = !DILocation(line: 431, column: 59, scope: !2028)
!2034 = !DILocation(line: 433, column: 19, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !255, line: 433, column: 19)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !255, line: 433, column: 19)
!2037 = distinct !DILexicalBlock(scope: !2028, file: !255, line: 432, column: 17)
!2038 = !DILocation(line: 433, column: 19, scope: !2036)
!2039 = !DILocation(line: 434, column: 19, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !255, line: 434, column: 19)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !255, line: 434, column: 19)
!2042 = !DILocation(line: 434, column: 19, scope: !2041)
!2043 = !DILocation(line: 435, column: 17, scope: !2037)
!2044 = !DILocation(line: 442, column: 20, scope: !2006)
!2045 = !DILocation(line: 447, column: 11, scope: !1855)
!2046 = !DILocation(line: 450, column: 19, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 448, column: 13)
!2048 = !DILocation(line: 456, column: 19, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2047, file: !255, line: 455, column: 19)
!2050 = !DILocation(line: 456, column: 24, scope: !2049)
!2051 = !DILocation(line: 456, column: 28, scope: !2049)
!2052 = !DILocation(line: 456, column: 38, scope: !2049)
!2053 = !DILocation(line: 456, column: 47, scope: !2049)
!2054 = !DILocation(line: 456, column: 41, scope: !2049)
!2055 = !DILocation(line: 456, column: 52, scope: !2049)
!2056 = !DILocation(line: 455, column: 19, scope: !2047)
!2057 = !DILocation(line: 457, column: 25, scope: !2049)
!2058 = !DILocation(line: 457, column: 17, scope: !2049)
!2059 = !DILocation(line: 464, column: 25, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2049, file: !255, line: 458, column: 19)
!2061 = !DILocation(line: 468, column: 21, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !255, line: 468, column: 21)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !255, line: 468, column: 21)
!2064 = !DILocation(line: 468, column: 21, scope: !2063)
!2065 = !DILocation(line: 469, column: 21, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !255, line: 469, column: 21)
!2067 = distinct !DILexicalBlock(scope: !2060, file: !255, line: 469, column: 21)
!2068 = !DILocation(line: 469, column: 21, scope: !2067)
!2069 = !DILocation(line: 470, column: 21, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !255, line: 470, column: 21)
!2071 = distinct !DILexicalBlock(scope: !2060, file: !255, line: 470, column: 21)
!2072 = !DILocation(line: 470, column: 21, scope: !2071)
!2073 = !DILocation(line: 471, column: 21, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !255, line: 471, column: 21)
!2075 = distinct !DILexicalBlock(scope: !2060, file: !255, line: 471, column: 21)
!2076 = !DILocation(line: 471, column: 21, scope: !2075)
!2077 = !DILocation(line: 472, column: 21, scope: !2060)
!2078 = !DILocation(line: 482, column: 33, scope: !1878)
!2079 = !DILocation(line: 483, column: 33, scope: !1878)
!2080 = !DILocation(line: 485, column: 33, scope: !1878)
!2081 = !DILocation(line: 486, column: 33, scope: !1878)
!2082 = !DILocation(line: 487, column: 33, scope: !1878)
!2083 = !DILocation(line: 490, column: 17, scope: !1878)
!2084 = !DILocation(line: 492, column: 21, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !255, line: 491, column: 15)
!2086 = distinct !DILexicalBlock(scope: !1878, file: !255, line: 490, column: 17)
!2087 = !DILocation(line: 499, column: 35, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1878, file: !255, line: 499, column: 17)
!2089 = !DILocation(line: 499, column: 57, scope: !2088)
!2090 = !DILocation(line: 0, scope: !1878)
!2091 = !DILocation(line: 502, column: 11, scope: !1878)
!2092 = !DILocation(line: 504, column: 17, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1878, file: !255, line: 503, column: 17)
!2094 = !DILocation(line: 507, column: 11, scope: !1878)
!2095 = !DILocation(line: 508, column: 17, scope: !1878)
!2096 = !DILocation(line: 517, column: 15, scope: !1855)
!2097 = !DILocation(line: 517, column: 40, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 517, column: 15)
!2099 = !DILocation(line: 517, column: 47, scope: !2098)
!2100 = !DILocation(line: 517, column: 18, scope: !2098)
!2101 = !DILocation(line: 521, column: 17, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 521, column: 15)
!2103 = !DILocation(line: 521, column: 15, scope: !1855)
!2104 = !DILocation(line: 525, column: 11, scope: !1855)
!2105 = !DILocation(line: 537, column: 15, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 536, column: 15)
!2107 = !DILocation(line: 536, column: 15, scope: !1855)
!2108 = !DILocation(line: 544, column: 15, scope: !1855)
!2109 = !DILocation(line: 546, column: 19, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !255, line: 545, column: 13)
!2111 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 544, column: 15)
!2112 = !DILocation(line: 549, column: 19, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !255, line: 549, column: 19)
!2114 = !DILocation(line: 549, column: 30, scope: !2113)
!2115 = !DILocation(line: 558, column: 15, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !255, line: 558, column: 15)
!2117 = distinct !DILexicalBlock(scope: !2110, file: !255, line: 558, column: 15)
!2118 = !DILocation(line: 558, column: 15, scope: !2117)
!2119 = !DILocation(line: 559, column: 15, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !255, line: 559, column: 15)
!2121 = distinct !DILexicalBlock(scope: !2110, file: !255, line: 559, column: 15)
!2122 = !DILocation(line: 559, column: 15, scope: !2121)
!2123 = !DILocation(line: 560, column: 15, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !255, line: 560, column: 15)
!2125 = distinct !DILexicalBlock(scope: !2110, file: !255, line: 560, column: 15)
!2126 = !DILocation(line: 560, column: 15, scope: !2125)
!2127 = !DILocation(line: 562, column: 13, scope: !2110)
!2128 = !DILocation(line: 602, column: 17, scope: !1854)
!2129 = !DILocation(line: 0, scope: !1854)
!2130 = !DILocation(line: 605, column: 29, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1859, file: !255, line: 603, column: 15)
!2132 = !DILocation(line: 605, column: 41, scope: !2131)
!2133 = !DILocation(line: 670, column: 23, scope: !1875)
!2134 = !DILocation(line: 609, column: 17, scope: !1858)
!2135 = !DILocation(line: 609, column: 27, scope: !1858)
!2136 = !DILocation(line: 0, scope: !1910, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 609, column: 32, scope: !1858)
!2138 = !DILocation(line: 0, scope: !1918, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 1137, column: 3, scope: !1910, inlinedAt: !2137)
!2140 = !DILocation(line: 59, column: 10, scope: !1918, inlinedAt: !2139)
!2141 = !DILocation(line: 613, column: 29, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1858, file: !255, line: 613, column: 21)
!2143 = !DILocation(line: 613, column: 21, scope: !1858)
!2144 = !DILocation(line: 614, column: 29, scope: !2142)
!2145 = !DILocation(line: 614, column: 19, scope: !2142)
!2146 = !DILocation(line: 618, column: 21, scope: !1861)
!2147 = !DILocation(line: 620, column: 54, scope: !1861)
!2148 = !DILocation(line: 0, scope: !1861)
!2149 = !DILocation(line: 619, column: 36, scope: !1861)
!2150 = !DILocation(line: 621, column: 25, scope: !1861)
!2151 = !DILocation(line: 631, column: 38, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1870, file: !255, line: 629, column: 23)
!2153 = !DILocation(line: 631, column: 48, scope: !2152)
!2154 = !DILocation(line: 665, column: 19, scope: !1862)
!2155 = !DILocation(line: 666, column: 15, scope: !1859)
!2156 = !DILocation(line: 626, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !1871, file: !255, line: 624, column: 23)
!2158 = !DILocation(line: 631, column: 51, scope: !2152)
!2159 = !DILocation(line: 631, column: 25, scope: !2152)
!2160 = !DILocation(line: 632, column: 28, scope: !2152)
!2161 = !DILocation(line: 631, column: 34, scope: !2152)
!2162 = distinct !{!2162, !2159, !2160, !553}
!2163 = !DILocation(line: 646, column: 29, scope: !1868)
!2164 = !DILocation(line: 0, scope: !1866)
!2165 = !DILocation(line: 649, column: 49, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !1866, file: !255, line: 648, column: 29)
!2167 = !DILocation(line: 649, column: 39, scope: !2166)
!2168 = !DILocation(line: 649, column: 31, scope: !2166)
!2169 = !DILocation(line: 648, column: 60, scope: !2166)
!2170 = !DILocation(line: 648, column: 50, scope: !2166)
!2171 = !DILocation(line: 648, column: 29, scope: !1866)
!2172 = distinct !{!2172, !2171, !2173, !553}
!2173 = !DILocation(line: 654, column: 33, scope: !1866)
!2174 = !DILocation(line: 657, column: 43, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !1869, file: !255, line: 657, column: 29)
!2176 = !DILocalVariable(name: "wc", arg: 1, scope: !2177, file: !2178, line: 865, type: !2181)
!2177 = distinct !DISubprogram(name: "c32isprint", scope: !2178, file: !2178, line: 865, type: !2179, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2183)
!2178 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!33, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2182, line: 20, baseType: !14)
!2182 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2183 = !{!2176}
!2184 = !DILocation(line: 0, scope: !2177, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 657, column: 31, scope: !2175)
!2186 = !DILocation(line: 871, column: 10, scope: !2177, inlinedAt: !2185)
!2187 = !DILocation(line: 657, column: 31, scope: !2175)
!2188 = !DILocation(line: 664, column: 23, scope: !1861)
!2189 = !DILocation(line: 753, column: 2, scope: !1815)
!2190 = !DILocation(line: 756, column: 51, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1815, file: !255, line: 756, column: 7)
!2192 = !DILocation(line: 670, column: 19, scope: !1875)
!2193 = !DILocation(line: 670, column: 45, scope: !1875)
!2194 = !DILocation(line: 674, column: 33, scope: !1874)
!2195 = !DILocation(line: 0, scope: !1874)
!2196 = !DILocation(line: 676, column: 17, scope: !1874)
!2197 = !DILocation(line: 398, column: 12, scope: !1848)
!2198 = !DILocation(line: 678, column: 43, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !255, line: 678, column: 25)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !255, line: 677, column: 19)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !255, line: 676, column: 17)
!2202 = distinct !DILexicalBlock(scope: !1874, file: !255, line: 676, column: 17)
!2203 = !DILocation(line: 680, column: 25, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !255, line: 680, column: 25)
!2205 = distinct !DILexicalBlock(scope: !2199, file: !255, line: 679, column: 23)
!2206 = !DILocation(line: 680, column: 25, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !255, line: 680, column: 25)
!2208 = !DILocation(line: 680, column: 25, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !255, line: 680, column: 25)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !255, line: 680, column: 25)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !255, line: 680, column: 25)
!2212 = !DILocation(line: 680, column: 25, scope: !2210)
!2213 = !DILocation(line: 680, column: 25, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !255, line: 680, column: 25)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !255, line: 680, column: 25)
!2216 = !DILocation(line: 680, column: 25, scope: !2215)
!2217 = !DILocation(line: 680, column: 25, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !255, line: 680, column: 25)
!2219 = distinct !DILexicalBlock(scope: !2211, file: !255, line: 680, column: 25)
!2220 = !DILocation(line: 680, column: 25, scope: !2219)
!2221 = !DILocation(line: 680, column: 25, scope: !2211)
!2222 = !DILocation(line: 680, column: 25, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !255, line: 680, column: 25)
!2224 = distinct !DILexicalBlock(scope: !2204, file: !255, line: 680, column: 25)
!2225 = !DILocation(line: 680, column: 25, scope: !2224)
!2226 = !DILocation(line: 681, column: 25, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !255, line: 681, column: 25)
!2228 = distinct !DILexicalBlock(scope: !2205, file: !255, line: 681, column: 25)
!2229 = !DILocation(line: 681, column: 25, scope: !2228)
!2230 = !DILocation(line: 682, column: 25, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !255, line: 682, column: 25)
!2232 = distinct !DILexicalBlock(scope: !2205, file: !255, line: 682, column: 25)
!2233 = !DILocation(line: 682, column: 25, scope: !2232)
!2234 = !DILocation(line: 683, column: 38, scope: !2205)
!2235 = !DILocation(line: 683, column: 33, scope: !2205)
!2236 = !DILocation(line: 684, column: 23, scope: !2205)
!2237 = !DILocation(line: 685, column: 30, scope: !2199)
!2238 = !DILocation(line: 687, column: 25, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !255, line: 687, column: 25)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !255, line: 687, column: 25)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !255, line: 686, column: 23)
!2242 = distinct !DILexicalBlock(scope: !2199, file: !255, line: 685, column: 30)
!2243 = !DILocation(line: 687, column: 25, scope: !2240)
!2244 = !DILocation(line: 689, column: 23, scope: !2241)
!2245 = !DILocation(line: 690, column: 35, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2200, file: !255, line: 690, column: 25)
!2247 = !DILocation(line: 690, column: 30, scope: !2246)
!2248 = !DILocation(line: 690, column: 25, scope: !2200)
!2249 = !DILocation(line: 692, column: 21, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !255, line: 692, column: 21)
!2251 = distinct !DILexicalBlock(scope: !2200, file: !255, line: 692, column: 21)
!2252 = !DILocation(line: 692, column: 21, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !255, line: 692, column: 21)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !255, line: 692, column: 21)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !255, line: 692, column: 21)
!2256 = !DILocation(line: 692, column: 21, scope: !2254)
!2257 = !DILocation(line: 692, column: 21, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !255, line: 692, column: 21)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !255, line: 692, column: 21)
!2260 = !DILocation(line: 692, column: 21, scope: !2259)
!2261 = !DILocation(line: 692, column: 21, scope: !2255)
!2262 = !DILocation(line: 0, scope: !2200)
!2263 = !DILocation(line: 693, column: 21, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !255, line: 693, column: 21)
!2265 = distinct !DILexicalBlock(scope: !2200, file: !255, line: 693, column: 21)
!2266 = !DILocation(line: 693, column: 21, scope: !2265)
!2267 = !DILocation(line: 694, column: 25, scope: !2200)
!2268 = !DILocation(line: 676, column: 17, scope: !2201)
!2269 = distinct !{!2269, !2270, !2271}
!2270 = !DILocation(line: 676, column: 17, scope: !2202)
!2271 = !DILocation(line: 695, column: 19, scope: !2202)
!2272 = !DILocation(line: 409, column: 30, scope: !1982)
!2273 = !DILocation(line: 702, column: 34, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !1848, file: !255, line: 702, column: 11)
!2275 = !DILocation(line: 704, column: 14, scope: !2274)
!2276 = !DILocation(line: 705, column: 14, scope: !2274)
!2277 = !DILocation(line: 705, column: 35, scope: !2274)
!2278 = !DILocation(line: 705, column: 17, scope: !2274)
!2279 = !DILocation(line: 705, column: 47, scope: !2274)
!2280 = !DILocation(line: 705, column: 65, scope: !2274)
!2281 = !DILocation(line: 706, column: 11, scope: !2274)
!2282 = !DILocation(line: 702, column: 11, scope: !1848)
!2283 = !DILocation(line: 395, column: 15, scope: !1846)
!2284 = !DILocation(line: 709, column: 5, scope: !1848)
!2285 = !DILocation(line: 710, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !1848, file: !255, line: 710, column: 7)
!2287 = !DILocation(line: 710, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2286, file: !255, line: 710, column: 7)
!2289 = !DILocation(line: 710, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !255, line: 710, column: 7)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !255, line: 710, column: 7)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !255, line: 710, column: 7)
!2293 = !DILocation(line: 710, column: 7, scope: !2291)
!2294 = !DILocation(line: 710, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !255, line: 710, column: 7)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !255, line: 710, column: 7)
!2297 = !DILocation(line: 710, column: 7, scope: !2296)
!2298 = !DILocation(line: 710, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !255, line: 710, column: 7)
!2300 = distinct !DILexicalBlock(scope: !2292, file: !255, line: 710, column: 7)
!2301 = !DILocation(line: 710, column: 7, scope: !2300)
!2302 = !DILocation(line: 710, column: 7, scope: !2292)
!2303 = !DILocation(line: 710, column: 7, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !255, line: 710, column: 7)
!2305 = distinct !DILexicalBlock(scope: !2286, file: !255, line: 710, column: 7)
!2306 = !DILocation(line: 710, column: 7, scope: !2305)
!2307 = !DILocation(line: 712, column: 5, scope: !1848)
!2308 = !DILocation(line: 713, column: 7, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !255, line: 713, column: 7)
!2310 = distinct !DILexicalBlock(scope: !1848, file: !255, line: 713, column: 7)
!2311 = !DILocation(line: 417, column: 21, scope: !1848)
!2312 = !DILocation(line: 713, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !255, line: 713, column: 7)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !255, line: 713, column: 7)
!2315 = distinct !DILexicalBlock(scope: !2309, file: !255, line: 713, column: 7)
!2316 = !DILocation(line: 713, column: 7, scope: !2314)
!2317 = !DILocation(line: 713, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !255, line: 713, column: 7)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !255, line: 713, column: 7)
!2320 = !DILocation(line: 713, column: 7, scope: !2319)
!2321 = !DILocation(line: 713, column: 7, scope: !2315)
!2322 = !DILocation(line: 714, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !255, line: 714, column: 7)
!2324 = distinct !DILexicalBlock(scope: !1848, file: !255, line: 714, column: 7)
!2325 = !DILocation(line: 714, column: 7, scope: !2324)
!2326 = !DILocation(line: 716, column: 11, scope: !1848)
!2327 = !DILocation(line: 718, column: 5, scope: !1849)
!2328 = !DILocation(line: 395, column: 82, scope: !1849)
!2329 = !DILocation(line: 395, column: 3, scope: !1849)
!2330 = distinct !{!2330, !1978, !2331, !553}
!2331 = !DILocation(line: 718, column: 5, scope: !1846)
!2332 = !DILocation(line: 720, column: 11, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1815, file: !255, line: 720, column: 7)
!2334 = !DILocation(line: 720, column: 16, scope: !2333)
!2335 = !DILocation(line: 728, column: 51, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !1815, file: !255, line: 728, column: 7)
!2337 = !DILocation(line: 731, column: 11, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2336, file: !255, line: 730, column: 5)
!2339 = !DILocation(line: 732, column: 16, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2338, file: !255, line: 731, column: 11)
!2341 = !DILocation(line: 732, column: 9, scope: !2340)
!2342 = !DILocation(line: 736, column: 18, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !255, line: 736, column: 16)
!2344 = !DILocation(line: 736, column: 29, scope: !2343)
!2345 = !DILocation(line: 745, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !1815, file: !255, line: 745, column: 7)
!2347 = !DILocation(line: 745, column: 20, scope: !2346)
!2348 = !DILocation(line: 746, column: 12, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !255, line: 746, column: 5)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !255, line: 746, column: 5)
!2351 = !DILocation(line: 746, column: 5, scope: !2350)
!2352 = !DILocation(line: 747, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !255, line: 747, column: 7)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !255, line: 747, column: 7)
!2355 = !DILocation(line: 747, column: 7, scope: !2354)
!2356 = !DILocation(line: 746, column: 39, scope: !2349)
!2357 = distinct !{!2357, !2351, !2358, !553}
!2358 = !DILocation(line: 747, column: 7, scope: !2350)
!2359 = !DILocation(line: 749, column: 11, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !1815, file: !255, line: 749, column: 7)
!2361 = !DILocation(line: 749, column: 7, scope: !1815)
!2362 = !DILocation(line: 750, column: 5, scope: !2360)
!2363 = !DILocation(line: 750, column: 17, scope: !2360)
!2364 = !DILocation(line: 756, column: 21, scope: !2191)
!2365 = !DILocation(line: 760, column: 42, scope: !1815)
!2366 = !DILocation(line: 758, column: 10, scope: !1815)
!2367 = !DILocation(line: 758, column: 3, scope: !1815)
!2368 = !DILocation(line: 762, column: 1, scope: !1815)
!2369 = !DISubprogram(name: "iswprint", scope: !2370, file: !2370, line: 120, type: !2179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!2370 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2371 = distinct !DISubprogram(name: "quotearg_alloc", scope: !255, file: !255, line: 788, type: !2372, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!39, !6, !35, !1707}
!2374 = !{!2375, !2376, !2377}
!2375 = !DILocalVariable(name: "arg", arg: 1, scope: !2371, file: !255, line: 788, type: !6)
!2376 = !DILocalVariable(name: "argsize", arg: 2, scope: !2371, file: !255, line: 788, type: !35)
!2377 = !DILocalVariable(name: "o", arg: 3, scope: !2371, file: !255, line: 789, type: !1707)
!2378 = !DILocation(line: 0, scope: !2371)
!2379 = !DILocalVariable(name: "arg", arg: 1, scope: !2380, file: !255, line: 801, type: !6)
!2380 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !255, file: !255, line: 801, type: !2381, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!39, !6, !35, !428, !1707}
!2383 = !{!2379, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2384 = !DILocalVariable(name: "argsize", arg: 2, scope: !2380, file: !255, line: 801, type: !35)
!2385 = !DILocalVariable(name: "size", arg: 3, scope: !2380, file: !255, line: 801, type: !428)
!2386 = !DILocalVariable(name: "o", arg: 4, scope: !2380, file: !255, line: 802, type: !1707)
!2387 = !DILocalVariable(name: "p", scope: !2380, file: !255, line: 804, type: !1707)
!2388 = !DILocalVariable(name: "saved_errno", scope: !2380, file: !255, line: 805, type: !33)
!2389 = !DILocalVariable(name: "flags", scope: !2380, file: !255, line: 807, type: !33)
!2390 = !DILocalVariable(name: "bufsize", scope: !2380, file: !255, line: 808, type: !35)
!2391 = !DILocalVariable(name: "buf", scope: !2380, file: !255, line: 812, type: !39)
!2392 = !DILocation(line: 0, scope: !2380, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 791, column: 10, scope: !2371)
!2394 = !DILocation(line: 804, column: 37, scope: !2380, inlinedAt: !2393)
!2395 = !DILocation(line: 805, column: 21, scope: !2380, inlinedAt: !2393)
!2396 = !DILocation(line: 807, column: 18, scope: !2380, inlinedAt: !2393)
!2397 = !DILocation(line: 807, column: 24, scope: !2380, inlinedAt: !2393)
!2398 = !DILocation(line: 808, column: 72, scope: !2380, inlinedAt: !2393)
!2399 = !DILocation(line: 809, column: 53, scope: !2380, inlinedAt: !2393)
!2400 = !DILocation(line: 810, column: 49, scope: !2380, inlinedAt: !2393)
!2401 = !DILocation(line: 811, column: 49, scope: !2380, inlinedAt: !2393)
!2402 = !DILocation(line: 808, column: 20, scope: !2380, inlinedAt: !2393)
!2403 = !DILocation(line: 811, column: 62, scope: !2380, inlinedAt: !2393)
!2404 = !DILocation(line: 812, column: 15, scope: !2380, inlinedAt: !2393)
!2405 = !DILocation(line: 813, column: 60, scope: !2380, inlinedAt: !2393)
!2406 = !DILocation(line: 815, column: 32, scope: !2380, inlinedAt: !2393)
!2407 = !DILocation(line: 815, column: 47, scope: !2380, inlinedAt: !2393)
!2408 = !DILocation(line: 813, column: 3, scope: !2380, inlinedAt: !2393)
!2409 = !DILocation(line: 816, column: 9, scope: !2380, inlinedAt: !2393)
!2410 = !DILocation(line: 791, column: 3, scope: !2371)
!2411 = !DILocation(line: 0, scope: !2380)
!2412 = !DILocation(line: 804, column: 37, scope: !2380)
!2413 = !DILocation(line: 805, column: 21, scope: !2380)
!2414 = !DILocation(line: 807, column: 18, scope: !2380)
!2415 = !DILocation(line: 807, column: 27, scope: !2380)
!2416 = !DILocation(line: 807, column: 24, scope: !2380)
!2417 = !DILocation(line: 808, column: 72, scope: !2380)
!2418 = !DILocation(line: 809, column: 53, scope: !2380)
!2419 = !DILocation(line: 810, column: 49, scope: !2380)
!2420 = !DILocation(line: 811, column: 49, scope: !2380)
!2421 = !DILocation(line: 808, column: 20, scope: !2380)
!2422 = !DILocation(line: 811, column: 62, scope: !2380)
!2423 = !DILocation(line: 812, column: 15, scope: !2380)
!2424 = !DILocation(line: 813, column: 60, scope: !2380)
!2425 = !DILocation(line: 815, column: 32, scope: !2380)
!2426 = !DILocation(line: 815, column: 47, scope: !2380)
!2427 = !DILocation(line: 813, column: 3, scope: !2380)
!2428 = !DILocation(line: 816, column: 9, scope: !2380)
!2429 = !DILocation(line: 817, column: 7, scope: !2380)
!2430 = !DILocation(line: 818, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2380, file: !255, line: 817, column: 7)
!2432 = !{!934, !934, i64 0}
!2433 = !DILocation(line: 818, column: 5, scope: !2431)
!2434 = !DILocation(line: 819, column: 3, scope: !2380)
!2435 = distinct !DISubprogram(name: "quotearg_free", scope: !255, file: !255, line: 837, type: !173, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2436)
!2436 = !{!2437, !2438}
!2437 = !DILocalVariable(name: "sv", scope: !2435, file: !255, line: 839, type: !328)
!2438 = !DILocalVariable(name: "i", scope: !2439, file: !255, line: 840, type: !33)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !255, line: 840, column: 3)
!2440 = !DILocation(line: 839, column: 24, scope: !2435)
!2441 = !DILocation(line: 0, scope: !2435)
!2442 = !DILocation(line: 0, scope: !2439)
!2443 = !DILocation(line: 840, column: 21, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2439, file: !255, line: 840, column: 3)
!2445 = !DILocation(line: 840, column: 3, scope: !2439)
!2446 = !DILocation(line: 842, column: 13, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2435, file: !255, line: 842, column: 7)
!2448 = !{!2449, !502, i64 8}
!2449 = !{!"slotvec", !934, i64 0, !502, i64 8}
!2450 = !DILocation(line: 842, column: 17, scope: !2447)
!2451 = !DILocation(line: 842, column: 7, scope: !2435)
!2452 = !DILocation(line: 841, column: 17, scope: !2444)
!2453 = !DILocation(line: 841, column: 5, scope: !2444)
!2454 = !DILocation(line: 840, column: 32, scope: !2444)
!2455 = distinct !{!2455, !2445, !2456, !553}
!2456 = !DILocation(line: 841, column: 20, scope: !2439)
!2457 = !DILocation(line: 844, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2447, file: !255, line: 843, column: 5)
!2459 = !DILocation(line: 845, column: 21, scope: !2458)
!2460 = !{!2449, !934, i64 0}
!2461 = !DILocation(line: 846, column: 20, scope: !2458)
!2462 = !DILocation(line: 847, column: 5, scope: !2458)
!2463 = !DILocation(line: 848, column: 10, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2435, file: !255, line: 848, column: 7)
!2465 = !DILocation(line: 848, column: 7, scope: !2435)
!2466 = !DILocation(line: 850, column: 13, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2464, file: !255, line: 849, column: 5)
!2468 = !DILocation(line: 850, column: 7, scope: !2467)
!2469 = !DILocation(line: 851, column: 15, scope: !2467)
!2470 = !DILocation(line: 852, column: 5, scope: !2467)
!2471 = !DILocation(line: 853, column: 10, scope: !2435)
!2472 = !DILocation(line: 854, column: 1, scope: !2435)
!2473 = distinct !DISubprogram(name: "quotearg_n", scope: !255, file: !255, line: 919, type: !695, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2474)
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "n", arg: 1, scope: !2473, file: !255, line: 919, type: !33)
!2476 = !DILocalVariable(name: "arg", arg: 2, scope: !2473, file: !255, line: 919, type: !6)
!2477 = !DILocation(line: 0, scope: !2473)
!2478 = !DILocation(line: 921, column: 10, scope: !2473)
!2479 = !DILocation(line: 921, column: 3, scope: !2473)
!2480 = distinct !DISubprogram(name: "quotearg_n_options", scope: !255, file: !255, line: 866, type: !2481, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!39, !33, !6, !35, !1707}
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2494, !2495, !2497, !2498, !2499}
!2484 = !DILocalVariable(name: "n", arg: 1, scope: !2480, file: !255, line: 866, type: !33)
!2485 = !DILocalVariable(name: "arg", arg: 2, scope: !2480, file: !255, line: 866, type: !6)
!2486 = !DILocalVariable(name: "argsize", arg: 3, scope: !2480, file: !255, line: 866, type: !35)
!2487 = !DILocalVariable(name: "options", arg: 4, scope: !2480, file: !255, line: 867, type: !1707)
!2488 = !DILocalVariable(name: "saved_errno", scope: !2480, file: !255, line: 869, type: !33)
!2489 = !DILocalVariable(name: "sv", scope: !2480, file: !255, line: 871, type: !328)
!2490 = !DILocalVariable(name: "nslots_max", scope: !2480, file: !255, line: 873, type: !33)
!2491 = !DILocalVariable(name: "preallocated", scope: !2492, file: !255, line: 879, type: !48)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !255, line: 878, column: 5)
!2493 = distinct !DILexicalBlock(scope: !2480, file: !255, line: 877, column: 7)
!2494 = !DILocalVariable(name: "new_nslots", scope: !2492, file: !255, line: 880, type: !441)
!2495 = !DILocalVariable(name: "size", scope: !2496, file: !255, line: 891, type: !35)
!2496 = distinct !DILexicalBlock(scope: !2480, file: !255, line: 890, column: 3)
!2497 = !DILocalVariable(name: "val", scope: !2496, file: !255, line: 892, type: !39)
!2498 = !DILocalVariable(name: "flags", scope: !2496, file: !255, line: 894, type: !33)
!2499 = !DILocalVariable(name: "qsize", scope: !2496, file: !255, line: 895, type: !35)
!2500 = !DILocation(line: 0, scope: !2480)
!2501 = !DILocation(line: 869, column: 21, scope: !2480)
!2502 = !DILocation(line: 871, column: 24, scope: !2480)
!2503 = !DILocation(line: 874, column: 17, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2480, file: !255, line: 874, column: 7)
!2505 = !DILocation(line: 875, column: 5, scope: !2504)
!2506 = !DILocation(line: 877, column: 7, scope: !2493)
!2507 = !DILocation(line: 877, column: 14, scope: !2493)
!2508 = !DILocation(line: 877, column: 7, scope: !2480)
!2509 = !DILocation(line: 879, column: 31, scope: !2492)
!2510 = !DILocation(line: 0, scope: !2492)
!2511 = !DILocation(line: 880, column: 7, scope: !2492)
!2512 = !DILocation(line: 880, column: 26, scope: !2492)
!2513 = !DILocation(line: 880, column: 13, scope: !2492)
!2514 = !DILocation(line: 882, column: 31, scope: !2492)
!2515 = !DILocation(line: 883, column: 33, scope: !2492)
!2516 = !DILocation(line: 883, column: 42, scope: !2492)
!2517 = !DILocation(line: 883, column: 31, scope: !2492)
!2518 = !DILocation(line: 882, column: 22, scope: !2492)
!2519 = !DILocation(line: 882, column: 15, scope: !2492)
!2520 = !DILocation(line: 884, column: 11, scope: !2492)
!2521 = !DILocation(line: 885, column: 15, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2492, file: !255, line: 884, column: 11)
!2523 = !{i64 0, i64 8, !2432, i64 8, i64 8, !501}
!2524 = !DILocation(line: 885, column: 9, scope: !2522)
!2525 = !DILocation(line: 886, column: 20, scope: !2492)
!2526 = !DILocation(line: 886, column: 18, scope: !2492)
!2527 = !DILocation(line: 886, column: 15, scope: !2492)
!2528 = !DILocation(line: 886, column: 32, scope: !2492)
!2529 = !DILocation(line: 886, column: 43, scope: !2492)
!2530 = !DILocation(line: 886, column: 53, scope: !2492)
!2531 = !DILocation(line: 0, scope: !1918, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 886, column: 7, scope: !2492)
!2533 = !DILocation(line: 59, column: 10, scope: !1918, inlinedAt: !2532)
!2534 = !DILocation(line: 887, column: 16, scope: !2492)
!2535 = !DILocation(line: 887, column: 14, scope: !2492)
!2536 = !DILocation(line: 888, column: 5, scope: !2493)
!2537 = !DILocation(line: 888, column: 5, scope: !2492)
!2538 = !DILocation(line: 891, column: 19, scope: !2496)
!2539 = !DILocation(line: 891, column: 25, scope: !2496)
!2540 = !DILocation(line: 0, scope: !2496)
!2541 = !DILocation(line: 892, column: 23, scope: !2496)
!2542 = !DILocation(line: 894, column: 26, scope: !2496)
!2543 = !DILocation(line: 894, column: 32, scope: !2496)
!2544 = !DILocation(line: 896, column: 55, scope: !2496)
!2545 = !DILocation(line: 897, column: 46, scope: !2496)
!2546 = !DILocation(line: 898, column: 55, scope: !2496)
!2547 = !DILocation(line: 899, column: 55, scope: !2496)
!2548 = !DILocation(line: 895, column: 20, scope: !2496)
!2549 = !DILocation(line: 901, column: 14, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2496, file: !255, line: 901, column: 9)
!2551 = !DILocation(line: 901, column: 9, scope: !2496)
!2552 = !DILocation(line: 903, column: 35, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !255, line: 902, column: 7)
!2554 = !DILocation(line: 903, column: 20, scope: !2553)
!2555 = !DILocation(line: 904, column: 17, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2553, file: !255, line: 904, column: 13)
!2557 = !DILocation(line: 904, column: 13, scope: !2553)
!2558 = !DILocation(line: 905, column: 11, scope: !2556)
!2559 = !DILocation(line: 906, column: 27, scope: !2553)
!2560 = !DILocation(line: 906, column: 19, scope: !2553)
!2561 = !DILocation(line: 907, column: 69, scope: !2553)
!2562 = !DILocation(line: 909, column: 44, scope: !2553)
!2563 = !DILocation(line: 910, column: 44, scope: !2553)
!2564 = !DILocation(line: 907, column: 9, scope: !2553)
!2565 = !DILocation(line: 911, column: 7, scope: !2553)
!2566 = !DILocation(line: 913, column: 11, scope: !2496)
!2567 = !DILocation(line: 914, column: 5, scope: !2496)
!2568 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !255, file: !255, line: 925, type: !2569, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!39, !33, !6, !35}
!2571 = !{!2572, !2573, !2574}
!2572 = !DILocalVariable(name: "n", arg: 1, scope: !2568, file: !255, line: 925, type: !33)
!2573 = !DILocalVariable(name: "arg", arg: 2, scope: !2568, file: !255, line: 925, type: !6)
!2574 = !DILocalVariable(name: "argsize", arg: 3, scope: !2568, file: !255, line: 925, type: !35)
!2575 = !DILocation(line: 0, scope: !2568)
!2576 = !DILocation(line: 927, column: 10, scope: !2568)
!2577 = !DILocation(line: 927, column: 3, scope: !2568)
!2578 = distinct !DISubprogram(name: "quotearg", scope: !255, file: !255, line: 931, type: !699, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2579)
!2579 = !{!2580}
!2580 = !DILocalVariable(name: "arg", arg: 1, scope: !2578, file: !255, line: 931, type: !6)
!2581 = !DILocation(line: 0, scope: !2578)
!2582 = !DILocation(line: 0, scope: !2473, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 933, column: 10, scope: !2578)
!2584 = !DILocation(line: 921, column: 10, scope: !2473, inlinedAt: !2583)
!2585 = !DILocation(line: 933, column: 3, scope: !2578)
!2586 = distinct !DISubprogram(name: "quotearg_mem", scope: !255, file: !255, line: 937, type: !2587, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!39, !6, !35}
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "arg", arg: 1, scope: !2586, file: !255, line: 937, type: !6)
!2591 = !DILocalVariable(name: "argsize", arg: 2, scope: !2586, file: !255, line: 937, type: !35)
!2592 = !DILocation(line: 0, scope: !2586)
!2593 = !DILocation(line: 0, scope: !2568, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 939, column: 10, scope: !2586)
!2595 = !DILocation(line: 927, column: 10, scope: !2568, inlinedAt: !2594)
!2596 = !DILocation(line: 939, column: 3, scope: !2586)
!2597 = distinct !DISubprogram(name: "quotearg_n_style", scope: !255, file: !255, line: 943, type: !2598, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!39, !33, !257, !6}
!2600 = !{!2601, !2602, !2603, !2604}
!2601 = !DILocalVariable(name: "n", arg: 1, scope: !2597, file: !255, line: 943, type: !33)
!2602 = !DILocalVariable(name: "s", arg: 2, scope: !2597, file: !255, line: 943, type: !257)
!2603 = !DILocalVariable(name: "arg", arg: 3, scope: !2597, file: !255, line: 943, type: !6)
!2604 = !DILocalVariable(name: "o", scope: !2597, file: !255, line: 945, type: !1708)
!2605 = !DILocation(line: 0, scope: !2597)
!2606 = !DILocation(line: 945, column: 3, scope: !2597)
!2607 = !DILocation(line: 945, column: 32, scope: !2597)
!2608 = !{!2609}
!2609 = distinct !{!2609, !2610, !"quoting_options_from_style: argument 0"}
!2610 = distinct !{!2610, !"quoting_options_from_style"}
!2611 = !DILocation(line: 945, column: 36, scope: !2597)
!2612 = !DILocalVariable(name: "style", arg: 1, scope: !2613, file: !255, line: 183, type: !257)
!2613 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !255, file: !255, line: 183, type: !2614, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!286, !257}
!2616 = !{!2612, !2617}
!2617 = !DILocalVariable(name: "o", scope: !2613, file: !255, line: 185, type: !286)
!2618 = !DILocation(line: 0, scope: !2613, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 945, column: 36, scope: !2597)
!2620 = !DILocation(line: 185, column: 26, scope: !2613, inlinedAt: !2619)
!2621 = !DILocation(line: 186, column: 13, scope: !2622, inlinedAt: !2619)
!2622 = distinct !DILexicalBlock(scope: !2613, file: !255, line: 186, column: 7)
!2623 = !DILocation(line: 186, column: 7, scope: !2613, inlinedAt: !2619)
!2624 = !DILocation(line: 187, column: 5, scope: !2622, inlinedAt: !2619)
!2625 = !DILocation(line: 188, column: 5, scope: !2613, inlinedAt: !2619)
!2626 = !DILocation(line: 188, column: 11, scope: !2613, inlinedAt: !2619)
!2627 = !DILocation(line: 946, column: 10, scope: !2597)
!2628 = !DILocation(line: 947, column: 1, scope: !2597)
!2629 = !DILocation(line: 946, column: 3, scope: !2597)
!2630 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !255, file: !255, line: 950, type: !2631, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!39, !33, !257, !6, !35}
!2633 = !{!2634, !2635, !2636, !2637, !2638}
!2634 = !DILocalVariable(name: "n", arg: 1, scope: !2630, file: !255, line: 950, type: !33)
!2635 = !DILocalVariable(name: "s", arg: 2, scope: !2630, file: !255, line: 950, type: !257)
!2636 = !DILocalVariable(name: "arg", arg: 3, scope: !2630, file: !255, line: 951, type: !6)
!2637 = !DILocalVariable(name: "argsize", arg: 4, scope: !2630, file: !255, line: 951, type: !35)
!2638 = !DILocalVariable(name: "o", scope: !2630, file: !255, line: 953, type: !1708)
!2639 = !DILocation(line: 0, scope: !2630)
!2640 = !DILocation(line: 953, column: 3, scope: !2630)
!2641 = !DILocation(line: 953, column: 32, scope: !2630)
!2642 = !{!2643}
!2643 = distinct !{!2643, !2644, !"quoting_options_from_style: argument 0"}
!2644 = distinct !{!2644, !"quoting_options_from_style"}
!2645 = !DILocation(line: 953, column: 36, scope: !2630)
!2646 = !DILocation(line: 0, scope: !2613, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 953, column: 36, scope: !2630)
!2648 = !DILocation(line: 185, column: 26, scope: !2613, inlinedAt: !2647)
!2649 = !DILocation(line: 186, column: 13, scope: !2622, inlinedAt: !2647)
!2650 = !DILocation(line: 186, column: 7, scope: !2613, inlinedAt: !2647)
!2651 = !DILocation(line: 187, column: 5, scope: !2622, inlinedAt: !2647)
!2652 = !DILocation(line: 188, column: 5, scope: !2613, inlinedAt: !2647)
!2653 = !DILocation(line: 188, column: 11, scope: !2613, inlinedAt: !2647)
!2654 = !DILocation(line: 954, column: 10, scope: !2630)
!2655 = !DILocation(line: 955, column: 1, scope: !2630)
!2656 = !DILocation(line: 954, column: 3, scope: !2630)
!2657 = distinct !DISubprogram(name: "quotearg_style", scope: !255, file: !255, line: 958, type: !2658, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!39, !257, !6}
!2660 = !{!2661, !2662}
!2661 = !DILocalVariable(name: "s", arg: 1, scope: !2657, file: !255, line: 958, type: !257)
!2662 = !DILocalVariable(name: "arg", arg: 2, scope: !2657, file: !255, line: 958, type: !6)
!2663 = !DILocation(line: 0, scope: !2657)
!2664 = !DILocation(line: 0, scope: !2597, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 960, column: 10, scope: !2657)
!2666 = !DILocation(line: 945, column: 3, scope: !2597, inlinedAt: !2665)
!2667 = !DILocation(line: 945, column: 32, scope: !2597, inlinedAt: !2665)
!2668 = !{!2669}
!2669 = distinct !{!2669, !2670, !"quoting_options_from_style: argument 0"}
!2670 = distinct !{!2670, !"quoting_options_from_style"}
!2671 = !DILocation(line: 945, column: 36, scope: !2597, inlinedAt: !2665)
!2672 = !DILocation(line: 0, scope: !2613, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 945, column: 36, scope: !2597, inlinedAt: !2665)
!2674 = !DILocation(line: 185, column: 26, scope: !2613, inlinedAt: !2673)
!2675 = !DILocation(line: 186, column: 13, scope: !2622, inlinedAt: !2673)
!2676 = !DILocation(line: 186, column: 7, scope: !2613, inlinedAt: !2673)
!2677 = !DILocation(line: 187, column: 5, scope: !2622, inlinedAt: !2673)
!2678 = !DILocation(line: 188, column: 5, scope: !2613, inlinedAt: !2673)
!2679 = !DILocation(line: 188, column: 11, scope: !2613, inlinedAt: !2673)
!2680 = !DILocation(line: 946, column: 10, scope: !2597, inlinedAt: !2665)
!2681 = !DILocation(line: 947, column: 1, scope: !2597, inlinedAt: !2665)
!2682 = !DILocation(line: 960, column: 3, scope: !2657)
!2683 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !255, file: !255, line: 964, type: !2684, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!39, !257, !6, !35}
!2686 = !{!2687, !2688, !2689}
!2687 = !DILocalVariable(name: "s", arg: 1, scope: !2683, file: !255, line: 964, type: !257)
!2688 = !DILocalVariable(name: "arg", arg: 2, scope: !2683, file: !255, line: 964, type: !6)
!2689 = !DILocalVariable(name: "argsize", arg: 3, scope: !2683, file: !255, line: 964, type: !35)
!2690 = !DILocation(line: 0, scope: !2683)
!2691 = !DILocation(line: 0, scope: !2630, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 966, column: 10, scope: !2683)
!2693 = !DILocation(line: 953, column: 3, scope: !2630, inlinedAt: !2692)
!2694 = !DILocation(line: 953, column: 32, scope: !2630, inlinedAt: !2692)
!2695 = !{!2696}
!2696 = distinct !{!2696, !2697, !"quoting_options_from_style: argument 0"}
!2697 = distinct !{!2697, !"quoting_options_from_style"}
!2698 = !DILocation(line: 953, column: 36, scope: !2630, inlinedAt: !2692)
!2699 = !DILocation(line: 0, scope: !2613, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 953, column: 36, scope: !2630, inlinedAt: !2692)
!2701 = !DILocation(line: 185, column: 26, scope: !2613, inlinedAt: !2700)
!2702 = !DILocation(line: 186, column: 13, scope: !2622, inlinedAt: !2700)
!2703 = !DILocation(line: 186, column: 7, scope: !2613, inlinedAt: !2700)
!2704 = !DILocation(line: 187, column: 5, scope: !2622, inlinedAt: !2700)
!2705 = !DILocation(line: 188, column: 5, scope: !2613, inlinedAt: !2700)
!2706 = !DILocation(line: 188, column: 11, scope: !2613, inlinedAt: !2700)
!2707 = !DILocation(line: 954, column: 10, scope: !2630, inlinedAt: !2692)
!2708 = !DILocation(line: 955, column: 1, scope: !2630, inlinedAt: !2692)
!2709 = !DILocation(line: 966, column: 3, scope: !2683)
!2710 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !255, file: !255, line: 970, type: !2711, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!39, !6, !35, !8}
!2713 = !{!2714, !2715, !2716, !2717}
!2714 = !DILocalVariable(name: "arg", arg: 1, scope: !2710, file: !255, line: 970, type: !6)
!2715 = !DILocalVariable(name: "argsize", arg: 2, scope: !2710, file: !255, line: 970, type: !35)
!2716 = !DILocalVariable(name: "ch", arg: 3, scope: !2710, file: !255, line: 970, type: !8)
!2717 = !DILocalVariable(name: "options", scope: !2710, file: !255, line: 972, type: !286)
!2718 = !DILocation(line: 0, scope: !2710)
!2719 = !DILocation(line: 972, column: 3, scope: !2710)
!2720 = !DILocation(line: 972, column: 26, scope: !2710)
!2721 = !DILocation(line: 973, column: 13, scope: !2710)
!2722 = !{i64 0, i64 4, !596, i64 4, i64 4, !587, i64 8, i64 32, !596, i64 40, i64 8, !501, i64 48, i64 8, !501}
!2723 = !DILocation(line: 0, scope: !1728, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 974, column: 3, scope: !2710)
!2725 = !DILocation(line: 147, column: 62, scope: !1728, inlinedAt: !2724)
!2726 = !DILocation(line: 147, column: 57, scope: !1728, inlinedAt: !2724)
!2727 = !DILocation(line: 148, column: 15, scope: !1728, inlinedAt: !2724)
!2728 = !DILocation(line: 149, column: 21, scope: !1728, inlinedAt: !2724)
!2729 = !DILocation(line: 149, column: 24, scope: !1728, inlinedAt: !2724)
!2730 = !DILocation(line: 149, column: 34, scope: !1728, inlinedAt: !2724)
!2731 = !DILocation(line: 150, column: 19, scope: !1728, inlinedAt: !2724)
!2732 = !DILocation(line: 150, column: 24, scope: !1728, inlinedAt: !2724)
!2733 = !DILocation(line: 150, column: 6, scope: !1728, inlinedAt: !2724)
!2734 = !DILocation(line: 975, column: 10, scope: !2710)
!2735 = !DILocation(line: 976, column: 1, scope: !2710)
!2736 = !DILocation(line: 975, column: 3, scope: !2710)
!2737 = distinct !DISubprogram(name: "quotearg_char", scope: !255, file: !255, line: 979, type: !2738, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!39, !6, !8}
!2740 = !{!2741, !2742}
!2741 = !DILocalVariable(name: "arg", arg: 1, scope: !2737, file: !255, line: 979, type: !6)
!2742 = !DILocalVariable(name: "ch", arg: 2, scope: !2737, file: !255, line: 979, type: !8)
!2743 = !DILocation(line: 0, scope: !2737)
!2744 = !DILocation(line: 0, scope: !2710, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 981, column: 10, scope: !2737)
!2746 = !DILocation(line: 972, column: 3, scope: !2710, inlinedAt: !2745)
!2747 = !DILocation(line: 972, column: 26, scope: !2710, inlinedAt: !2745)
!2748 = !DILocation(line: 973, column: 13, scope: !2710, inlinedAt: !2745)
!2749 = !DILocation(line: 0, scope: !1728, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 974, column: 3, scope: !2710, inlinedAt: !2745)
!2751 = !DILocation(line: 147, column: 62, scope: !1728, inlinedAt: !2750)
!2752 = !DILocation(line: 147, column: 57, scope: !1728, inlinedAt: !2750)
!2753 = !DILocation(line: 148, column: 15, scope: !1728, inlinedAt: !2750)
!2754 = !DILocation(line: 149, column: 21, scope: !1728, inlinedAt: !2750)
!2755 = !DILocation(line: 149, column: 24, scope: !1728, inlinedAt: !2750)
!2756 = !DILocation(line: 149, column: 34, scope: !1728, inlinedAt: !2750)
!2757 = !DILocation(line: 150, column: 19, scope: !1728, inlinedAt: !2750)
!2758 = !DILocation(line: 150, column: 24, scope: !1728, inlinedAt: !2750)
!2759 = !DILocation(line: 150, column: 6, scope: !1728, inlinedAt: !2750)
!2760 = !DILocation(line: 975, column: 10, scope: !2710, inlinedAt: !2745)
!2761 = !DILocation(line: 976, column: 1, scope: !2710, inlinedAt: !2745)
!2762 = !DILocation(line: 981, column: 3, scope: !2737)
!2763 = distinct !DISubprogram(name: "quotearg_colon", scope: !255, file: !255, line: 985, type: !699, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2764)
!2764 = !{!2765}
!2765 = !DILocalVariable(name: "arg", arg: 1, scope: !2763, file: !255, line: 985, type: !6)
!2766 = !DILocation(line: 0, scope: !2763)
!2767 = !DILocation(line: 0, scope: !2737, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 987, column: 10, scope: !2763)
!2769 = !DILocation(line: 0, scope: !2710, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 981, column: 10, scope: !2737, inlinedAt: !2768)
!2771 = !DILocation(line: 972, column: 3, scope: !2710, inlinedAt: !2770)
!2772 = !DILocation(line: 972, column: 26, scope: !2710, inlinedAt: !2770)
!2773 = !DILocation(line: 973, column: 13, scope: !2710, inlinedAt: !2770)
!2774 = !DILocation(line: 0, scope: !1728, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 974, column: 3, scope: !2710, inlinedAt: !2770)
!2776 = !DILocation(line: 147, column: 57, scope: !1728, inlinedAt: !2775)
!2777 = !DILocation(line: 149, column: 21, scope: !1728, inlinedAt: !2775)
!2778 = !DILocation(line: 150, column: 6, scope: !1728, inlinedAt: !2775)
!2779 = !DILocation(line: 975, column: 10, scope: !2710, inlinedAt: !2770)
!2780 = !DILocation(line: 976, column: 1, scope: !2710, inlinedAt: !2770)
!2781 = !DILocation(line: 987, column: 3, scope: !2763)
!2782 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !255, file: !255, line: 991, type: !2587, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2783)
!2783 = !{!2784, !2785}
!2784 = !DILocalVariable(name: "arg", arg: 1, scope: !2782, file: !255, line: 991, type: !6)
!2785 = !DILocalVariable(name: "argsize", arg: 2, scope: !2782, file: !255, line: 991, type: !35)
!2786 = !DILocation(line: 0, scope: !2782)
!2787 = !DILocation(line: 0, scope: !2710, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 993, column: 10, scope: !2782)
!2789 = !DILocation(line: 972, column: 3, scope: !2710, inlinedAt: !2788)
!2790 = !DILocation(line: 972, column: 26, scope: !2710, inlinedAt: !2788)
!2791 = !DILocation(line: 973, column: 13, scope: !2710, inlinedAt: !2788)
!2792 = !DILocation(line: 0, scope: !1728, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 974, column: 3, scope: !2710, inlinedAt: !2788)
!2794 = !DILocation(line: 147, column: 57, scope: !1728, inlinedAt: !2793)
!2795 = !DILocation(line: 149, column: 21, scope: !1728, inlinedAt: !2793)
!2796 = !DILocation(line: 150, column: 6, scope: !1728, inlinedAt: !2793)
!2797 = !DILocation(line: 975, column: 10, scope: !2710, inlinedAt: !2788)
!2798 = !DILocation(line: 976, column: 1, scope: !2710, inlinedAt: !2788)
!2799 = !DILocation(line: 993, column: 3, scope: !2782)
!2800 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !255, file: !255, line: 997, type: !2598, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2801)
!2801 = !{!2802, !2803, !2804, !2805}
!2802 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !255, line: 997, type: !33)
!2803 = !DILocalVariable(name: "s", arg: 2, scope: !2800, file: !255, line: 997, type: !257)
!2804 = !DILocalVariable(name: "arg", arg: 3, scope: !2800, file: !255, line: 997, type: !6)
!2805 = !DILocalVariable(name: "options", scope: !2800, file: !255, line: 999, type: !286)
!2806 = !DILocation(line: 0, scope: !2800)
!2807 = !DILocation(line: 999, column: 3, scope: !2800)
!2808 = !DILocation(line: 999, column: 26, scope: !2800)
!2809 = !DILocation(line: 0, scope: !2613, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 1000, column: 13, scope: !2800)
!2811 = !DILocation(line: 186, column: 13, scope: !2622, inlinedAt: !2810)
!2812 = !DILocation(line: 186, column: 7, scope: !2613, inlinedAt: !2810)
!2813 = !DILocation(line: 187, column: 5, scope: !2622, inlinedAt: !2810)
!2814 = !{!2815}
!2815 = distinct !{!2815, !2816, !"quoting_options_from_style: argument 0"}
!2816 = distinct !{!2816, !"quoting_options_from_style"}
!2817 = !DILocation(line: 1000, column: 13, scope: !2800)
!2818 = !DILocation(line: 0, scope: !1728, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1001, column: 3, scope: !2800)
!2820 = !DILocation(line: 147, column: 57, scope: !1728, inlinedAt: !2819)
!2821 = !DILocation(line: 149, column: 21, scope: !1728, inlinedAt: !2819)
!2822 = !DILocation(line: 150, column: 6, scope: !1728, inlinedAt: !2819)
!2823 = !DILocation(line: 1002, column: 10, scope: !2800)
!2824 = !DILocation(line: 1003, column: 1, scope: !2800)
!2825 = !DILocation(line: 1002, column: 3, scope: !2800)
!2826 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !255, file: !255, line: 1006, type: !2827, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!39, !33, !6, !6, !6}
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DILocalVariable(name: "n", arg: 1, scope: !2826, file: !255, line: 1006, type: !33)
!2831 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2826, file: !255, line: 1006, type: !6)
!2832 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2826, file: !255, line: 1007, type: !6)
!2833 = !DILocalVariable(name: "arg", arg: 4, scope: !2826, file: !255, line: 1007, type: !6)
!2834 = !DILocation(line: 0, scope: !2826)
!2835 = !DILocalVariable(name: "n", arg: 1, scope: !2836, file: !255, line: 1014, type: !33)
!2836 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !255, file: !255, line: 1014, type: !2837, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!39, !33, !6, !6, !6, !35}
!2839 = !{!2835, !2840, !2841, !2842, !2843, !2844}
!2840 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2836, file: !255, line: 1014, type: !6)
!2841 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2836, file: !255, line: 1015, type: !6)
!2842 = !DILocalVariable(name: "arg", arg: 4, scope: !2836, file: !255, line: 1016, type: !6)
!2843 = !DILocalVariable(name: "argsize", arg: 5, scope: !2836, file: !255, line: 1016, type: !35)
!2844 = !DILocalVariable(name: "o", scope: !2836, file: !255, line: 1018, type: !286)
!2845 = !DILocation(line: 0, scope: !2836, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 1009, column: 10, scope: !2826)
!2847 = !DILocation(line: 1018, column: 3, scope: !2836, inlinedAt: !2846)
!2848 = !DILocation(line: 1018, column: 26, scope: !2836, inlinedAt: !2846)
!2849 = !DILocation(line: 1018, column: 30, scope: !2836, inlinedAt: !2846)
!2850 = !DILocation(line: 0, scope: !1768, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 1019, column: 3, scope: !2836, inlinedAt: !2846)
!2852 = !DILocation(line: 174, column: 6, scope: !1768, inlinedAt: !2851)
!2853 = !DILocation(line: 174, column: 12, scope: !1768, inlinedAt: !2851)
!2854 = !DILocation(line: 175, column: 8, scope: !1782, inlinedAt: !2851)
!2855 = !DILocation(line: 175, column: 19, scope: !1782, inlinedAt: !2851)
!2856 = !DILocation(line: 176, column: 5, scope: !1782, inlinedAt: !2851)
!2857 = !DILocation(line: 177, column: 6, scope: !1768, inlinedAt: !2851)
!2858 = !DILocation(line: 177, column: 17, scope: !1768, inlinedAt: !2851)
!2859 = !DILocation(line: 178, column: 6, scope: !1768, inlinedAt: !2851)
!2860 = !DILocation(line: 178, column: 18, scope: !1768, inlinedAt: !2851)
!2861 = !DILocation(line: 1020, column: 10, scope: !2836, inlinedAt: !2846)
!2862 = !DILocation(line: 1021, column: 1, scope: !2836, inlinedAt: !2846)
!2863 = !DILocation(line: 1009, column: 3, scope: !2826)
!2864 = !DILocation(line: 0, scope: !2836)
!2865 = !DILocation(line: 1018, column: 3, scope: !2836)
!2866 = !DILocation(line: 1018, column: 26, scope: !2836)
!2867 = !DILocation(line: 1018, column: 30, scope: !2836)
!2868 = !DILocation(line: 0, scope: !1768, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 1019, column: 3, scope: !2836)
!2870 = !DILocation(line: 174, column: 6, scope: !1768, inlinedAt: !2869)
!2871 = !DILocation(line: 174, column: 12, scope: !1768, inlinedAt: !2869)
!2872 = !DILocation(line: 175, column: 8, scope: !1782, inlinedAt: !2869)
!2873 = !DILocation(line: 175, column: 19, scope: !1782, inlinedAt: !2869)
!2874 = !DILocation(line: 176, column: 5, scope: !1782, inlinedAt: !2869)
!2875 = !DILocation(line: 177, column: 6, scope: !1768, inlinedAt: !2869)
!2876 = !DILocation(line: 177, column: 17, scope: !1768, inlinedAt: !2869)
!2877 = !DILocation(line: 178, column: 6, scope: !1768, inlinedAt: !2869)
!2878 = !DILocation(line: 178, column: 18, scope: !1768, inlinedAt: !2869)
!2879 = !DILocation(line: 1020, column: 10, scope: !2836)
!2880 = !DILocation(line: 1021, column: 1, scope: !2836)
!2881 = !DILocation(line: 1020, column: 3, scope: !2836)
!2882 = distinct !DISubprogram(name: "quotearg_custom", scope: !255, file: !255, line: 1024, type: !2883, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!39, !6, !6, !6}
!2885 = !{!2886, !2887, !2888}
!2886 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2882, file: !255, line: 1024, type: !6)
!2887 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2882, file: !255, line: 1024, type: !6)
!2888 = !DILocalVariable(name: "arg", arg: 3, scope: !2882, file: !255, line: 1025, type: !6)
!2889 = !DILocation(line: 0, scope: !2882)
!2890 = !DILocation(line: 0, scope: !2826, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 1027, column: 10, scope: !2882)
!2892 = !DILocation(line: 0, scope: !2836, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1009, column: 10, scope: !2826, inlinedAt: !2891)
!2894 = !DILocation(line: 1018, column: 3, scope: !2836, inlinedAt: !2893)
!2895 = !DILocation(line: 1018, column: 26, scope: !2836, inlinedAt: !2893)
!2896 = !DILocation(line: 1018, column: 30, scope: !2836, inlinedAt: !2893)
!2897 = !DILocation(line: 0, scope: !1768, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 1019, column: 3, scope: !2836, inlinedAt: !2893)
!2899 = !DILocation(line: 174, column: 6, scope: !1768, inlinedAt: !2898)
!2900 = !DILocation(line: 174, column: 12, scope: !1768, inlinedAt: !2898)
!2901 = !DILocation(line: 175, column: 8, scope: !1782, inlinedAt: !2898)
!2902 = !DILocation(line: 175, column: 19, scope: !1782, inlinedAt: !2898)
!2903 = !DILocation(line: 176, column: 5, scope: !1782, inlinedAt: !2898)
!2904 = !DILocation(line: 177, column: 6, scope: !1768, inlinedAt: !2898)
!2905 = !DILocation(line: 177, column: 17, scope: !1768, inlinedAt: !2898)
!2906 = !DILocation(line: 178, column: 6, scope: !1768, inlinedAt: !2898)
!2907 = !DILocation(line: 178, column: 18, scope: !1768, inlinedAt: !2898)
!2908 = !DILocation(line: 1020, column: 10, scope: !2836, inlinedAt: !2893)
!2909 = !DILocation(line: 1021, column: 1, scope: !2836, inlinedAt: !2893)
!2910 = !DILocation(line: 1027, column: 3, scope: !2882)
!2911 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !255, file: !255, line: 1031, type: !2912, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!39, !6, !6, !6, !35}
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2911, file: !255, line: 1031, type: !6)
!2916 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2911, file: !255, line: 1031, type: !6)
!2917 = !DILocalVariable(name: "arg", arg: 3, scope: !2911, file: !255, line: 1032, type: !6)
!2918 = !DILocalVariable(name: "argsize", arg: 4, scope: !2911, file: !255, line: 1032, type: !35)
!2919 = !DILocation(line: 0, scope: !2911)
!2920 = !DILocation(line: 0, scope: !2836, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 1034, column: 10, scope: !2911)
!2922 = !DILocation(line: 1018, column: 3, scope: !2836, inlinedAt: !2921)
!2923 = !DILocation(line: 1018, column: 26, scope: !2836, inlinedAt: !2921)
!2924 = !DILocation(line: 1018, column: 30, scope: !2836, inlinedAt: !2921)
!2925 = !DILocation(line: 0, scope: !1768, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 1019, column: 3, scope: !2836, inlinedAt: !2921)
!2927 = !DILocation(line: 174, column: 6, scope: !1768, inlinedAt: !2926)
!2928 = !DILocation(line: 174, column: 12, scope: !1768, inlinedAt: !2926)
!2929 = !DILocation(line: 175, column: 8, scope: !1782, inlinedAt: !2926)
!2930 = !DILocation(line: 175, column: 19, scope: !1782, inlinedAt: !2926)
!2931 = !DILocation(line: 176, column: 5, scope: !1782, inlinedAt: !2926)
!2932 = !DILocation(line: 177, column: 6, scope: !1768, inlinedAt: !2926)
!2933 = !DILocation(line: 177, column: 17, scope: !1768, inlinedAt: !2926)
!2934 = !DILocation(line: 178, column: 6, scope: !1768, inlinedAt: !2926)
!2935 = !DILocation(line: 178, column: 18, scope: !1768, inlinedAt: !2926)
!2936 = !DILocation(line: 1020, column: 10, scope: !2836, inlinedAt: !2921)
!2937 = !DILocation(line: 1021, column: 1, scope: !2836, inlinedAt: !2921)
!2938 = !DILocation(line: 1034, column: 3, scope: !2911)
!2939 = distinct !DISubprogram(name: "quote_n_mem", scope: !255, file: !255, line: 1049, type: !2940, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!6, !33, !6, !35}
!2942 = !{!2943, !2944, !2945}
!2943 = !DILocalVariable(name: "n", arg: 1, scope: !2939, file: !255, line: 1049, type: !33)
!2944 = !DILocalVariable(name: "arg", arg: 2, scope: !2939, file: !255, line: 1049, type: !6)
!2945 = !DILocalVariable(name: "argsize", arg: 3, scope: !2939, file: !255, line: 1049, type: !35)
!2946 = !DILocation(line: 0, scope: !2939)
!2947 = !DILocation(line: 1051, column: 10, scope: !2939)
!2948 = !DILocation(line: 1051, column: 3, scope: !2939)
!2949 = distinct !DISubprogram(name: "quote_mem", scope: !255, file: !255, line: 1055, type: !2950, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!6, !6, !35}
!2952 = !{!2953, !2954}
!2953 = !DILocalVariable(name: "arg", arg: 1, scope: !2949, file: !255, line: 1055, type: !6)
!2954 = !DILocalVariable(name: "argsize", arg: 2, scope: !2949, file: !255, line: 1055, type: !35)
!2955 = !DILocation(line: 0, scope: !2949)
!2956 = !DILocation(line: 0, scope: !2939, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 1057, column: 10, scope: !2949)
!2958 = !DILocation(line: 1051, column: 10, scope: !2939, inlinedAt: !2957)
!2959 = !DILocation(line: 1057, column: 3, scope: !2949)
!2960 = distinct !DISubprogram(name: "quote_n", scope: !255, file: !255, line: 1061, type: !2961, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!6, !33, !6}
!2963 = !{!2964, !2965}
!2964 = !DILocalVariable(name: "n", arg: 1, scope: !2960, file: !255, line: 1061, type: !33)
!2965 = !DILocalVariable(name: "arg", arg: 2, scope: !2960, file: !255, line: 1061, type: !6)
!2966 = !DILocation(line: 0, scope: !2960)
!2967 = !DILocation(line: 0, scope: !2939, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 1063, column: 10, scope: !2960)
!2969 = !DILocation(line: 1051, column: 10, scope: !2939, inlinedAt: !2968)
!2970 = !DILocation(line: 1063, column: 3, scope: !2960)
!2971 = distinct !DISubprogram(name: "quote", scope: !255, file: !255, line: 1067, type: !2972, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!6, !6}
!2974 = !{!2975}
!2975 = !DILocalVariable(name: "arg", arg: 1, scope: !2971, file: !255, line: 1067, type: !6)
!2976 = !DILocation(line: 0, scope: !2971)
!2977 = !DILocation(line: 0, scope: !2960, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 1069, column: 10, scope: !2971)
!2979 = !DILocation(line: 0, scope: !2939, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 1063, column: 10, scope: !2960, inlinedAt: !2978)
!2981 = !DILocation(line: 1051, column: 10, scope: !2939, inlinedAt: !2980)
!2982 = !DILocation(line: 1069, column: 3, scope: !2971)
!2983 = distinct !DISubprogram(name: "safe_write", scope: !2984, file: !2984, line: 56, type: !2985, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !2988)
!2984 = !DIFile(filename: "./lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!443, !33, !2987, !441}
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !2984, line: 45, baseType: !705)
!2988 = !{!2989, !2990, !2991, !2992}
!2989 = !DILocalVariable(name: "fd", arg: 1, scope: !2983, file: !2984, line: 56, type: !33)
!2990 = !DILocalVariable(name: "buf", arg: 2, scope: !2983, file: !2984, line: 56, type: !2987)
!2991 = !DILocalVariable(name: "count", arg: 3, scope: !2983, file: !2984, line: 56, type: !441)
!2992 = !DILocalVariable(name: "result", scope: !2993, file: !2984, line: 60, type: !2996)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !2984, line: 59, column: 5)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !2984, line: 58, column: 3)
!2995 = distinct !DILexicalBlock(scope: !2983, file: !2984, line: 58, column: 3)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1439, line: 108, baseType: !824)
!2997 = !DILocation(line: 0, scope: !2983)
!2998 = !DILocation(line: 58, column: 3, scope: !2983)
!2999 = !DILocation(line: 60, column: 24, scope: !2993)
!3000 = !DILocation(line: 0, scope: !2993)
!3001 = !DILocation(line: 62, column: 13, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2993, file: !2984, line: 62, column: 11)
!3003 = !DILocation(line: 62, column: 11, scope: !2993)
!3004 = !DILocation(line: 64, column: 16, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !2984, line: 64, column: 16)
!3006 = !DILocation(line: 64, column: 16, scope: !3002)
!3007 = distinct !{!3007, !3008, !3009}
!3008 = !DILocation(line: 58, column: 3, scope: !2995)
!3009 = !DILocation(line: 70, column: 5, scope: !2995)
!3010 = !DILocation(line: 66, column: 22, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3005, file: !2984, line: 66, column: 16)
!3012 = !DILocation(line: 66, column: 32, scope: !3011)
!3013 = !DILocation(line: 0, scope: !2994)
!3014 = !DILocation(line: 71, column: 1, scope: !2983)
!3015 = !DISubprogram(name: "write", scope: !1018, file: !1018, line: 378, type: !3016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!2996, !33, !705, !35}
!3018 = distinct !DISubprogram(name: "version_etc_arn", scope: !415, file: !415, line: 61, type: !3019, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3056)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !3021, !6, !6, !6, !3055, !35}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3023)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3023, file: !65, line: 51, baseType: !33, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3023, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3023, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3023, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3023, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3023, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3023, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3023, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3023, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3023, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3023, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3023, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3023, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3023, file: !65, line: 70, baseType: !3039, size: 64, offset: 832)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3023, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3023, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3023, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3023, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3023, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3023, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3023, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3023, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3023, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3023, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3023, file: !65, line: 93, baseType: !3039, size: 64, offset: 1344)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3023, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3023, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3023, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3023, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062}
!3057 = !DILocalVariable(name: "stream", arg: 1, scope: !3018, file: !415, line: 61, type: !3021)
!3058 = !DILocalVariable(name: "command_name", arg: 2, scope: !3018, file: !415, line: 62, type: !6)
!3059 = !DILocalVariable(name: "package", arg: 3, scope: !3018, file: !415, line: 62, type: !6)
!3060 = !DILocalVariable(name: "version", arg: 4, scope: !3018, file: !415, line: 63, type: !6)
!3061 = !DILocalVariable(name: "authors", arg: 5, scope: !3018, file: !415, line: 64, type: !3055)
!3062 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3018, file: !415, line: 64, type: !35)
!3063 = !DILocation(line: 0, scope: !3018)
!3064 = !DILocation(line: 66, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3018, file: !415, line: 66, column: 7)
!3066 = !DILocation(line: 66, column: 7, scope: !3018)
!3067 = !DILocation(line: 67, column: 5, scope: !3065)
!3068 = !DILocation(line: 69, column: 5, scope: !3065)
!3069 = !DILocation(line: 83, column: 3, scope: !3018)
!3070 = !DILocation(line: 85, column: 3, scope: !3018)
!3071 = !DILocation(line: 88, column: 3, scope: !3018)
!3072 = !DILocation(line: 95, column: 3, scope: !3018)
!3073 = !DILocation(line: 97, column: 3, scope: !3018)
!3074 = !DILocation(line: 105, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3018, file: !415, line: 98, column: 5)
!3076 = !DILocation(line: 106, column: 7, scope: !3075)
!3077 = !DILocation(line: 109, column: 7, scope: !3075)
!3078 = !DILocation(line: 110, column: 7, scope: !3075)
!3079 = !DILocation(line: 113, column: 7, scope: !3075)
!3080 = !DILocation(line: 115, column: 7, scope: !3075)
!3081 = !DILocation(line: 120, column: 7, scope: !3075)
!3082 = !DILocation(line: 122, column: 7, scope: !3075)
!3083 = !DILocation(line: 127, column: 7, scope: !3075)
!3084 = !DILocation(line: 129, column: 7, scope: !3075)
!3085 = !DILocation(line: 134, column: 7, scope: !3075)
!3086 = !DILocation(line: 137, column: 7, scope: !3075)
!3087 = !DILocation(line: 142, column: 7, scope: !3075)
!3088 = !DILocation(line: 145, column: 7, scope: !3075)
!3089 = !DILocation(line: 150, column: 7, scope: !3075)
!3090 = !DILocation(line: 154, column: 7, scope: !3075)
!3091 = !DILocation(line: 159, column: 7, scope: !3075)
!3092 = !DILocation(line: 163, column: 7, scope: !3075)
!3093 = !DILocation(line: 170, column: 7, scope: !3075)
!3094 = !DILocation(line: 174, column: 7, scope: !3075)
!3095 = !DILocation(line: 176, column: 1, scope: !3018)
!3096 = distinct !DISubprogram(name: "version_etc_ar", scope: !415, file: !415, line: 183, type: !3097, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3099)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !3021, !6, !6, !6, !3055}
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3105}
!3100 = !DILocalVariable(name: "stream", arg: 1, scope: !3096, file: !415, line: 183, type: !3021)
!3101 = !DILocalVariable(name: "command_name", arg: 2, scope: !3096, file: !415, line: 184, type: !6)
!3102 = !DILocalVariable(name: "package", arg: 3, scope: !3096, file: !415, line: 184, type: !6)
!3103 = !DILocalVariable(name: "version", arg: 4, scope: !3096, file: !415, line: 185, type: !6)
!3104 = !DILocalVariable(name: "authors", arg: 5, scope: !3096, file: !415, line: 185, type: !3055)
!3105 = !DILocalVariable(name: "n_authors", scope: !3096, file: !415, line: 187, type: !35)
!3106 = !DILocation(line: 0, scope: !3096)
!3107 = !DILocation(line: 189, column: 8, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3096, file: !415, line: 189, column: 3)
!3109 = !DILocation(line: 0, scope: !3108)
!3110 = !DILocation(line: 189, column: 23, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3108, file: !415, line: 189, column: 3)
!3112 = !DILocation(line: 189, column: 3, scope: !3108)
!3113 = !DILocation(line: 189, column: 52, scope: !3111)
!3114 = distinct !{!3114, !3112, !3115, !553}
!3115 = !DILocation(line: 190, column: 5, scope: !3108)
!3116 = !DILocation(line: 191, column: 3, scope: !3096)
!3117 = !DILocation(line: 192, column: 1, scope: !3096)
!3118 = distinct !DISubprogram(name: "version_etc_va", scope: !415, file: !415, line: 199, type: !3119, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3132)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !3021, !6, !6, !6, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !3122)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3124, baseType: !3125)
!3124 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !3126)
!3126 = !{!3127, !3128, !3129, !3130, !3131}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3125, file: !3124, line: 192, baseType: !32, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3125, file: !3124, line: 192, baseType: !32, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3125, file: !3124, line: 192, baseType: !32, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3125, file: !3124, line: 192, baseType: !33, size: 32, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3125, file: !3124, line: 192, baseType: !33, size: 32, offset: 224)
!3132 = !{!3133, !3134, !3135, !3136, !3137, !3138, !3139}
!3133 = !DILocalVariable(name: "stream", arg: 1, scope: !3118, file: !415, line: 199, type: !3021)
!3134 = !DILocalVariable(name: "command_name", arg: 2, scope: !3118, file: !415, line: 200, type: !6)
!3135 = !DILocalVariable(name: "package", arg: 3, scope: !3118, file: !415, line: 200, type: !6)
!3136 = !DILocalVariable(name: "version", arg: 4, scope: !3118, file: !415, line: 201, type: !6)
!3137 = !DILocalVariable(name: "authors", arg: 5, scope: !3118, file: !415, line: 201, type: !3121)
!3138 = !DILocalVariable(name: "n_authors", scope: !3118, file: !415, line: 203, type: !35)
!3139 = !DILocalVariable(name: "authtab", scope: !3118, file: !415, line: 204, type: !3140)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !282)
!3141 = !DILocation(line: 0, scope: !3118)
!3142 = !DILocation(line: 201, column: 46, scope: !3118)
!3143 = !DILocation(line: 204, column: 3, scope: !3118)
!3144 = !DILocation(line: 204, column: 15, scope: !3118)
!3145 = !DILocation(line: 208, column: 35, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !415, line: 206, column: 3)
!3147 = distinct !DILexicalBlock(scope: !3118, file: !415, line: 206, column: 3)
!3148 = !DILocation(line: 208, column: 14, scope: !3146)
!3149 = !DILocation(line: 208, column: 33, scope: !3146)
!3150 = !DILocation(line: 208, column: 67, scope: !3146)
!3151 = !DILocation(line: 206, column: 3, scope: !3147)
!3152 = !DILocation(line: 0, scope: !3147)
!3153 = !DILocation(line: 211, column: 3, scope: !3118)
!3154 = !DILocation(line: 213, column: 1, scope: !3118)
!3155 = distinct !DISubprogram(name: "version_etc", scope: !415, file: !415, line: 230, type: !3156, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !3021, !6, !6, !6, null}
!3158 = !{!3159, !3160, !3161, !3162, !3163}
!3159 = !DILocalVariable(name: "stream", arg: 1, scope: !3155, file: !415, line: 230, type: !3021)
!3160 = !DILocalVariable(name: "command_name", arg: 2, scope: !3155, file: !415, line: 231, type: !6)
!3161 = !DILocalVariable(name: "package", arg: 3, scope: !3155, file: !415, line: 231, type: !6)
!3162 = !DILocalVariable(name: "version", arg: 4, scope: !3155, file: !415, line: 232, type: !6)
!3163 = !DILocalVariable(name: "authors", scope: !3155, file: !415, line: 234, type: !3121)
!3164 = !DILocation(line: 0, scope: !3155)
!3165 = !DILocation(line: 234, column: 3, scope: !3155)
!3166 = !DILocation(line: 234, column: 11, scope: !3155)
!3167 = !DILocation(line: 235, column: 3, scope: !3155)
!3168 = !DILocation(line: 236, column: 3, scope: !3155)
!3169 = !DILocation(line: 237, column: 3, scope: !3155)
!3170 = !DILocation(line: 238, column: 1, scope: !3155)
!3171 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !415, file: !415, line: 241, type: !173, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !579)
!3172 = !DILocation(line: 243, column: 3, scope: !3171)
!3173 = !DILocation(line: 248, column: 3, scope: !3171)
!3174 = !DILocation(line: 254, column: 3, scope: !3171)
!3175 = !DILocation(line: 259, column: 3, scope: !3171)
!3176 = !DILocation(line: 261, column: 1, scope: !3171)
!3177 = distinct !DISubprogram(name: "xnrealloc", scope: !3178, file: !3178, line: 147, type: !3179, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3181)
!3178 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!32, !32, !35, !35}
!3181 = !{!3182, !3183, !3184}
!3182 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !3178, line: 147, type: !32)
!3183 = !DILocalVariable(name: "n", arg: 2, scope: !3177, file: !3178, line: 147, type: !35)
!3184 = !DILocalVariable(name: "s", arg: 3, scope: !3177, file: !3178, line: 147, type: !35)
!3185 = !DILocation(line: 0, scope: !3177)
!3186 = !DILocalVariable(name: "p", arg: 1, scope: !3187, file: !422, line: 83, type: !32)
!3187 = distinct !DISubprogram(name: "xreallocarray", scope: !422, file: !422, line: 83, type: !3179, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3188)
!3188 = !{!3186, !3189, !3190}
!3189 = !DILocalVariable(name: "n", arg: 2, scope: !3187, file: !422, line: 83, type: !35)
!3190 = !DILocalVariable(name: "s", arg: 3, scope: !3187, file: !422, line: 83, type: !35)
!3191 = !DILocation(line: 0, scope: !3187, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 149, column: 10, scope: !3177)
!3193 = !DILocation(line: 85, column: 25, scope: !3187, inlinedAt: !3192)
!3194 = !DILocalVariable(name: "p", arg: 1, scope: !3195, file: !422, line: 37, type: !32)
!3195 = distinct !DISubprogram(name: "check_nonnull", scope: !422, file: !422, line: 37, type: !3196, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3198)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!32, !32}
!3198 = !{!3194}
!3199 = !DILocation(line: 0, scope: !3195, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 85, column: 10, scope: !3187, inlinedAt: !3192)
!3201 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3200)
!3202 = distinct !DILexicalBlock(scope: !3195, file: !422, line: 39, column: 7)
!3203 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3200)
!3204 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3200)
!3205 = !DILocation(line: 149, column: 3, scope: !3177)
!3206 = !DILocation(line: 0, scope: !3187)
!3207 = !DILocation(line: 85, column: 25, scope: !3187)
!3208 = !DILocation(line: 0, scope: !3195, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 85, column: 10, scope: !3187)
!3210 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3209)
!3211 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3209)
!3212 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3209)
!3213 = !DILocation(line: 85, column: 3, scope: !3187)
!3214 = distinct !DISubprogram(name: "xmalloc", scope: !422, file: !422, line: 47, type: !3215, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!32, !35}
!3217 = !{!3218}
!3218 = !DILocalVariable(name: "s", arg: 1, scope: !3214, file: !422, line: 47, type: !35)
!3219 = !DILocation(line: 0, scope: !3214)
!3220 = !DILocation(line: 49, column: 25, scope: !3214)
!3221 = !DILocation(line: 0, scope: !3195, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 49, column: 10, scope: !3214)
!3223 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3222)
!3224 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3222)
!3225 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3222)
!3226 = !DILocation(line: 49, column: 3, scope: !3214)
!3227 = distinct !DISubprogram(name: "ximalloc", scope: !422, file: !422, line: 53, type: !3228, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!32, !441}
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "s", arg: 1, scope: !3227, file: !422, line: 53, type: !441)
!3232 = !DILocation(line: 0, scope: !3227)
!3233 = !DILocalVariable(name: "s", arg: 1, scope: !3234, file: !3235, line: 55, type: !441)
!3234 = distinct !DISubprogram(name: "imalloc", scope: !3235, file: !3235, line: 55, type: !3228, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3236)
!3235 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3236 = !{!3233}
!3237 = !DILocation(line: 0, scope: !3234, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 55, column: 25, scope: !3227)
!3239 = !DILocation(line: 57, column: 26, scope: !3234, inlinedAt: !3238)
!3240 = !DILocation(line: 0, scope: !3195, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 55, column: 10, scope: !3227)
!3242 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3241)
!3243 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3241)
!3244 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3241)
!3245 = !DILocation(line: 55, column: 3, scope: !3227)
!3246 = distinct !DISubprogram(name: "xcharalloc", scope: !422, file: !422, line: 59, type: !3247, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!39, !35}
!3249 = !{!3250}
!3250 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !422, line: 59, type: !35)
!3251 = !DILocation(line: 0, scope: !3246)
!3252 = !DILocation(line: 0, scope: !3214, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 61, column: 10, scope: !3246)
!3254 = !DILocation(line: 49, column: 25, scope: !3214, inlinedAt: !3253)
!3255 = !DILocation(line: 0, scope: !3195, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 49, column: 10, scope: !3214, inlinedAt: !3253)
!3257 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3256)
!3258 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3256)
!3259 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3256)
!3260 = !DILocation(line: 61, column: 3, scope: !3246)
!3261 = distinct !DISubprogram(name: "xrealloc", scope: !422, file: !422, line: 68, type: !3262, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!32, !32, !35}
!3264 = !{!3265, !3266}
!3265 = !DILocalVariable(name: "p", arg: 1, scope: !3261, file: !422, line: 68, type: !32)
!3266 = !DILocalVariable(name: "s", arg: 2, scope: !3261, file: !422, line: 68, type: !35)
!3267 = !DILocation(line: 0, scope: !3261)
!3268 = !DILocalVariable(name: "ptr", arg: 1, scope: !3269, file: !3270, line: 2057, type: !32)
!3269 = distinct !DISubprogram(name: "rpl_realloc", scope: !3270, file: !3270, line: 2057, type: !3262, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3271)
!3270 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3271 = !{!3268, !3272}
!3272 = !DILocalVariable(name: "size", arg: 2, scope: !3269, file: !3270, line: 2057, type: !35)
!3273 = !DILocation(line: 0, scope: !3269, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 70, column: 25, scope: !3261)
!3275 = !DILocation(line: 2059, column: 24, scope: !3269, inlinedAt: !3274)
!3276 = !DILocation(line: 2059, column: 10, scope: !3269, inlinedAt: !3274)
!3277 = !DILocation(line: 0, scope: !3195, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 70, column: 10, scope: !3261)
!3279 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3278)
!3280 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3278)
!3281 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3278)
!3282 = !DILocation(line: 70, column: 3, scope: !3261)
!3283 = distinct !DISubprogram(name: "xirealloc", scope: !422, file: !422, line: 74, type: !3284, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!32, !32, !441}
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "p", arg: 1, scope: !3283, file: !422, line: 74, type: !32)
!3288 = !DILocalVariable(name: "s", arg: 2, scope: !3283, file: !422, line: 74, type: !441)
!3289 = !DILocation(line: 0, scope: !3283)
!3290 = !DILocalVariable(name: "p", arg: 1, scope: !3291, file: !3235, line: 66, type: !32)
!3291 = distinct !DISubprogram(name: "irealloc", scope: !3235, file: !3235, line: 66, type: !3284, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3292)
!3292 = !{!3290, !3293}
!3293 = !DILocalVariable(name: "s", arg: 2, scope: !3291, file: !3235, line: 66, type: !441)
!3294 = !DILocation(line: 0, scope: !3291, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 76, column: 25, scope: !3283)
!3296 = !DILocation(line: 0, scope: !3269, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 68, column: 26, scope: !3291, inlinedAt: !3295)
!3298 = !DILocation(line: 2059, column: 24, scope: !3269, inlinedAt: !3297)
!3299 = !DILocation(line: 2059, column: 10, scope: !3269, inlinedAt: !3297)
!3300 = !DILocation(line: 0, scope: !3195, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 76, column: 10, scope: !3283)
!3302 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3301)
!3303 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3301)
!3304 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3301)
!3305 = !DILocation(line: 76, column: 3, scope: !3283)
!3306 = distinct !DISubprogram(name: "xireallocarray", scope: !422, file: !422, line: 89, type: !3307, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!32, !32, !441, !441}
!3309 = !{!3310, !3311, !3312}
!3310 = !DILocalVariable(name: "p", arg: 1, scope: !3306, file: !422, line: 89, type: !32)
!3311 = !DILocalVariable(name: "n", arg: 2, scope: !3306, file: !422, line: 89, type: !441)
!3312 = !DILocalVariable(name: "s", arg: 3, scope: !3306, file: !422, line: 89, type: !441)
!3313 = !DILocation(line: 0, scope: !3306)
!3314 = !DILocalVariable(name: "p", arg: 1, scope: !3315, file: !3235, line: 98, type: !32)
!3315 = distinct !DISubprogram(name: "ireallocarray", scope: !3235, file: !3235, line: 98, type: !3307, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3316)
!3316 = !{!3314, !3317, !3318}
!3317 = !DILocalVariable(name: "n", arg: 2, scope: !3315, file: !3235, line: 98, type: !441)
!3318 = !DILocalVariable(name: "s", arg: 3, scope: !3315, file: !3235, line: 98, type: !441)
!3319 = !DILocation(line: 0, scope: !3315, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 91, column: 25, scope: !3306)
!3321 = !DILocation(line: 101, column: 13, scope: !3315, inlinedAt: !3320)
!3322 = !DILocation(line: 0, scope: !3195, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 91, column: 10, scope: !3306)
!3324 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3323)
!3325 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3323)
!3326 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3323)
!3327 = !DILocation(line: 91, column: 3, scope: !3306)
!3328 = distinct !DISubprogram(name: "xnmalloc", scope: !422, file: !422, line: 98, type: !3329, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!32, !35, !35}
!3331 = !{!3332, !3333}
!3332 = !DILocalVariable(name: "n", arg: 1, scope: !3328, file: !422, line: 98, type: !35)
!3333 = !DILocalVariable(name: "s", arg: 2, scope: !3328, file: !422, line: 98, type: !35)
!3334 = !DILocation(line: 0, scope: !3328)
!3335 = !DILocation(line: 0, scope: !3187, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 100, column: 10, scope: !3328)
!3337 = !DILocation(line: 85, column: 25, scope: !3187, inlinedAt: !3336)
!3338 = !DILocation(line: 0, scope: !3195, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 85, column: 10, scope: !3187, inlinedAt: !3336)
!3340 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3339)
!3341 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3339)
!3342 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3339)
!3343 = !DILocation(line: 100, column: 3, scope: !3328)
!3344 = distinct !DISubprogram(name: "xinmalloc", scope: !422, file: !422, line: 104, type: !882, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3345)
!3345 = !{!3346, !3347}
!3346 = !DILocalVariable(name: "n", arg: 1, scope: !3344, file: !422, line: 104, type: !441)
!3347 = !DILocalVariable(name: "s", arg: 2, scope: !3344, file: !422, line: 104, type: !441)
!3348 = !DILocation(line: 0, scope: !3344)
!3349 = !DILocation(line: 0, scope: !3306, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 106, column: 10, scope: !3344)
!3351 = !DILocation(line: 0, scope: !3315, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 91, column: 25, scope: !3306, inlinedAt: !3350)
!3353 = !DILocation(line: 101, column: 13, scope: !3315, inlinedAt: !3352)
!3354 = !DILocation(line: 0, scope: !3195, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 91, column: 10, scope: !3306, inlinedAt: !3350)
!3356 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3355)
!3357 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3355)
!3358 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3355)
!3359 = !DILocation(line: 106, column: 3, scope: !3344)
!3360 = distinct !DISubprogram(name: "x2realloc", scope: !422, file: !422, line: 116, type: !3361, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!32, !32, !428}
!3363 = !{!3364, !3365}
!3364 = !DILocalVariable(name: "p", arg: 1, scope: !3360, file: !422, line: 116, type: !32)
!3365 = !DILocalVariable(name: "ps", arg: 2, scope: !3360, file: !422, line: 116, type: !428)
!3366 = !DILocation(line: 0, scope: !3360)
!3367 = !DILocation(line: 0, scope: !425, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 118, column: 10, scope: !3360)
!3369 = !DILocation(line: 178, column: 14, scope: !425, inlinedAt: !3368)
!3370 = !DILocation(line: 180, column: 9, scope: !3371, inlinedAt: !3368)
!3371 = distinct !DILexicalBlock(scope: !425, file: !422, line: 180, column: 7)
!3372 = !DILocation(line: 180, column: 7, scope: !425, inlinedAt: !3368)
!3373 = !DILocation(line: 182, column: 13, scope: !3374, inlinedAt: !3368)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !422, line: 182, column: 11)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !422, line: 181, column: 5)
!3376 = !DILocation(line: 182, column: 11, scope: !3375, inlinedAt: !3368)
!3377 = !DILocation(line: 197, column: 11, scope: !3378, inlinedAt: !3368)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !422, line: 197, column: 11)
!3379 = distinct !DILexicalBlock(scope: !3371, file: !422, line: 195, column: 5)
!3380 = !DILocation(line: 197, column: 11, scope: !3379, inlinedAt: !3368)
!3381 = !DILocation(line: 198, column: 9, scope: !3378, inlinedAt: !3368)
!3382 = !DILocation(line: 0, scope: !3187, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 201, column: 7, scope: !425, inlinedAt: !3368)
!3384 = !DILocation(line: 85, column: 25, scope: !3187, inlinedAt: !3383)
!3385 = !DILocation(line: 0, scope: !3195, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 85, column: 10, scope: !3187, inlinedAt: !3383)
!3387 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3386)
!3388 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3386)
!3389 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3386)
!3390 = !DILocation(line: 202, column: 7, scope: !425, inlinedAt: !3368)
!3391 = !DILocation(line: 118, column: 3, scope: !3360)
!3392 = !DILocation(line: 0, scope: !425)
!3393 = !DILocation(line: 178, column: 14, scope: !425)
!3394 = !DILocation(line: 180, column: 9, scope: !3371)
!3395 = !DILocation(line: 180, column: 7, scope: !425)
!3396 = !DILocation(line: 182, column: 13, scope: !3374)
!3397 = !DILocation(line: 182, column: 11, scope: !3375)
!3398 = !DILocation(line: 190, column: 30, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3374, file: !422, line: 183, column: 9)
!3400 = !DILocation(line: 191, column: 16, scope: !3399)
!3401 = !DILocation(line: 191, column: 13, scope: !3399)
!3402 = !DILocation(line: 192, column: 9, scope: !3399)
!3403 = !DILocation(line: 197, column: 11, scope: !3378)
!3404 = !DILocation(line: 197, column: 11, scope: !3379)
!3405 = !DILocation(line: 198, column: 9, scope: !3378)
!3406 = !DILocation(line: 0, scope: !3187, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 201, column: 7, scope: !425)
!3408 = !DILocation(line: 85, column: 25, scope: !3187, inlinedAt: !3407)
!3409 = !DILocation(line: 0, scope: !3195, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 85, column: 10, scope: !3187, inlinedAt: !3407)
!3411 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3410)
!3412 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3410)
!3413 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3410)
!3414 = !DILocation(line: 202, column: 7, scope: !425)
!3415 = !DILocation(line: 203, column: 3, scope: !425)
!3416 = !DILocation(line: 0, scope: !437)
!3417 = !DILocation(line: 230, column: 14, scope: !437)
!3418 = !DILocation(line: 238, column: 7, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !437, file: !422, line: 238, column: 7)
!3420 = !DILocation(line: 238, column: 7, scope: !437)
!3421 = !DILocation(line: 240, column: 9, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !437, file: !422, line: 240, column: 7)
!3423 = !DILocation(line: 240, column: 18, scope: !3422)
!3424 = !DILocation(line: 253, column: 8, scope: !437)
!3425 = !DILocation(line: 258, column: 27, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !422, line: 257, column: 5)
!3427 = distinct !DILexicalBlock(scope: !437, file: !422, line: 256, column: 7)
!3428 = !DILocation(line: 259, column: 32, scope: !3426)
!3429 = !DILocation(line: 260, column: 5, scope: !3426)
!3430 = !DILocation(line: 262, column: 9, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !437, file: !422, line: 262, column: 7)
!3432 = !DILocation(line: 262, column: 7, scope: !437)
!3433 = !DILocation(line: 263, column: 9, scope: !3431)
!3434 = !DILocation(line: 263, column: 5, scope: !3431)
!3435 = !DILocation(line: 264, column: 9, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !437, file: !422, line: 264, column: 7)
!3437 = !DILocation(line: 264, column: 14, scope: !3436)
!3438 = !DILocation(line: 265, column: 7, scope: !3436)
!3439 = !DILocation(line: 265, column: 11, scope: !3436)
!3440 = !DILocation(line: 266, column: 11, scope: !3436)
!3441 = !DILocation(line: 266, column: 26, scope: !3436)
!3442 = !DILocation(line: 267, column: 14, scope: !3436)
!3443 = !DILocation(line: 264, column: 7, scope: !437)
!3444 = !DILocation(line: 268, column: 5, scope: !3436)
!3445 = !DILocation(line: 0, scope: !3261, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 269, column: 8, scope: !437)
!3447 = !DILocation(line: 0, scope: !3269, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 70, column: 25, scope: !3261, inlinedAt: !3446)
!3449 = !DILocation(line: 2059, column: 24, scope: !3269, inlinedAt: !3448)
!3450 = !DILocation(line: 2059, column: 10, scope: !3269, inlinedAt: !3448)
!3451 = !DILocation(line: 0, scope: !3195, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 70, column: 10, scope: !3261, inlinedAt: !3446)
!3453 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3452)
!3454 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3452)
!3455 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3452)
!3456 = !DILocation(line: 270, column: 7, scope: !437)
!3457 = !DILocation(line: 271, column: 3, scope: !437)
!3458 = distinct !DISubprogram(name: "xzalloc", scope: !422, file: !422, line: 279, type: !3215, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3459)
!3459 = !{!3460}
!3460 = !DILocalVariable(name: "s", arg: 1, scope: !3458, file: !422, line: 279, type: !35)
!3461 = !DILocation(line: 0, scope: !3458)
!3462 = !DILocalVariable(name: "n", arg: 1, scope: !3463, file: !422, line: 294, type: !35)
!3463 = distinct !DISubprogram(name: "xcalloc", scope: !422, file: !422, line: 294, type: !3329, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3464)
!3464 = !{!3462, !3465}
!3465 = !DILocalVariable(name: "s", arg: 2, scope: !3463, file: !422, line: 294, type: !35)
!3466 = !DILocation(line: 0, scope: !3463, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 281, column: 10, scope: !3458)
!3468 = !DILocation(line: 296, column: 25, scope: !3463, inlinedAt: !3467)
!3469 = !DILocation(line: 0, scope: !3195, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 296, column: 10, scope: !3463, inlinedAt: !3467)
!3471 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3470)
!3472 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3470)
!3473 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3470)
!3474 = !DILocation(line: 281, column: 3, scope: !3458)
!3475 = !DILocation(line: 0, scope: !3463)
!3476 = !DILocation(line: 296, column: 25, scope: !3463)
!3477 = !DILocation(line: 0, scope: !3195, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 296, column: 10, scope: !3463)
!3479 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3478)
!3480 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3478)
!3481 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3478)
!3482 = !DILocation(line: 296, column: 3, scope: !3463)
!3483 = distinct !DISubprogram(name: "xizalloc", scope: !422, file: !422, line: 285, type: !3228, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3484)
!3484 = !{!3485}
!3485 = !DILocalVariable(name: "s", arg: 1, scope: !3483, file: !422, line: 285, type: !441)
!3486 = !DILocation(line: 0, scope: !3483)
!3487 = !DILocalVariable(name: "n", arg: 1, scope: !3488, file: !422, line: 300, type: !441)
!3488 = distinct !DISubprogram(name: "xicalloc", scope: !422, file: !422, line: 300, type: !882, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3489)
!3489 = !{!3487, !3490}
!3490 = !DILocalVariable(name: "s", arg: 2, scope: !3488, file: !422, line: 300, type: !441)
!3491 = !DILocation(line: 0, scope: !3488, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 287, column: 10, scope: !3483)
!3493 = !DILocalVariable(name: "n", arg: 1, scope: !3494, file: !3235, line: 77, type: !441)
!3494 = distinct !DISubprogram(name: "icalloc", scope: !3235, file: !3235, line: 77, type: !882, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3495)
!3495 = !{!3493, !3496}
!3496 = !DILocalVariable(name: "s", arg: 2, scope: !3494, file: !3235, line: 77, type: !441)
!3497 = !DILocation(line: 0, scope: !3494, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 302, column: 25, scope: !3488, inlinedAt: !3492)
!3499 = !DILocation(line: 91, column: 10, scope: !3494, inlinedAt: !3498)
!3500 = !DILocation(line: 0, scope: !3195, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 302, column: 10, scope: !3488, inlinedAt: !3492)
!3502 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3501)
!3503 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3501)
!3504 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3501)
!3505 = !DILocation(line: 287, column: 3, scope: !3483)
!3506 = !DILocation(line: 0, scope: !3488)
!3507 = !DILocation(line: 0, scope: !3494, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 302, column: 25, scope: !3488)
!3509 = !DILocation(line: 91, column: 10, scope: !3494, inlinedAt: !3508)
!3510 = !DILocation(line: 0, scope: !3195, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 302, column: 10, scope: !3488)
!3512 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3511)
!3513 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3511)
!3514 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3511)
!3515 = !DILocation(line: 302, column: 3, scope: !3488)
!3516 = distinct !DISubprogram(name: "xmemdup", scope: !422, file: !422, line: 310, type: !3517, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3519)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!32, !705, !35}
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "p", arg: 1, scope: !3516, file: !422, line: 310, type: !705)
!3521 = !DILocalVariable(name: "s", arg: 2, scope: !3516, file: !422, line: 310, type: !35)
!3522 = !DILocation(line: 0, scope: !3516)
!3523 = !DILocation(line: 0, scope: !3214, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 312, column: 18, scope: !3516)
!3525 = !DILocation(line: 49, column: 25, scope: !3214, inlinedAt: !3524)
!3526 = !DILocation(line: 0, scope: !3195, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 49, column: 10, scope: !3214, inlinedAt: !3524)
!3528 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3527)
!3529 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3527)
!3530 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3527)
!3531 = !DILocalVariable(name: "__dest", arg: 1, scope: !3532, file: !773, line: 26, type: !776)
!3532 = distinct !DISubprogram(name: "memcpy", scope: !773, file: !773, line: 26, type: !774, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3533)
!3533 = !{!3531, !3534, !3535}
!3534 = !DILocalVariable(name: "__src", arg: 2, scope: !3532, file: !773, line: 26, type: !704)
!3535 = !DILocalVariable(name: "__len", arg: 3, scope: !3532, file: !773, line: 26, type: !35)
!3536 = !DILocation(line: 0, scope: !3532, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 312, column: 10, scope: !3516)
!3538 = !DILocation(line: 29, column: 10, scope: !3532, inlinedAt: !3537)
!3539 = !DILocation(line: 312, column: 3, scope: !3516)
!3540 = distinct !DISubprogram(name: "ximemdup", scope: !422, file: !422, line: 316, type: !3541, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!32, !705, !441}
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "p", arg: 1, scope: !3540, file: !422, line: 316, type: !705)
!3545 = !DILocalVariable(name: "s", arg: 2, scope: !3540, file: !422, line: 316, type: !441)
!3546 = !DILocation(line: 0, scope: !3540)
!3547 = !DILocation(line: 0, scope: !3227, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 318, column: 18, scope: !3540)
!3549 = !DILocation(line: 0, scope: !3234, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 55, column: 25, scope: !3227, inlinedAt: !3548)
!3551 = !DILocation(line: 57, column: 26, scope: !3234, inlinedAt: !3550)
!3552 = !DILocation(line: 0, scope: !3195, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 55, column: 10, scope: !3227, inlinedAt: !3548)
!3554 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3553)
!3555 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3553)
!3556 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3553)
!3557 = !DILocation(line: 0, scope: !3532, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 318, column: 10, scope: !3540)
!3559 = !DILocation(line: 29, column: 10, scope: !3532, inlinedAt: !3558)
!3560 = !DILocation(line: 318, column: 3, scope: !3540)
!3561 = distinct !DISubprogram(name: "ximemdup0", scope: !422, file: !422, line: 325, type: !3562, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!39, !705, !441}
!3564 = !{!3565, !3566, !3567}
!3565 = !DILocalVariable(name: "p", arg: 1, scope: !3561, file: !422, line: 325, type: !705)
!3566 = !DILocalVariable(name: "s", arg: 2, scope: !3561, file: !422, line: 325, type: !441)
!3567 = !DILocalVariable(name: "result", scope: !3561, file: !422, line: 327, type: !39)
!3568 = !DILocation(line: 0, scope: !3561)
!3569 = !DILocation(line: 327, column: 30, scope: !3561)
!3570 = !DILocation(line: 0, scope: !3227, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 327, column: 18, scope: !3561)
!3572 = !DILocation(line: 0, scope: !3234, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 55, column: 25, scope: !3227, inlinedAt: !3571)
!3574 = !DILocation(line: 57, column: 26, scope: !3234, inlinedAt: !3573)
!3575 = !DILocation(line: 0, scope: !3195, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 55, column: 10, scope: !3227, inlinedAt: !3571)
!3577 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3576)
!3578 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3576)
!3579 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3576)
!3580 = !DILocation(line: 328, column: 3, scope: !3561)
!3581 = !DILocation(line: 328, column: 13, scope: !3561)
!3582 = !DILocation(line: 0, scope: !3532, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 329, column: 10, scope: !3561)
!3584 = !DILocation(line: 29, column: 10, scope: !3532, inlinedAt: !3583)
!3585 = !DILocation(line: 329, column: 3, scope: !3561)
!3586 = distinct !DISubprogram(name: "xstrdup", scope: !422, file: !422, line: 335, type: !699, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3587)
!3587 = !{!3588}
!3588 = !DILocalVariable(name: "string", arg: 1, scope: !3586, file: !422, line: 335, type: !6)
!3589 = !DILocation(line: 0, scope: !3586)
!3590 = !DILocation(line: 337, column: 27, scope: !3586)
!3591 = !DILocation(line: 337, column: 43, scope: !3586)
!3592 = !DILocation(line: 0, scope: !3516, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 337, column: 10, scope: !3586)
!3594 = !DILocation(line: 0, scope: !3214, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 312, column: 18, scope: !3516, inlinedAt: !3593)
!3596 = !DILocation(line: 49, column: 25, scope: !3214, inlinedAt: !3595)
!3597 = !DILocation(line: 0, scope: !3195, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 49, column: 10, scope: !3214, inlinedAt: !3595)
!3599 = !DILocation(line: 39, column: 8, scope: !3202, inlinedAt: !3598)
!3600 = !DILocation(line: 39, column: 7, scope: !3195, inlinedAt: !3598)
!3601 = !DILocation(line: 40, column: 5, scope: !3202, inlinedAt: !3598)
!3602 = !DILocation(line: 0, scope: !3532, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 312, column: 10, scope: !3516, inlinedAt: !3593)
!3604 = !DILocation(line: 29, column: 10, scope: !3532, inlinedAt: !3603)
!3605 = !DILocation(line: 337, column: 3, scope: !3586)
!3606 = distinct !DISubprogram(name: "xalloc_die", scope: !456, file: !456, line: 32, type: !173, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !3607)
!3607 = !{!3608}
!3608 = !DILocalVariable(name: "__errstatus", scope: !3609, file: !456, line: 34, type: !3610)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !456, line: 34, column: 3)
!3610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!3611 = !DILocation(line: 34, column: 3, scope: !3609)
!3612 = !DILocation(line: 0, scope: !3609)
!3613 = !DILocation(line: 40, column: 3, scope: !3606)
!3614 = distinct !DISubprogram(name: "close_stream", scope: !458, file: !458, line: 55, type: !3615, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !3651)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!33, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3619, file: !65, line: 51, baseType: !33, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3619, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3619, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3619, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3619, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3619, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3619, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3619, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3619, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3619, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3619, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3619, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3619, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3619, file: !65, line: 70, baseType: !3635, size: 64, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3619, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3619, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3619, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3619, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3619, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3619, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3619, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3619, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3619, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3619, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3619, file: !65, line: 93, baseType: !3635, size: 64, offset: 1344)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3619, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3619, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3619, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3619, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3651 = !{!3652, !3653, !3655, !3656}
!3652 = !DILocalVariable(name: "stream", arg: 1, scope: !3614, file: !458, line: 55, type: !3617)
!3653 = !DILocalVariable(name: "some_pending", scope: !3614, file: !458, line: 57, type: !3654)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!3655 = !DILocalVariable(name: "prev_fail", scope: !3614, file: !458, line: 58, type: !3654)
!3656 = !DILocalVariable(name: "fclose_fail", scope: !3614, file: !458, line: 59, type: !3654)
!3657 = !DILocation(line: 0, scope: !3614)
!3658 = !DILocation(line: 57, column: 30, scope: !3614)
!3659 = !DILocalVariable(name: "__stream", arg: 1, scope: !3660, file: !1206, line: 135, type: !3617)
!3660 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1206, file: !1206, line: 135, type: !3615, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !3661)
!3661 = !{!3659}
!3662 = !DILocation(line: 0, scope: !3660, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 58, column: 27, scope: !3614)
!3664 = !DILocation(line: 137, column: 10, scope: !3660, inlinedAt: !3663)
!3665 = !{!1215, !588, i64 0}
!3666 = !DILocation(line: 58, column: 43, scope: !3614)
!3667 = !DILocation(line: 59, column: 29, scope: !3614)
!3668 = !DILocation(line: 59, column: 45, scope: !3614)
!3669 = !DILocation(line: 69, column: 17, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3614, file: !458, line: 69, column: 7)
!3671 = !DILocation(line: 57, column: 50, scope: !3614)
!3672 = !DILocation(line: 69, column: 33, scope: !3670)
!3673 = !DILocation(line: 69, column: 53, scope: !3670)
!3674 = !DILocation(line: 69, column: 59, scope: !3670)
!3675 = !DILocation(line: 69, column: 7, scope: !3614)
!3676 = !DILocation(line: 71, column: 11, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3670, file: !458, line: 70, column: 5)
!3678 = !DILocation(line: 72, column: 9, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3677, file: !458, line: 71, column: 11)
!3680 = !DILocation(line: 72, column: 15, scope: !3679)
!3681 = !DILocation(line: 77, column: 1, scope: !3614)
!3682 = distinct !DISubprogram(name: "rpl_fclose", scope: !460, file: !460, line: 58, type: !3683, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !3719)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!33, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3687)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3688)
!3688 = !{!3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3687, file: !65, line: 51, baseType: !33, size: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3687, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3687, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3687, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3687, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3687, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3687, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3687, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3687, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3687, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3687, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3687, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3687, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3687, file: !65, line: 70, baseType: !3703, size: 64, offset: 832)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3687, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3687, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3687, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3687, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3687, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3687, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3687, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3687, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3687, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3687, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3687, file: !65, line: 93, baseType: !3703, size: 64, offset: 1344)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3687, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3687, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3687, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3687, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3719 = !{!3720, !3721, !3722, !3723}
!3720 = !DILocalVariable(name: "fp", arg: 1, scope: !3682, file: !460, line: 58, type: !3685)
!3721 = !DILocalVariable(name: "saved_errno", scope: !3682, file: !460, line: 60, type: !33)
!3722 = !DILocalVariable(name: "fd", scope: !3682, file: !460, line: 63, type: !33)
!3723 = !DILocalVariable(name: "result", scope: !3682, file: !460, line: 74, type: !33)
!3724 = !DILocation(line: 0, scope: !3682)
!3725 = !DILocation(line: 63, column: 12, scope: !3682)
!3726 = !DILocation(line: 64, column: 10, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3682, file: !460, line: 64, column: 7)
!3728 = !DILocation(line: 64, column: 7, scope: !3682)
!3729 = !DILocation(line: 65, column: 12, scope: !3727)
!3730 = !DILocation(line: 65, column: 5, scope: !3727)
!3731 = !DILocation(line: 70, column: 9, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3682, file: !460, line: 70, column: 7)
!3733 = !DILocation(line: 70, column: 23, scope: !3732)
!3734 = !DILocation(line: 70, column: 33, scope: !3732)
!3735 = !DILocation(line: 70, column: 26, scope: !3732)
!3736 = !DILocation(line: 70, column: 59, scope: !3732)
!3737 = !DILocation(line: 71, column: 7, scope: !3732)
!3738 = !DILocation(line: 71, column: 10, scope: !3732)
!3739 = !DILocation(line: 70, column: 7, scope: !3682)
!3740 = !DILocation(line: 100, column: 12, scope: !3682)
!3741 = !DILocation(line: 105, column: 7, scope: !3682)
!3742 = !DILocation(line: 72, column: 19, scope: !3732)
!3743 = !DILocation(line: 105, column: 19, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3682, file: !460, line: 105, column: 7)
!3745 = !DILocation(line: 107, column: 13, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3744, file: !460, line: 106, column: 5)
!3747 = !DILocation(line: 109, column: 5, scope: !3746)
!3748 = !DILocation(line: 112, column: 1, scope: !3682)
!3749 = !DISubprogram(name: "fileno", scope: !146, file: !146, line: 809, type: !3683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3750 = !DISubprogram(name: "fclose", scope: !146, file: !146, line: 178, type: !3683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3751 = !DISubprogram(name: "lseek", scope: !1018, file: !1018, line: 339, type: !3752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!87, !33, !87, !33}
!3754 = distinct !DISubprogram(name: "fd_safer_flag", scope: !462, file: !462, line: 40, type: !179, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !3755)
!3755 = !{!3756, !3757, !3758, !3761}
!3756 = !DILocalVariable(name: "fd", arg: 1, scope: !3754, file: !462, line: 40, type: !33)
!3757 = !DILocalVariable(name: "flag", arg: 2, scope: !3754, file: !462, line: 40, type: !33)
!3758 = !DILocalVariable(name: "f", scope: !3759, file: !462, line: 44, type: !33)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !462, line: 43, column: 5)
!3760 = distinct !DILexicalBlock(scope: !3754, file: !462, line: 42, column: 7)
!3761 = !DILocalVariable(name: "saved_errno", scope: !3759, file: !462, line: 45, type: !33)
!3762 = !DILocation(line: 0, scope: !3754)
!3763 = !DILocation(line: 42, column: 26, scope: !3760)
!3764 = !DILocation(line: 44, column: 15, scope: !3759)
!3765 = !DILocation(line: 0, scope: !3759)
!3766 = !DILocation(line: 45, column: 25, scope: !3759)
!3767 = !DILocation(line: 46, column: 7, scope: !3759)
!3768 = !DILocation(line: 47, column: 13, scope: !3759)
!3769 = !DILocation(line: 49, column: 5, scope: !3759)
!3770 = !DILocation(line: 51, column: 3, scope: !3754)
!3771 = distinct !DISubprogram(name: "dup_safer_flag", scope: !464, file: !464, line: 34, type: !179, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3772)
!3772 = !{!3773, !3774}
!3773 = !DILocalVariable(name: "fd", arg: 1, scope: !3771, file: !464, line: 34, type: !33)
!3774 = !DILocalVariable(name: "flag", arg: 2, scope: !3771, file: !464, line: 34, type: !33)
!3775 = !DILocation(line: 0, scope: !3771)
!3776 = !DILocation(line: 36, column: 27, scope: !3771)
!3777 = !DILocation(line: 36, column: 21, scope: !3771)
!3778 = !DILocation(line: 36, column: 10, scope: !3771)
!3779 = !DILocation(line: 36, column: 3, scope: !3771)
!3780 = distinct !DISubprogram(name: "rpl_fflush", scope: !466, file: !466, line: 130, type: !3781, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !3817)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!33, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3785)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3786)
!3786 = !{!3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3785, file: !65, line: 51, baseType: !33, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3785, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3785, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3785, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3785, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3785, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3785, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3785, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3785, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3785, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3785, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3785, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3785, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3785, file: !65, line: 70, baseType: !3801, size: 64, offset: 832)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3785, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3785, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3785, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3785, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3785, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3785, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3785, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3785, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3785, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3785, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3785, file: !65, line: 93, baseType: !3801, size: 64, offset: 1344)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3785, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3785, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3785, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3785, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3817 = !{!3818}
!3818 = !DILocalVariable(name: "stream", arg: 1, scope: !3780, file: !466, line: 130, type: !3783)
!3819 = !DILocation(line: 0, scope: !3780)
!3820 = !DILocation(line: 151, column: 14, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3780, file: !466, line: 151, column: 7)
!3822 = !DILocation(line: 151, column: 22, scope: !3821)
!3823 = !DILocation(line: 151, column: 27, scope: !3821)
!3824 = !DILocation(line: 151, column: 7, scope: !3780)
!3825 = !DILocation(line: 152, column: 12, scope: !3821)
!3826 = !DILocation(line: 152, column: 5, scope: !3821)
!3827 = !DILocalVariable(name: "fp", arg: 1, scope: !3828, file: !466, line: 42, type: !3783)
!3828 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !466, file: !466, line: 42, type: !3829, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{null, !3783}
!3831 = !{!3827}
!3832 = !DILocation(line: 0, scope: !3828, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 157, column: 3, scope: !3780)
!3834 = !DILocation(line: 44, column: 12, scope: !3835, inlinedAt: !3833)
!3835 = distinct !DILexicalBlock(scope: !3828, file: !466, line: 44, column: 7)
!3836 = !DILocation(line: 44, column: 19, scope: !3835, inlinedAt: !3833)
!3837 = !DILocation(line: 44, column: 7, scope: !3828, inlinedAt: !3833)
!3838 = !DILocation(line: 46, column: 5, scope: !3835, inlinedAt: !3833)
!3839 = !DILocation(line: 159, column: 10, scope: !3780)
!3840 = !DILocation(line: 159, column: 3, scope: !3780)
!3841 = !DILocation(line: 236, column: 1, scope: !3780)
!3842 = !DISubprogram(name: "fflush", scope: !146, file: !146, line: 230, type: !3781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3843 = distinct !DISubprogram(name: "rpl_fseeko", scope: !468, file: !468, line: 28, type: !3844, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !467, retainedNodes: !3881)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!33, !3846, !3880, !33}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3848)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3848, file: !65, line: 51, baseType: !33, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3848, file: !65, line: 54, baseType: !39, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3848, file: !65, line: 55, baseType: !39, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3848, file: !65, line: 56, baseType: !39, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3848, file: !65, line: 57, baseType: !39, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3848, file: !65, line: 58, baseType: !39, size: 64, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3848, file: !65, line: 59, baseType: !39, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3848, file: !65, line: 60, baseType: !39, size: 64, offset: 448)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3848, file: !65, line: 61, baseType: !39, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3848, file: !65, line: 64, baseType: !39, size: 64, offset: 576)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3848, file: !65, line: 65, baseType: !39, size: 64, offset: 640)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3848, file: !65, line: 66, baseType: !39, size: 64, offset: 704)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3848, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3848, file: !65, line: 70, baseType: !3864, size: 64, offset: 832)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3848, file: !65, line: 72, baseType: !33, size: 32, offset: 896)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3848, file: !65, line: 73, baseType: !33, size: 32, offset: 928)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3848, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3848, file: !65, line: 77, baseType: !34, size: 16, offset: 1024)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3848, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3848, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3848, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3848, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3848, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3848, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3848, file: !65, line: 93, baseType: !3864, size: 64, offset: 1344)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3848, file: !65, line: 94, baseType: !32, size: 64, offset: 1408)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3848, file: !65, line: 95, baseType: !35, size: 64, offset: 1472)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3848, file: !65, line: 96, baseType: !33, size: 32, offset: 1536)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3848, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !146, line: 63, baseType: !87)
!3881 = !{!3882, !3883, !3884, !3885}
!3882 = !DILocalVariable(name: "fp", arg: 1, scope: !3843, file: !468, line: 28, type: !3846)
!3883 = !DILocalVariable(name: "offset", arg: 2, scope: !3843, file: !468, line: 28, type: !3880)
!3884 = !DILocalVariable(name: "whence", arg: 3, scope: !3843, file: !468, line: 28, type: !33)
!3885 = !DILocalVariable(name: "pos", scope: !3886, file: !468, line: 123, type: !3880)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !468, line: 119, column: 5)
!3887 = distinct !DILexicalBlock(scope: !3843, file: !468, line: 55, column: 7)
!3888 = !DILocation(line: 0, scope: !3843)
!3889 = !DILocation(line: 55, column: 12, scope: !3887)
!3890 = !{!1215, !502, i64 16}
!3891 = !DILocation(line: 55, column: 33, scope: !3887)
!3892 = !{!1215, !502, i64 8}
!3893 = !DILocation(line: 55, column: 25, scope: !3887)
!3894 = !DILocation(line: 56, column: 7, scope: !3887)
!3895 = !DILocation(line: 56, column: 15, scope: !3887)
!3896 = !DILocation(line: 56, column: 37, scope: !3887)
!3897 = !{!1215, !502, i64 32}
!3898 = !DILocation(line: 56, column: 29, scope: !3887)
!3899 = !DILocation(line: 57, column: 7, scope: !3887)
!3900 = !DILocation(line: 57, column: 15, scope: !3887)
!3901 = !{!1215, !502, i64 72}
!3902 = !DILocation(line: 57, column: 29, scope: !3887)
!3903 = !DILocation(line: 55, column: 7, scope: !3843)
!3904 = !DILocation(line: 123, column: 26, scope: !3886)
!3905 = !DILocation(line: 123, column: 19, scope: !3886)
!3906 = !DILocation(line: 0, scope: !3886)
!3907 = !DILocation(line: 124, column: 15, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3886, file: !468, line: 124, column: 11)
!3909 = !DILocation(line: 124, column: 11, scope: !3886)
!3910 = !DILocation(line: 135, column: 12, scope: !3886)
!3911 = !DILocation(line: 135, column: 19, scope: !3886)
!3912 = !DILocation(line: 136, column: 12, scope: !3886)
!3913 = !DILocation(line: 136, column: 20, scope: !3886)
!3914 = !{!1215, !934, i64 144}
!3915 = !DILocation(line: 167, column: 7, scope: !3886)
!3916 = !DILocation(line: 169, column: 10, scope: !3843)
!3917 = !DILocation(line: 169, column: 3, scope: !3843)
!3918 = !DILocation(line: 170, column: 1, scope: !3843)
!3919 = !DISubprogram(name: "fseeko", scope: !146, file: !146, line: 736, type: !3920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!33, !3846, !87, !33}
!3922 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !358, file: !358, line: 100, type: !3923, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !3926)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!35, !1688, !6, !35, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!3926 = !{!3927, !3928, !3929, !3930, !3931}
!3927 = !DILocalVariable(name: "pwc", arg: 1, scope: !3922, file: !358, line: 100, type: !1688)
!3928 = !DILocalVariable(name: "s", arg: 2, scope: !3922, file: !358, line: 100, type: !6)
!3929 = !DILocalVariable(name: "n", arg: 3, scope: !3922, file: !358, line: 100, type: !35)
!3930 = !DILocalVariable(name: "ps", arg: 4, scope: !3922, file: !358, line: 100, type: !3925)
!3931 = !DILocalVariable(name: "ret", scope: !3922, file: !358, line: 130, type: !35)
!3932 = !DILocation(line: 0, scope: !3922)
!3933 = !DILocation(line: 105, column: 9, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3922, file: !358, line: 105, column: 7)
!3935 = !DILocation(line: 105, column: 7, scope: !3922)
!3936 = !DILocation(line: 117, column: 10, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3922, file: !358, line: 117, column: 7)
!3938 = !DILocation(line: 117, column: 7, scope: !3922)
!3939 = !DILocation(line: 130, column: 16, scope: !3922)
!3940 = !DILocation(line: 135, column: 11, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3922, file: !358, line: 135, column: 7)
!3942 = !DILocation(line: 135, column: 25, scope: !3941)
!3943 = !DILocation(line: 135, column: 30, scope: !3941)
!3944 = !DILocation(line: 135, column: 7, scope: !3922)
!3945 = !DILocalVariable(name: "ps", arg: 1, scope: !3946, file: !1662, line: 1135, type: !3925)
!3946 = distinct !DISubprogram(name: "mbszero", scope: !1662, file: !1662, line: 1135, type: !3947, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{null, !3925}
!3949 = !{!3945}
!3950 = !DILocation(line: 0, scope: !3946, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 137, column: 5, scope: !3941)
!3952 = !DILocalVariable(name: "__dest", arg: 1, scope: !3953, file: !773, line: 57, type: !32)
!3953 = distinct !DISubprogram(name: "memset", scope: !773, file: !773, line: 57, type: !1671, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !3954)
!3954 = !{!3952, !3955, !3956}
!3955 = !DILocalVariable(name: "__ch", arg: 2, scope: !3953, file: !773, line: 57, type: !33)
!3956 = !DILocalVariable(name: "__len", arg: 3, scope: !3953, file: !773, line: 57, type: !35)
!3957 = !DILocation(line: 0, scope: !3953, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 1137, column: 3, scope: !3946, inlinedAt: !3951)
!3959 = !DILocation(line: 59, column: 10, scope: !3953, inlinedAt: !3958)
!3960 = !DILocation(line: 137, column: 5, scope: !3941)
!3961 = !DILocation(line: 138, column: 11, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3922, file: !358, line: 138, column: 7)
!3963 = !DILocation(line: 138, column: 7, scope: !3922)
!3964 = !DILocation(line: 139, column: 5, scope: !3962)
!3965 = !DILocation(line: 143, column: 26, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3922, file: !358, line: 143, column: 7)
!3967 = !DILocation(line: 143, column: 41, scope: !3966)
!3968 = !DILocation(line: 143, column: 7, scope: !3922)
!3969 = !DILocation(line: 145, column: 15, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !358, line: 145, column: 11)
!3971 = distinct !DILexicalBlock(scope: !3966, file: !358, line: 144, column: 5)
!3972 = !DILocation(line: 145, column: 11, scope: !3971)
!3973 = !DILocation(line: 146, column: 32, scope: !3970)
!3974 = !DILocation(line: 146, column: 16, scope: !3970)
!3975 = !DILocation(line: 146, column: 14, scope: !3970)
!3976 = !DILocation(line: 146, column: 9, scope: !3970)
!3977 = !DILocation(line: 286, column: 1, scope: !3922)
!3978 = !DISubprogram(name: "mbsinit", scope: !3979, file: !3979, line: 293, type: !3980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!3979 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!33, !3982}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!3984 = !DILocation(line: 0, scope: !373)
!3985 = !DILocation(line: 46, column: 12, scope: !373)
!3986 = !DILocation(line: 45, column: 12, scope: !373)
!3987 = !DILocation(line: 55, column: 9, scope: !386)
!3988 = !DILocation(line: 55, column: 27, scope: !386)
!3989 = !DILocation(line: 55, column: 9, scope: !387)
!3990 = !DILocation(line: 57, column: 22, scope: !385)
!3991 = !DILocation(line: 0, scope: !385)
!3992 = !DILocation(line: 58, column: 22, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !385, file: !374, line: 58, column: 13)
!3994 = !DILocation(line: 58, column: 26, scope: !3993)
!3995 = !DILocation(line: 58, column: 29, scope: !3993)
!3996 = !DILocation(line: 58, column: 35, scope: !3993)
!3997 = !DILocation(line: 58, column: 13, scope: !385)
!3998 = !DILocation(line: 69, column: 14, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !373, file: !374, line: 69, column: 7)
!4000 = !DILocation(line: 69, column: 63, scope: !3999)
!4001 = !DILocation(line: 69, column: 7, scope: !373)
!4002 = !DILocation(line: 71, column: 7, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3999, file: !374, line: 70, column: 5)
!4004 = !DILocation(line: 71, column: 13, scope: !4003)
!4005 = !DILocation(line: 72, column: 7, scope: !4003)
!4006 = !DILocation(line: 106, column: 7, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !373, file: !374, line: 106, column: 7)
!4008 = !DILocation(line: 106, column: 17, scope: !4007)
!4009 = !DILocation(line: 106, column: 7, scope: !373)
!4010 = !DILocation(line: 115, column: 13, scope: !390)
!4011 = !DILocation(line: 115, column: 7, scope: !373)
!4012 = !DILocation(line: 119, column: 33, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !389, file: !374, line: 119, column: 11)
!4014 = !DILocation(line: 119, column: 26, scope: !4013)
!4015 = !DILocation(line: 0, scope: !389)
!4016 = !DILocation(line: 119, column: 53, scope: !4013)
!4017 = !DILocation(line: 120, column: 11, scope: !4013)
!4018 = !DILocation(line: 120, column: 21, scope: !4013)
!4019 = !DILocation(line: 120, column: 49, scope: !4013)
!4020 = !DILocation(line: 120, column: 14, scope: !4013)
!4021 = !DILocation(line: 120, column: 63, scope: !4013)
!4022 = !DILocation(line: 121, column: 11, scope: !4013)
!4023 = !DILocation(line: 121, column: 36, scope: !4013)
!4024 = !DILocation(line: 121, column: 29, scope: !4013)
!4025 = !DILocation(line: 121, column: 56, scope: !4013)
!4026 = !DILocation(line: 122, column: 11, scope: !4013)
!4027 = !DILocation(line: 122, column: 21, scope: !4013)
!4028 = !DILocation(line: 122, column: 49, scope: !4013)
!4029 = !DILocation(line: 122, column: 14, scope: !4013)
!4030 = !DILocation(line: 122, column: 63, scope: !4013)
!4031 = !DILocation(line: 119, column: 11, scope: !389)
!4032 = !DILocation(line: 126, column: 13, scope: !393)
!4033 = !DILocation(line: 126, column: 7, scope: !373)
!4034 = !DILocation(line: 130, column: 33, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !392, file: !374, line: 130, column: 11)
!4036 = !DILocation(line: 130, column: 26, scope: !4035)
!4037 = !DILocation(line: 0, scope: !392)
!4038 = !DILocation(line: 130, column: 53, scope: !4035)
!4039 = !DILocation(line: 131, column: 11, scope: !4035)
!4040 = !DILocation(line: 131, column: 21, scope: !4035)
!4041 = !DILocation(line: 131, column: 49, scope: !4035)
!4042 = !DILocation(line: 131, column: 14, scope: !4035)
!4043 = !DILocation(line: 131, column: 63, scope: !4035)
!4044 = !DILocation(line: 132, column: 11, scope: !4035)
!4045 = !DILocation(line: 132, column: 36, scope: !4035)
!4046 = !DILocation(line: 132, column: 29, scope: !4035)
!4047 = !DILocation(line: 132, column: 56, scope: !4035)
!4048 = !DILocation(line: 133, column: 11, scope: !4035)
!4049 = !DILocation(line: 133, column: 21, scope: !4035)
!4050 = !DILocation(line: 133, column: 49, scope: !4035)
!4051 = !DILocation(line: 133, column: 14, scope: !4035)
!4052 = !DILocation(line: 133, column: 63, scope: !4035)
!4053 = !DILocation(line: 130, column: 11, scope: !392)
!4054 = !DILocation(line: 155, column: 2, scope: !373)
!4055 = !DILocation(line: 157, column: 23, scope: !395)
!4056 = !DILocation(line: 0, scope: !395)
!4057 = !DILocation(line: 158, column: 12, scope: !395)
!4058 = !DILocation(line: 158, column: 5, scope: !395)
!4059 = !DILocation(line: 159, column: 12, scope: !395)
!4060 = !DILocation(line: 159, column: 5, scope: !395)
!4061 = !DILocation(line: 160, column: 11, scope: !395)
!4062 = !DILocation(line: 162, column: 11, scope: !395)
!4063 = !DILocation(line: 166, column: 1, scope: !373)
!4064 = !DISubprogram(name: "pipe2", scope: !1018, file: !1018, line: 442, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!4065 = !DISubprogram(name: "pipe", scope: !1018, file: !1018, line: 437, type: !4066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !579)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!33, !206}
!4068 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !470, file: !470, line: 27, type: !3179, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !4069)
!4069 = !{!4070, !4071, !4072, !4073}
!4070 = !DILocalVariable(name: "ptr", arg: 1, scope: !4068, file: !470, line: 27, type: !32)
!4071 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4068, file: !470, line: 27, type: !35)
!4072 = !DILocalVariable(name: "size", arg: 3, scope: !4068, file: !470, line: 27, type: !35)
!4073 = !DILocalVariable(name: "nbytes", scope: !4068, file: !470, line: 29, type: !35)
!4074 = !DILocation(line: 0, scope: !4068)
!4075 = !DILocation(line: 30, column: 7, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4068, file: !470, line: 30, column: 7)
!4077 = !DILocalVariable(name: "ptr", arg: 1, scope: !4078, file: !3270, line: 2057, type: !32)
!4078 = distinct !DISubprogram(name: "rpl_realloc", scope: !3270, file: !3270, line: 2057, type: !3262, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !4079)
!4079 = !{!4077, !4080}
!4080 = !DILocalVariable(name: "size", arg: 2, scope: !4078, file: !3270, line: 2057, type: !35)
!4081 = !DILocation(line: 0, scope: !4078, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 37, column: 10, scope: !4068)
!4083 = !DILocation(line: 2059, column: 24, scope: !4078, inlinedAt: !4082)
!4084 = !DILocation(line: 2059, column: 10, scope: !4078, inlinedAt: !4082)
!4085 = !DILocation(line: 37, column: 3, scope: !4068)
!4086 = !DILocation(line: 32, column: 7, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4076, file: !470, line: 31, column: 5)
!4088 = !DILocation(line: 32, column: 13, scope: !4087)
!4089 = !DILocation(line: 33, column: 7, scope: !4087)
!4090 = !DILocation(line: 38, column: 1, scope: !4068)
!4091 = distinct !DISubprogram(name: "hard_locale", scope: !473, file: !473, line: 28, type: !4092, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !4094)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!48, !33}
!4094 = !{!4095, !4096}
!4095 = !DILocalVariable(name: "category", arg: 1, scope: !4091, file: !473, line: 28, type: !33)
!4096 = !DILocalVariable(name: "locale", scope: !4091, file: !473, line: 30, type: !4097)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !4098)
!4098 = !{!4099}
!4099 = !DISubrange(count: 257)
!4100 = !DILocation(line: 0, scope: !4091)
!4101 = !DILocation(line: 30, column: 3, scope: !4091)
!4102 = !DILocation(line: 30, column: 8, scope: !4091)
!4103 = !DILocation(line: 32, column: 7, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4091, file: !473, line: 32, column: 7)
!4105 = !DILocation(line: 32, column: 7, scope: !4091)
!4106 = !DILocalVariable(name: "__s1", arg: 1, scope: !4107, file: !537, line: 1359, type: !6)
!4107 = distinct !DISubprogram(name: "streq", scope: !537, file: !537, line: 1359, type: !538, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !4108)
!4108 = !{!4106, !4109}
!4109 = !DILocalVariable(name: "__s2", arg: 2, scope: !4107, file: !537, line: 1359, type: !6)
!4110 = !DILocation(line: 0, scope: !4107, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 35, column: 9, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4091, file: !473, line: 35, column: 7)
!4113 = !DILocation(line: 1361, column: 11, scope: !4107, inlinedAt: !4111)
!4114 = !DILocation(line: 1361, column: 10, scope: !4107, inlinedAt: !4111)
!4115 = !DILocation(line: 35, column: 29, scope: !4112)
!4116 = !DILocation(line: 0, scope: !4107, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 35, column: 32, scope: !4112)
!4118 = !DILocation(line: 1361, column: 11, scope: !4107, inlinedAt: !4117)
!4119 = !DILocation(line: 1361, column: 10, scope: !4107, inlinedAt: !4117)
!4120 = !DILocation(line: 35, column: 7, scope: !4091)
!4121 = !DILocation(line: 46, column: 3, scope: !4091)
!4122 = !DILocation(line: 47, column: 1, scope: !4091)
!4123 = distinct !DISubprogram(name: "setlocale_null_r", scope: !475, file: !475, line: 154, type: !4124, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!33, !33, !39, !35}
!4126 = !{!4127, !4128, !4129}
!4127 = !DILocalVariable(name: "category", arg: 1, scope: !4123, file: !475, line: 154, type: !33)
!4128 = !DILocalVariable(name: "buf", arg: 2, scope: !4123, file: !475, line: 154, type: !39)
!4129 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4123, file: !475, line: 154, type: !35)
!4130 = !DILocation(line: 0, scope: !4123)
!4131 = !DILocation(line: 159, column: 10, scope: !4123)
!4132 = !DILocation(line: 159, column: 3, scope: !4123)
!4133 = distinct !DISubprogram(name: "setlocale_null", scope: !475, file: !475, line: 186, type: !4134, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!6, !33}
!4136 = !{!4137}
!4137 = !DILocalVariable(name: "category", arg: 1, scope: !4133, file: !475, line: 186, type: !33)
!4138 = !DILocation(line: 0, scope: !4133)
!4139 = !DILocation(line: 189, column: 10, scope: !4133)
!4140 = !DILocation(line: 189, column: 3, scope: !4133)
!4141 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !477, file: !477, line: 35, type: !4134, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4142)
!4142 = !{!4143, !4144}
!4143 = !DILocalVariable(name: "category", arg: 1, scope: !4141, file: !477, line: 35, type: !33)
!4144 = !DILocalVariable(name: "result", scope: !4141, file: !477, line: 37, type: !6)
!4145 = !DILocation(line: 0, scope: !4141)
!4146 = !DILocation(line: 37, column: 24, scope: !4141)
!4147 = !DILocation(line: 62, column: 3, scope: !4141)
!4148 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !477, file: !477, line: 66, type: !4124, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4149)
!4149 = !{!4150, !4151, !4152, !4153, !4154}
!4150 = !DILocalVariable(name: "category", arg: 1, scope: !4148, file: !477, line: 66, type: !33)
!4151 = !DILocalVariable(name: "buf", arg: 2, scope: !4148, file: !477, line: 66, type: !39)
!4152 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4148, file: !477, line: 66, type: !35)
!4153 = !DILocalVariable(name: "result", scope: !4148, file: !477, line: 111, type: !6)
!4154 = !DILocalVariable(name: "length", scope: !4155, file: !477, line: 125, type: !35)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !477, line: 124, column: 5)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !477, line: 113, column: 7)
!4157 = !DILocation(line: 0, scope: !4148)
!4158 = !DILocation(line: 0, scope: !4141, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 111, column: 24, scope: !4148)
!4160 = !DILocation(line: 37, column: 24, scope: !4141, inlinedAt: !4159)
!4161 = !DILocation(line: 113, column: 14, scope: !4156)
!4162 = !DILocation(line: 113, column: 7, scope: !4148)
!4163 = !DILocation(line: 116, column: 19, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !477, line: 116, column: 11)
!4165 = distinct !DILexicalBlock(scope: !4156, file: !477, line: 114, column: 5)
!4166 = !DILocation(line: 116, column: 11, scope: !4165)
!4167 = !DILocation(line: 120, column: 16, scope: !4164)
!4168 = !DILocation(line: 120, column: 9, scope: !4164)
!4169 = !DILocation(line: 125, column: 23, scope: !4155)
!4170 = !DILocation(line: 0, scope: !4155)
!4171 = !DILocation(line: 126, column: 18, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4155, file: !477, line: 126, column: 11)
!4173 = !DILocation(line: 126, column: 11, scope: !4155)
!4174 = !DILocation(line: 128, column: 39, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4172, file: !477, line: 127, column: 9)
!4176 = !DILocalVariable(name: "__dest", arg: 1, scope: !4177, file: !773, line: 26, type: !776)
!4177 = distinct !DISubprogram(name: "memcpy", scope: !773, file: !773, line: 26, type: !774, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4178)
!4178 = !{!4176, !4179, !4180}
!4179 = !DILocalVariable(name: "__src", arg: 2, scope: !4177, file: !773, line: 26, type: !704)
!4180 = !DILocalVariable(name: "__len", arg: 3, scope: !4177, file: !773, line: 26, type: !35)
!4181 = !DILocation(line: 0, scope: !4177, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 128, column: 11, scope: !4175)
!4183 = !DILocation(line: 29, column: 10, scope: !4177, inlinedAt: !4182)
!4184 = !DILocation(line: 129, column: 11, scope: !4175)
!4185 = !DILocation(line: 133, column: 23, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !477, line: 133, column: 15)
!4187 = distinct !DILexicalBlock(scope: !4172, file: !477, line: 132, column: 9)
!4188 = !DILocation(line: 133, column: 15, scope: !4187)
!4189 = !DILocation(line: 138, column: 44, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4186, file: !477, line: 134, column: 13)
!4191 = !DILocation(line: 0, scope: !4177, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 138, column: 15, scope: !4190)
!4193 = !DILocation(line: 29, column: 10, scope: !4177, inlinedAt: !4192)
!4194 = !DILocation(line: 139, column: 15, scope: !4190)
!4195 = !DILocation(line: 139, column: 32, scope: !4190)
!4196 = !DILocation(line: 140, column: 13, scope: !4190)
!4197 = !DILocation(line: 0, scope: !4156)
!4198 = !DILocation(line: 145, column: 1, scope: !4148)
