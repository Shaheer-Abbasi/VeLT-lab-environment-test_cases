; ModuleID = 'src/pathchk.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Diagnose invalid or non-portable file names.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pathchk\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"  -p     check for most POSIX systems\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"  -P     check for empty names and leading \22-\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"      --portability\0A         check for all POSIX systems (equivalent to -p -P)\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"+pP\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !72
@.str.18 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"portability\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"empty file name\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"%s: unable to determine maximum file name length\00", align 1
@.str.61 = private unnamed_addr constant [49 x i8] c"limit %td exceeded by length %td of file name %s\00", align 1
@.str.62 = private unnamed_addr constant [59 x i8] c"limit %td exceeded by length %td of file name component %s\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"leading '-' in a component of file name %s\00", align 1
@.str.64 = private unnamed_addr constant [67 x i8] c"/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"non-portable character %s in file name %s\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), align 8, !dbg !171
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !176
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !181
@.str.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !183
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !219
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !189
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !215
@.str.1.36 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.38 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.37 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !217
@.str.4.31 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.32 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.33 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !224
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !243
@.str.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !249
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.73, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.79, i32 0, i32 0), i8* null], align 8, !dbg !280
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !292
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !310
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !340
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !347
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !312
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !349
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !298
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.83 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !317
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
@.str.23.123 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !355
@exit_failure = dso_local global i32 1, align 4, !dbg !363
@.str.136 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.134 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.135 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.151 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state.152 = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !369

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !461 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !465, metadata !DIExpression()), !dbg !466
  %3 = icmp eq i32 %0, 0, !dbg !467
  br i1 %3, label %9, label %4, !dbg !469

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !470, !tbaa !472
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !470
  %7 = load i8*, i8** @program_name, align 8, !dbg !470, !tbaa !472
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !470
  br label %55, !dbg !470

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !476
  %11 = load i8*, i8** @program_name, align 8, !dbg !476, !tbaa !472
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !476
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !478
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !478, !tbaa !472
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !478
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !479
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !479
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !480
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !480
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32, !dbg !481
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !481
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #32, !dbg !482
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !482
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #32, !dbg !483
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !483
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !503
  %21 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %21) #32, !dbg !505
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !489, metadata !DIExpression()) #32, !dbg !506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %21, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !506
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !498, metadata !DIExpression()) #32, !dbg !503
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !499, metadata !DIExpression()) #32, !dbg !503
  %22 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !507
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !499, metadata !DIExpression()) #32, !dbg !503
  br label %23, !dbg !508

23:                                               ; preds = %28, %9
  %24 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %25 = phi %struct.infomap* [ %29, %28 ], [ %22, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !499, metadata !DIExpression()) #32, !dbg !503
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !516
  call void @llvm.dbg.value(metadata i8* %24, metadata !515, metadata !DIExpression()) #32, !dbg !516
  %26 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %24) #33, !dbg !518
  %27 = icmp eq i32 %26, 0, !dbg !519
  br i1 %27, label %33, label %28, !dbg !508

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %25, i64 1, !dbg !520
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !499, metadata !DIExpression()) #32, !dbg !503
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 0, i32 0, !dbg !521
  %31 = load i8*, i8** %30, align 8, !dbg !521, !tbaa !522
  %32 = icmp eq i8* %31, null, !dbg !524
  br i1 %32, label %33, label %23, !dbg !525, !llvm.loop !526

33:                                               ; preds = %28, %23
  %34 = phi %struct.infomap* [ %25, %23 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 0, i32 1, !dbg !528
  %36 = load i8*, i8** %35, align 8, !dbg !528, !tbaa !530
  %37 = icmp eq i8* %36, null, !dbg !531
  %38 = select i1 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %36, !dbg !532
  call void @llvm.dbg.value(metadata i8* %38, metadata !498, metadata !DIExpression()) #32, !dbg !503
  tail call void @emit_bug_reporting_address() #32, !dbg !533
  %39 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !534
  call void @llvm.dbg.value(metadata i8* %39, metadata !501, metadata !DIExpression()) #32, !dbg !503
  %40 = icmp eq i8* %39, null, !dbg !535
  br i1 %40, label %48, label %41, !dbg !537

41:                                               ; preds = %33
  %42 = tail call i32 @strncmp(i8* noundef nonnull %39, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 noundef 3) #33, !dbg !538
  %43 = icmp eq i32 %42, 0, !dbg !538
  br i1 %43, label %48, label %44, !dbg !539

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #32, !dbg !540
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !540, !tbaa !472
  %47 = tail call i32 @fputs_unlocked(i8* noundef %45, %struct._IO_FILE* noundef %46) #32, !dbg !540
  br label %48, !dbg !542

48:                                               ; preds = %33, %41, %44
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !543
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), metadata !515, metadata !DIExpression()) #32, !dbg !543
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #32, !dbg !503
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #32, !dbg !545
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %49, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !545
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0), i32 noundef 5) #32, !dbg !546
  %52 = icmp eq i8* %38, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), !dbg !546
  %53 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !546
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %51, i8* noundef %38, i8* noundef %53) #32, !dbg !546
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #32, !dbg !547
  br label %55

55:                                               ; preds = %48, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !548
  unreachable, !dbg !548
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !549 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !554 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !74 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !79, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %0, metadata !80, metadata !DIExpression()), !dbg !559
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !560, !tbaa !561
  %3 = icmp eq i32 %2, -1, !dbg !563
  br i1 %3, label %4, label %16, !dbg !564

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #32, !dbg !565
  call void @llvm.dbg.value(metadata i8* %5, metadata !81, metadata !DIExpression()), !dbg !566
  %6 = icmp eq i8* %5, null, !dbg !567
  br i1 %6, label %14, label %7, !dbg !568

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !569, !tbaa !570
  %9 = icmp eq i8 %8, 0, !dbg !569
  br i1 %9, label %14, label %10, !dbg !571

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !509, metadata !DIExpression()) #32, !dbg !572
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !515, metadata !DIExpression()) #32, !dbg !572
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !574
  %12 = icmp eq i32 %11, 0, !dbg !575
  %13 = zext i1 %12 to i32, !dbg !571
  br label %14, !dbg !571

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !576, !tbaa !561
  br label %16, !dbg !577

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !578
  %18 = icmp eq i32 %17, 0, !dbg !578
  br i1 %18, label %22, label %19, !dbg !580

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !581, !tbaa !472
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !581
  br label %121, !dbg !583

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !84, metadata !DIExpression()), !dbg !559
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #33, !dbg !584
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !585
  call void @llvm.dbg.value(metadata i8* %24, metadata !86, metadata !DIExpression()), !dbg !559
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !586
  call void @llvm.dbg.value(metadata i8* %25, metadata !87, metadata !DIExpression()), !dbg !559
  %26 = icmp eq i8* %25, null, !dbg !587
  br i1 %26, label %53, label %27, !dbg !588

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !589
  br i1 %28, label %53, label %29, !dbg !590

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !88, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 0, metadata !92, metadata !DIExpression()), !dbg !591
  %30 = icmp ult i8* %24, %25, !dbg !592
  br i1 %30, label %31, label %53, !dbg !593

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !559
  %33 = load i16*, i16** %32, align 8, !tbaa !472
  br label %34, !dbg !593

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !88, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 %36, metadata !92, metadata !DIExpression()), !dbg !591
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !594
  call void @llvm.dbg.value(metadata i8* %37, metadata !88, metadata !DIExpression()), !dbg !591
  %38 = load i8, i8* %35, align 1, !dbg !594, !tbaa !570
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !594
  %41 = load i16, i16* %40, align 2, !dbg !594, !tbaa !595
  %42 = lshr i16 %41, 13, !dbg !597
  %43 = and i16 %42, 1, !dbg !597
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !598
  call void @llvm.dbg.value(metadata i64 %45, metadata !92, metadata !DIExpression()), !dbg !591
  %46 = icmp ult i8* %37, %25, !dbg !592
  %47 = icmp ult i64 %45, 2, !dbg !599
  %48 = select i1 %46, i1 %47, i1 false, !dbg !599
  br i1 %48, label %34, label %49, !dbg !593, !llvm.loop !600

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !601
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !603
  %52 = xor i1 %50, true, !dbg !603
  br label %53, !dbg !603

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !559
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !84, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %54, metadata !87, metadata !DIExpression()), !dbg !559
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #33, !dbg !604
  call void @llvm.dbg.value(metadata i64 %56, metadata !93, metadata !DIExpression()), !dbg !559
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !605
  call void @llvm.dbg.value(metadata i8* %57, metadata !94, metadata !DIExpression()), !dbg !559
  br label %58, !dbg !606

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !559
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !84, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %59, metadata !94, metadata !DIExpression()), !dbg !559
  %61 = load i8, i8* %59, align 1, !dbg !607, !tbaa !570
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !608

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !609
  %64 = load i8, i8* %63, align 1, !dbg !612, !tbaa !570
  %65 = icmp ne i8 %64, 45, !dbg !613
  %66 = select i1 %65, i1 %60, i1 false, !dbg !614
  br label %67, !dbg !614

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !84, metadata !DIExpression()), !dbg !559
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !615
  %70 = load i16*, i16** %69, align 8, !dbg !615, !tbaa !472
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !615
  %73 = load i16, i16* %72, align 2, !dbg !615, !tbaa !595
  %74 = and i16 %73, 8192, !dbg !615
  %75 = icmp eq i16 %74, 0, !dbg !615
  br i1 %75, label %89, label %76, !dbg !617

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !618
  br i1 %77, label %91, label %78, !dbg !621

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !622
  %80 = load i8, i8* %79, align 1, !dbg !622, !tbaa !570
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !622
  %83 = load i16, i16* %82, align 2, !dbg !622, !tbaa !595
  %84 = and i16 %83, 8192, !dbg !622
  %85 = icmp eq i16 %84, 0, !dbg !622
  br i1 %85, label %86, label %91, !dbg !623

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !624
  br i1 %88, label %89, label %91, !dbg !624

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !626
  call void @llvm.dbg.value(metadata i8* %90, metadata !94, metadata !DIExpression()), !dbg !559
  br label %58, !dbg !606, !llvm.loop !627

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !629
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !472
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !630
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), metadata !515, metadata !DIExpression()) #32, !dbg !630
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !634
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !636
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #32, !dbg !648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !154, metadata !DIExpression()), !dbg !559
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i64 noundef 6) #33, !dbg !650
  %96 = icmp eq i32 %95, 0, !dbg !650
  br i1 %96, label %100, label %97, !dbg !652

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i64 noundef 9) #33, !dbg !653
  %99 = icmp eq i32 %98, 0, !dbg !653
  br i1 %99, label %100, label %103, !dbg !654

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !655
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !655
  br label %106, !dbg !657

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !658
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !658
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !472
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !660
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !472
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !661
  %111 = ptrtoint i8* %59 to i64, !dbg !662
  %112 = sub i64 %111, %92, !dbg !662
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !472
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !662
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !472
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !663
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !472
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !664
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665, !tbaa !472
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !665
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !666
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
declare !dbg !667 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !671 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !675 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !681 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !686, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8** %1, metadata !687, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 1, metadata !688, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 0, metadata !689, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 0, metadata !690, metadata !DIExpression()), !dbg !692
  %5 = load i8*, i8** %1, align 8, !dbg !693, !tbaa !472
  tail call void @set_program_name(i8* noundef %5) #32, !dbg !694
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #32, !dbg !695
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #32, !dbg !696
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #32, !dbg !697
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !698
  br label %10, !dbg !699

10:                                               ; preds = %17, %2
  %11 = phi i1 [ false, %2 ], [ true, %17 ]
  %12 = phi i1 [ false, %2 ], [ %18, %17 ]
  br label %13, !dbg !699

13:                                               ; preds = %13, %10
  %14 = phi i1 [ %12, %10 ], [ true, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !690, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 poison, metadata !689, metadata !DIExpression()), !dbg !692
  %15 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #32, !dbg !700
  call void @llvm.dbg.value(metadata i32 %15, metadata !691, metadata !DIExpression()), !dbg !692
  switch i32 %15, label %26 [
    i32 -1, label %27
    i32 256, label %17
    i32 112, label %16
    i32 80, label %13
    i32 -2, label %19
    i32 -3, label %20
  ], !dbg !699, !llvm.loop !701

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !689, metadata !DIExpression()), !dbg !692
  br label %17, !dbg !703

17:                                               ; preds = %13, %16
  %18 = phi i1 [ %14, %16 ], [ true, %13 ]
  br label %10, !dbg !699, !llvm.loop !701

19:                                               ; preds = %13
  tail call void @usage(i32 noundef 0) #36, !dbg !706
  unreachable, !dbg !706

20:                                               ; preds = %13
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !472
  %22 = load i8*, i8** @Version, align 8, !dbg !707, !tbaa !472
  %23 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #32, !dbg !707
  %24 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #32, !dbg !707
  %25 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #32, !dbg !707
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* noundef %22, i8* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef null) #32, !dbg !707
  tail call void @exit(i32 noundef 0) #34, !dbg !707
  unreachable, !dbg !707

26:                                               ; preds = %13
  tail call void @usage(i32 noundef 1) #36, !dbg !708
  unreachable, !dbg !708

27:                                               ; preds = %13
  %28 = load i32, i32* @optind, align 4, !dbg !709, !tbaa !561
  %29 = icmp eq i32 %28, %0, !dbg !711
  br i1 %29, label %36, label %30, !dbg !712

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !688, metadata !DIExpression()), !dbg !692
  %31 = icmp slt i32 %28, %0, !dbg !713
  br i1 %31, label %32, label %179, !dbg !716

32:                                               ; preds = %30
  %33 = bitcast %struct.stat* %4 to i8*
  %34 = bitcast i64* %3 to %struct.__mbstate_t*
  %35 = bitcast i64* %3 to i8*
  br label %38, !dbg !716

36:                                               ; preds = %27
  %37 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #32, !dbg !717
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %37) #32, !dbg !717
  tail call void @usage(i32 noundef 1) #36, !dbg !719
  unreachable, !dbg !719

38:                                               ; preds = %32, %170
  %39 = phi i32 [ %28, %32 ], [ %174, %170 ]
  %40 = phi i1 [ true, %32 ], [ %172, %170 ]
  %41 = sext i32 %39 to i64, !dbg !720
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !720
  %43 = load i8*, i8** %42, align 8, !dbg !720, !tbaa !472
  call void @llvm.dbg.value(metadata i8* %43, metadata !721, metadata !DIExpression()) #32, !dbg !800
  call void @llvm.dbg.value(metadata i1 %11, metadata !726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !800
  call void @llvm.dbg.value(metadata i1 %14, metadata !727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !800
  %44 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %43) #33, !dbg !802
  call void @llvm.dbg.value(metadata i64 %44, metadata !728, metadata !DIExpression()) #32, !dbg !800
  call void @llvm.dbg.value(metadata i8 0, metadata !730, metadata !DIExpression()) #32, !dbg !800
  br i1 %14, label %45, label %62, !dbg !803

45:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i8* %43, metadata !805, metadata !DIExpression()) #32, !dbg !812
  call void @llvm.dbg.value(metadata i8* %43, metadata !810, metadata !DIExpression()) #32, !dbg !814
  %46 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %43, i32 noundef 45) #33, !dbg !815
  call void @llvm.dbg.value(metadata i8* %46, metadata !810, metadata !DIExpression()) #32, !dbg !814
  %47 = icmp eq i8* %46, null, !dbg !817
  br i1 %47, label %62, label %52, !dbg !817

48:                                               ; preds = %55
  %49 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !818
  call void @llvm.dbg.value(metadata i8* %49, metadata !810, metadata !DIExpression()) #32, !dbg !814
  call void @llvm.dbg.value(metadata i8* %53, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #32, !dbg !814
  %50 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %49, i32 noundef 45) #33, !dbg !815
  call void @llvm.dbg.value(metadata i8* %50, metadata !810, metadata !DIExpression()) #32, !dbg !814
  %51 = icmp eq i8* %50, null, !dbg !817
  br i1 %51, label %62, label %52, !dbg !817, !llvm.loop !819

52:                                               ; preds = %45, %48
  %53 = phi i8* [ %50, %48 ], [ %46, %45 ]
  %54 = icmp eq i8* %53, %43, !dbg !821
  br i1 %54, label %59, label %55, !dbg !823

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %53, i64 -1, !dbg !824
  %57 = load i8, i8* %56, align 1, !dbg !824, !tbaa !570
  %58 = icmp eq i8 %57, 47, !dbg !825
  call void @llvm.dbg.value(metadata i8* %53, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #32, !dbg !814
  br i1 %58, label %59, label %48, !dbg !826

59:                                               ; preds = %55, %52
  %60 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.63, i64 0, i64 0), i32 noundef 5) #32, !dbg !827
  %61 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %43) #32, !dbg !827
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %60, i8* noundef %61) #32, !dbg !827
  br label %170, !dbg !829

62:                                               ; preds = %48, %45, %38
  %63 = icmp eq i64 %44, 0
  br i1 %11, label %66, label %64, !dbg !830

64:                                               ; preds = %62
  %65 = select i1 %14, i1 %63, i1 false, !dbg !832
  br i1 %65, label %67, label %82, !dbg !832

66:                                               ; preds = %62
  br i1 %63, label %67, label %69, !dbg !833

67:                                               ; preds = %66, %64
  %68 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i32 noundef 5) #32, !dbg !834
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %68) #32, !dbg !834
  br label %170, !dbg !836

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i8* %43, metadata !837, metadata !DIExpression()) #32, !dbg !859
  call void @llvm.dbg.value(metadata i64 %44, metadata !842, metadata !DIExpression()) #32, !dbg !859
  %70 = call i64 @strspn(i8* noundef %43, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.64, i64 0, i64 0)) #33, !dbg !863
  call void @llvm.dbg.value(metadata i64 %70, metadata !843, metadata !DIExpression()) #32, !dbg !859
  %71 = getelementptr inbounds i8, i8* %43, i64 %70, !dbg !864
  call void @llvm.dbg.value(metadata i8* %71, metadata !844, metadata !DIExpression()) #32, !dbg !859
  %72 = load i8, i8* %71, align 1, !dbg !865, !tbaa !570
  %73 = icmp eq i8 %72, 0, !dbg !865
  br i1 %73, label %109, label %74, !dbg !866

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #32, !dbg !867
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %34, metadata !845, metadata !DIExpression()) #32, !dbg !868
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %34, metadata !869, metadata !DIExpression()) #32, !dbg !876
  call void @llvm.dbg.value(metadata i8* %35, metadata !878, metadata !DIExpression()) #32, !dbg !886
  call void @llvm.dbg.value(metadata i32 0, metadata !884, metadata !DIExpression()) #32, !dbg !886
  call void @llvm.dbg.value(metadata i64 8, metadata !885, metadata !DIExpression()) #32, !dbg !886
  store i64 0, i64* %3, align 8, !dbg !888
  %75 = sub i64 %44, %70, !dbg !889
  %76 = call i64 @rpl_mbrlen(i8* noundef nonnull %71, i64 noundef %75, %struct.__mbstate_t* noundef nonnull %34) #32, !dbg !890
  call void @llvm.dbg.value(metadata i64 %76, metadata !858, metadata !DIExpression()) #32, !dbg !891
  %77 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #32, !dbg !892
  %78 = icmp ult i64 %76, 17, !dbg !892
  %79 = select i1 %78, i64 %76, i64 1, !dbg !892
  %80 = call i8* @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, i8* noundef nonnull %71, i64 noundef %79) #32, !dbg !892
  %81 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef nonnull %43) #32, !dbg !892
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %77, i8* noundef %80, i8* noundef %81) #32, !dbg !892
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #32, !dbg !893
  br label %170, !dbg !894

82:                                               ; preds = %64
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %33) #32, !dbg !895
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !731, metadata !DIExpression()) #32, !dbg !896
  %83 = call i32 @lstat(i8* noundef %43, %struct.stat* noundef nonnull %4) #32, !dbg !897
  %84 = icmp eq i32 %83, 0, !dbg !899
  br i1 %84, label %85, label %86, !dbg !900

85:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8 poison, metadata !730, metadata !DIExpression()) #32, !dbg !800
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %33) #32, !dbg !901
  call void @llvm.dbg.value(metadata i8 poison, metadata !729, metadata !DIExpression()) #32, !dbg !800
  br label %170, !dbg !902

86:                                               ; preds = %82
  %87 = tail call i32* @__errno_location() #35, !dbg !903
  %88 = load i32, i32* %87, align 4, !dbg !903, !tbaa !561
  %89 = icmp ne i32 %88, 2, !dbg !905
  %90 = select i1 %89, i1 true, i1 %63, !dbg !906
  br i1 %90, label %91, label %93, !dbg !906

91:                                               ; preds = %86
  %92 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %43) #32, !dbg !907
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %88, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i8* noundef %92) #32, !dbg !907
  call void @llvm.dbg.value(metadata i8 poison, metadata !730, metadata !DIExpression()) #32, !dbg !800
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %33) #32, !dbg !901
  br label %170

93:                                               ; preds = %86
  call void @llvm.dbg.value(metadata i8 poison, metadata !730, metadata !DIExpression()) #32, !dbg !800
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %33) #32, !dbg !901
  %94 = icmp sgt i64 %44, 255
  br i1 %94, label %95, label %108, !dbg !909

95:                                               ; preds = %93
  %96 = load i8, i8* %43, align 1, !dbg !910, !tbaa !570
  %97 = icmp eq i8 %96, 47, !dbg !911
  %98 = select i1 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), !dbg !910
  call void @llvm.dbg.value(metadata i8* %98, metadata !775, metadata !DIExpression()) #32, !dbg !912
  store i32 0, i32* %87, align 4, !dbg !913, !tbaa !561
  %99 = call i64 @pathconf(i8* noundef %98, i32 noundef 4) #32, !dbg !914
  call void @llvm.dbg.value(metadata i64 %99, metadata !772, metadata !DIExpression()) #32, !dbg !912
  %100 = icmp slt i64 %99, 0, !dbg !915
  br i1 %100, label %101, label %106, !dbg !917

101:                                              ; preds = %95
  %102 = load i32, i32* %87, align 4, !dbg !918, !tbaa !561
  %103 = icmp eq i32 %102, 0, !dbg !919
  br i1 %103, label %106, label %104, !dbg !920

104:                                              ; preds = %101
  %105 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i64 0, i64 0), i32 noundef 5) #32, !dbg !921
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %102, i8* noundef %105, i8* noundef %98) #32, !dbg !921
  call void @llvm.dbg.value(metadata i64 %99, metadata !769, metadata !DIExpression()) #32, !dbg !923
  br label %170

106:                                              ; preds = %101, %95
  call void @llvm.dbg.value(metadata i64 %99, metadata !769, metadata !DIExpression()) #32, !dbg !923
  %107 = icmp sgt i64 %99, %44, !dbg !924
  br i1 %107, label %108, label %111, !dbg !926

108:                                              ; preds = %93, %106
  br label %116, !dbg !927

109:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %99, metadata !769, metadata !DIExpression()) #32, !dbg !923
  %110 = icmp slt i64 %44, 256, !dbg !924
  br i1 %110, label %131, label %111, !dbg !926

111:                                              ; preds = %109, %106
  %112 = phi i64 [ 256, %109 ], [ %99, %106 ]
  %113 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.61, i64 0, i64 0), i32 noundef 5) #32, !dbg !934
  %114 = add nsw i64 %112, -1, !dbg !934
  %115 = call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %43) #32, !dbg !934
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %113, i64 noundef %114, i64 noundef %44, i8* noundef %115) #32, !dbg !934
  br label %170

116:                                              ; preds = %120, %108
  %117 = phi i8* [ %43, %108 ], [ %121, %120 ]
  call void @llvm.dbg.value(metadata i8* %117, metadata !932, metadata !DIExpression()) #32, !dbg !936
  %118 = load i8, i8* %117, align 1, !dbg !937, !tbaa !570
  %119 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !938
  call void @llvm.dbg.value(metadata i8* %119, metadata !932, metadata !DIExpression()) #32, !dbg !936
  switch i8 %118, label %122 [
    i8 47, label %120
    i8 0, label %170
  ], !dbg !927

120:                                              ; preds = %116, %128
  %121 = phi i8* [ %119, %116 ], [ %129, %128 ]
  br label %116, !dbg !936, !llvm.loop !939

122:                                              ; preds = %116, %126
  %123 = phi i64 [ %127, %126 ], [ 1, %116 ], !dbg !942
  call void @llvm.dbg.value(metadata i64 %123, metadata !949, metadata !DIExpression()) #32, !dbg !951
  %124 = getelementptr inbounds i8, i8* %117, i64 %123, !dbg !952
  %125 = load i8, i8* %124, align 1, !dbg !952, !tbaa !570
  switch i8 %125, label %126 [
    i8 47, label %128
    i8 0, label %128
  ], !dbg !954

126:                                              ; preds = %122
  %127 = add i64 %123, 1, !dbg !955
  call void @llvm.dbg.value(metadata i64 %127, metadata !949, metadata !DIExpression()) #32, !dbg !951
  br label %122, !dbg !956, !llvm.loop !957

128:                                              ; preds = %122, %122
  %129 = getelementptr inbounds i8, i8* %117, i64 %123, !dbg !952
  call void @llvm.dbg.value(metadata i64 %123, metadata !780, metadata !DIExpression()) #32, !dbg !960
  %130 = icmp ugt i64 %123, 14, !dbg !961
  call void @llvm.dbg.value(metadata i8 poison, metadata !729, metadata !DIExpression()) #32, !dbg !800
  call void @llvm.dbg.value(metadata i8* undef, metadata !776, metadata !DIExpression()) #32, !dbg !963
  br i1 %130, label %131, label %120

131:                                              ; preds = %128, %109
  %132 = phi i64 [ 14, %109 ], [ 0, %128 ]
  br label %133, !dbg !964

133:                                              ; preds = %131, %164
  %134 = phi i64 [ %156, %164 ], [ 14, %131 ], !dbg !965
  %135 = phi i64 [ %157, %164 ], [ %132, %131 ], !dbg !966
  %136 = phi i8* [ %165, %164 ], [ %43, %131 ], !dbg !967
  call void @llvm.dbg.value(metadata i8* %136, metadata !787, metadata !DIExpression()) #32, !dbg !967
  call void @llvm.dbg.value(metadata i64 %135, metadata !786, metadata !DIExpression()) #32, !dbg !965
  call void @llvm.dbg.value(metadata i64 %134, metadata !783, metadata !DIExpression()) #32, !dbg !965
  call void @llvm.dbg.value(metadata i8* %136, metadata !932, metadata !DIExpression()) #32, !dbg !968
  br label %137, !dbg !970

137:                                              ; preds = %137, %133
  %138 = phi i8* [ %136, %133 ], [ %140, %137 ]
  call void @llvm.dbg.value(metadata i8* %138, metadata !932, metadata !DIExpression()) #32, !dbg !968
  %139 = load i8, i8* %138, align 1, !dbg !971, !tbaa !570
  %140 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !972
  call void @llvm.dbg.value(metadata i8* %140, metadata !932, metadata !DIExpression()) #32, !dbg !968
  switch i8 %139, label %141 [
    i8 47, label %137
    i8 0, label %170
  ], !dbg !970

141:                                              ; preds = %137
  %142 = icmp eq i64 %135, 0, !dbg !973
  br i1 %142, label %143, label %155, !dbg !974

143:                                              ; preds = %141
  %144 = icmp eq i8* %138, %43, !dbg !975
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i8* %43, !dbg !976
  call void @llvm.dbg.value(metadata i8* %145, metadata !795, metadata !DIExpression()) #32, !dbg !977
  call void @llvm.dbg.value(metadata i8 %139, metadata !796, metadata !DIExpression()) #32, !dbg !977
  %146 = tail call i32* @__errno_location() #35, !dbg !978
  store i32 0, i32* %146, align 4, !dbg !979, !tbaa !561
  store i8 0, i8* %138, align 1, !dbg !980, !tbaa !570
  %147 = call i64 @pathconf(i8* noundef %145, i32 noundef 3) #32, !dbg !981
  call void @llvm.dbg.value(metadata i64 %147, metadata !792, metadata !DIExpression()) #32, !dbg !977
  store i8 %139, i8* %138, align 1, !dbg !982, !tbaa !570
  %148 = icmp sgt i64 %147, -1, !dbg !983
  br i1 %148, label %155, label %149, !dbg !985

149:                                              ; preds = %143
  %150 = load i32, i32* %146, align 4, !dbg !986, !tbaa !561
  switch i32 %150, label %152 [
    i32 0, label %155
    i32 2, label %151
  ], !dbg !987

151:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i64 %134, metadata !786, metadata !DIExpression()) #32, !dbg !965
  br label %155, !dbg !988

152:                                              ; preds = %149
  store i8 0, i8* %138, align 1, !dbg !990, !tbaa !570
  %153 = load i32, i32* %146, align 4, !dbg !991, !tbaa !561
  %154 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %145) #32, !dbg !991
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %153, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i8* noundef %154) #32, !dbg !991
  store i8 %139, i8* %138, align 1, !dbg !992, !tbaa !570
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()) #32, !dbg !965
  call void @llvm.dbg.value(metadata i64 %134, metadata !783, metadata !DIExpression()) #32, !dbg !965
  br label %170

155:                                              ; preds = %151, %149, %143, %141
  %156 = phi i64 [ %135, %141 ], [ 9223372036854775807, %149 ], [ %147, %143 ], [ %134, %151 ], !dbg !993
  %157 = phi i64 [ %135, %141 ], [ 0, %149 ], [ 0, %143 ], [ %134, %151 ], !dbg !966
  call void @llvm.dbg.value(metadata i64 %157, metadata !786, metadata !DIExpression()) #32, !dbg !965
  call void @llvm.dbg.value(metadata i64 %156, metadata !783, metadata !DIExpression()) #32, !dbg !965
  call void @llvm.dbg.value(metadata i8* undef, metadata !948, metadata !DIExpression()) #32, !dbg !994
  call void @llvm.dbg.value(metadata i64 1, metadata !949, metadata !DIExpression()) #32, !dbg !994
  br label %158, !dbg !996

158:                                              ; preds = %162, %155
  %159 = phi i64 [ 1, %155 ], [ %163, %162 ], !dbg !997
  call void @llvm.dbg.value(metadata i64 %159, metadata !949, metadata !DIExpression()) #32, !dbg !994
  %160 = getelementptr inbounds i8, i8* %138, i64 %159, !dbg !998
  %161 = load i8, i8* %160, align 1, !dbg !998, !tbaa !570
  switch i8 %161, label %162 [
    i8 47, label %164
    i8 0, label %164
  ], !dbg !999

162:                                              ; preds = %158
  %163 = add i64 %159, 1, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %163, metadata !949, metadata !DIExpression()) #32, !dbg !994
  br label %158, !dbg !1001, !llvm.loop !1002

164:                                              ; preds = %158, %158
  %165 = getelementptr inbounds i8, i8* %138, i64 %159, !dbg !998
  call void @llvm.dbg.value(metadata i64 %159, metadata !789, metadata !DIExpression()) #32, !dbg !1005
  %166 = icmp slt i64 %156, %159, !dbg !1006
  br i1 %166, label %167, label %133, !dbg !1007, !llvm.loop !1008

167:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i8 %161, metadata !797, metadata !DIExpression()) #32, !dbg !1010
  store i8 0, i8* %165, align 1, !dbg !1011, !tbaa !570
  %168 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #32, !dbg !1012
  %169 = call i8* @quote(i8* noundef nonnull %138) #32, !dbg !1012
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %168, i64 noundef %156, i64 noundef %159, i8* noundef %169) #32, !dbg !1012
  store i8 %161, i8* %165, align 1, !dbg !1013, !tbaa !570
  br label %170

170:                                              ; preds = %116, %137, %59, %67, %74, %85, %91, %104, %111, %152, %167
  %171 = phi i1 [ false, %67 ], [ false, %91 ], [ false, %59 ], [ false, %74 ], [ false, %111 ], [ false, %104 ], [ false, %167 ], [ false, %152 ], [ true, %85 ], [ true, %137 ], [ true, %116 ]
  %172 = and i1 %40, %171, !dbg !1014
  call void @llvm.dbg.value(metadata i1 %172, metadata !688, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !692
  %173 = load i32, i32* @optind, align 4, !dbg !1015, !tbaa !561
  %174 = add nsw i32 %173, 1, !dbg !1015
  store i32 %174, i32* @optind, align 4, !dbg !1015, !tbaa !561
  call void @llvm.dbg.value(metadata i8 poison, metadata !688, metadata !DIExpression()), !dbg !692
  %175 = icmp slt i32 %174, %0, !dbg !713
  br i1 %175, label %38, label %176, !dbg !716, !llvm.loop !1016

176:                                              ; preds = %170
  %177 = xor i1 %172, true, !dbg !1018
  %178 = zext i1 %177 to i32, !dbg !1018
  br label %179, !dbg !1018

179:                                              ; preds = %176, %30
  %180 = phi i32 [ 0, %30 ], [ %178, %176 ]
  ret i32 %180, !dbg !1019
}

; Function Attrs: nounwind
declare !dbg !1020 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1023 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1024 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1027 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !1033 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1039 i64 @pathconf(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !1043 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i8* %0, i8** @file_name, align 8, !dbg !1047, !tbaa !472
  ret void, !dbg !1048
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1049 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1053, metadata !DIExpression()), !dbg !1054
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1055, !tbaa !1056
  ret void, !dbg !1058
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1059 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1064, !tbaa !472
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !1065
  %3 = icmp eq i32 %2, 0, !dbg !1066
  br i1 %3, label %22, label %4, !dbg !1067

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1068, !tbaa !1056, !range !1069
  %6 = icmp eq i8 %5, 0, !dbg !1068
  br i1 %6, label %11, label %7, !dbg !1070

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !1071
  %9 = load i32, i32* %8, align 4, !dbg !1071, !tbaa !561
  %10 = icmp eq i32 %9, 32, !dbg !1072
  br i1 %10, label %22, label %11, !dbg !1073

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.27, i64 0, i64 0), i32 noundef 5) #32, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %12, metadata !1061, metadata !DIExpression()), !dbg !1075
  %13 = load i8*, i8** @file_name, align 8, !dbg !1076, !tbaa !472
  %14 = icmp eq i8* %13, null, !dbg !1076
  %15 = tail call i32* @__errno_location() #35, !dbg !1078
  %16 = load i32, i32* %15, align 4, !dbg !1078, !tbaa !561
  br i1 %14, label %19, label %17, !dbg !1079

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !1080
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.28, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !1080
  br label %20, !dbg !1080

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.29, i64 0, i64 0), i8* noundef %12) #32, !dbg !1081
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1082, !tbaa !561
  tail call void @_exit(i32 noundef %21) #34, !dbg !1083
  unreachable, !dbg !1083

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1084, !tbaa !472
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !1086
  %25 = icmp eq i32 %24, 0, !dbg !1087
  br i1 %25, label %28, label %26, !dbg !1088

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1089, !tbaa !561
  tail call void @_exit(i32 noundef %27) #34, !dbg !1090
  unreachable, !dbg !1090

28:                                               ; preds = %22
  ret void, !dbg !1091
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1092 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1096, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %1, metadata !1097, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %2, metadata !1098, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1099, metadata !DIExpression()), !dbg !1101
  tail call fastcc void @flush_stdout(), !dbg !1102
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1103, !tbaa !472
  %7 = icmp eq void ()* %6, null, !dbg !1103
  br i1 %7, label %9, label %8, !dbg !1105

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !1106
  br label %13, !dbg !1106

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1107, !tbaa !472
  %11 = tail call i8* @getprogname() #33, !dbg !1107
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* noundef %11) #32, !dbg !1107
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1109
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1109
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1109, !tbaa.struct !1110
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1109
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1109
  ret void, !dbg !1111
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1112 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1114, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i32 1, metadata !1116, metadata !DIExpression()) #32, !dbg !1121
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !1124
  %2 = icmp slt i32 %1, 0, !dbg !1125
  br i1 %2, label %6, label %3, !dbg !1126

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1127, !tbaa !472
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !1127
  br label %6, !dbg !1127

6:                                                ; preds = %3, %0
  ret void, !dbg !1128
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1129 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1131, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 %1, metadata !1132, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i8* %2, metadata !1133, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1134, metadata !DIExpression()), !dbg !1136
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1137, !tbaa !472
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1138
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1139, metadata !DIExpression()) #32, !dbg !1182
  call void @llvm.dbg.value(metadata i8* %2, metadata !1180, metadata !DIExpression()) #32, !dbg !1182
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1184
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1184, !noalias !1185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1184
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !1184
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1184, !noalias !1185
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1189, !tbaa !561
  %12 = add i32 %11, 1, !dbg !1189
  store i32 %12, i32* @error_message_count, align 4, !dbg !1189, !tbaa !561
  %13 = icmp eq i32 %1, 0, !dbg !1190
  br i1 %13, label %24, label %14, !dbg !1192

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1193, metadata !DIExpression()) #32, !dbg !1201
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1203
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1203
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1197, metadata !DIExpression()) #32, !dbg !1204
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %16, metadata !1196, metadata !DIExpression()) #32, !dbg !1201
  %17 = icmp eq i8* %16, null, !dbg !1206
  br i1 %17, label %18, label %20, !dbg !1208

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.32, i64 0, i64 0), i32 noundef 5) #32, !dbg !1209
  call void @llvm.dbg.value(metadata i8* %19, metadata !1196, metadata !DIExpression()) #32, !dbg !1201
  br label %20, !dbg !1210

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1201
  call void @llvm.dbg.value(metadata i8* %21, metadata !1196, metadata !DIExpression()) #32, !dbg !1201
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1211, !tbaa !472
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.33, i64 0, i64 0), i8* noundef %21) #32, !dbg !1211
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1212
  br label %24, !dbg !1213

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1214, !tbaa !472
  call void @llvm.dbg.value(metadata i32 10, metadata !1215, metadata !DIExpression()) #32, !dbg !1222
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1221, metadata !DIExpression()) #32, !dbg !1222
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1224
  %27 = load i8*, i8** %26, align 8, !dbg !1224, !tbaa !1225
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1224
  %29 = load i8*, i8** %28, align 8, !dbg !1224, !tbaa !1228
  %30 = icmp ult i8* %27, %29, !dbg !1224
  br i1 %30, label %33, label %31, !dbg !1224, !prof !1229

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !1224
  br label %35, !dbg !1224

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1224
  store i8* %34, i8** %26, align 8, !dbg !1224, !tbaa !1225
  store i8 10, i8* %27, align 1, !dbg !1224, !tbaa !570
  br label %35, !dbg !1224

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1230, !tbaa !472
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !1230
  %38 = icmp eq i32 %0, 0, !dbg !1231
  br i1 %38, label %40, label %39, !dbg !1233

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !1234
  unreachable, !dbg !1234

40:                                               ; preds = %35
  ret void, !dbg !1235
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1236 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1240 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1243 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1247 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1251, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i32 %1, metadata !1252, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %2, metadata !1253, metadata !DIExpression()), !dbg !1255
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1256
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1256
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1254, metadata !DIExpression()), !dbg !1257
  call void @llvm.va_start(i8* nonnull %6), !dbg !1258
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1259
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1259
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1259, !tbaa.struct !1110
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !1259
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1259
  call void @llvm.va_end(i8* nonnull %6), !dbg !1260
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1261
  ret void, !dbg !1261
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !191 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !209, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %1, metadata !210, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8* %2, metadata !211, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %3, metadata !212, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8* %4, metadata !213, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !214, metadata !DIExpression()), !dbg !1263
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1264, !tbaa !561
  %9 = icmp eq i32 %8, 0, !dbg !1264
  br i1 %9, label %24, label %10, !dbg !1266

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1267, !tbaa !561
  %12 = icmp eq i32 %11, %3, !dbg !1270
  br i1 %12, label %13, label %23, !dbg !1271

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1272, !tbaa !472
  %15 = icmp eq i8* %14, %2, !dbg !1273
  br i1 %15, label %39, label %16, !dbg !1274

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1275
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1276
  br i1 %19, label %20, label %23, !dbg !1276

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !1277
  %22 = icmp eq i32 %21, 0, !dbg !1278
  br i1 %22, label %39, label %23, !dbg !1279

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1280, !tbaa !472
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1281, !tbaa !561
  br label %24, !dbg !1282

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1283
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1284, !tbaa !472
  %26 = icmp eq void ()* %25, null, !dbg !1284
  br i1 %26, label %28, label %27, !dbg !1286

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !1287
  br label %32, !dbg !1287

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1288, !tbaa !472
  %30 = tail call i8* @getprogname() #33, !dbg !1288
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.36, i64 0, i64 0), i8* noundef %30) #32, !dbg !1288
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1290, !tbaa !472
  %34 = icmp eq i8* %2, null, !dbg !1290
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.37, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.38, i64 0, i64 0), !dbg !1290
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !1290
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1291
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1291
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1291, !tbaa.struct !1110
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1291
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1291
  br label %39, !dbg !1292

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1292
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1293 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1297, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %1, metadata !1298, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %2, metadata !1299, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %3, metadata !1300, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %4, metadata !1301, metadata !DIExpression()), !dbg !1303
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1304
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1304
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1302, metadata !DIExpression()), !dbg !1305
  call void @llvm.va_start(i8* nonnull %8), !dbg !1306
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1307, !tbaa.struct !1110
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !1307
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1307
  call void @llvm.va_end(i8* nonnull %8), !dbg !1308
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1309
  ret void, !dbg !1309
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !1310 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1313, !tbaa !472
  ret i8* %1, !dbg !1314
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrlen(i8* noundef %0, i64 noundef %1, %struct.__mbstate_t* noundef %2) local_unnamed_addr #12 !dbg !1315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1320, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %1, metadata !1321, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %2, metadata !1322, metadata !DIExpression()), !dbg !1323
  %4 = icmp eq %struct.__mbstate_t* %2, null, !dbg !1324
  %5 = select i1 %4, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %2, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %5, metadata !1322, metadata !DIExpression()), !dbg !1323
  %6 = tail call i64 @rpl_mbrtowc(i32* noundef null, i8* noundef %0, i64 noundef %1, %struct.__mbstate_t* noundef %5) #32, !dbg !1327
  ret i64 %6, !dbg !1328
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtowc(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !1329 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !1346, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %1, metadata !1347, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %2, metadata !1348, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !1349, metadata !DIExpression()), !dbg !1355
  %6 = bitcast i32* %5 to i8*, !dbg !1356
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #32, !dbg !1356
  %7 = icmp eq i32* %0, null, !dbg !1357
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !1359
  call void @llvm.dbg.value(metadata i32* %8, metadata !1346, metadata !DIExpression()), !dbg !1355
  %9 = call i64 @mbrtowc(i32* noundef %8, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #32, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %9, metadata !1351, metadata !DIExpression()), !dbg !1355
  %10 = icmp ugt i64 %9, -3, !dbg !1361
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !1362
  br i1 %12, label %13, label %18, !dbg !1362

13:                                               ; preds = %4
  %14 = call i1 @hard_locale(i32 noundef 0) #32, !dbg !1363
  br i1 %14, label %18, label %15, !dbg !1364

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !1365, !tbaa !570
  call void @llvm.dbg.value(metadata i8 %16, metadata !1352, metadata !DIExpression()), !dbg !1366
  %17 = zext i8 %16 to i32, !dbg !1367
  store i32 %17, i32* %8, align 4, !dbg !1368, !tbaa !561
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !1355
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #32, !dbg !1369
  ret i64 %19, !dbg !1369
}

; Function Attrs: nounwind
declare !dbg !1370 i64 @mbrtowc(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !1376 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1378, metadata !DIExpression()), !dbg !1381
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %2, metadata !1379, metadata !DIExpression()), !dbg !1381
  %3 = icmp eq i8* %2, null, !dbg !1383
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1383
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1383
  call void @llvm.dbg.value(metadata i8* %5, metadata !1380, metadata !DIExpression()), !dbg !1381
  %6 = ptrtoint i8* %5 to i64, !dbg !1384
  %7 = ptrtoint i8* %0 to i64, !dbg !1384
  %8 = sub i64 %6, %7, !dbg !1384
  %9 = icmp sgt i64 %8, 6, !dbg !1386
  br i1 %9, label %10, label %19, !dbg !1387

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1388
  call void @llvm.dbg.value(metadata i8* %11, metadata !1389, metadata !DIExpression()) #32, !dbg !1396
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), metadata !1394, metadata !DIExpression()) #32, !dbg !1396
  call void @llvm.dbg.value(metadata i64 7, metadata !1395, metadata !DIExpression()) #32, !dbg !1396
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), i64 7) #32, !dbg !1398
  %13 = icmp eq i32 %12, 0, !dbg !1399
  br i1 %13, label %14, label %19, !dbg !1400

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1378, metadata !DIExpression()), !dbg !1381
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.67, i64 0, i64 0), i64 noundef 3) #33, !dbg !1401
  %16 = icmp eq i32 %15, 0, !dbg !1404
  %17 = select i1 %16, i64 3, i64 0, !dbg !1405
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1405
  br label %19, !dbg !1405

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1381
  call void @llvm.dbg.value(metadata i8* %21, metadata !1380, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i8* %20, metadata !1378, metadata !DIExpression()), !dbg !1381
  store i8* %20, i8** @program_name, align 8, !dbg !1406, !tbaa !472
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1407, !tbaa !472
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1408, !tbaa !472
  ret void, !dbg !1409
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !251 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !258, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %1, metadata !259, metadata !DIExpression()), !dbg !1410
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %5, metadata !260, metadata !DIExpression()), !dbg !1410
  %6 = icmp eq i8* %5, %0, !dbg !1412
  br i1 %6, label %7, label %17, !dbg !1414

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1415
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1415
  %10 = bitcast i64* %4 to i8*, !dbg !1416
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1416
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !266, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1418, metadata !DIExpression()) #32, !dbg !1424
  call void @llvm.dbg.value(metadata i8* %10, metadata !1426, metadata !DIExpression()) #32, !dbg !1431
  call void @llvm.dbg.value(metadata i32 0, metadata !1429, metadata !DIExpression()) #32, !dbg !1431
  call void @llvm.dbg.value(metadata i64 8, metadata !1430, metadata !DIExpression()) #32, !dbg !1431
  store i64 0, i64* %4, align 8, !dbg !1433
  call void @llvm.dbg.value(metadata i32* %3, metadata !261, metadata !DIExpression(DW_OP_deref)), !dbg !1410
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1434
  %12 = icmp eq i64 %11, 2, !dbg !1436
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !261, metadata !DIExpression()), !dbg !1410
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1437
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1410
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1438
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1410
  ret i8* %18, !dbg !1438
}

; Function Attrs: nounwind
declare !dbg !1439 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1445 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1450, metadata !DIExpression()), !dbg !1453
  %2 = tail call i32* @__errno_location() #35, !dbg !1454
  %3 = load i32, i32* %2, align 4, !dbg !1454, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %3, metadata !1451, metadata !DIExpression()), !dbg !1453
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1455
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1455
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1455
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1456
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1452, metadata !DIExpression()), !dbg !1453
  store i32 %3, i32* %2, align 4, !dbg !1457, !tbaa !561
  ret %struct.quoting_options* %8, !dbg !1458
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1459 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1465, metadata !DIExpression()), !dbg !1466
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1467
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1467
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1468
  %5 = load i32, i32* %4, align 8, !dbg !1468, !tbaa !1469
  ret i32 %5, !dbg !1471
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1472 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1476, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i32 %1, metadata !1477, metadata !DIExpression()), !dbg !1478
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1479
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1479
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1480
  store i32 %1, i32* %5, align 8, !dbg !1481, !tbaa !1469
  ret void, !dbg !1482
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1483 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1487, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i8 %1, metadata !1488, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i32 %2, metadata !1489, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i8 %1, metadata !1490, metadata !DIExpression()), !dbg !1495
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1496
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1496
  %6 = lshr i8 %1, 5, !dbg !1497
  %7 = zext i8 %6 to i64, !dbg !1497
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1498
  call void @llvm.dbg.value(metadata i32* %8, metadata !1491, metadata !DIExpression()), !dbg !1495
  %9 = and i8 %1, 31, !dbg !1499
  %10 = zext i8 %9 to i32, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %10, metadata !1493, metadata !DIExpression()), !dbg !1495
  %11 = load i32, i32* %8, align 4, !dbg !1500, !tbaa !561
  %12 = lshr i32 %11, %10, !dbg !1501
  %13 = and i32 %12, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %13, metadata !1494, metadata !DIExpression()), !dbg !1495
  %14 = and i32 %2, 1, !dbg !1503
  %15 = xor i32 %13, %14, !dbg !1504
  %16 = shl i32 %15, %10, !dbg !1505
  %17 = xor i32 %16, %11, !dbg !1506
  store i32 %17, i32* %8, align 4, !dbg !1506, !tbaa !561
  ret i32 %13, !dbg !1507
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1508 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1512, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %1, metadata !1513, metadata !DIExpression()), !dbg !1515
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1516
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1518
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1512, metadata !DIExpression()), !dbg !1515
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1519
  %6 = load i32, i32* %5, align 4, !dbg !1519, !tbaa !1520
  call void @llvm.dbg.value(metadata i32 %6, metadata !1514, metadata !DIExpression()), !dbg !1515
  store i32 %1, i32* %5, align 4, !dbg !1521, !tbaa !1520
  ret i32 %6, !dbg !1522
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1523 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1527, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %1, metadata !1528, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %2, metadata !1529, metadata !DIExpression()), !dbg !1530
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1531
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1527, metadata !DIExpression()), !dbg !1530
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1534
  store i32 10, i32* %6, align 8, !dbg !1535, !tbaa !1469
  %7 = icmp ne i8* %1, null, !dbg !1536
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1538
  br i1 %9, label %11, label %10, !dbg !1538

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1539
  unreachable, !dbg !1539

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1540
  store i8* %1, i8** %12, align 8, !dbg !1541, !tbaa !1542
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1543
  store i8* %2, i8** %13, align 8, !dbg !1544, !tbaa !1545
  ret void, !dbg !1546
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1547 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1551, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i64 %1, metadata !1552, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i8* %2, metadata !1553, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i64 %3, metadata !1554, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1555, metadata !DIExpression()), !dbg !1559
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1560
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1556, metadata !DIExpression()), !dbg !1559
  %8 = tail call i32* @__errno_location() #35, !dbg !1561
  %9 = load i32, i32* %8, align 4, !dbg !1561, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %9, metadata !1557, metadata !DIExpression()), !dbg !1559
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1562
  %11 = load i32, i32* %10, align 8, !dbg !1562, !tbaa !1469
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1563
  %13 = load i32, i32* %12, align 4, !dbg !1563, !tbaa !1520
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1564
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1565
  %16 = load i8*, i8** %15, align 8, !dbg !1565, !tbaa !1542
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1566
  %18 = load i8*, i8** %17, align 8, !dbg !1566, !tbaa !1545
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1567
  call void @llvm.dbg.value(metadata i64 %19, metadata !1558, metadata !DIExpression()), !dbg !1559
  store i32 %9, i32* %8, align 4, !dbg !1568, !tbaa !561
  ret i64 %19, !dbg !1569
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1570 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1576, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %1, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %2, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %3, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %4, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %5, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32* %6, metadata !1582, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %7, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %8, metadata !1584, metadata !DIExpression()), !dbg !1638
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1639
  %18 = icmp eq i64 %17, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i1 %18, metadata !1585, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* null, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1589, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %5, metadata !1591, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1593, metadata !DIExpression()), !dbg !1638
  %19 = and i32 %5, 2, !dbg !1641
  %20 = icmp ne i32 %19, 0, !dbg !1641
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
  br label %36, !dbg !1641

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1642
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1643
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1644
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1593, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %43, metadata !1589, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %42, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %41, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %40, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %39, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %38, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %37, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1631), !dbg !1645
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1638
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
  ], !dbg !1646

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 5, metadata !1580, metadata !DIExpression()), !dbg !1638
  br label %111, !dbg !1647

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 5, metadata !1580, metadata !DIExpression()), !dbg !1638
  br i1 %45, label %111, label %51, !dbg !1647

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1648
  br i1 %52, label %111, label %53, !dbg !1652

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1648, !tbaa !570
  br label %111, !dbg !1648

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), metadata !323, metadata !DIExpression()) #32, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %37, metadata !324, metadata !DIExpression()) #32, !dbg !1653
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), i32 noundef 5) #32, !dbg !1657
  call void @llvm.dbg.value(metadata i8* %55, metadata !325, metadata !DIExpression()) #32, !dbg !1653
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), !dbg !1658
  br i1 %56, label %57, label %66, !dbg !1660

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1661
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1662
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !327, metadata !DIExpression()) #32, !dbg !1663
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1664, metadata !DIExpression()) #32, !dbg !1670
  call void @llvm.dbg.value(metadata i8* %23, metadata !1672, metadata !DIExpression()) #32, !dbg !1677
  call void @llvm.dbg.value(metadata i32 0, metadata !1675, metadata !DIExpression()) #32, !dbg !1677
  call void @llvm.dbg.value(metadata i64 8, metadata !1676, metadata !DIExpression()) #32, !dbg !1677
  store i64 0, i64* %13, align 8, !dbg !1679
  call void @llvm.dbg.value(metadata i32* %12, metadata !326, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1653
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1680
  %59 = icmp eq i64 %58, 3, !dbg !1682
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !326, metadata !DIExpression()) #32, !dbg !1653
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1683
  %63 = icmp eq i32 %37, 9, !dbg !1683
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), !dbg !1683
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1683
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1684
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1684
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8* %67, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), metadata !323, metadata !DIExpression()) #32, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %37, metadata !324, metadata !DIExpression()) #32, !dbg !1685
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), i32 noundef 5) #32, !dbg !1687
  call void @llvm.dbg.value(metadata i8* %68, metadata !325, metadata !DIExpression()) #32, !dbg !1685
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), !dbg !1688
  br i1 %69, label %70, label %79, !dbg !1689

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1690
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1691
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !327, metadata !DIExpression()) #32, !dbg !1692
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1664, metadata !DIExpression()) #32, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %26, metadata !1672, metadata !DIExpression()) #32, !dbg !1695
  call void @llvm.dbg.value(metadata i32 0, metadata !1675, metadata !DIExpression()) #32, !dbg !1695
  call void @llvm.dbg.value(metadata i64 8, metadata !1676, metadata !DIExpression()) #32, !dbg !1695
  store i64 0, i64* %11, align 8, !dbg !1697
  call void @llvm.dbg.value(metadata i32* %10, metadata !326, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1685
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1698
  %72 = icmp eq i64 %71, 3, !dbg !1699
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !326, metadata !DIExpression()) #32, !dbg !1685
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1700
  %76 = icmp eq i32 %37, 9, !dbg !1700
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), !dbg !1700
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1700
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1701
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %80, metadata !1583, metadata !DIExpression()), !dbg !1638
  br i1 %45, label %97, label %82, !dbg !1702

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1595, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 0, metadata !1586, metadata !DIExpression()), !dbg !1638
  %83 = load i8, i8* %80, align 1, !dbg !1704, !tbaa !570
  %84 = icmp eq i8 %83, 0, !dbg !1706
  br i1 %84, label %97, label %85, !dbg !1706

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1595, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %88, metadata !1586, metadata !DIExpression()), !dbg !1638
  %89 = icmp ult i64 %88, %48, !dbg !1707
  br i1 %89, label %90, label %92, !dbg !1710

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1707
  store i8 %86, i8* %91, align 1, !dbg !1707, !tbaa !570
  br label %92, !dbg !1707

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %93, metadata !1586, metadata !DIExpression()), !dbg !1638
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %94, metadata !1595, metadata !DIExpression()), !dbg !1703
  %95 = load i8, i8* %94, align 1, !dbg !1704, !tbaa !570
  %96 = icmp eq i8 %95, 0, !dbg !1706
  br i1 %96, label %97, label %85, !dbg !1706, !llvm.loop !1712

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1714
  call void @llvm.dbg.value(metadata i64 %98, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %81, metadata !1588, metadata !DIExpression()), !dbg !1638
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %99, metadata !1589, metadata !DIExpression()), !dbg !1638
  br label %111, !dbg !1716

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1590, metadata !DIExpression()), !dbg !1638
  br label %102, !dbg !1717

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1638
  br i1 %45, label %102, label %105, !dbg !1718

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1580, metadata !DIExpression()), !dbg !1638
  br label %111, !dbg !1719

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1580, metadata !DIExpression()), !dbg !1638
  br i1 %45, label %111, label %105, !dbg !1719

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1720
  br i1 %107, label %111, label %108, !dbg !1724

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1720, !tbaa !570
  br label %111, !dbg !1720

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1638
  br label %111, !dbg !1725

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1726
  unreachable, !dbg !1726

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1714
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), %102 ], !dbg !1638
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1638
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %117, metadata !1589, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %116, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %115, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %114, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %113, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %112, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1600, metadata !DIExpression()), !dbg !1727
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
  br label %132, !dbg !1728

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1714
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1642
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1727
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %139, metadata !1600, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1593, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %135, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %134, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %133, metadata !1579, metadata !DIExpression()), !dbg !1638
  %141 = icmp eq i64 %133, -1, !dbg !1729
  br i1 %141, label %142, label %146, !dbg !1730

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1731
  %144 = load i8, i8* %143, align 1, !dbg !1731, !tbaa !570
  %145 = icmp eq i8 %144, 0, !dbg !1732
  br i1 %145, label %596, label %148, !dbg !1733

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1734
  br i1 %147, label %596, label %148, !dbg !1733

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1735
  br i1 %123, label %149, label %163, !dbg !1736

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1738
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1739
  br i1 %151, label %152, label %154, !dbg !1739

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %153, metadata !1579, metadata !DIExpression()), !dbg !1638
  br label %154, !dbg !1741

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1741
  call void @llvm.dbg.value(metadata i64 %155, metadata !1579, metadata !DIExpression()), !dbg !1638
  %156 = icmp ugt i64 %150, %155, !dbg !1742
  br i1 %156, label %163, label %157, !dbg !1743

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1744
  call void @llvm.dbg.value(metadata i8* %158, metadata !1745, metadata !DIExpression()) #32, !dbg !1750
  call void @llvm.dbg.value(metadata i8* %116, metadata !1748, metadata !DIExpression()) #32, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %117, metadata !1749, metadata !DIExpression()) #32, !dbg !1750
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1752
  %160 = icmp ne i32 %159, 0, !dbg !1753
  %161 = or i1 %160, %125, !dbg !1754
  %162 = xor i1 %160, true, !dbg !1754
  br i1 %161, label %163, label %647, !dbg !1754

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %164, metadata !1579, metadata !DIExpression()), !dbg !1638
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1755
  %167 = load i8, i8* %166, align 1, !dbg !1755, !tbaa !570
  call void @llvm.dbg.value(metadata i8 %167, metadata !1607, metadata !DIExpression()), !dbg !1735
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
  ], !dbg !1756

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1757

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1758

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1735
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1762
  br i1 %171, label %188, label %172, !dbg !1762

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1764
  br i1 %173, label %174, label %176, !dbg !1768

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1764
  store i8 39, i8* %175, align 1, !dbg !1764, !tbaa !570
  br label %176, !dbg !1764

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %177, metadata !1586, metadata !DIExpression()), !dbg !1638
  %178 = icmp ult i64 %177, %140, !dbg !1769
  br i1 %178, label %179, label %181, !dbg !1772

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1769
  store i8 36, i8* %180, align 1, !dbg !1769, !tbaa !570
  br label %181, !dbg !1769

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %182, metadata !1586, metadata !DIExpression()), !dbg !1638
  %183 = icmp ult i64 %182, %140, !dbg !1773
  br i1 %183, label %184, label %186, !dbg !1776

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1773
  store i8 39, i8* %185, align 1, !dbg !1773, !tbaa !570
  br label %186, !dbg !1773

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %187, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1638
  br label %188, !dbg !1777

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1638
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %189, metadata !1586, metadata !DIExpression()), !dbg !1638
  %191 = icmp ult i64 %189, %140, !dbg !1778
  br i1 %191, label %192, label %194, !dbg !1781

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1778
  store i8 92, i8* %193, align 1, !dbg !1778, !tbaa !570
  br label %194, !dbg !1778

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %195, metadata !1586, metadata !DIExpression()), !dbg !1638
  br i1 %120, label %196, label %499, !dbg !1782

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1784
  %198 = icmp ult i64 %197, %164, !dbg !1785
  br i1 %198, label %199, label %456, !dbg !1786

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1787
  %201 = load i8, i8* %200, align 1, !dbg !1787, !tbaa !570
  %202 = add i8 %201, -48, !dbg !1788
  %203 = icmp ult i8 %202, 10, !dbg !1788
  br i1 %203, label %204, label %456, !dbg !1788

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1789
  br i1 %205, label %206, label %208, !dbg !1793

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1789
  store i8 48, i8* %207, align 1, !dbg !1789, !tbaa !570
  br label %208, !dbg !1789

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %209, metadata !1586, metadata !DIExpression()), !dbg !1638
  %210 = icmp ult i64 %209, %140, !dbg !1794
  br i1 %210, label %211, label %213, !dbg !1797

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1794
  store i8 48, i8* %212, align 1, !dbg !1794, !tbaa !570
  br label %213, !dbg !1794

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %214, metadata !1586, metadata !DIExpression()), !dbg !1638
  br label %456, !dbg !1798

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1799

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1800

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1801

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1803

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1805
  %221 = icmp ult i64 %220, %164, !dbg !1806
  br i1 %221, label %222, label %456, !dbg !1807

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1808
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1809
  %225 = load i8, i8* %224, align 1, !dbg !1809, !tbaa !570
  %226 = icmp eq i8 %225, 63, !dbg !1810
  br i1 %226, label %227, label %456, !dbg !1811

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1812
  %229 = load i8, i8* %228, align 1, !dbg !1812, !tbaa !570
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
  ], !dbg !1813

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1814

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1607, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %220, metadata !1600, metadata !DIExpression()), !dbg !1727
  %232 = icmp ult i64 %134, %140, !dbg !1816
  br i1 %232, label %233, label %235, !dbg !1819

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1816
  store i8 63, i8* %234, align 1, !dbg !1816, !tbaa !570
  br label %235, !dbg !1816

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %236, metadata !1586, metadata !DIExpression()), !dbg !1638
  %237 = icmp ult i64 %236, %140, !dbg !1820
  br i1 %237, label %238, label %240, !dbg !1823

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1820
  store i8 34, i8* %239, align 1, !dbg !1820, !tbaa !570
  br label %240, !dbg !1820

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %241, metadata !1586, metadata !DIExpression()), !dbg !1638
  %242 = icmp ult i64 %241, %140, !dbg !1824
  br i1 %242, label %243, label %245, !dbg !1827

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1824
  store i8 34, i8* %244, align 1, !dbg !1824, !tbaa !570
  br label %245, !dbg !1824

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %246, metadata !1586, metadata !DIExpression()), !dbg !1638
  %247 = icmp ult i64 %246, %140, !dbg !1828
  br i1 %247, label %248, label %250, !dbg !1831

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1828
  store i8 63, i8* %249, align 1, !dbg !1828, !tbaa !570
  br label %250, !dbg !1828

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %251, metadata !1586, metadata !DIExpression()), !dbg !1638
  br label %456, !dbg !1832

252:                                              ; preds = %163
  br label %263, !dbg !1833

253:                                              ; preds = %163
  br label %263, !dbg !1834

254:                                              ; preds = %163
  br label %261, !dbg !1835

255:                                              ; preds = %163
  br label %261, !dbg !1836

256:                                              ; preds = %163
  br label %263, !dbg !1837

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1838

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1839

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1842

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1844

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1845
  call void @llvm.dbg.label(metadata !1632), !dbg !1846
  br i1 %128, label %263, label %638, !dbg !1847

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1845
  call void @llvm.dbg.label(metadata !1634), !dbg !1849
  br i1 %118, label %510, label %467, !dbg !1850

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1851

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1852, !tbaa !570
  %268 = icmp eq i8 %267, 0, !dbg !1854
  br i1 %268, label %269, label %456, !dbg !1855

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1856
  br i1 %270, label %271, label %456, !dbg !1858

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1735
  br label %272, !dbg !1859

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1606, metadata !DIExpression()), !dbg !1735
  br i1 %126, label %274, label %456, !dbg !1860

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1862

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1735
  br i1 %126, label %276, label %456, !dbg !1863

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1864

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1867
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1869
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1869
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %282, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %281, metadata !1587, metadata !DIExpression()), !dbg !1638
  %283 = icmp ult i64 %134, %282, !dbg !1870
  br i1 %283, label %284, label %286, !dbg !1873

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1870
  store i8 39, i8* %285, align 1, !dbg !1870, !tbaa !570
  br label %286, !dbg !1870

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %287, metadata !1586, metadata !DIExpression()), !dbg !1638
  %288 = icmp ult i64 %287, %282, !dbg !1874
  br i1 %288, label %289, label %291, !dbg !1877

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1874
  store i8 92, i8* %290, align 1, !dbg !1874, !tbaa !570
  br label %291, !dbg !1874

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %292, metadata !1586, metadata !DIExpression()), !dbg !1638
  %293 = icmp ult i64 %292, %282, !dbg !1878
  br i1 %293, label %294, label %296, !dbg !1881

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1878
  store i8 39, i8* %295, align 1, !dbg !1878, !tbaa !570
  br label %296, !dbg !1878

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %297, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1638
  br label %456, !dbg !1882

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1883

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1608, metadata !DIExpression()), !dbg !1884
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1885
  %301 = load i16*, i16** %300, align 8, !dbg !1885, !tbaa !472
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1885
  %304 = load i16, i16* %303, align 2, !dbg !1885, !tbaa !595
  %305 = and i16 %304, 16384, !dbg !1885
  %306 = icmp ne i16 %305, 0, !dbg !1887
  call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %349, metadata !1608, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %312, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i1 %350, metadata !1606, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1735
  br label %352, !dbg !1888

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1889
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1612, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1664, metadata !DIExpression()) #32, !dbg !1891
  call void @llvm.dbg.value(metadata i8* %32, metadata !1672, metadata !DIExpression()) #32, !dbg !1893
  call void @llvm.dbg.value(metadata i32 0, metadata !1675, metadata !DIExpression()) #32, !dbg !1893
  call void @llvm.dbg.value(metadata i64 8, metadata !1676, metadata !DIExpression()) #32, !dbg !1893
  store i64 0, i64* %14, align 8, !dbg !1895
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1884
  %308 = icmp eq i64 %164, -1, !dbg !1896
  br i1 %308, label %309, label %311, !dbg !1898

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %310, metadata !1579, metadata !DIExpression()), !dbg !1638
  br label %311, !dbg !1900

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1735
  call void @llvm.dbg.value(metadata i64 %312, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1901
  %313 = sub i64 %312, %139, !dbg !1902
  call void @llvm.dbg.value(metadata i32* %16, metadata !1615, metadata !DIExpression(DW_OP_deref)), !dbg !1903
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %314, metadata !1619, metadata !DIExpression()), !dbg !1903
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1905

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1884
  %316 = icmp ugt i64 %312, %139, !dbg !1906
  br i1 %316, label %319, label %317, !dbg !1908

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1884
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %349, metadata !1608, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %312, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i1 %350, metadata !1606, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1735
  br label %352, !dbg !1888

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1884
  br label %346, !dbg !1911

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1608, metadata !DIExpression()), !dbg !1884
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1913
  %323 = load i8, i8* %322, align 1, !dbg !1913, !tbaa !570
  %324 = icmp eq i8 %323, 0, !dbg !1908
  br i1 %324, label %348, label %325, !dbg !1914

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %326, metadata !1608, metadata !DIExpression()), !dbg !1884
  %327 = add i64 %326, %139, !dbg !1916
  %328 = icmp eq i64 %326, %313, !dbg !1906
  br i1 %328, label %348, label %319, !dbg !1908, !llvm.loop !1917

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1918
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1919
  br i1 %331, label %332, label %340, !dbg !1918

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1620, metadata !DIExpression()), !dbg !1919
  %334 = add i64 %333, %139, !dbg !1920
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1922
  %336 = load i8, i8* %335, align 1, !dbg !1922, !tbaa !570
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1923

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %338, metadata !1620, metadata !DIExpression()), !dbg !1919
  %339 = icmp eq i64 %338, %314, !dbg !1925
  br i1 %339, label %340, label %332, !dbg !1926, !llvm.loop !1927

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1929, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %341, metadata !1615, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %341, metadata !1931, metadata !DIExpression()) #32, !dbg !1939
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1941
  %343 = icmp ne i32 %342, 0, !dbg !1942
  call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %314, metadata !1608, metadata !DIExpression()), !dbg !1884
  br label %348, !dbg !1943

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1884
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1910
  call void @llvm.dbg.label(metadata !1637), !dbg !1944
  %345 = select i1 %118, i32 4, i32 2, !dbg !1945
  br label %643, !dbg !1945

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1884
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %349, metadata !1608, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %312, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i1 %350, metadata !1606, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1735
  br label %352, !dbg !1888

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1884
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %349, metadata !1608, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i64 %312, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i1 %350, metadata !1606, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1735
  %351 = icmp ugt i64 %349, 1, !dbg !1947
  br i1 %351, label %357, label %352, !dbg !1888

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1948
  br i1 %356, label %456, label %357, !dbg !1948

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %361, metadata !1628, metadata !DIExpression()), !dbg !1950
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1951

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1638
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1727
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1952
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1735
  call void @llvm.dbg.value(metadata i8 %369, metadata !1607, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 %368, metadata !1605, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %366, metadata !1600, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %364, metadata !1586, metadata !DIExpression()), !dbg !1638
  br i1 %362, label %414, label %370, !dbg !1953

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1958

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1735
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1961
  br i1 %372, label %389, label %373, !dbg !1961

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1963
  br i1 %374, label %375, label %377, !dbg !1967

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1963
  store i8 39, i8* %376, align 1, !dbg !1963, !tbaa !570
  br label %377, !dbg !1963

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %378, metadata !1586, metadata !DIExpression()), !dbg !1638
  %379 = icmp ult i64 %378, %140, !dbg !1968
  br i1 %379, label %380, label %382, !dbg !1971

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1968
  store i8 36, i8* %381, align 1, !dbg !1968, !tbaa !570
  br label %382, !dbg !1968

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %383, metadata !1586, metadata !DIExpression()), !dbg !1638
  %384 = icmp ult i64 %383, %140, !dbg !1972
  br i1 %384, label %385, label %387, !dbg !1975

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1972
  store i8 39, i8* %386, align 1, !dbg !1972, !tbaa !570
  br label %387, !dbg !1972

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %388, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1638
  br label %389, !dbg !1976

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1638
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %390, metadata !1586, metadata !DIExpression()), !dbg !1638
  %392 = icmp ult i64 %390, %140, !dbg !1977
  br i1 %392, label %393, label %395, !dbg !1980

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1977
  store i8 92, i8* %394, align 1, !dbg !1977, !tbaa !570
  br label %395, !dbg !1977

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %396, metadata !1586, metadata !DIExpression()), !dbg !1638
  %397 = icmp ult i64 %396, %140, !dbg !1981
  br i1 %397, label %398, label %402, !dbg !1984

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1981
  %400 = or i8 %399, 48, !dbg !1981
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1981
  store i8 %400, i8* %401, align 1, !dbg !1981, !tbaa !570
  br label %402, !dbg !1981

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %403, metadata !1586, metadata !DIExpression()), !dbg !1638
  %404 = icmp ult i64 %403, %140, !dbg !1985
  br i1 %404, label %405, label %410, !dbg !1988

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1985
  %407 = and i8 %406, 7, !dbg !1985
  %408 = or i8 %407, 48, !dbg !1985
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1985
  store i8 %408, i8* %409, align 1, !dbg !1985, !tbaa !570
  br label %410, !dbg !1985

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %411, metadata !1586, metadata !DIExpression()), !dbg !1638
  %412 = and i8 %369, 7, !dbg !1989
  %413 = or i8 %412, 48, !dbg !1990
  call void @llvm.dbg.value(metadata i8 %413, metadata !1607, metadata !DIExpression()), !dbg !1735
  br label %421, !dbg !1991

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1992

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1993
  br i1 %416, label %417, label %419, !dbg !1998

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1993
  store i8 92, i8* %418, align 1, !dbg !1993, !tbaa !570
  br label %419, !dbg !1993

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %420, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1735
  br label %421, !dbg !1999

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1638
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1735
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1735
  call void @llvm.dbg.value(metadata i8 %426, metadata !1607, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 %425, metadata !1605, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %422, metadata !1586, metadata !DIExpression()), !dbg !1638
  %427 = add i64 %366, 1, !dbg !2000
  %428 = icmp ugt i64 %361, %427, !dbg !2002
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2003

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2004
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2004
  br i1 %432, label %433, label %444, !dbg !2004

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2007
  br i1 %434, label %435, label %437, !dbg !2011

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2007
  store i8 39, i8* %436, align 1, !dbg !2007, !tbaa !570
  br label %437, !dbg !2007

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %438, metadata !1586, metadata !DIExpression()), !dbg !1638
  %439 = icmp ult i64 %438, %140, !dbg !2012
  br i1 %439, label %440, label %442, !dbg !2015

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2012
  store i8 39, i8* %441, align 1, !dbg !2012, !tbaa !570
  br label %442, !dbg !2012

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %443, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1638
  br label %444, !dbg !2016

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2017
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %445, metadata !1586, metadata !DIExpression()), !dbg !1638
  %447 = icmp ult i64 %445, %140, !dbg !2018
  br i1 %447, label %448, label %450, !dbg !2021

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2018
  store i8 %426, i8* %449, align 1, !dbg !2018, !tbaa !570
  br label %450, !dbg !2018

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %451, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %427, metadata !1600, metadata !DIExpression()), !dbg !1727
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2022
  %453 = load i8, i8* %452, align 1, !dbg !2022, !tbaa !570
  call void @llvm.dbg.value(metadata i8 %453, metadata !1607, metadata !DIExpression()), !dbg !1735
  br label %363, !dbg !2023, !llvm.loop !2024

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1607, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i1 %358, metadata !1606, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1735
  call void @llvm.dbg.value(metadata i8 %425, metadata !1605, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %366, metadata !1600, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %422, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %360, metadata !1579, metadata !DIExpression()), !dbg !1638
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2027
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1638
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1642
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1727
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1735
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %465, metadata !1607, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %462, metadata !1600, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %459, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %458, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %457, metadata !1579, metadata !DIExpression()), !dbg !1638
  br i1 %121, label %478, label %467, !dbg !2028

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
  br i1 %131, label %479, label %499, !dbg !2030

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2031

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
  %490 = lshr i8 %481, 5, !dbg !2032
  %491 = zext i8 %490 to i64, !dbg !2032
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2033
  %493 = load i32, i32* %492, align 4, !dbg !2033, !tbaa !561
  %494 = and i8 %481, 31, !dbg !2034
  %495 = zext i8 %494 to i32, !dbg !2034
  %496 = shl nuw i32 1, %495, !dbg !2035
  %497 = and i32 %493, %496, !dbg !2035
  %498 = icmp eq i32 %497, 0, !dbg !2035
  br i1 %498, label %499, label %510, !dbg !2036

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
  br i1 %165, label %510, label %546, !dbg !2037

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2027
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1638
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1642
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2038
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1735
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %518, metadata !1607, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %516, metadata !1600, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %513, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %512, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %511, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1635), !dbg !2039
  br i1 %119, label %638, label %520, !dbg !2040

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1735
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2042
  br i1 %521, label %538, label %522, !dbg !2042

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2044
  br i1 %523, label %524, label %526, !dbg !2048

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2044
  store i8 39, i8* %525, align 1, !dbg !2044, !tbaa !570
  br label %526, !dbg !2044

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %527, metadata !1586, metadata !DIExpression()), !dbg !1638
  %528 = icmp ult i64 %527, %519, !dbg !2049
  br i1 %528, label %529, label %531, !dbg !2052

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2049
  store i8 36, i8* %530, align 1, !dbg !2049, !tbaa !570
  br label %531, !dbg !2049

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %532, metadata !1586, metadata !DIExpression()), !dbg !1638
  %533 = icmp ult i64 %532, %519, !dbg !2053
  br i1 %533, label %534, label %536, !dbg !2056

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2053
  store i8 39, i8* %535, align 1, !dbg !2053, !tbaa !570
  br label %536, !dbg !2053

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %537, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1638
  br label %538, !dbg !2057

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1735
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %539, metadata !1586, metadata !DIExpression()), !dbg !1638
  %541 = icmp ult i64 %539, %519, !dbg !2058
  br i1 %541, label %542, label %544, !dbg !2061

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2058
  store i8 92, i8* %543, align 1, !dbg !2058, !tbaa !570
  br label %544, !dbg !2058

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %556, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %555, metadata !1607, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %552, metadata !1600, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %549, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %548, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %547, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1636), !dbg !2062
  br label %570, !dbg !2063

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2027
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1638
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1642
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2038
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2066
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %555, metadata !1607, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %552, metadata !1600, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %549, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %548, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %547, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1636), !dbg !2062
  %557 = xor i1 %551, true, !dbg !2063
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2063
  br i1 %558, label %570, label %559, !dbg !2063

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2067
  br i1 %560, label %561, label %563, !dbg !2071

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2067
  store i8 39, i8* %562, align 1, !dbg !2067, !tbaa !570
  br label %563, !dbg !2067

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %564, metadata !1586, metadata !DIExpression()), !dbg !1638
  %565 = icmp ult i64 %564, %556, !dbg !2072
  br i1 %565, label %566, label %568, !dbg !2075

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2072
  store i8 39, i8* %567, align 1, !dbg !2072, !tbaa !570
  br label %568, !dbg !2072

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %569, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1638
  br label %570, !dbg !2076

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1735
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %578, metadata !1586, metadata !DIExpression()), !dbg !1638
  %580 = icmp ult i64 %578, %571, !dbg !2077
  br i1 %580, label %581, label %583, !dbg !2080

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2077
  store i8 %572, i8* %582, align 1, !dbg !2077, !tbaa !570
  br label %583, !dbg !2077

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %584, metadata !1586, metadata !DIExpression()), !dbg !1638
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2081
  call void @llvm.dbg.value(metadata i8 poison, metadata !1593, metadata !DIExpression()), !dbg !1638
  br label %586, !dbg !2082

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2027
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1638
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1642
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2038
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %593, metadata !1600, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 poison, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1593, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %589, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %588, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %587, metadata !1579, metadata !DIExpression()), !dbg !1638
  %595 = add i64 %593, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %595, metadata !1600, metadata !DIExpression()), !dbg !1727
  br label %132, !dbg !2084, !llvm.loop !2085

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1593, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 undef, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 undef, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 undef, metadata !1579, metadata !DIExpression()), !dbg !1638
  %597 = icmp eq i64 %134, 0, !dbg !2087
  %598 = and i1 %126, %597, !dbg !2089
  %599 = and i1 %598, %119, !dbg !2089
  br i1 %599, label %638, label %600, !dbg !2089

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2090
  %602 = or i1 %119, %601, !dbg !2090
  %603 = xor i1 %136, true, !dbg !2090
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2090
  br i1 %604, label %612, label %605, !dbg !2090

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2092

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2094
  br label %653, !dbg !2096

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2097
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2099
  br i1 %611, label %36, label %612, !dbg !2099

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2100
  %615 = or i1 %614, %613, !dbg !2102
  br i1 %615, label %631, label %616, !dbg !2102

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %134, metadata !1586, metadata !DIExpression()), !dbg !1638
  %617 = load i8, i8* %116, align 1, !dbg !2103, !tbaa !570
  %618 = icmp eq i8 %617, 0, !dbg !2106
  br i1 %618, label %631, label %619, !dbg !2106

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %622, metadata !1586, metadata !DIExpression()), !dbg !1638
  %623 = icmp ult i64 %622, %140, !dbg !2107
  br i1 %623, label %624, label %626, !dbg !2110

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2107
  store i8 %620, i8* %625, align 1, !dbg !2107, !tbaa !570
  br label %626, !dbg !2107

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %627, metadata !1586, metadata !DIExpression()), !dbg !1638
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2111
  call void @llvm.dbg.value(metadata i8* %628, metadata !1588, metadata !DIExpression()), !dbg !1638
  %629 = load i8, i8* %628, align 1, !dbg !2103, !tbaa !570
  %630 = icmp eq i8 %629, 0, !dbg !2106
  br i1 %630, label %631, label %619, !dbg !2106, !llvm.loop !2112

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1714
  call void @llvm.dbg.value(metadata i64 %632, metadata !1586, metadata !DIExpression()), !dbg !1638
  %633 = icmp ult i64 %632, %140, !dbg !2114
  br i1 %633, label %634, label %653, !dbg !2116

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2117
  store i8 0, i8* %635, align 1, !dbg !2118, !tbaa !570
  br label %653, !dbg !2117

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1637), !dbg !1944
  %637 = icmp eq i32 %112, 2, !dbg !2119
  br i1 %637, label %643, label %647, !dbg !1945

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1637), !dbg !1944
  %641 = icmp eq i32 %112, 2, !dbg !2119
  %642 = select i1 %118, i32 4, i32 2, !dbg !1945
  br i1 %641, label %643, label %647, !dbg !1945

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1945

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1580, metadata !DIExpression()), !dbg !1638
  %651 = and i32 %5, -3, !dbg !2120
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2121
  br label %653, !dbg !2122

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2123
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2124 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2126 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2130, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %1, metadata !2131, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2132, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %0, metadata !2134, metadata !DIExpression()) #32, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %1, metadata !2139, metadata !DIExpression()) #32, !dbg !2147
  call void @llvm.dbg.value(metadata i64* null, metadata !2140, metadata !DIExpression()) #32, !dbg !2147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2141, metadata !DIExpression()) #32, !dbg !2147
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2149
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2142, metadata !DIExpression()) #32, !dbg !2147
  %6 = tail call i32* @__errno_location() #35, !dbg !2150
  %7 = load i32, i32* %6, align 4, !dbg !2150, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %7, metadata !2143, metadata !DIExpression()) #32, !dbg !2147
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2151
  %9 = load i32, i32* %8, align 4, !dbg !2151, !tbaa !1520
  %10 = or i32 %9, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i32 %10, metadata !2144, metadata !DIExpression()) #32, !dbg !2147
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2153
  %12 = load i32, i32* %11, align 8, !dbg !2153, !tbaa !1469
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2154
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2155
  %15 = load i8*, i8** %14, align 8, !dbg !2155, !tbaa !1542
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2156
  %17 = load i8*, i8** %16, align 8, !dbg !2156, !tbaa !1545
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !2157
  %19 = add i64 %18, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %19, metadata !2145, metadata !DIExpression()) #32, !dbg !2147
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !2159
  call void @llvm.dbg.value(metadata i8* %20, metadata !2146, metadata !DIExpression()) #32, !dbg !2147
  %21 = load i32, i32* %11, align 8, !dbg !2160, !tbaa !1469
  %22 = load i8*, i8** %14, align 8, !dbg !2161, !tbaa !1542
  %23 = load i8*, i8** %16, align 8, !dbg !2162, !tbaa !1545
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !2163
  store i32 %7, i32* %6, align 4, !dbg !2164, !tbaa !561
  ret i8* %20, !dbg !2165
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2135 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2134, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %1, metadata !2139, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i64* %2, metadata !2140, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2141, metadata !DIExpression()), !dbg !2166
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2167
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2142, metadata !DIExpression()), !dbg !2166
  %7 = tail call i32* @__errno_location() #35, !dbg !2168
  %8 = load i32, i32* %7, align 4, !dbg !2168, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %8, metadata !2143, metadata !DIExpression()), !dbg !2166
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2169
  %10 = load i32, i32* %9, align 4, !dbg !2169, !tbaa !1520
  %11 = icmp eq i64* %2, null, !dbg !2170
  %12 = zext i1 %11 to i32, !dbg !2170
  %13 = or i32 %10, %12, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %13, metadata !2144, metadata !DIExpression()), !dbg !2166
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2172
  %15 = load i32, i32* %14, align 8, !dbg !2172, !tbaa !1469
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2173
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2174
  %18 = load i8*, i8** %17, align 8, !dbg !2174, !tbaa !1542
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2175
  %20 = load i8*, i8** %19, align 8, !dbg !2175, !tbaa !1545
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2176
  %22 = add i64 %21, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %22, metadata !2145, metadata !DIExpression()), !dbg !2166
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !2178
  call void @llvm.dbg.value(metadata i8* %23, metadata !2146, metadata !DIExpression()), !dbg !2166
  %24 = load i32, i32* %14, align 8, !dbg !2179, !tbaa !1469
  %25 = load i8*, i8** %17, align 8, !dbg !2180, !tbaa !1542
  %26 = load i8*, i8** %19, align 8, !dbg !2181, !tbaa !1545
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2182
  store i32 %8, i32* %7, align 4, !dbg !2183, !tbaa !561
  br i1 %11, label %29, label %28, !dbg !2184

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2185, !tbaa !2187
  br label %29, !dbg !2188

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2189
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2190 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2195, !tbaa !472
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2192, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 1, metadata !2193, metadata !DIExpression()), !dbg !2197
  %2 = load i32, i32* @nslots, align 4, !tbaa !561
  call void @llvm.dbg.value(metadata i32 1, metadata !2193, metadata !DIExpression()), !dbg !2197
  %3 = icmp sgt i32 %2, 1, !dbg !2198
  br i1 %3, label %4, label %6, !dbg !2200

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2198
  br label %10, !dbg !2200

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2201
  %8 = load i8*, i8** %7, align 8, !dbg !2201, !tbaa !2203
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2205
  br i1 %9, label %17, label %16, !dbg !2206

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2193, metadata !DIExpression()), !dbg !2197
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2207
  %13 = load i8*, i8** %12, align 8, !dbg !2207, !tbaa !2203
  tail call void @free(i8* noundef %13) #32, !dbg !2208
  %14 = add nuw nsw i64 %11, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %14, metadata !2193, metadata !DIExpression()), !dbg !2197
  %15 = icmp eq i64 %14, %5, !dbg !2198
  br i1 %15, label %6, label %10, !dbg !2200, !llvm.loop !2210

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !2212
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2214, !tbaa !2215
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2216, !tbaa !2203
  br label %17, !dbg !2217

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2218
  br i1 %18, label %21, label %19, !dbg !2220

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2221
  tail call void @free(i8* noundef %20) #32, !dbg !2223
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2224, !tbaa !472
  br label %21, !dbg !2225

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2226, !tbaa !561
  ret void, !dbg !2227
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2228 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2230, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %1, metadata !2231, metadata !DIExpression()), !dbg !2232
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2233
  ret i8* %3, !dbg !2234
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2235 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2239, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %1, metadata !2240, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 %2, metadata !2241, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2242, metadata !DIExpression()), !dbg !2255
  %6 = tail call i32* @__errno_location() #35, !dbg !2256
  %7 = load i32, i32* %6, align 4, !dbg !2256, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %7, metadata !2243, metadata !DIExpression()), !dbg !2255
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2257, !tbaa !472
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2244, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2245, metadata !DIExpression()), !dbg !2255
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2258
  br i1 %9, label %10, label %11, !dbg !2258

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2260
  unreachable, !dbg !2260

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2261, !tbaa !561
  %13 = icmp sgt i32 %12, %0, !dbg !2262
  br i1 %13, label %36, label %14, !dbg !2263

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2264
  call void @llvm.dbg.value(metadata i1 %15, metadata !2246, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2265
  %16 = bitcast i64* %5 to i8*, !dbg !2266
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2266
  %17 = sext i32 %12 to i64, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %17, metadata !2249, metadata !DIExpression()), !dbg !2265
  store i64 %17, i64* %5, align 8, !dbg !2268, !tbaa !2187
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2269
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2269
  %20 = add nuw nsw i32 %0, 1, !dbg !2270
  %21 = sub i32 %20, %12, !dbg !2271
  %22 = sext i32 %21 to i64, !dbg !2272
  call void @llvm.dbg.value(metadata i64* %5, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2265
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !2273
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2273
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2244, metadata !DIExpression()), !dbg !2255
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2274, !tbaa !472
  br i1 %15, label %25, label %26, !dbg !2275

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2276, !tbaa.struct !2278
  br label %26, !dbg !2279

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2280, !tbaa !561
  %28 = sext i32 %27 to i64, !dbg !2281
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2281
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2282
  %31 = load i64, i64* %5, align 8, !dbg !2283, !tbaa !2187
  call void @llvm.dbg.value(metadata i64 %31, metadata !2249, metadata !DIExpression()), !dbg !2265
  %32 = sub nsw i64 %31, %28, !dbg !2284
  %33 = shl i64 %32, 4, !dbg !2285
  call void @llvm.dbg.value(metadata i8* %30, metadata !1672, metadata !DIExpression()) #32, !dbg !2286
  call void @llvm.dbg.value(metadata i32 0, metadata !1675, metadata !DIExpression()) #32, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %33, metadata !1676, metadata !DIExpression()) #32, !dbg !2286
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !2288
  %34 = load i64, i64* %5, align 8, !dbg !2289, !tbaa !2187
  call void @llvm.dbg.value(metadata i64 %34, metadata !2249, metadata !DIExpression()), !dbg !2265
  %35 = trunc i64 %34 to i32, !dbg !2289
  store i32 %35, i32* @nslots, align 4, !dbg !2290, !tbaa !561
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2291
  br label %36, !dbg !2292

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2255
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2244, metadata !DIExpression()), !dbg !2255
  %38 = zext i32 %0 to i64, !dbg !2293
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2294
  %40 = load i64, i64* %39, align 8, !dbg !2294, !tbaa !2215
  call void @llvm.dbg.value(metadata i64 %40, metadata !2250, metadata !DIExpression()), !dbg !2295
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2296
  %42 = load i8*, i8** %41, align 8, !dbg !2296, !tbaa !2203
  call void @llvm.dbg.value(metadata i8* %42, metadata !2252, metadata !DIExpression()), !dbg !2295
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2297
  %44 = load i32, i32* %43, align 4, !dbg !2297, !tbaa !1520
  %45 = or i32 %44, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i32 %45, metadata !2253, metadata !DIExpression()), !dbg !2295
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2299
  %47 = load i32, i32* %46, align 8, !dbg !2299, !tbaa !1469
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2300
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2301
  %50 = load i8*, i8** %49, align 8, !dbg !2301, !tbaa !1542
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2302
  %52 = load i8*, i8** %51, align 8, !dbg !2302, !tbaa !1545
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %53, metadata !2254, metadata !DIExpression()), !dbg !2295
  %54 = icmp ugt i64 %40, %53, !dbg !2304
  br i1 %54, label %65, label %55, !dbg !2306

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %56, metadata !2250, metadata !DIExpression()), !dbg !2295
  store i64 %56, i64* %39, align 8, !dbg !2309, !tbaa !2215
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2310
  br i1 %57, label %59, label %58, !dbg !2312

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !2313
  br label %59, !dbg !2313

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !2314
  call void @llvm.dbg.value(metadata i8* %60, metadata !2252, metadata !DIExpression()), !dbg !2295
  store i8* %60, i8** %41, align 8, !dbg !2315, !tbaa !2203
  %61 = load i32, i32* %46, align 8, !dbg !2316, !tbaa !1469
  %62 = load i8*, i8** %49, align 8, !dbg !2317, !tbaa !1542
  %63 = load i8*, i8** %51, align 8, !dbg !2318, !tbaa !1545
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2319
  br label %65, !dbg !2320

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2295
  call void @llvm.dbg.value(metadata i8* %66, metadata !2252, metadata !DIExpression()), !dbg !2295
  store i32 %7, i32* %6, align 4, !dbg !2321, !tbaa !561
  ret i8* %66, !dbg !2322
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2323 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %1, metadata !2328, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %2, metadata !2329, metadata !DIExpression()), !dbg !2330
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2331
  ret i8* %4, !dbg !2332
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2333 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 0, metadata !2230, metadata !DIExpression()) #32, !dbg !2337
  call void @llvm.dbg.value(metadata i8* %0, metadata !2231, metadata !DIExpression()) #32, !dbg !2337
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2339
  ret i8* %2, !dbg !2340
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2341 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %1, metadata !2346, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 0, metadata !2327, metadata !DIExpression()) #32, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %0, metadata !2328, metadata !DIExpression()) #32, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %1, metadata !2329, metadata !DIExpression()) #32, !dbg !2348
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2350
  ret i8* %3, !dbg !2351
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2352 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2356, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 %1, metadata !2357, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8* %2, metadata !2358, metadata !DIExpression()), !dbg !2360
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2361
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2361
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2359, metadata !DIExpression()), !dbg !2362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %1, metadata !2367, metadata !DIExpression()) #32, !dbg !2373
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2372, metadata !DIExpression()) #32, !dbg !2375
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2375, !alias.scope !2363
  %6 = icmp eq i32 %1, 10, !dbg !2376
  br i1 %6, label %7, label %8, !dbg !2378

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2379, !noalias !2363
  unreachable, !dbg !2379

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2380
  store i32 %1, i32* %9, align 8, !dbg !2381, !tbaa !1469, !alias.scope !2363
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2382
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2383
  ret i8* %10, !dbg !2384
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2385 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2389, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %2, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %3, metadata !2392, metadata !DIExpression()), !dbg !2394
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2395
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2395
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2393, metadata !DIExpression()), !dbg !2396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397), !dbg !2400
  call void @llvm.dbg.value(metadata i32 %1, metadata !2367, metadata !DIExpression()) #32, !dbg !2401
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2372, metadata !DIExpression()) #32, !dbg !2403
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2403, !alias.scope !2397
  %7 = icmp eq i32 %1, 10, !dbg !2404
  br i1 %7, label %8, label %9, !dbg !2405

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2406, !noalias !2397
  unreachable, !dbg !2406

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2407
  store i32 %1, i32* %10, align 8, !dbg !2408, !tbaa !1469, !alias.scope !2397
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2409
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2410
  ret i8* %11, !dbg !2411
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2412 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2416, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8* %1, metadata !2417, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i32 0, metadata !2356, metadata !DIExpression()) #32, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %0, metadata !2357, metadata !DIExpression()) #32, !dbg !2419
  call void @llvm.dbg.value(metadata i8* %1, metadata !2358, metadata !DIExpression()) #32, !dbg !2419
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2421
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2421
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2359, metadata !DIExpression()) #32, !dbg !2422
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423) #32, !dbg !2426
  call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()) #32, !dbg !2427
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2372, metadata !DIExpression()) #32, !dbg !2429
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2429, !alias.scope !2423
  %5 = icmp eq i32 %0, 10, !dbg !2430
  br i1 %5, label %6, label %7, !dbg !2431

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2432, !noalias !2423
  unreachable, !dbg !2432

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2433
  store i32 %0, i32* %8, align 8, !dbg !2434, !tbaa !1469, !alias.scope !2423
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2435
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2436
  ret i8* %9, !dbg !2437
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2438 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2442, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8* %1, metadata !2443, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %2, metadata !2444, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 0, metadata !2389, metadata !DIExpression()) #32, !dbg !2446
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()) #32, !dbg !2446
  call void @llvm.dbg.value(metadata i8* %1, metadata !2391, metadata !DIExpression()) #32, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %2, metadata !2392, metadata !DIExpression()) #32, !dbg !2446
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2448
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2448
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2393, metadata !DIExpression()) #32, !dbg !2449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2450) #32, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()) #32, !dbg !2454
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2372, metadata !DIExpression()) #32, !dbg !2456
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2456, !alias.scope !2450
  %6 = icmp eq i32 %0, 10, !dbg !2457
  br i1 %6, label %7, label %8, !dbg !2458

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2459, !noalias !2450
  unreachable, !dbg !2459

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2460
  store i32 %0, i32* %9, align 8, !dbg !2461, !tbaa !1469, !alias.scope !2450
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2462
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2463
  ret i8* %10, !dbg !2464
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2465 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2469, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %1, metadata !2470, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 %2, metadata !2471, metadata !DIExpression()), !dbg !2473
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2474
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2474
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2472, metadata !DIExpression()), !dbg !2475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2476, !tbaa.struct !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1487, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 %2, metadata !1488, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 1, metadata !1489, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8 %2, metadata !1490, metadata !DIExpression()), !dbg !2478
  %6 = lshr i8 %2, 5, !dbg !2480
  %7 = zext i8 %6 to i64, !dbg !2480
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2481
  call void @llvm.dbg.value(metadata i32* %8, metadata !1491, metadata !DIExpression()), !dbg !2478
  %9 = and i8 %2, 31, !dbg !2482
  %10 = zext i8 %9 to i32, !dbg !2482
  call void @llvm.dbg.value(metadata i32 %10, metadata !1493, metadata !DIExpression()), !dbg !2478
  %11 = load i32, i32* %8, align 4, !dbg !2483, !tbaa !561
  %12 = lshr i32 %11, %10, !dbg !2484
  %13 = and i32 %12, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %13, metadata !1494, metadata !DIExpression()), !dbg !2478
  %14 = xor i32 %13, 1, !dbg !2486
  %15 = shl i32 %14, %10, !dbg !2487
  %16 = xor i32 %15, %11, !dbg !2488
  store i32 %16, i32* %8, align 4, !dbg !2488, !tbaa !561
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2489
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2490
  ret i8* %17, !dbg !2491
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2492 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 %1, metadata !2497, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8* %0, metadata !2469, metadata !DIExpression()) #32, !dbg !2499
  call void @llvm.dbg.value(metadata i64 -1, metadata !2470, metadata !DIExpression()) #32, !dbg !2499
  call void @llvm.dbg.value(metadata i8 %1, metadata !2471, metadata !DIExpression()) #32, !dbg !2499
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2501
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2501
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2472, metadata !DIExpression()) #32, !dbg !2502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2503, !tbaa.struct !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1487, metadata !DIExpression()) #32, !dbg !2504
  call void @llvm.dbg.value(metadata i8 %1, metadata !1488, metadata !DIExpression()) #32, !dbg !2504
  call void @llvm.dbg.value(metadata i32 1, metadata !1489, metadata !DIExpression()) #32, !dbg !2504
  call void @llvm.dbg.value(metadata i8 %1, metadata !1490, metadata !DIExpression()) #32, !dbg !2504
  %5 = lshr i8 %1, 5, !dbg !2506
  %6 = zext i8 %5 to i64, !dbg !2506
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2507
  call void @llvm.dbg.value(metadata i32* %7, metadata !1491, metadata !DIExpression()) #32, !dbg !2504
  %8 = and i8 %1, 31, !dbg !2508
  %9 = zext i8 %8 to i32, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %9, metadata !1493, metadata !DIExpression()) #32, !dbg !2504
  %10 = load i32, i32* %7, align 4, !dbg !2509, !tbaa !561
  %11 = lshr i32 %10, %9, !dbg !2510
  %12 = and i32 %11, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %12, metadata !1494, metadata !DIExpression()) #32, !dbg !2504
  %13 = xor i32 %12, 1, !dbg !2512
  %14 = shl i32 %13, %9, !dbg !2513
  %15 = xor i32 %14, %10, !dbg !2514
  store i32 %15, i32* %7, align 4, !dbg !2514, !tbaa !561
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2515
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2516
  ret i8* %16, !dbg !2517
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2518 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2520, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8* %0, metadata !2496, metadata !DIExpression()) #32, !dbg !2522
  call void @llvm.dbg.value(metadata i8 58, metadata !2497, metadata !DIExpression()) #32, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %0, metadata !2469, metadata !DIExpression()) #32, !dbg !2524
  call void @llvm.dbg.value(metadata i64 -1, metadata !2470, metadata !DIExpression()) #32, !dbg !2524
  call void @llvm.dbg.value(metadata i8 58, metadata !2471, metadata !DIExpression()) #32, !dbg !2524
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2526
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2526
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2472, metadata !DIExpression()) #32, !dbg !2527
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2528, !tbaa.struct !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1487, metadata !DIExpression()) #32, !dbg !2529
  call void @llvm.dbg.value(metadata i8 58, metadata !1488, metadata !DIExpression()) #32, !dbg !2529
  call void @llvm.dbg.value(metadata i32 1, metadata !1489, metadata !DIExpression()) #32, !dbg !2529
  call void @llvm.dbg.value(metadata i8 58, metadata !1490, metadata !DIExpression()) #32, !dbg !2529
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2531
  call void @llvm.dbg.value(metadata i32* %4, metadata !1491, metadata !DIExpression()) #32, !dbg !2529
  call void @llvm.dbg.value(metadata i32 26, metadata !1493, metadata !DIExpression()) #32, !dbg !2529
  %5 = load i32, i32* %4, align 4, !dbg !2532, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %5, metadata !1494, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2529
  %6 = or i32 %5, 67108864, !dbg !2533
  store i32 %6, i32* %4, align 4, !dbg !2533, !tbaa !561
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2534
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2535
  ret i8* %7, !dbg !2536
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2537 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %1, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8* %0, metadata !2469, metadata !DIExpression()) #32, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %1, metadata !2470, metadata !DIExpression()) #32, !dbg !2542
  call void @llvm.dbg.value(metadata i8 58, metadata !2471, metadata !DIExpression()) #32, !dbg !2542
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2544
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2544
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2472, metadata !DIExpression()) #32, !dbg !2545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2546, !tbaa.struct !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1487, metadata !DIExpression()) #32, !dbg !2547
  call void @llvm.dbg.value(metadata i8 58, metadata !1488, metadata !DIExpression()) #32, !dbg !2547
  call void @llvm.dbg.value(metadata i32 1, metadata !1489, metadata !DIExpression()) #32, !dbg !2547
  call void @llvm.dbg.value(metadata i8 58, metadata !1490, metadata !DIExpression()) #32, !dbg !2547
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2549
  call void @llvm.dbg.value(metadata i32* %5, metadata !1491, metadata !DIExpression()) #32, !dbg !2547
  call void @llvm.dbg.value(metadata i32 26, metadata !1493, metadata !DIExpression()) #32, !dbg !2547
  %6 = load i32, i32* %5, align 4, !dbg !2550, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %6, metadata !1494, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2547
  %7 = or i32 %6, 67108864, !dbg !2551
  store i32 %7, i32* %5, align 4, !dbg !2551, !tbaa !561
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2553
  ret i8* %8, !dbg !2554
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2555 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2557, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %1, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %2, metadata !2559, metadata !DIExpression()), !dbg !2561
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2562
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2562
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 %1, metadata !2367, metadata !DIExpression()) #32, !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2372, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2564
  %6 = icmp eq i32 %1, 10, !dbg !2566
  br i1 %6, label %7, label %8, !dbg !2567

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2568, !noalias !2569
  unreachable, !dbg !2568

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2372, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2564
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2572
  store i32 %1, i32* %9, align 8, !dbg !2572, !tbaa.struct !2477
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2572
  %11 = bitcast i32* %10 to i8*, !dbg !2572
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1487, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 58, metadata !1488, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 1, metadata !1489, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 58, metadata !1490, metadata !DIExpression()), !dbg !2573
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2575
  call void @llvm.dbg.value(metadata i32* %12, metadata !1491, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 26, metadata !1493, metadata !DIExpression()), !dbg !2573
  %13 = load i32, i32* %12, align 4, !dbg !2576, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %13, metadata !1494, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2573
  %14 = or i32 %13, 67108864, !dbg !2577
  store i32 %14, i32* %12, align 4, !dbg !2577, !tbaa !561
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2578
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2579
  ret i8* %15, !dbg !2580
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2581 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2585, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %1, metadata !2586, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %2, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %3, metadata !2588, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 %0, metadata !2590, metadata !DIExpression()) #32, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %1, metadata !2595, metadata !DIExpression()) #32, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()) #32, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %3, metadata !2597, metadata !DIExpression()) #32, !dbg !2600
  call void @llvm.dbg.value(metadata i64 -1, metadata !2598, metadata !DIExpression()) #32, !dbg !2600
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2602
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2599, metadata !DIExpression()) #32, !dbg !2603
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2604, !tbaa.struct !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1527, metadata !DIExpression()) #32, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %1, metadata !1528, metadata !DIExpression()) #32, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %2, metadata !1529, metadata !DIExpression()) #32, !dbg !2605
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1527, metadata !DIExpression()) #32, !dbg !2605
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2607
  store i32 10, i32* %7, align 8, !dbg !2608, !tbaa !1469
  %8 = icmp ne i8* %1, null, !dbg !2609
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2610
  br i1 %10, label %12, label %11, !dbg !2610

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2611
  unreachable, !dbg !2611

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2612
  store i8* %1, i8** %13, align 8, !dbg !2613, !tbaa !1542
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2614
  store i8* %2, i8** %14, align 8, !dbg !2615, !tbaa !1545
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2616
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2617
  ret i8* %15, !dbg !2618
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2591 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2590, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2595, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %3, metadata !2597, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i64 %4, metadata !2598, metadata !DIExpression()), !dbg !2619
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2620
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2620
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2599, metadata !DIExpression()), !dbg !2621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2622, !tbaa.struct !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1527, metadata !DIExpression()) #32, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %1, metadata !1528, metadata !DIExpression()) #32, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %2, metadata !1529, metadata !DIExpression()) #32, !dbg !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1527, metadata !DIExpression()) #32, !dbg !2623
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2625
  store i32 10, i32* %8, align 8, !dbg !2626, !tbaa !1469
  %9 = icmp ne i8* %1, null, !dbg !2627
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2628
  br i1 %11, label %13, label %12, !dbg !2628

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2629
  unreachable, !dbg !2629

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2630
  store i8* %1, i8** %14, align 8, !dbg !2631, !tbaa !1542
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2632
  store i8* %2, i8** %15, align 8, !dbg !2633, !tbaa !1545
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2634
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2635
  ret i8* %16, !dbg !2636
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2637 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %1, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %2, metadata !2643, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 0, metadata !2585, metadata !DIExpression()) #32, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %0, metadata !2586, metadata !DIExpression()) #32, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %1, metadata !2587, metadata !DIExpression()) #32, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %2, metadata !2588, metadata !DIExpression()) #32, !dbg !2645
  call void @llvm.dbg.value(metadata i32 0, metadata !2590, metadata !DIExpression()) #32, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %0, metadata !2595, metadata !DIExpression()) #32, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %1, metadata !2596, metadata !DIExpression()) #32, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %2, metadata !2597, metadata !DIExpression()) #32, !dbg !2647
  call void @llvm.dbg.value(metadata i64 -1, metadata !2598, metadata !DIExpression()) #32, !dbg !2647
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2649
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2649
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2599, metadata !DIExpression()) #32, !dbg !2650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2651, !tbaa.struct !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1527, metadata !DIExpression()) #32, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %0, metadata !1528, metadata !DIExpression()) #32, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %1, metadata !1529, metadata !DIExpression()) #32, !dbg !2652
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1527, metadata !DIExpression()) #32, !dbg !2652
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2654
  store i32 10, i32* %6, align 8, !dbg !2655, !tbaa !1469
  %7 = icmp ne i8* %0, null, !dbg !2656
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2657
  br i1 %9, label %11, label %10, !dbg !2657

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2658
  unreachable, !dbg !2658

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2659
  store i8* %0, i8** %12, align 8, !dbg !2660, !tbaa !1542
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2661
  store i8* %1, i8** %13, align 8, !dbg !2662, !tbaa !1545
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2663
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2664
  ret i8* %14, !dbg !2665
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2666 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %1, metadata !2671, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %2, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 %3, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2590, metadata !DIExpression()) #32, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %0, metadata !2595, metadata !DIExpression()) #32, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %1, metadata !2596, metadata !DIExpression()) #32, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %2, metadata !2597, metadata !DIExpression()) #32, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %3, metadata !2598, metadata !DIExpression()) #32, !dbg !2675
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2677
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2677
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2599, metadata !DIExpression()) #32, !dbg !2678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2679, !tbaa.struct !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1527, metadata !DIExpression()) #32, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %0, metadata !1528, metadata !DIExpression()) #32, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %1, metadata !1529, metadata !DIExpression()) #32, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1527, metadata !DIExpression()) #32, !dbg !2680
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2682
  store i32 10, i32* %7, align 8, !dbg !2683, !tbaa !1469
  %8 = icmp ne i8* %0, null, !dbg !2684
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2685
  br i1 %10, label %12, label %11, !dbg !2685

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2686
  unreachable, !dbg !2686

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2687
  store i8* %0, i8** %13, align 8, !dbg !2688, !tbaa !1542
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2689
  store i8* %1, i8** %14, align 8, !dbg !2690, !tbaa !1545
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2691
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2692
  ret i8* %15, !dbg !2693
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2694 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %1, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %2, metadata !2700, metadata !DIExpression()), !dbg !2701
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2702
  ret i8* %4, !dbg !2703
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2704 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 0, metadata !2698, metadata !DIExpression()) #32, !dbg !2711
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()) #32, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %1, metadata !2700, metadata !DIExpression()) #32, !dbg !2711
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2713
  ret i8* %3, !dbg !2714
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2715 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2719, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8* %1, metadata !2720, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()) #32, !dbg !2722
  call void @llvm.dbg.value(metadata i8* %1, metadata !2699, metadata !DIExpression()) #32, !dbg !2722
  call void @llvm.dbg.value(metadata i64 -1, metadata !2700, metadata !DIExpression()) #32, !dbg !2722
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2724
  ret i8* %3, !dbg !2725
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2726 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 0, metadata !2719, metadata !DIExpression()) #32, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %0, metadata !2720, metadata !DIExpression()) #32, !dbg !2732
  call void @llvm.dbg.value(metadata i32 0, metadata !2698, metadata !DIExpression()) #32, !dbg !2734
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()) #32, !dbg !2734
  call void @llvm.dbg.value(metadata i64 -1, metadata !2700, metadata !DIExpression()) #32, !dbg !2734
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2736
  ret i8* %2, !dbg !2737
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2738 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2777, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %1, metadata !2778, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %2, metadata !2779, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %3, metadata !2780, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8** %4, metadata !2781, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %5, metadata !2782, metadata !DIExpression()), !dbg !2783
  %7 = icmp eq i8* %1, null, !dbg !2784
  br i1 %7, label %10, label %8, !dbg !2786

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2787
  br label %12, !dbg !2787

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.97, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2788
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.99, i64 0, i64 0), i32 noundef 5) #32, !dbg !2789
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2789
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2790
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.101, i64 0, i64 0), i32 noundef 5) #32, !dbg !2791
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.102, i64 0, i64 0)) #32, !dbg !2791
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2792
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
  ], !dbg !2793

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.103, i64 0, i64 0), i32 noundef 5) #32, !dbg !2794
  %21 = load i8*, i8** %4, align 8, !dbg !2794, !tbaa !472
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2794
  br label %147, !dbg !2796

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.104, i64 0, i64 0), i32 noundef 5) #32, !dbg !2797
  %25 = load i8*, i8** %4, align 8, !dbg !2797, !tbaa !472
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2797
  %27 = load i8*, i8** %26, align 8, !dbg !2797, !tbaa !472
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2797
  br label %147, !dbg !2798

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.105, i64 0, i64 0), i32 noundef 5) #32, !dbg !2799
  %31 = load i8*, i8** %4, align 8, !dbg !2799, !tbaa !472
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2799
  %33 = load i8*, i8** %32, align 8, !dbg !2799, !tbaa !472
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2799
  %35 = load i8*, i8** %34, align 8, !dbg !2799, !tbaa !472
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2799
  br label %147, !dbg !2800

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.106, i64 0, i64 0), i32 noundef 5) #32, !dbg !2801
  %39 = load i8*, i8** %4, align 8, !dbg !2801, !tbaa !472
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2801
  %41 = load i8*, i8** %40, align 8, !dbg !2801, !tbaa !472
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2801
  %43 = load i8*, i8** %42, align 8, !dbg !2801, !tbaa !472
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2801
  %45 = load i8*, i8** %44, align 8, !dbg !2801, !tbaa !472
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2801
  br label %147, !dbg !2802

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.107, i64 0, i64 0), i32 noundef 5) #32, !dbg !2803
  %49 = load i8*, i8** %4, align 8, !dbg !2803, !tbaa !472
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2803
  %51 = load i8*, i8** %50, align 8, !dbg !2803, !tbaa !472
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2803
  %53 = load i8*, i8** %52, align 8, !dbg !2803, !tbaa !472
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2803
  %55 = load i8*, i8** %54, align 8, !dbg !2803, !tbaa !472
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2803
  %57 = load i8*, i8** %56, align 8, !dbg !2803, !tbaa !472
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2803
  br label %147, !dbg !2804

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.108, i64 0, i64 0), i32 noundef 5) #32, !dbg !2805
  %61 = load i8*, i8** %4, align 8, !dbg !2805, !tbaa !472
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2805
  %63 = load i8*, i8** %62, align 8, !dbg !2805, !tbaa !472
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2805
  %65 = load i8*, i8** %64, align 8, !dbg !2805, !tbaa !472
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2805
  %67 = load i8*, i8** %66, align 8, !dbg !2805, !tbaa !472
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2805
  %69 = load i8*, i8** %68, align 8, !dbg !2805, !tbaa !472
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2805
  %71 = load i8*, i8** %70, align 8, !dbg !2805, !tbaa !472
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2805
  br label %147, !dbg !2806

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.109, i64 0, i64 0), i32 noundef 5) #32, !dbg !2807
  %75 = load i8*, i8** %4, align 8, !dbg !2807, !tbaa !472
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2807
  %77 = load i8*, i8** %76, align 8, !dbg !2807, !tbaa !472
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2807
  %79 = load i8*, i8** %78, align 8, !dbg !2807, !tbaa !472
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2807
  %81 = load i8*, i8** %80, align 8, !dbg !2807, !tbaa !472
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2807
  %83 = load i8*, i8** %82, align 8, !dbg !2807, !tbaa !472
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2807
  %85 = load i8*, i8** %84, align 8, !dbg !2807, !tbaa !472
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2807
  %87 = load i8*, i8** %86, align 8, !dbg !2807, !tbaa !472
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2807
  br label %147, !dbg !2808

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.110, i64 0, i64 0), i32 noundef 5) #32, !dbg !2809
  %91 = load i8*, i8** %4, align 8, !dbg !2809, !tbaa !472
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2809
  %93 = load i8*, i8** %92, align 8, !dbg !2809, !tbaa !472
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2809
  %95 = load i8*, i8** %94, align 8, !dbg !2809, !tbaa !472
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2809
  %97 = load i8*, i8** %96, align 8, !dbg !2809, !tbaa !472
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2809
  %99 = load i8*, i8** %98, align 8, !dbg !2809, !tbaa !472
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2809
  %101 = load i8*, i8** %100, align 8, !dbg !2809, !tbaa !472
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2809
  %103 = load i8*, i8** %102, align 8, !dbg !2809, !tbaa !472
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2809
  %105 = load i8*, i8** %104, align 8, !dbg !2809, !tbaa !472
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2809
  br label %147, !dbg !2810

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.111, i64 0, i64 0), i32 noundef 5) #32, !dbg !2811
  %109 = load i8*, i8** %4, align 8, !dbg !2811, !tbaa !472
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2811
  %111 = load i8*, i8** %110, align 8, !dbg !2811, !tbaa !472
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2811
  %113 = load i8*, i8** %112, align 8, !dbg !2811, !tbaa !472
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2811
  %115 = load i8*, i8** %114, align 8, !dbg !2811, !tbaa !472
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2811
  %117 = load i8*, i8** %116, align 8, !dbg !2811, !tbaa !472
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2811
  %119 = load i8*, i8** %118, align 8, !dbg !2811, !tbaa !472
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2811
  %121 = load i8*, i8** %120, align 8, !dbg !2811, !tbaa !472
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2811
  %123 = load i8*, i8** %122, align 8, !dbg !2811, !tbaa !472
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2811
  %125 = load i8*, i8** %124, align 8, !dbg !2811, !tbaa !472
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2811
  br label %147, !dbg !2812

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.112, i64 0, i64 0), i32 noundef 5) #32, !dbg !2813
  %129 = load i8*, i8** %4, align 8, !dbg !2813, !tbaa !472
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2813
  %131 = load i8*, i8** %130, align 8, !dbg !2813, !tbaa !472
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2813
  %133 = load i8*, i8** %132, align 8, !dbg !2813, !tbaa !472
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2813
  %135 = load i8*, i8** %134, align 8, !dbg !2813, !tbaa !472
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2813
  %137 = load i8*, i8** %136, align 8, !dbg !2813, !tbaa !472
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2813
  %139 = load i8*, i8** %138, align 8, !dbg !2813, !tbaa !472
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2813
  %141 = load i8*, i8** %140, align 8, !dbg !2813, !tbaa !472
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2813
  %143 = load i8*, i8** %142, align 8, !dbg !2813, !tbaa !472
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2813
  %145 = load i8*, i8** %144, align 8, !dbg !2813, !tbaa !472
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2813
  br label %147, !dbg !2814

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2816 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2820, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %1, metadata !2821, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %2, metadata !2822, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %3, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8** %4, metadata !2824, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 0, metadata !2825, metadata !DIExpression()), !dbg !2826
  br label %6, !dbg !2827

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2829
  call void @llvm.dbg.value(metadata i64 %7, metadata !2825, metadata !DIExpression()), !dbg !2826
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2830
  %9 = load i8*, i8** %8, align 8, !dbg !2830, !tbaa !472
  %10 = icmp eq i8* %9, null, !dbg !2832
  %11 = add i64 %7, 1, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %11, metadata !2825, metadata !DIExpression()), !dbg !2826
  br i1 %10, label %12, label %6, !dbg !2832, !llvm.loop !2834

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2836
  ret void, !dbg !2837
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2838 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2853, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %1, metadata !2854, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %2, metadata !2855, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %3, metadata !2856, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2857, metadata !DIExpression()), !dbg !2862
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2863
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2863
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2859, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !2861
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !2861
  %11 = load i32, i32* %8, align 8, !dbg !2865
  %12 = icmp sgt i32 %11, -1, !dbg !2865
  br i1 %12, label %20, label %13, !dbg !2865

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2865
  store i32 %14, i32* %8, align 8, !dbg !2865
  %15 = icmp ult i32 %11, -7, !dbg !2865
  br i1 %15, label %16, label %20, !dbg !2865

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2865
  %18 = sext i32 %11 to i64, !dbg !2865
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2865
  br label %24, !dbg !2865

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2865
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2865
  store i8* %23, i8** %10, align 8, !dbg !2865
  br label %24, !dbg !2865

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2865
  %28 = load i8*, i8** %27, align 8, !dbg !2865
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2868
  store i8* %28, i8** %29, align 8, !dbg !2869, !tbaa !472
  %30 = icmp eq i8* %28, null, !dbg !2870
  br i1 %30, label %210, label %31, !dbg !2871

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 1, metadata !2858, metadata !DIExpression()), !dbg !2861
  %32 = icmp sgt i32 %25, -1, !dbg !2865
  br i1 %32, label %40, label %33, !dbg !2865

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2865
  store i32 %34, i32* %8, align 8, !dbg !2865
  %35 = icmp ult i32 %25, -7, !dbg !2865
  br i1 %35, label %36, label %40, !dbg !2865

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2865
  %38 = sext i32 %25 to i64, !dbg !2865
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2865
  br label %44, !dbg !2865

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2865
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2865
  store i8* %43, i8** %10, align 8, !dbg !2865
  br label %44, !dbg !2865

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2865
  %48 = load i8*, i8** %47, align 8, !dbg !2865
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2868
  store i8* %48, i8** %49, align 8, !dbg !2869, !tbaa !472
  %50 = icmp eq i8* %48, null, !dbg !2870
  br i1 %50, label %210, label %51, !dbg !2871

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 2, metadata !2858, metadata !DIExpression()), !dbg !2861
  %52 = icmp sgt i32 %45, -1, !dbg !2865
  br i1 %52, label %60, label %53, !dbg !2865

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2865
  store i32 %54, i32* %8, align 8, !dbg !2865
  %55 = icmp ult i32 %45, -7, !dbg !2865
  br i1 %55, label %56, label %60, !dbg !2865

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2865
  %58 = sext i32 %45 to i64, !dbg !2865
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2865
  br label %64, !dbg !2865

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2865
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2865
  store i8* %63, i8** %10, align 8, !dbg !2865
  br label %64, !dbg !2865

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2865
  %68 = load i8*, i8** %67, align 8, !dbg !2865
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2868
  store i8* %68, i8** %69, align 8, !dbg !2869, !tbaa !472
  %70 = icmp eq i8* %68, null, !dbg !2870
  br i1 %70, label %210, label %71, !dbg !2871

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 3, metadata !2858, metadata !DIExpression()), !dbg !2861
  %72 = icmp sgt i32 %65, -1, !dbg !2865
  br i1 %72, label %80, label %73, !dbg !2865

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2865
  store i32 %74, i32* %8, align 8, !dbg !2865
  %75 = icmp ult i32 %65, -7, !dbg !2865
  br i1 %75, label %76, label %80, !dbg !2865

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2865
  %78 = sext i32 %65 to i64, !dbg !2865
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2865
  br label %84, !dbg !2865

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2865
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2865
  store i8* %83, i8** %10, align 8, !dbg !2865
  br label %84, !dbg !2865

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2865
  %88 = load i8*, i8** %87, align 8, !dbg !2865
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2868
  store i8* %88, i8** %89, align 8, !dbg !2869, !tbaa !472
  %90 = icmp eq i8* %88, null, !dbg !2870
  br i1 %90, label %210, label %91, !dbg !2871

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 4, metadata !2858, metadata !DIExpression()), !dbg !2861
  %92 = icmp sgt i32 %85, -1, !dbg !2865
  br i1 %92, label %100, label %93, !dbg !2865

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2865
  store i32 %94, i32* %8, align 8, !dbg !2865
  %95 = icmp ult i32 %85, -7, !dbg !2865
  br i1 %95, label %96, label %100, !dbg !2865

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2865
  %98 = sext i32 %85 to i64, !dbg !2865
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2865
  br label %104, !dbg !2865

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2865
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2865
  store i8* %103, i8** %10, align 8, !dbg !2865
  br label %104, !dbg !2865

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2865
  %108 = load i8*, i8** %107, align 8, !dbg !2865
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2868
  store i8* %108, i8** %109, align 8, !dbg !2869, !tbaa !472
  %110 = icmp eq i8* %108, null, !dbg !2870
  br i1 %110, label %210, label %111, !dbg !2871

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 5, metadata !2858, metadata !DIExpression()), !dbg !2861
  %112 = icmp sgt i32 %105, -1, !dbg !2865
  br i1 %112, label %120, label %113, !dbg !2865

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2865
  store i32 %114, i32* %8, align 8, !dbg !2865
  %115 = icmp ult i32 %105, -7, !dbg !2865
  br i1 %115, label %116, label %120, !dbg !2865

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2865
  %118 = sext i32 %105 to i64, !dbg !2865
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2865
  br label %124, !dbg !2865

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2865
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2865
  store i8* %123, i8** %10, align 8, !dbg !2865
  br label %124, !dbg !2865

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2865
  %128 = load i8*, i8** %127, align 8, !dbg !2865
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2868
  store i8* %128, i8** %129, align 8, !dbg !2869, !tbaa !472
  %130 = icmp eq i8* %128, null, !dbg !2870
  br i1 %130, label %210, label %131, !dbg !2871

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 6, metadata !2858, metadata !DIExpression()), !dbg !2861
  %132 = icmp sgt i32 %125, -1, !dbg !2865
  br i1 %132, label %140, label %133, !dbg !2865

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2865
  store i32 %134, i32* %8, align 8, !dbg !2865
  %135 = icmp ult i32 %125, -7, !dbg !2865
  br i1 %135, label %136, label %140, !dbg !2865

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2865
  %138 = sext i32 %125 to i64, !dbg !2865
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2865
  br label %144, !dbg !2865

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2865
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2865
  store i8* %143, i8** %10, align 8, !dbg !2865
  br label %144, !dbg !2865

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2865
  %148 = load i8*, i8** %147, align 8, !dbg !2865
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2868
  store i8* %148, i8** %149, align 8, !dbg !2869, !tbaa !472
  %150 = icmp eq i8* %148, null, !dbg !2870
  br i1 %150, label %210, label %151, !dbg !2871

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 7, metadata !2858, metadata !DIExpression()), !dbg !2861
  %152 = icmp sgt i32 %145, -1, !dbg !2865
  br i1 %152, label %160, label %153, !dbg !2865

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2865
  store i32 %154, i32* %8, align 8, !dbg !2865
  %155 = icmp ult i32 %145, -7, !dbg !2865
  br i1 %155, label %156, label %160, !dbg !2865

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2865
  %158 = sext i32 %145 to i64, !dbg !2865
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2865
  br label %164, !dbg !2865

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2865
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2865
  store i8* %163, i8** %10, align 8, !dbg !2865
  br label %164, !dbg !2865

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2865
  %168 = load i8*, i8** %167, align 8, !dbg !2865
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2868
  store i8* %168, i8** %169, align 8, !dbg !2869, !tbaa !472
  %170 = icmp eq i8* %168, null, !dbg !2870
  br i1 %170, label %210, label %171, !dbg !2871

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 8, metadata !2858, metadata !DIExpression()), !dbg !2861
  %172 = icmp sgt i32 %165, -1, !dbg !2865
  br i1 %172, label %180, label %173, !dbg !2865

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2865
  store i32 %174, i32* %8, align 8, !dbg !2865
  %175 = icmp ult i32 %165, -7, !dbg !2865
  br i1 %175, label %176, label %180, !dbg !2865

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2865
  %178 = sext i32 %165 to i64, !dbg !2865
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2865
  br label %184, !dbg !2865

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2865
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2865
  store i8* %183, i8** %10, align 8, !dbg !2865
  br label %184, !dbg !2865

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2865
  %188 = load i8*, i8** %187, align 8, !dbg !2865
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2868
  store i8* %188, i8** %189, align 8, !dbg !2869, !tbaa !472
  %190 = icmp eq i8* %188, null, !dbg !2870
  br i1 %190, label %210, label %191, !dbg !2871

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 9, metadata !2858, metadata !DIExpression()), !dbg !2861
  %192 = icmp sgt i32 %185, -1, !dbg !2865
  br i1 %192, label %200, label %193, !dbg !2865

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2865
  store i32 %194, i32* %8, align 8, !dbg !2865
  %195 = icmp ult i32 %185, -7, !dbg !2865
  br i1 %195, label %196, label %200, !dbg !2865

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2865
  %198 = sext i32 %185 to i64, !dbg !2865
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2865
  br label %203, !dbg !2865

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2865
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2865
  store i8* %202, i8** %10, align 8, !dbg !2865
  br label %203, !dbg !2865

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2865
  %206 = load i8*, i8** %205, align 8, !dbg !2865
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2868
  store i8* %206, i8** %207, align 8, !dbg !2869, !tbaa !472
  %208 = icmp eq i8* %206, null, !dbg !2870
  %209 = select i1 %208, i64 9, i64 10, !dbg !2871
  br label %210, !dbg !2871

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2872
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2873
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2874
  ret void, !dbg !2874
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2875 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2879, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8* %1, metadata !2880, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8* %2, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8* %3, metadata !2882, metadata !DIExpression()), !dbg !2884
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2885
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2885
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2883, metadata !DIExpression()), !dbg !2886
  call void @llvm.va_start(i8* nonnull %7), !dbg !2887
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2888
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2888, !tbaa.struct !1110
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2888
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2888
  call void @llvm.va_end(i8* nonnull %7), !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2890
  ret void, !dbg !2890
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2891 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2892, !tbaa !472
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2892
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.117, i64 0, i64 0), i32 noundef 5) #32, !dbg !2893
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.118, i64 0, i64 0)) #32, !dbg !2893
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.119, i64 0, i64 0), i32 noundef 5) #32, !dbg !2894
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.121, i64 0, i64 0)) #32, !dbg !2894
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.122, i64 0, i64 0), i32 noundef 5) #32, !dbg !2895
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.123, i64 0, i64 0)) #32, !dbg !2895
  ret void, !dbg !2896
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2902, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %1, metadata !2903, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %2, metadata !2904, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()) #32, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()) #32, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %2, metadata !2910, metadata !DIExpression()) #32, !dbg !2911
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %4, metadata !2914, metadata !DIExpression()) #32, !dbg !2919
  %5 = icmp eq i8* %4, null, !dbg !2921
  br i1 %5, label %6, label %7, !dbg !2923

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2924
  unreachable, !dbg !2924

7:                                                ; preds = %3
  ret i8* %4, !dbg !2925
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2907 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %2, metadata !2910, metadata !DIExpression()), !dbg !2926
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %4, metadata !2914, metadata !DIExpression()) #32, !dbg !2928
  %5 = icmp eq i8* %4, null, !dbg !2930
  br i1 %5, label %6, label %7, !dbg !2931

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2932
  unreachable, !dbg !2932

7:                                                ; preds = %3
  ret i8* %4, !dbg !2933
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2934 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2938, metadata !DIExpression()), !dbg !2939
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2940
  call void @llvm.dbg.value(metadata i8* %2, metadata !2914, metadata !DIExpression()) #32, !dbg !2941
  %3 = icmp eq i8* %2, null, !dbg !2943
  br i1 %3, label %4, label %5, !dbg !2944

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2945
  unreachable, !dbg !2945

5:                                                ; preds = %1
  ret i8* %2, !dbg !2946
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2947 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 %0, metadata !2953, metadata !DIExpression()) #32, !dbg !2957
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2959
  call void @llvm.dbg.value(metadata i8* %2, metadata !2914, metadata !DIExpression()) #32, !dbg !2960
  %3 = icmp eq i8* %2, null, !dbg !2962
  br i1 %3, label %4, label %5, !dbg !2963

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2964
  unreachable, !dbg !2964

5:                                                ; preds = %1
  ret i8* %2, !dbg !2965
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2966 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %0, metadata !2938, metadata !DIExpression()) #32, !dbg !2972
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2974
  call void @llvm.dbg.value(metadata i8* %2, metadata !2914, metadata !DIExpression()) #32, !dbg !2975
  %3 = icmp eq i8* %2, null, !dbg !2977
  br i1 %3, label %4, label %5, !dbg !2978

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2979
  unreachable, !dbg !2979

5:                                                ; preds = %1
  ret i8* %2, !dbg !2980
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2981 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2985, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 %1, metadata !2986, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #32, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()) #32, !dbg !2993
  %3 = icmp eq i64 %1, 0, !dbg !2995
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2995
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %5, metadata !2914, metadata !DIExpression()) #32, !dbg !2997
  %6 = icmp eq i8* %5, null, !dbg !2999
  br i1 %6, label %7, label %8, !dbg !3000

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3001
  unreachable, !dbg !3001

8:                                                ; preds = %2
  ret i8* %5, !dbg !3002
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8* %0, metadata !3010, metadata !DIExpression()) #32, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %1, metadata !3013, metadata !DIExpression()) #32, !dbg !3014
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #32, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()) #32, !dbg !3016
  %3 = icmp eq i64 %1, 0, !dbg !3018
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3018
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %5, metadata !2914, metadata !DIExpression()) #32, !dbg !3020
  %6 = icmp eq i8* %5, null, !dbg !3022
  br i1 %6, label %7, label %8, !dbg !3023

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3024
  unreachable, !dbg !3024

8:                                                ; preds = %2
  ret i8* %5, !dbg !3025
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3026 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3030, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %1, metadata !3031, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %2, metadata !3032, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8* %0, metadata !3034, metadata !DIExpression()) #32, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()) #32, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %2, metadata !3038, metadata !DIExpression()) #32, !dbg !3039
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %4, metadata !2914, metadata !DIExpression()) #32, !dbg !3042
  %5 = icmp eq i8* %4, null, !dbg !3044
  br i1 %5, label %6, label %7, !dbg !3045

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !3046
  unreachable, !dbg !3046

7:                                                ; preds = %3
  ret i8* %4, !dbg !3047
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3048 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %1, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* null, metadata !2906, metadata !DIExpression()) #32, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %0, metadata !2909, metadata !DIExpression()) #32, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %1, metadata !2910, metadata !DIExpression()) #32, !dbg !3055
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %3, metadata !2914, metadata !DIExpression()) #32, !dbg !3058
  %4 = icmp eq i8* %3, null, !dbg !3060
  br i1 %4, label %5, label %6, !dbg !3061

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3062
  unreachable, !dbg !3062

6:                                                ; preds = %2
  ret i8* %3, !dbg !3063
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3064 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %1, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* null, metadata !3030, metadata !DIExpression()) #32, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %0, metadata !3031, metadata !DIExpression()) #32, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3032, metadata !DIExpression()) #32, !dbg !3071
  call void @llvm.dbg.value(metadata i8* null, metadata !3034, metadata !DIExpression()) #32, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %0, metadata !3037, metadata !DIExpression()) #32, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !3038, metadata !DIExpression()) #32, !dbg !3073
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %3, metadata !2914, metadata !DIExpression()) #32, !dbg !3076
  %4 = icmp eq i8* %3, null, !dbg !3078
  br i1 %4, label %5, label %6, !dbg !3079

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3080
  unreachable, !dbg !3080

6:                                                ; preds = %2
  ret i8* %3, !dbg !3081
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3082 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64* %1, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8* %0, metadata !405, metadata !DIExpression()) #32, !dbg !3089
  call void @llvm.dbg.value(metadata i64* %1, metadata !406, metadata !DIExpression()) #32, !dbg !3089
  call void @llvm.dbg.value(metadata i64 1, metadata !407, metadata !DIExpression()) #32, !dbg !3089
  %3 = load i64, i64* %1, align 8, !dbg !3091, !tbaa !2187
  call void @llvm.dbg.value(metadata i64 %3, metadata !408, metadata !DIExpression()) #32, !dbg !3089
  %4 = icmp eq i8* %0, null, !dbg !3092
  br i1 %4, label %5, label %8, !dbg !3094

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3095
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3098
  br label %15, !dbg !3098

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3099
  %10 = add nuw i64 %9, 1, !dbg !3099
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !3099
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3099
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %13, metadata !408, metadata !DIExpression()) #32, !dbg !3089
  br i1 %12, label %14, label %15, !dbg !3102

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !3103
  unreachable, !dbg !3103

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3089
  call void @llvm.dbg.value(metadata i64 %16, metadata !408, metadata !DIExpression()) #32, !dbg !3089
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()) #32, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %16, metadata !2909, metadata !DIExpression()) #32, !dbg !3104
  call void @llvm.dbg.value(metadata i64 1, metadata !2910, metadata !DIExpression()) #32, !dbg !3104
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %17, metadata !2914, metadata !DIExpression()) #32, !dbg !3107
  %18 = icmp eq i8* %17, null, !dbg !3109
  br i1 %18, label %19, label %20, !dbg !3110

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !3111
  unreachable, !dbg !3111

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !405, metadata !DIExpression()) #32, !dbg !3089
  store i64 %16, i64* %1, align 8, !dbg !3112, !tbaa !2187
  ret i8* %17, !dbg !3113
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !400 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !405, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64* %1, metadata !406, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %2, metadata !407, metadata !DIExpression()), !dbg !3114
  %4 = load i64, i64* %1, align 8, !dbg !3115, !tbaa !2187
  call void @llvm.dbg.value(metadata i64 %4, metadata !408, metadata !DIExpression()), !dbg !3114
  %5 = icmp eq i8* %0, null, !dbg !3116
  br i1 %5, label %6, label %13, !dbg !3117

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3118
  br i1 %7, label %8, label %20, !dbg !3119

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %9, metadata !408, metadata !DIExpression()), !dbg !3114
  %10 = icmp ugt i64 %2, 128, !dbg !3122
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %12, metadata !408, metadata !DIExpression()), !dbg !3114
  br label %20, !dbg !3124

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3125
  %15 = add nuw i64 %14, 1, !dbg !3125
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3125
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3125
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %18, metadata !408, metadata !DIExpression()), !dbg !3114
  br i1 %17, label %19, label %20, !dbg !3126

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !3127
  unreachable, !dbg !3127

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3114
  call void @llvm.dbg.value(metadata i64 %21, metadata !408, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()) #32, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %21, metadata !2909, metadata !DIExpression()) #32, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %2, metadata !2910, metadata !DIExpression()) #32, !dbg !3128
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !3130
  call void @llvm.dbg.value(metadata i8* %22, metadata !2914, metadata !DIExpression()) #32, !dbg !3131
  %23 = icmp eq i8* %22, null, !dbg !3133
  br i1 %23, label %24, label %25, !dbg !3134

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !3135
  unreachable, !dbg !3135

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !405, metadata !DIExpression()), !dbg !3114
  store i64 %21, i64* %1, align 8, !dbg !3136, !tbaa !2187
  ret i8* %22, !dbg !3137
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !412 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !420, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64* %1, metadata !421, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %2, metadata !422, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %3, metadata !423, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %4, metadata !424, metadata !DIExpression()), !dbg !3138
  %6 = load i64, i64* %1, align 8, !dbg !3139, !tbaa !2187
  call void @llvm.dbg.value(metadata i64 %6, metadata !425, metadata !DIExpression()), !dbg !3138
  %7 = ashr i64 %6, 1, !dbg !3140
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3140
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3140
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %10, metadata !426, metadata !DIExpression()), !dbg !3138
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3142
  call void @llvm.dbg.value(metadata i64 %11, metadata !426, metadata !DIExpression()), !dbg !3138
  %12 = icmp sgt i64 %3, -1, !dbg !3143
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3145
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %15, metadata !426, metadata !DIExpression()), !dbg !3138
  %16 = icmp slt i64 %4, 0, !dbg !3146
  br i1 %16, label %17, label %30, !dbg !3146

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3146
  br i1 %18, label %19, label %24, !dbg !3146

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3146
  %21 = udiv i64 9223372036854775807, %20, !dbg !3146
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3146
  br i1 %23, label %46, label %43, !dbg !3146

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3146
  br i1 %25, label %43, label %26, !dbg !3146

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3146
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3146
  %29 = icmp ult i64 %28, %15, !dbg !3146
  br i1 %29, label %46, label %43, !dbg !3146

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3146
  br i1 %31, label %43, label %32, !dbg !3146

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3146
  br i1 %33, label %34, label %40, !dbg !3146

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3146
  br i1 %35, label %43, label %36, !dbg !3146

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3146
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3146
  %39 = icmp ult i64 %38, %4, !dbg !3146
  br i1 %39, label %46, label %43, !dbg !3146

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3146
  %42 = icmp ult i64 %41, %15, !dbg !3146
  br i1 %42, label %46, label %43, !dbg !3146

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !427, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3138
  %44 = mul i64 %15, %4, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %44, metadata !427, metadata !DIExpression()), !dbg !3138
  %45 = icmp slt i64 %44, 128, !dbg !3146
  br i1 %45, label %46, label %52, !dbg !3146

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !428, metadata !DIExpression()), !dbg !3138
  %48 = sdiv i64 %47, %4, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %48, metadata !426, metadata !DIExpression()), !dbg !3138
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %51, metadata !427, metadata !DIExpression()), !dbg !3138
  br label %52, !dbg !3151

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3138
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3138
  call void @llvm.dbg.value(metadata i64 %54, metadata !427, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %53, metadata !426, metadata !DIExpression()), !dbg !3138
  %55 = icmp eq i8* %0, null, !dbg !3152
  br i1 %55, label %56, label %57, !dbg !3154

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3155, !tbaa !2187
  br label %57, !dbg !3156

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3157
  %59 = icmp slt i64 %58, %2, !dbg !3159
  br i1 %59, label %60, label %97, !dbg !3160

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3161
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3161
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %63, metadata !426, metadata !DIExpression()), !dbg !3138
  br i1 %62, label %96, label %64, !dbg !3162

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3163
  br i1 %66, label %96, label %67, !dbg !3163

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3164

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3164
  br i1 %69, label %70, label %75, !dbg !3164

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3164
  %72 = udiv i64 9223372036854775807, %71, !dbg !3164
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3164
  br i1 %74, label %96, label %94, !dbg !3164

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3164
  br i1 %76, label %94, label %77, !dbg !3164

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3164
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3164
  %80 = icmp ult i64 %79, %63, !dbg !3164
  br i1 %80, label %96, label %94, !dbg !3164

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3164
  br i1 %82, label %94, label %83, !dbg !3164

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3164
  br i1 %84, label %85, label %91, !dbg !3164

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3164
  br i1 %86, label %94, label %87, !dbg !3164

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3164
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3164
  %90 = icmp ult i64 %89, %4, !dbg !3164
  br i1 %90, label %96, label %94, !dbg !3164

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3164
  %93 = icmp ult i64 %92, %63, !dbg !3164
  br i1 %93, label %96, label %94, !dbg !3164

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !427, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3138
  %95 = mul i64 %63, %4, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %95, metadata !427, metadata !DIExpression()), !dbg !3138
  br label %97, !dbg !3165

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !3166
  unreachable, !dbg !3166

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3138
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3138
  call void @llvm.dbg.value(metadata i64 %99, metadata !427, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %98, metadata !426, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %0, metadata !2985, metadata !DIExpression()) #32, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %99, metadata !2986, metadata !DIExpression()) #32, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #32, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %99, metadata !2992, metadata !DIExpression()) #32, !dbg !3169
  %100 = icmp eq i64 %99, 0, !dbg !3171
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3171
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %102, metadata !2914, metadata !DIExpression()) #32, !dbg !3173
  %103 = icmp eq i8* %102, null, !dbg !3175
  br i1 %103, label %104, label %105, !dbg !3176

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !3177
  unreachable, !dbg !3177

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !420, metadata !DIExpression()), !dbg !3138
  store i64 %98, i64* %1, align 8, !dbg !3178, !tbaa !2187
  ret i8* %102, !dbg !3179
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3180 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3182, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 %0, metadata !3184, metadata !DIExpression()) #32, !dbg !3188
  call void @llvm.dbg.value(metadata i64 1, metadata !3187, metadata !DIExpression()) #32, !dbg !3188
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %2, metadata !2914, metadata !DIExpression()) #32, !dbg !3191
  %3 = icmp eq i8* %2, null, !dbg !3193
  br i1 %3, label %4, label %5, !dbg !3194

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3195
  unreachable, !dbg !3195

5:                                                ; preds = %1
  ret i8* %2, !dbg !3196
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3185 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3184, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3197
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %3, metadata !2914, metadata !DIExpression()) #32, !dbg !3199
  %4 = icmp eq i8* %3, null, !dbg !3201
  br i1 %4, label %5, label %6, !dbg !3202

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3203
  unreachable, !dbg !3203

6:                                                ; preds = %2
  ret i8* %3, !dbg !3204
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3205 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %0, metadata !3209, metadata !DIExpression()) #32, !dbg !3213
  call void @llvm.dbg.value(metadata i64 1, metadata !3212, metadata !DIExpression()) #32, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %0, metadata !3215, metadata !DIExpression()) #32, !dbg !3219
  call void @llvm.dbg.value(metadata i64 1, metadata !3218, metadata !DIExpression()) #32, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %0, metadata !3215, metadata !DIExpression()) #32, !dbg !3219
  call void @llvm.dbg.value(metadata i64 1, metadata !3218, metadata !DIExpression()) #32, !dbg !3219
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %2, metadata !2914, metadata !DIExpression()) #32, !dbg !3222
  %3 = icmp eq i8* %2, null, !dbg !3224
  br i1 %3, label %4, label %5, !dbg !3225

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3226
  unreachable, !dbg !3226

5:                                                ; preds = %1
  ret i8* %2, !dbg !3227
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3210 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3209, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %1, metadata !3212, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %0, metadata !3215, metadata !DIExpression()) #32, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()) #32, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %0, metadata !3215, metadata !DIExpression()) #32, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()) #32, !dbg !3229
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %3, metadata !2914, metadata !DIExpression()) #32, !dbg !3232
  %4 = icmp eq i8* %3, null, !dbg !3234
  br i1 %4, label %5, label %6, !dbg !3235

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3236
  unreachable, !dbg !3236

6:                                                ; preds = %2
  ret i8* %3, !dbg !3237
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3238 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3242, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %1, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()) #32, !dbg !3245
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %3, metadata !2914, metadata !DIExpression()) #32, !dbg !3248
  %4 = icmp eq i8* %3, null, !dbg !3250
  br i1 %4, label %5, label %6, !dbg !3251

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3252
  unreachable, !dbg !3252

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3253, metadata !DIExpression()) #32, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %0, metadata !3259, metadata !DIExpression()) #32, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %1, metadata !3260, metadata !DIExpression()) #32, !dbg !3261
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3263
  ret i8* %3, !dbg !3264
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3265 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %1, metadata !2951, metadata !DIExpression()) #32, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()) #32, !dbg !3274
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %3, metadata !2914, metadata !DIExpression()) #32, !dbg !3277
  %4 = icmp eq i8* %3, null, !dbg !3279
  br i1 %4, label %5, label %6, !dbg !3280

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3281
  unreachable, !dbg !3281

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3253, metadata !DIExpression()) #32, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %0, metadata !3259, metadata !DIExpression()) #32, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %1, metadata !3260, metadata !DIExpression()) #32, !dbg !3282
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3284
  ret i8* %3, !dbg !3285
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3286 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3290, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3293
  %3 = add nsw i64 %1, 1, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %3, metadata !2951, metadata !DIExpression()) #32, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %3, metadata !2953, metadata !DIExpression()) #32, !dbg !3297
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %4, metadata !2914, metadata !DIExpression()) #32, !dbg !3300
  %5 = icmp eq i8* %4, null, !dbg !3302
  br i1 %5, label %6, label %7, !dbg !3303

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3304
  unreachable, !dbg !3304

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3292, metadata !DIExpression()), !dbg !3293
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3305
  store i8 0, i8* %8, align 1, !dbg !3306, !tbaa !570
  call void @llvm.dbg.value(metadata i8* %4, metadata !3253, metadata !DIExpression()) #32, !dbg !3307
  call void @llvm.dbg.value(metadata i8* %0, metadata !3259, metadata !DIExpression()) #32, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %1, metadata !3260, metadata !DIExpression()) #32, !dbg !3307
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3309
  ret i8* %4, !dbg !3310
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3311 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3313, metadata !DIExpression()), !dbg !3314
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !3315
  %3 = add i64 %2, 1, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %0, metadata !3242, metadata !DIExpression()) #32, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %3, metadata !3243, metadata !DIExpression()) #32, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %3, metadata !2938, metadata !DIExpression()) #32, !dbg !3319
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3321
  call void @llvm.dbg.value(metadata i8* %4, metadata !2914, metadata !DIExpression()) #32, !dbg !3322
  %5 = icmp eq i8* %4, null, !dbg !3324
  br i1 %5, label %6, label %7, !dbg !3325

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3326
  unreachable, !dbg !3326

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3253, metadata !DIExpression()) #32, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %0, metadata !3259, metadata !DIExpression()) #32, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %3, metadata !3260, metadata !DIExpression()) #32, !dbg !3327
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3329
  ret i8* %4, !dbg !3330
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3331 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3336, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %1, metadata !3333, metadata !DIExpression()), !dbg !3337
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.134, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.135, i64 0, i64 0), i32 noundef 5) #32, !dbg !3336
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i64 0, i64 0), i8* noundef %2) #32, !dbg !3336
  %3 = icmp eq i32 %1, 0, !dbg !3336
  tail call void @llvm.assume(i1 %3), !dbg !3336
  tail call void @abort() #34, !dbg !3338
  unreachable, !dbg !3338
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3339 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3377, metadata !DIExpression()), !dbg !3382
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3383
  call void @llvm.dbg.value(metadata i1 undef, metadata !3378, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3382
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3384, metadata !DIExpression()), !dbg !3387
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3389
  %4 = load i32, i32* %3, align 8, !dbg !3389, !tbaa !3390
  %5 = and i32 %4, 32, !dbg !3391
  %6 = icmp eq i32 %5, 0, !dbg !3391
  call void @llvm.dbg.value(metadata i1 %6, metadata !3380, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3382
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3392
  %8 = icmp eq i32 %7, 0, !dbg !3393
  call void @llvm.dbg.value(metadata i1 %8, metadata !3381, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3382
  br i1 %6, label %9, label %19, !dbg !3394

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3396
  call void @llvm.dbg.value(metadata i1 %10, metadata !3378, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3382
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3397
  %12 = xor i1 %8, true, !dbg !3397
  %13 = sext i1 %12 to i32, !dbg !3397
  br i1 %11, label %22, label %14, !dbg !3397

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3398
  %16 = load i32, i32* %15, align 4, !dbg !3398, !tbaa !561
  %17 = icmp ne i32 %16, 9, !dbg !3399
  %18 = sext i1 %17 to i32, !dbg !3400
  br label %22, !dbg !3400

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3401

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3403
  store i32 0, i32* %21, align 4, !dbg !3405, !tbaa !561
  br label %22, !dbg !3403

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3382
  ret i32 %23, !dbg !3406
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3407 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3445, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3446, metadata !DIExpression()), !dbg !3449
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3450
  call void @llvm.dbg.value(metadata i32 %2, metadata !3447, metadata !DIExpression()), !dbg !3449
  %3 = icmp slt i32 %2, 0, !dbg !3451
  br i1 %3, label %4, label %6, !dbg !3453

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3454
  br label %24, !dbg !3455

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3456
  %8 = icmp eq i32 %7, 0, !dbg !3456
  br i1 %8, label %13, label %9, !dbg !3458

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3459
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3460
  %12 = icmp eq i64 %11, -1, !dbg !3461
  br i1 %12, label %16, label %13, !dbg !3462

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3463
  %15 = icmp eq i32 %14, 0, !dbg !3463
  br i1 %15, label %16, label %18, !dbg !3464

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3448, metadata !DIExpression()), !dbg !3449
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %21, metadata !3448, metadata !DIExpression()), !dbg !3449
  br label %24, !dbg !3466

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3467
  %20 = load i32, i32* %19, align 4, !dbg !3467, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %20, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3448, metadata !DIExpression()), !dbg !3449
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %21, metadata !3448, metadata !DIExpression()), !dbg !3449
  %22 = icmp eq i32 %20, 0, !dbg !3468
  br i1 %22, label %24, label %23, !dbg !3466

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3470, !tbaa !561
  call void @llvm.dbg.value(metadata i32 -1, metadata !3448, metadata !DIExpression()), !dbg !3449
  br label %24, !dbg !3472

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3449
  ret i32 %25, !dbg !3473
}

; Function Attrs: nofree nounwind
declare !dbg !3474 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3475 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3476 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3479 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3517, metadata !DIExpression()), !dbg !3518
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3519
  br i1 %2, label %6, label %3, !dbg !3521

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3522
  %5 = icmp eq i32 %4, 0, !dbg !3522
  br i1 %5, label %6, label %8, !dbg !3523

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3524
  br label %17, !dbg !3525

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3526, metadata !DIExpression()) #32, !dbg !3531
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3533
  %10 = load i32, i32* %9, align 8, !dbg !3533, !tbaa !3390
  %11 = and i32 %10, 256, !dbg !3535
  %12 = icmp eq i32 %11, 0, !dbg !3535
  br i1 %12, label %15, label %13, !dbg !3536

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3537
  br label %15, !dbg !3537

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3538
  br label %17, !dbg !3539

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3518
  ret i32 %18, !dbg !3540
}

; Function Attrs: nofree nounwind
declare !dbg !3541 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3542 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3581, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %1, metadata !3582, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 %2, metadata !3583, metadata !DIExpression()), !dbg !3587
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3588
  %5 = load i8*, i8** %4, align 8, !dbg !3588, !tbaa !3589
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3590
  %7 = load i8*, i8** %6, align 8, !dbg !3590, !tbaa !3591
  %8 = icmp eq i8* %5, %7, !dbg !3592
  br i1 %8, label %9, label %28, !dbg !3593

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3594
  %11 = load i8*, i8** %10, align 8, !dbg !3594, !tbaa !1225
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3595
  %13 = load i8*, i8** %12, align 8, !dbg !3595, !tbaa !3596
  %14 = icmp eq i8* %11, %13, !dbg !3597
  br i1 %14, label %15, label %28, !dbg !3598

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3599
  %17 = load i8*, i8** %16, align 8, !dbg !3599, !tbaa !3600
  %18 = icmp eq i8* %17, null, !dbg !3601
  br i1 %18, label %19, label %28, !dbg !3602

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3603
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %21, metadata !3584, metadata !DIExpression()), !dbg !3605
  %22 = icmp eq i64 %21, -1, !dbg !3606
  br i1 %22, label %30, label %23, !dbg !3608

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3609
  %25 = load i32, i32* %24, align 8, !dbg !3610, !tbaa !3390
  %26 = and i32 %25, -17, !dbg !3610
  store i32 %26, i32* %24, align 8, !dbg !3610, !tbaa !3390
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3611
  store i64 %21, i64* %27, align 8, !dbg !3612, !tbaa !3613
  br label %30, !dbg !3614

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3615
  br label %30, !dbg !3616

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3587
  ret i32 %31, !dbg !3617
}

; Function Attrs: nofree nounwind
declare !dbg !3618 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3621 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3625, metadata !DIExpression()), !dbg !3630
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3631
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3631
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3626, metadata !DIExpression()), !dbg !3632
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3633
  %5 = icmp eq i32 %4, 0, !dbg !3633
  br i1 %5, label %6, label %13, !dbg !3635

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3636, metadata !DIExpression()) #32, !dbg !3640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), metadata !3639, metadata !DIExpression()) #32, !dbg !3640
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), i64 2), !dbg !3643
  %8 = icmp eq i32 %7, 0, !dbg !3644
  br i1 %8, label %12, label %9, !dbg !3645

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3636, metadata !DIExpression()) #32, !dbg !3646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), metadata !3639, metadata !DIExpression()) #32, !dbg !3646
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), i64 6), !dbg !3648
  %11 = icmp eq i32 %10, 0, !dbg !3649
  br i1 %11, label %12, label %13, !dbg !3650

12:                                               ; preds = %9, %6
  br label %13, !dbg !3651

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3630
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3652
  ret i1 %14, !dbg !3652
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3653 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3658, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8* %1, metadata !3659, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %2, metadata !3660, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3661, metadata !DIExpression()), !dbg !3663
  %5 = icmp eq i8* %1, null, !dbg !3664
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3666
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.151, i64 0, i64 0), i8* %1, !dbg !3666
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %8, metadata !3660, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8* %7, metadata !3659, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32* %6, metadata !3658, metadata !DIExpression()), !dbg !3663
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3667
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state.152, %struct.__mbstate_t* %3, !dbg !3669
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3661, metadata !DIExpression()), !dbg !3663
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3670
  call void @llvm.dbg.value(metadata i64 %11, metadata !3662, metadata !DIExpression()), !dbg !3663
  %12 = icmp ult i64 %11, -3, !dbg !3671
  br i1 %12, label %13, label %18, !dbg !3673

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3674
  %15 = icmp eq i32 %14, 0, !dbg !3674
  br i1 %15, label %16, label %30, !dbg !3675

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3676, metadata !DIExpression()) #32, !dbg !3681
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3683, metadata !DIExpression()) #32, !dbg !3688
  call void @llvm.dbg.value(metadata i32 0, metadata !3686, metadata !DIExpression()) #32, !dbg !3688
  call void @llvm.dbg.value(metadata i64 8, metadata !3687, metadata !DIExpression()) #32, !dbg !3688
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3690
  store i64 0, i64* %17, align 1, !dbg !3690
  br label %30, !dbg !3691

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3692
  br i1 %19, label %20, label %21, !dbg !3694

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3695
  unreachable, !dbg !3695

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3696

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3698
  br i1 %24, label %30, label %25, !dbg !3699

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3700
  br i1 %26, label %30, label %27, !dbg !3703

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3704, !tbaa !570
  %29 = zext i8 %28 to i32, !dbg !3705
  store i32 %29, i32* %6, align 4, !dbg !3706, !tbaa !561
  br label %30, !dbg !3707

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3663
  ret i64 %31, !dbg !3708
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3709 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3714 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3716, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %1, metadata !3717, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %2, metadata !3718, metadata !DIExpression()), !dbg !3720
  %4 = icmp eq i64 %2, 0, !dbg !3721
  br i1 %4, label %8, label %5, !dbg !3721

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3721
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3721
  br i1 %7, label %13, label %8, !dbg !3721

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3719, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3720
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3719, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3720
  %9 = mul i64 %2, %1, !dbg !3721
  call void @llvm.dbg.value(metadata i64 %9, metadata !3719, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8* %0, metadata !3723, metadata !DIExpression()) #32, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %9, metadata !3726, metadata !DIExpression()) #32, !dbg !3727
  %10 = icmp eq i64 %9, 0, !dbg !3729
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3729
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3730
  br label %15, !dbg !3731

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3719, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3720
  %14 = tail call i32* @__errno_location() #35, !dbg !3732
  store i32 12, i32* %14, align 4, !dbg !3734, !tbaa !561
  br label %15, !dbg !3735

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3720
  ret i8* %16, !dbg !3736
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3741, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i8* %1, metadata !3742, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %2, metadata !3743, metadata !DIExpression()), !dbg !3744
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3745
  ret i32 %4, !dbg !3746
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3747 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3751, metadata !DIExpression()), !dbg !3752
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3753
  ret i8* %2, !dbg !3754
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3755 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()), !dbg !3759
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3760
  call void @llvm.dbg.value(metadata i8* %2, metadata !3758, metadata !DIExpression()), !dbg !3759
  ret i8* %2, !dbg !3761
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3762 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3764, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i8* %1, metadata !3765, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i64 %2, metadata !3766, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()) #32, !dbg !3772
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3774
  call void @llvm.dbg.value(metadata i8* %4, metadata !3758, metadata !DIExpression()) #32, !dbg !3772
  call void @llvm.dbg.value(metadata i8* %4, metadata !3767, metadata !DIExpression()), !dbg !3771
  %5 = icmp eq i8* %4, null, !dbg !3775
  br i1 %5, label %6, label %9, !dbg !3776

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3777
  br i1 %7, label %19, label %8, !dbg !3780

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3781, !tbaa !570
  br label %19, !dbg !3782

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3783
  call void @llvm.dbg.value(metadata i64 %10, metadata !3768, metadata !DIExpression()), !dbg !3784
  %11 = icmp ult i64 %10, %2, !dbg !3785
  br i1 %11, label %12, label %14, !dbg !3787

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %1, metadata !3790, metadata !DIExpression()) #32, !dbg !3795
  call void @llvm.dbg.value(metadata i8* %4, metadata !3793, metadata !DIExpression()) #32, !dbg !3795
  call void @llvm.dbg.value(metadata i64 %13, metadata !3794, metadata !DIExpression()) #32, !dbg !3795
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3797
  br label %19, !dbg !3798

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3799
  br i1 %15, label %19, label %16, !dbg !3802

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3803
  call void @llvm.dbg.value(metadata i8* %1, metadata !3790, metadata !DIExpression()) #32, !dbg !3805
  call void @llvm.dbg.value(metadata i8* %4, metadata !3793, metadata !DIExpression()) #32, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %17, metadata !3794, metadata !DIExpression()) #32, !dbg !3805
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3807
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3808
  store i8 0, i8* %18, align 1, !dbg !3809, !tbaa !570
  br label %19, !dbg !3810

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3811
  ret i32 %20, !dbg !3812
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

!llvm.dbg.cu = !{!2, !173, !178, !185, !365, !385, !226, !387, !245, !255, !282, !390, !357, !396, !430, !432, !434, !436, !438, !440, !371, !442, !445, !447}
!llvm.ident = !{!449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449, !449}
!llvm.module.flags = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 72, type: !159, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, globals: !71, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pathchk.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa64b76be00e62a867ebcba8290d4fa")
!4 = !{!5, !21, !35}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !22, line: 42, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!24 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!25 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!26 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!27 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!28 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!29 = !DIEnumerator(name: "c_quoting_style", value: 5)
!30 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!31 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!32 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!33 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!34 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 24, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!38 = !DIEnumerator(name: "_PC_LINK_MAX", value: 0)
!39 = !DIEnumerator(name: "_PC_MAX_CANON", value: 1)
!40 = !DIEnumerator(name: "_PC_MAX_INPUT", value: 2)
!41 = !DIEnumerator(name: "_PC_NAME_MAX", value: 3)
!42 = !DIEnumerator(name: "_PC_PATH_MAX", value: 4)
!43 = !DIEnumerator(name: "_PC_PIPE_BUF", value: 5)
!44 = !DIEnumerator(name: "_PC_CHOWN_RESTRICTED", value: 6)
!45 = !DIEnumerator(name: "_PC_NO_TRUNC", value: 7)
!46 = !DIEnumerator(name: "_PC_VDISABLE", value: 8)
!47 = !DIEnumerator(name: "_PC_SYNC_IO", value: 9)
!48 = !DIEnumerator(name: "_PC_ASYNC_IO", value: 10)
!49 = !DIEnumerator(name: "_PC_PRIO_IO", value: 11)
!50 = !DIEnumerator(name: "_PC_SOCK_MAXBUF", value: 12)
!51 = !DIEnumerator(name: "_PC_FILESIZEBITS", value: 13)
!52 = !DIEnumerator(name: "_PC_REC_INCR_XFER_SIZE", value: 14)
!53 = !DIEnumerator(name: "_PC_REC_MAX_XFER_SIZE", value: 15)
!54 = !DIEnumerator(name: "_PC_REC_MIN_XFER_SIZE", value: 16)
!55 = !DIEnumerator(name: "_PC_REC_XFER_ALIGN", value: 17)
!56 = !DIEnumerator(name: "_PC_ALLOC_SIZE_MIN", value: 18)
!57 = !DIEnumerator(name: "_PC_SYMLINK_MAX", value: 19)
!58 = !DIEnumerator(name: "_PC_2_SYMLINKS", value: 20)
!59 = !{!60, !62, !63, !64, !65, !68, !70}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !{!72, !0}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !74, file: !75, line: 575, type: !63, isLocal: true, isDefinition: true)
!74 = distinct !DISubprogram(name: "oputs_", scope: !75, file: !75, line: 573, type: !76, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!75 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!76 = !DISubroutineType(types: !77)
!77 = !{null, !68, !68}
!78 = !{!79, !80, !81, !84, !86, !87, !88, !92, !93, !94, !95, !97, !153, !154, !155, !157, !158}
!79 = !DILocalVariable(name: "program", arg: 1, scope: !74, file: !75, line: 573, type: !68)
!80 = !DILocalVariable(name: "option", arg: 2, scope: !74, file: !75, line: 573, type: !68)
!81 = !DILocalVariable(name: "term", scope: !82, file: !75, line: 585, type: !68)
!82 = distinct !DILexicalBlock(scope: !83, file: !75, line: 582, column: 5)
!83 = distinct !DILexicalBlock(scope: !74, file: !75, line: 581, column: 7)
!84 = !DILocalVariable(name: "double_space", scope: !74, file: !75, line: 594, type: !85)
!85 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!86 = !DILocalVariable(name: "first_word", scope: !74, file: !75, line: 595, type: !68)
!87 = !DILocalVariable(name: "option_text", scope: !74, file: !75, line: 596, type: !68)
!88 = !DILocalVariable(name: "s", scope: !89, file: !75, line: 608, type: !68)
!89 = distinct !DILexicalBlock(scope: !90, file: !75, line: 605, column: 5)
!90 = distinct !DILexicalBlock(scope: !91, file: !75, line: 604, column: 12)
!91 = distinct !DILexicalBlock(scope: !74, file: !75, line: 597, column: 7)
!92 = !DILocalVariable(name: "spaces", scope: !89, file: !75, line: 609, type: !65)
!93 = !DILocalVariable(name: "anchor_len", scope: !74, file: !75, line: 620, type: !65)
!94 = !DILocalVariable(name: "desc_text", scope: !74, file: !75, line: 625, type: !68)
!95 = !DILocalVariable(name: "__ptr", scope: !96, file: !75, line: 644, type: !68)
!96 = distinct !DILexicalBlock(scope: !74, file: !75, line: 644, column: 3)
!97 = !DILocalVariable(name: "__stream", scope: !96, file: !75, line: 644, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !101)
!100 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !103)
!102 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !119, !121, !122, !123, !127, !128, !130, !134, !137, !139, !142, !145, !146, !147, !148, !149}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !101, file: !102, line: 51, baseType: !63, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !101, file: !102, line: 54, baseType: !60, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !101, file: !102, line: 55, baseType: !60, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !101, file: !102, line: 56, baseType: !60, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !101, file: !102, line: 57, baseType: !60, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !101, file: !102, line: 58, baseType: !60, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !101, file: !102, line: 59, baseType: !60, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !101, file: !102, line: 60, baseType: !60, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !101, file: !102, line: 61, baseType: !60, size: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !101, file: !102, line: 64, baseType: !60, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !101, file: !102, line: 65, baseType: !60, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !101, file: !102, line: 66, baseType: !60, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !101, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !102, line: 36, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !101, file: !102, line: 70, baseType: !120, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !101, file: !102, line: 72, baseType: !63, size: 32, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !101, file: !102, line: 73, baseType: !63, size: 32, offset: 928)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !101, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !125, line: 152, baseType: !126)
!125 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!126 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !101, file: !102, line: 77, baseType: !64, size: 16, offset: 1024)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !101, file: !102, line: 78, baseType: !129, size: 8, offset: 1040)
!129 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !101, file: !102, line: 79, baseType: !131, size: 8, offset: 1048)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 8, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 1)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !101, file: !102, line: 81, baseType: !135, size: 64, offset: 1088)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !102, line: 43, baseType: null)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !101, file: !102, line: 89, baseType: !138, size: 64, offset: 1152)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !125, line: 153, baseType: !126)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !101, file: !102, line: 91, baseType: !140, size: 64, offset: 1216)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !102, line: 37, flags: DIFlagFwdDecl)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !101, file: !102, line: 92, baseType: !143, size: 64, offset: 1280)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !102, line: 38, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !101, file: !102, line: 93, baseType: !120, size: 64, offset: 1344)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !101, file: !102, line: 94, baseType: !62, size: 64, offset: 1408)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !101, file: !102, line: 95, baseType: !65, size: 64, offset: 1472)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !101, file: !102, line: 96, baseType: !63, size: 32, offset: 1536)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !101, file: !102, line: 98, baseType: !150, size: 160, offset: 1568)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 20)
!153 = !DILocalVariable(name: "__cnt", scope: !96, file: !75, line: 644, type: !65)
!154 = !DILocalVariable(name: "url_program", scope: !74, file: !75, line: 648, type: !68)
!155 = !DILocalVariable(name: "__ptr", scope: !156, file: !75, line: 686, type: !68)
!156 = distinct !DILexicalBlock(scope: !74, file: !75, line: 686, column: 3)
!157 = !DILocalVariable(name: "__stream", scope: !156, file: !75, line: 686, type: !98)
!158 = !DILocalVariable(name: "__cnt", scope: !156, file: !75, line: 686, type: !65)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 1024, elements: !169)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !162, line: 50, size: 256, elements: !163)
!162 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!163 = !{!164, !165, !166, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !162, line: 52, baseType: !68, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !161, file: !162, line: 55, baseType: !63, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !161, file: !162, line: 56, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !161, file: !162, line: 57, baseType: !63, size: 32, offset: 192)
!169 = !{!170}
!170 = !DISubrange(count: 4)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "Version", scope: !173, file: !174, line: 3, type: !68, isLocal: false, isDefinition: true)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !175, splitDebugInlining: false, nameTableKind: None)
!174 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!175 = !{!171}
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "file_name", scope: !178, file: !179, line: 45, type: !68, isLocal: true, isDefinition: true)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !180, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!180 = !{!176, !181}
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !178, file: !179, line: 55, type: !85, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !185, file: !186, line: 66, type: !221, isLocal: false, isDefinition: true)
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !187, globals: !188, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!187 = !{!62, !70}
!188 = !{!189, !215, !183, !217, !219}
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "old_file_name", scope: !191, file: !186, line: 304, type: !68, isLocal: true, isDefinition: true)
!191 = distinct !DISubprogram(name: "verror_at_line", scope: !186, file: !186, line: 298, type: !192, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !208)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !63, !63, !68, !7, !68, !194}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !195, line: 52, baseType: !196)
!195 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !197, line: 32, baseType: !198)
!197 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !199, baseType: !200)
!199 = !DIFile(filename: "lib/error.c", directory: "/src")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !201, size: 256, elements: !202)
!201 = !DINamespace(name: "std", scope: null)
!202 = !{!203, !204, !205, !206, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !200, file: !199, baseType: !62, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !200, file: !199, baseType: !62, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !200, file: !199, baseType: !62, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !200, file: !199, baseType: !63, size: 32, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !200, file: !199, baseType: !63, size: 32, offset: 224)
!208 = !{!209, !210, !211, !212, !213, !214}
!209 = !DILocalVariable(name: "status", arg: 1, scope: !191, file: !186, line: 298, type: !63)
!210 = !DILocalVariable(name: "errnum", arg: 2, scope: !191, file: !186, line: 298, type: !63)
!211 = !DILocalVariable(name: "file_name", arg: 3, scope: !191, file: !186, line: 298, type: !68)
!212 = !DILocalVariable(name: "line_number", arg: 4, scope: !191, file: !186, line: 298, type: !7)
!213 = !DILocalVariable(name: "message", arg: 5, scope: !191, file: !186, line: 298, type: !68)
!214 = !DILocalVariable(name: "args", arg: 6, scope: !191, file: !186, line: 298, type: !194)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "old_line_number", scope: !191, file: !186, line: 305, type: !7, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "error_message_count", scope: !185, file: !186, line: 69, type: !7, isLocal: false, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !185, file: !186, line: 295, type: !63, isLocal: false, isDefinition: true)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null}
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "internal_state", scope: !226, file: !227, line: 24, type: !230, isLocal: true, isDefinition: true)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !228, globals: !229, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/mbrlen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c924d5b17c62ecd87f5e0fdbef8c37ec")
!228 = !{!62}
!229 = !{!224}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !231, line: 6, baseType: !232)
!231 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !233, line: 21, baseType: !234)
!233 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 13, size: 64, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !234, file: !233, line: 15, baseType: !63, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !234, file: !233, line: 20, baseType: !238, size: 32, offset: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !233, line: 16, size: 32, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !238, file: !233, line: 18, baseType: !7, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !238, file: !233, line: 19, baseType: !242, size: 32)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !169)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "program_name", scope: !245, file: !246, line: 31, type: !68, isLocal: false, isDefinition: true)
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !247, globals: !248, splitDebugInlining: false, nameTableKind: None)
!246 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!247 = !{!60}
!248 = !{!243}
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "utf07FF", scope: !251, file: !252, line: 46, type: !277, isLocal: true, isDefinition: true)
!251 = distinct !DISubprogram(name: "proper_name_lite", scope: !252, file: !252, line: 38, type: !253, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !257)
!252 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!253 = !DISubroutineType(types: !254)
!254 = !{!68, !68, !68}
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !256, splitDebugInlining: false, nameTableKind: None)
!256 = !{!249}
!257 = !{!258, !259, !260, !261, !266}
!258 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !251, file: !252, line: 38, type: !68)
!259 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !251, file: !252, line: 38, type: !68)
!260 = !DILocalVariable(name: "translation", scope: !251, file: !252, line: 40, type: !68)
!261 = !DILocalVariable(name: "w", scope: !251, file: !252, line: 47, type: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !263, line: 37, baseType: !264)
!263 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !125, line: 57, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !125, line: 42, baseType: !7)
!266 = !DILocalVariable(name: "mbs", scope: !251, file: !252, line: 48, type: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !231, line: 6, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !233, line: 21, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 13, size: 64, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !269, file: !233, line: 15, baseType: !63, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !269, file: !233, line: 20, baseType: !273, size: 32, offset: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !233, line: 16, size: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !273, file: !233, line: 18, baseType: !7, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !273, file: !233, line: 19, baseType: !242, size: 32)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 16, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 2)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !282, file: !283, line: 76, type: !351, isLocal: false, isDefinition: true)
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !284, retainedTypes: !290, globals: !291, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!284 = !{!21, !285, !5}
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !22, line: 254, baseType: !7, size: 32, elements: !286)
!286 = !{!287, !288, !289}
!287 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!288 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!289 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!290 = !{!63, !64, !65}
!291 = !{!280, !292, !298, !310, !312, !317, !340, !347, !349}
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !282, file: !283, line: 92, type: !294, isLocal: false, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 320, elements: !296)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!296 = !{!297}
!297 = !DISubrange(count: 10)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !282, file: !283, line: 1040, type: !300, isLocal: false, isDefinition: true)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !283, line: 56, size: 448, elements: !301)
!301 = !{!302, !303, !304, !308, !309}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !300, file: !283, line: 59, baseType: !21, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !283, line: 62, baseType: !63, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !300, file: !283, line: 66, baseType: !305, size: 256, offset: 64)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 8)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !300, file: !283, line: 69, baseType: !68, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !300, file: !283, line: 72, baseType: !68, size: 64, offset: 384)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !282, file: !283, line: 107, type: !300, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "slot0", scope: !282, file: !283, line: 831, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 256)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "quote", scope: !319, file: !283, line: 228, type: !338, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "gettext_quote", scope: !283, file: !283, line: 197, type: !320, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!68, !68, !21}
!322 = !{!323, !324, !325, !326, !327}
!323 = !DILocalVariable(name: "msgid", arg: 1, scope: !319, file: !283, line: 197, type: !68)
!324 = !DILocalVariable(name: "s", arg: 2, scope: !319, file: !283, line: 197, type: !21)
!325 = !DILocalVariable(name: "translation", scope: !319, file: !283, line: 199, type: !68)
!326 = !DILocalVariable(name: "w", scope: !319, file: !283, line: 229, type: !262)
!327 = !DILocalVariable(name: "mbs", scope: !319, file: !283, line: 230, type: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !231, line: 6, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !233, line: 21, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 13, size: 64, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !330, file: !233, line: 15, baseType: !63, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !330, file: !233, line: 20, baseType: !334, size: 32, offset: 32)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !233, line: 16, size: 32, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !334, file: !233, line: 18, baseType: !7, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !334, file: !233, line: 19, baseType: !242, size: 32)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !339)
!339 = !{!279, !170}
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "slotvec", scope: !282, file: !283, line: 834, type: !342, isLocal: true, isDefinition: true)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !283, line: 823, size: 128, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !343, file: !283, line: 825, baseType: !65, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !343, file: !283, line: 826, baseType: !60, size: 64, offset: 64)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "nslots", scope: !282, file: !283, line: 832, type: !63, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "slotvec0", scope: !282, file: !283, line: 833, type: !343, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 704, elements: !353)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!353 = !{!354}
!354 = !DISubrange(count: 11)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !357, file: !358, line: 26, type: !360, isLocal: false, isDefinition: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !359, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!359 = !{!355}
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 47)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "exit_failure", scope: !365, file: !366, line: 24, type: !368, isLocal: false, isDefinition: true)
!365 = distinct !DICompileUnit(language: DW_LANG_C99, file: !366, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !367, splitDebugInlining: false, nameTableKind: None)
!366 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!367 = !{!363}
!368 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "internal_state", scope: !371, file: !372, line: 97, type: !375, isLocal: true, isDefinition: true)
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !373, globals: !374, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!373 = !{!62, !65, !70}
!374 = !{!369}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !231, line: 6, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !233, line: 21, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 13, size: 64, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !377, file: !233, line: 15, baseType: !63, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !377, file: !233, line: 20, baseType: !381, size: 32, offset: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !233, line: 16, size: 32, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !381, file: !233, line: 18, baseType: !7, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !381, file: !233, line: 19, baseType: !242, size: 32)
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!386 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !389, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "lib/mbrtowc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bbc936af6884a5d6522de5c3d04ed069")
!389 = !{!65}
!390 = distinct !DICompileUnit(language: DW_LANG_C99, file: !391, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !392, retainedTypes: !228, splitDebugInlining: false, nameTableKind: None)
!391 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!392 = !{!393}
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 40, baseType: !7, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !398, retainedTypes: !429, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!398 = !{!399, !411}
!399 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !400, file: !397, line: 188, baseType: !7, size: 32, elements: !409)
!400 = distinct !DISubprogram(name: "x2nrealloc", scope: !397, file: !397, line: 176, type: !401, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !404)
!401 = !DISubroutineType(types: !402)
!402 = !{!62, !62, !403, !65}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!404 = !{!405, !406, !407, !408}
!405 = !DILocalVariable(name: "p", arg: 1, scope: !400, file: !397, line: 176, type: !62)
!406 = !DILocalVariable(name: "pn", arg: 2, scope: !400, file: !397, line: 176, type: !403)
!407 = !DILocalVariable(name: "s", arg: 3, scope: !400, file: !397, line: 176, type: !65)
!408 = !DILocalVariable(name: "n", scope: !400, file: !397, line: 178, type: !65)
!409 = !{!410}
!410 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!411 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !412, file: !397, line: 228, baseType: !7, size: 32, elements: !409)
!412 = distinct !DISubprogram(name: "xpalloc", scope: !397, file: !397, line: 223, type: !413, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !419)
!413 = !DISubroutineType(types: !414)
!414 = !{!62, !62, !415, !416, !418, !416}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !417, line: 130, baseType: !418)
!417 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !66, line: 35, baseType: !126)
!419 = !{!420, !421, !422, !423, !424, !425, !426, !427, !428}
!420 = !DILocalVariable(name: "pa", arg: 1, scope: !412, file: !397, line: 223, type: !62)
!421 = !DILocalVariable(name: "pn", arg: 2, scope: !412, file: !397, line: 223, type: !415)
!422 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !412, file: !397, line: 223, type: !416)
!423 = !DILocalVariable(name: "n_max", arg: 4, scope: !412, file: !397, line: 223, type: !418)
!424 = !DILocalVariable(name: "s", arg: 5, scope: !412, file: !397, line: 223, type: !416)
!425 = !DILocalVariable(name: "n0", scope: !412, file: !397, line: 230, type: !416)
!426 = !DILocalVariable(name: "n", scope: !412, file: !397, line: 237, type: !416)
!427 = !DILocalVariable(name: "nbytes", scope: !412, file: !397, line: 248, type: !416)
!428 = !DILocalVariable(name: "adjusted_nbytes", scope: !412, file: !397, line: 252, type: !416)
!429 = !{!60, !62, !85, !126, !67}
!430 = distinct !DICompileUnit(language: DW_LANG_C99, file: !431, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!432 = distinct !DICompileUnit(language: DW_LANG_C99, file: !433, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!433 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!436 = distinct !DICompileUnit(language: DW_LANG_C99, file: !437, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !228, splitDebugInlining: false, nameTableKind: None)
!437 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!438 = distinct !DICompileUnit(language: DW_LANG_C99, file: !439, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !228, splitDebugInlining: false, nameTableKind: None)
!439 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !444, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!444 = !{!85, !67, !62}
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !228, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!449 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!450 = !{i32 7, !"Dwarf Version", i32 5}
!451 = !{i32 2, !"Debug Info Version", i32 3}
!452 = !{i32 1, !"wchar_size", i32 4}
!453 = !{i32 1, !"branch-target-enforcement", i32 0}
!454 = !{i32 1, !"sign-return-address", i32 0}
!455 = !{i32 1, !"sign-return-address-all", i32 0}
!456 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!457 = !{i32 7, !"PIC Level", i32 2}
!458 = !{i32 7, !"PIE Level", i32 2}
!459 = !{i32 7, !"uwtable", i32 1}
!460 = !{i32 7, !"frame-pointer", i32 1}
!461 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !462, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !63}
!464 = !{!465}
!465 = !DILocalVariable(name: "status", arg: 1, scope: !461, file: !3, line: 81, type: !63)
!466 = !DILocation(line: 0, scope: !461)
!467 = !DILocation(line: 83, column: 14, scope: !468)
!468 = distinct !DILexicalBlock(scope: !461, file: !3, line: 83, column: 7)
!469 = !DILocation(line: 83, column: 7, scope: !461)
!470 = !DILocation(line: 84, column: 5, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !3, line: 84, column: 5)
!472 = !{!473, !473, i64 0}
!473 = !{!"any pointer", !474, i64 0}
!474 = !{!"omnipotent char", !475, i64 0}
!475 = !{!"Simple C/C++ TBAA"}
!476 = !DILocation(line: 87, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !468, file: !3, line: 86, column: 5)
!478 = !DILocation(line: 88, column: 7, scope: !477)
!479 = !DILocation(line: 92, column: 7, scope: !477)
!480 = !DILocation(line: 95, column: 7, scope: !477)
!481 = !DILocation(line: 98, column: 7, scope: !477)
!482 = !DILocation(line: 102, column: 7, scope: !477)
!483 = !DILocation(line: 103, column: 7, scope: !477)
!484 = !DILocalVariable(name: "program", arg: 1, scope: !485, file: !75, line: 836, type: !68)
!485 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !75, file: !75, line: 836, type: !486, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !68}
!488 = !{!484, !489, !498, !499, !501, !502}
!489 = !DILocalVariable(name: "infomap", scope: !485, file: !75, line: 838, type: !490)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 896, elements: !496)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !485, file: !75, line: 838, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !492, file: !75, line: 838, baseType: !68, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !492, file: !75, line: 838, baseType: !68, size: 64, offset: 64)
!496 = !{!497}
!497 = !DISubrange(count: 7)
!498 = !DILocalVariable(name: "node", scope: !485, file: !75, line: 848, type: !68)
!499 = !DILocalVariable(name: "map_prog", scope: !485, file: !75, line: 849, type: !500)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!501 = !DILocalVariable(name: "lc_messages", scope: !485, file: !75, line: 861, type: !68)
!502 = !DILocalVariable(name: "url_program", scope: !485, file: !75, line: 874, type: !68)
!503 = !DILocation(line: 0, scope: !485, inlinedAt: !504)
!504 = distinct !DILocation(line: 104, column: 7, scope: !477)
!505 = !DILocation(line: 838, column: 3, scope: !485, inlinedAt: !504)
!506 = !DILocation(line: 838, column: 67, scope: !485, inlinedAt: !504)
!507 = !DILocation(line: 849, column: 36, scope: !485, inlinedAt: !504)
!508 = !DILocation(line: 851, column: 3, scope: !485, inlinedAt: !504)
!509 = !DILocalVariable(name: "__s1", arg: 1, scope: !510, file: !511, line: 1359, type: !68)
!510 = distinct !DISubprogram(name: "streq", scope: !511, file: !511, line: 1359, type: !512, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !514)
!511 = !DIFile(filename: "./lib/string.h", directory: "/src")
!512 = !DISubroutineType(types: !513)
!513 = !{!85, !68, !68}
!514 = !{!509, !515}
!515 = !DILocalVariable(name: "__s2", arg: 2, scope: !510, file: !511, line: 1359, type: !68)
!516 = !DILocation(line: 0, scope: !510, inlinedAt: !517)
!517 = distinct !DILocation(line: 851, column: 33, scope: !485, inlinedAt: !504)
!518 = !DILocation(line: 1361, column: 11, scope: !510, inlinedAt: !517)
!519 = !DILocation(line: 1361, column: 10, scope: !510, inlinedAt: !517)
!520 = !DILocation(line: 852, column: 13, scope: !485, inlinedAt: !504)
!521 = !DILocation(line: 851, column: 20, scope: !485, inlinedAt: !504)
!522 = !{!523, !473, i64 0}
!523 = !{!"infomap", !473, i64 0, !473, i64 8}
!524 = !DILocation(line: 851, column: 10, scope: !485, inlinedAt: !504)
!525 = !DILocation(line: 851, column: 28, scope: !485, inlinedAt: !504)
!526 = distinct !{!526, !508, !520, !527}
!527 = !{!"llvm.loop.mustprogress"}
!528 = !DILocation(line: 854, column: 17, scope: !529, inlinedAt: !504)
!529 = distinct !DILexicalBlock(scope: !485, file: !75, line: 854, column: 7)
!530 = !{!523, !473, i64 8}
!531 = !DILocation(line: 854, column: 7, scope: !529, inlinedAt: !504)
!532 = !DILocation(line: 854, column: 7, scope: !485, inlinedAt: !504)
!533 = !DILocation(line: 857, column: 3, scope: !485, inlinedAt: !504)
!534 = !DILocation(line: 861, column: 29, scope: !485, inlinedAt: !504)
!535 = !DILocation(line: 862, column: 7, scope: !536, inlinedAt: !504)
!536 = distinct !DILexicalBlock(scope: !485, file: !75, line: 862, column: 7)
!537 = !DILocation(line: 862, column: 19, scope: !536, inlinedAt: !504)
!538 = !DILocation(line: 862, column: 22, scope: !536, inlinedAt: !504)
!539 = !DILocation(line: 862, column: 7, scope: !485, inlinedAt: !504)
!540 = !DILocation(line: 868, column: 7, scope: !541, inlinedAt: !504)
!541 = distinct !DILexicalBlock(scope: !536, file: !75, line: 863, column: 5)
!542 = !DILocation(line: 870, column: 5, scope: !541, inlinedAt: !504)
!543 = !DILocation(line: 0, scope: !510, inlinedAt: !544)
!544 = distinct !DILocation(line: 874, column: 29, scope: !485, inlinedAt: !504)
!545 = !DILocation(line: 875, column: 3, scope: !485, inlinedAt: !504)
!546 = !DILocation(line: 877, column: 3, scope: !485, inlinedAt: !504)
!547 = !DILocation(line: 879, column: 1, scope: !485, inlinedAt: !504)
!548 = !DILocation(line: 106, column: 3, scope: !461)
!549 = !DISubprogram(name: "dcgettext", scope: !550, file: !550, line: 51, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!550 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!551 = !DISubroutineType(types: !552)
!552 = !{!60, !68, !68, !63}
!553 = !{}
!554 = !DISubprogram(name: "fputs_unlocked", scope: !195, file: !195, line: 691, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!555 = !DISubroutineType(types: !556)
!556 = !{!63, !557, !558}
!557 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!558 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!559 = !DILocation(line: 0, scope: !74)
!560 = !DILocation(line: 581, column: 7, scope: !83)
!561 = !{!562, !562, i64 0}
!562 = !{!"int", !474, i64 0}
!563 = !DILocation(line: 581, column: 19, scope: !83)
!564 = !DILocation(line: 581, column: 7, scope: !74)
!565 = !DILocation(line: 585, column: 26, scope: !82)
!566 = !DILocation(line: 0, scope: !82)
!567 = !DILocation(line: 586, column: 23, scope: !82)
!568 = !DILocation(line: 586, column: 28, scope: !82)
!569 = !DILocation(line: 586, column: 32, scope: !82)
!570 = !{!474, !474, i64 0}
!571 = !DILocation(line: 586, column: 38, scope: !82)
!572 = !DILocation(line: 0, scope: !510, inlinedAt: !573)
!573 = distinct !DILocation(line: 586, column: 41, scope: !82)
!574 = !DILocation(line: 1361, column: 11, scope: !510, inlinedAt: !573)
!575 = !DILocation(line: 1361, column: 10, scope: !510, inlinedAt: !573)
!576 = !DILocation(line: 586, column: 19, scope: !82)
!577 = !DILocation(line: 587, column: 5, scope: !82)
!578 = !DILocation(line: 588, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !74, file: !75, line: 588, column: 7)
!580 = !DILocation(line: 588, column: 7, scope: !74)
!581 = !DILocation(line: 590, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !75, line: 589, column: 5)
!583 = !DILocation(line: 591, column: 7, scope: !582)
!584 = !DILocation(line: 595, column: 37, scope: !74)
!585 = !DILocation(line: 595, column: 35, scope: !74)
!586 = !DILocation(line: 596, column: 29, scope: !74)
!587 = !DILocation(line: 597, column: 8, scope: !91)
!588 = !DILocation(line: 597, column: 7, scope: !74)
!589 = !DILocation(line: 604, column: 24, scope: !90)
!590 = !DILocation(line: 604, column: 12, scope: !91)
!591 = !DILocation(line: 0, scope: !89)
!592 = !DILocation(line: 610, column: 16, scope: !89)
!593 = !DILocation(line: 610, column: 7, scope: !89)
!594 = !DILocation(line: 611, column: 21, scope: !89)
!595 = !{!596, !596, i64 0}
!596 = !{!"short", !474, i64 0}
!597 = !DILocation(line: 611, column: 19, scope: !89)
!598 = !DILocation(line: 611, column: 16, scope: !89)
!599 = !DILocation(line: 610, column: 30, scope: !89)
!600 = distinct !{!600, !593, !594, !527}
!601 = !DILocation(line: 612, column: 18, scope: !602)
!602 = distinct !DILexicalBlock(scope: !89, file: !75, line: 612, column: 11)
!603 = !DILocation(line: 612, column: 11, scope: !89)
!604 = !DILocation(line: 620, column: 23, scope: !74)
!605 = !DILocation(line: 625, column: 39, scope: !74)
!606 = !DILocation(line: 626, column: 3, scope: !74)
!607 = !DILocation(line: 626, column: 10, scope: !74)
!608 = !DILocation(line: 626, column: 21, scope: !74)
!609 = !DILocation(line: 628, column: 44, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !75, line: 628, column: 11)
!611 = distinct !DILexicalBlock(scope: !74, file: !75, line: 627, column: 5)
!612 = !DILocation(line: 628, column: 32, scope: !610)
!613 = !DILocation(line: 628, column: 49, scope: !610)
!614 = !DILocation(line: 628, column: 11, scope: !611)
!615 = !DILocation(line: 630, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !75, line: 630, column: 11)
!617 = !DILocation(line: 630, column: 11, scope: !611)
!618 = !DILocation(line: 632, column: 26, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !75, line: 632, column: 15)
!620 = distinct !DILexicalBlock(scope: !616, file: !75, line: 631, column: 9)
!621 = !DILocation(line: 632, column: 34, scope: !619)
!622 = !DILocation(line: 632, column: 37, scope: !619)
!623 = !DILocation(line: 632, column: 15, scope: !620)
!624 = !DILocation(line: 636, column: 29, scope: !625)
!625 = distinct !DILexicalBlock(scope: !620, file: !75, line: 636, column: 15)
!626 = !DILocation(line: 640, column: 16, scope: !611)
!627 = distinct !{!627, !606, !628, !527}
!628 = !DILocation(line: 641, column: 5, scope: !74)
!629 = !DILocation(line: 644, column: 3, scope: !74)
!630 = !DILocation(line: 0, scope: !510, inlinedAt: !631)
!631 = distinct !DILocation(line: 648, column: 31, scope: !74)
!632 = !DILocation(line: 0, scope: !510, inlinedAt: !633)
!633 = distinct !DILocation(line: 649, column: 31, scope: !74)
!634 = !DILocation(line: 0, scope: !510, inlinedAt: !635)
!635 = distinct !DILocation(line: 650, column: 31, scope: !74)
!636 = !DILocation(line: 0, scope: !510, inlinedAt: !637)
!637 = distinct !DILocation(line: 651, column: 31, scope: !74)
!638 = !DILocation(line: 0, scope: !510, inlinedAt: !639)
!639 = distinct !DILocation(line: 652, column: 31, scope: !74)
!640 = !DILocation(line: 0, scope: !510, inlinedAt: !641)
!641 = distinct !DILocation(line: 653, column: 31, scope: !74)
!642 = !DILocation(line: 0, scope: !510, inlinedAt: !643)
!643 = distinct !DILocation(line: 654, column: 31, scope: !74)
!644 = !DILocation(line: 0, scope: !510, inlinedAt: !645)
!645 = distinct !DILocation(line: 655, column: 31, scope: !74)
!646 = !DILocation(line: 0, scope: !510, inlinedAt: !647)
!647 = distinct !DILocation(line: 656, column: 31, scope: !74)
!648 = !DILocation(line: 0, scope: !510, inlinedAt: !649)
!649 = distinct !DILocation(line: 657, column: 31, scope: !74)
!650 = !DILocation(line: 663, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !74, file: !75, line: 663, column: 7)
!652 = !DILocation(line: 664, column: 7, scope: !651)
!653 = !DILocation(line: 664, column: 10, scope: !651)
!654 = !DILocation(line: 663, column: 7, scope: !74)
!655 = !DILocation(line: 669, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !75, line: 665, column: 5)
!657 = !DILocation(line: 671, column: 5, scope: !656)
!658 = !DILocation(line: 676, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !651, file: !75, line: 673, column: 5)
!660 = !DILocation(line: 679, column: 3, scope: !74)
!661 = !DILocation(line: 683, column: 3, scope: !74)
!662 = !DILocation(line: 686, column: 3, scope: !74)
!663 = !DILocation(line: 688, column: 3, scope: !74)
!664 = !DILocation(line: 691, column: 3, scope: !74)
!665 = !DILocation(line: 695, column: 3, scope: !74)
!666 = !DILocation(line: 696, column: 1, scope: !74)
!667 = !DISubprogram(name: "setlocale", scope: !668, file: !668, line: 122, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!668 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!669 = !DISubroutineType(types: !670)
!670 = !{!60, !63, !68}
!671 = !DISubprogram(name: "getenv", scope: !672, file: !672, line: 641, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!672 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!673 = !DISubroutineType(types: !674)
!674 = !{!60, !68}
!675 = !DISubprogram(name: "fwrite_unlocked", scope: !195, file: !195, line: 704, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!676 = !DISubroutineType(types: !677)
!677 = !{!65, !678, !65, !65, !558}
!678 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!681 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 110, type: !682, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !685)
!682 = !DISubroutineType(types: !683)
!683 = !{!63, !63, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!685 = !{!686, !687, !688, !689, !690, !691}
!686 = !DILocalVariable(name: "argc", arg: 1, scope: !681, file: !3, line: 110, type: !63)
!687 = !DILocalVariable(name: "argv", arg: 2, scope: !681, file: !3, line: 110, type: !684)
!688 = !DILocalVariable(name: "ok", scope: !681, file: !3, line: 112, type: !85)
!689 = !DILocalVariable(name: "check_basic_portability", scope: !681, file: !3, line: 113, type: !85)
!690 = !DILocalVariable(name: "check_extra_portability", scope: !681, file: !3, line: 114, type: !85)
!691 = !DILocalVariable(name: "optc", scope: !681, file: !3, line: 115, type: !63)
!692 = !DILocation(line: 0, scope: !681)
!693 = !DILocation(line: 118, column: 21, scope: !681)
!694 = !DILocation(line: 118, column: 3, scope: !681)
!695 = !DILocation(line: 119, column: 3, scope: !681)
!696 = !DILocation(line: 120, column: 3, scope: !681)
!697 = !DILocation(line: 121, column: 3, scope: !681)
!698 = !DILocation(line: 123, column: 3, scope: !681)
!699 = !DILocation(line: 125, column: 3, scope: !681)
!700 = !DILocation(line: 125, column: 18, scope: !681)
!701 = distinct !{!701, !699, !702, !527}
!702 = !DILocation(line: 149, column: 5, scope: !681)
!703 = !DILocation(line: 136, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 128, column: 9)
!705 = distinct !DILexicalBlock(scope: !681, file: !3, line: 126, column: 5)
!706 = !DILocation(line: 142, column: 9, scope: !704)
!707 = !DILocation(line: 144, column: 9, scope: !704)
!708 = !DILocation(line: 147, column: 11, scope: !704)
!709 = !DILocation(line: 151, column: 7, scope: !710)
!710 = distinct !DILexicalBlock(scope: !681, file: !3, line: 151, column: 7)
!711 = !DILocation(line: 151, column: 14, scope: !710)
!712 = !DILocation(line: 151, column: 7, scope: !681)
!713 = !DILocation(line: 157, column: 17, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 157, column: 3)
!715 = distinct !DILexicalBlock(scope: !681, file: !3, line: 157, column: 3)
!716 = !DILocation(line: 157, column: 3, scope: !715)
!717 = !DILocation(line: 153, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !710, file: !3, line: 152, column: 5)
!719 = !DILocation(line: 154, column: 7, scope: !718)
!720 = !DILocation(line: 158, column: 31, scope: !714)
!721 = !DILocalVariable(name: "file", arg: 1, scope: !722, file: !3, line: 253, type: !60)
!722 = distinct !DISubprogram(name: "validate_file_name", scope: !3, file: !3, line: 253, type: !723, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!85, !60, !85, !85}
!725 = !{!721, !726, !727, !728, !729, !730, !731, !769, !772, !775, !776, !780, !783, !786, !787, !789, !792, !795, !796, !797}
!726 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !722, file: !3, line: 253, type: !85)
!727 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !722, file: !3, line: 254, type: !85)
!728 = !DILocalVariable(name: "filelen", scope: !722, file: !3, line: 256, type: !416)
!729 = !DILocalVariable(name: "check_component_lengths", scope: !722, file: !3, line: 259, type: !85)
!730 = !DILocalVariable(name: "file_exists", scope: !722, file: !3, line: 262, type: !85)
!731 = !DILocalVariable(name: "st", scope: !732, file: !3, line: 290, type: !734)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 284, column: 5)
!733 = distinct !DILexicalBlock(scope: !722, file: !3, line: 278, column: 7)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !735, line: 44, size: 1024, elements: !736)
!735 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!736 = !{!737, !739, !741, !743, !745, !747, !749, !750, !751, !752, !754, !755, !757, !765, !766, !767}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !734, file: !735, line: 46, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !125, line: 145, baseType: !67)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !734, file: !735, line: 47, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !125, line: 148, baseType: !67)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !734, file: !735, line: 48, baseType: !742, size: 32, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !125, line: 150, baseType: !7)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !734, file: !735, line: 49, baseType: !744, size: 32, offset: 160)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !125, line: 151, baseType: !7)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !734, file: !735, line: 50, baseType: !746, size: 32, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !125, line: 146, baseType: !7)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !734, file: !735, line: 51, baseType: !748, size: 32, offset: 224)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !125, line: 147, baseType: !7)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !734, file: !735, line: 52, baseType: !738, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !734, file: !735, line: 53, baseType: !738, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !734, file: !735, line: 54, baseType: !124, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !734, file: !735, line: 55, baseType: !753, size: 32, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !125, line: 175, baseType: !63)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !734, file: !735, line: 56, baseType: !63, size: 32, offset: 480)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !734, file: !735, line: 57, baseType: !756, size: 64, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !125, line: 180, baseType: !126)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !734, file: !735, line: 65, baseType: !758, size: 128, offset: 576)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !759, line: 11, size: 128, elements: !760)
!759 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!760 = !{!761, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !758, file: !759, line: 16, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !125, line: 160, baseType: !126)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !758, file: !759, line: 21, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !125, line: 197, baseType: !126)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !734, file: !735, line: 66, baseType: !758, size: 128, offset: 704)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !734, file: !735, line: 67, baseType: !758, size: 128, offset: 832)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !734, file: !735, line: 79, baseType: !768, size: 64, offset: 960)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !278)
!769 = !DILocalVariable(name: "maxsize", scope: !770, file: !3, line: 303, type: !416)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 302, column: 5)
!771 = distinct !DILexicalBlock(scope: !722, file: !3, line: 300, column: 7)
!772 = !DILocalVariable(name: "size", scope: !773, file: !3, line: 309, type: !126)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 308, column: 9)
!774 = distinct !DILexicalBlock(scope: !770, file: !3, line: 305, column: 11)
!775 = !DILocalVariable(name: "dir", scope: !773, file: !3, line: 310, type: !68)
!776 = !DILocalVariable(name: "start", scope: !777, file: !3, line: 339, type: !60)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 339, column: 7)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 338, column: 5)
!779 = distinct !DILexicalBlock(scope: !722, file: !3, line: 337, column: 7)
!780 = !DILocalVariable(name: "length", scope: !781, file: !3, line: 341, type: !65)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 340, column: 9)
!782 = distinct !DILexicalBlock(scope: !777, file: !3, line: 339, column: 7)
!783 = !DILocalVariable(name: "name_max", scope: !784, file: !3, line: 359, type: !416)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 354, column: 5)
!785 = distinct !DILexicalBlock(scope: !722, file: !3, line: 353, column: 7)
!786 = !DILocalVariable(name: "known_name_max", scope: !784, file: !3, line: 362, type: !416)
!787 = !DILocalVariable(name: "start", scope: !788, file: !3, line: 364, type: !60)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 364, column: 7)
!789 = !DILocalVariable(name: "length", scope: !790, file: !3, line: 366, type: !416)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 365, column: 9)
!791 = distinct !DILexicalBlock(scope: !788, file: !3, line: 364, column: 7)
!792 = !DILocalVariable(name: "len", scope: !793, file: !3, line: 372, type: !126)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 371, column: 13)
!794 = distinct !DILexicalBlock(scope: !790, file: !3, line: 368, column: 15)
!795 = !DILocalVariable(name: "dir", scope: !793, file: !3, line: 373, type: !68)
!796 = !DILocalVariable(name: "c", scope: !793, file: !3, line: 374, type: !61)
!797 = !DILocalVariable(name: "c", scope: !798, file: !3, line: 406, type: !61)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 405, column: 13)
!799 = distinct !DILexicalBlock(scope: !790, file: !3, line: 404, column: 15)
!800 = !DILocation(line: 0, scope: !722, inlinedAt: !801)
!801 = distinct !DILocation(line: 158, column: 11, scope: !714)
!802 = !DILocation(line: 256, column: 19, scope: !722, inlinedAt: !801)
!803 = !DILocation(line: 264, column: 31, scope: !804, inlinedAt: !801)
!804 = distinct !DILexicalBlock(scope: !722, file: !3, line: 264, column: 7)
!805 = !DILocalVariable(name: "file", arg: 1, scope: !806, file: !3, line: 168, type: !68)
!806 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !3, file: !3, line: 168, type: !807, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!85, !68}
!809 = !{!805, !810}
!810 = !DILocalVariable(name: "p", scope: !811, file: !3, line: 170, type: !68)
!811 = distinct !DILexicalBlock(scope: !806, file: !3, line: 170, column: 3)
!812 = !DILocation(line: 0, scope: !806, inlinedAt: !813)
!813 = distinct !DILocation(line: 264, column: 36, scope: !804, inlinedAt: !801)
!814 = !DILocation(line: 0, scope: !811, inlinedAt: !813)
!815 = !DILocation(line: 170, column: 36, scope: !816, inlinedAt: !813)
!816 = distinct !DILexicalBlock(scope: !811, file: !3, line: 170, column: 3)
!817 = !DILocation(line: 170, column: 3, scope: !811, inlinedAt: !813)
!818 = !DILocation(line: 170, column: 56, scope: !816, inlinedAt: !813)
!819 = distinct !{!819, !817, !820, !527}
!820 = !DILocation(line: 176, column: 7, scope: !811, inlinedAt: !813)
!821 = !DILocation(line: 171, column: 11, scope: !822, inlinedAt: !813)
!822 = distinct !DILexicalBlock(scope: !816, file: !3, line: 171, column: 9)
!823 = !DILocation(line: 171, column: 19, scope: !822, inlinedAt: !813)
!824 = !DILocation(line: 171, column: 22, scope: !822, inlinedAt: !813)
!825 = !DILocation(line: 171, column: 28, scope: !822, inlinedAt: !813)
!826 = !DILocation(line: 171, column: 9, scope: !816, inlinedAt: !813)
!827 = !DILocation(line: 173, column: 9, scope: !828, inlinedAt: !813)
!828 = distinct !DILexicalBlock(scope: !822, file: !3, line: 172, column: 7)
!829 = !DILocation(line: 264, column: 7, scope: !722, inlinedAt: !801)
!830 = !DILocation(line: 267, column: 32, scope: !831, inlinedAt: !801)
!831 = distinct !DILexicalBlock(scope: !722, file: !3, line: 267, column: 7)
!832 = !DILocation(line: 268, column: 7, scope: !831, inlinedAt: !801)
!833 = !DILocation(line: 267, column: 7, scope: !722, inlinedAt: !801)
!834 = !DILocation(line: 274, column: 7, scope: !835, inlinedAt: !801)
!835 = distinct !DILexicalBlock(scope: !831, file: !3, line: 269, column: 5)
!836 = !DILocation(line: 275, column: 7, scope: !835, inlinedAt: !801)
!837 = !DILocalVariable(name: "file", arg: 1, scope: !838, file: !3, line: 185, type: !68)
!838 = distinct !DISubprogram(name: "portable_chars_only", scope: !3, file: !3, line: 185, type: !839, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{!85, !68, !65}
!841 = !{!837, !842, !843, !844, !845, !858}
!842 = !DILocalVariable(name: "filelen", arg: 2, scope: !838, file: !3, line: 185, type: !65)
!843 = !DILocalVariable(name: "validlen", scope: !838, file: !3, line: 187, type: !65)
!844 = !DILocalVariable(name: "invalid", scope: !838, file: !3, line: 192, type: !68)
!845 = !DILocalVariable(name: "mbstate", scope: !846, file: !3, line: 196, type: !848)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 195, column: 5)
!847 = distinct !DILexicalBlock(scope: !838, file: !3, line: 194, column: 7)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !231, line: 6, baseType: !849)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !233, line: 21, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 13, size: 64, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !850, file: !233, line: 15, baseType: !63, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !850, file: !233, line: 20, baseType: !854, size: 32, offset: 32)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !233, line: 16, size: 32, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !854, file: !233, line: 18, baseType: !7, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !854, file: !233, line: 19, baseType: !242, size: 32)
!858 = !DILocalVariable(name: "charlen", scope: !846, file: !3, line: 197, type: !65)
!859 = !DILocation(line: 0, scope: !838, inlinedAt: !860)
!860 = distinct !DILocation(line: 280, column: 13, scope: !861, inlinedAt: !801)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 280, column: 11)
!862 = distinct !DILexicalBlock(scope: !733, file: !3, line: 279, column: 5)
!863 = !DILocation(line: 187, column: 21, scope: !838, inlinedAt: !860)
!864 = !DILocation(line: 192, column: 30, scope: !838, inlinedAt: !860)
!865 = !DILocation(line: 194, column: 7, scope: !847, inlinedAt: !860)
!866 = !DILocation(line: 194, column: 7, scope: !838, inlinedAt: !860)
!867 = !DILocation(line: 196, column: 7, scope: !846, inlinedAt: !860)
!868 = !DILocation(line: 196, column: 17, scope: !846, inlinedAt: !860)
!869 = !DILocalVariable(name: "ps", arg: 1, scope: !870, file: !871, line: 1135, type: !874)
!870 = distinct !DISubprogram(name: "mbszero", scope: !871, file: !871, line: 1135, type: !872, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !875)
!871 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!872 = !DISubroutineType(types: !873)
!873 = !{null, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!875 = !{!869}
!876 = !DILocation(line: 0, scope: !870, inlinedAt: !877)
!877 = distinct !DILocation(line: 196, column: 26, scope: !846, inlinedAt: !860)
!878 = !DILocalVariable(name: "__dest", arg: 1, scope: !879, file: !880, line: 57, type: !62)
!879 = distinct !DISubprogram(name: "memset", scope: !880, file: !880, line: 57, type: !881, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !883)
!880 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!881 = !DISubroutineType(types: !882)
!882 = !{!62, !62, !63, !65}
!883 = !{!878, !884, !885}
!884 = !DILocalVariable(name: "__ch", arg: 2, scope: !879, file: !880, line: 57, type: !63)
!885 = !DILocalVariable(name: "__len", arg: 3, scope: !879, file: !880, line: 57, type: !65)
!886 = !DILocation(line: 0, scope: !879, inlinedAt: !887)
!887 = distinct !DILocation(line: 1137, column: 3, scope: !870, inlinedAt: !877)
!888 = !DILocation(line: 59, column: 10, scope: !879, inlinedAt: !887)
!889 = !DILocation(line: 197, column: 49, scope: !846, inlinedAt: !860)
!890 = !DILocation(line: 197, column: 24, scope: !846, inlinedAt: !860)
!891 = !DILocation(line: 0, scope: !846, inlinedAt: !860)
!892 = !DILocation(line: 198, column: 7, scope: !846, inlinedAt: !860)
!893 = !DILocation(line: 204, column: 5, scope: !847, inlinedAt: !860)
!894 = !DILocation(line: 280, column: 11, scope: !862, inlinedAt: !801)
!895 = !DILocation(line: 290, column: 7, scope: !732, inlinedAt: !801)
!896 = !DILocation(line: 290, column: 19, scope: !732, inlinedAt: !801)
!897 = !DILocation(line: 291, column: 11, scope: !898, inlinedAt: !801)
!898 = distinct !DILexicalBlock(scope: !732, file: !3, line: 291, column: 11)
!899 = !DILocation(line: 291, column: 29, scope: !898, inlinedAt: !801)
!900 = !DILocation(line: 291, column: 11, scope: !732, inlinedAt: !801)
!901 = !DILocation(line: 298, column: 5, scope: !733, inlinedAt: !801)
!902 = !DILocation(line: 353, column: 7, scope: !722, inlinedAt: !801)
!903 = !DILocation(line: 293, column: 16, scope: !904, inlinedAt: !801)
!904 = distinct !DILexicalBlock(scope: !898, file: !3, line: 293, column: 16)
!905 = !DILocation(line: 293, column: 22, scope: !904, inlinedAt: !801)
!906 = !DILocation(line: 293, column: 32, scope: !904, inlinedAt: !801)
!907 = !DILocation(line: 295, column: 11, scope: !908, inlinedAt: !801)
!908 = distinct !DILexicalBlock(scope: !904, file: !3, line: 294, column: 9)
!909 = !DILocation(line: 301, column: 25, scope: !771, inlinedAt: !801)
!910 = !DILocation(line: 310, column: 30, scope: !773, inlinedAt: !801)
!911 = !DILocation(line: 310, column: 36, scope: !773, inlinedAt: !801)
!912 = !DILocation(line: 0, scope: !773, inlinedAt: !801)
!913 = !DILocation(line: 311, column: 17, scope: !773, inlinedAt: !801)
!914 = !DILocation(line: 312, column: 18, scope: !773, inlinedAt: !801)
!915 = !DILocation(line: 313, column: 20, scope: !916, inlinedAt: !801)
!916 = distinct !DILexicalBlock(scope: !773, file: !3, line: 313, column: 15)
!917 = !DILocation(line: 313, column: 24, scope: !916, inlinedAt: !801)
!918 = !DILocation(line: 313, column: 27, scope: !916, inlinedAt: !801)
!919 = !DILocation(line: 313, column: 33, scope: !916, inlinedAt: !801)
!920 = !DILocation(line: 313, column: 15, scope: !773, inlinedAt: !801)
!921 = !DILocation(line: 315, column: 15, scope: !922, inlinedAt: !801)
!922 = distinct !DILexicalBlock(scope: !916, file: !3, line: 314, column: 13)
!923 = !DILocation(line: 0, scope: !770, inlinedAt: !801)
!924 = !DILocation(line: 323, column: 19, scope: !925, inlinedAt: !801)
!925 = distinct !DILexicalBlock(scope: !770, file: !3, line: 323, column: 11)
!926 = !DILocation(line: 323, column: 11, scope: !770, inlinedAt: !801)
!927 = !DILocation(line: 215, column: 3, scope: !928, inlinedAt: !933)
!928 = distinct !DISubprogram(name: "component_start", scope: !3, file: !3, line: 213, type: !929, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{!60, !60}
!931 = !{!932}
!932 = !DILocalVariable(name: "f", arg: 1, scope: !928, file: !3, line: 213, type: !60)
!933 = distinct !DILocation(line: 339, column: 42, scope: !782, inlinedAt: !801)
!934 = !DILocation(line: 325, column: 11, scope: !935, inlinedAt: !801)
!935 = distinct !DILexicalBlock(scope: !925, file: !3, line: 324, column: 9)
!936 = !DILocation(line: 0, scope: !928, inlinedAt: !933)
!937 = !DILocation(line: 215, column: 10, scope: !928, inlinedAt: !933)
!938 = !DILocation(line: 216, column: 6, scope: !928, inlinedAt: !933)
!939 = distinct !{!939, !940, !941, !527}
!940 = !DILocation(line: 339, column: 7, scope: !777, inlinedAt: !801)
!941 = !DILocation(line: 350, column: 9, scope: !777, inlinedAt: !801)
!942 = !DILocation(line: 0, scope: !943, inlinedAt: !950)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 227, column: 3)
!944 = distinct !DISubprogram(name: "component_len", scope: !3, file: !3, line: 224, type: !945, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!65, !68}
!947 = !{!948, !949}
!948 = !DILocalVariable(name: "f", arg: 1, scope: !944, file: !3, line: 224, type: !68)
!949 = !DILocalVariable(name: "len", scope: !944, file: !3, line: 226, type: !65)
!950 = distinct !DILocation(line: 341, column: 27, scope: !781, inlinedAt: !801)
!951 = !DILocation(line: 0, scope: !944, inlinedAt: !950)
!952 = !DILocation(line: 227, column: 17, scope: !953, inlinedAt: !950)
!953 = distinct !DILexicalBlock(scope: !943, file: !3, line: 227, column: 3)
!954 = !DILocation(line: 227, column: 31, scope: !953, inlinedAt: !950)
!955 = !DILocation(line: 227, column: 45, scope: !953, inlinedAt: !950)
!956 = !DILocation(line: 227, column: 3, scope: !953, inlinedAt: !950)
!957 = distinct !{!957, !958, !959, !527}
!958 = !DILocation(line: 227, column: 3, scope: !943, inlinedAt: !950)
!959 = !DILocation(line: 228, column: 5, scope: !943, inlinedAt: !950)
!960 = !DILocation(line: 0, scope: !781, inlinedAt: !801)
!961 = !DILocation(line: 343, column: 32, scope: !962, inlinedAt: !801)
!962 = distinct !DILexicalBlock(scope: !781, file: !3, line: 343, column: 15)
!963 = !DILocation(line: 0, scope: !777, inlinedAt: !801)
!964 = !DILocation(line: 364, column: 7, scope: !788, inlinedAt: !801)
!965 = !DILocation(line: 0, scope: !784, inlinedAt: !801)
!966 = !DILocation(line: 362, column: 13, scope: !784, inlinedAt: !801)
!967 = !DILocation(line: 0, scope: !788, inlinedAt: !801)
!968 = !DILocation(line: 0, scope: !928, inlinedAt: !969)
!969 = distinct !DILocation(line: 364, column: 42, scope: !791, inlinedAt: !801)
!970 = !DILocation(line: 215, column: 3, scope: !928, inlinedAt: !969)
!971 = !DILocation(line: 215, column: 10, scope: !928, inlinedAt: !969)
!972 = !DILocation(line: 216, column: 6, scope: !928, inlinedAt: !969)
!973 = !DILocation(line: 368, column: 15, scope: !794, inlinedAt: !801)
!974 = !DILocation(line: 368, column: 15, scope: !790, inlinedAt: !801)
!975 = !DILocation(line: 373, column: 40, scope: !793, inlinedAt: !801)
!976 = !DILocation(line: 373, column: 34, scope: !793, inlinedAt: !801)
!977 = !DILocation(line: 0, scope: !793, inlinedAt: !801)
!978 = !DILocation(line: 375, column: 15, scope: !793, inlinedAt: !801)
!979 = !DILocation(line: 375, column: 21, scope: !793, inlinedAt: !801)
!980 = !DILocation(line: 376, column: 22, scope: !793, inlinedAt: !801)
!981 = !DILocation(line: 377, column: 21, scope: !793, inlinedAt: !801)
!982 = !DILocation(line: 378, column: 22, scope: !793, inlinedAt: !801)
!983 = !DILocation(line: 379, column: 21, scope: !984, inlinedAt: !801)
!984 = distinct !DILexicalBlock(scope: !793, file: !3, line: 379, column: 19)
!985 = !DILocation(line: 379, column: 19, scope: !793, inlinedAt: !801)
!986 = !DILocation(line: 382, column: 25, scope: !984, inlinedAt: !801)
!987 = !DILocation(line: 382, column: 17, scope: !984, inlinedAt: !801)
!988 = !DILocation(line: 392, column: 21, scope: !989, inlinedAt: !801)
!989 = distinct !DILexicalBlock(scope: !984, file: !3, line: 383, column: 19)
!990 = !DILocation(line: 395, column: 28, scope: !989, inlinedAt: !801)
!991 = !DILocation(line: 396, column: 21, scope: !989, inlinedAt: !801)
!992 = !DILocation(line: 397, column: 28, scope: !989, inlinedAt: !801)
!993 = !DILocation(line: 0, scope: !794, inlinedAt: !801)
!994 = !DILocation(line: 0, scope: !944, inlinedAt: !995)
!995 = distinct !DILocation(line: 402, column: 20, scope: !790, inlinedAt: !801)
!996 = !DILocation(line: 227, column: 8, scope: !943, inlinedAt: !995)
!997 = !DILocation(line: 0, scope: !943, inlinedAt: !995)
!998 = !DILocation(line: 227, column: 17, scope: !953, inlinedAt: !995)
!999 = !DILocation(line: 227, column: 31, scope: !953, inlinedAt: !995)
!1000 = !DILocation(line: 227, column: 45, scope: !953, inlinedAt: !995)
!1001 = !DILocation(line: 227, column: 3, scope: !953, inlinedAt: !995)
!1002 = distinct !{!1002, !1003, !1004, !527}
!1003 = !DILocation(line: 227, column: 3, scope: !943, inlinedAt: !995)
!1004 = !DILocation(line: 228, column: 5, scope: !943, inlinedAt: !995)
!1005 = !DILocation(line: 0, scope: !790, inlinedAt: !801)
!1006 = !DILocation(line: 404, column: 24, scope: !799, inlinedAt: !801)
!1007 = !DILocation(line: 404, column: 15, scope: !790, inlinedAt: !801)
!1008 = distinct !{!1008, !964, !1009, !527}
!1009 = !DILocation(line: 417, column: 9, scope: !788, inlinedAt: !801)
!1010 = !DILocation(line: 0, scope: !798, inlinedAt: !801)
!1011 = !DILocation(line: 407, column: 29, scope: !798, inlinedAt: !801)
!1012 = !DILocation(line: 408, column: 15, scope: !798, inlinedAt: !801)
!1013 = !DILocation(line: 412, column: 29, scope: !798, inlinedAt: !801)
!1014 = !DILocation(line: 158, column: 8, scope: !714)
!1015 = !DILocation(line: 157, column: 25, scope: !714)
!1016 = distinct !{!1016, !716, !1017, !527}
!1017 = !DILocation(line: 159, column: 79, scope: !715)
!1018 = !DILocation(line: 161, column: 10, scope: !681)
!1019 = !DILocation(line: 162, column: 1, scope: !681)
!1020 = !DISubprogram(name: "bindtextdomain", scope: !550, file: !550, line: 86, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!60, !68, !68}
!1023 = !DISubprogram(name: "textdomain", scope: !550, file: !550, line: 82, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1024 = !DISubprogram(name: "atexit", scope: !672, file: !672, line: 602, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!63, !221}
!1027 = !DISubprogram(name: "getopt_long", scope: !162, file: !162, line: 66, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!63, !63, !1030, !68, !1032, !167}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1033 = !DISubprogram(name: "lstat", scope: !1034, file: !1034, line: 313, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1034 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!63, !557, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!1039 = !DISubprogram(name: "pathconf", scope: !1040, file: !1040, line: 633, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1040 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!126, !68, !63}
!1043 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !179, file: !179, line: 50, type: !486, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !1044)
!1044 = !{!1045}
!1045 = !DILocalVariable(name: "file", arg: 1, scope: !1043, file: !179, line: 50, type: !68)
!1046 = !DILocation(line: 0, scope: !1043)
!1047 = !DILocation(line: 52, column: 13, scope: !1043)
!1048 = !DILocation(line: 53, column: 1, scope: !1043)
!1049 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !179, file: !179, line: 87, type: !1050, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !85}
!1052 = !{!1053}
!1053 = !DILocalVariable(name: "ignore", arg: 1, scope: !1049, file: !179, line: 87, type: !85)
!1054 = !DILocation(line: 0, scope: !1049)
!1055 = !DILocation(line: 89, column: 16, scope: !1049)
!1056 = !{!1057, !1057, i64 0}
!1057 = !{!"_Bool", !474, i64 0}
!1058 = !DILocation(line: 90, column: 1, scope: !1049)
!1059 = distinct !DISubprogram(name: "close_stdout", scope: !179, file: !179, line: 116, type: !222, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !1060)
!1060 = !{!1061}
!1061 = !DILocalVariable(name: "write_error", scope: !1062, file: !179, line: 121, type: !68)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !179, line: 120, column: 5)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !179, line: 118, column: 7)
!1064 = !DILocation(line: 118, column: 21, scope: !1063)
!1065 = !DILocation(line: 118, column: 7, scope: !1063)
!1066 = !DILocation(line: 118, column: 29, scope: !1063)
!1067 = !DILocation(line: 119, column: 7, scope: !1063)
!1068 = !DILocation(line: 119, column: 12, scope: !1063)
!1069 = !{i8 0, i8 2}
!1070 = !DILocation(line: 119, column: 25, scope: !1063)
!1071 = !DILocation(line: 119, column: 28, scope: !1063)
!1072 = !DILocation(line: 119, column: 34, scope: !1063)
!1073 = !DILocation(line: 118, column: 7, scope: !1059)
!1074 = !DILocation(line: 121, column: 33, scope: !1062)
!1075 = !DILocation(line: 0, scope: !1062)
!1076 = !DILocation(line: 122, column: 11, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1062, file: !179, line: 122, column: 11)
!1078 = !DILocation(line: 0, scope: !1077)
!1079 = !DILocation(line: 122, column: 11, scope: !1062)
!1080 = !DILocation(line: 123, column: 9, scope: !1077)
!1081 = !DILocation(line: 126, column: 9, scope: !1077)
!1082 = !DILocation(line: 128, column: 14, scope: !1062)
!1083 = !DILocation(line: 128, column: 7, scope: !1062)
!1084 = !DILocation(line: 133, column: 42, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1059, file: !179, line: 133, column: 7)
!1086 = !DILocation(line: 133, column: 28, scope: !1085)
!1087 = !DILocation(line: 133, column: 50, scope: !1085)
!1088 = !DILocation(line: 133, column: 7, scope: !1059)
!1089 = !DILocation(line: 134, column: 12, scope: !1085)
!1090 = !DILocation(line: 134, column: 5, scope: !1085)
!1091 = !DILocation(line: 135, column: 1, scope: !1059)
!1092 = distinct !DISubprogram(name: "verror", scope: !186, file: !186, line: 251, type: !1093, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !63, !63, !68, !194}
!1095 = !{!1096, !1097, !1098, !1099}
!1096 = !DILocalVariable(name: "status", arg: 1, scope: !1092, file: !186, line: 251, type: !63)
!1097 = !DILocalVariable(name: "errnum", arg: 2, scope: !1092, file: !186, line: 251, type: !63)
!1098 = !DILocalVariable(name: "message", arg: 3, scope: !1092, file: !186, line: 251, type: !68)
!1099 = !DILocalVariable(name: "args", arg: 4, scope: !1092, file: !186, line: 251, type: !194)
!1100 = !DILocation(line: 0, scope: !1092)
!1101 = !DILocation(line: 251, column: 1, scope: !1092)
!1102 = !DILocation(line: 261, column: 3, scope: !1092)
!1103 = !DILocation(line: 265, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1092, file: !186, line: 265, column: 7)
!1105 = !DILocation(line: 265, column: 7, scope: !1092)
!1106 = !DILocation(line: 266, column: 5, scope: !1104)
!1107 = !DILocation(line: 272, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !186, line: 268, column: 5)
!1109 = !DILocation(line: 276, column: 3, scope: !1092)
!1110 = !{i64 0, i64 8, !472, i64 8, i64 8, !472, i64 16, i64 8, !472, i64 24, i64 4, !561, i64 28, i64 4, !561}
!1111 = !DILocation(line: 282, column: 1, scope: !1092)
!1112 = distinct !DISubprogram(name: "flush_stdout", scope: !186, file: !186, line: 163, type: !222, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1113)
!1113 = !{!1114}
!1114 = !DILocalVariable(name: "stdout_fd", scope: !1112, file: !186, line: 166, type: !63)
!1115 = !DILocation(line: 0, scope: !1112)
!1116 = !DILocalVariable(name: "fd", arg: 1, scope: !1117, file: !186, line: 145, type: !63)
!1117 = distinct !DISubprogram(name: "is_open", scope: !186, file: !186, line: 145, type: !1118, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!63, !63}
!1120 = !{!1116}
!1121 = !DILocation(line: 0, scope: !1117, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 182, column: 25, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1112, file: !186, line: 182, column: 7)
!1124 = !DILocation(line: 157, column: 15, scope: !1117, inlinedAt: !1122)
!1125 = !DILocation(line: 182, column: 25, scope: !1123)
!1126 = !DILocation(line: 182, column: 7, scope: !1112)
!1127 = !DILocation(line: 184, column: 5, scope: !1123)
!1128 = !DILocation(line: 185, column: 1, scope: !1112)
!1129 = distinct !DISubprogram(name: "error_tail", scope: !186, file: !186, line: 219, type: !1093, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1130)
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DILocalVariable(name: "status", arg: 1, scope: !1129, file: !186, line: 219, type: !63)
!1132 = !DILocalVariable(name: "errnum", arg: 2, scope: !1129, file: !186, line: 219, type: !63)
!1133 = !DILocalVariable(name: "message", arg: 3, scope: !1129, file: !186, line: 219, type: !68)
!1134 = !DILocalVariable(name: "args", arg: 4, scope: !1129, file: !186, line: 219, type: !194)
!1135 = !DILocation(line: 0, scope: !1129)
!1136 = !DILocation(line: 219, column: 1, scope: !1129)
!1137 = !DILocation(line: 229, column: 13, scope: !1129)
!1138 = !DILocation(line: 229, column: 3, scope: !1129)
!1139 = !DILocalVariable(name: "__stream", arg: 1, scope: !1140, file: !1141, line: 132, type: !1144)
!1140 = distinct !DISubprogram(name: "vfprintf", scope: !1141, file: !1141, line: 132, type: !1142, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1179)
!1141 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!63, !1144, !557, !196}
!1144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1147, file: !102, line: 51, baseType: !63, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1147, file: !102, line: 54, baseType: !60, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1147, file: !102, line: 55, baseType: !60, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1147, file: !102, line: 56, baseType: !60, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1147, file: !102, line: 57, baseType: !60, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1147, file: !102, line: 58, baseType: !60, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1147, file: !102, line: 59, baseType: !60, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1147, file: !102, line: 60, baseType: !60, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1147, file: !102, line: 61, baseType: !60, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1147, file: !102, line: 64, baseType: !60, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1147, file: !102, line: 65, baseType: !60, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1147, file: !102, line: 66, baseType: !60, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1147, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1147, file: !102, line: 70, baseType: !1163, size: 64, offset: 832)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1147, file: !102, line: 72, baseType: !63, size: 32, offset: 896)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1147, file: !102, line: 73, baseType: !63, size: 32, offset: 928)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1147, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1147, file: !102, line: 77, baseType: !64, size: 16, offset: 1024)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1147, file: !102, line: 78, baseType: !129, size: 8, offset: 1040)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1147, file: !102, line: 79, baseType: !131, size: 8, offset: 1048)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1147, file: !102, line: 81, baseType: !135, size: 64, offset: 1088)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1147, file: !102, line: 89, baseType: !138, size: 64, offset: 1152)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1147, file: !102, line: 91, baseType: !140, size: 64, offset: 1216)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1147, file: !102, line: 92, baseType: !143, size: 64, offset: 1280)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1147, file: !102, line: 93, baseType: !1163, size: 64, offset: 1344)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1147, file: !102, line: 94, baseType: !62, size: 64, offset: 1408)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1147, file: !102, line: 95, baseType: !65, size: 64, offset: 1472)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1147, file: !102, line: 96, baseType: !63, size: 32, offset: 1536)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1147, file: !102, line: 98, baseType: !150, size: 160, offset: 1568)
!1179 = !{!1139, !1180, !1181}
!1180 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1140, file: !1141, line: 133, type: !557)
!1181 = !DILocalVariable(name: "__ap", arg: 3, scope: !1140, file: !1141, line: 133, type: !196)
!1182 = !DILocation(line: 0, scope: !1140, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 229, column: 3, scope: !1129)
!1184 = !DILocation(line: 135, column: 10, scope: !1140, inlinedAt: !1183)
!1185 = !{!1186, !1188}
!1186 = distinct !{!1186, !1187, !"vfprintf.inline: argument 0"}
!1187 = distinct !{!1187, !"vfprintf.inline"}
!1188 = distinct !{!1188, !1187, !"vfprintf.inline: argument 1"}
!1189 = !DILocation(line: 232, column: 3, scope: !1129)
!1190 = !DILocation(line: 233, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1129, file: !186, line: 233, column: 7)
!1192 = !DILocation(line: 233, column: 7, scope: !1129)
!1193 = !DILocalVariable(name: "errnum", arg: 1, scope: !1194, file: !186, line: 188, type: !63)
!1194 = distinct !DISubprogram(name: "print_errno_message", scope: !186, file: !186, line: 188, type: !462, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1195)
!1195 = !{!1193, !1196, !1197}
!1196 = !DILocalVariable(name: "s", scope: !1194, file: !186, line: 190, type: !68)
!1197 = !DILocalVariable(name: "errbuf", scope: !1194, file: !186, line: 193, type: !1198)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 8192, elements: !1199)
!1199 = !{!1200}
!1200 = !DISubrange(count: 1024)
!1201 = !DILocation(line: 0, scope: !1194, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 234, column: 5, scope: !1191)
!1203 = !DILocation(line: 193, column: 3, scope: !1194, inlinedAt: !1202)
!1204 = !DILocation(line: 193, column: 8, scope: !1194, inlinedAt: !1202)
!1205 = !DILocation(line: 195, column: 7, scope: !1194, inlinedAt: !1202)
!1206 = !DILocation(line: 207, column: 9, scope: !1207, inlinedAt: !1202)
!1207 = distinct !DILexicalBlock(scope: !1194, file: !186, line: 207, column: 7)
!1208 = !DILocation(line: 207, column: 7, scope: !1194, inlinedAt: !1202)
!1209 = !DILocation(line: 208, column: 9, scope: !1207, inlinedAt: !1202)
!1210 = !DILocation(line: 208, column: 5, scope: !1207, inlinedAt: !1202)
!1211 = !DILocation(line: 214, column: 3, scope: !1194, inlinedAt: !1202)
!1212 = !DILocation(line: 216, column: 1, scope: !1194, inlinedAt: !1202)
!1213 = !DILocation(line: 234, column: 5, scope: !1191)
!1214 = !DILocation(line: 238, column: 3, scope: !1129)
!1215 = !DILocalVariable(name: "__c", arg: 1, scope: !1216, file: !1217, line: 101, type: !63)
!1216 = distinct !DISubprogram(name: "putc_unlocked", scope: !1217, file: !1217, line: 101, type: !1218, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1220)
!1217 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!63, !63, !1145}
!1220 = !{!1215, !1221}
!1221 = !DILocalVariable(name: "__stream", arg: 2, scope: !1216, file: !1217, line: 101, type: !1145)
!1222 = !DILocation(line: 0, scope: !1216, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 238, column: 3, scope: !1129)
!1224 = !DILocation(line: 103, column: 10, scope: !1216, inlinedAt: !1223)
!1225 = !{!1226, !473, i64 40}
!1226 = !{!"_IO_FILE", !562, i64 0, !473, i64 8, !473, i64 16, !473, i64 24, !473, i64 32, !473, i64 40, !473, i64 48, !473, i64 56, !473, i64 64, !473, i64 72, !473, i64 80, !473, i64 88, !473, i64 96, !473, i64 104, !562, i64 112, !562, i64 116, !1227, i64 120, !596, i64 128, !474, i64 130, !474, i64 131, !473, i64 136, !1227, i64 144, !473, i64 152, !473, i64 160, !473, i64 168, !473, i64 176, !1227, i64 184, !562, i64 192, !474, i64 196}
!1227 = !{!"long", !474, i64 0}
!1228 = !{!1226, !473, i64 48}
!1229 = !{!"branch_weights", i32 2000, i32 1}
!1230 = !DILocation(line: 240, column: 3, scope: !1129)
!1231 = !DILocation(line: 241, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1129, file: !186, line: 241, column: 7)
!1233 = !DILocation(line: 241, column: 7, scope: !1129)
!1234 = !DILocation(line: 242, column: 5, scope: !1232)
!1235 = !DILocation(line: 243, column: 1, scope: !1129)
!1236 = !DISubprogram(name: "strerror_r", scope: !1237, file: !1237, line: 444, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1237 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!60, !63, !60, !65}
!1240 = !DISubprogram(name: "fflush_unlocked", scope: !195, file: !195, line: 239, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!63, !1145}
!1243 = !DISubprogram(name: "fcntl", scope: !1244, file: !1244, line: 149, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1244 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!63, !63, !63, null}
!1247 = distinct !DISubprogram(name: "error", scope: !186, file: !186, line: 285, type: !1248, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1250)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !63, !63, !68, null}
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DILocalVariable(name: "status", arg: 1, scope: !1247, file: !186, line: 285, type: !63)
!1252 = !DILocalVariable(name: "errnum", arg: 2, scope: !1247, file: !186, line: 285, type: !63)
!1253 = !DILocalVariable(name: "message", arg: 3, scope: !1247, file: !186, line: 285, type: !68)
!1254 = !DILocalVariable(name: "ap", scope: !1247, file: !186, line: 287, type: !194)
!1255 = !DILocation(line: 0, scope: !1247)
!1256 = !DILocation(line: 287, column: 3, scope: !1247)
!1257 = !DILocation(line: 287, column: 11, scope: !1247)
!1258 = !DILocation(line: 288, column: 3, scope: !1247)
!1259 = !DILocation(line: 289, column: 3, scope: !1247)
!1260 = !DILocation(line: 290, column: 3, scope: !1247)
!1261 = !DILocation(line: 291, column: 1, scope: !1247)
!1262 = !DILocation(line: 0, scope: !191)
!1263 = !DILocation(line: 298, column: 1, scope: !191)
!1264 = !DILocation(line: 302, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !191, file: !186, line: 302, column: 7)
!1266 = !DILocation(line: 302, column: 7, scope: !191)
!1267 = !DILocation(line: 307, column: 11, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !186, line: 307, column: 11)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !186, line: 303, column: 5)
!1270 = !DILocation(line: 307, column: 27, scope: !1268)
!1271 = !DILocation(line: 308, column: 11, scope: !1268)
!1272 = !DILocation(line: 308, column: 28, scope: !1268)
!1273 = !DILocation(line: 308, column: 25, scope: !1268)
!1274 = !DILocation(line: 309, column: 15, scope: !1268)
!1275 = !DILocation(line: 309, column: 33, scope: !1268)
!1276 = !DILocation(line: 310, column: 19, scope: !1268)
!1277 = !DILocation(line: 311, column: 22, scope: !1268)
!1278 = !DILocation(line: 311, column: 56, scope: !1268)
!1279 = !DILocation(line: 307, column: 11, scope: !1269)
!1280 = !DILocation(line: 316, column: 21, scope: !1269)
!1281 = !DILocation(line: 317, column: 23, scope: !1269)
!1282 = !DILocation(line: 318, column: 5, scope: !1269)
!1283 = !DILocation(line: 327, column: 3, scope: !191)
!1284 = !DILocation(line: 331, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !191, file: !186, line: 331, column: 7)
!1286 = !DILocation(line: 331, column: 7, scope: !191)
!1287 = !DILocation(line: 332, column: 5, scope: !1285)
!1288 = !DILocation(line: 338, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !186, line: 334, column: 5)
!1290 = !DILocation(line: 346, column: 3, scope: !191)
!1291 = !DILocation(line: 350, column: 3, scope: !191)
!1292 = !DILocation(line: 356, column: 1, scope: !191)
!1293 = distinct !DISubprogram(name: "error_at_line", scope: !186, file: !186, line: 359, type: !1294, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1296)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !63, !63, !68, !7, !68, null}
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302}
!1297 = !DILocalVariable(name: "status", arg: 1, scope: !1293, file: !186, line: 359, type: !63)
!1298 = !DILocalVariable(name: "errnum", arg: 2, scope: !1293, file: !186, line: 359, type: !63)
!1299 = !DILocalVariable(name: "file_name", arg: 3, scope: !1293, file: !186, line: 359, type: !68)
!1300 = !DILocalVariable(name: "line_number", arg: 4, scope: !1293, file: !186, line: 360, type: !7)
!1301 = !DILocalVariable(name: "message", arg: 5, scope: !1293, file: !186, line: 360, type: !68)
!1302 = !DILocalVariable(name: "ap", scope: !1293, file: !186, line: 362, type: !194)
!1303 = !DILocation(line: 0, scope: !1293)
!1304 = !DILocation(line: 362, column: 3, scope: !1293)
!1305 = !DILocation(line: 362, column: 11, scope: !1293)
!1306 = !DILocation(line: 363, column: 3, scope: !1293)
!1307 = !DILocation(line: 364, column: 3, scope: !1293)
!1308 = !DILocation(line: 366, column: 3, scope: !1293)
!1309 = !DILocation(line: 367, column: 1, scope: !1293)
!1310 = distinct !DISubprogram(name: "getprogname", scope: !386, file: !386, line: 54, type: !1311, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !553)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!68}
!1313 = !DILocation(line: 58, column: 10, scope: !1310)
!1314 = !DILocation(line: 58, column: 3, scope: !1310)
!1315 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !227, file: !227, line: 27, type: !1316, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1319)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!65, !68, !65, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1319 = !{!1320, !1321, !1322}
!1320 = !DILocalVariable(name: "s", arg: 1, scope: !1315, file: !227, line: 27, type: !68)
!1321 = !DILocalVariable(name: "n", arg: 2, scope: !1315, file: !227, line: 27, type: !65)
!1322 = !DILocalVariable(name: "ps", arg: 3, scope: !1315, file: !227, line: 27, type: !1318)
!1323 = !DILocation(line: 0, scope: !1315)
!1324 = !DILocation(line: 29, column: 10, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1315, file: !227, line: 29, column: 7)
!1326 = !DILocation(line: 29, column: 7, scope: !1315)
!1327 = !DILocation(line: 31, column: 10, scope: !1315)
!1328 = !DILocation(line: 31, column: 3, scope: !1315)
!1329 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !388, file: !388, line: 82, type: !1330, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1345)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!65, !1332, !68, !65, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !66, line: 74, baseType: !7)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !231, line: 6, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !233, line: 21, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 13, size: 64, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1337, file: !233, line: 15, baseType: !63, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1337, file: !233, line: 20, baseType: !1341, size: 32, offset: 32)
!1341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !233, line: 16, size: 32, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1341, file: !233, line: 18, baseType: !7, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1341, file: !233, line: 19, baseType: !242, size: 32)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352}
!1346 = !DILocalVariable(name: "pwc", arg: 1, scope: !1329, file: !388, line: 82, type: !1332)
!1347 = !DILocalVariable(name: "s", arg: 2, scope: !1329, file: !388, line: 82, type: !68)
!1348 = !DILocalVariable(name: "n", arg: 3, scope: !1329, file: !388, line: 82, type: !65)
!1349 = !DILocalVariable(name: "ps", arg: 4, scope: !1329, file: !388, line: 82, type: !1334)
!1350 = !DILocalVariable(name: "wc", scope: !1329, file: !388, line: 98, type: !1333)
!1351 = !DILocalVariable(name: "ret", scope: !1329, file: !388, line: 134, type: !65)
!1352 = !DILocalVariable(name: "uc", scope: !1353, file: !388, line: 151, type: !70)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !388, line: 150, column: 5)
!1354 = distinct !DILexicalBlock(scope: !1329, file: !388, line: 149, column: 7)
!1355 = !DILocation(line: 0, scope: !1329)
!1356 = !DILocation(line: 98, column: 3, scope: !1329)
!1357 = !DILocation(line: 99, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1329, file: !388, line: 99, column: 7)
!1359 = !DILocation(line: 99, column: 7, scope: !1329)
!1360 = !DILocation(line: 140, column: 9, scope: !1329)
!1361 = !DILocation(line: 149, column: 19, scope: !1354)
!1362 = !DILocation(line: 149, column: 26, scope: !1354)
!1363 = !DILocation(line: 149, column: 41, scope: !1354)
!1364 = !DILocation(line: 149, column: 7, scope: !1329)
!1365 = !DILocation(line: 151, column: 26, scope: !1353)
!1366 = !DILocation(line: 0, scope: !1353)
!1367 = !DILocation(line: 152, column: 14, scope: !1353)
!1368 = !DILocation(line: 152, column: 12, scope: !1353)
!1369 = !DILocation(line: 158, column: 1, scope: !1329)
!1370 = !DISubprogram(name: "mbrtowc", scope: !1371, file: !1371, line: 297, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1371 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!65, !1374, !557, !65, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1332)
!1375 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1334)
!1376 = distinct !DISubprogram(name: "set_program_name", scope: !246, file: !246, line: 37, type: !486, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !1377)
!1377 = !{!1378, !1379, !1380}
!1378 = !DILocalVariable(name: "argv0", arg: 1, scope: !1376, file: !246, line: 37, type: !68)
!1379 = !DILocalVariable(name: "slash", scope: !1376, file: !246, line: 44, type: !68)
!1380 = !DILocalVariable(name: "base", scope: !1376, file: !246, line: 45, type: !68)
!1381 = !DILocation(line: 0, scope: !1376)
!1382 = !DILocation(line: 44, column: 23, scope: !1376)
!1383 = !DILocation(line: 45, column: 22, scope: !1376)
!1384 = !DILocation(line: 46, column: 17, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1376, file: !246, line: 46, column: 7)
!1386 = !DILocation(line: 46, column: 9, scope: !1385)
!1387 = !DILocation(line: 46, column: 25, scope: !1385)
!1388 = !DILocation(line: 46, column: 40, scope: !1385)
!1389 = !DILocalVariable(name: "__s1", arg: 1, scope: !1390, file: !511, line: 974, type: !679)
!1390 = distinct !DISubprogram(name: "memeq", scope: !511, file: !511, line: 974, type: !1391, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!85, !679, !679, !65}
!1393 = !{!1389, !1394, !1395}
!1394 = !DILocalVariable(name: "__s2", arg: 2, scope: !1390, file: !511, line: 974, type: !679)
!1395 = !DILocalVariable(name: "__n", arg: 3, scope: !1390, file: !511, line: 974, type: !65)
!1396 = !DILocation(line: 0, scope: !1390, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 46, column: 28, scope: !1385)
!1398 = !DILocation(line: 976, column: 11, scope: !1390, inlinedAt: !1397)
!1399 = !DILocation(line: 976, column: 10, scope: !1390, inlinedAt: !1397)
!1400 = !DILocation(line: 46, column: 7, scope: !1376)
!1401 = !DILocation(line: 49, column: 11, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !246, line: 49, column: 11)
!1403 = distinct !DILexicalBlock(scope: !1385, file: !246, line: 47, column: 5)
!1404 = !DILocation(line: 49, column: 36, scope: !1402)
!1405 = !DILocation(line: 49, column: 11, scope: !1403)
!1406 = !DILocation(line: 65, column: 16, scope: !1376)
!1407 = !DILocation(line: 71, column: 27, scope: !1376)
!1408 = !DILocation(line: 74, column: 33, scope: !1376)
!1409 = !DILocation(line: 76, column: 1, scope: !1376)
!1410 = !DILocation(line: 0, scope: !251)
!1411 = !DILocation(line: 40, column: 29, scope: !251)
!1412 = !DILocation(line: 41, column: 19, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !251, file: !252, line: 41, column: 7)
!1414 = !DILocation(line: 41, column: 7, scope: !251)
!1415 = !DILocation(line: 47, column: 3, scope: !251)
!1416 = !DILocation(line: 48, column: 3, scope: !251)
!1417 = !DILocation(line: 48, column: 13, scope: !251)
!1418 = !DILocalVariable(name: "ps", arg: 1, scope: !1419, file: !871, line: 1135, type: !1422)
!1419 = distinct !DISubprogram(name: "mbszero", scope: !871, file: !871, line: 1135, type: !1420, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1423)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1423 = !{!1418}
!1424 = !DILocation(line: 0, scope: !1419, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 48, column: 18, scope: !251)
!1426 = !DILocalVariable(name: "__dest", arg: 1, scope: !1427, file: !880, line: 57, type: !62)
!1427 = distinct !DISubprogram(name: "memset", scope: !880, file: !880, line: 57, type: !881, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1428)
!1428 = !{!1426, !1429, !1430}
!1429 = !DILocalVariable(name: "__ch", arg: 2, scope: !1427, file: !880, line: 57, type: !63)
!1430 = !DILocalVariable(name: "__len", arg: 3, scope: !1427, file: !880, line: 57, type: !65)
!1431 = !DILocation(line: 0, scope: !1427, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 1137, column: 3, scope: !1419, inlinedAt: !1425)
!1433 = !DILocation(line: 59, column: 10, scope: !1427, inlinedAt: !1432)
!1434 = !DILocation(line: 49, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !251, file: !252, line: 49, column: 7)
!1436 = !DILocation(line: 49, column: 39, scope: !1435)
!1437 = !DILocation(line: 49, column: 44, scope: !1435)
!1438 = !DILocation(line: 54, column: 1, scope: !251)
!1439 = !DISubprogram(name: "mbrtoc32", scope: !263, file: !263, line: 57, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!65, !1442, !557, !65, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1422)
!1445 = distinct !DISubprogram(name: "clone_quoting_options", scope: !283, file: !283, line: 113, type: !1446, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1449)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1448, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1449 = !{!1450, !1451, !1452}
!1450 = !DILocalVariable(name: "o", arg: 1, scope: !1445, file: !283, line: 113, type: !1448)
!1451 = !DILocalVariable(name: "saved_errno", scope: !1445, file: !283, line: 115, type: !63)
!1452 = !DILocalVariable(name: "p", scope: !1445, file: !283, line: 116, type: !1448)
!1453 = !DILocation(line: 0, scope: !1445)
!1454 = !DILocation(line: 115, column: 21, scope: !1445)
!1455 = !DILocation(line: 116, column: 40, scope: !1445)
!1456 = !DILocation(line: 116, column: 31, scope: !1445)
!1457 = !DILocation(line: 118, column: 9, scope: !1445)
!1458 = !DILocation(line: 119, column: 3, scope: !1445)
!1459 = distinct !DISubprogram(name: "get_quoting_style", scope: !283, file: !283, line: 124, type: !1460, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1464)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!21, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!1464 = !{!1465}
!1465 = !DILocalVariable(name: "o", arg: 1, scope: !1459, file: !283, line: 124, type: !1462)
!1466 = !DILocation(line: 0, scope: !1459)
!1467 = !DILocation(line: 126, column: 11, scope: !1459)
!1468 = !DILocation(line: 126, column: 46, scope: !1459)
!1469 = !{!1470, !474, i64 0}
!1470 = !{!"quoting_options", !474, i64 0, !562, i64 4, !474, i64 8, !473, i64 40, !473, i64 48}
!1471 = !DILocation(line: 126, column: 3, scope: !1459)
!1472 = distinct !DISubprogram(name: "set_quoting_style", scope: !283, file: !283, line: 132, type: !1473, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !1448, !21}
!1475 = !{!1476, !1477}
!1476 = !DILocalVariable(name: "o", arg: 1, scope: !1472, file: !283, line: 132, type: !1448)
!1477 = !DILocalVariable(name: "s", arg: 2, scope: !1472, file: !283, line: 132, type: !21)
!1478 = !DILocation(line: 0, scope: !1472)
!1479 = !DILocation(line: 134, column: 4, scope: !1472)
!1480 = !DILocation(line: 134, column: 39, scope: !1472)
!1481 = !DILocation(line: 134, column: 45, scope: !1472)
!1482 = !DILocation(line: 135, column: 1, scope: !1472)
!1483 = distinct !DISubprogram(name: "set_char_quoting", scope: !283, file: !283, line: 143, type: !1484, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!63, !1448, !61, !63}
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1493, !1494}
!1487 = !DILocalVariable(name: "o", arg: 1, scope: !1483, file: !283, line: 143, type: !1448)
!1488 = !DILocalVariable(name: "c", arg: 2, scope: !1483, file: !283, line: 143, type: !61)
!1489 = !DILocalVariable(name: "i", arg: 3, scope: !1483, file: !283, line: 143, type: !63)
!1490 = !DILocalVariable(name: "uc", scope: !1483, file: !283, line: 145, type: !70)
!1491 = !DILocalVariable(name: "p", scope: !1483, file: !283, line: 146, type: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1493 = !DILocalVariable(name: "shift", scope: !1483, file: !283, line: 148, type: !63)
!1494 = !DILocalVariable(name: "r", scope: !1483, file: !283, line: 149, type: !7)
!1495 = !DILocation(line: 0, scope: !1483)
!1496 = !DILocation(line: 147, column: 6, scope: !1483)
!1497 = !DILocation(line: 147, column: 62, scope: !1483)
!1498 = !DILocation(line: 147, column: 57, scope: !1483)
!1499 = !DILocation(line: 148, column: 15, scope: !1483)
!1500 = !DILocation(line: 149, column: 21, scope: !1483)
!1501 = !DILocation(line: 149, column: 24, scope: !1483)
!1502 = !DILocation(line: 149, column: 34, scope: !1483)
!1503 = !DILocation(line: 150, column: 13, scope: !1483)
!1504 = !DILocation(line: 150, column: 19, scope: !1483)
!1505 = !DILocation(line: 150, column: 24, scope: !1483)
!1506 = !DILocation(line: 150, column: 6, scope: !1483)
!1507 = !DILocation(line: 151, column: 3, scope: !1483)
!1508 = distinct !DISubprogram(name: "set_quoting_flags", scope: !283, file: !283, line: 159, type: !1509, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!63, !1448, !63}
!1511 = !{!1512, !1513, !1514}
!1512 = !DILocalVariable(name: "o", arg: 1, scope: !1508, file: !283, line: 159, type: !1448)
!1513 = !DILocalVariable(name: "i", arg: 2, scope: !1508, file: !283, line: 159, type: !63)
!1514 = !DILocalVariable(name: "r", scope: !1508, file: !283, line: 163, type: !63)
!1515 = !DILocation(line: 0, scope: !1508)
!1516 = !DILocation(line: 161, column: 8, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1508, file: !283, line: 161, column: 7)
!1518 = !DILocation(line: 161, column: 7, scope: !1508)
!1519 = !DILocation(line: 163, column: 14, scope: !1508)
!1520 = !{!1470, !562, i64 4}
!1521 = !DILocation(line: 164, column: 12, scope: !1508)
!1522 = !DILocation(line: 165, column: 3, scope: !1508)
!1523 = distinct !DISubprogram(name: "set_custom_quoting", scope: !283, file: !283, line: 169, type: !1524, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !1448, !68, !68}
!1526 = !{!1527, !1528, !1529}
!1527 = !DILocalVariable(name: "o", arg: 1, scope: !1523, file: !283, line: 169, type: !1448)
!1528 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1523, file: !283, line: 170, type: !68)
!1529 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1523, file: !283, line: 170, type: !68)
!1530 = !DILocation(line: 0, scope: !1523)
!1531 = !DILocation(line: 172, column: 8, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1523, file: !283, line: 172, column: 7)
!1533 = !DILocation(line: 172, column: 7, scope: !1523)
!1534 = !DILocation(line: 174, column: 6, scope: !1523)
!1535 = !DILocation(line: 174, column: 12, scope: !1523)
!1536 = !DILocation(line: 175, column: 8, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1523, file: !283, line: 175, column: 7)
!1538 = !DILocation(line: 175, column: 19, scope: !1537)
!1539 = !DILocation(line: 176, column: 5, scope: !1537)
!1540 = !DILocation(line: 177, column: 6, scope: !1523)
!1541 = !DILocation(line: 177, column: 17, scope: !1523)
!1542 = !{!1470, !473, i64 40}
!1543 = !DILocation(line: 178, column: 6, scope: !1523)
!1544 = !DILocation(line: 178, column: 18, scope: !1523)
!1545 = !{!1470, !473, i64 48}
!1546 = !DILocation(line: 179, column: 1, scope: !1523)
!1547 = distinct !DISubprogram(name: "quotearg_buffer", scope: !283, file: !283, line: 774, type: !1548, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!65, !60, !65, !68, !65, !1462}
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1551 = !DILocalVariable(name: "buffer", arg: 1, scope: !1547, file: !283, line: 774, type: !60)
!1552 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1547, file: !283, line: 774, type: !65)
!1553 = !DILocalVariable(name: "arg", arg: 3, scope: !1547, file: !283, line: 775, type: !68)
!1554 = !DILocalVariable(name: "argsize", arg: 4, scope: !1547, file: !283, line: 775, type: !65)
!1555 = !DILocalVariable(name: "o", arg: 5, scope: !1547, file: !283, line: 776, type: !1462)
!1556 = !DILocalVariable(name: "p", scope: !1547, file: !283, line: 778, type: !1462)
!1557 = !DILocalVariable(name: "saved_errno", scope: !1547, file: !283, line: 779, type: !63)
!1558 = !DILocalVariable(name: "r", scope: !1547, file: !283, line: 780, type: !65)
!1559 = !DILocation(line: 0, scope: !1547)
!1560 = !DILocation(line: 778, column: 37, scope: !1547)
!1561 = !DILocation(line: 779, column: 21, scope: !1547)
!1562 = !DILocation(line: 781, column: 43, scope: !1547)
!1563 = !DILocation(line: 781, column: 53, scope: !1547)
!1564 = !DILocation(line: 781, column: 60, scope: !1547)
!1565 = !DILocation(line: 782, column: 43, scope: !1547)
!1566 = !DILocation(line: 782, column: 58, scope: !1547)
!1567 = !DILocation(line: 780, column: 14, scope: !1547)
!1568 = !DILocation(line: 783, column: 9, scope: !1547)
!1569 = !DILocation(line: 784, column: 3, scope: !1547)
!1570 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !283, file: !283, line: 251, type: !1571, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1575)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!65, !60, !65, !68, !65, !21, !63, !1573, !68, !68}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1600, !1602, !1605, !1606, !1607, !1608, !1611, !1612, !1615, !1619, !1620, !1628, !1631, !1632, !1634, !1635, !1636, !1637}
!1576 = !DILocalVariable(name: "buffer", arg: 1, scope: !1570, file: !283, line: 251, type: !60)
!1577 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1570, file: !283, line: 251, type: !65)
!1578 = !DILocalVariable(name: "arg", arg: 3, scope: !1570, file: !283, line: 252, type: !68)
!1579 = !DILocalVariable(name: "argsize", arg: 4, scope: !1570, file: !283, line: 252, type: !65)
!1580 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1570, file: !283, line: 253, type: !21)
!1581 = !DILocalVariable(name: "flags", arg: 6, scope: !1570, file: !283, line: 253, type: !63)
!1582 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1570, file: !283, line: 254, type: !1573)
!1583 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1570, file: !283, line: 255, type: !68)
!1584 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1570, file: !283, line: 256, type: !68)
!1585 = !DILocalVariable(name: "unibyte_locale", scope: !1570, file: !283, line: 258, type: !85)
!1586 = !DILocalVariable(name: "len", scope: !1570, file: !283, line: 260, type: !65)
!1587 = !DILocalVariable(name: "orig_buffersize", scope: !1570, file: !283, line: 261, type: !65)
!1588 = !DILocalVariable(name: "quote_string", scope: !1570, file: !283, line: 262, type: !68)
!1589 = !DILocalVariable(name: "quote_string_len", scope: !1570, file: !283, line: 263, type: !65)
!1590 = !DILocalVariable(name: "backslash_escapes", scope: !1570, file: !283, line: 264, type: !85)
!1591 = !DILocalVariable(name: "elide_outer_quotes", scope: !1570, file: !283, line: 265, type: !85)
!1592 = !DILocalVariable(name: "encountered_single_quote", scope: !1570, file: !283, line: 266, type: !85)
!1593 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1570, file: !283, line: 267, type: !85)
!1594 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1570, file: !283, line: 309, type: !85)
!1595 = !DILocalVariable(name: "lq", scope: !1596, file: !283, line: 361, type: !68)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !283, line: 361, column: 11)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !283, line: 360, column: 13)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !283, line: 333, column: 7)
!1599 = distinct !DILexicalBlock(scope: !1570, file: !283, line: 312, column: 5)
!1600 = !DILocalVariable(name: "i", scope: !1601, file: !283, line: 395, type: !65)
!1601 = distinct !DILexicalBlock(scope: !1570, file: !283, line: 395, column: 3)
!1602 = !DILocalVariable(name: "is_right_quote", scope: !1603, file: !283, line: 397, type: !85)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !283, line: 396, column: 5)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !283, line: 395, column: 3)
!1605 = !DILocalVariable(name: "escaping", scope: !1603, file: !283, line: 398, type: !85)
!1606 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1603, file: !283, line: 399, type: !85)
!1607 = !DILocalVariable(name: "c", scope: !1603, file: !283, line: 417, type: !70)
!1608 = !DILocalVariable(name: "m", scope: !1609, file: !283, line: 598, type: !65)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !283, line: 596, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1603, file: !283, line: 419, column: 9)
!1611 = !DILocalVariable(name: "printable", scope: !1609, file: !283, line: 600, type: !85)
!1612 = !DILocalVariable(name: "mbs", scope: !1613, file: !283, line: 609, type: !328)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !283, line: 608, column: 15)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !283, line: 602, column: 17)
!1615 = !DILocalVariable(name: "w", scope: !1616, file: !283, line: 618, type: !262)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !283, line: 617, column: 19)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !283, line: 616, column: 17)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !283, line: 616, column: 17)
!1619 = !DILocalVariable(name: "bytes", scope: !1616, file: !283, line: 619, type: !65)
!1620 = !DILocalVariable(name: "j", scope: !1621, file: !283, line: 648, type: !65)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !283, line: 648, column: 29)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !283, line: 647, column: 27)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !283, line: 645, column: 29)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !283, line: 636, column: 23)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !283, line: 628, column: 30)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !283, line: 623, column: 30)
!1627 = distinct !DILexicalBlock(scope: !1616, file: !283, line: 621, column: 25)
!1628 = !DILocalVariable(name: "ilim", scope: !1629, file: !283, line: 674, type: !65)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !283, line: 671, column: 15)
!1630 = distinct !DILexicalBlock(scope: !1609, file: !283, line: 670, column: 17)
!1631 = !DILabel(scope: !1570, name: "process_input", file: !283, line: 308)
!1632 = !DILabel(scope: !1633, name: "c_and_shell_escape", file: !283, line: 502)
!1633 = distinct !DILexicalBlock(scope: !1610, file: !283, line: 478, column: 9)
!1634 = !DILabel(scope: !1633, name: "c_escape", file: !283, line: 507)
!1635 = !DILabel(scope: !1603, name: "store_escape", file: !283, line: 709)
!1636 = !DILabel(scope: !1603, name: "store_c", file: !283, line: 712)
!1637 = !DILabel(scope: !1570, name: "force_outer_quoting_style", file: !283, line: 753)
!1638 = !DILocation(line: 0, scope: !1570)
!1639 = !DILocation(line: 258, column: 25, scope: !1570)
!1640 = !DILocation(line: 258, column: 36, scope: !1570)
!1641 = !DILocation(line: 267, column: 3, scope: !1570)
!1642 = !DILocation(line: 261, column: 10, scope: !1570)
!1643 = !DILocation(line: 262, column: 15, scope: !1570)
!1644 = !DILocation(line: 263, column: 10, scope: !1570)
!1645 = !DILocation(line: 308, column: 2, scope: !1570)
!1646 = !DILocation(line: 311, column: 3, scope: !1570)
!1647 = !DILocation(line: 318, column: 11, scope: !1599)
!1648 = !DILocation(line: 319, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !283, line: 319, column: 9)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !283, line: 319, column: 9)
!1651 = distinct !DILexicalBlock(scope: !1599, file: !283, line: 318, column: 11)
!1652 = !DILocation(line: 319, column: 9, scope: !1650)
!1653 = !DILocation(line: 0, scope: !319, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 357, column: 26, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !283, line: 335, column: 11)
!1656 = distinct !DILexicalBlock(scope: !1598, file: !283, line: 334, column: 13)
!1657 = !DILocation(line: 199, column: 29, scope: !319, inlinedAt: !1654)
!1658 = !DILocation(line: 201, column: 19, scope: !1659, inlinedAt: !1654)
!1659 = distinct !DILexicalBlock(scope: !319, file: !283, line: 201, column: 7)
!1660 = !DILocation(line: 201, column: 7, scope: !319, inlinedAt: !1654)
!1661 = !DILocation(line: 229, column: 3, scope: !319, inlinedAt: !1654)
!1662 = !DILocation(line: 230, column: 3, scope: !319, inlinedAt: !1654)
!1663 = !DILocation(line: 230, column: 13, scope: !319, inlinedAt: !1654)
!1664 = !DILocalVariable(name: "ps", arg: 1, scope: !1665, file: !871, line: 1135, type: !1668)
!1665 = distinct !DISubprogram(name: "mbszero", scope: !871, file: !871, line: 1135, type: !1666, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1669)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1669 = !{!1664}
!1670 = !DILocation(line: 0, scope: !1665, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 230, column: 18, scope: !319, inlinedAt: !1654)
!1672 = !DILocalVariable(name: "__dest", arg: 1, scope: !1673, file: !880, line: 57, type: !62)
!1673 = distinct !DISubprogram(name: "memset", scope: !880, file: !880, line: 57, type: !881, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1674)
!1674 = !{!1672, !1675, !1676}
!1675 = !DILocalVariable(name: "__ch", arg: 2, scope: !1673, file: !880, line: 57, type: !63)
!1676 = !DILocalVariable(name: "__len", arg: 3, scope: !1673, file: !880, line: 57, type: !65)
!1677 = !DILocation(line: 0, scope: !1673, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 1137, column: 3, scope: !1665, inlinedAt: !1671)
!1679 = !DILocation(line: 59, column: 10, scope: !1673, inlinedAt: !1678)
!1680 = !DILocation(line: 231, column: 7, scope: !1681, inlinedAt: !1654)
!1681 = distinct !DILexicalBlock(scope: !319, file: !283, line: 231, column: 7)
!1682 = !DILocation(line: 231, column: 40, scope: !1681, inlinedAt: !1654)
!1683 = !DILocation(line: 231, column: 45, scope: !1681, inlinedAt: !1654)
!1684 = !DILocation(line: 235, column: 1, scope: !319, inlinedAt: !1654)
!1685 = !DILocation(line: 0, scope: !319, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 358, column: 27, scope: !1655)
!1687 = !DILocation(line: 199, column: 29, scope: !319, inlinedAt: !1686)
!1688 = !DILocation(line: 201, column: 19, scope: !1659, inlinedAt: !1686)
!1689 = !DILocation(line: 201, column: 7, scope: !319, inlinedAt: !1686)
!1690 = !DILocation(line: 229, column: 3, scope: !319, inlinedAt: !1686)
!1691 = !DILocation(line: 230, column: 3, scope: !319, inlinedAt: !1686)
!1692 = !DILocation(line: 230, column: 13, scope: !319, inlinedAt: !1686)
!1693 = !DILocation(line: 0, scope: !1665, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 230, column: 18, scope: !319, inlinedAt: !1686)
!1695 = !DILocation(line: 0, scope: !1673, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 1137, column: 3, scope: !1665, inlinedAt: !1694)
!1697 = !DILocation(line: 59, column: 10, scope: !1673, inlinedAt: !1696)
!1698 = !DILocation(line: 231, column: 7, scope: !1681, inlinedAt: !1686)
!1699 = !DILocation(line: 231, column: 40, scope: !1681, inlinedAt: !1686)
!1700 = !DILocation(line: 231, column: 45, scope: !1681, inlinedAt: !1686)
!1701 = !DILocation(line: 235, column: 1, scope: !319, inlinedAt: !1686)
!1702 = !DILocation(line: 360, column: 13, scope: !1598)
!1703 = !DILocation(line: 0, scope: !1596)
!1704 = !DILocation(line: 361, column: 45, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1596, file: !283, line: 361, column: 11)
!1706 = !DILocation(line: 361, column: 11, scope: !1596)
!1707 = !DILocation(line: 362, column: 13, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !283, line: 362, column: 13)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !283, line: 362, column: 13)
!1710 = !DILocation(line: 362, column: 13, scope: !1709)
!1711 = !DILocation(line: 361, column: 52, scope: !1705)
!1712 = distinct !{!1712, !1706, !1713, !527}
!1713 = !DILocation(line: 362, column: 13, scope: !1596)
!1714 = !DILocation(line: 260, column: 10, scope: !1570)
!1715 = !DILocation(line: 365, column: 28, scope: !1598)
!1716 = !DILocation(line: 367, column: 7, scope: !1599)
!1717 = !DILocation(line: 370, column: 7, scope: !1599)
!1718 = !DILocation(line: 376, column: 11, scope: !1599)
!1719 = !DILocation(line: 381, column: 11, scope: !1599)
!1720 = !DILocation(line: 382, column: 9, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !283, line: 382, column: 9)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !283, line: 382, column: 9)
!1723 = distinct !DILexicalBlock(scope: !1599, file: !283, line: 381, column: 11)
!1724 = !DILocation(line: 382, column: 9, scope: !1722)
!1725 = !DILocation(line: 389, column: 7, scope: !1599)
!1726 = !DILocation(line: 392, column: 7, scope: !1599)
!1727 = !DILocation(line: 0, scope: !1601)
!1728 = !DILocation(line: 395, column: 8, scope: !1601)
!1729 = !DILocation(line: 395, column: 34, scope: !1604)
!1730 = !DILocation(line: 395, column: 26, scope: !1604)
!1731 = !DILocation(line: 395, column: 48, scope: !1604)
!1732 = !DILocation(line: 395, column: 55, scope: !1604)
!1733 = !DILocation(line: 395, column: 3, scope: !1601)
!1734 = !DILocation(line: 395, column: 67, scope: !1604)
!1735 = !DILocation(line: 0, scope: !1603)
!1736 = !DILocation(line: 402, column: 11, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1603, file: !283, line: 401, column: 11)
!1738 = !DILocation(line: 404, column: 17, scope: !1737)
!1739 = !DILocation(line: 405, column: 39, scope: !1737)
!1740 = !DILocation(line: 409, column: 32, scope: !1737)
!1741 = !DILocation(line: 405, column: 19, scope: !1737)
!1742 = !DILocation(line: 405, column: 15, scope: !1737)
!1743 = !DILocation(line: 410, column: 11, scope: !1737)
!1744 = !DILocation(line: 410, column: 25, scope: !1737)
!1745 = !DILocalVariable(name: "__s1", arg: 1, scope: !1746, file: !511, line: 974, type: !679)
!1746 = distinct !DISubprogram(name: "memeq", scope: !511, file: !511, line: 974, type: !1391, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1747)
!1747 = !{!1745, !1748, !1749}
!1748 = !DILocalVariable(name: "__s2", arg: 2, scope: !1746, file: !511, line: 974, type: !679)
!1749 = !DILocalVariable(name: "__n", arg: 3, scope: !1746, file: !511, line: 974, type: !65)
!1750 = !DILocation(line: 0, scope: !1746, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 410, column: 14, scope: !1737)
!1752 = !DILocation(line: 976, column: 11, scope: !1746, inlinedAt: !1751)
!1753 = !DILocation(line: 976, column: 10, scope: !1746, inlinedAt: !1751)
!1754 = !DILocation(line: 401, column: 11, scope: !1603)
!1755 = !DILocation(line: 417, column: 25, scope: !1603)
!1756 = !DILocation(line: 418, column: 7, scope: !1603)
!1757 = !DILocation(line: 421, column: 15, scope: !1610)
!1758 = !DILocation(line: 423, column: 15, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !283, line: 423, column: 15)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !283, line: 422, column: 13)
!1761 = distinct !DILexicalBlock(scope: !1610, file: !283, line: 421, column: 15)
!1762 = !DILocation(line: 423, column: 15, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !283, line: 423, column: 15)
!1764 = !DILocation(line: 423, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !283, line: 423, column: 15)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !283, line: 423, column: 15)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !283, line: 423, column: 15)
!1768 = !DILocation(line: 423, column: 15, scope: !1766)
!1769 = !DILocation(line: 423, column: 15, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !283, line: 423, column: 15)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !283, line: 423, column: 15)
!1772 = !DILocation(line: 423, column: 15, scope: !1771)
!1773 = !DILocation(line: 423, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !283, line: 423, column: 15)
!1775 = distinct !DILexicalBlock(scope: !1767, file: !283, line: 423, column: 15)
!1776 = !DILocation(line: 423, column: 15, scope: !1775)
!1777 = !DILocation(line: 423, column: 15, scope: !1767)
!1778 = !DILocation(line: 423, column: 15, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !283, line: 423, column: 15)
!1780 = distinct !DILexicalBlock(scope: !1759, file: !283, line: 423, column: 15)
!1781 = !DILocation(line: 423, column: 15, scope: !1780)
!1782 = !DILocation(line: 431, column: 19, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1760, file: !283, line: 430, column: 19)
!1784 = !DILocation(line: 431, column: 24, scope: !1783)
!1785 = !DILocation(line: 431, column: 28, scope: !1783)
!1786 = !DILocation(line: 431, column: 38, scope: !1783)
!1787 = !DILocation(line: 431, column: 48, scope: !1783)
!1788 = !DILocation(line: 431, column: 59, scope: !1783)
!1789 = !DILocation(line: 433, column: 19, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !283, line: 433, column: 19)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !283, line: 433, column: 19)
!1792 = distinct !DILexicalBlock(scope: !1783, file: !283, line: 432, column: 17)
!1793 = !DILocation(line: 433, column: 19, scope: !1791)
!1794 = !DILocation(line: 434, column: 19, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !283, line: 434, column: 19)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !283, line: 434, column: 19)
!1797 = !DILocation(line: 434, column: 19, scope: !1796)
!1798 = !DILocation(line: 435, column: 17, scope: !1792)
!1799 = !DILocation(line: 442, column: 20, scope: !1761)
!1800 = !DILocation(line: 447, column: 11, scope: !1610)
!1801 = !DILocation(line: 450, column: 19, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1610, file: !283, line: 448, column: 13)
!1803 = !DILocation(line: 456, column: 19, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1802, file: !283, line: 455, column: 19)
!1805 = !DILocation(line: 456, column: 24, scope: !1804)
!1806 = !DILocation(line: 456, column: 28, scope: !1804)
!1807 = !DILocation(line: 456, column: 38, scope: !1804)
!1808 = !DILocation(line: 456, column: 47, scope: !1804)
!1809 = !DILocation(line: 456, column: 41, scope: !1804)
!1810 = !DILocation(line: 456, column: 52, scope: !1804)
!1811 = !DILocation(line: 455, column: 19, scope: !1802)
!1812 = !DILocation(line: 457, column: 25, scope: !1804)
!1813 = !DILocation(line: 457, column: 17, scope: !1804)
!1814 = !DILocation(line: 464, column: 25, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1804, file: !283, line: 458, column: 19)
!1816 = !DILocation(line: 468, column: 21, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !283, line: 468, column: 21)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !283, line: 468, column: 21)
!1819 = !DILocation(line: 468, column: 21, scope: !1818)
!1820 = !DILocation(line: 469, column: 21, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !283, line: 469, column: 21)
!1822 = distinct !DILexicalBlock(scope: !1815, file: !283, line: 469, column: 21)
!1823 = !DILocation(line: 469, column: 21, scope: !1822)
!1824 = !DILocation(line: 470, column: 21, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !283, line: 470, column: 21)
!1826 = distinct !DILexicalBlock(scope: !1815, file: !283, line: 470, column: 21)
!1827 = !DILocation(line: 470, column: 21, scope: !1826)
!1828 = !DILocation(line: 471, column: 21, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !283, line: 471, column: 21)
!1830 = distinct !DILexicalBlock(scope: !1815, file: !283, line: 471, column: 21)
!1831 = !DILocation(line: 471, column: 21, scope: !1830)
!1832 = !DILocation(line: 472, column: 21, scope: !1815)
!1833 = !DILocation(line: 482, column: 33, scope: !1633)
!1834 = !DILocation(line: 483, column: 33, scope: !1633)
!1835 = !DILocation(line: 485, column: 33, scope: !1633)
!1836 = !DILocation(line: 486, column: 33, scope: !1633)
!1837 = !DILocation(line: 487, column: 33, scope: !1633)
!1838 = !DILocation(line: 490, column: 17, scope: !1633)
!1839 = !DILocation(line: 492, column: 21, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !283, line: 491, column: 15)
!1841 = distinct !DILexicalBlock(scope: !1633, file: !283, line: 490, column: 17)
!1842 = !DILocation(line: 499, column: 35, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1633, file: !283, line: 499, column: 17)
!1844 = !DILocation(line: 499, column: 57, scope: !1843)
!1845 = !DILocation(line: 0, scope: !1633)
!1846 = !DILocation(line: 502, column: 11, scope: !1633)
!1847 = !DILocation(line: 504, column: 17, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1633, file: !283, line: 503, column: 17)
!1849 = !DILocation(line: 507, column: 11, scope: !1633)
!1850 = !DILocation(line: 508, column: 17, scope: !1633)
!1851 = !DILocation(line: 517, column: 15, scope: !1610)
!1852 = !DILocation(line: 517, column: 40, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1610, file: !283, line: 517, column: 15)
!1854 = !DILocation(line: 517, column: 47, scope: !1853)
!1855 = !DILocation(line: 517, column: 18, scope: !1853)
!1856 = !DILocation(line: 521, column: 17, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1610, file: !283, line: 521, column: 15)
!1858 = !DILocation(line: 521, column: 15, scope: !1610)
!1859 = !DILocation(line: 525, column: 11, scope: !1610)
!1860 = !DILocation(line: 537, column: 15, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1610, file: !283, line: 536, column: 15)
!1862 = !DILocation(line: 536, column: 15, scope: !1610)
!1863 = !DILocation(line: 544, column: 15, scope: !1610)
!1864 = !DILocation(line: 546, column: 19, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !283, line: 545, column: 13)
!1866 = distinct !DILexicalBlock(scope: !1610, file: !283, line: 544, column: 15)
!1867 = !DILocation(line: 549, column: 19, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !283, line: 549, column: 19)
!1869 = !DILocation(line: 549, column: 30, scope: !1868)
!1870 = !DILocation(line: 558, column: 15, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !283, line: 558, column: 15)
!1872 = distinct !DILexicalBlock(scope: !1865, file: !283, line: 558, column: 15)
!1873 = !DILocation(line: 558, column: 15, scope: !1872)
!1874 = !DILocation(line: 559, column: 15, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !283, line: 559, column: 15)
!1876 = distinct !DILexicalBlock(scope: !1865, file: !283, line: 559, column: 15)
!1877 = !DILocation(line: 559, column: 15, scope: !1876)
!1878 = !DILocation(line: 560, column: 15, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !283, line: 560, column: 15)
!1880 = distinct !DILexicalBlock(scope: !1865, file: !283, line: 560, column: 15)
!1881 = !DILocation(line: 560, column: 15, scope: !1880)
!1882 = !DILocation(line: 562, column: 13, scope: !1865)
!1883 = !DILocation(line: 602, column: 17, scope: !1609)
!1884 = !DILocation(line: 0, scope: !1609)
!1885 = !DILocation(line: 605, column: 29, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1614, file: !283, line: 603, column: 15)
!1887 = !DILocation(line: 605, column: 41, scope: !1886)
!1888 = !DILocation(line: 670, column: 23, scope: !1630)
!1889 = !DILocation(line: 609, column: 17, scope: !1613)
!1890 = !DILocation(line: 609, column: 27, scope: !1613)
!1891 = !DILocation(line: 0, scope: !1665, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 609, column: 32, scope: !1613)
!1893 = !DILocation(line: 0, scope: !1673, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 1137, column: 3, scope: !1665, inlinedAt: !1892)
!1895 = !DILocation(line: 59, column: 10, scope: !1673, inlinedAt: !1894)
!1896 = !DILocation(line: 613, column: 29, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1613, file: !283, line: 613, column: 21)
!1898 = !DILocation(line: 613, column: 21, scope: !1613)
!1899 = !DILocation(line: 614, column: 29, scope: !1897)
!1900 = !DILocation(line: 614, column: 19, scope: !1897)
!1901 = !DILocation(line: 618, column: 21, scope: !1616)
!1902 = !DILocation(line: 620, column: 54, scope: !1616)
!1903 = !DILocation(line: 0, scope: !1616)
!1904 = !DILocation(line: 619, column: 36, scope: !1616)
!1905 = !DILocation(line: 621, column: 25, scope: !1616)
!1906 = !DILocation(line: 631, column: 38, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1625, file: !283, line: 629, column: 23)
!1908 = !DILocation(line: 631, column: 48, scope: !1907)
!1909 = !DILocation(line: 665, column: 19, scope: !1617)
!1910 = !DILocation(line: 666, column: 15, scope: !1614)
!1911 = !DILocation(line: 626, column: 25, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1626, file: !283, line: 624, column: 23)
!1913 = !DILocation(line: 631, column: 51, scope: !1907)
!1914 = !DILocation(line: 631, column: 25, scope: !1907)
!1915 = !DILocation(line: 632, column: 28, scope: !1907)
!1916 = !DILocation(line: 631, column: 34, scope: !1907)
!1917 = distinct !{!1917, !1914, !1915, !527}
!1918 = !DILocation(line: 646, column: 29, scope: !1623)
!1919 = !DILocation(line: 0, scope: !1621)
!1920 = !DILocation(line: 649, column: 49, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1621, file: !283, line: 648, column: 29)
!1922 = !DILocation(line: 649, column: 39, scope: !1921)
!1923 = !DILocation(line: 649, column: 31, scope: !1921)
!1924 = !DILocation(line: 648, column: 60, scope: !1921)
!1925 = !DILocation(line: 648, column: 50, scope: !1921)
!1926 = !DILocation(line: 648, column: 29, scope: !1621)
!1927 = distinct !{!1927, !1926, !1928, !527}
!1928 = !DILocation(line: 654, column: 33, scope: !1621)
!1929 = !DILocation(line: 657, column: 43, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1624, file: !283, line: 657, column: 29)
!1931 = !DILocalVariable(name: "wc", arg: 1, scope: !1932, file: !1933, line: 865, type: !1936)
!1932 = distinct !DISubprogram(name: "c32isprint", scope: !1933, file: !1933, line: 865, type: !1934, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1938)
!1933 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!63, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1937, line: 20, baseType: !7)
!1937 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1938 = !{!1931}
!1939 = !DILocation(line: 0, scope: !1932, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 657, column: 31, scope: !1930)
!1941 = !DILocation(line: 871, column: 10, scope: !1932, inlinedAt: !1940)
!1942 = !DILocation(line: 657, column: 31, scope: !1930)
!1943 = !DILocation(line: 664, column: 23, scope: !1616)
!1944 = !DILocation(line: 753, column: 2, scope: !1570)
!1945 = !DILocation(line: 756, column: 51, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1570, file: !283, line: 756, column: 7)
!1947 = !DILocation(line: 670, column: 19, scope: !1630)
!1948 = !DILocation(line: 670, column: 45, scope: !1630)
!1949 = !DILocation(line: 674, column: 33, scope: !1629)
!1950 = !DILocation(line: 0, scope: !1629)
!1951 = !DILocation(line: 676, column: 17, scope: !1629)
!1952 = !DILocation(line: 398, column: 12, scope: !1603)
!1953 = !DILocation(line: 678, column: 43, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !283, line: 678, column: 25)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !283, line: 677, column: 19)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !283, line: 676, column: 17)
!1957 = distinct !DILexicalBlock(scope: !1629, file: !283, line: 676, column: 17)
!1958 = !DILocation(line: 680, column: 25, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !283, line: 680, column: 25)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !283, line: 679, column: 23)
!1961 = !DILocation(line: 680, column: 25, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !283, line: 680, column: 25)
!1963 = !DILocation(line: 680, column: 25, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !283, line: 680, column: 25)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !283, line: 680, column: 25)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !283, line: 680, column: 25)
!1967 = !DILocation(line: 680, column: 25, scope: !1965)
!1968 = !DILocation(line: 680, column: 25, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !283, line: 680, column: 25)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !283, line: 680, column: 25)
!1971 = !DILocation(line: 680, column: 25, scope: !1970)
!1972 = !DILocation(line: 680, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !283, line: 680, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1966, file: !283, line: 680, column: 25)
!1975 = !DILocation(line: 680, column: 25, scope: !1974)
!1976 = !DILocation(line: 680, column: 25, scope: !1966)
!1977 = !DILocation(line: 680, column: 25, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !283, line: 680, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1959, file: !283, line: 680, column: 25)
!1980 = !DILocation(line: 680, column: 25, scope: !1979)
!1981 = !DILocation(line: 681, column: 25, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !283, line: 681, column: 25)
!1983 = distinct !DILexicalBlock(scope: !1960, file: !283, line: 681, column: 25)
!1984 = !DILocation(line: 681, column: 25, scope: !1983)
!1985 = !DILocation(line: 682, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !283, line: 682, column: 25)
!1987 = distinct !DILexicalBlock(scope: !1960, file: !283, line: 682, column: 25)
!1988 = !DILocation(line: 682, column: 25, scope: !1987)
!1989 = !DILocation(line: 683, column: 38, scope: !1960)
!1990 = !DILocation(line: 683, column: 33, scope: !1960)
!1991 = !DILocation(line: 684, column: 23, scope: !1960)
!1992 = !DILocation(line: 685, column: 30, scope: !1954)
!1993 = !DILocation(line: 687, column: 25, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !283, line: 687, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !283, line: 687, column: 25)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !283, line: 686, column: 23)
!1997 = distinct !DILexicalBlock(scope: !1954, file: !283, line: 685, column: 30)
!1998 = !DILocation(line: 687, column: 25, scope: !1995)
!1999 = !DILocation(line: 689, column: 23, scope: !1996)
!2000 = !DILocation(line: 690, column: 35, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1955, file: !283, line: 690, column: 25)
!2002 = !DILocation(line: 690, column: 30, scope: !2001)
!2003 = !DILocation(line: 690, column: 25, scope: !1955)
!2004 = !DILocation(line: 692, column: 21, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !283, line: 692, column: 21)
!2006 = distinct !DILexicalBlock(scope: !1955, file: !283, line: 692, column: 21)
!2007 = !DILocation(line: 692, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !283, line: 692, column: 21)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !283, line: 692, column: 21)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !283, line: 692, column: 21)
!2011 = !DILocation(line: 692, column: 21, scope: !2009)
!2012 = !DILocation(line: 692, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !283, line: 692, column: 21)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !283, line: 692, column: 21)
!2015 = !DILocation(line: 692, column: 21, scope: !2014)
!2016 = !DILocation(line: 692, column: 21, scope: !2010)
!2017 = !DILocation(line: 0, scope: !1955)
!2018 = !DILocation(line: 693, column: 21, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !283, line: 693, column: 21)
!2020 = distinct !DILexicalBlock(scope: !1955, file: !283, line: 693, column: 21)
!2021 = !DILocation(line: 693, column: 21, scope: !2020)
!2022 = !DILocation(line: 694, column: 25, scope: !1955)
!2023 = !DILocation(line: 676, column: 17, scope: !1956)
!2024 = distinct !{!2024, !2025, !2026}
!2025 = !DILocation(line: 676, column: 17, scope: !1957)
!2026 = !DILocation(line: 695, column: 19, scope: !1957)
!2027 = !DILocation(line: 409, column: 30, scope: !1737)
!2028 = !DILocation(line: 702, column: 34, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1603, file: !283, line: 702, column: 11)
!2030 = !DILocation(line: 704, column: 14, scope: !2029)
!2031 = !DILocation(line: 705, column: 14, scope: !2029)
!2032 = !DILocation(line: 705, column: 35, scope: !2029)
!2033 = !DILocation(line: 705, column: 17, scope: !2029)
!2034 = !DILocation(line: 705, column: 47, scope: !2029)
!2035 = !DILocation(line: 705, column: 65, scope: !2029)
!2036 = !DILocation(line: 706, column: 11, scope: !2029)
!2037 = !DILocation(line: 702, column: 11, scope: !1603)
!2038 = !DILocation(line: 395, column: 15, scope: !1601)
!2039 = !DILocation(line: 709, column: 5, scope: !1603)
!2040 = !DILocation(line: 710, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1603, file: !283, line: 710, column: 7)
!2042 = !DILocation(line: 710, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2041, file: !283, line: 710, column: 7)
!2044 = !DILocation(line: 710, column: 7, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !283, line: 710, column: 7)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !283, line: 710, column: 7)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !283, line: 710, column: 7)
!2048 = !DILocation(line: 710, column: 7, scope: !2046)
!2049 = !DILocation(line: 710, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !283, line: 710, column: 7)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !283, line: 710, column: 7)
!2052 = !DILocation(line: 710, column: 7, scope: !2051)
!2053 = !DILocation(line: 710, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !283, line: 710, column: 7)
!2055 = distinct !DILexicalBlock(scope: !2047, file: !283, line: 710, column: 7)
!2056 = !DILocation(line: 710, column: 7, scope: !2055)
!2057 = !DILocation(line: 710, column: 7, scope: !2047)
!2058 = !DILocation(line: 710, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !283, line: 710, column: 7)
!2060 = distinct !DILexicalBlock(scope: !2041, file: !283, line: 710, column: 7)
!2061 = !DILocation(line: 710, column: 7, scope: !2060)
!2062 = !DILocation(line: 712, column: 5, scope: !1603)
!2063 = !DILocation(line: 713, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !283, line: 713, column: 7)
!2065 = distinct !DILexicalBlock(scope: !1603, file: !283, line: 713, column: 7)
!2066 = !DILocation(line: 417, column: 21, scope: !1603)
!2067 = !DILocation(line: 713, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !283, line: 713, column: 7)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !283, line: 713, column: 7)
!2070 = distinct !DILexicalBlock(scope: !2064, file: !283, line: 713, column: 7)
!2071 = !DILocation(line: 713, column: 7, scope: !2069)
!2072 = !DILocation(line: 713, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !283, line: 713, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !283, line: 713, column: 7)
!2075 = !DILocation(line: 713, column: 7, scope: !2074)
!2076 = !DILocation(line: 713, column: 7, scope: !2070)
!2077 = !DILocation(line: 714, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !283, line: 714, column: 7)
!2079 = distinct !DILexicalBlock(scope: !1603, file: !283, line: 714, column: 7)
!2080 = !DILocation(line: 714, column: 7, scope: !2079)
!2081 = !DILocation(line: 716, column: 11, scope: !1603)
!2082 = !DILocation(line: 718, column: 5, scope: !1604)
!2083 = !DILocation(line: 395, column: 82, scope: !1604)
!2084 = !DILocation(line: 395, column: 3, scope: !1604)
!2085 = distinct !{!2085, !1733, !2086, !527}
!2086 = !DILocation(line: 718, column: 5, scope: !1601)
!2087 = !DILocation(line: 720, column: 11, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1570, file: !283, line: 720, column: 7)
!2089 = !DILocation(line: 720, column: 16, scope: !2088)
!2090 = !DILocation(line: 728, column: 51, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1570, file: !283, line: 728, column: 7)
!2092 = !DILocation(line: 731, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2091, file: !283, line: 730, column: 5)
!2094 = !DILocation(line: 732, column: 16, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2093, file: !283, line: 731, column: 11)
!2096 = !DILocation(line: 732, column: 9, scope: !2095)
!2097 = !DILocation(line: 736, column: 18, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !283, line: 736, column: 16)
!2099 = !DILocation(line: 736, column: 29, scope: !2098)
!2100 = !DILocation(line: 745, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1570, file: !283, line: 745, column: 7)
!2102 = !DILocation(line: 745, column: 20, scope: !2101)
!2103 = !DILocation(line: 746, column: 12, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !283, line: 746, column: 5)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !283, line: 746, column: 5)
!2106 = !DILocation(line: 746, column: 5, scope: !2105)
!2107 = !DILocation(line: 747, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !283, line: 747, column: 7)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !283, line: 747, column: 7)
!2110 = !DILocation(line: 747, column: 7, scope: !2109)
!2111 = !DILocation(line: 746, column: 39, scope: !2104)
!2112 = distinct !{!2112, !2106, !2113, !527}
!2113 = !DILocation(line: 747, column: 7, scope: !2105)
!2114 = !DILocation(line: 749, column: 11, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1570, file: !283, line: 749, column: 7)
!2116 = !DILocation(line: 749, column: 7, scope: !1570)
!2117 = !DILocation(line: 750, column: 5, scope: !2115)
!2118 = !DILocation(line: 750, column: 17, scope: !2115)
!2119 = !DILocation(line: 756, column: 21, scope: !1946)
!2120 = !DILocation(line: 760, column: 42, scope: !1570)
!2121 = !DILocation(line: 758, column: 10, scope: !1570)
!2122 = !DILocation(line: 758, column: 3, scope: !1570)
!2123 = !DILocation(line: 762, column: 1, scope: !1570)
!2124 = !DISubprogram(name: "iswprint", scope: !2125, file: !2125, line: 120, type: !1934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2125 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2126 = distinct !DISubprogram(name: "quotearg_alloc", scope: !283, file: !283, line: 788, type: !2127, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!60, !68, !65, !1462}
!2129 = !{!2130, !2131, !2132}
!2130 = !DILocalVariable(name: "arg", arg: 1, scope: !2126, file: !283, line: 788, type: !68)
!2131 = !DILocalVariable(name: "argsize", arg: 2, scope: !2126, file: !283, line: 788, type: !65)
!2132 = !DILocalVariable(name: "o", arg: 3, scope: !2126, file: !283, line: 789, type: !1462)
!2133 = !DILocation(line: 0, scope: !2126)
!2134 = !DILocalVariable(name: "arg", arg: 1, scope: !2135, file: !283, line: 801, type: !68)
!2135 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !283, file: !283, line: 801, type: !2136, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!60, !68, !65, !403, !1462}
!2138 = !{!2134, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146}
!2139 = !DILocalVariable(name: "argsize", arg: 2, scope: !2135, file: !283, line: 801, type: !65)
!2140 = !DILocalVariable(name: "size", arg: 3, scope: !2135, file: !283, line: 801, type: !403)
!2141 = !DILocalVariable(name: "o", arg: 4, scope: !2135, file: !283, line: 802, type: !1462)
!2142 = !DILocalVariable(name: "p", scope: !2135, file: !283, line: 804, type: !1462)
!2143 = !DILocalVariable(name: "saved_errno", scope: !2135, file: !283, line: 805, type: !63)
!2144 = !DILocalVariable(name: "flags", scope: !2135, file: !283, line: 807, type: !63)
!2145 = !DILocalVariable(name: "bufsize", scope: !2135, file: !283, line: 808, type: !65)
!2146 = !DILocalVariable(name: "buf", scope: !2135, file: !283, line: 812, type: !60)
!2147 = !DILocation(line: 0, scope: !2135, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 791, column: 10, scope: !2126)
!2149 = !DILocation(line: 804, column: 37, scope: !2135, inlinedAt: !2148)
!2150 = !DILocation(line: 805, column: 21, scope: !2135, inlinedAt: !2148)
!2151 = !DILocation(line: 807, column: 18, scope: !2135, inlinedAt: !2148)
!2152 = !DILocation(line: 807, column: 24, scope: !2135, inlinedAt: !2148)
!2153 = !DILocation(line: 808, column: 72, scope: !2135, inlinedAt: !2148)
!2154 = !DILocation(line: 809, column: 53, scope: !2135, inlinedAt: !2148)
!2155 = !DILocation(line: 810, column: 49, scope: !2135, inlinedAt: !2148)
!2156 = !DILocation(line: 811, column: 49, scope: !2135, inlinedAt: !2148)
!2157 = !DILocation(line: 808, column: 20, scope: !2135, inlinedAt: !2148)
!2158 = !DILocation(line: 811, column: 62, scope: !2135, inlinedAt: !2148)
!2159 = !DILocation(line: 812, column: 15, scope: !2135, inlinedAt: !2148)
!2160 = !DILocation(line: 813, column: 60, scope: !2135, inlinedAt: !2148)
!2161 = !DILocation(line: 815, column: 32, scope: !2135, inlinedAt: !2148)
!2162 = !DILocation(line: 815, column: 47, scope: !2135, inlinedAt: !2148)
!2163 = !DILocation(line: 813, column: 3, scope: !2135, inlinedAt: !2148)
!2164 = !DILocation(line: 816, column: 9, scope: !2135, inlinedAt: !2148)
!2165 = !DILocation(line: 791, column: 3, scope: !2126)
!2166 = !DILocation(line: 0, scope: !2135)
!2167 = !DILocation(line: 804, column: 37, scope: !2135)
!2168 = !DILocation(line: 805, column: 21, scope: !2135)
!2169 = !DILocation(line: 807, column: 18, scope: !2135)
!2170 = !DILocation(line: 807, column: 27, scope: !2135)
!2171 = !DILocation(line: 807, column: 24, scope: !2135)
!2172 = !DILocation(line: 808, column: 72, scope: !2135)
!2173 = !DILocation(line: 809, column: 53, scope: !2135)
!2174 = !DILocation(line: 810, column: 49, scope: !2135)
!2175 = !DILocation(line: 811, column: 49, scope: !2135)
!2176 = !DILocation(line: 808, column: 20, scope: !2135)
!2177 = !DILocation(line: 811, column: 62, scope: !2135)
!2178 = !DILocation(line: 812, column: 15, scope: !2135)
!2179 = !DILocation(line: 813, column: 60, scope: !2135)
!2180 = !DILocation(line: 815, column: 32, scope: !2135)
!2181 = !DILocation(line: 815, column: 47, scope: !2135)
!2182 = !DILocation(line: 813, column: 3, scope: !2135)
!2183 = !DILocation(line: 816, column: 9, scope: !2135)
!2184 = !DILocation(line: 817, column: 7, scope: !2135)
!2185 = !DILocation(line: 818, column: 11, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2135, file: !283, line: 817, column: 7)
!2187 = !{!1227, !1227, i64 0}
!2188 = !DILocation(line: 818, column: 5, scope: !2186)
!2189 = !DILocation(line: 819, column: 3, scope: !2135)
!2190 = distinct !DISubprogram(name: "quotearg_free", scope: !283, file: !283, line: 837, type: !222, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2191)
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "sv", scope: !2190, file: !283, line: 839, type: !342)
!2193 = !DILocalVariable(name: "i", scope: !2194, file: !283, line: 840, type: !63)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !283, line: 840, column: 3)
!2195 = !DILocation(line: 839, column: 24, scope: !2190)
!2196 = !DILocation(line: 0, scope: !2190)
!2197 = !DILocation(line: 0, scope: !2194)
!2198 = !DILocation(line: 840, column: 21, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2194, file: !283, line: 840, column: 3)
!2200 = !DILocation(line: 840, column: 3, scope: !2194)
!2201 = !DILocation(line: 842, column: 13, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2190, file: !283, line: 842, column: 7)
!2203 = !{!2204, !473, i64 8}
!2204 = !{!"slotvec", !1227, i64 0, !473, i64 8}
!2205 = !DILocation(line: 842, column: 17, scope: !2202)
!2206 = !DILocation(line: 842, column: 7, scope: !2190)
!2207 = !DILocation(line: 841, column: 17, scope: !2199)
!2208 = !DILocation(line: 841, column: 5, scope: !2199)
!2209 = !DILocation(line: 840, column: 32, scope: !2199)
!2210 = distinct !{!2210, !2200, !2211, !527}
!2211 = !DILocation(line: 841, column: 20, scope: !2194)
!2212 = !DILocation(line: 844, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2202, file: !283, line: 843, column: 5)
!2214 = !DILocation(line: 845, column: 21, scope: !2213)
!2215 = !{!2204, !1227, i64 0}
!2216 = !DILocation(line: 846, column: 20, scope: !2213)
!2217 = !DILocation(line: 847, column: 5, scope: !2213)
!2218 = !DILocation(line: 848, column: 10, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2190, file: !283, line: 848, column: 7)
!2220 = !DILocation(line: 848, column: 7, scope: !2190)
!2221 = !DILocation(line: 850, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2219, file: !283, line: 849, column: 5)
!2223 = !DILocation(line: 850, column: 7, scope: !2222)
!2224 = !DILocation(line: 851, column: 15, scope: !2222)
!2225 = !DILocation(line: 852, column: 5, scope: !2222)
!2226 = !DILocation(line: 853, column: 10, scope: !2190)
!2227 = !DILocation(line: 854, column: 1, scope: !2190)
!2228 = distinct !DISubprogram(name: "quotearg_n", scope: !283, file: !283, line: 919, type: !669, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2229)
!2229 = !{!2230, !2231}
!2230 = !DILocalVariable(name: "n", arg: 1, scope: !2228, file: !283, line: 919, type: !63)
!2231 = !DILocalVariable(name: "arg", arg: 2, scope: !2228, file: !283, line: 919, type: !68)
!2232 = !DILocation(line: 0, scope: !2228)
!2233 = !DILocation(line: 921, column: 10, scope: !2228)
!2234 = !DILocation(line: 921, column: 3, scope: !2228)
!2235 = distinct !DISubprogram(name: "quotearg_n_options", scope: !283, file: !283, line: 866, type: !2236, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!60, !63, !68, !65, !1462}
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2249, !2250, !2252, !2253, !2254}
!2239 = !DILocalVariable(name: "n", arg: 1, scope: !2235, file: !283, line: 866, type: !63)
!2240 = !DILocalVariable(name: "arg", arg: 2, scope: !2235, file: !283, line: 866, type: !68)
!2241 = !DILocalVariable(name: "argsize", arg: 3, scope: !2235, file: !283, line: 866, type: !65)
!2242 = !DILocalVariable(name: "options", arg: 4, scope: !2235, file: !283, line: 867, type: !1462)
!2243 = !DILocalVariable(name: "saved_errno", scope: !2235, file: !283, line: 869, type: !63)
!2244 = !DILocalVariable(name: "sv", scope: !2235, file: !283, line: 871, type: !342)
!2245 = !DILocalVariable(name: "nslots_max", scope: !2235, file: !283, line: 873, type: !63)
!2246 = !DILocalVariable(name: "preallocated", scope: !2247, file: !283, line: 879, type: !85)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !283, line: 878, column: 5)
!2248 = distinct !DILexicalBlock(scope: !2235, file: !283, line: 877, column: 7)
!2249 = !DILocalVariable(name: "new_nslots", scope: !2247, file: !283, line: 880, type: !416)
!2250 = !DILocalVariable(name: "size", scope: !2251, file: !283, line: 891, type: !65)
!2251 = distinct !DILexicalBlock(scope: !2235, file: !283, line: 890, column: 3)
!2252 = !DILocalVariable(name: "val", scope: !2251, file: !283, line: 892, type: !60)
!2253 = !DILocalVariable(name: "flags", scope: !2251, file: !283, line: 894, type: !63)
!2254 = !DILocalVariable(name: "qsize", scope: !2251, file: !283, line: 895, type: !65)
!2255 = !DILocation(line: 0, scope: !2235)
!2256 = !DILocation(line: 869, column: 21, scope: !2235)
!2257 = !DILocation(line: 871, column: 24, scope: !2235)
!2258 = !DILocation(line: 874, column: 17, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2235, file: !283, line: 874, column: 7)
!2260 = !DILocation(line: 875, column: 5, scope: !2259)
!2261 = !DILocation(line: 877, column: 7, scope: !2248)
!2262 = !DILocation(line: 877, column: 14, scope: !2248)
!2263 = !DILocation(line: 877, column: 7, scope: !2235)
!2264 = !DILocation(line: 879, column: 31, scope: !2247)
!2265 = !DILocation(line: 0, scope: !2247)
!2266 = !DILocation(line: 880, column: 7, scope: !2247)
!2267 = !DILocation(line: 880, column: 26, scope: !2247)
!2268 = !DILocation(line: 880, column: 13, scope: !2247)
!2269 = !DILocation(line: 882, column: 31, scope: !2247)
!2270 = !DILocation(line: 883, column: 33, scope: !2247)
!2271 = !DILocation(line: 883, column: 42, scope: !2247)
!2272 = !DILocation(line: 883, column: 31, scope: !2247)
!2273 = !DILocation(line: 882, column: 22, scope: !2247)
!2274 = !DILocation(line: 882, column: 15, scope: !2247)
!2275 = !DILocation(line: 884, column: 11, scope: !2247)
!2276 = !DILocation(line: 885, column: 15, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2247, file: !283, line: 884, column: 11)
!2278 = !{i64 0, i64 8, !2187, i64 8, i64 8, !472}
!2279 = !DILocation(line: 885, column: 9, scope: !2277)
!2280 = !DILocation(line: 886, column: 20, scope: !2247)
!2281 = !DILocation(line: 886, column: 18, scope: !2247)
!2282 = !DILocation(line: 886, column: 15, scope: !2247)
!2283 = !DILocation(line: 886, column: 32, scope: !2247)
!2284 = !DILocation(line: 886, column: 43, scope: !2247)
!2285 = !DILocation(line: 886, column: 53, scope: !2247)
!2286 = !DILocation(line: 0, scope: !1673, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 886, column: 7, scope: !2247)
!2288 = !DILocation(line: 59, column: 10, scope: !1673, inlinedAt: !2287)
!2289 = !DILocation(line: 887, column: 16, scope: !2247)
!2290 = !DILocation(line: 887, column: 14, scope: !2247)
!2291 = !DILocation(line: 888, column: 5, scope: !2248)
!2292 = !DILocation(line: 888, column: 5, scope: !2247)
!2293 = !DILocation(line: 891, column: 19, scope: !2251)
!2294 = !DILocation(line: 891, column: 25, scope: !2251)
!2295 = !DILocation(line: 0, scope: !2251)
!2296 = !DILocation(line: 892, column: 23, scope: !2251)
!2297 = !DILocation(line: 894, column: 26, scope: !2251)
!2298 = !DILocation(line: 894, column: 32, scope: !2251)
!2299 = !DILocation(line: 896, column: 55, scope: !2251)
!2300 = !DILocation(line: 897, column: 46, scope: !2251)
!2301 = !DILocation(line: 898, column: 55, scope: !2251)
!2302 = !DILocation(line: 899, column: 55, scope: !2251)
!2303 = !DILocation(line: 895, column: 20, scope: !2251)
!2304 = !DILocation(line: 901, column: 14, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2251, file: !283, line: 901, column: 9)
!2306 = !DILocation(line: 901, column: 9, scope: !2251)
!2307 = !DILocation(line: 903, column: 35, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !283, line: 902, column: 7)
!2309 = !DILocation(line: 903, column: 20, scope: !2308)
!2310 = !DILocation(line: 904, column: 17, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2308, file: !283, line: 904, column: 13)
!2312 = !DILocation(line: 904, column: 13, scope: !2308)
!2313 = !DILocation(line: 905, column: 11, scope: !2311)
!2314 = !DILocation(line: 906, column: 27, scope: !2308)
!2315 = !DILocation(line: 906, column: 19, scope: !2308)
!2316 = !DILocation(line: 907, column: 69, scope: !2308)
!2317 = !DILocation(line: 909, column: 44, scope: !2308)
!2318 = !DILocation(line: 910, column: 44, scope: !2308)
!2319 = !DILocation(line: 907, column: 9, scope: !2308)
!2320 = !DILocation(line: 911, column: 7, scope: !2308)
!2321 = !DILocation(line: 913, column: 11, scope: !2251)
!2322 = !DILocation(line: 914, column: 5, scope: !2251)
!2323 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !283, file: !283, line: 925, type: !2324, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!60, !63, !68, !65}
!2326 = !{!2327, !2328, !2329}
!2327 = !DILocalVariable(name: "n", arg: 1, scope: !2323, file: !283, line: 925, type: !63)
!2328 = !DILocalVariable(name: "arg", arg: 2, scope: !2323, file: !283, line: 925, type: !68)
!2329 = !DILocalVariable(name: "argsize", arg: 3, scope: !2323, file: !283, line: 925, type: !65)
!2330 = !DILocation(line: 0, scope: !2323)
!2331 = !DILocation(line: 927, column: 10, scope: !2323)
!2332 = !DILocation(line: 927, column: 3, scope: !2323)
!2333 = distinct !DISubprogram(name: "quotearg", scope: !283, file: !283, line: 931, type: !673, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2334)
!2334 = !{!2335}
!2335 = !DILocalVariable(name: "arg", arg: 1, scope: !2333, file: !283, line: 931, type: !68)
!2336 = !DILocation(line: 0, scope: !2333)
!2337 = !DILocation(line: 0, scope: !2228, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 933, column: 10, scope: !2333)
!2339 = !DILocation(line: 921, column: 10, scope: !2228, inlinedAt: !2338)
!2340 = !DILocation(line: 933, column: 3, scope: !2333)
!2341 = distinct !DISubprogram(name: "quotearg_mem", scope: !283, file: !283, line: 937, type: !2342, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!60, !68, !65}
!2344 = !{!2345, !2346}
!2345 = !DILocalVariable(name: "arg", arg: 1, scope: !2341, file: !283, line: 937, type: !68)
!2346 = !DILocalVariable(name: "argsize", arg: 2, scope: !2341, file: !283, line: 937, type: !65)
!2347 = !DILocation(line: 0, scope: !2341)
!2348 = !DILocation(line: 0, scope: !2323, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 939, column: 10, scope: !2341)
!2350 = !DILocation(line: 927, column: 10, scope: !2323, inlinedAt: !2349)
!2351 = !DILocation(line: 939, column: 3, scope: !2341)
!2352 = distinct !DISubprogram(name: "quotearg_n_style", scope: !283, file: !283, line: 943, type: !2353, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!60, !63, !21, !68}
!2355 = !{!2356, !2357, !2358, !2359}
!2356 = !DILocalVariable(name: "n", arg: 1, scope: !2352, file: !283, line: 943, type: !63)
!2357 = !DILocalVariable(name: "s", arg: 2, scope: !2352, file: !283, line: 943, type: !21)
!2358 = !DILocalVariable(name: "arg", arg: 3, scope: !2352, file: !283, line: 943, type: !68)
!2359 = !DILocalVariable(name: "o", scope: !2352, file: !283, line: 945, type: !1463)
!2360 = !DILocation(line: 0, scope: !2352)
!2361 = !DILocation(line: 945, column: 3, scope: !2352)
!2362 = !DILocation(line: 945, column: 32, scope: !2352)
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"quoting_options_from_style: argument 0"}
!2365 = distinct !{!2365, !"quoting_options_from_style"}
!2366 = !DILocation(line: 945, column: 36, scope: !2352)
!2367 = !DILocalVariable(name: "style", arg: 1, scope: !2368, file: !283, line: 183, type: !21)
!2368 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !283, file: !283, line: 183, type: !2369, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!300, !21}
!2371 = !{!2367, !2372}
!2372 = !DILocalVariable(name: "o", scope: !2368, file: !283, line: 185, type: !300)
!2373 = !DILocation(line: 0, scope: !2368, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 945, column: 36, scope: !2352)
!2375 = !DILocation(line: 185, column: 26, scope: !2368, inlinedAt: !2374)
!2376 = !DILocation(line: 186, column: 13, scope: !2377, inlinedAt: !2374)
!2377 = distinct !DILexicalBlock(scope: !2368, file: !283, line: 186, column: 7)
!2378 = !DILocation(line: 186, column: 7, scope: !2368, inlinedAt: !2374)
!2379 = !DILocation(line: 187, column: 5, scope: !2377, inlinedAt: !2374)
!2380 = !DILocation(line: 188, column: 5, scope: !2368, inlinedAt: !2374)
!2381 = !DILocation(line: 188, column: 11, scope: !2368, inlinedAt: !2374)
!2382 = !DILocation(line: 946, column: 10, scope: !2352)
!2383 = !DILocation(line: 947, column: 1, scope: !2352)
!2384 = !DILocation(line: 946, column: 3, scope: !2352)
!2385 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !283, file: !283, line: 950, type: !2386, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!60, !63, !21, !68, !65}
!2388 = !{!2389, !2390, !2391, !2392, !2393}
!2389 = !DILocalVariable(name: "n", arg: 1, scope: !2385, file: !283, line: 950, type: !63)
!2390 = !DILocalVariable(name: "s", arg: 2, scope: !2385, file: !283, line: 950, type: !21)
!2391 = !DILocalVariable(name: "arg", arg: 3, scope: !2385, file: !283, line: 951, type: !68)
!2392 = !DILocalVariable(name: "argsize", arg: 4, scope: !2385, file: !283, line: 951, type: !65)
!2393 = !DILocalVariable(name: "o", scope: !2385, file: !283, line: 953, type: !1463)
!2394 = !DILocation(line: 0, scope: !2385)
!2395 = !DILocation(line: 953, column: 3, scope: !2385)
!2396 = !DILocation(line: 953, column: 32, scope: !2385)
!2397 = !{!2398}
!2398 = distinct !{!2398, !2399, !"quoting_options_from_style: argument 0"}
!2399 = distinct !{!2399, !"quoting_options_from_style"}
!2400 = !DILocation(line: 953, column: 36, scope: !2385)
!2401 = !DILocation(line: 0, scope: !2368, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 953, column: 36, scope: !2385)
!2403 = !DILocation(line: 185, column: 26, scope: !2368, inlinedAt: !2402)
!2404 = !DILocation(line: 186, column: 13, scope: !2377, inlinedAt: !2402)
!2405 = !DILocation(line: 186, column: 7, scope: !2368, inlinedAt: !2402)
!2406 = !DILocation(line: 187, column: 5, scope: !2377, inlinedAt: !2402)
!2407 = !DILocation(line: 188, column: 5, scope: !2368, inlinedAt: !2402)
!2408 = !DILocation(line: 188, column: 11, scope: !2368, inlinedAt: !2402)
!2409 = !DILocation(line: 954, column: 10, scope: !2385)
!2410 = !DILocation(line: 955, column: 1, scope: !2385)
!2411 = !DILocation(line: 954, column: 3, scope: !2385)
!2412 = distinct !DISubprogram(name: "quotearg_style", scope: !283, file: !283, line: 958, type: !2413, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!60, !21, !68}
!2415 = !{!2416, !2417}
!2416 = !DILocalVariable(name: "s", arg: 1, scope: !2412, file: !283, line: 958, type: !21)
!2417 = !DILocalVariable(name: "arg", arg: 2, scope: !2412, file: !283, line: 958, type: !68)
!2418 = !DILocation(line: 0, scope: !2412)
!2419 = !DILocation(line: 0, scope: !2352, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 960, column: 10, scope: !2412)
!2421 = !DILocation(line: 945, column: 3, scope: !2352, inlinedAt: !2420)
!2422 = !DILocation(line: 945, column: 32, scope: !2352, inlinedAt: !2420)
!2423 = !{!2424}
!2424 = distinct !{!2424, !2425, !"quoting_options_from_style: argument 0"}
!2425 = distinct !{!2425, !"quoting_options_from_style"}
!2426 = !DILocation(line: 945, column: 36, scope: !2352, inlinedAt: !2420)
!2427 = !DILocation(line: 0, scope: !2368, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 945, column: 36, scope: !2352, inlinedAt: !2420)
!2429 = !DILocation(line: 185, column: 26, scope: !2368, inlinedAt: !2428)
!2430 = !DILocation(line: 186, column: 13, scope: !2377, inlinedAt: !2428)
!2431 = !DILocation(line: 186, column: 7, scope: !2368, inlinedAt: !2428)
!2432 = !DILocation(line: 187, column: 5, scope: !2377, inlinedAt: !2428)
!2433 = !DILocation(line: 188, column: 5, scope: !2368, inlinedAt: !2428)
!2434 = !DILocation(line: 188, column: 11, scope: !2368, inlinedAt: !2428)
!2435 = !DILocation(line: 946, column: 10, scope: !2352, inlinedAt: !2420)
!2436 = !DILocation(line: 947, column: 1, scope: !2352, inlinedAt: !2420)
!2437 = !DILocation(line: 960, column: 3, scope: !2412)
!2438 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !283, file: !283, line: 964, type: !2439, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!60, !21, !68, !65}
!2441 = !{!2442, !2443, !2444}
!2442 = !DILocalVariable(name: "s", arg: 1, scope: !2438, file: !283, line: 964, type: !21)
!2443 = !DILocalVariable(name: "arg", arg: 2, scope: !2438, file: !283, line: 964, type: !68)
!2444 = !DILocalVariable(name: "argsize", arg: 3, scope: !2438, file: !283, line: 964, type: !65)
!2445 = !DILocation(line: 0, scope: !2438)
!2446 = !DILocation(line: 0, scope: !2385, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 966, column: 10, scope: !2438)
!2448 = !DILocation(line: 953, column: 3, scope: !2385, inlinedAt: !2447)
!2449 = !DILocation(line: 953, column: 32, scope: !2385, inlinedAt: !2447)
!2450 = !{!2451}
!2451 = distinct !{!2451, !2452, !"quoting_options_from_style: argument 0"}
!2452 = distinct !{!2452, !"quoting_options_from_style"}
!2453 = !DILocation(line: 953, column: 36, scope: !2385, inlinedAt: !2447)
!2454 = !DILocation(line: 0, scope: !2368, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 953, column: 36, scope: !2385, inlinedAt: !2447)
!2456 = !DILocation(line: 185, column: 26, scope: !2368, inlinedAt: !2455)
!2457 = !DILocation(line: 186, column: 13, scope: !2377, inlinedAt: !2455)
!2458 = !DILocation(line: 186, column: 7, scope: !2368, inlinedAt: !2455)
!2459 = !DILocation(line: 187, column: 5, scope: !2377, inlinedAt: !2455)
!2460 = !DILocation(line: 188, column: 5, scope: !2368, inlinedAt: !2455)
!2461 = !DILocation(line: 188, column: 11, scope: !2368, inlinedAt: !2455)
!2462 = !DILocation(line: 954, column: 10, scope: !2385, inlinedAt: !2447)
!2463 = !DILocation(line: 955, column: 1, scope: !2385, inlinedAt: !2447)
!2464 = !DILocation(line: 966, column: 3, scope: !2438)
!2465 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !283, file: !283, line: 970, type: !2466, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!60, !68, !65, !61}
!2468 = !{!2469, !2470, !2471, !2472}
!2469 = !DILocalVariable(name: "arg", arg: 1, scope: !2465, file: !283, line: 970, type: !68)
!2470 = !DILocalVariable(name: "argsize", arg: 2, scope: !2465, file: !283, line: 970, type: !65)
!2471 = !DILocalVariable(name: "ch", arg: 3, scope: !2465, file: !283, line: 970, type: !61)
!2472 = !DILocalVariable(name: "options", scope: !2465, file: !283, line: 972, type: !300)
!2473 = !DILocation(line: 0, scope: !2465)
!2474 = !DILocation(line: 972, column: 3, scope: !2465)
!2475 = !DILocation(line: 972, column: 26, scope: !2465)
!2476 = !DILocation(line: 973, column: 13, scope: !2465)
!2477 = !{i64 0, i64 4, !570, i64 4, i64 4, !561, i64 8, i64 32, !570, i64 40, i64 8, !472, i64 48, i64 8, !472}
!2478 = !DILocation(line: 0, scope: !1483, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 974, column: 3, scope: !2465)
!2480 = !DILocation(line: 147, column: 62, scope: !1483, inlinedAt: !2479)
!2481 = !DILocation(line: 147, column: 57, scope: !1483, inlinedAt: !2479)
!2482 = !DILocation(line: 148, column: 15, scope: !1483, inlinedAt: !2479)
!2483 = !DILocation(line: 149, column: 21, scope: !1483, inlinedAt: !2479)
!2484 = !DILocation(line: 149, column: 24, scope: !1483, inlinedAt: !2479)
!2485 = !DILocation(line: 149, column: 34, scope: !1483, inlinedAt: !2479)
!2486 = !DILocation(line: 150, column: 19, scope: !1483, inlinedAt: !2479)
!2487 = !DILocation(line: 150, column: 24, scope: !1483, inlinedAt: !2479)
!2488 = !DILocation(line: 150, column: 6, scope: !1483, inlinedAt: !2479)
!2489 = !DILocation(line: 975, column: 10, scope: !2465)
!2490 = !DILocation(line: 976, column: 1, scope: !2465)
!2491 = !DILocation(line: 975, column: 3, scope: !2465)
!2492 = distinct !DISubprogram(name: "quotearg_char", scope: !283, file: !283, line: 979, type: !2493, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!60, !68, !61}
!2495 = !{!2496, !2497}
!2496 = !DILocalVariable(name: "arg", arg: 1, scope: !2492, file: !283, line: 979, type: !68)
!2497 = !DILocalVariable(name: "ch", arg: 2, scope: !2492, file: !283, line: 979, type: !61)
!2498 = !DILocation(line: 0, scope: !2492)
!2499 = !DILocation(line: 0, scope: !2465, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 981, column: 10, scope: !2492)
!2501 = !DILocation(line: 972, column: 3, scope: !2465, inlinedAt: !2500)
!2502 = !DILocation(line: 972, column: 26, scope: !2465, inlinedAt: !2500)
!2503 = !DILocation(line: 973, column: 13, scope: !2465, inlinedAt: !2500)
!2504 = !DILocation(line: 0, scope: !1483, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 974, column: 3, scope: !2465, inlinedAt: !2500)
!2506 = !DILocation(line: 147, column: 62, scope: !1483, inlinedAt: !2505)
!2507 = !DILocation(line: 147, column: 57, scope: !1483, inlinedAt: !2505)
!2508 = !DILocation(line: 148, column: 15, scope: !1483, inlinedAt: !2505)
!2509 = !DILocation(line: 149, column: 21, scope: !1483, inlinedAt: !2505)
!2510 = !DILocation(line: 149, column: 24, scope: !1483, inlinedAt: !2505)
!2511 = !DILocation(line: 149, column: 34, scope: !1483, inlinedAt: !2505)
!2512 = !DILocation(line: 150, column: 19, scope: !1483, inlinedAt: !2505)
!2513 = !DILocation(line: 150, column: 24, scope: !1483, inlinedAt: !2505)
!2514 = !DILocation(line: 150, column: 6, scope: !1483, inlinedAt: !2505)
!2515 = !DILocation(line: 975, column: 10, scope: !2465, inlinedAt: !2500)
!2516 = !DILocation(line: 976, column: 1, scope: !2465, inlinedAt: !2500)
!2517 = !DILocation(line: 981, column: 3, scope: !2492)
!2518 = distinct !DISubprogram(name: "quotearg_colon", scope: !283, file: !283, line: 985, type: !673, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2519)
!2519 = !{!2520}
!2520 = !DILocalVariable(name: "arg", arg: 1, scope: !2518, file: !283, line: 985, type: !68)
!2521 = !DILocation(line: 0, scope: !2518)
!2522 = !DILocation(line: 0, scope: !2492, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 987, column: 10, scope: !2518)
!2524 = !DILocation(line: 0, scope: !2465, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 981, column: 10, scope: !2492, inlinedAt: !2523)
!2526 = !DILocation(line: 972, column: 3, scope: !2465, inlinedAt: !2525)
!2527 = !DILocation(line: 972, column: 26, scope: !2465, inlinedAt: !2525)
!2528 = !DILocation(line: 973, column: 13, scope: !2465, inlinedAt: !2525)
!2529 = !DILocation(line: 0, scope: !1483, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 974, column: 3, scope: !2465, inlinedAt: !2525)
!2531 = !DILocation(line: 147, column: 57, scope: !1483, inlinedAt: !2530)
!2532 = !DILocation(line: 149, column: 21, scope: !1483, inlinedAt: !2530)
!2533 = !DILocation(line: 150, column: 6, scope: !1483, inlinedAt: !2530)
!2534 = !DILocation(line: 975, column: 10, scope: !2465, inlinedAt: !2525)
!2535 = !DILocation(line: 976, column: 1, scope: !2465, inlinedAt: !2525)
!2536 = !DILocation(line: 987, column: 3, scope: !2518)
!2537 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !283, file: !283, line: 991, type: !2342, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2538)
!2538 = !{!2539, !2540}
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2537, file: !283, line: 991, type: !68)
!2540 = !DILocalVariable(name: "argsize", arg: 2, scope: !2537, file: !283, line: 991, type: !65)
!2541 = !DILocation(line: 0, scope: !2537)
!2542 = !DILocation(line: 0, scope: !2465, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 993, column: 10, scope: !2537)
!2544 = !DILocation(line: 972, column: 3, scope: !2465, inlinedAt: !2543)
!2545 = !DILocation(line: 972, column: 26, scope: !2465, inlinedAt: !2543)
!2546 = !DILocation(line: 973, column: 13, scope: !2465, inlinedAt: !2543)
!2547 = !DILocation(line: 0, scope: !1483, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 974, column: 3, scope: !2465, inlinedAt: !2543)
!2549 = !DILocation(line: 147, column: 57, scope: !1483, inlinedAt: !2548)
!2550 = !DILocation(line: 149, column: 21, scope: !1483, inlinedAt: !2548)
!2551 = !DILocation(line: 150, column: 6, scope: !1483, inlinedAt: !2548)
!2552 = !DILocation(line: 975, column: 10, scope: !2465, inlinedAt: !2543)
!2553 = !DILocation(line: 976, column: 1, scope: !2465, inlinedAt: !2543)
!2554 = !DILocation(line: 993, column: 3, scope: !2537)
!2555 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !283, file: !283, line: 997, type: !2353, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2556)
!2556 = !{!2557, !2558, !2559, !2560}
!2557 = !DILocalVariable(name: "n", arg: 1, scope: !2555, file: !283, line: 997, type: !63)
!2558 = !DILocalVariable(name: "s", arg: 2, scope: !2555, file: !283, line: 997, type: !21)
!2559 = !DILocalVariable(name: "arg", arg: 3, scope: !2555, file: !283, line: 997, type: !68)
!2560 = !DILocalVariable(name: "options", scope: !2555, file: !283, line: 999, type: !300)
!2561 = !DILocation(line: 0, scope: !2555)
!2562 = !DILocation(line: 999, column: 3, scope: !2555)
!2563 = !DILocation(line: 999, column: 26, scope: !2555)
!2564 = !DILocation(line: 0, scope: !2368, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 1000, column: 13, scope: !2555)
!2566 = !DILocation(line: 186, column: 13, scope: !2377, inlinedAt: !2565)
!2567 = !DILocation(line: 186, column: 7, scope: !2368, inlinedAt: !2565)
!2568 = !DILocation(line: 187, column: 5, scope: !2377, inlinedAt: !2565)
!2569 = !{!2570}
!2570 = distinct !{!2570, !2571, !"quoting_options_from_style: argument 0"}
!2571 = distinct !{!2571, !"quoting_options_from_style"}
!2572 = !DILocation(line: 1000, column: 13, scope: !2555)
!2573 = !DILocation(line: 0, scope: !1483, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 1001, column: 3, scope: !2555)
!2575 = !DILocation(line: 147, column: 57, scope: !1483, inlinedAt: !2574)
!2576 = !DILocation(line: 149, column: 21, scope: !1483, inlinedAt: !2574)
!2577 = !DILocation(line: 150, column: 6, scope: !1483, inlinedAt: !2574)
!2578 = !DILocation(line: 1002, column: 10, scope: !2555)
!2579 = !DILocation(line: 1003, column: 1, scope: !2555)
!2580 = !DILocation(line: 1002, column: 3, scope: !2555)
!2581 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !283, file: !283, line: 1006, type: !2582, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!60, !63, !68, !68, !68}
!2584 = !{!2585, !2586, !2587, !2588}
!2585 = !DILocalVariable(name: "n", arg: 1, scope: !2581, file: !283, line: 1006, type: !63)
!2586 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2581, file: !283, line: 1006, type: !68)
!2587 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2581, file: !283, line: 1007, type: !68)
!2588 = !DILocalVariable(name: "arg", arg: 4, scope: !2581, file: !283, line: 1007, type: !68)
!2589 = !DILocation(line: 0, scope: !2581)
!2590 = !DILocalVariable(name: "n", arg: 1, scope: !2591, file: !283, line: 1014, type: !63)
!2591 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !283, file: !283, line: 1014, type: !2592, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!60, !63, !68, !68, !68, !65}
!2594 = !{!2590, !2595, !2596, !2597, !2598, !2599}
!2595 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2591, file: !283, line: 1014, type: !68)
!2596 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2591, file: !283, line: 1015, type: !68)
!2597 = !DILocalVariable(name: "arg", arg: 4, scope: !2591, file: !283, line: 1016, type: !68)
!2598 = !DILocalVariable(name: "argsize", arg: 5, scope: !2591, file: !283, line: 1016, type: !65)
!2599 = !DILocalVariable(name: "o", scope: !2591, file: !283, line: 1018, type: !300)
!2600 = !DILocation(line: 0, scope: !2591, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1009, column: 10, scope: !2581)
!2602 = !DILocation(line: 1018, column: 3, scope: !2591, inlinedAt: !2601)
!2603 = !DILocation(line: 1018, column: 26, scope: !2591, inlinedAt: !2601)
!2604 = !DILocation(line: 1018, column: 30, scope: !2591, inlinedAt: !2601)
!2605 = !DILocation(line: 0, scope: !1523, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1019, column: 3, scope: !2591, inlinedAt: !2601)
!2607 = !DILocation(line: 174, column: 6, scope: !1523, inlinedAt: !2606)
!2608 = !DILocation(line: 174, column: 12, scope: !1523, inlinedAt: !2606)
!2609 = !DILocation(line: 175, column: 8, scope: !1537, inlinedAt: !2606)
!2610 = !DILocation(line: 175, column: 19, scope: !1537, inlinedAt: !2606)
!2611 = !DILocation(line: 176, column: 5, scope: !1537, inlinedAt: !2606)
!2612 = !DILocation(line: 177, column: 6, scope: !1523, inlinedAt: !2606)
!2613 = !DILocation(line: 177, column: 17, scope: !1523, inlinedAt: !2606)
!2614 = !DILocation(line: 178, column: 6, scope: !1523, inlinedAt: !2606)
!2615 = !DILocation(line: 178, column: 18, scope: !1523, inlinedAt: !2606)
!2616 = !DILocation(line: 1020, column: 10, scope: !2591, inlinedAt: !2601)
!2617 = !DILocation(line: 1021, column: 1, scope: !2591, inlinedAt: !2601)
!2618 = !DILocation(line: 1009, column: 3, scope: !2581)
!2619 = !DILocation(line: 0, scope: !2591)
!2620 = !DILocation(line: 1018, column: 3, scope: !2591)
!2621 = !DILocation(line: 1018, column: 26, scope: !2591)
!2622 = !DILocation(line: 1018, column: 30, scope: !2591)
!2623 = !DILocation(line: 0, scope: !1523, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 1019, column: 3, scope: !2591)
!2625 = !DILocation(line: 174, column: 6, scope: !1523, inlinedAt: !2624)
!2626 = !DILocation(line: 174, column: 12, scope: !1523, inlinedAt: !2624)
!2627 = !DILocation(line: 175, column: 8, scope: !1537, inlinedAt: !2624)
!2628 = !DILocation(line: 175, column: 19, scope: !1537, inlinedAt: !2624)
!2629 = !DILocation(line: 176, column: 5, scope: !1537, inlinedAt: !2624)
!2630 = !DILocation(line: 177, column: 6, scope: !1523, inlinedAt: !2624)
!2631 = !DILocation(line: 177, column: 17, scope: !1523, inlinedAt: !2624)
!2632 = !DILocation(line: 178, column: 6, scope: !1523, inlinedAt: !2624)
!2633 = !DILocation(line: 178, column: 18, scope: !1523, inlinedAt: !2624)
!2634 = !DILocation(line: 1020, column: 10, scope: !2591)
!2635 = !DILocation(line: 1021, column: 1, scope: !2591)
!2636 = !DILocation(line: 1020, column: 3, scope: !2591)
!2637 = distinct !DISubprogram(name: "quotearg_custom", scope: !283, file: !283, line: 1024, type: !2638, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!60, !68, !68, !68}
!2640 = !{!2641, !2642, !2643}
!2641 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2637, file: !283, line: 1024, type: !68)
!2642 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2637, file: !283, line: 1024, type: !68)
!2643 = !DILocalVariable(name: "arg", arg: 3, scope: !2637, file: !283, line: 1025, type: !68)
!2644 = !DILocation(line: 0, scope: !2637)
!2645 = !DILocation(line: 0, scope: !2581, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 1027, column: 10, scope: !2637)
!2647 = !DILocation(line: 0, scope: !2591, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1009, column: 10, scope: !2581, inlinedAt: !2646)
!2649 = !DILocation(line: 1018, column: 3, scope: !2591, inlinedAt: !2648)
!2650 = !DILocation(line: 1018, column: 26, scope: !2591, inlinedAt: !2648)
!2651 = !DILocation(line: 1018, column: 30, scope: !2591, inlinedAt: !2648)
!2652 = !DILocation(line: 0, scope: !1523, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 1019, column: 3, scope: !2591, inlinedAt: !2648)
!2654 = !DILocation(line: 174, column: 6, scope: !1523, inlinedAt: !2653)
!2655 = !DILocation(line: 174, column: 12, scope: !1523, inlinedAt: !2653)
!2656 = !DILocation(line: 175, column: 8, scope: !1537, inlinedAt: !2653)
!2657 = !DILocation(line: 175, column: 19, scope: !1537, inlinedAt: !2653)
!2658 = !DILocation(line: 176, column: 5, scope: !1537, inlinedAt: !2653)
!2659 = !DILocation(line: 177, column: 6, scope: !1523, inlinedAt: !2653)
!2660 = !DILocation(line: 177, column: 17, scope: !1523, inlinedAt: !2653)
!2661 = !DILocation(line: 178, column: 6, scope: !1523, inlinedAt: !2653)
!2662 = !DILocation(line: 178, column: 18, scope: !1523, inlinedAt: !2653)
!2663 = !DILocation(line: 1020, column: 10, scope: !2591, inlinedAt: !2648)
!2664 = !DILocation(line: 1021, column: 1, scope: !2591, inlinedAt: !2648)
!2665 = !DILocation(line: 1027, column: 3, scope: !2637)
!2666 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !283, file: !283, line: 1031, type: !2667, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!60, !68, !68, !68, !65}
!2669 = !{!2670, !2671, !2672, !2673}
!2670 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2666, file: !283, line: 1031, type: !68)
!2671 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2666, file: !283, line: 1031, type: !68)
!2672 = !DILocalVariable(name: "arg", arg: 3, scope: !2666, file: !283, line: 1032, type: !68)
!2673 = !DILocalVariable(name: "argsize", arg: 4, scope: !2666, file: !283, line: 1032, type: !65)
!2674 = !DILocation(line: 0, scope: !2666)
!2675 = !DILocation(line: 0, scope: !2591, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 1034, column: 10, scope: !2666)
!2677 = !DILocation(line: 1018, column: 3, scope: !2591, inlinedAt: !2676)
!2678 = !DILocation(line: 1018, column: 26, scope: !2591, inlinedAt: !2676)
!2679 = !DILocation(line: 1018, column: 30, scope: !2591, inlinedAt: !2676)
!2680 = !DILocation(line: 0, scope: !1523, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1019, column: 3, scope: !2591, inlinedAt: !2676)
!2682 = !DILocation(line: 174, column: 6, scope: !1523, inlinedAt: !2681)
!2683 = !DILocation(line: 174, column: 12, scope: !1523, inlinedAt: !2681)
!2684 = !DILocation(line: 175, column: 8, scope: !1537, inlinedAt: !2681)
!2685 = !DILocation(line: 175, column: 19, scope: !1537, inlinedAt: !2681)
!2686 = !DILocation(line: 176, column: 5, scope: !1537, inlinedAt: !2681)
!2687 = !DILocation(line: 177, column: 6, scope: !1523, inlinedAt: !2681)
!2688 = !DILocation(line: 177, column: 17, scope: !1523, inlinedAt: !2681)
!2689 = !DILocation(line: 178, column: 6, scope: !1523, inlinedAt: !2681)
!2690 = !DILocation(line: 178, column: 18, scope: !1523, inlinedAt: !2681)
!2691 = !DILocation(line: 1020, column: 10, scope: !2591, inlinedAt: !2676)
!2692 = !DILocation(line: 1021, column: 1, scope: !2591, inlinedAt: !2676)
!2693 = !DILocation(line: 1034, column: 3, scope: !2666)
!2694 = distinct !DISubprogram(name: "quote_n_mem", scope: !283, file: !283, line: 1049, type: !2695, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!68, !63, !68, !65}
!2697 = !{!2698, !2699, !2700}
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2694, file: !283, line: 1049, type: !63)
!2699 = !DILocalVariable(name: "arg", arg: 2, scope: !2694, file: !283, line: 1049, type: !68)
!2700 = !DILocalVariable(name: "argsize", arg: 3, scope: !2694, file: !283, line: 1049, type: !65)
!2701 = !DILocation(line: 0, scope: !2694)
!2702 = !DILocation(line: 1051, column: 10, scope: !2694)
!2703 = !DILocation(line: 1051, column: 3, scope: !2694)
!2704 = distinct !DISubprogram(name: "quote_mem", scope: !283, file: !283, line: 1055, type: !2705, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!68, !68, !65}
!2707 = !{!2708, !2709}
!2708 = !DILocalVariable(name: "arg", arg: 1, scope: !2704, file: !283, line: 1055, type: !68)
!2709 = !DILocalVariable(name: "argsize", arg: 2, scope: !2704, file: !283, line: 1055, type: !65)
!2710 = !DILocation(line: 0, scope: !2704)
!2711 = !DILocation(line: 0, scope: !2694, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 1057, column: 10, scope: !2704)
!2713 = !DILocation(line: 1051, column: 10, scope: !2694, inlinedAt: !2712)
!2714 = !DILocation(line: 1057, column: 3, scope: !2704)
!2715 = distinct !DISubprogram(name: "quote_n", scope: !283, file: !283, line: 1061, type: !2716, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!68, !63, !68}
!2718 = !{!2719, !2720}
!2719 = !DILocalVariable(name: "n", arg: 1, scope: !2715, file: !283, line: 1061, type: !63)
!2720 = !DILocalVariable(name: "arg", arg: 2, scope: !2715, file: !283, line: 1061, type: !68)
!2721 = !DILocation(line: 0, scope: !2715)
!2722 = !DILocation(line: 0, scope: !2694, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1063, column: 10, scope: !2715)
!2724 = !DILocation(line: 1051, column: 10, scope: !2694, inlinedAt: !2723)
!2725 = !DILocation(line: 1063, column: 3, scope: !2715)
!2726 = distinct !DISubprogram(name: "quote", scope: !283, file: !283, line: 1067, type: !2727, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!68, !68}
!2729 = !{!2730}
!2730 = !DILocalVariable(name: "arg", arg: 1, scope: !2726, file: !283, line: 1067, type: !68)
!2731 = !DILocation(line: 0, scope: !2726)
!2732 = !DILocation(line: 0, scope: !2715, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1069, column: 10, scope: !2726)
!2734 = !DILocation(line: 0, scope: !2694, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1063, column: 10, scope: !2715, inlinedAt: !2733)
!2736 = !DILocation(line: 1051, column: 10, scope: !2694, inlinedAt: !2735)
!2737 = !DILocation(line: 1069, column: 3, scope: !2726)
!2738 = distinct !DISubprogram(name: "version_etc_arn", scope: !391, file: !391, line: 61, type: !2739, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2776)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{null, !2741, !68, !68, !68, !2775, !65}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2743)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2743, file: !102, line: 51, baseType: !63, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2743, file: !102, line: 54, baseType: !60, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2743, file: !102, line: 55, baseType: !60, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2743, file: !102, line: 56, baseType: !60, size: 64, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2743, file: !102, line: 57, baseType: !60, size: 64, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2743, file: !102, line: 58, baseType: !60, size: 64, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2743, file: !102, line: 59, baseType: !60, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2743, file: !102, line: 60, baseType: !60, size: 64, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2743, file: !102, line: 61, baseType: !60, size: 64, offset: 512)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2743, file: !102, line: 64, baseType: !60, size: 64, offset: 576)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2743, file: !102, line: 65, baseType: !60, size: 64, offset: 640)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2743, file: !102, line: 66, baseType: !60, size: 64, offset: 704)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2743, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2743, file: !102, line: 70, baseType: !2759, size: 64, offset: 832)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2743, file: !102, line: 72, baseType: !63, size: 32, offset: 896)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2743, file: !102, line: 73, baseType: !63, size: 32, offset: 928)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2743, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2743, file: !102, line: 77, baseType: !64, size: 16, offset: 1024)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2743, file: !102, line: 78, baseType: !129, size: 8, offset: 1040)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2743, file: !102, line: 79, baseType: !131, size: 8, offset: 1048)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2743, file: !102, line: 81, baseType: !135, size: 64, offset: 1088)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2743, file: !102, line: 89, baseType: !138, size: 64, offset: 1152)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2743, file: !102, line: 91, baseType: !140, size: 64, offset: 1216)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2743, file: !102, line: 92, baseType: !143, size: 64, offset: 1280)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2743, file: !102, line: 93, baseType: !2759, size: 64, offset: 1344)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2743, file: !102, line: 94, baseType: !62, size: 64, offset: 1408)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2743, file: !102, line: 95, baseType: !65, size: 64, offset: 1472)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2743, file: !102, line: 96, baseType: !63, size: 32, offset: 1536)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2743, file: !102, line: 98, baseType: !150, size: 160, offset: 1568)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782}
!2777 = !DILocalVariable(name: "stream", arg: 1, scope: !2738, file: !391, line: 61, type: !2741)
!2778 = !DILocalVariable(name: "command_name", arg: 2, scope: !2738, file: !391, line: 62, type: !68)
!2779 = !DILocalVariable(name: "package", arg: 3, scope: !2738, file: !391, line: 62, type: !68)
!2780 = !DILocalVariable(name: "version", arg: 4, scope: !2738, file: !391, line: 63, type: !68)
!2781 = !DILocalVariable(name: "authors", arg: 5, scope: !2738, file: !391, line: 64, type: !2775)
!2782 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2738, file: !391, line: 64, type: !65)
!2783 = !DILocation(line: 0, scope: !2738)
!2784 = !DILocation(line: 66, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2738, file: !391, line: 66, column: 7)
!2786 = !DILocation(line: 66, column: 7, scope: !2738)
!2787 = !DILocation(line: 67, column: 5, scope: !2785)
!2788 = !DILocation(line: 69, column: 5, scope: !2785)
!2789 = !DILocation(line: 83, column: 3, scope: !2738)
!2790 = !DILocation(line: 85, column: 3, scope: !2738)
!2791 = !DILocation(line: 88, column: 3, scope: !2738)
!2792 = !DILocation(line: 95, column: 3, scope: !2738)
!2793 = !DILocation(line: 97, column: 3, scope: !2738)
!2794 = !DILocation(line: 105, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2738, file: !391, line: 98, column: 5)
!2796 = !DILocation(line: 106, column: 7, scope: !2795)
!2797 = !DILocation(line: 109, column: 7, scope: !2795)
!2798 = !DILocation(line: 110, column: 7, scope: !2795)
!2799 = !DILocation(line: 113, column: 7, scope: !2795)
!2800 = !DILocation(line: 115, column: 7, scope: !2795)
!2801 = !DILocation(line: 120, column: 7, scope: !2795)
!2802 = !DILocation(line: 122, column: 7, scope: !2795)
!2803 = !DILocation(line: 127, column: 7, scope: !2795)
!2804 = !DILocation(line: 129, column: 7, scope: !2795)
!2805 = !DILocation(line: 134, column: 7, scope: !2795)
!2806 = !DILocation(line: 137, column: 7, scope: !2795)
!2807 = !DILocation(line: 142, column: 7, scope: !2795)
!2808 = !DILocation(line: 145, column: 7, scope: !2795)
!2809 = !DILocation(line: 150, column: 7, scope: !2795)
!2810 = !DILocation(line: 154, column: 7, scope: !2795)
!2811 = !DILocation(line: 159, column: 7, scope: !2795)
!2812 = !DILocation(line: 163, column: 7, scope: !2795)
!2813 = !DILocation(line: 170, column: 7, scope: !2795)
!2814 = !DILocation(line: 174, column: 7, scope: !2795)
!2815 = !DILocation(line: 176, column: 1, scope: !2738)
!2816 = distinct !DISubprogram(name: "version_etc_ar", scope: !391, file: !391, line: 183, type: !2817, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !2741, !68, !68, !68, !2775}
!2819 = !{!2820, !2821, !2822, !2823, !2824, !2825}
!2820 = !DILocalVariable(name: "stream", arg: 1, scope: !2816, file: !391, line: 183, type: !2741)
!2821 = !DILocalVariable(name: "command_name", arg: 2, scope: !2816, file: !391, line: 184, type: !68)
!2822 = !DILocalVariable(name: "package", arg: 3, scope: !2816, file: !391, line: 184, type: !68)
!2823 = !DILocalVariable(name: "version", arg: 4, scope: !2816, file: !391, line: 185, type: !68)
!2824 = !DILocalVariable(name: "authors", arg: 5, scope: !2816, file: !391, line: 185, type: !2775)
!2825 = !DILocalVariable(name: "n_authors", scope: !2816, file: !391, line: 187, type: !65)
!2826 = !DILocation(line: 0, scope: !2816)
!2827 = !DILocation(line: 189, column: 8, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2816, file: !391, line: 189, column: 3)
!2829 = !DILocation(line: 0, scope: !2828)
!2830 = !DILocation(line: 189, column: 23, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2828, file: !391, line: 189, column: 3)
!2832 = !DILocation(line: 189, column: 3, scope: !2828)
!2833 = !DILocation(line: 189, column: 52, scope: !2831)
!2834 = distinct !{!2834, !2832, !2835, !527}
!2835 = !DILocation(line: 190, column: 5, scope: !2828)
!2836 = !DILocation(line: 191, column: 3, scope: !2816)
!2837 = !DILocation(line: 192, column: 1, scope: !2816)
!2838 = distinct !DISubprogram(name: "version_etc_va", scope: !391, file: !391, line: 199, type: !2839, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2852)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !2741, !68, !68, !68, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !195, line: 52, baseType: !2842)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !197, line: 32, baseType: !2843)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2844, baseType: !2845)
!2844 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !201, size: 256, elements: !2846)
!2846 = !{!2847, !2848, !2849, !2850, !2851}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2845, file: !2844, line: 192, baseType: !62, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2845, file: !2844, line: 192, baseType: !62, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2845, file: !2844, line: 192, baseType: !62, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2845, file: !2844, line: 192, baseType: !63, size: 32, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2845, file: !2844, line: 192, baseType: !63, size: 32, offset: 224)
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859}
!2853 = !DILocalVariable(name: "stream", arg: 1, scope: !2838, file: !391, line: 199, type: !2741)
!2854 = !DILocalVariable(name: "command_name", arg: 2, scope: !2838, file: !391, line: 200, type: !68)
!2855 = !DILocalVariable(name: "package", arg: 3, scope: !2838, file: !391, line: 200, type: !68)
!2856 = !DILocalVariable(name: "version", arg: 4, scope: !2838, file: !391, line: 201, type: !68)
!2857 = !DILocalVariable(name: "authors", arg: 5, scope: !2838, file: !391, line: 201, type: !2841)
!2858 = !DILocalVariable(name: "n_authors", scope: !2838, file: !391, line: 203, type: !65)
!2859 = !DILocalVariable(name: "authtab", scope: !2838, file: !391, line: 204, type: !2860)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !296)
!2861 = !DILocation(line: 0, scope: !2838)
!2862 = !DILocation(line: 201, column: 46, scope: !2838)
!2863 = !DILocation(line: 204, column: 3, scope: !2838)
!2864 = !DILocation(line: 204, column: 15, scope: !2838)
!2865 = !DILocation(line: 208, column: 35, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !391, line: 206, column: 3)
!2867 = distinct !DILexicalBlock(scope: !2838, file: !391, line: 206, column: 3)
!2868 = !DILocation(line: 208, column: 14, scope: !2866)
!2869 = !DILocation(line: 208, column: 33, scope: !2866)
!2870 = !DILocation(line: 208, column: 67, scope: !2866)
!2871 = !DILocation(line: 206, column: 3, scope: !2867)
!2872 = !DILocation(line: 0, scope: !2867)
!2873 = !DILocation(line: 211, column: 3, scope: !2838)
!2874 = !DILocation(line: 213, column: 1, scope: !2838)
!2875 = distinct !DISubprogram(name: "version_etc", scope: !391, file: !391, line: 230, type: !2876, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !2741, !68, !68, !68, null}
!2878 = !{!2879, !2880, !2881, !2882, !2883}
!2879 = !DILocalVariable(name: "stream", arg: 1, scope: !2875, file: !391, line: 230, type: !2741)
!2880 = !DILocalVariable(name: "command_name", arg: 2, scope: !2875, file: !391, line: 231, type: !68)
!2881 = !DILocalVariable(name: "package", arg: 3, scope: !2875, file: !391, line: 231, type: !68)
!2882 = !DILocalVariable(name: "version", arg: 4, scope: !2875, file: !391, line: 232, type: !68)
!2883 = !DILocalVariable(name: "authors", scope: !2875, file: !391, line: 234, type: !2841)
!2884 = !DILocation(line: 0, scope: !2875)
!2885 = !DILocation(line: 234, column: 3, scope: !2875)
!2886 = !DILocation(line: 234, column: 11, scope: !2875)
!2887 = !DILocation(line: 235, column: 3, scope: !2875)
!2888 = !DILocation(line: 236, column: 3, scope: !2875)
!2889 = !DILocation(line: 237, column: 3, scope: !2875)
!2890 = !DILocation(line: 238, column: 1, scope: !2875)
!2891 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !391, file: !391, line: 241, type: !222, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !553)
!2892 = !DILocation(line: 243, column: 3, scope: !2891)
!2893 = !DILocation(line: 248, column: 3, scope: !2891)
!2894 = !DILocation(line: 254, column: 3, scope: !2891)
!2895 = !DILocation(line: 259, column: 3, scope: !2891)
!2896 = !DILocation(line: 261, column: 1, scope: !2891)
!2897 = distinct !DISubprogram(name: "xnrealloc", scope: !2898, file: !2898, line: 147, type: !2899, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2901)
!2898 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!62, !62, !65, !65}
!2901 = !{!2902, !2903, !2904}
!2902 = !DILocalVariable(name: "p", arg: 1, scope: !2897, file: !2898, line: 147, type: !62)
!2903 = !DILocalVariable(name: "n", arg: 2, scope: !2897, file: !2898, line: 147, type: !65)
!2904 = !DILocalVariable(name: "s", arg: 3, scope: !2897, file: !2898, line: 147, type: !65)
!2905 = !DILocation(line: 0, scope: !2897)
!2906 = !DILocalVariable(name: "p", arg: 1, scope: !2907, file: !397, line: 83, type: !62)
!2907 = distinct !DISubprogram(name: "xreallocarray", scope: !397, file: !397, line: 83, type: !2899, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2908)
!2908 = !{!2906, !2909, !2910}
!2909 = !DILocalVariable(name: "n", arg: 2, scope: !2907, file: !397, line: 83, type: !65)
!2910 = !DILocalVariable(name: "s", arg: 3, scope: !2907, file: !397, line: 83, type: !65)
!2911 = !DILocation(line: 0, scope: !2907, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 149, column: 10, scope: !2897)
!2913 = !DILocation(line: 85, column: 25, scope: !2907, inlinedAt: !2912)
!2914 = !DILocalVariable(name: "p", arg: 1, scope: !2915, file: !397, line: 37, type: !62)
!2915 = distinct !DISubprogram(name: "check_nonnull", scope: !397, file: !397, line: 37, type: !2916, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!62, !62}
!2918 = !{!2914}
!2919 = !DILocation(line: 0, scope: !2915, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 85, column: 10, scope: !2907, inlinedAt: !2912)
!2921 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !2920)
!2922 = distinct !DILexicalBlock(scope: !2915, file: !397, line: 39, column: 7)
!2923 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !2920)
!2924 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !2920)
!2925 = !DILocation(line: 149, column: 3, scope: !2897)
!2926 = !DILocation(line: 0, scope: !2907)
!2927 = !DILocation(line: 85, column: 25, scope: !2907)
!2928 = !DILocation(line: 0, scope: !2915, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 85, column: 10, scope: !2907)
!2930 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !2929)
!2931 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !2929)
!2932 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !2929)
!2933 = !DILocation(line: 85, column: 3, scope: !2907)
!2934 = distinct !DISubprogram(name: "xmalloc", scope: !397, file: !397, line: 47, type: !2935, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2937)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!62, !65}
!2937 = !{!2938}
!2938 = !DILocalVariable(name: "s", arg: 1, scope: !2934, file: !397, line: 47, type: !65)
!2939 = !DILocation(line: 0, scope: !2934)
!2940 = !DILocation(line: 49, column: 25, scope: !2934)
!2941 = !DILocation(line: 0, scope: !2915, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 49, column: 10, scope: !2934)
!2943 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !2942)
!2944 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !2942)
!2945 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !2942)
!2946 = !DILocation(line: 49, column: 3, scope: !2934)
!2947 = distinct !DISubprogram(name: "ximalloc", scope: !397, file: !397, line: 53, type: !2948, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!62, !416}
!2950 = !{!2951}
!2951 = !DILocalVariable(name: "s", arg: 1, scope: !2947, file: !397, line: 53, type: !416)
!2952 = !DILocation(line: 0, scope: !2947)
!2953 = !DILocalVariable(name: "s", arg: 1, scope: !2954, file: !2955, line: 55, type: !416)
!2954 = distinct !DISubprogram(name: "imalloc", scope: !2955, file: !2955, line: 55, type: !2948, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2956)
!2955 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2956 = !{!2953}
!2957 = !DILocation(line: 0, scope: !2954, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 55, column: 25, scope: !2947)
!2959 = !DILocation(line: 57, column: 26, scope: !2954, inlinedAt: !2958)
!2960 = !DILocation(line: 0, scope: !2915, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 55, column: 10, scope: !2947)
!2962 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !2961)
!2963 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !2961)
!2964 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !2961)
!2965 = !DILocation(line: 55, column: 3, scope: !2947)
!2966 = distinct !DISubprogram(name: "xcharalloc", scope: !397, file: !397, line: 59, type: !2967, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!60, !65}
!2969 = !{!2970}
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2966, file: !397, line: 59, type: !65)
!2971 = !DILocation(line: 0, scope: !2966)
!2972 = !DILocation(line: 0, scope: !2934, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 61, column: 10, scope: !2966)
!2974 = !DILocation(line: 49, column: 25, scope: !2934, inlinedAt: !2973)
!2975 = !DILocation(line: 0, scope: !2915, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 49, column: 10, scope: !2934, inlinedAt: !2973)
!2977 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !2976)
!2978 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !2976)
!2979 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !2976)
!2980 = !DILocation(line: 61, column: 3, scope: !2966)
!2981 = distinct !DISubprogram(name: "xrealloc", scope: !397, file: !397, line: 68, type: !2982, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!62, !62, !65}
!2984 = !{!2985, !2986}
!2985 = !DILocalVariable(name: "p", arg: 1, scope: !2981, file: !397, line: 68, type: !62)
!2986 = !DILocalVariable(name: "s", arg: 2, scope: !2981, file: !397, line: 68, type: !65)
!2987 = !DILocation(line: 0, scope: !2981)
!2988 = !DILocalVariable(name: "ptr", arg: 1, scope: !2989, file: !2990, line: 2057, type: !62)
!2989 = distinct !DISubprogram(name: "rpl_realloc", scope: !2990, file: !2990, line: 2057, type: !2982, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2991)
!2990 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2991 = !{!2988, !2992}
!2992 = !DILocalVariable(name: "size", arg: 2, scope: !2989, file: !2990, line: 2057, type: !65)
!2993 = !DILocation(line: 0, scope: !2989, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 70, column: 25, scope: !2981)
!2995 = !DILocation(line: 2059, column: 24, scope: !2989, inlinedAt: !2994)
!2996 = !DILocation(line: 2059, column: 10, scope: !2989, inlinedAt: !2994)
!2997 = !DILocation(line: 0, scope: !2915, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 70, column: 10, scope: !2981)
!2999 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !2998)
!3000 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !2998)
!3001 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !2998)
!3002 = !DILocation(line: 70, column: 3, scope: !2981)
!3003 = distinct !DISubprogram(name: "xirealloc", scope: !397, file: !397, line: 74, type: !3004, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!62, !62, !416}
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "p", arg: 1, scope: !3003, file: !397, line: 74, type: !62)
!3008 = !DILocalVariable(name: "s", arg: 2, scope: !3003, file: !397, line: 74, type: !416)
!3009 = !DILocation(line: 0, scope: !3003)
!3010 = !DILocalVariable(name: "p", arg: 1, scope: !3011, file: !2955, line: 66, type: !62)
!3011 = distinct !DISubprogram(name: "irealloc", scope: !2955, file: !2955, line: 66, type: !3004, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3012)
!3012 = !{!3010, !3013}
!3013 = !DILocalVariable(name: "s", arg: 2, scope: !3011, file: !2955, line: 66, type: !416)
!3014 = !DILocation(line: 0, scope: !3011, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 76, column: 25, scope: !3003)
!3016 = !DILocation(line: 0, scope: !2989, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 68, column: 26, scope: !3011, inlinedAt: !3015)
!3018 = !DILocation(line: 2059, column: 24, scope: !2989, inlinedAt: !3017)
!3019 = !DILocation(line: 2059, column: 10, scope: !2989, inlinedAt: !3017)
!3020 = !DILocation(line: 0, scope: !2915, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 76, column: 10, scope: !3003)
!3022 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3021)
!3023 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3021)
!3024 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3021)
!3025 = !DILocation(line: 76, column: 3, scope: !3003)
!3026 = distinct !DISubprogram(name: "xireallocarray", scope: !397, file: !397, line: 89, type: !3027, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!62, !62, !416, !416}
!3029 = !{!3030, !3031, !3032}
!3030 = !DILocalVariable(name: "p", arg: 1, scope: !3026, file: !397, line: 89, type: !62)
!3031 = !DILocalVariable(name: "n", arg: 2, scope: !3026, file: !397, line: 89, type: !416)
!3032 = !DILocalVariable(name: "s", arg: 3, scope: !3026, file: !397, line: 89, type: !416)
!3033 = !DILocation(line: 0, scope: !3026)
!3034 = !DILocalVariable(name: "p", arg: 1, scope: !3035, file: !2955, line: 98, type: !62)
!3035 = distinct !DISubprogram(name: "ireallocarray", scope: !2955, file: !2955, line: 98, type: !3027, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3036)
!3036 = !{!3034, !3037, !3038}
!3037 = !DILocalVariable(name: "n", arg: 2, scope: !3035, file: !2955, line: 98, type: !416)
!3038 = !DILocalVariable(name: "s", arg: 3, scope: !3035, file: !2955, line: 98, type: !416)
!3039 = !DILocation(line: 0, scope: !3035, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 91, column: 25, scope: !3026)
!3041 = !DILocation(line: 101, column: 13, scope: !3035, inlinedAt: !3040)
!3042 = !DILocation(line: 0, scope: !2915, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 91, column: 10, scope: !3026)
!3044 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3043)
!3045 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3043)
!3046 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3043)
!3047 = !DILocation(line: 91, column: 3, scope: !3026)
!3048 = distinct !DISubprogram(name: "xnmalloc", scope: !397, file: !397, line: 98, type: !3049, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!62, !65, !65}
!3051 = !{!3052, !3053}
!3052 = !DILocalVariable(name: "n", arg: 1, scope: !3048, file: !397, line: 98, type: !65)
!3053 = !DILocalVariable(name: "s", arg: 2, scope: !3048, file: !397, line: 98, type: !65)
!3054 = !DILocation(line: 0, scope: !3048)
!3055 = !DILocation(line: 0, scope: !2907, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 100, column: 10, scope: !3048)
!3057 = !DILocation(line: 85, column: 25, scope: !2907, inlinedAt: !3056)
!3058 = !DILocation(line: 0, scope: !2915, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 85, column: 10, scope: !2907, inlinedAt: !3056)
!3060 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3059)
!3061 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3059)
!3062 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3059)
!3063 = !DILocation(line: 100, column: 3, scope: !3048)
!3064 = distinct !DISubprogram(name: "xinmalloc", scope: !397, file: !397, line: 104, type: !3065, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!62, !416, !416}
!3067 = !{!3068, !3069}
!3068 = !DILocalVariable(name: "n", arg: 1, scope: !3064, file: !397, line: 104, type: !416)
!3069 = !DILocalVariable(name: "s", arg: 2, scope: !3064, file: !397, line: 104, type: !416)
!3070 = !DILocation(line: 0, scope: !3064)
!3071 = !DILocation(line: 0, scope: !3026, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 106, column: 10, scope: !3064)
!3073 = !DILocation(line: 0, scope: !3035, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 91, column: 25, scope: !3026, inlinedAt: !3072)
!3075 = !DILocation(line: 101, column: 13, scope: !3035, inlinedAt: !3074)
!3076 = !DILocation(line: 0, scope: !2915, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 91, column: 10, scope: !3026, inlinedAt: !3072)
!3078 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3077)
!3079 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3077)
!3080 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3077)
!3081 = !DILocation(line: 106, column: 3, scope: !3064)
!3082 = distinct !DISubprogram(name: "x2realloc", scope: !397, file: !397, line: 116, type: !3083, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!62, !62, !403}
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "p", arg: 1, scope: !3082, file: !397, line: 116, type: !62)
!3087 = !DILocalVariable(name: "ps", arg: 2, scope: !3082, file: !397, line: 116, type: !403)
!3088 = !DILocation(line: 0, scope: !3082)
!3089 = !DILocation(line: 0, scope: !400, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 118, column: 10, scope: !3082)
!3091 = !DILocation(line: 178, column: 14, scope: !400, inlinedAt: !3090)
!3092 = !DILocation(line: 180, column: 9, scope: !3093, inlinedAt: !3090)
!3093 = distinct !DILexicalBlock(scope: !400, file: !397, line: 180, column: 7)
!3094 = !DILocation(line: 180, column: 7, scope: !400, inlinedAt: !3090)
!3095 = !DILocation(line: 182, column: 13, scope: !3096, inlinedAt: !3090)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !397, line: 182, column: 11)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !397, line: 181, column: 5)
!3098 = !DILocation(line: 182, column: 11, scope: !3097, inlinedAt: !3090)
!3099 = !DILocation(line: 197, column: 11, scope: !3100, inlinedAt: !3090)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !397, line: 197, column: 11)
!3101 = distinct !DILexicalBlock(scope: !3093, file: !397, line: 195, column: 5)
!3102 = !DILocation(line: 197, column: 11, scope: !3101, inlinedAt: !3090)
!3103 = !DILocation(line: 198, column: 9, scope: !3100, inlinedAt: !3090)
!3104 = !DILocation(line: 0, scope: !2907, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 201, column: 7, scope: !400, inlinedAt: !3090)
!3106 = !DILocation(line: 85, column: 25, scope: !2907, inlinedAt: !3105)
!3107 = !DILocation(line: 0, scope: !2915, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 85, column: 10, scope: !2907, inlinedAt: !3105)
!3109 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3108)
!3110 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3108)
!3111 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3108)
!3112 = !DILocation(line: 202, column: 7, scope: !400, inlinedAt: !3090)
!3113 = !DILocation(line: 118, column: 3, scope: !3082)
!3114 = !DILocation(line: 0, scope: !400)
!3115 = !DILocation(line: 178, column: 14, scope: !400)
!3116 = !DILocation(line: 180, column: 9, scope: !3093)
!3117 = !DILocation(line: 180, column: 7, scope: !400)
!3118 = !DILocation(line: 182, column: 13, scope: !3096)
!3119 = !DILocation(line: 182, column: 11, scope: !3097)
!3120 = !DILocation(line: 190, column: 30, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3096, file: !397, line: 183, column: 9)
!3122 = !DILocation(line: 191, column: 16, scope: !3121)
!3123 = !DILocation(line: 191, column: 13, scope: !3121)
!3124 = !DILocation(line: 192, column: 9, scope: !3121)
!3125 = !DILocation(line: 197, column: 11, scope: !3100)
!3126 = !DILocation(line: 197, column: 11, scope: !3101)
!3127 = !DILocation(line: 198, column: 9, scope: !3100)
!3128 = !DILocation(line: 0, scope: !2907, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 201, column: 7, scope: !400)
!3130 = !DILocation(line: 85, column: 25, scope: !2907, inlinedAt: !3129)
!3131 = !DILocation(line: 0, scope: !2915, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 85, column: 10, scope: !2907, inlinedAt: !3129)
!3133 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3132)
!3134 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3132)
!3135 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3132)
!3136 = !DILocation(line: 202, column: 7, scope: !400)
!3137 = !DILocation(line: 203, column: 3, scope: !400)
!3138 = !DILocation(line: 0, scope: !412)
!3139 = !DILocation(line: 230, column: 14, scope: !412)
!3140 = !DILocation(line: 238, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !412, file: !397, line: 238, column: 7)
!3142 = !DILocation(line: 238, column: 7, scope: !412)
!3143 = !DILocation(line: 240, column: 9, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !412, file: !397, line: 240, column: 7)
!3145 = !DILocation(line: 240, column: 18, scope: !3144)
!3146 = !DILocation(line: 253, column: 8, scope: !412)
!3147 = !DILocation(line: 258, column: 27, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !397, line: 257, column: 5)
!3149 = distinct !DILexicalBlock(scope: !412, file: !397, line: 256, column: 7)
!3150 = !DILocation(line: 259, column: 32, scope: !3148)
!3151 = !DILocation(line: 260, column: 5, scope: !3148)
!3152 = !DILocation(line: 262, column: 9, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !412, file: !397, line: 262, column: 7)
!3154 = !DILocation(line: 262, column: 7, scope: !412)
!3155 = !DILocation(line: 263, column: 9, scope: !3153)
!3156 = !DILocation(line: 263, column: 5, scope: !3153)
!3157 = !DILocation(line: 264, column: 9, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !412, file: !397, line: 264, column: 7)
!3159 = !DILocation(line: 264, column: 14, scope: !3158)
!3160 = !DILocation(line: 265, column: 7, scope: !3158)
!3161 = !DILocation(line: 265, column: 11, scope: !3158)
!3162 = !DILocation(line: 266, column: 11, scope: !3158)
!3163 = !DILocation(line: 266, column: 26, scope: !3158)
!3164 = !DILocation(line: 267, column: 14, scope: !3158)
!3165 = !DILocation(line: 264, column: 7, scope: !412)
!3166 = !DILocation(line: 268, column: 5, scope: !3158)
!3167 = !DILocation(line: 0, scope: !2981, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 269, column: 8, scope: !412)
!3169 = !DILocation(line: 0, scope: !2989, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 70, column: 25, scope: !2981, inlinedAt: !3168)
!3171 = !DILocation(line: 2059, column: 24, scope: !2989, inlinedAt: !3170)
!3172 = !DILocation(line: 2059, column: 10, scope: !2989, inlinedAt: !3170)
!3173 = !DILocation(line: 0, scope: !2915, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 70, column: 10, scope: !2981, inlinedAt: !3168)
!3175 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3174)
!3176 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3174)
!3177 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3174)
!3178 = !DILocation(line: 270, column: 7, scope: !412)
!3179 = !DILocation(line: 271, column: 3, scope: !412)
!3180 = distinct !DISubprogram(name: "xzalloc", scope: !397, file: !397, line: 279, type: !2935, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3181)
!3181 = !{!3182}
!3182 = !DILocalVariable(name: "s", arg: 1, scope: !3180, file: !397, line: 279, type: !65)
!3183 = !DILocation(line: 0, scope: !3180)
!3184 = !DILocalVariable(name: "n", arg: 1, scope: !3185, file: !397, line: 294, type: !65)
!3185 = distinct !DISubprogram(name: "xcalloc", scope: !397, file: !397, line: 294, type: !3049, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3186)
!3186 = !{!3184, !3187}
!3187 = !DILocalVariable(name: "s", arg: 2, scope: !3185, file: !397, line: 294, type: !65)
!3188 = !DILocation(line: 0, scope: !3185, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 281, column: 10, scope: !3180)
!3190 = !DILocation(line: 296, column: 25, scope: !3185, inlinedAt: !3189)
!3191 = !DILocation(line: 0, scope: !2915, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 296, column: 10, scope: !3185, inlinedAt: !3189)
!3193 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3192)
!3194 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3192)
!3195 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3192)
!3196 = !DILocation(line: 281, column: 3, scope: !3180)
!3197 = !DILocation(line: 0, scope: !3185)
!3198 = !DILocation(line: 296, column: 25, scope: !3185)
!3199 = !DILocation(line: 0, scope: !2915, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 296, column: 10, scope: !3185)
!3201 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3200)
!3202 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3200)
!3203 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3200)
!3204 = !DILocation(line: 296, column: 3, scope: !3185)
!3205 = distinct !DISubprogram(name: "xizalloc", scope: !397, file: !397, line: 285, type: !2948, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3206)
!3206 = !{!3207}
!3207 = !DILocalVariable(name: "s", arg: 1, scope: !3205, file: !397, line: 285, type: !416)
!3208 = !DILocation(line: 0, scope: !3205)
!3209 = !DILocalVariable(name: "n", arg: 1, scope: !3210, file: !397, line: 300, type: !416)
!3210 = distinct !DISubprogram(name: "xicalloc", scope: !397, file: !397, line: 300, type: !3065, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3211)
!3211 = !{!3209, !3212}
!3212 = !DILocalVariable(name: "s", arg: 2, scope: !3210, file: !397, line: 300, type: !416)
!3213 = !DILocation(line: 0, scope: !3210, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 287, column: 10, scope: !3205)
!3215 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !2955, line: 77, type: !416)
!3216 = distinct !DISubprogram(name: "icalloc", scope: !2955, file: !2955, line: 77, type: !3065, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3217)
!3217 = !{!3215, !3218}
!3218 = !DILocalVariable(name: "s", arg: 2, scope: !3216, file: !2955, line: 77, type: !416)
!3219 = !DILocation(line: 0, scope: !3216, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 302, column: 25, scope: !3210, inlinedAt: !3214)
!3221 = !DILocation(line: 91, column: 10, scope: !3216, inlinedAt: !3220)
!3222 = !DILocation(line: 0, scope: !2915, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 302, column: 10, scope: !3210, inlinedAt: !3214)
!3224 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3223)
!3225 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3223)
!3226 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3223)
!3227 = !DILocation(line: 287, column: 3, scope: !3205)
!3228 = !DILocation(line: 0, scope: !3210)
!3229 = !DILocation(line: 0, scope: !3216, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 302, column: 25, scope: !3210)
!3231 = !DILocation(line: 91, column: 10, scope: !3216, inlinedAt: !3230)
!3232 = !DILocation(line: 0, scope: !2915, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 302, column: 10, scope: !3210)
!3234 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3233)
!3235 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3233)
!3236 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3233)
!3237 = !DILocation(line: 302, column: 3, scope: !3210)
!3238 = distinct !DISubprogram(name: "xmemdup", scope: !397, file: !397, line: 310, type: !3239, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!62, !679, !65}
!3241 = !{!3242, !3243}
!3242 = !DILocalVariable(name: "p", arg: 1, scope: !3238, file: !397, line: 310, type: !679)
!3243 = !DILocalVariable(name: "s", arg: 2, scope: !3238, file: !397, line: 310, type: !65)
!3244 = !DILocation(line: 0, scope: !3238)
!3245 = !DILocation(line: 0, scope: !2934, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 312, column: 18, scope: !3238)
!3247 = !DILocation(line: 49, column: 25, scope: !2934, inlinedAt: !3246)
!3248 = !DILocation(line: 0, scope: !2915, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 49, column: 10, scope: !2934, inlinedAt: !3246)
!3250 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3249)
!3251 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3249)
!3252 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3249)
!3253 = !DILocalVariable(name: "__dest", arg: 1, scope: !3254, file: !880, line: 26, type: !3257)
!3254 = distinct !DISubprogram(name: "memcpy", scope: !880, file: !880, line: 26, type: !3255, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3258)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!62, !3257, !678, !65}
!3257 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!3258 = !{!3253, !3259, !3260}
!3259 = !DILocalVariable(name: "__src", arg: 2, scope: !3254, file: !880, line: 26, type: !678)
!3260 = !DILocalVariable(name: "__len", arg: 3, scope: !3254, file: !880, line: 26, type: !65)
!3261 = !DILocation(line: 0, scope: !3254, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 312, column: 10, scope: !3238)
!3263 = !DILocation(line: 29, column: 10, scope: !3254, inlinedAt: !3262)
!3264 = !DILocation(line: 312, column: 3, scope: !3238)
!3265 = distinct !DISubprogram(name: "ximemdup", scope: !397, file: !397, line: 316, type: !3266, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!62, !679, !416}
!3268 = !{!3269, !3270}
!3269 = !DILocalVariable(name: "p", arg: 1, scope: !3265, file: !397, line: 316, type: !679)
!3270 = !DILocalVariable(name: "s", arg: 2, scope: !3265, file: !397, line: 316, type: !416)
!3271 = !DILocation(line: 0, scope: !3265)
!3272 = !DILocation(line: 0, scope: !2947, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 318, column: 18, scope: !3265)
!3274 = !DILocation(line: 0, scope: !2954, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 55, column: 25, scope: !2947, inlinedAt: !3273)
!3276 = !DILocation(line: 57, column: 26, scope: !2954, inlinedAt: !3275)
!3277 = !DILocation(line: 0, scope: !2915, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 55, column: 10, scope: !2947, inlinedAt: !3273)
!3279 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3278)
!3280 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3278)
!3281 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3278)
!3282 = !DILocation(line: 0, scope: !3254, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 318, column: 10, scope: !3265)
!3284 = !DILocation(line: 29, column: 10, scope: !3254, inlinedAt: !3283)
!3285 = !DILocation(line: 318, column: 3, scope: !3265)
!3286 = distinct !DISubprogram(name: "ximemdup0", scope: !397, file: !397, line: 325, type: !3287, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!60, !679, !416}
!3289 = !{!3290, !3291, !3292}
!3290 = !DILocalVariable(name: "p", arg: 1, scope: !3286, file: !397, line: 325, type: !679)
!3291 = !DILocalVariable(name: "s", arg: 2, scope: !3286, file: !397, line: 325, type: !416)
!3292 = !DILocalVariable(name: "result", scope: !3286, file: !397, line: 327, type: !60)
!3293 = !DILocation(line: 0, scope: !3286)
!3294 = !DILocation(line: 327, column: 30, scope: !3286)
!3295 = !DILocation(line: 0, scope: !2947, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 327, column: 18, scope: !3286)
!3297 = !DILocation(line: 0, scope: !2954, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 55, column: 25, scope: !2947, inlinedAt: !3296)
!3299 = !DILocation(line: 57, column: 26, scope: !2954, inlinedAt: !3298)
!3300 = !DILocation(line: 0, scope: !2915, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 55, column: 10, scope: !2947, inlinedAt: !3296)
!3302 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3301)
!3303 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3301)
!3304 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3301)
!3305 = !DILocation(line: 328, column: 3, scope: !3286)
!3306 = !DILocation(line: 328, column: 13, scope: !3286)
!3307 = !DILocation(line: 0, scope: !3254, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 329, column: 10, scope: !3286)
!3309 = !DILocation(line: 29, column: 10, scope: !3254, inlinedAt: !3308)
!3310 = !DILocation(line: 329, column: 3, scope: !3286)
!3311 = distinct !DISubprogram(name: "xstrdup", scope: !397, file: !397, line: 335, type: !673, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3312)
!3312 = !{!3313}
!3313 = !DILocalVariable(name: "string", arg: 1, scope: !3311, file: !397, line: 335, type: !68)
!3314 = !DILocation(line: 0, scope: !3311)
!3315 = !DILocation(line: 337, column: 27, scope: !3311)
!3316 = !DILocation(line: 337, column: 43, scope: !3311)
!3317 = !DILocation(line: 0, scope: !3238, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 337, column: 10, scope: !3311)
!3319 = !DILocation(line: 0, scope: !2934, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 312, column: 18, scope: !3238, inlinedAt: !3318)
!3321 = !DILocation(line: 49, column: 25, scope: !2934, inlinedAt: !3320)
!3322 = !DILocation(line: 0, scope: !2915, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 49, column: 10, scope: !2934, inlinedAt: !3320)
!3324 = !DILocation(line: 39, column: 8, scope: !2922, inlinedAt: !3323)
!3325 = !DILocation(line: 39, column: 7, scope: !2915, inlinedAt: !3323)
!3326 = !DILocation(line: 40, column: 5, scope: !2922, inlinedAt: !3323)
!3327 = !DILocation(line: 0, scope: !3254, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 312, column: 10, scope: !3238, inlinedAt: !3318)
!3329 = !DILocation(line: 29, column: 10, scope: !3254, inlinedAt: !3328)
!3330 = !DILocation(line: 337, column: 3, scope: !3311)
!3331 = distinct !DISubprogram(name: "xalloc_die", scope: !431, file: !431, line: 32, type: !222, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !3332)
!3332 = !{!3333}
!3333 = !DILocalVariable(name: "__errstatus", scope: !3334, file: !431, line: 34, type: !3335)
!3334 = distinct !DILexicalBlock(scope: !3331, file: !431, line: 34, column: 3)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!3336 = !DILocation(line: 34, column: 3, scope: !3334)
!3337 = !DILocation(line: 0, scope: !3334)
!3338 = !DILocation(line: 40, column: 3, scope: !3331)
!3339 = distinct !DISubprogram(name: "close_stream", scope: !433, file: !433, line: 55, type: !3340, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3376)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!63, !3342}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !3344)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3344, file: !102, line: 51, baseType: !63, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3344, file: !102, line: 54, baseType: !60, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3344, file: !102, line: 55, baseType: !60, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3344, file: !102, line: 56, baseType: !60, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3344, file: !102, line: 57, baseType: !60, size: 64, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3344, file: !102, line: 58, baseType: !60, size: 64, offset: 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3344, file: !102, line: 59, baseType: !60, size: 64, offset: 384)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3344, file: !102, line: 60, baseType: !60, size: 64, offset: 448)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3344, file: !102, line: 61, baseType: !60, size: 64, offset: 512)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3344, file: !102, line: 64, baseType: !60, size: 64, offset: 576)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3344, file: !102, line: 65, baseType: !60, size: 64, offset: 640)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3344, file: !102, line: 66, baseType: !60, size: 64, offset: 704)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3344, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3344, file: !102, line: 70, baseType: !3360, size: 64, offset: 832)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3344, file: !102, line: 72, baseType: !63, size: 32, offset: 896)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3344, file: !102, line: 73, baseType: !63, size: 32, offset: 928)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3344, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3344, file: !102, line: 77, baseType: !64, size: 16, offset: 1024)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3344, file: !102, line: 78, baseType: !129, size: 8, offset: 1040)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3344, file: !102, line: 79, baseType: !131, size: 8, offset: 1048)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3344, file: !102, line: 81, baseType: !135, size: 64, offset: 1088)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3344, file: !102, line: 89, baseType: !138, size: 64, offset: 1152)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3344, file: !102, line: 91, baseType: !140, size: 64, offset: 1216)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3344, file: !102, line: 92, baseType: !143, size: 64, offset: 1280)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3344, file: !102, line: 93, baseType: !3360, size: 64, offset: 1344)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3344, file: !102, line: 94, baseType: !62, size: 64, offset: 1408)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3344, file: !102, line: 95, baseType: !65, size: 64, offset: 1472)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3344, file: !102, line: 96, baseType: !63, size: 32, offset: 1536)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3344, file: !102, line: 98, baseType: !150, size: 160, offset: 1568)
!3376 = !{!3377, !3378, !3380, !3381}
!3377 = !DILocalVariable(name: "stream", arg: 1, scope: !3339, file: !433, line: 55, type: !3342)
!3378 = !DILocalVariable(name: "some_pending", scope: !3339, file: !433, line: 57, type: !3379)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3380 = !DILocalVariable(name: "prev_fail", scope: !3339, file: !433, line: 58, type: !3379)
!3381 = !DILocalVariable(name: "fclose_fail", scope: !3339, file: !433, line: 59, type: !3379)
!3382 = !DILocation(line: 0, scope: !3339)
!3383 = !DILocation(line: 57, column: 30, scope: !3339)
!3384 = !DILocalVariable(name: "__stream", arg: 1, scope: !3385, file: !1217, line: 135, type: !3342)
!3385 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1217, file: !1217, line: 135, type: !3340, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3386)
!3386 = !{!3384}
!3387 = !DILocation(line: 0, scope: !3385, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 58, column: 27, scope: !3339)
!3389 = !DILocation(line: 137, column: 10, scope: !3385, inlinedAt: !3388)
!3390 = !{!1226, !562, i64 0}
!3391 = !DILocation(line: 58, column: 43, scope: !3339)
!3392 = !DILocation(line: 59, column: 29, scope: !3339)
!3393 = !DILocation(line: 59, column: 45, scope: !3339)
!3394 = !DILocation(line: 69, column: 17, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3339, file: !433, line: 69, column: 7)
!3396 = !DILocation(line: 57, column: 50, scope: !3339)
!3397 = !DILocation(line: 69, column: 33, scope: !3395)
!3398 = !DILocation(line: 69, column: 53, scope: !3395)
!3399 = !DILocation(line: 69, column: 59, scope: !3395)
!3400 = !DILocation(line: 69, column: 7, scope: !3339)
!3401 = !DILocation(line: 71, column: 11, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3395, file: !433, line: 70, column: 5)
!3403 = !DILocation(line: 72, column: 9, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3402, file: !433, line: 71, column: 11)
!3405 = !DILocation(line: 72, column: 15, scope: !3404)
!3406 = !DILocation(line: 77, column: 1, scope: !3339)
!3407 = distinct !DISubprogram(name: "rpl_fclose", scope: !435, file: !435, line: 58, type: !3408, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3444)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!63, !3410}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3412, file: !102, line: 51, baseType: !63, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3412, file: !102, line: 54, baseType: !60, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3412, file: !102, line: 55, baseType: !60, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3412, file: !102, line: 56, baseType: !60, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3412, file: !102, line: 57, baseType: !60, size: 64, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3412, file: !102, line: 58, baseType: !60, size: 64, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3412, file: !102, line: 59, baseType: !60, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3412, file: !102, line: 60, baseType: !60, size: 64, offset: 448)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3412, file: !102, line: 61, baseType: !60, size: 64, offset: 512)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3412, file: !102, line: 64, baseType: !60, size: 64, offset: 576)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3412, file: !102, line: 65, baseType: !60, size: 64, offset: 640)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3412, file: !102, line: 66, baseType: !60, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3412, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3412, file: !102, line: 70, baseType: !3428, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3412, file: !102, line: 72, baseType: !63, size: 32, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3412, file: !102, line: 73, baseType: !63, size: 32, offset: 928)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3412, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3412, file: !102, line: 77, baseType: !64, size: 16, offset: 1024)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3412, file: !102, line: 78, baseType: !129, size: 8, offset: 1040)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3412, file: !102, line: 79, baseType: !131, size: 8, offset: 1048)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3412, file: !102, line: 81, baseType: !135, size: 64, offset: 1088)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3412, file: !102, line: 89, baseType: !138, size: 64, offset: 1152)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3412, file: !102, line: 91, baseType: !140, size: 64, offset: 1216)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3412, file: !102, line: 92, baseType: !143, size: 64, offset: 1280)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3412, file: !102, line: 93, baseType: !3428, size: 64, offset: 1344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3412, file: !102, line: 94, baseType: !62, size: 64, offset: 1408)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3412, file: !102, line: 95, baseType: !65, size: 64, offset: 1472)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3412, file: !102, line: 96, baseType: !63, size: 32, offset: 1536)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3412, file: !102, line: 98, baseType: !150, size: 160, offset: 1568)
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "fp", arg: 1, scope: !3407, file: !435, line: 58, type: !3410)
!3446 = !DILocalVariable(name: "saved_errno", scope: !3407, file: !435, line: 60, type: !63)
!3447 = !DILocalVariable(name: "fd", scope: !3407, file: !435, line: 63, type: !63)
!3448 = !DILocalVariable(name: "result", scope: !3407, file: !435, line: 74, type: !63)
!3449 = !DILocation(line: 0, scope: !3407)
!3450 = !DILocation(line: 63, column: 12, scope: !3407)
!3451 = !DILocation(line: 64, column: 10, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3407, file: !435, line: 64, column: 7)
!3453 = !DILocation(line: 64, column: 7, scope: !3407)
!3454 = !DILocation(line: 65, column: 12, scope: !3452)
!3455 = !DILocation(line: 65, column: 5, scope: !3452)
!3456 = !DILocation(line: 70, column: 9, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3407, file: !435, line: 70, column: 7)
!3458 = !DILocation(line: 70, column: 23, scope: !3457)
!3459 = !DILocation(line: 70, column: 33, scope: !3457)
!3460 = !DILocation(line: 70, column: 26, scope: !3457)
!3461 = !DILocation(line: 70, column: 59, scope: !3457)
!3462 = !DILocation(line: 71, column: 7, scope: !3457)
!3463 = !DILocation(line: 71, column: 10, scope: !3457)
!3464 = !DILocation(line: 70, column: 7, scope: !3407)
!3465 = !DILocation(line: 100, column: 12, scope: !3407)
!3466 = !DILocation(line: 105, column: 7, scope: !3407)
!3467 = !DILocation(line: 72, column: 19, scope: !3457)
!3468 = !DILocation(line: 105, column: 19, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3407, file: !435, line: 105, column: 7)
!3470 = !DILocation(line: 107, column: 13, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3469, file: !435, line: 106, column: 5)
!3472 = !DILocation(line: 109, column: 5, scope: !3471)
!3473 = !DILocation(line: 112, column: 1, scope: !3407)
!3474 = !DISubprogram(name: "fileno", scope: !195, file: !195, line: 809, type: !3408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3475 = !DISubprogram(name: "fclose", scope: !195, file: !195, line: 178, type: !3408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3476 = !DISubprogram(name: "lseek", scope: !1040, file: !1040, line: 339, type: !3477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!124, !63, !124, !63}
!3479 = distinct !DISubprogram(name: "rpl_fflush", scope: !437, file: !437, line: 130, type: !3480, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !3516)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!63, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3484, file: !102, line: 51, baseType: !63, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3484, file: !102, line: 54, baseType: !60, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3484, file: !102, line: 55, baseType: !60, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3484, file: !102, line: 56, baseType: !60, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3484, file: !102, line: 57, baseType: !60, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3484, file: !102, line: 58, baseType: !60, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3484, file: !102, line: 59, baseType: !60, size: 64, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3484, file: !102, line: 60, baseType: !60, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3484, file: !102, line: 61, baseType: !60, size: 64, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3484, file: !102, line: 64, baseType: !60, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3484, file: !102, line: 65, baseType: !60, size: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3484, file: !102, line: 66, baseType: !60, size: 64, offset: 704)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3484, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3484, file: !102, line: 70, baseType: !3500, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3484, file: !102, line: 72, baseType: !63, size: 32, offset: 896)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3484, file: !102, line: 73, baseType: !63, size: 32, offset: 928)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3484, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3484, file: !102, line: 77, baseType: !64, size: 16, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3484, file: !102, line: 78, baseType: !129, size: 8, offset: 1040)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3484, file: !102, line: 79, baseType: !131, size: 8, offset: 1048)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3484, file: !102, line: 81, baseType: !135, size: 64, offset: 1088)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3484, file: !102, line: 89, baseType: !138, size: 64, offset: 1152)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3484, file: !102, line: 91, baseType: !140, size: 64, offset: 1216)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3484, file: !102, line: 92, baseType: !143, size: 64, offset: 1280)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3484, file: !102, line: 93, baseType: !3500, size: 64, offset: 1344)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3484, file: !102, line: 94, baseType: !62, size: 64, offset: 1408)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3484, file: !102, line: 95, baseType: !65, size: 64, offset: 1472)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3484, file: !102, line: 96, baseType: !63, size: 32, offset: 1536)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3484, file: !102, line: 98, baseType: !150, size: 160, offset: 1568)
!3516 = !{!3517}
!3517 = !DILocalVariable(name: "stream", arg: 1, scope: !3479, file: !437, line: 130, type: !3482)
!3518 = !DILocation(line: 0, scope: !3479)
!3519 = !DILocation(line: 151, column: 14, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3479, file: !437, line: 151, column: 7)
!3521 = !DILocation(line: 151, column: 22, scope: !3520)
!3522 = !DILocation(line: 151, column: 27, scope: !3520)
!3523 = !DILocation(line: 151, column: 7, scope: !3479)
!3524 = !DILocation(line: 152, column: 12, scope: !3520)
!3525 = !DILocation(line: 152, column: 5, scope: !3520)
!3526 = !DILocalVariable(name: "fp", arg: 1, scope: !3527, file: !437, line: 42, type: !3482)
!3527 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !437, file: !437, line: 42, type: !3528, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{null, !3482}
!3530 = !{!3526}
!3531 = !DILocation(line: 0, scope: !3527, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 157, column: 3, scope: !3479)
!3533 = !DILocation(line: 44, column: 12, scope: !3534, inlinedAt: !3532)
!3534 = distinct !DILexicalBlock(scope: !3527, file: !437, line: 44, column: 7)
!3535 = !DILocation(line: 44, column: 19, scope: !3534, inlinedAt: !3532)
!3536 = !DILocation(line: 44, column: 7, scope: !3527, inlinedAt: !3532)
!3537 = !DILocation(line: 46, column: 5, scope: !3534, inlinedAt: !3532)
!3538 = !DILocation(line: 159, column: 10, scope: !3479)
!3539 = !DILocation(line: 159, column: 3, scope: !3479)
!3540 = !DILocation(line: 236, column: 1, scope: !3479)
!3541 = !DISubprogram(name: "fflush", scope: !195, file: !195, line: 230, type: !3480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3542 = distinct !DISubprogram(name: "rpl_fseeko", scope: !439, file: !439, line: 28, type: !3543, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !3580)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!63, !3545, !3579, !63}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !3547)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3547, file: !102, line: 51, baseType: !63, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3547, file: !102, line: 54, baseType: !60, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3547, file: !102, line: 55, baseType: !60, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3547, file: !102, line: 56, baseType: !60, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3547, file: !102, line: 57, baseType: !60, size: 64, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3547, file: !102, line: 58, baseType: !60, size: 64, offset: 320)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3547, file: !102, line: 59, baseType: !60, size: 64, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3547, file: !102, line: 60, baseType: !60, size: 64, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3547, file: !102, line: 61, baseType: !60, size: 64, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3547, file: !102, line: 64, baseType: !60, size: 64, offset: 576)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3547, file: !102, line: 65, baseType: !60, size: 64, offset: 640)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3547, file: !102, line: 66, baseType: !60, size: 64, offset: 704)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3547, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3547, file: !102, line: 70, baseType: !3563, size: 64, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3547, file: !102, line: 72, baseType: !63, size: 32, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3547, file: !102, line: 73, baseType: !63, size: 32, offset: 928)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3547, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3547, file: !102, line: 77, baseType: !64, size: 16, offset: 1024)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3547, file: !102, line: 78, baseType: !129, size: 8, offset: 1040)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3547, file: !102, line: 79, baseType: !131, size: 8, offset: 1048)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3547, file: !102, line: 81, baseType: !135, size: 64, offset: 1088)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3547, file: !102, line: 89, baseType: !138, size: 64, offset: 1152)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3547, file: !102, line: 91, baseType: !140, size: 64, offset: 1216)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3547, file: !102, line: 92, baseType: !143, size: 64, offset: 1280)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3547, file: !102, line: 93, baseType: !3563, size: 64, offset: 1344)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3547, file: !102, line: 94, baseType: !62, size: 64, offset: 1408)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3547, file: !102, line: 95, baseType: !65, size: 64, offset: 1472)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3547, file: !102, line: 96, baseType: !63, size: 32, offset: 1536)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3547, file: !102, line: 98, baseType: !150, size: 160, offset: 1568)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !195, line: 63, baseType: !124)
!3580 = !{!3581, !3582, !3583, !3584}
!3581 = !DILocalVariable(name: "fp", arg: 1, scope: !3542, file: !439, line: 28, type: !3545)
!3582 = !DILocalVariable(name: "offset", arg: 2, scope: !3542, file: !439, line: 28, type: !3579)
!3583 = !DILocalVariable(name: "whence", arg: 3, scope: !3542, file: !439, line: 28, type: !63)
!3584 = !DILocalVariable(name: "pos", scope: !3585, file: !439, line: 123, type: !3579)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !439, line: 119, column: 5)
!3586 = distinct !DILexicalBlock(scope: !3542, file: !439, line: 55, column: 7)
!3587 = !DILocation(line: 0, scope: !3542)
!3588 = !DILocation(line: 55, column: 12, scope: !3586)
!3589 = !{!1226, !473, i64 16}
!3590 = !DILocation(line: 55, column: 33, scope: !3586)
!3591 = !{!1226, !473, i64 8}
!3592 = !DILocation(line: 55, column: 25, scope: !3586)
!3593 = !DILocation(line: 56, column: 7, scope: !3586)
!3594 = !DILocation(line: 56, column: 15, scope: !3586)
!3595 = !DILocation(line: 56, column: 37, scope: !3586)
!3596 = !{!1226, !473, i64 32}
!3597 = !DILocation(line: 56, column: 29, scope: !3586)
!3598 = !DILocation(line: 57, column: 7, scope: !3586)
!3599 = !DILocation(line: 57, column: 15, scope: !3586)
!3600 = !{!1226, !473, i64 72}
!3601 = !DILocation(line: 57, column: 29, scope: !3586)
!3602 = !DILocation(line: 55, column: 7, scope: !3542)
!3603 = !DILocation(line: 123, column: 26, scope: !3585)
!3604 = !DILocation(line: 123, column: 19, scope: !3585)
!3605 = !DILocation(line: 0, scope: !3585)
!3606 = !DILocation(line: 124, column: 15, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3585, file: !439, line: 124, column: 11)
!3608 = !DILocation(line: 124, column: 11, scope: !3585)
!3609 = !DILocation(line: 135, column: 12, scope: !3585)
!3610 = !DILocation(line: 135, column: 19, scope: !3585)
!3611 = !DILocation(line: 136, column: 12, scope: !3585)
!3612 = !DILocation(line: 136, column: 20, scope: !3585)
!3613 = !{!1226, !1227, i64 144}
!3614 = !DILocation(line: 167, column: 7, scope: !3585)
!3615 = !DILocation(line: 169, column: 10, scope: !3542)
!3616 = !DILocation(line: 169, column: 3, scope: !3542)
!3617 = !DILocation(line: 170, column: 1, scope: !3542)
!3618 = !DISubprogram(name: "fseeko", scope: !195, file: !195, line: 736, type: !3619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!63, !3545, !124, !63}
!3621 = distinct !DISubprogram(name: "hard_locale", scope: !441, file: !441, line: 28, type: !3622, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!85, !63}
!3624 = !{!3625, !3626}
!3625 = !DILocalVariable(name: "category", arg: 1, scope: !3621, file: !441, line: 28, type: !63)
!3626 = !DILocalVariable(name: "locale", scope: !3621, file: !441, line: 30, type: !3627)
!3627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2056, elements: !3628)
!3628 = !{!3629}
!3629 = !DISubrange(count: 257)
!3630 = !DILocation(line: 0, scope: !3621)
!3631 = !DILocation(line: 30, column: 3, scope: !3621)
!3632 = !DILocation(line: 30, column: 8, scope: !3621)
!3633 = !DILocation(line: 32, column: 7, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3621, file: !441, line: 32, column: 7)
!3635 = !DILocation(line: 32, column: 7, scope: !3621)
!3636 = !DILocalVariable(name: "__s1", arg: 1, scope: !3637, file: !511, line: 1359, type: !68)
!3637 = distinct !DISubprogram(name: "streq", scope: !511, file: !511, line: 1359, type: !512, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3638)
!3638 = !{!3636, !3639}
!3639 = !DILocalVariable(name: "__s2", arg: 2, scope: !3637, file: !511, line: 1359, type: !68)
!3640 = !DILocation(line: 0, scope: !3637, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 35, column: 9, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3621, file: !441, line: 35, column: 7)
!3643 = !DILocation(line: 1361, column: 11, scope: !3637, inlinedAt: !3641)
!3644 = !DILocation(line: 1361, column: 10, scope: !3637, inlinedAt: !3641)
!3645 = !DILocation(line: 35, column: 29, scope: !3642)
!3646 = !DILocation(line: 0, scope: !3637, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 35, column: 32, scope: !3642)
!3648 = !DILocation(line: 1361, column: 11, scope: !3637, inlinedAt: !3647)
!3649 = !DILocation(line: 1361, column: 10, scope: !3637, inlinedAt: !3647)
!3650 = !DILocation(line: 35, column: 7, scope: !3621)
!3651 = !DILocation(line: 46, column: 3, scope: !3621)
!3652 = !DILocation(line: 47, column: 1, scope: !3621)
!3653 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !372, file: !372, line: 100, type: !3654, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !3657)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!65, !1443, !68, !65, !3656}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!3657 = !{!3658, !3659, !3660, !3661, !3662}
!3658 = !DILocalVariable(name: "pwc", arg: 1, scope: !3653, file: !372, line: 100, type: !1443)
!3659 = !DILocalVariable(name: "s", arg: 2, scope: !3653, file: !372, line: 100, type: !68)
!3660 = !DILocalVariable(name: "n", arg: 3, scope: !3653, file: !372, line: 100, type: !65)
!3661 = !DILocalVariable(name: "ps", arg: 4, scope: !3653, file: !372, line: 100, type: !3656)
!3662 = !DILocalVariable(name: "ret", scope: !3653, file: !372, line: 130, type: !65)
!3663 = !DILocation(line: 0, scope: !3653)
!3664 = !DILocation(line: 105, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3653, file: !372, line: 105, column: 7)
!3666 = !DILocation(line: 105, column: 7, scope: !3653)
!3667 = !DILocation(line: 117, column: 10, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3653, file: !372, line: 117, column: 7)
!3669 = !DILocation(line: 117, column: 7, scope: !3653)
!3670 = !DILocation(line: 130, column: 16, scope: !3653)
!3671 = !DILocation(line: 135, column: 11, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3653, file: !372, line: 135, column: 7)
!3673 = !DILocation(line: 135, column: 25, scope: !3672)
!3674 = !DILocation(line: 135, column: 30, scope: !3672)
!3675 = !DILocation(line: 135, column: 7, scope: !3653)
!3676 = !DILocalVariable(name: "ps", arg: 1, scope: !3677, file: !871, line: 1135, type: !3656)
!3677 = distinct !DISubprogram(name: "mbszero", scope: !871, file: !871, line: 1135, type: !3678, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !3656}
!3680 = !{!3676}
!3681 = !DILocation(line: 0, scope: !3677, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 137, column: 5, scope: !3672)
!3683 = !DILocalVariable(name: "__dest", arg: 1, scope: !3684, file: !880, line: 57, type: !62)
!3684 = distinct !DISubprogram(name: "memset", scope: !880, file: !880, line: 57, type: !881, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !3685)
!3685 = !{!3683, !3686, !3687}
!3686 = !DILocalVariable(name: "__ch", arg: 2, scope: !3684, file: !880, line: 57, type: !63)
!3687 = !DILocalVariable(name: "__len", arg: 3, scope: !3684, file: !880, line: 57, type: !65)
!3688 = !DILocation(line: 0, scope: !3684, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 1137, column: 3, scope: !3677, inlinedAt: !3682)
!3690 = !DILocation(line: 59, column: 10, scope: !3684, inlinedAt: !3689)
!3691 = !DILocation(line: 137, column: 5, scope: !3672)
!3692 = !DILocation(line: 138, column: 11, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3653, file: !372, line: 138, column: 7)
!3694 = !DILocation(line: 138, column: 7, scope: !3653)
!3695 = !DILocation(line: 139, column: 5, scope: !3693)
!3696 = !DILocation(line: 143, column: 26, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3653, file: !372, line: 143, column: 7)
!3698 = !DILocation(line: 143, column: 41, scope: !3697)
!3699 = !DILocation(line: 143, column: 7, scope: !3653)
!3700 = !DILocation(line: 145, column: 15, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !372, line: 145, column: 11)
!3702 = distinct !DILexicalBlock(scope: !3697, file: !372, line: 144, column: 5)
!3703 = !DILocation(line: 145, column: 11, scope: !3702)
!3704 = !DILocation(line: 146, column: 32, scope: !3701)
!3705 = !DILocation(line: 146, column: 16, scope: !3701)
!3706 = !DILocation(line: 146, column: 14, scope: !3701)
!3707 = !DILocation(line: 146, column: 9, scope: !3701)
!3708 = !DILocation(line: 286, column: 1, scope: !3653)
!3709 = !DISubprogram(name: "mbsinit", scope: !1371, file: !1371, line: 293, type: !3710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!63, !3712}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!3714 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !443, file: !443, line: 27, type: !2899, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3715)
!3715 = !{!3716, !3717, !3718, !3719}
!3716 = !DILocalVariable(name: "ptr", arg: 1, scope: !3714, file: !443, line: 27, type: !62)
!3717 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3714, file: !443, line: 27, type: !65)
!3718 = !DILocalVariable(name: "size", arg: 3, scope: !3714, file: !443, line: 27, type: !65)
!3719 = !DILocalVariable(name: "nbytes", scope: !3714, file: !443, line: 29, type: !65)
!3720 = !DILocation(line: 0, scope: !3714)
!3721 = !DILocation(line: 30, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3714, file: !443, line: 30, column: 7)
!3723 = !DILocalVariable(name: "ptr", arg: 1, scope: !3724, file: !2990, line: 2057, type: !62)
!3724 = distinct !DISubprogram(name: "rpl_realloc", scope: !2990, file: !2990, line: 2057, type: !2982, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3725)
!3725 = !{!3723, !3726}
!3726 = !DILocalVariable(name: "size", arg: 2, scope: !3724, file: !2990, line: 2057, type: !65)
!3727 = !DILocation(line: 0, scope: !3724, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 37, column: 10, scope: !3714)
!3729 = !DILocation(line: 2059, column: 24, scope: !3724, inlinedAt: !3728)
!3730 = !DILocation(line: 2059, column: 10, scope: !3724, inlinedAt: !3728)
!3731 = !DILocation(line: 37, column: 3, scope: !3714)
!3732 = !DILocation(line: 32, column: 7, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3722, file: !443, line: 31, column: 5)
!3734 = !DILocation(line: 32, column: 13, scope: !3733)
!3735 = !DILocation(line: 33, column: 7, scope: !3733)
!3736 = !DILocation(line: 38, column: 1, scope: !3714)
!3737 = distinct !DISubprogram(name: "setlocale_null_r", scope: !446, file: !446, line: 154, type: !3738, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!63, !63, !60, !65}
!3740 = !{!3741, !3742, !3743}
!3741 = !DILocalVariable(name: "category", arg: 1, scope: !3737, file: !446, line: 154, type: !63)
!3742 = !DILocalVariable(name: "buf", arg: 2, scope: !3737, file: !446, line: 154, type: !60)
!3743 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3737, file: !446, line: 154, type: !65)
!3744 = !DILocation(line: 0, scope: !3737)
!3745 = !DILocation(line: 159, column: 10, scope: !3737)
!3746 = !DILocation(line: 159, column: 3, scope: !3737)
!3747 = distinct !DISubprogram(name: "setlocale_null", scope: !446, file: !446, line: 186, type: !3748, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!68, !63}
!3750 = !{!3751}
!3751 = !DILocalVariable(name: "category", arg: 1, scope: !3747, file: !446, line: 186, type: !63)
!3752 = !DILocation(line: 0, scope: !3747)
!3753 = !DILocation(line: 189, column: 10, scope: !3747)
!3754 = !DILocation(line: 189, column: 3, scope: !3747)
!3755 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !448, file: !448, line: 35, type: !3748, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !3756)
!3756 = !{!3757, !3758}
!3757 = !DILocalVariable(name: "category", arg: 1, scope: !3755, file: !448, line: 35, type: !63)
!3758 = !DILocalVariable(name: "result", scope: !3755, file: !448, line: 37, type: !68)
!3759 = !DILocation(line: 0, scope: !3755)
!3760 = !DILocation(line: 37, column: 24, scope: !3755)
!3761 = !DILocation(line: 62, column: 3, scope: !3755)
!3762 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !448, file: !448, line: 66, type: !3738, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !3763)
!3763 = !{!3764, !3765, !3766, !3767, !3768}
!3764 = !DILocalVariable(name: "category", arg: 1, scope: !3762, file: !448, line: 66, type: !63)
!3765 = !DILocalVariable(name: "buf", arg: 2, scope: !3762, file: !448, line: 66, type: !60)
!3766 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3762, file: !448, line: 66, type: !65)
!3767 = !DILocalVariable(name: "result", scope: !3762, file: !448, line: 111, type: !68)
!3768 = !DILocalVariable(name: "length", scope: !3769, file: !448, line: 125, type: !65)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !448, line: 124, column: 5)
!3770 = distinct !DILexicalBlock(scope: !3762, file: !448, line: 113, column: 7)
!3771 = !DILocation(line: 0, scope: !3762)
!3772 = !DILocation(line: 0, scope: !3755, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 111, column: 24, scope: !3762)
!3774 = !DILocation(line: 37, column: 24, scope: !3755, inlinedAt: !3773)
!3775 = !DILocation(line: 113, column: 14, scope: !3770)
!3776 = !DILocation(line: 113, column: 7, scope: !3762)
!3777 = !DILocation(line: 116, column: 19, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !448, line: 116, column: 11)
!3779 = distinct !DILexicalBlock(scope: !3770, file: !448, line: 114, column: 5)
!3780 = !DILocation(line: 116, column: 11, scope: !3779)
!3781 = !DILocation(line: 120, column: 16, scope: !3778)
!3782 = !DILocation(line: 120, column: 9, scope: !3778)
!3783 = !DILocation(line: 125, column: 23, scope: !3769)
!3784 = !DILocation(line: 0, scope: !3769)
!3785 = !DILocation(line: 126, column: 18, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3769, file: !448, line: 126, column: 11)
!3787 = !DILocation(line: 126, column: 11, scope: !3769)
!3788 = !DILocation(line: 128, column: 39, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3786, file: !448, line: 127, column: 9)
!3790 = !DILocalVariable(name: "__dest", arg: 1, scope: !3791, file: !880, line: 26, type: !3257)
!3791 = distinct !DISubprogram(name: "memcpy", scope: !880, file: !880, line: 26, type: !3255, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !3792)
!3792 = !{!3790, !3793, !3794}
!3793 = !DILocalVariable(name: "__src", arg: 2, scope: !3791, file: !880, line: 26, type: !678)
!3794 = !DILocalVariable(name: "__len", arg: 3, scope: !3791, file: !880, line: 26, type: !65)
!3795 = !DILocation(line: 0, scope: !3791, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 128, column: 11, scope: !3789)
!3797 = !DILocation(line: 29, column: 10, scope: !3791, inlinedAt: !3796)
!3798 = !DILocation(line: 129, column: 11, scope: !3789)
!3799 = !DILocation(line: 133, column: 23, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !448, line: 133, column: 15)
!3801 = distinct !DILexicalBlock(scope: !3786, file: !448, line: 132, column: 9)
!3802 = !DILocation(line: 133, column: 15, scope: !3801)
!3803 = !DILocation(line: 138, column: 44, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3800, file: !448, line: 134, column: 13)
!3805 = !DILocation(line: 0, scope: !3791, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 138, column: 15, scope: !3804)
!3807 = !DILocation(line: 29, column: 10, scope: !3791, inlinedAt: !3806)
!3808 = !DILocation(line: 139, column: 15, scope: !3804)
!3809 = !DILocation(line: 139, column: 32, scope: !3804)
!3810 = !DILocation(line: 140, column: 13, scope: !3804)
!3811 = !DILocation(line: 0, scope: !3770)
!3812 = !DILocation(line: 145, column: 1, scope: !3762)
