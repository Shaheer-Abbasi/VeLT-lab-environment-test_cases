; ModuleID = 'src/basename.bc'
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
@.str.1 = private unnamed_addr constant [53 x i8] c"Usage: %s NAME [SUFFIX]\0A  or:  %s OPTION... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print NAME with any leading directory components removed.\0AIf specified, also remove a trailing SUFFIX.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"  -a, --multiple\0A         support multiple arguments and treat each as a NAME\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"  -s, --suffix=SUFFIX\0A         remove a trailing SUFFIX; implies -a\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"  -z, --zero\0A         end each output line with NUL, not newline\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [185 x i8] c"\0AExamples:\0A  %s /usr/bin/sort          -> \22sort\22\0A  %s include/stdio.h .h     -> \22stdio\22\0A  %s -s .h include/stdio.h  -> \22stdio\22\0A  %s -a any/str1 any/str2   -> \22str1\22 followed by \22str2\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"+as:z\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !34
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
@.str.54 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), align 8, !dbg !133
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !138
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !143
@.str.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.28 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.29 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !145
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.59 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !181
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !151
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !177
@.str.1.65 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.67 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.66 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !179
@.str.4.60 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.61 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.62 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !186
@.str.76 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.77 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !192
@.str.80 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.81 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.82 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.83 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.84 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.85 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.86 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.87 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.88 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.89 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.81, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.82, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.83, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.84, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.89, i32 0, i32 0), i8* null], align 8, !dbg !228
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !254
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !272
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !302
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !309
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !274
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !311
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !260
@.str.10.92 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.90 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.91 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !279
@.str.98 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.99 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.100 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.101 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.102 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.103 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.104 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.105 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.106 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.107 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.108 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.109 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.110 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.111 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.112 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.113 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.114 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.119 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.120 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.121 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.122 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.123 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.124 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.125 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !317
@exit_failure = dso_local global i32 1, align 4, !dbg !325
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.138 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.155 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !331
@.str.160 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.161 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !427 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !431, metadata !DIExpression()), !dbg !432
  %3 = icmp eq i32 %0, 0, !dbg !433
  br i1 %3, label %9, label %4, !dbg !435

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !436, !tbaa !438
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !436
  %7 = load i8*, i8** @program_name, align 8, !dbg !436, !tbaa !438
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !436
  br label %61, !dbg !436

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !442
  %11 = load i8*, i8** @program_name, align 8, !dbg !442, !tbaa !438
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11, i8* noundef %11) #33, !dbg !442
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !444
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !444, !tbaa !438
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !444
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #33, !dbg !445
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !445, !tbaa !438
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #33, !dbg !445
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !449
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !449
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !450
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !450
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !451
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !451
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !452
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !452
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !453
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !453
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #33, !dbg !454
  %25 = load i8*, i8** @program_name, align 8, !dbg !454, !tbaa !438
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %25, i8* noundef %25, i8* noundef %25) #33, !dbg !454
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !455, metadata !DIExpression()) #33, !dbg !474
  %27 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !476
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %27) #33, !dbg !476
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !460, metadata !DIExpression()) #33, !dbg !477
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %27, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !477
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #33, !dbg !474
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !470, metadata !DIExpression()) #33, !dbg !474
  %28 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !478
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !470, metadata !DIExpression()) #33, !dbg !474
  br label %29, !dbg !479

29:                                               ; preds = %34, %9
  %30 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), %9 ]
  %31 = phi %struct.infomap* [ %35, %34 ], [ %28, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !470, metadata !DIExpression()) #33, !dbg !474
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !487
  call void @llvm.dbg.value(metadata i8* %30, metadata !486, metadata !DIExpression()) #33, !dbg !487
  %32 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %30) #34, !dbg !489
  %33 = icmp eq i32 %32, 0, !dbg !490
  br i1 %33, label %39, label %34, !dbg !479

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 1, !dbg !491
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !470, metadata !DIExpression()) #33, !dbg !474
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 0, !dbg !492
  %37 = load i8*, i8** %36, align 8, !dbg !492, !tbaa !493
  %38 = icmp eq i8* %37, null, !dbg !495
  br i1 %38, label %39, label %29, !dbg !496, !llvm.loop !497

39:                                               ; preds = %34, %29
  %40 = phi %struct.infomap* [ %31, %29 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 1, !dbg !499
  %42 = load i8*, i8** %41, align 8, !dbg !499, !tbaa !501
  %43 = icmp eq i8* %42, null, !dbg !502
  %44 = select i1 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %42, !dbg !503
  call void @llvm.dbg.value(metadata i8* %44, metadata !469, metadata !DIExpression()) #33, !dbg !474
  tail call void @emit_bug_reporting_address() #33, !dbg !504
  %45 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !505
  call void @llvm.dbg.value(metadata i8* %45, metadata !472, metadata !DIExpression()) #33, !dbg !474
  %46 = icmp eq i8* %45, null, !dbg !506
  br i1 %46, label %54, label %47, !dbg !508

47:                                               ; preds = %39
  %48 = tail call i32 @strncmp(i8* noundef nonnull %45, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i64 noundef 3) #34, !dbg !509
  %49 = icmp eq i32 %48, 0, !dbg !509
  br i1 %49, label %54, label %50, !dbg !510

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #33, !dbg !511
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !511, !tbaa !438
  %53 = tail call i32 @fputs_unlocked(i8* noundef %51, %struct._IO_FILE* noundef %52) #33, !dbg !511
  br label %54, !dbg !513

54:                                               ; preds = %39, %47, %50
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !514
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), metadata !486, metadata !DIExpression()) #33, !dbg !514
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !473, metadata !DIExpression()) #33, !dbg !474
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i32 noundef 5) #33, !dbg !516
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !516
  %57 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i64 0, i64 0), i32 noundef 5) #33, !dbg !517
  %58 = icmp eq i8* %44, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), !dbg !517
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !517
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %57, i8* noundef %44, i8* noundef %59) #33, !dbg !517
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %27) #33, !dbg !518
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !519
  unreachable, !dbg !519
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !520 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !524 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !36 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !41, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i8* %0, metadata !42, metadata !DIExpression()), !dbg !529
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !530, !tbaa !531
  %3 = icmp eq i32 %2, -1, !dbg !533
  br i1 %3, label %4, label %16, !dbg !534

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !535
  call void @llvm.dbg.value(metadata i8* %5, metadata !43, metadata !DIExpression()), !dbg !536
  %6 = icmp eq i8* %5, null, !dbg !537
  br i1 %6, label %14, label %7, !dbg !538

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !539, !tbaa !540
  %9 = icmp eq i8 %8, 0, !dbg !539
  br i1 %9, label %14, label %10, !dbg !541

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !480, metadata !DIExpression()) #33, !dbg !542
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), metadata !486, metadata !DIExpression()) #33, !dbg !542
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #34, !dbg !544
  %12 = icmp eq i32 %11, 0, !dbg !545
  %13 = zext i1 %12 to i32, !dbg !541
  br label %14, !dbg !541

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !546, !tbaa !531
  br label %16, !dbg !547

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !548
  %18 = icmp eq i32 %17, 0, !dbg !548
  br i1 %18, label %22, label %19, !dbg !550

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !551, !tbaa !438
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !551
  br label %121, !dbg !553

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !46, metadata !DIExpression()), !dbg !529
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !554
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !555
  call void @llvm.dbg.value(metadata i8* %24, metadata !48, metadata !DIExpression()), !dbg !529
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !556
  call void @llvm.dbg.value(metadata i8* %25, metadata !49, metadata !DIExpression()), !dbg !529
  %26 = icmp eq i8* %25, null, !dbg !557
  br i1 %26, label %53, label %27, !dbg !558

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !559
  br i1 %28, label %53, label %29, !dbg !560

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !50, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 0, metadata !54, metadata !DIExpression()), !dbg !561
  %30 = icmp ult i8* %24, %25, !dbg !562
  br i1 %30, label %31, label %53, !dbg !563

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !529
  %33 = load i16*, i16** %32, align 8, !tbaa !438
  br label %34, !dbg !563

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !50, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 %36, metadata !54, metadata !DIExpression()), !dbg !561
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !564
  call void @llvm.dbg.value(metadata i8* %37, metadata !50, metadata !DIExpression()), !dbg !561
  %38 = load i8, i8* %35, align 1, !dbg !564, !tbaa !540
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !564
  %41 = load i16, i16* %40, align 2, !dbg !564, !tbaa !565
  %42 = lshr i16 %41, 13, !dbg !567
  %43 = and i16 %42, 1, !dbg !567
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !568
  call void @llvm.dbg.value(metadata i64 %45, metadata !54, metadata !DIExpression()), !dbg !561
  %46 = icmp ult i8* %37, %25, !dbg !562
  %47 = icmp ult i64 %45, 2, !dbg !569
  %48 = select i1 %46, i1 %47, i1 false, !dbg !569
  br i1 %48, label %34, label %49, !dbg !563, !llvm.loop !570

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !571
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !573
  %52 = xor i1 %50, true, !dbg !573
  br label %53, !dbg !573

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !529
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !46, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i8* %54, metadata !49, metadata !DIExpression()), !dbg !529
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #34, !dbg !574
  call void @llvm.dbg.value(metadata i64 %56, metadata !55, metadata !DIExpression()), !dbg !529
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !575
  call void @llvm.dbg.value(metadata i8* %57, metadata !56, metadata !DIExpression()), !dbg !529
  br label %58, !dbg !576

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !529
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !46, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i8* %59, metadata !56, metadata !DIExpression()), !dbg !529
  %61 = load i8, i8* %59, align 1, !dbg !577, !tbaa !540
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !578

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !579
  %64 = load i8, i8* %63, align 1, !dbg !582, !tbaa !540
  %65 = icmp ne i8 %64, 45, !dbg !583
  %66 = select i1 %65, i1 %60, i1 false, !dbg !584
  br label %67, !dbg !584

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !46, metadata !DIExpression()), !dbg !529
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !585
  %70 = load i16*, i16** %69, align 8, !dbg !585, !tbaa !438
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !585
  %73 = load i16, i16* %72, align 2, !dbg !585, !tbaa !565
  %74 = and i16 %73, 8192, !dbg !585
  %75 = icmp eq i16 %74, 0, !dbg !585
  br i1 %75, label %89, label %76, !dbg !587

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !588
  br i1 %77, label %91, label %78, !dbg !591

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !592
  %80 = load i8, i8* %79, align 1, !dbg !592, !tbaa !540
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !592
  %83 = load i16, i16* %82, align 2, !dbg !592, !tbaa !565
  %84 = and i16 %83, 8192, !dbg !592
  %85 = icmp eq i16 %84, 0, !dbg !592
  br i1 %85, label %86, label %91, !dbg !593

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !594
  br i1 %88, label %89, label %91, !dbg !594

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !596
  call void @llvm.dbg.value(metadata i8* %90, metadata !56, metadata !DIExpression()), !dbg !529
  br label %58, !dbg !576, !llvm.loop !597

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !599
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !599, !tbaa !438
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !599
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), metadata !486, metadata !DIExpression()) #33, !dbg !600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !610
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !614
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !616
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #33, !dbg !618
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !116, metadata !DIExpression()), !dbg !529
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 noundef 6) #34, !dbg !620
  %96 = icmp eq i32 %95, 0, !dbg !620
  br i1 %96, label %100, label %97, !dbg !622

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 noundef 9) #34, !dbg !623
  %99 = icmp eq i32 %98, 0, !dbg !623
  br i1 %99, label %100, label %103, !dbg !624

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !625
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !625
  br label %106, !dbg !627

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !628
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !628
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !438
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !630
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !438
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !631
  %111 = ptrtoint i8* %59 to i64, !dbg !632
  %112 = sub i64 %111, %92, !dbg !632
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !438
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !632
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633, !tbaa !438
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !633
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !438
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !634
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !438
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !635
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !636
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
declare !dbg !637 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !641 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !645 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !651 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !656, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8** %1, metadata !657, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8 0, metadata !658, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8 0, metadata !659, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8* null, metadata !660, metadata !DIExpression()), !dbg !663
  %3 = load i8*, i8** %1, align 8, !dbg !664, !tbaa !438
  tail call void @set_program_name(i8* noundef %3) #33, !dbg !665
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #33, !dbg !666
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #33, !dbg !667
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #33, !dbg !668
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !669
  br label %16, !dbg !670

8:                                                ; preds = %11, %16
  %9 = phi i1 [ %17, %16 ], [ true, %11 ]
  %10 = phi i1 [ %18, %16 ], [ %12, %11 ]
  br label %11, !dbg !671

11:                                               ; preds = %11, %8
  %12 = phi i1 [ %10, %8 ], [ true, %11 ]
  call void @llvm.dbg.value(metadata i8* %19, metadata !660, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8 poison, metadata !659, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8 poison, metadata !658, metadata !DIExpression()), !dbg !663
  %13 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #33, !dbg !672
  call void @llvm.dbg.value(metadata i32 %13, metadata !661, metadata !DIExpression()), !dbg !673
  switch i32 %13, label %25 [
    i32 -1, label %26
    i32 115, label %14
    i32 97, label %8
    i32 122, label %11
    i32 -2, label %20
    i32 -3, label %21
  ], !dbg !671

14:                                               ; preds = %11
  %15 = load i8*, i8** @optarg, align 8, !dbg !674, !tbaa !438
  call void @llvm.dbg.value(metadata i8* %15, metadata !660, metadata !DIExpression()), !dbg !663
  br label %16, !dbg !676

16:                                               ; preds = %2, %14
  %17 = phi i1 [ false, %2 ], [ true, %14 ]
  %18 = phi i1 [ false, %2 ], [ %12, %14 ]
  %19 = phi i8* [ null, %2 ], [ %15, %14 ]
  br label %8, !dbg !671

20:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #37, !dbg !677
  unreachable, !dbg !677

21:                                               ; preds = %11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !678, !tbaa !438
  %23 = load i8*, i8** @Version, align 8, !dbg !678, !tbaa !438
  %24 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #33, !dbg !678
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef %23, i8* noundef %24, i8* noundef null) #33, !dbg !678
  tail call void @exit(i32 noundef 0) #35, !dbg !678
  unreachable, !dbg !678

25:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #37, !dbg !679
  unreachable, !dbg !679

26:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* undef, metadata !660, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8 poison, metadata !659, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8 poison, metadata !658, metadata !DIExpression()), !dbg !663
  %27 = load i32, i32* @optind, align 4, !dbg !680, !tbaa !531
  %28 = icmp slt i32 %27, %0, !dbg !682
  br i1 %28, label %31, label %29, !dbg !683

29:                                               ; preds = %26
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #33, !dbg !684
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %30) #33, !dbg !684
  tail call void @usage(i32 noundef 1) #37, !dbg !686
  unreachable, !dbg !686

31:                                               ; preds = %26
  %32 = xor i1 %9, true, !dbg !687
  %33 = add nsw i32 %27, 2
  %34 = icmp slt i32 %33, %0
  %35 = select i1 %32, i1 %34, i1 false, !dbg !687
  br i1 %35, label %36, label %44, !dbg !687

36:                                               ; preds = %31
  %37 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #33, !dbg !689
  %38 = load i32, i32* @optind, align 4, !dbg !689, !tbaa !531
  %39 = add nsw i32 %38, 2, !dbg !689
  %40 = sext i32 %39 to i64, !dbg !689
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !689
  %42 = load i8*, i8** %41, align 8, !dbg !689, !tbaa !438
  %43 = tail call i8* @quote(i8* noundef %42) #33, !dbg !689
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %37, i8* noundef %43) #33, !dbg !689
  tail call void @usage(i32 noundef 1) #37, !dbg !691
  unreachable, !dbg !691

44:                                               ; preds = %31
  br i1 %9, label %45, label %53, !dbg !692

45:                                               ; preds = %44, %45
  %46 = phi i32 [ %51, %45 ], [ %27, %44 ]
  %47 = sext i32 %46 to i64, !dbg !693
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47, !dbg !693
  %49 = load i8*, i8** %48, align 8, !dbg !693, !tbaa !438
  tail call fastcc void @perform_basename(i8* noundef %49, i8* noundef %19, i1 noundef %12), !dbg !698
  %50 = load i32, i32* @optind, align 4, !dbg !699, !tbaa !531
  %51 = add nsw i32 %50, 1, !dbg !699
  store i32 %51, i32* @optind, align 4, !dbg !699, !tbaa !531
  %52 = icmp slt i32 %51, %0, !dbg !700
  br i1 %52, label %45, label %65, !dbg !701, !llvm.loop !702

53:                                               ; preds = %44
  %54 = sext i32 %27 to i64, !dbg !704
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !704
  %56 = load i8*, i8** %55, align 8, !dbg !704, !tbaa !438
  %57 = icmp eq i32 %33, %0, !dbg !705
  br i1 %57, label %58, label %63, !dbg !706

58:                                               ; preds = %53
  %59 = add nsw i32 %27, 1, !dbg !707
  %60 = sext i32 %59 to i64, !dbg !708
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !708
  %62 = load i8*, i8** %61, align 8, !dbg !708, !tbaa !438
  br label %63, !dbg !706

63:                                               ; preds = %53, %58
  %64 = phi i8* [ %62, %58 ], [ null, %53 ], !dbg !706
  tail call fastcc void @perform_basename(i8* noundef %56, i8* noundef %64, i1 noundef %12), !dbg !709
  br label %65

65:                                               ; preds = %45, %63
  ret i32 0, !dbg !710
}

; Function Attrs: nounwind
declare !dbg !711 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !714 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !715 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !718 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @perform_basename(i8* noundef %0, i8* noundef readonly %1, i1 noundef %2) unnamed_addr #12 !dbg !724 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !728, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i8* %1, metadata !729, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i1 %2, metadata !730, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !732
  %4 = tail call noalias nonnull i8* @base_name(i8* noundef %0) #33, !dbg !733
  call void @llvm.dbg.value(metadata i8* %4, metadata !731, metadata !DIExpression()), !dbg !732
  %5 = tail call i1 @strip_trailing_slashes(i8* noundef nonnull %4) #33, !dbg !734
  %6 = icmp eq i8* %1, null, !dbg !735
  br i1 %6, label %29, label %7, !dbg !737

7:                                                ; preds = %3
  %8 = load i8, i8* %4, align 1, !dbg !738, !tbaa !540
  %9 = icmp eq i8 %8, 47, !dbg !738
  br i1 %9, label %29, label %10, !dbg !739

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %4, metadata !740, metadata !DIExpression()) #33, !dbg !748
  call void @llvm.dbg.value(metadata i8* %1, metadata !745, metadata !DIExpression()) #33, !dbg !748
  %11 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %4) #34, !dbg !750
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !751
  call void @llvm.dbg.value(metadata i8* %12, metadata !746, metadata !DIExpression()) #33, !dbg !748
  %13 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #34, !dbg !752
  %14 = getelementptr inbounds i8, i8* %1, i64 %13, !dbg !753
  call void @llvm.dbg.value(metadata i8* %14, metadata !747, metadata !DIExpression()) #33, !dbg !748
  br label %15, !dbg !754

15:                                               ; preds = %21, %10
  %16 = phi i8* [ %12, %10 ], [ %22, %21 ], !dbg !748
  %17 = phi i8* [ %14, %10 ], [ %24, %21 ], !dbg !748
  call void @llvm.dbg.value(metadata i8* %17, metadata !747, metadata !DIExpression()) #33, !dbg !748
  call void @llvm.dbg.value(metadata i8* %16, metadata !746, metadata !DIExpression()) #33, !dbg !748
  %18 = icmp ugt i8* %16, %4, !dbg !755
  %19 = icmp ugt i8* %17, %1, !dbg !756
  %20 = select i1 %18, i1 %19, i1 false, !dbg !756
  br i1 %20, label %21, label %27, !dbg !754

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !757
  call void @llvm.dbg.value(metadata i8* %22, metadata !746, metadata !DIExpression()) #33, !dbg !748
  %23 = load i8, i8* %22, align 1, !dbg !759, !tbaa !540
  %24 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !760
  call void @llvm.dbg.value(metadata i8* %24, metadata !747, metadata !DIExpression()) #33, !dbg !748
  %25 = load i8, i8* %24, align 1, !dbg !761, !tbaa !540
  %26 = icmp eq i8 %23, %25, !dbg !762
  br i1 %26, label %15, label %29, !dbg !763, !llvm.loop !764

27:                                               ; preds = %15
  br i1 %18, label %28, label %29, !dbg !766

28:                                               ; preds = %27
  store i8 0, i8* %16, align 1, !dbg !767, !tbaa !540
  br label %29, !dbg !769

29:                                               ; preds = %21, %28, %27, %7, %3
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !770, !tbaa !438
  %31 = tail call i32 @fputs_unlocked(i8* noundef nonnull %4, %struct._IO_FILE* noundef %30), !dbg !770
  %32 = select i1 %2, i32 0, i32 10, !dbg !771
  call void @llvm.dbg.value(metadata i32 %32, metadata !772, metadata !DIExpression()) #33, !dbg !778
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !780, !tbaa !438
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !780
  %35 = load i8*, i8** %34, align 8, !dbg !780, !tbaa !781
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !780
  %37 = load i8*, i8** %36, align 8, !dbg !780, !tbaa !784
  %38 = icmp ult i8* %35, %37, !dbg !780
  br i1 %38, label %41, label %39, !dbg !780, !prof !785

39:                                               ; preds = %29
  %40 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %33, i32 noundef %32) #33, !dbg !780
  br label %44, !dbg !780

41:                                               ; preds = %29
  %42 = trunc i32 %32 to i8, !dbg !780
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !780
  store i8* %43, i8** %34, align 8, !dbg !780, !tbaa !781
  store i8 %42, i8* %35, align 1, !dbg !780, !tbaa !540
  br label %44, !dbg !780

44:                                               ; preds = %39, %41
  tail call void @free(i8* noundef nonnull %4) #33, !dbg !786
  ret void, !dbg !787
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !788 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !790, metadata !DIExpression()), !dbg !791
  store i8* %0, i8** @file_name, align 8, !dbg !792, !tbaa !438
  ret void, !dbg !793
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !794 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !798, metadata !DIExpression()), !dbg !799
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !800, !tbaa !801
  ret void, !dbg !803
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !804 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !809, !tbaa !438
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !810
  %3 = icmp eq i32 %2, 0, !dbg !811
  br i1 %3, label %22, label %4, !dbg !812

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !813, !tbaa !801, !range !814
  %6 = icmp eq i8 %5, 0, !dbg !813
  br i1 %6, label %11, label %7, !dbg !815

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !816
  %9 = load i32, i32* %8, align 4, !dbg !816, !tbaa !531
  %10 = icmp eq i32 %9, 32, !dbg !817
  br i1 %10, label %22, label %11, !dbg !818

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.28, i64 0, i64 0), i32 noundef 5) #33, !dbg !819
  call void @llvm.dbg.value(metadata i8* %12, metadata !806, metadata !DIExpression()), !dbg !820
  %13 = load i8*, i8** @file_name, align 8, !dbg !821, !tbaa !438
  %14 = icmp eq i8* %13, null, !dbg !821
  %15 = tail call i32* @__errno_location() #36, !dbg !823
  %16 = load i32, i32* %15, align 4, !dbg !823, !tbaa !531
  br i1 %14, label %19, label %17, !dbg !824

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !825
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.29, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !825
  br label %20, !dbg !825

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.30, i64 0, i64 0), i8* noundef %12) #33, !dbg !826
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !827, !tbaa !531
  tail call void @_exit(i32 noundef %21) #35, !dbg !828
  unreachable, !dbg !828

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !829, !tbaa !438
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !831
  %25 = icmp eq i32 %24, 0, !dbg !832
  br i1 %25, label %28, label %26, !dbg !833

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !834, !tbaa !531
  tail call void @_exit(i32 noundef %27) #35, !dbg !835
  unreachable, !dbg !835

28:                                               ; preds = %22
  ret void, !dbg !836
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @base_name(i8* noundef %0) local_unnamed_addr #12 !dbg !837 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !839, metadata !DIExpression()), !dbg !844
  %2 = tail call i8* @last_component(i8* noundef %0) #34, !dbg !845
  call void @llvm.dbg.value(metadata i8* %2, metadata !840, metadata !DIExpression()), !dbg !844
  %3 = load i8, i8* %2, align 1, !dbg !846, !tbaa !540
  %4 = icmp eq i8 %3, 0, !dbg !846
  br i1 %4, label %12, label %5, !dbg !848

5:                                                ; preds = %1
  %6 = tail call i64 @base_len(i8* noundef nonnull %2) #34, !dbg !849
  call void @llvm.dbg.value(metadata i64 %6, metadata !841, metadata !DIExpression()), !dbg !844
  %7 = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !851
  %8 = load i8, i8* %7, align 1, !dbg !851, !tbaa !540
  %9 = icmp eq i8 %8, 47, !dbg !851
  %10 = zext i1 %9 to i64
  %11 = add nsw i64 %6, %10, !dbg !852
  call void @llvm.dbg.value(metadata i64 %11, metadata !841, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 0, metadata !842, metadata !DIExpression()), !dbg !844
  br label %14, !dbg !853

12:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !840, metadata !DIExpression()), !dbg !844
  %13 = tail call i64 @base_len(i8* noundef %0) #34, !dbg !854
  call void @llvm.dbg.value(metadata i64 %13, metadata !841, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 0, metadata !842, metadata !DIExpression()), !dbg !844
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i64 [ %11, %5 ], [ %13, %12 ], !dbg !856
  %16 = phi i8* [ %2, %5 ], [ %0, %12 ], !dbg !844
  call void @llvm.dbg.value(metadata i8* %16, metadata !840, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 0, metadata !842, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i64 %15, metadata !841, metadata !DIExpression()), !dbg !844
  %17 = add nsw i64 %15, 1, !dbg !857
  %18 = tail call noalias nonnull i8* @ximalloc(i64 noundef %17) #38, !dbg !858
  call void @llvm.dbg.value(metadata i8* %18, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8* %18, metadata !859, metadata !DIExpression()) #33, !dbg !868
  call void @llvm.dbg.value(metadata i8* %16, metadata !866, metadata !DIExpression()) #33, !dbg !868
  call void @llvm.dbg.value(metadata i64 %15, metadata !867, metadata !DIExpression()) #33, !dbg !868
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %18, i8* noundef nonnull align 1 %16, i64 noundef %15, i1 noundef false) #33, !dbg !870
  %19 = getelementptr inbounds i8, i8* %18, i64 %15, !dbg !871
  store i8 0, i8* %19, align 1, !dbg !872, !tbaa !540
  ret i8* %18, !dbg !873
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local i1 @strip_trailing_slashes(i8* noundef %0) local_unnamed_addr #16 !dbg !874 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !878, metadata !DIExpression()), !dbg !882
  %2 = tail call i8* @last_component(i8* noundef %0) #34, !dbg !883
  call void @llvm.dbg.value(metadata i8* %2, metadata !879, metadata !DIExpression()), !dbg !882
  %3 = load i8, i8* %2, align 1, !dbg !884, !tbaa !540
  %4 = icmp eq i8 %3, 0, !dbg !884
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !886
  call void @llvm.dbg.value(metadata i8* %5, metadata !879, metadata !DIExpression()), !dbg !882
  %6 = tail call i64 @base_len(i8* noundef %5) #34, !dbg !887
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !888
  call void @llvm.dbg.value(metadata i8* %7, metadata !880, metadata !DIExpression()), !dbg !882
  %8 = load i8, i8* %7, align 1, !dbg !889, !tbaa !540
  %9 = icmp ne i8 %8, 0, !dbg !890
  call void @llvm.dbg.value(metadata i1 %9, metadata !881, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !882
  store i8 0, i8* %7, align 1, !dbg !891, !tbaa !540
  ret i1 %9, !dbg !892
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !893 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !897, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i32 %1, metadata !898, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i8* %2, metadata !899, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !900, metadata !DIExpression()), !dbg !902
  tail call fastcc void @flush_stdout(), !dbg !903
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !904, !tbaa !438
  %7 = icmp eq void ()* %6, null, !dbg !904
  br i1 %7, label %9, label %8, !dbg !906

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !907
  br label %13, !dbg !907

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !908, !tbaa !438
  %11 = tail call i8* @getprogname() #34, !dbg !908
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i8* noundef %11) #33, !dbg !908
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !910
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !910
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !910, !tbaa.struct !911
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !910
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !910
  ret void, !dbg !912
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !913 {
  call void @llvm.dbg.value(metadata i32 1, metadata !915, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i32 1, metadata !917, metadata !DIExpression()) #33, !dbg !920
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !923
  %2 = icmp slt i32 %1, 0, !dbg !924
  br i1 %2, label %6, label %3, !dbg !925

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !926, !tbaa !438
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !926
  br label %6, !dbg !926

6:                                                ; preds = %3, %0
  ret void, !dbg !927
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !928 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !930, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i32 %1, metadata !931, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8* %2, metadata !932, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !933, metadata !DIExpression()), !dbg !935
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !936, !tbaa !438
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !937
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !938, metadata !DIExpression()) #33, !dbg !981
  call void @llvm.dbg.value(metadata i8* %2, metadata !979, metadata !DIExpression()) #33, !dbg !981
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !983
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !983, !noalias !984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !983
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !983
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !983, !noalias !984
  %11 = load i32, i32* @error_message_count, align 4, !dbg !988, !tbaa !531
  %12 = add i32 %11, 1, !dbg !988
  store i32 %12, i32* @error_message_count, align 4, !dbg !988, !tbaa !531
  %13 = icmp eq i32 %1, 0, !dbg !989
  br i1 %13, label %24, label %14, !dbg !991

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !992, metadata !DIExpression()) #33, !dbg !1000
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1002
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1002
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !996, metadata !DIExpression()) #33, !dbg !1003
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %16, metadata !995, metadata !DIExpression()) #33, !dbg !1000
  %17 = icmp eq i8* %16, null, !dbg !1005
  br i1 %17, label %18, label %20, !dbg !1007

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.61, i64 0, i64 0), i32 noundef 5) #33, !dbg !1008
  call void @llvm.dbg.value(metadata i8* %19, metadata !995, metadata !DIExpression()) #33, !dbg !1000
  br label %20, !dbg !1009

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1000
  call void @llvm.dbg.value(metadata i8* %21, metadata !995, metadata !DIExpression()) #33, !dbg !1000
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1010, !tbaa !438
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.62, i64 0, i64 0), i8* noundef %21) #33, !dbg !1010
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1011
  br label %24, !dbg !1012

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1013, !tbaa !438
  call void @llvm.dbg.value(metadata i32 10, metadata !1014, metadata !DIExpression()) #33, !dbg !1020
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1019, metadata !DIExpression()) #33, !dbg !1020
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1022
  %27 = load i8*, i8** %26, align 8, !dbg !1022, !tbaa !781
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1022
  %29 = load i8*, i8** %28, align 8, !dbg !1022, !tbaa !784
  %30 = icmp ult i8* %27, %29, !dbg !1022
  br i1 %30, label %33, label %31, !dbg !1022, !prof !785

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1022
  br label %35, !dbg !1022

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1022
  store i8* %34, i8** %26, align 8, !dbg !1022, !tbaa !781
  store i8 10, i8* %27, align 1, !dbg !1022, !tbaa !540
  br label %35, !dbg !1022

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1023, !tbaa !438
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1023
  %38 = icmp eq i32 %0, 0, !dbg !1024
  br i1 %38, label %40, label %39, !dbg !1026

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !1027
  unreachable, !dbg !1027

40:                                               ; preds = %35
  ret void, !dbg !1028
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1029 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1033 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1036 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1040 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1044, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %1, metadata !1045, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %2, metadata !1046, metadata !DIExpression()), !dbg !1048
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1049
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1049
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1047, metadata !DIExpression()), !dbg !1050
  call void @llvm.va_start(i8* nonnull %6), !dbg !1051
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1052
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1052
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1052, !tbaa.struct !911
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1052
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1052
  call void @llvm.va_end(i8* nonnull %6), !dbg !1053
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1054
  ret void, !dbg !1054
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !153 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !171, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i32 %1, metadata !172, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %2, metadata !173, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i32 %3, metadata !174, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %4, metadata !175, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !176, metadata !DIExpression()), !dbg !1056
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1057, !tbaa !531
  %9 = icmp eq i32 %8, 0, !dbg !1057
  br i1 %9, label %24, label %10, !dbg !1059

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1060, !tbaa !531
  %12 = icmp eq i32 %11, %3, !dbg !1063
  br i1 %12, label %13, label %23, !dbg !1064

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1065, !tbaa !438
  %15 = icmp eq i8* %14, %2, !dbg !1066
  br i1 %15, label %39, label %16, !dbg !1067

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1068
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1069
  br i1 %19, label %20, label %23, !dbg !1069

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !1070
  %22 = icmp eq i32 %21, 0, !dbg !1071
  br i1 %22, label %39, label %23, !dbg !1072

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1073, !tbaa !438
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1074, !tbaa !531
  br label %24, !dbg !1075

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1076
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1077, !tbaa !438
  %26 = icmp eq void ()* %25, null, !dbg !1077
  br i1 %26, label %28, label %27, !dbg !1079

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !1080
  br label %32, !dbg !1080

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1081, !tbaa !438
  %30 = tail call i8* @getprogname() #34, !dbg !1081
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.65, i64 0, i64 0), i8* noundef %30) #33, !dbg !1081
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1083, !tbaa !438
  %34 = icmp eq i8* %2, null, !dbg !1083
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.66, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.67, i64 0, i64 0), !dbg !1083
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !1083
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1084
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1084
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1084, !tbaa.struct !911
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1084
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1084
  br label %39, !dbg !1085

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1085
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1086 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %1, metadata !1091, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %2, metadata !1092, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %3, metadata !1093, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %4, metadata !1094, metadata !DIExpression()), !dbg !1096
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1097
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1097
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1095, metadata !DIExpression()), !dbg !1098
  call void @llvm.va_start(i8* nonnull %8), !dbg !1099
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1100, !tbaa.struct !911
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1100
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1100
  call void @llvm.va_end(i8* nonnull %8), !dbg !1101
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1102
  ret void, !dbg !1102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !1103 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1106, !tbaa !438
  ret i8* %1, !dbg !1107
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #16 !dbg !1108 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1110, metadata !DIExpression()), !dbg !1113
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !1114
  call void @llvm.dbg.value(metadata i8* %2, metadata !1111, metadata !DIExpression()), !dbg !1113
  %3 = icmp eq i8* %2, null, !dbg !1115
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1115
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1115
  call void @llvm.dbg.value(metadata i8* %5, metadata !1112, metadata !DIExpression()), !dbg !1113
  %6 = ptrtoint i8* %5 to i64, !dbg !1116
  %7 = ptrtoint i8* %0 to i64, !dbg !1116
  %8 = sub i64 %6, %7, !dbg !1116
  %9 = icmp sgt i64 %8, 6, !dbg !1118
  br i1 %9, label %10, label %19, !dbg !1119

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1120
  call void @llvm.dbg.value(metadata i8* %11, metadata !1121, metadata !DIExpression()) #33, !dbg !1128
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), metadata !1126, metadata !DIExpression()) #33, !dbg !1128
  call void @llvm.dbg.value(metadata i64 7, metadata !1127, metadata !DIExpression()) #33, !dbg !1128
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), i64 7) #33, !dbg !1130
  %13 = icmp eq i32 %12, 0, !dbg !1131
  br i1 %13, label %14, label %19, !dbg !1132

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1110, metadata !DIExpression()), !dbg !1113
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.77, i64 0, i64 0), i64 noundef 3) #34, !dbg !1133
  %16 = icmp eq i32 %15, 0, !dbg !1136
  %17 = select i1 %16, i64 3, i64 0, !dbg !1137
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1137
  br label %19, !dbg !1137

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1113
  call void @llvm.dbg.value(metadata i8* %21, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %20, metadata !1110, metadata !DIExpression()), !dbg !1113
  store i8* %20, i8** @program_name, align 8, !dbg !1138, !tbaa !438
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1139, !tbaa !438
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1140, !tbaa !438
  ret void, !dbg !1141
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !194 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !201, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i8* %1, metadata !202, metadata !DIExpression()), !dbg !1142
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %5, metadata !203, metadata !DIExpression()), !dbg !1142
  %6 = icmp eq i8* %5, %0, !dbg !1144
  br i1 %6, label %7, label %17, !dbg !1146

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1147
  %10 = bitcast i64* %4 to i8*, !dbg !1148
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1148
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !209, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1150, metadata !DIExpression()) #33, !dbg !1157
  call void @llvm.dbg.value(metadata i8* %10, metadata !1159, metadata !DIExpression()) #33, !dbg !1166
  call void @llvm.dbg.value(metadata i32 0, metadata !1164, metadata !DIExpression()) #33, !dbg !1166
  call void @llvm.dbg.value(metadata i64 8, metadata !1165, metadata !DIExpression()) #33, !dbg !1166
  store i64 0, i64* %4, align 8, !dbg !1168
  call void @llvm.dbg.value(metadata i32* %3, metadata !204, metadata !DIExpression(DW_OP_deref)), !dbg !1142
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !1169
  %12 = icmp eq i64 %11, 2, !dbg !1171
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !204, metadata !DIExpression()), !dbg !1142
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1172
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1173
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1142
  ret i8* %18, !dbg !1173
}

; Function Attrs: nounwind
declare !dbg !1174 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1180 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1185, metadata !DIExpression()), !dbg !1188
  %2 = tail call i32* @__errno_location() #36, !dbg !1189
  %3 = load i32, i32* %2, align 4, !dbg !1189, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %3, metadata !1186, metadata !DIExpression()), !dbg !1188
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1190
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1190
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1190
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !1191
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1191
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1187, metadata !DIExpression()), !dbg !1188
  store i32 %3, i32* %2, align 4, !dbg !1192, !tbaa !531
  ret %struct.quoting_options* %8, !dbg !1193
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !1194 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1200, metadata !DIExpression()), !dbg !1201
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1202
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1202
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1203
  %5 = load i32, i32* %4, align 8, !dbg !1203, !tbaa !1204
  ret i32 %5, !dbg !1206
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1207 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1211, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 %1, metadata !1212, metadata !DIExpression()), !dbg !1213
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1214
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1214
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1215
  store i32 %1, i32* %5, align 8, !dbg !1216, !tbaa !1204
  ret void, !dbg !1217
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1218 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1222, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %1, metadata !1223, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 %2, metadata !1224, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %1, metadata !1225, metadata !DIExpression()), !dbg !1230
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1231
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1231
  %6 = lshr i8 %1, 5, !dbg !1232
  %7 = zext i8 %6 to i64, !dbg !1232
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1233
  call void @llvm.dbg.value(metadata i32* %8, metadata !1226, metadata !DIExpression()), !dbg !1230
  %9 = and i8 %1, 31, !dbg !1234
  %10 = zext i8 %9 to i32, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %10, metadata !1228, metadata !DIExpression()), !dbg !1230
  %11 = load i32, i32* %8, align 4, !dbg !1235, !tbaa !531
  %12 = lshr i32 %11, %10, !dbg !1236
  %13 = and i32 %12, 1, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %13, metadata !1229, metadata !DIExpression()), !dbg !1230
  %14 = and i32 %2, 1, !dbg !1238
  %15 = xor i32 %13, %14, !dbg !1239
  %16 = shl i32 %15, %10, !dbg !1240
  %17 = xor i32 %16, %11, !dbg !1241
  store i32 %17, i32* %8, align 4, !dbg !1241, !tbaa !531
  ret i32 %13, !dbg !1242
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1243 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1247, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %1, metadata !1248, metadata !DIExpression()), !dbg !1250
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1251
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1247, metadata !DIExpression()), !dbg !1250
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1254
  %6 = load i32, i32* %5, align 4, !dbg !1254, !tbaa !1255
  call void @llvm.dbg.value(metadata i32 %6, metadata !1249, metadata !DIExpression()), !dbg !1250
  store i32 %1, i32* %5, align 4, !dbg !1256, !tbaa !1255
  ret i32 %6, !dbg !1257
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1258 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1262, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i8* %1, metadata !1263, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i8* %2, metadata !1264, metadata !DIExpression()), !dbg !1265
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1266
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1262, metadata !DIExpression()), !dbg !1265
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1269
  store i32 10, i32* %6, align 8, !dbg !1270, !tbaa !1204
  %7 = icmp ne i8* %1, null, !dbg !1271
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1273
  br i1 %9, label %11, label %10, !dbg !1273

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !1274
  unreachable, !dbg !1274

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1275
  store i8* %1, i8** %12, align 8, !dbg !1276, !tbaa !1277
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1278
  store i8* %2, i8** %13, align 8, !dbg !1279, !tbaa !1280
  ret void, !dbg !1281
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1282 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1286, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i64 %1, metadata !1287, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8* %2, metadata !1288, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i64 %3, metadata !1289, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1290, metadata !DIExpression()), !dbg !1294
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1295
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1295
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1291, metadata !DIExpression()), !dbg !1294
  %8 = tail call i32* @__errno_location() #36, !dbg !1296
  %9 = load i32, i32* %8, align 4, !dbg !1296, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %9, metadata !1292, metadata !DIExpression()), !dbg !1294
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1297
  %11 = load i32, i32* %10, align 8, !dbg !1297, !tbaa !1204
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1298
  %13 = load i32, i32* %12, align 4, !dbg !1298, !tbaa !1255
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1299
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1300
  %16 = load i8*, i8** %15, align 8, !dbg !1300, !tbaa !1277
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1301
  %18 = load i8*, i8** %17, align 8, !dbg !1301, !tbaa !1280
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1302
  call void @llvm.dbg.value(metadata i64 %19, metadata !1293, metadata !DIExpression()), !dbg !1294
  store i32 %9, i32* %8, align 4, !dbg !1303, !tbaa !531
  ret i64 %19, !dbg !1304
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1305 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1311, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %1, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %2, metadata !1313, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %3, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %4, metadata !1315, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %5, metadata !1316, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32* %6, metadata !1317, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %7, metadata !1318, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %8, metadata !1319, metadata !DIExpression()), !dbg !1373
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !1374
  %18 = icmp eq i64 %17, 1, !dbg !1375
  call void @llvm.dbg.value(metadata i1 %18, metadata !1320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !1322, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* null, metadata !1323, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !1324, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 0, metadata !1325, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %5, metadata !1326, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1373
  call void @llvm.dbg.value(metadata i8 0, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 1, metadata !1328, metadata !DIExpression()), !dbg !1373
  %19 = and i32 %5, 2, !dbg !1376
  %20 = icmp ne i32 %19, 0, !dbg !1376
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
  br label %36, !dbg !1376

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1377
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1378
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1379
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1328, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1326, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1325, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %43, metadata !1324, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %42, metadata !1323, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %40, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %39, metadata !1319, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %38, metadata !1318, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %37, metadata !1315, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.label(metadata !1366), !dbg !1380
  call void @llvm.dbg.value(metadata i8 0, metadata !1329, metadata !DIExpression()), !dbg !1373
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
  ], !dbg !1381

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1326, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 5, metadata !1315, metadata !DIExpression()), !dbg !1373
  br label %111, !dbg !1382

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1326, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 5, metadata !1315, metadata !DIExpression()), !dbg !1373
  br i1 %45, label %111, label %51, !dbg !1382

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1383
  br i1 %52, label %111, label %53, !dbg !1387

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1383, !tbaa !540
  br label %111, !dbg !1383

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.90, i64 0, i64 0), metadata !285, metadata !DIExpression()) #33, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #33, !dbg !1388
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.90, i64 0, i64 0), i32 noundef 5) #33, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %55, metadata !287, metadata !DIExpression()) #33, !dbg !1388
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.90, i64 0, i64 0), !dbg !1393
  br i1 %56, label %57, label %66, !dbg !1395

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1396
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1397
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !289, metadata !DIExpression()) #33, !dbg !1398
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1399, metadata !DIExpression()) #33, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %23, metadata !1407, metadata !DIExpression()) #33, !dbg !1412
  call void @llvm.dbg.value(metadata i32 0, metadata !1410, metadata !DIExpression()) #33, !dbg !1412
  call void @llvm.dbg.value(metadata i64 8, metadata !1411, metadata !DIExpression()) #33, !dbg !1412
  store i64 0, i64* %13, align 8, !dbg !1414
  call void @llvm.dbg.value(metadata i32* %12, metadata !288, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1388
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !1415
  %59 = icmp eq i64 %58, 3, !dbg !1417
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !288, metadata !DIExpression()) #33, !dbg !1388
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1418
  %63 = icmp eq i32 %37, 9, !dbg !1418
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !1418
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1418
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1419
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1419
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1388
  call void @llvm.dbg.value(metadata i8* %67, metadata !1318, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), metadata !285, metadata !DIExpression()) #33, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #33, !dbg !1420
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 noundef 5) #33, !dbg !1422
  call void @llvm.dbg.value(metadata i8* %68, metadata !287, metadata !DIExpression()) #33, !dbg !1420
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !1423
  br i1 %69, label %70, label %79, !dbg !1424

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1425
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1426
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !289, metadata !DIExpression()) #33, !dbg !1427
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1399, metadata !DIExpression()) #33, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %26, metadata !1407, metadata !DIExpression()) #33, !dbg !1430
  call void @llvm.dbg.value(metadata i32 0, metadata !1410, metadata !DIExpression()) #33, !dbg !1430
  call void @llvm.dbg.value(metadata i64 8, metadata !1411, metadata !DIExpression()) #33, !dbg !1430
  store i64 0, i64* %11, align 8, !dbg !1432
  call void @llvm.dbg.value(metadata i32* %10, metadata !288, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1420
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !1433
  %72 = icmp eq i64 %71, 3, !dbg !1434
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !288, metadata !DIExpression()) #33, !dbg !1420
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1435
  %76 = icmp eq i32 %37, 9, !dbg !1435
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !1435
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1435
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1436
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1436
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1319, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %80, metadata !1318, metadata !DIExpression()), !dbg !1373
  br i1 %45, label %97, label %82, !dbg !1437

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1330, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1321, metadata !DIExpression()), !dbg !1373
  %83 = load i8, i8* %80, align 1, !dbg !1439, !tbaa !540
  %84 = icmp eq i8 %83, 0, !dbg !1441
  br i1 %84, label %97, label %85, !dbg !1441

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1330, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %88, metadata !1321, metadata !DIExpression()), !dbg !1373
  %89 = icmp ult i64 %88, %48, !dbg !1442
  br i1 %89, label %90, label %92, !dbg !1445

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1442
  store i8 %86, i8* %91, align 1, !dbg !1442, !tbaa !540
  br label %92, !dbg !1442

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %93, metadata !1321, metadata !DIExpression()), !dbg !1373
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1446
  call void @llvm.dbg.value(metadata i8* %94, metadata !1330, metadata !DIExpression()), !dbg !1438
  %95 = load i8, i8* %94, align 1, !dbg !1439, !tbaa !540
  %96 = icmp eq i8 %95, 0, !dbg !1441
  br i1 %96, label %97, label %85, !dbg !1441, !llvm.loop !1447

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1449
  call void @llvm.dbg.value(metadata i64 %98, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 1, metadata !1325, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %81, metadata !1323, metadata !DIExpression()), !dbg !1373
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %99, metadata !1324, metadata !DIExpression()), !dbg !1373
  br label %111, !dbg !1451

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1325, metadata !DIExpression()), !dbg !1373
  br label %102, !dbg !1452

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1326, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1325, metadata !DIExpression()), !dbg !1373
  br i1 %45, label %102, label %105, !dbg !1453

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1326, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1325, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 2, metadata !1315, metadata !DIExpression()), !dbg !1373
  br label %111, !dbg !1454

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1326, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1325, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 2, metadata !1315, metadata !DIExpression()), !dbg !1373
  br i1 %45, label %111, label %105, !dbg !1454

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1455
  br i1 %107, label %111, label %108, !dbg !1459

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1455, !tbaa !540
  br label %111, !dbg !1455

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1326, metadata !DIExpression()), !dbg !1373
  br label %111, !dbg !1460

110:                                              ; preds = %36
  call void @abort() #35, !dbg !1461
  unreachable, !dbg !1461

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1449
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.92, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %102 ], !dbg !1373
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1373
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1326, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1325, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %117, metadata !1324, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %116, metadata !1323, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %115, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %114, metadata !1319, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8* %113, metadata !1318, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %112, metadata !1315, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !1335, metadata !DIExpression()), !dbg !1462
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
  br label %132, !dbg !1463

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1449
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1377
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1462
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %139, metadata !1335, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1328, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %135, metadata !1322, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %134, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %133, metadata !1314, metadata !DIExpression()), !dbg !1373
  %141 = icmp eq i64 %133, -1, !dbg !1464
  br i1 %141, label %142, label %146, !dbg !1465

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1466
  %144 = load i8, i8* %143, align 1, !dbg !1466, !tbaa !540
  %145 = icmp eq i8 %144, 0, !dbg !1467
  br i1 %145, label %596, label %148, !dbg !1468

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1469
  br i1 %147, label %596, label %148, !dbg !1468

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1337, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 0, metadata !1340, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 0, metadata !1341, metadata !DIExpression()), !dbg !1470
  br i1 %123, label %149, label %163, !dbg !1471

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1473
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1474
  br i1 %151, label %152, label %154, !dbg !1474

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %153, metadata !1314, metadata !DIExpression()), !dbg !1373
  br label %154, !dbg !1476

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1476
  call void @llvm.dbg.value(metadata i64 %155, metadata !1314, metadata !DIExpression()), !dbg !1373
  %156 = icmp ugt i64 %150, %155, !dbg !1477
  br i1 %156, label %163, label %157, !dbg !1478

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1479
  call void @llvm.dbg.value(metadata i8* %158, metadata !1480, metadata !DIExpression()) #33, !dbg !1485
  call void @llvm.dbg.value(metadata i8* %116, metadata !1483, metadata !DIExpression()) #33, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %117, metadata !1484, metadata !DIExpression()) #33, !dbg !1485
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !1487
  %160 = icmp ne i32 %159, 0, !dbg !1488
  %161 = or i1 %160, %125, !dbg !1489
  %162 = xor i1 %160, true, !dbg !1489
  br i1 %161, label %163, label %647, !dbg !1489

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1337, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %164, metadata !1314, metadata !DIExpression()), !dbg !1373
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1490
  %167 = load i8, i8* %166, align 1, !dbg !1490, !tbaa !540
  call void @llvm.dbg.value(metadata i8 %167, metadata !1342, metadata !DIExpression()), !dbg !1470
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
  ], !dbg !1491

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1492

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1493

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1340, metadata !DIExpression()), !dbg !1470
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1497
  br i1 %171, label %188, label %172, !dbg !1497

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1499
  br i1 %173, label %174, label %176, !dbg !1503

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1499
  store i8 39, i8* %175, align 1, !dbg !1499, !tbaa !540
  br label %176, !dbg !1499

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %177, metadata !1321, metadata !DIExpression()), !dbg !1373
  %178 = icmp ult i64 %177, %140, !dbg !1504
  br i1 %178, label %179, label %181, !dbg !1507

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1504
  store i8 36, i8* %180, align 1, !dbg !1504, !tbaa !540
  br label %181, !dbg !1504

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %182, metadata !1321, metadata !DIExpression()), !dbg !1373
  %183 = icmp ult i64 %182, %140, !dbg !1508
  br i1 %183, label %184, label %186, !dbg !1511

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1508
  store i8 39, i8* %185, align 1, !dbg !1508, !tbaa !540
  br label %186, !dbg !1508

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %187, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 1, metadata !1329, metadata !DIExpression()), !dbg !1373
  br label %188, !dbg !1512

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1373
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %189, metadata !1321, metadata !DIExpression()), !dbg !1373
  %191 = icmp ult i64 %189, %140, !dbg !1513
  br i1 %191, label %192, label %194, !dbg !1516

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1513
  store i8 92, i8* %193, align 1, !dbg !1513, !tbaa !540
  br label %194, !dbg !1513

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %195, metadata !1321, metadata !DIExpression()), !dbg !1373
  br i1 %120, label %196, label %499, !dbg !1517

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1519
  %198 = icmp ult i64 %197, %164, !dbg !1520
  br i1 %198, label %199, label %456, !dbg !1521

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1522
  %201 = load i8, i8* %200, align 1, !dbg !1522, !tbaa !540
  %202 = add i8 %201, -48, !dbg !1523
  %203 = icmp ult i8 %202, 10, !dbg !1523
  br i1 %203, label %204, label %456, !dbg !1523

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1524
  br i1 %205, label %206, label %208, !dbg !1528

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1524
  store i8 48, i8* %207, align 1, !dbg !1524, !tbaa !540
  br label %208, !dbg !1524

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %209, metadata !1321, metadata !DIExpression()), !dbg !1373
  %210 = icmp ult i64 %209, %140, !dbg !1529
  br i1 %210, label %211, label %213, !dbg !1532

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1529
  store i8 48, i8* %212, align 1, !dbg !1529, !tbaa !540
  br label %213, !dbg !1529

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %214, metadata !1321, metadata !DIExpression()), !dbg !1373
  br label %456, !dbg !1533

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1534

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1535

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1536

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1538

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1540
  %221 = icmp ult i64 %220, %164, !dbg !1541
  br i1 %221, label %222, label %456, !dbg !1542

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1543
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1544
  %225 = load i8, i8* %224, align 1, !dbg !1544, !tbaa !540
  %226 = icmp eq i8 %225, 63, !dbg !1545
  br i1 %226, label %227, label %456, !dbg !1546

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1547
  %229 = load i8, i8* %228, align 1, !dbg !1547, !tbaa !540
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
  ], !dbg !1548

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1549

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1342, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %220, metadata !1335, metadata !DIExpression()), !dbg !1462
  %232 = icmp ult i64 %134, %140, !dbg !1551
  br i1 %232, label %233, label %235, !dbg !1554

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1551
  store i8 63, i8* %234, align 1, !dbg !1551, !tbaa !540
  br label %235, !dbg !1551

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %236, metadata !1321, metadata !DIExpression()), !dbg !1373
  %237 = icmp ult i64 %236, %140, !dbg !1555
  br i1 %237, label %238, label %240, !dbg !1558

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1555
  store i8 34, i8* %239, align 1, !dbg !1555, !tbaa !540
  br label %240, !dbg !1555

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %241, metadata !1321, metadata !DIExpression()), !dbg !1373
  %242 = icmp ult i64 %241, %140, !dbg !1559
  br i1 %242, label %243, label %245, !dbg !1562

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1559
  store i8 34, i8* %244, align 1, !dbg !1559, !tbaa !540
  br label %245, !dbg !1559

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %246, metadata !1321, metadata !DIExpression()), !dbg !1373
  %247 = icmp ult i64 %246, %140, !dbg !1563
  br i1 %247, label %248, label %250, !dbg !1566

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1563
  store i8 63, i8* %249, align 1, !dbg !1563, !tbaa !540
  br label %250, !dbg !1563

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %251, metadata !1321, metadata !DIExpression()), !dbg !1373
  br label %456, !dbg !1567

252:                                              ; preds = %163
  br label %263, !dbg !1568

253:                                              ; preds = %163
  br label %263, !dbg !1569

254:                                              ; preds = %163
  br label %261, !dbg !1570

255:                                              ; preds = %163
  br label %261, !dbg !1571

256:                                              ; preds = %163
  br label %263, !dbg !1572

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1573

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1574

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1577

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1579

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1580
  call void @llvm.dbg.label(metadata !1367), !dbg !1581
  br i1 %128, label %263, label %638, !dbg !1582

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1580
  call void @llvm.dbg.label(metadata !1369), !dbg !1584
  br i1 %118, label %510, label %467, !dbg !1585

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1586

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1587, !tbaa !540
  %268 = icmp eq i8 %267, 0, !dbg !1589
  br i1 %268, label %269, label %456, !dbg !1590

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1591
  br i1 %270, label %271, label %456, !dbg !1593

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1341, metadata !DIExpression()), !dbg !1470
  br label %272, !dbg !1594

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1341, metadata !DIExpression()), !dbg !1470
  br i1 %126, label %274, label %456, !dbg !1595

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1597

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 1, metadata !1341, metadata !DIExpression()), !dbg !1470
  br i1 %126, label %276, label %456, !dbg !1598

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1599

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1602
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1604
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1604
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %282, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %281, metadata !1322, metadata !DIExpression()), !dbg !1373
  %283 = icmp ult i64 %134, %282, !dbg !1605
  br i1 %283, label %284, label %286, !dbg !1608

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1605
  store i8 39, i8* %285, align 1, !dbg !1605, !tbaa !540
  br label %286, !dbg !1605

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %287, metadata !1321, metadata !DIExpression()), !dbg !1373
  %288 = icmp ult i64 %287, %282, !dbg !1609
  br i1 %288, label %289, label %291, !dbg !1612

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1609
  store i8 92, i8* %290, align 1, !dbg !1609, !tbaa !540
  br label %291, !dbg !1609

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %292, metadata !1321, metadata !DIExpression()), !dbg !1373
  %293 = icmp ult i64 %292, %282, !dbg !1613
  br i1 %293, label %294, label %296, !dbg !1616

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1613
  store i8 39, i8* %295, align 1, !dbg !1613, !tbaa !540
  br label %296, !dbg !1613

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %297, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 0, metadata !1329, metadata !DIExpression()), !dbg !1373
  br label %456, !dbg !1617

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1618

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1343, metadata !DIExpression()), !dbg !1619
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !1620
  %301 = load i16*, i16** %300, align 8, !dbg !1620, !tbaa !438
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1620
  %304 = load i16, i16* %303, align 2, !dbg !1620, !tbaa !565
  %305 = and i16 %304, 16384, !dbg !1620
  %306 = icmp ne i16 %305, 0, !dbg !1622
  call void @llvm.dbg.value(metadata i8 poison, metadata !1346, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %349, metadata !1343, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %312, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i1 %350, metadata !1341, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1470
  br label %352, !dbg !1623

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1624
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1347, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1399, metadata !DIExpression()) #33, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %32, metadata !1407, metadata !DIExpression()) #33, !dbg !1628
  call void @llvm.dbg.value(metadata i32 0, metadata !1410, metadata !DIExpression()) #33, !dbg !1628
  call void @llvm.dbg.value(metadata i64 8, metadata !1411, metadata !DIExpression()) #33, !dbg !1628
  store i64 0, i64* %14, align 8, !dbg !1630
  call void @llvm.dbg.value(metadata i64 0, metadata !1343, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 1, metadata !1346, metadata !DIExpression()), !dbg !1619
  %308 = icmp eq i64 %164, -1, !dbg !1631
  br i1 %308, label %309, label %311, !dbg !1633

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %310, metadata !1314, metadata !DIExpression()), !dbg !1373
  br label %311, !dbg !1635

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1470
  call void @llvm.dbg.value(metadata i64 %312, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1636
  %313 = sub i64 %312, %139, !dbg !1637
  call void @llvm.dbg.value(metadata i32* %16, metadata !1350, metadata !DIExpression(DW_OP_deref)), !dbg !1638
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %314, metadata !1354, metadata !DIExpression()), !dbg !1638
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1640

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1343, metadata !DIExpression()), !dbg !1619
  %316 = icmp ugt i64 %312, %139, !dbg !1641
  br i1 %316, label %319, label %317, !dbg !1643

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1346, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1343, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1644
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %349, metadata !1343, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %312, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i1 %350, metadata !1341, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1470
  br label %352, !dbg !1623

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1346, metadata !DIExpression()), !dbg !1619
  br label %346, !dbg !1646

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1343, metadata !DIExpression()), !dbg !1619
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1648
  %323 = load i8, i8* %322, align 1, !dbg !1648, !tbaa !540
  %324 = icmp eq i8 %323, 0, !dbg !1643
  br i1 %324, label %348, label %325, !dbg !1649

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %326, metadata !1343, metadata !DIExpression()), !dbg !1619
  %327 = add i64 %326, %139, !dbg !1651
  %328 = icmp eq i64 %326, %313, !dbg !1641
  br i1 %328, label %348, label %319, !dbg !1643, !llvm.loop !1652

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1653
  call void @llvm.dbg.value(metadata i64 1, metadata !1355, metadata !DIExpression()), !dbg !1654
  br i1 %331, label %332, label %340, !dbg !1653

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1355, metadata !DIExpression()), !dbg !1654
  %334 = add i64 %333, %139, !dbg !1655
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1657
  %336 = load i8, i8* %335, align 1, !dbg !1657, !tbaa !540
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1658

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %338, metadata !1355, metadata !DIExpression()), !dbg !1654
  %339 = icmp eq i64 %338, %314, !dbg !1660
  br i1 %339, label %340, label %332, !dbg !1661, !llvm.loop !1662

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1664, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %341, metadata !1350, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %341, metadata !1666, metadata !DIExpression()) #33, !dbg !1674
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !1676
  %343 = icmp ne i32 %342, 0, !dbg !1677
  call void @llvm.dbg.value(metadata i8 poison, metadata !1346, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %314, metadata !1343, metadata !DIExpression()), !dbg !1619
  br label %348, !dbg !1678

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1346, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1343, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1644
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1645
  call void @llvm.dbg.label(metadata !1372), !dbg !1679
  %345 = select i1 %118, i32 4, i32 2, !dbg !1680
  br label %643, !dbg !1680

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1346, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1343, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1644
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %349, metadata !1343, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %312, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i1 %350, metadata !1341, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1470
  br label %352, !dbg !1623

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1346, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1343, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1644
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %349, metadata !1343, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %312, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i1 %350, metadata !1341, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1470
  %351 = icmp ugt i64 %349, 1, !dbg !1682
  br i1 %351, label %357, label %352, !dbg !1623

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1683
  br i1 %356, label %456, label %357, !dbg !1683

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %361, metadata !1363, metadata !DIExpression()), !dbg !1685
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1686

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1373
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1462
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1687
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1470
  call void @llvm.dbg.value(metadata i8 %369, metadata !1342, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %368, metadata !1340, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1337, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %366, metadata !1335, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %364, metadata !1321, metadata !DIExpression()), !dbg !1373
  br i1 %362, label %414, label %370, !dbg !1688

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1693

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1340, metadata !DIExpression()), !dbg !1470
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1696
  br i1 %372, label %389, label %373, !dbg !1696

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1698
  br i1 %374, label %375, label %377, !dbg !1702

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1698
  store i8 39, i8* %376, align 1, !dbg !1698, !tbaa !540
  br label %377, !dbg !1698

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %378, metadata !1321, metadata !DIExpression()), !dbg !1373
  %379 = icmp ult i64 %378, %140, !dbg !1703
  br i1 %379, label %380, label %382, !dbg !1706

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1703
  store i8 36, i8* %381, align 1, !dbg !1703, !tbaa !540
  br label %382, !dbg !1703

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %383, metadata !1321, metadata !DIExpression()), !dbg !1373
  %384 = icmp ult i64 %383, %140, !dbg !1707
  br i1 %384, label %385, label %387, !dbg !1710

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1707
  store i8 39, i8* %386, align 1, !dbg !1707, !tbaa !540
  br label %387, !dbg !1707

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %388, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 1, metadata !1329, metadata !DIExpression()), !dbg !1373
  br label %389, !dbg !1711

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1373
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %390, metadata !1321, metadata !DIExpression()), !dbg !1373
  %392 = icmp ult i64 %390, %140, !dbg !1712
  br i1 %392, label %393, label %395, !dbg !1715

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1712
  store i8 92, i8* %394, align 1, !dbg !1712, !tbaa !540
  br label %395, !dbg !1712

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %396, metadata !1321, metadata !DIExpression()), !dbg !1373
  %397 = icmp ult i64 %396, %140, !dbg !1716
  br i1 %397, label %398, label %402, !dbg !1719

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1716
  %400 = or i8 %399, 48, !dbg !1716
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1716
  store i8 %400, i8* %401, align 1, !dbg !1716, !tbaa !540
  br label %402, !dbg !1716

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %403, metadata !1321, metadata !DIExpression()), !dbg !1373
  %404 = icmp ult i64 %403, %140, !dbg !1720
  br i1 %404, label %405, label %410, !dbg !1723

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1720
  %407 = and i8 %406, 7, !dbg !1720
  %408 = or i8 %407, 48, !dbg !1720
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1720
  store i8 %408, i8* %409, align 1, !dbg !1720, !tbaa !540
  br label %410, !dbg !1720

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %411, metadata !1321, metadata !DIExpression()), !dbg !1373
  %412 = and i8 %369, 7, !dbg !1724
  %413 = or i8 %412, 48, !dbg !1725
  call void @llvm.dbg.value(metadata i8 %413, metadata !1342, metadata !DIExpression()), !dbg !1470
  br label %421, !dbg !1726

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1727

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1728
  br i1 %416, label %417, label %419, !dbg !1733

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1728
  store i8 92, i8* %418, align 1, !dbg !1728, !tbaa !540
  br label %419, !dbg !1728

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %420, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 0, metadata !1337, metadata !DIExpression()), !dbg !1470
  br label %421, !dbg !1734

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1373
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1470
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1470
  call void @llvm.dbg.value(metadata i8 %426, metadata !1342, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %425, metadata !1340, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1337, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %422, metadata !1321, metadata !DIExpression()), !dbg !1373
  %427 = add i64 %366, 1, !dbg !1735
  %428 = icmp ugt i64 %361, %427, !dbg !1737
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1738

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1739
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1739
  br i1 %432, label %433, label %444, !dbg !1739

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1742
  br i1 %434, label %435, label %437, !dbg !1746

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1742
  store i8 39, i8* %436, align 1, !dbg !1742, !tbaa !540
  br label %437, !dbg !1742

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %438, metadata !1321, metadata !DIExpression()), !dbg !1373
  %439 = icmp ult i64 %438, %140, !dbg !1747
  br i1 %439, label %440, label %442, !dbg !1750

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1747
  store i8 39, i8* %441, align 1, !dbg !1747, !tbaa !540
  br label %442, !dbg !1747

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %443, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 0, metadata !1329, metadata !DIExpression()), !dbg !1373
  br label %444, !dbg !1751

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1752
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %445, metadata !1321, metadata !DIExpression()), !dbg !1373
  %447 = icmp ult i64 %445, %140, !dbg !1753
  br i1 %447, label %448, label %450, !dbg !1756

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1753
  store i8 %426, i8* %449, align 1, !dbg !1753, !tbaa !540
  br label %450, !dbg !1753

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %451, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %427, metadata !1335, metadata !DIExpression()), !dbg !1462
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1757
  %453 = load i8, i8* %452, align 1, !dbg !1757, !tbaa !540
  call void @llvm.dbg.value(metadata i8 %453, metadata !1342, metadata !DIExpression()), !dbg !1470
  br label %363, !dbg !1758, !llvm.loop !1759

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1342, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i1 %358, metadata !1341, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1470
  call void @llvm.dbg.value(metadata i8 %425, metadata !1340, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1337, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %366, metadata !1335, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %422, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %360, metadata !1314, metadata !DIExpression()), !dbg !1373
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1762
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1373
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1377
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1462
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1470
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 %465, metadata !1342, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1341, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1340, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1337, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %462, metadata !1335, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %459, metadata !1322, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %458, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %457, metadata !1314, metadata !DIExpression()), !dbg !1373
  br i1 %121, label %478, label %467, !dbg !1763

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
  br i1 %131, label %479, label %499, !dbg !1765

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1766

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
  %490 = lshr i8 %481, 5, !dbg !1767
  %491 = zext i8 %490 to i64, !dbg !1767
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1768
  %493 = load i32, i32* %492, align 4, !dbg !1768, !tbaa !531
  %494 = and i8 %481, 31, !dbg !1769
  %495 = zext i8 %494 to i32, !dbg !1769
  %496 = shl nuw i32 1, %495, !dbg !1770
  %497 = and i32 %493, %496, !dbg !1770
  %498 = icmp eq i32 %497, 0, !dbg !1770
  br i1 %498, label %499, label %510, !dbg !1771

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
  br i1 %165, label %510, label %546, !dbg !1772

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1762
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1373
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1377
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1773
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1470
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 %518, metadata !1342, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1341, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %516, metadata !1335, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %513, metadata !1322, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %512, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %511, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.label(metadata !1370), !dbg !1774
  br i1 %119, label %638, label %520, !dbg !1775

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1340, metadata !DIExpression()), !dbg !1470
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1777
  br i1 %521, label %538, label %522, !dbg !1777

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1779
  br i1 %523, label %524, label %526, !dbg !1783

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1779
  store i8 39, i8* %525, align 1, !dbg !1779, !tbaa !540
  br label %526, !dbg !1779

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %527, metadata !1321, metadata !DIExpression()), !dbg !1373
  %528 = icmp ult i64 %527, %519, !dbg !1784
  br i1 %528, label %529, label %531, !dbg !1787

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1784
  store i8 36, i8* %530, align 1, !dbg !1784, !tbaa !540
  br label %531, !dbg !1784

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %532, metadata !1321, metadata !DIExpression()), !dbg !1373
  %533 = icmp ult i64 %532, %519, !dbg !1788
  br i1 %533, label %534, label %536, !dbg !1791

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1788
  store i8 39, i8* %535, align 1, !dbg !1788, !tbaa !540
  br label %536, !dbg !1788

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %537, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 1, metadata !1329, metadata !DIExpression()), !dbg !1373
  br label %538, !dbg !1792

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1470
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %539, metadata !1321, metadata !DIExpression()), !dbg !1373
  %541 = icmp ult i64 %539, %519, !dbg !1793
  br i1 %541, label %542, label %544, !dbg !1796

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1793
  store i8 92, i8* %543, align 1, !dbg !1793, !tbaa !540
  br label %544, !dbg !1793

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %556, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 %555, metadata !1342, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1341, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1340, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %552, metadata !1335, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %549, metadata !1322, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %548, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %547, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.label(metadata !1371), !dbg !1797
  br label %570, !dbg !1798

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1762
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1373
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1377
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1773
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1801
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 %555, metadata !1342, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1341, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8 poison, metadata !1340, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %552, metadata !1335, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %549, metadata !1322, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %548, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %547, metadata !1314, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.label(metadata !1371), !dbg !1797
  %557 = xor i1 %551, true, !dbg !1798
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1798
  br i1 %558, label %570, label %559, !dbg !1798

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1802
  br i1 %560, label %561, label %563, !dbg !1806

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1802
  store i8 39, i8* %562, align 1, !dbg !1802, !tbaa !540
  br label %563, !dbg !1802

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %564, metadata !1321, metadata !DIExpression()), !dbg !1373
  %565 = icmp ult i64 %564, %556, !dbg !1807
  br i1 %565, label %566, label %568, !dbg !1810

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1807
  store i8 39, i8* %567, align 1, !dbg !1807, !tbaa !540
  br label %568, !dbg !1807

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %569, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 0, metadata !1329, metadata !DIExpression()), !dbg !1373
  br label %570, !dbg !1811

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1470
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %578, metadata !1321, metadata !DIExpression()), !dbg !1373
  %580 = icmp ult i64 %578, %571, !dbg !1812
  br i1 %580, label %581, label %583, !dbg !1815

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1812
  store i8 %572, i8* %582, align 1, !dbg !1812, !tbaa !540
  br label %583, !dbg !1812

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %584, metadata !1321, metadata !DIExpression()), !dbg !1373
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1816
  call void @llvm.dbg.value(metadata i8 poison, metadata !1328, metadata !DIExpression()), !dbg !1373
  br label %586, !dbg !1817

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1762
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1373
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1377
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1773
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %593, metadata !1335, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1328, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %589, metadata !1322, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %588, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %587, metadata !1314, metadata !DIExpression()), !dbg !1373
  %595 = add i64 %593, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %595, metadata !1335, metadata !DIExpression()), !dbg !1462
  br label %132, !dbg !1819, !llvm.loop !1820

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1312, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1328, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1327, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 undef, metadata !1322, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 undef, metadata !1321, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 undef, metadata !1314, metadata !DIExpression()), !dbg !1373
  %597 = icmp eq i64 %134, 0, !dbg !1822
  %598 = and i1 %126, %597, !dbg !1824
  %599 = and i1 %598, %119, !dbg !1824
  br i1 %599, label %638, label %600, !dbg !1824

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1825
  %602 = or i1 %119, %601, !dbg !1825
  %603 = xor i1 %136, true, !dbg !1825
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1825
  br i1 %604, label %612, label %605, !dbg !1825

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1827

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1829
  br label %653, !dbg !1831

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1832
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1834
  br i1 %611, label %36, label %612, !dbg !1834

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1835
  %615 = or i1 %614, %613, !dbg !1837
  br i1 %615, label %631, label %616, !dbg !1837

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1323, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %134, metadata !1321, metadata !DIExpression()), !dbg !1373
  %617 = load i8, i8* %116, align 1, !dbg !1838, !tbaa !540
  %618 = icmp eq i8 %617, 0, !dbg !1841
  br i1 %618, label %631, label %619, !dbg !1841

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1323, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %622, metadata !1321, metadata !DIExpression()), !dbg !1373
  %623 = icmp ult i64 %622, %140, !dbg !1842
  br i1 %623, label %624, label %626, !dbg !1845

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1842
  store i8 %620, i8* %625, align 1, !dbg !1842, !tbaa !540
  br label %626, !dbg !1842

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %627, metadata !1321, metadata !DIExpression()), !dbg !1373
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1846
  call void @llvm.dbg.value(metadata i8* %628, metadata !1323, metadata !DIExpression()), !dbg !1373
  %629 = load i8, i8* %628, align 1, !dbg !1838, !tbaa !540
  %630 = icmp eq i8 %629, 0, !dbg !1841
  br i1 %630, label %631, label %619, !dbg !1841, !llvm.loop !1847

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1449
  call void @llvm.dbg.value(metadata i64 %632, metadata !1321, metadata !DIExpression()), !dbg !1373
  %633 = icmp ult i64 %632, %140, !dbg !1849
  br i1 %633, label %634, label %653, !dbg !1851

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1852
  store i8 0, i8* %635, align 1, !dbg !1853, !tbaa !540
  br label %653, !dbg !1852

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1372), !dbg !1679
  %637 = icmp eq i32 %112, 2, !dbg !1854
  br i1 %637, label %643, label %647, !dbg !1680

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1372), !dbg !1679
  %641 = icmp eq i32 %112, 2, !dbg !1854
  %642 = select i1 %118, i32 4, i32 2, !dbg !1680
  br i1 %641, label %643, label %647, !dbg !1680

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1680

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1315, metadata !DIExpression()), !dbg !1373
  %651 = and i32 %5, -3, !dbg !1855
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1856
  br label %653, !dbg !1857

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1858
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !1859 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1861 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1865, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %1, metadata !1866, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %0, metadata !1869, metadata !DIExpression()) #33, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %1, metadata !1874, metadata !DIExpression()) #33, !dbg !1882
  call void @llvm.dbg.value(metadata i64* null, metadata !1875, metadata !DIExpression()) #33, !dbg !1882
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1876, metadata !DIExpression()) #33, !dbg !1882
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1884
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1877, metadata !DIExpression()) #33, !dbg !1882
  %6 = tail call i32* @__errno_location() #36, !dbg !1885
  %7 = load i32, i32* %6, align 4, !dbg !1885, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %7, metadata !1878, metadata !DIExpression()) #33, !dbg !1882
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1886
  %9 = load i32, i32* %8, align 4, !dbg !1886, !tbaa !1255
  %10 = or i32 %9, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %10, metadata !1879, metadata !DIExpression()) #33, !dbg !1882
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1888
  %12 = load i32, i32* %11, align 8, !dbg !1888, !tbaa !1204
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1889
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1890
  %15 = load i8*, i8** %14, align 8, !dbg !1890, !tbaa !1277
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1891
  %17 = load i8*, i8** %16, align 8, !dbg !1891, !tbaa !1280
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !1892
  %19 = add i64 %18, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %19, metadata !1880, metadata !DIExpression()) #33, !dbg !1882
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !1894
  call void @llvm.dbg.value(metadata i8* %20, metadata !1881, metadata !DIExpression()) #33, !dbg !1882
  %21 = load i32, i32* %11, align 8, !dbg !1895, !tbaa !1204
  %22 = load i8*, i8** %14, align 8, !dbg !1896, !tbaa !1277
  %23 = load i8*, i8** %16, align 8, !dbg !1897, !tbaa !1280
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !1898
  store i32 %7, i32* %6, align 4, !dbg !1899, !tbaa !531
  ret i8* %20, !dbg !1900
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1869, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %1, metadata !1874, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64* %2, metadata !1875, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1876, metadata !DIExpression()), !dbg !1901
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1902
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1902
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1877, metadata !DIExpression()), !dbg !1901
  %7 = tail call i32* @__errno_location() #36, !dbg !1903
  %8 = load i32, i32* %7, align 4, !dbg !1903, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %8, metadata !1878, metadata !DIExpression()), !dbg !1901
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1904
  %10 = load i32, i32* %9, align 4, !dbg !1904, !tbaa !1255
  %11 = icmp eq i64* %2, null, !dbg !1905
  %12 = zext i1 %11 to i32, !dbg !1905
  %13 = or i32 %10, %12, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %13, metadata !1879, metadata !DIExpression()), !dbg !1901
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1907
  %15 = load i32, i32* %14, align 8, !dbg !1907, !tbaa !1204
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1908
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1909
  %18 = load i8*, i8** %17, align 8, !dbg !1909, !tbaa !1277
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1910
  %20 = load i8*, i8** %19, align 8, !dbg !1910, !tbaa !1280
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1911
  %22 = add i64 %21, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %22, metadata !1880, metadata !DIExpression()), !dbg !1901
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !1913
  call void @llvm.dbg.value(metadata i8* %23, metadata !1881, metadata !DIExpression()), !dbg !1901
  %24 = load i32, i32* %14, align 8, !dbg !1914, !tbaa !1204
  %25 = load i8*, i8** %17, align 8, !dbg !1915, !tbaa !1277
  %26 = load i8*, i8** %19, align 8, !dbg !1916, !tbaa !1280
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1917
  store i32 %8, i32* %7, align 4, !dbg !1918, !tbaa !531
  br i1 %11, label %29, label %28, !dbg !1919

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1920, !tbaa !1922
  br label %29, !dbg !1923

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1924
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1925 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1930, !tbaa !438
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1927, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 1, metadata !1928, metadata !DIExpression()), !dbg !1932
  %2 = load i32, i32* @nslots, align 4, !tbaa !531
  call void @llvm.dbg.value(metadata i32 1, metadata !1928, metadata !DIExpression()), !dbg !1932
  %3 = icmp sgt i32 %2, 1, !dbg !1933
  br i1 %3, label %4, label %6, !dbg !1935

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1933
  br label %10, !dbg !1935

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1936
  %8 = load i8*, i8** %7, align 8, !dbg !1936, !tbaa !1938
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1940
  br i1 %9, label %17, label %16, !dbg !1941

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1928, metadata !DIExpression()), !dbg !1932
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1942
  %13 = load i8*, i8** %12, align 8, !dbg !1942, !tbaa !1938
  tail call void @free(i8* noundef %13) #33, !dbg !1943
  %14 = add nuw nsw i64 %11, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %14, metadata !1928, metadata !DIExpression()), !dbg !1932
  %15 = icmp eq i64 %14, %5, !dbg !1933
  br i1 %15, label %6, label %10, !dbg !1935, !llvm.loop !1945

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !1947
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1949, !tbaa !1950
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1951, !tbaa !1938
  br label %17, !dbg !1952

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1953
  br i1 %18, label %21, label %19, !dbg !1955

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1956
  tail call void @free(i8* noundef %20) #33, !dbg !1958
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1959, !tbaa !438
  br label %21, !dbg !1960

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1961, !tbaa !531
  ret void, !dbg !1962
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1965, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %1, metadata !1966, metadata !DIExpression()), !dbg !1967
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1968
  ret i8* %3, !dbg !1969
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1970 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1974, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8* %1, metadata !1975, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %2, metadata !1976, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1977, metadata !DIExpression()), !dbg !1990
  %6 = tail call i32* @__errno_location() #36, !dbg !1991
  %7 = load i32, i32* %6, align 4, !dbg !1991, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %7, metadata !1978, metadata !DIExpression()), !dbg !1990
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1992, !tbaa !438
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1979, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1980, metadata !DIExpression()), !dbg !1990
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1993
  br i1 %9, label %10, label %11, !dbg !1993

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !1995
  unreachable, !dbg !1995

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1996, !tbaa !531
  %13 = icmp sgt i32 %12, %0, !dbg !1997
  br i1 %13, label %36, label %14, !dbg !1998

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1999
  call void @llvm.dbg.value(metadata i1 %15, metadata !1981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2000
  %16 = bitcast i64* %5 to i8*, !dbg !2001
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2001
  %17 = sext i32 %12 to i64, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %17, metadata !1984, metadata !DIExpression()), !dbg !2000
  store i64 %17, i64* %5, align 8, !dbg !2003, !tbaa !1922
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2004
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2004
  %20 = add nuw nsw i32 %0, 1, !dbg !2005
  %21 = sub i32 %20, %12, !dbg !2006
  %22 = sext i32 %21 to i64, !dbg !2007
  call void @llvm.dbg.value(metadata i64* %5, metadata !1984, metadata !DIExpression(DW_OP_deref)), !dbg !2000
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !2008
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2008
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1979, metadata !DIExpression()), !dbg !1990
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2009, !tbaa !438
  br i1 %15, label %25, label %26, !dbg !2010

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2011, !tbaa.struct !2013
  br label %26, !dbg !2014

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2015, !tbaa !531
  %28 = sext i32 %27 to i64, !dbg !2016
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2016
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2017
  %31 = load i64, i64* %5, align 8, !dbg !2018, !tbaa !1922
  call void @llvm.dbg.value(metadata i64 %31, metadata !1984, metadata !DIExpression()), !dbg !2000
  %32 = sub nsw i64 %31, %28, !dbg !2019
  %33 = shl i64 %32, 4, !dbg !2020
  call void @llvm.dbg.value(metadata i8* %30, metadata !1407, metadata !DIExpression()) #33, !dbg !2021
  call void @llvm.dbg.value(metadata i32 0, metadata !1410, metadata !DIExpression()) #33, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %33, metadata !1411, metadata !DIExpression()) #33, !dbg !2021
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !2023
  %34 = load i64, i64* %5, align 8, !dbg !2024, !tbaa !1922
  call void @llvm.dbg.value(metadata i64 %34, metadata !1984, metadata !DIExpression()), !dbg !2000
  %35 = trunc i64 %34 to i32, !dbg !2024
  store i32 %35, i32* @nslots, align 4, !dbg !2025, !tbaa !531
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2026
  br label %36, !dbg !2027

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1990
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1979, metadata !DIExpression()), !dbg !1990
  %38 = zext i32 %0 to i64, !dbg !2028
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2029
  %40 = load i64, i64* %39, align 8, !dbg !2029, !tbaa !1950
  call void @llvm.dbg.value(metadata i64 %40, metadata !1985, metadata !DIExpression()), !dbg !2030
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2031
  %42 = load i8*, i8** %41, align 8, !dbg !2031, !tbaa !1938
  call void @llvm.dbg.value(metadata i8* %42, metadata !1987, metadata !DIExpression()), !dbg !2030
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2032
  %44 = load i32, i32* %43, align 4, !dbg !2032, !tbaa !1255
  %45 = or i32 %44, 1, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %45, metadata !1988, metadata !DIExpression()), !dbg !2030
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2034
  %47 = load i32, i32* %46, align 8, !dbg !2034, !tbaa !1204
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2035
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2036
  %50 = load i8*, i8** %49, align 8, !dbg !2036, !tbaa !1277
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2037
  %52 = load i8*, i8** %51, align 8, !dbg !2037, !tbaa !1280
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %53, metadata !1989, metadata !DIExpression()), !dbg !2030
  %54 = icmp ugt i64 %40, %53, !dbg !2039
  br i1 %54, label %65, label %55, !dbg !2041

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %56, metadata !1985, metadata !DIExpression()), !dbg !2030
  store i64 %56, i64* %39, align 8, !dbg !2044, !tbaa !1950
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2045
  br i1 %57, label %59, label %58, !dbg !2047

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !2048
  br label %59, !dbg !2048

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2049
  call void @llvm.dbg.value(metadata i8* %60, metadata !1987, metadata !DIExpression()), !dbg !2030
  store i8* %60, i8** %41, align 8, !dbg !2050, !tbaa !1938
  %61 = load i32, i32* %46, align 8, !dbg !2051, !tbaa !1204
  %62 = load i8*, i8** %49, align 8, !dbg !2052, !tbaa !1277
  %63 = load i8*, i8** %51, align 8, !dbg !2053, !tbaa !1280
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2054
  br label %65, !dbg !2055

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2030
  call void @llvm.dbg.value(metadata i8* %66, metadata !1987, metadata !DIExpression()), !dbg !2030
  store i32 %7, i32* %6, align 4, !dbg !2056, !tbaa !531
  ret i8* %66, !dbg !2057
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2058 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2062, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %1, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %2, metadata !2064, metadata !DIExpression()), !dbg !2065
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2066
  ret i8* %4, !dbg !2067
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2068 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2070, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i32 0, metadata !1965, metadata !DIExpression()) #33, !dbg !2072
  call void @llvm.dbg.value(metadata i8* %0, metadata !1966, metadata !DIExpression()) #33, !dbg !2072
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2074
  ret i8* %2, !dbg !2075
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2076 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2080, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %1, metadata !2081, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()) #33, !dbg !2083
  call void @llvm.dbg.value(metadata i8* %0, metadata !2063, metadata !DIExpression()) #33, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %1, metadata !2064, metadata !DIExpression()) #33, !dbg !2083
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2085
  ret i8* %3, !dbg !2086
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2087 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2091, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i32 %1, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %2, metadata !2093, metadata !DIExpression()), !dbg !2095
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2096
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2096
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2094, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2098), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %1, metadata !2102, metadata !DIExpression()) #33, !dbg !2108
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2107, metadata !DIExpression()) #33, !dbg !2110
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2110, !alias.scope !2098
  %6 = icmp eq i32 %1, 10, !dbg !2111
  br i1 %6, label %7, label %8, !dbg !2113

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2114, !noalias !2098
  unreachable, !dbg !2114

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2115
  store i32 %1, i32* %9, align 8, !dbg !2116, !tbaa !1204, !alias.scope !2098
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2117
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2118
  ret i8* %10, !dbg !2119
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2120 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2124, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %1, metadata !2125, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %2, metadata !2126, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %3, metadata !2127, metadata !DIExpression()), !dbg !2129
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2130
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2130
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2128, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %1, metadata !2102, metadata !DIExpression()) #33, !dbg !2136
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2107, metadata !DIExpression()) #33, !dbg !2138
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !2138, !alias.scope !2132
  %7 = icmp eq i32 %1, 10, !dbg !2139
  br i1 %7, label %8, label %9, !dbg !2140

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !2141, !noalias !2132
  unreachable, !dbg !2141

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2142
  store i32 %1, i32* %10, align 8, !dbg !2143, !tbaa !1204, !alias.scope !2132
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2144
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2145
  ret i8* %11, !dbg !2146
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2147 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2151, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %1, metadata !2152, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 0, metadata !2091, metadata !DIExpression()) #33, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %0, metadata !2092, metadata !DIExpression()) #33, !dbg !2154
  call void @llvm.dbg.value(metadata i8* %1, metadata !2093, metadata !DIExpression()) #33, !dbg !2154
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2156
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2156
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2094, metadata !DIExpression()) #33, !dbg !2157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2158) #33, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %0, metadata !2102, metadata !DIExpression()) #33, !dbg !2162
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2107, metadata !DIExpression()) #33, !dbg !2164
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !2164, !alias.scope !2158
  %5 = icmp eq i32 %0, 10, !dbg !2165
  br i1 %5, label %6, label %7, !dbg !2166

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !2167, !noalias !2158
  unreachable, !dbg !2167

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2168
  store i32 %0, i32* %8, align 8, !dbg !2169, !tbaa !1204, !alias.scope !2158
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2170
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2171
  ret i8* %9, !dbg !2172
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2173 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2177, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8* %1, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %2, metadata !2179, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #33, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %0, metadata !2125, metadata !DIExpression()) #33, !dbg !2181
  call void @llvm.dbg.value(metadata i8* %1, metadata !2126, metadata !DIExpression()) #33, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %2, metadata !2127, metadata !DIExpression()) #33, !dbg !2181
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2183
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2128, metadata !DIExpression()) #33, !dbg !2184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185) #33, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %0, metadata !2102, metadata !DIExpression()) #33, !dbg !2189
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2107, metadata !DIExpression()) #33, !dbg !2191
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2191, !alias.scope !2185
  %6 = icmp eq i32 %0, 10, !dbg !2192
  br i1 %6, label %7, label %8, !dbg !2193

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2194, !noalias !2185
  unreachable, !dbg !2194

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2195
  store i32 %0, i32* %9, align 8, !dbg !2196, !tbaa !1204, !alias.scope !2185
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2198
  ret i8* %10, !dbg !2199
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2200 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2204, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %1, metadata !2205, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 %2, metadata !2206, metadata !DIExpression()), !dbg !2208
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2209
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2209
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2211, !tbaa.struct !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1222, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i8 %2, metadata !1223, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i32 1, metadata !1224, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i8 %2, metadata !1225, metadata !DIExpression()), !dbg !2213
  %6 = lshr i8 %2, 5, !dbg !2215
  %7 = zext i8 %6 to i64, !dbg !2215
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2216
  call void @llvm.dbg.value(metadata i32* %8, metadata !1226, metadata !DIExpression()), !dbg !2213
  %9 = and i8 %2, 31, !dbg !2217
  %10 = zext i8 %9 to i32, !dbg !2217
  call void @llvm.dbg.value(metadata i32 %10, metadata !1228, metadata !DIExpression()), !dbg !2213
  %11 = load i32, i32* %8, align 4, !dbg !2218, !tbaa !531
  %12 = lshr i32 %11, %10, !dbg !2219
  %13 = and i32 %12, 1, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %13, metadata !1229, metadata !DIExpression()), !dbg !2213
  %14 = xor i32 %13, 1, !dbg !2221
  %15 = shl i32 %14, %10, !dbg !2222
  %16 = xor i32 %15, %11, !dbg !2223
  store i32 %16, i32* %8, align 4, !dbg !2223, !tbaa !531
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2224
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2225
  ret i8* %17, !dbg !2226
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2227 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2231, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8 %1, metadata !2232, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8* %0, metadata !2204, metadata !DIExpression()) #33, !dbg !2234
  call void @llvm.dbg.value(metadata i64 -1, metadata !2205, metadata !DIExpression()) #33, !dbg !2234
  call void @llvm.dbg.value(metadata i8 %1, metadata !2206, metadata !DIExpression()) #33, !dbg !2234
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2236
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2236
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2207, metadata !DIExpression()) #33, !dbg !2237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2238, !tbaa.struct !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1222, metadata !DIExpression()) #33, !dbg !2239
  call void @llvm.dbg.value(metadata i8 %1, metadata !1223, metadata !DIExpression()) #33, !dbg !2239
  call void @llvm.dbg.value(metadata i32 1, metadata !1224, metadata !DIExpression()) #33, !dbg !2239
  call void @llvm.dbg.value(metadata i8 %1, metadata !1225, metadata !DIExpression()) #33, !dbg !2239
  %5 = lshr i8 %1, 5, !dbg !2241
  %6 = zext i8 %5 to i64, !dbg !2241
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2242
  call void @llvm.dbg.value(metadata i32* %7, metadata !1226, metadata !DIExpression()) #33, !dbg !2239
  %8 = and i8 %1, 31, !dbg !2243
  %9 = zext i8 %8 to i32, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %9, metadata !1228, metadata !DIExpression()) #33, !dbg !2239
  %10 = load i32, i32* %7, align 4, !dbg !2244, !tbaa !531
  %11 = lshr i32 %10, %9, !dbg !2245
  %12 = and i32 %11, 1, !dbg !2246
  call void @llvm.dbg.value(metadata i32 %12, metadata !1229, metadata !DIExpression()) #33, !dbg !2239
  %13 = xor i32 %12, 1, !dbg !2247
  %14 = shl i32 %13, %9, !dbg !2248
  %15 = xor i32 %14, %10, !dbg !2249
  store i32 %15, i32* %7, align 4, !dbg !2249, !tbaa !531
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2250
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2251
  ret i8* %16, !dbg !2252
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2253 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2255, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8* %0, metadata !2231, metadata !DIExpression()) #33, !dbg !2257
  call void @llvm.dbg.value(metadata i8 58, metadata !2232, metadata !DIExpression()) #33, !dbg !2257
  call void @llvm.dbg.value(metadata i8* %0, metadata !2204, metadata !DIExpression()) #33, !dbg !2259
  call void @llvm.dbg.value(metadata i64 -1, metadata !2205, metadata !DIExpression()) #33, !dbg !2259
  call void @llvm.dbg.value(metadata i8 58, metadata !2206, metadata !DIExpression()) #33, !dbg !2259
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2261
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2261
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2207, metadata !DIExpression()) #33, !dbg !2262
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2263, !tbaa.struct !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1222, metadata !DIExpression()) #33, !dbg !2264
  call void @llvm.dbg.value(metadata i8 58, metadata !1223, metadata !DIExpression()) #33, !dbg !2264
  call void @llvm.dbg.value(metadata i32 1, metadata !1224, metadata !DIExpression()) #33, !dbg !2264
  call void @llvm.dbg.value(metadata i8 58, metadata !1225, metadata !DIExpression()) #33, !dbg !2264
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2266
  call void @llvm.dbg.value(metadata i32* %4, metadata !1226, metadata !DIExpression()) #33, !dbg !2264
  call void @llvm.dbg.value(metadata i32 26, metadata !1228, metadata !DIExpression()) #33, !dbg !2264
  %5 = load i32, i32* %4, align 4, !dbg !2267, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %5, metadata !1229, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2264
  %6 = or i32 %5, 67108864, !dbg !2268
  store i32 %6, i32* %4, align 4, !dbg !2268, !tbaa !531
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !2269
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2270
  ret i8* %7, !dbg !2271
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2272 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %1, metadata !2275, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %0, metadata !2204, metadata !DIExpression()) #33, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %1, metadata !2205, metadata !DIExpression()) #33, !dbg !2277
  call void @llvm.dbg.value(metadata i8 58, metadata !2206, metadata !DIExpression()) #33, !dbg !2277
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2279
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2279
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2207, metadata !DIExpression()) #33, !dbg !2280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2281, !tbaa.struct !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1222, metadata !DIExpression()) #33, !dbg !2282
  call void @llvm.dbg.value(metadata i8 58, metadata !1223, metadata !DIExpression()) #33, !dbg !2282
  call void @llvm.dbg.value(metadata i32 1, metadata !1224, metadata !DIExpression()) #33, !dbg !2282
  call void @llvm.dbg.value(metadata i8 58, metadata !1225, metadata !DIExpression()) #33, !dbg !2282
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2284
  call void @llvm.dbg.value(metadata i32* %5, metadata !1226, metadata !DIExpression()) #33, !dbg !2282
  call void @llvm.dbg.value(metadata i32 26, metadata !1228, metadata !DIExpression()) #33, !dbg !2282
  %6 = load i32, i32* %5, align 4, !dbg !2285, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %6, metadata !1229, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2282
  %7 = or i32 %6, 67108864, !dbg !2286
  store i32 %7, i32* %5, align 4, !dbg !2286, !tbaa !531
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2287
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2288
  ret i8* %8, !dbg !2289
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2290 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2292, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 %1, metadata !2293, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8* %2, metadata !2294, metadata !DIExpression()), !dbg !2296
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2297
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2297
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2295, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32 %1, metadata !2102, metadata !DIExpression()) #33, !dbg !2299
  call void @llvm.dbg.value(metadata i32 0, metadata !2107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2299
  %6 = icmp eq i32 %1, 10, !dbg !2301
  br i1 %6, label %7, label %8, !dbg !2302

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2303, !noalias !2304
  unreachable, !dbg !2303

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2299
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2307
  store i32 %1, i32* %9, align 8, !dbg !2307, !tbaa.struct !2212
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2307
  %11 = bitcast i32* %10 to i8*, !dbg !2307
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1222, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 58, metadata !1223, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 1, metadata !1224, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 58, metadata !1225, metadata !DIExpression()), !dbg !2308
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2310
  call void @llvm.dbg.value(metadata i32* %12, metadata !1226, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 26, metadata !1228, metadata !DIExpression()), !dbg !2308
  %13 = load i32, i32* %12, align 4, !dbg !2311, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %13, metadata !1229, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2308
  %14 = or i32 %13, 67108864, !dbg !2312
  store i32 %14, i32* %12, align 4, !dbg !2312, !tbaa !531
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2313
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2314
  ret i8* %15, !dbg !2315
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2316 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2320, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %1, metadata !2321, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %2, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %3, metadata !2323, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %0, metadata !2325, metadata !DIExpression()) #33, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()) #33, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %2, metadata !2331, metadata !DIExpression()) #33, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %3, metadata !2332, metadata !DIExpression()) #33, !dbg !2335
  call void @llvm.dbg.value(metadata i64 -1, metadata !2333, metadata !DIExpression()) #33, !dbg !2335
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2337
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2337
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2334, metadata !DIExpression()) #33, !dbg !2338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2339, !tbaa.struct !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1262, metadata !DIExpression()) #33, !dbg !2340
  call void @llvm.dbg.value(metadata i8* %1, metadata !1263, metadata !DIExpression()) #33, !dbg !2340
  call void @llvm.dbg.value(metadata i8* %2, metadata !1264, metadata !DIExpression()) #33, !dbg !2340
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1262, metadata !DIExpression()) #33, !dbg !2340
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2342
  store i32 10, i32* %7, align 8, !dbg !2343, !tbaa !1204
  %8 = icmp ne i8* %1, null, !dbg !2344
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2345
  br i1 %10, label %12, label %11, !dbg !2345

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2346
  unreachable, !dbg !2346

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2347
  store i8* %1, i8** %13, align 8, !dbg !2348, !tbaa !1277
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2349
  store i8* %2, i8** %14, align 8, !dbg !2350, !tbaa !1280
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2351
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2352
  ret i8* %15, !dbg !2353
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2326 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2325, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %2, metadata !2331, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %3, metadata !2332, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %4, metadata !2333, metadata !DIExpression()), !dbg !2354
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2355
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2355
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2334, metadata !DIExpression()), !dbg !2356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2357, !tbaa.struct !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1262, metadata !DIExpression()) #33, !dbg !2358
  call void @llvm.dbg.value(metadata i8* %1, metadata !1263, metadata !DIExpression()) #33, !dbg !2358
  call void @llvm.dbg.value(metadata i8* %2, metadata !1264, metadata !DIExpression()) #33, !dbg !2358
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1262, metadata !DIExpression()) #33, !dbg !2358
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2360
  store i32 10, i32* %8, align 8, !dbg !2361, !tbaa !1204
  %9 = icmp ne i8* %1, null, !dbg !2362
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2363
  br i1 %11, label %13, label %12, !dbg !2363

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !2364
  unreachable, !dbg !2364

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2365
  store i8* %1, i8** %14, align 8, !dbg !2366, !tbaa !1277
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2367
  store i8* %2, i8** %15, align 8, !dbg !2368, !tbaa !1280
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2369
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2370
  ret i8* %16, !dbg !2371
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2372 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2376, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* %1, metadata !2377, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* %2, metadata !2378, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32 0, metadata !2320, metadata !DIExpression()) #33, !dbg !2380
  call void @llvm.dbg.value(metadata i8* %0, metadata !2321, metadata !DIExpression()) #33, !dbg !2380
  call void @llvm.dbg.value(metadata i8* %1, metadata !2322, metadata !DIExpression()) #33, !dbg !2380
  call void @llvm.dbg.value(metadata i8* %2, metadata !2323, metadata !DIExpression()) #33, !dbg !2380
  call void @llvm.dbg.value(metadata i32 0, metadata !2325, metadata !DIExpression()) #33, !dbg !2382
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()) #33, !dbg !2382
  call void @llvm.dbg.value(metadata i8* %1, metadata !2331, metadata !DIExpression()) #33, !dbg !2382
  call void @llvm.dbg.value(metadata i8* %2, metadata !2332, metadata !DIExpression()) #33, !dbg !2382
  call void @llvm.dbg.value(metadata i64 -1, metadata !2333, metadata !DIExpression()) #33, !dbg !2382
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2384
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2384
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2334, metadata !DIExpression()) #33, !dbg !2385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2386, !tbaa.struct !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1262, metadata !DIExpression()) #33, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %0, metadata !1263, metadata !DIExpression()) #33, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %1, metadata !1264, metadata !DIExpression()) #33, !dbg !2387
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1262, metadata !DIExpression()) #33, !dbg !2387
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2389
  store i32 10, i32* %6, align 8, !dbg !2390, !tbaa !1204
  %7 = icmp ne i8* %0, null, !dbg !2391
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2392
  br i1 %9, label %11, label %10, !dbg !2392

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2393
  unreachable, !dbg !2393

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2394
  store i8* %0, i8** %12, align 8, !dbg !2395, !tbaa !1277
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2396
  store i8* %1, i8** %13, align 8, !dbg !2397, !tbaa !1280
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2398
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2399
  ret i8* %14, !dbg !2400
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2401 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2405, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %1, metadata !2406, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %2, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %3, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 0, metadata !2325, metadata !DIExpression()) #33, !dbg !2410
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()) #33, !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !2331, metadata !DIExpression()) #33, !dbg !2410
  call void @llvm.dbg.value(metadata i8* %2, metadata !2332, metadata !DIExpression()) #33, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %3, metadata !2333, metadata !DIExpression()) #33, !dbg !2410
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2412
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2334, metadata !DIExpression()) #33, !dbg !2413
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2414, !tbaa.struct !2212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1262, metadata !DIExpression()) #33, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %0, metadata !1263, metadata !DIExpression()) #33, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %1, metadata !1264, metadata !DIExpression()) #33, !dbg !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1262, metadata !DIExpression()) #33, !dbg !2415
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2417
  store i32 10, i32* %7, align 8, !dbg !2418, !tbaa !1204
  %8 = icmp ne i8* %0, null, !dbg !2419
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2420
  br i1 %10, label %12, label %11, !dbg !2420

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2421
  unreachable, !dbg !2421

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2422
  store i8* %0, i8** %13, align 8, !dbg !2423, !tbaa !1277
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2424
  store i8* %1, i8** %14, align 8, !dbg !2425, !tbaa !1280
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2426
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2427
  ret i8* %15, !dbg !2428
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2429 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2433, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %1, metadata !2434, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %2, metadata !2435, metadata !DIExpression()), !dbg !2436
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2437
  ret i8* %4, !dbg !2438
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2443, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %1, metadata !2444, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 0, metadata !2433, metadata !DIExpression()) #33, !dbg !2446
  call void @llvm.dbg.value(metadata i8* %0, metadata !2434, metadata !DIExpression()) #33, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %1, metadata !2435, metadata !DIExpression()) #33, !dbg !2446
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2448
  ret i8* %3, !dbg !2449
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %1, metadata !2455, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 %0, metadata !2433, metadata !DIExpression()) #33, !dbg !2457
  call void @llvm.dbg.value(metadata i8* %1, metadata !2434, metadata !DIExpression()) #33, !dbg !2457
  call void @llvm.dbg.value(metadata i64 -1, metadata !2435, metadata !DIExpression()) #33, !dbg !2457
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2459
  ret i8* %3, !dbg !2460
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2461 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2465, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 0, metadata !2454, metadata !DIExpression()) #33, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %0, metadata !2455, metadata !DIExpression()) #33, !dbg !2467
  call void @llvm.dbg.value(metadata i32 0, metadata !2433, metadata !DIExpression()) #33, !dbg !2469
  call void @llvm.dbg.value(metadata i8* %0, metadata !2434, metadata !DIExpression()) #33, !dbg !2469
  call void @llvm.dbg.value(metadata i64 -1, metadata !2435, metadata !DIExpression()) #33, !dbg !2469
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2471
  ret i8* %2, !dbg !2472
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2473 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2512, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8* %1, metadata !2513, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8* %2, metadata !2514, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8* %3, metadata !2515, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8** %4, metadata !2516, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i64 %5, metadata !2517, metadata !DIExpression()), !dbg !2518
  %7 = icmp eq i8* %1, null, !dbg !2519
  br i1 %7, label %10, label %8, !dbg !2521

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !2522
  br label %12, !dbg !2522

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.99, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !2523
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.101, i64 0, i64 0), i32 noundef 5) #33, !dbg !2524
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !2524
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.102, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2525
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.103, i64 0, i64 0), i32 noundef 5) #33, !dbg !2526
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.104, i64 0, i64 0)) #33, !dbg !2526
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.102, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2527
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
  ], !dbg !2528

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.105, i64 0, i64 0), i32 noundef 5) #33, !dbg !2529
  %21 = load i8*, i8** %4, align 8, !dbg !2529, !tbaa !438
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !2529
  br label %147, !dbg !2531

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.106, i64 0, i64 0), i32 noundef 5) #33, !dbg !2532
  %25 = load i8*, i8** %4, align 8, !dbg !2532, !tbaa !438
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2532
  %27 = load i8*, i8** %26, align 8, !dbg !2532, !tbaa !438
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !2532
  br label %147, !dbg !2533

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.107, i64 0, i64 0), i32 noundef 5) #33, !dbg !2534
  %31 = load i8*, i8** %4, align 8, !dbg !2534, !tbaa !438
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2534
  %33 = load i8*, i8** %32, align 8, !dbg !2534, !tbaa !438
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2534
  %35 = load i8*, i8** %34, align 8, !dbg !2534, !tbaa !438
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !2534
  br label %147, !dbg !2535

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.108, i64 0, i64 0), i32 noundef 5) #33, !dbg !2536
  %39 = load i8*, i8** %4, align 8, !dbg !2536, !tbaa !438
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2536
  %41 = load i8*, i8** %40, align 8, !dbg !2536, !tbaa !438
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2536
  %43 = load i8*, i8** %42, align 8, !dbg !2536, !tbaa !438
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2536
  %45 = load i8*, i8** %44, align 8, !dbg !2536, !tbaa !438
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !2536
  br label %147, !dbg !2537

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.109, i64 0, i64 0), i32 noundef 5) #33, !dbg !2538
  %49 = load i8*, i8** %4, align 8, !dbg !2538, !tbaa !438
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2538
  %51 = load i8*, i8** %50, align 8, !dbg !2538, !tbaa !438
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2538
  %53 = load i8*, i8** %52, align 8, !dbg !2538, !tbaa !438
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2538
  %55 = load i8*, i8** %54, align 8, !dbg !2538, !tbaa !438
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2538
  %57 = load i8*, i8** %56, align 8, !dbg !2538, !tbaa !438
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !2538
  br label %147, !dbg !2539

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.110, i64 0, i64 0), i32 noundef 5) #33, !dbg !2540
  %61 = load i8*, i8** %4, align 8, !dbg !2540, !tbaa !438
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2540
  %63 = load i8*, i8** %62, align 8, !dbg !2540, !tbaa !438
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2540
  %65 = load i8*, i8** %64, align 8, !dbg !2540, !tbaa !438
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2540
  %67 = load i8*, i8** %66, align 8, !dbg !2540, !tbaa !438
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2540
  %69 = load i8*, i8** %68, align 8, !dbg !2540, !tbaa !438
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2540
  %71 = load i8*, i8** %70, align 8, !dbg !2540, !tbaa !438
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !2540
  br label %147, !dbg !2541

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.111, i64 0, i64 0), i32 noundef 5) #33, !dbg !2542
  %75 = load i8*, i8** %4, align 8, !dbg !2542, !tbaa !438
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2542
  %77 = load i8*, i8** %76, align 8, !dbg !2542, !tbaa !438
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2542
  %79 = load i8*, i8** %78, align 8, !dbg !2542, !tbaa !438
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2542
  %81 = load i8*, i8** %80, align 8, !dbg !2542, !tbaa !438
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2542
  %83 = load i8*, i8** %82, align 8, !dbg !2542, !tbaa !438
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2542
  %85 = load i8*, i8** %84, align 8, !dbg !2542, !tbaa !438
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2542
  %87 = load i8*, i8** %86, align 8, !dbg !2542, !tbaa !438
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !2542
  br label %147, !dbg !2543

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.112, i64 0, i64 0), i32 noundef 5) #33, !dbg !2544
  %91 = load i8*, i8** %4, align 8, !dbg !2544, !tbaa !438
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2544
  %93 = load i8*, i8** %92, align 8, !dbg !2544, !tbaa !438
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2544
  %95 = load i8*, i8** %94, align 8, !dbg !2544, !tbaa !438
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2544
  %97 = load i8*, i8** %96, align 8, !dbg !2544, !tbaa !438
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2544
  %99 = load i8*, i8** %98, align 8, !dbg !2544, !tbaa !438
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2544
  %101 = load i8*, i8** %100, align 8, !dbg !2544, !tbaa !438
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2544
  %103 = load i8*, i8** %102, align 8, !dbg !2544, !tbaa !438
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2544
  %105 = load i8*, i8** %104, align 8, !dbg !2544, !tbaa !438
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !2544
  br label %147, !dbg !2545

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.113, i64 0, i64 0), i32 noundef 5) #33, !dbg !2546
  %109 = load i8*, i8** %4, align 8, !dbg !2546, !tbaa !438
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2546
  %111 = load i8*, i8** %110, align 8, !dbg !2546, !tbaa !438
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2546
  %113 = load i8*, i8** %112, align 8, !dbg !2546, !tbaa !438
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2546
  %115 = load i8*, i8** %114, align 8, !dbg !2546, !tbaa !438
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2546
  %117 = load i8*, i8** %116, align 8, !dbg !2546, !tbaa !438
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2546
  %119 = load i8*, i8** %118, align 8, !dbg !2546, !tbaa !438
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2546
  %121 = load i8*, i8** %120, align 8, !dbg !2546, !tbaa !438
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2546
  %123 = load i8*, i8** %122, align 8, !dbg !2546, !tbaa !438
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2546
  %125 = load i8*, i8** %124, align 8, !dbg !2546, !tbaa !438
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !2546
  br label %147, !dbg !2547

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.114, i64 0, i64 0), i32 noundef 5) #33, !dbg !2548
  %129 = load i8*, i8** %4, align 8, !dbg !2548, !tbaa !438
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2548
  %131 = load i8*, i8** %130, align 8, !dbg !2548, !tbaa !438
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2548
  %133 = load i8*, i8** %132, align 8, !dbg !2548, !tbaa !438
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2548
  %135 = load i8*, i8** %134, align 8, !dbg !2548, !tbaa !438
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2548
  %137 = load i8*, i8** %136, align 8, !dbg !2548, !tbaa !438
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2548
  %139 = load i8*, i8** %138, align 8, !dbg !2548, !tbaa !438
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2548
  %141 = load i8*, i8** %140, align 8, !dbg !2548, !tbaa !438
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2548
  %143 = load i8*, i8** %142, align 8, !dbg !2548, !tbaa !438
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2548
  %145 = load i8*, i8** %144, align 8, !dbg !2548, !tbaa !438
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !2548
  br label %147, !dbg !2549

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2550
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2551 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2555, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %1, metadata !2556, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %2, metadata !2557, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %3, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8** %4, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 0, metadata !2560, metadata !DIExpression()), !dbg !2561
  br label %6, !dbg !2562

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2564
  call void @llvm.dbg.value(metadata i64 %7, metadata !2560, metadata !DIExpression()), !dbg !2561
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2565
  %9 = load i8*, i8** %8, align 8, !dbg !2565, !tbaa !438
  %10 = icmp eq i8* %9, null, !dbg !2567
  %11 = add i64 %7, 1, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %11, metadata !2560, metadata !DIExpression()), !dbg !2561
  br i1 %10, label %12, label %6, !dbg !2567, !llvm.loop !2569

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2571
  ret void, !dbg !2572
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2573 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2588, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %1, metadata !2589, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %2, metadata !2590, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %3, metadata !2591, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2592, metadata !DIExpression()), !dbg !2597
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2598
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2598
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2594, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i64 0, metadata !2593, metadata !DIExpression()), !dbg !2596
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2593, metadata !DIExpression()), !dbg !2596
  %11 = load i32, i32* %8, align 8, !dbg !2600
  %12 = icmp sgt i32 %11, -1, !dbg !2600
  br i1 %12, label %20, label %13, !dbg !2600

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2600
  store i32 %14, i32* %8, align 8, !dbg !2600
  %15 = icmp ult i32 %11, -7, !dbg !2600
  br i1 %15, label %16, label %20, !dbg !2600

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2600
  %18 = sext i32 %11 to i64, !dbg !2600
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2600
  br label %24, !dbg !2600

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2600
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2600
  store i8* %23, i8** %10, align 8, !dbg !2600
  br label %24, !dbg !2600

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2600
  %28 = load i8*, i8** %27, align 8, !dbg !2600
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2603
  store i8* %28, i8** %29, align 8, !dbg !2604, !tbaa !438
  %30 = icmp eq i8* %28, null, !dbg !2605
  br i1 %30, label %210, label %31, !dbg !2606

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 1, metadata !2593, metadata !DIExpression()), !dbg !2596
  %32 = icmp sgt i32 %25, -1, !dbg !2600
  br i1 %32, label %40, label %33, !dbg !2600

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2600
  store i32 %34, i32* %8, align 8, !dbg !2600
  %35 = icmp ult i32 %25, -7, !dbg !2600
  br i1 %35, label %36, label %40, !dbg !2600

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2600
  %38 = sext i32 %25 to i64, !dbg !2600
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2600
  br label %44, !dbg !2600

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2600
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2600
  store i8* %43, i8** %10, align 8, !dbg !2600
  br label %44, !dbg !2600

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2600
  %48 = load i8*, i8** %47, align 8, !dbg !2600
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2603
  store i8* %48, i8** %49, align 8, !dbg !2604, !tbaa !438
  %50 = icmp eq i8* %48, null, !dbg !2605
  br i1 %50, label %210, label %51, !dbg !2606

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 2, metadata !2593, metadata !DIExpression()), !dbg !2596
  %52 = icmp sgt i32 %45, -1, !dbg !2600
  br i1 %52, label %60, label %53, !dbg !2600

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2600
  store i32 %54, i32* %8, align 8, !dbg !2600
  %55 = icmp ult i32 %45, -7, !dbg !2600
  br i1 %55, label %56, label %60, !dbg !2600

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2600
  %58 = sext i32 %45 to i64, !dbg !2600
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2600
  br label %64, !dbg !2600

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2600
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2600
  store i8* %63, i8** %10, align 8, !dbg !2600
  br label %64, !dbg !2600

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2600
  %68 = load i8*, i8** %67, align 8, !dbg !2600
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2603
  store i8* %68, i8** %69, align 8, !dbg !2604, !tbaa !438
  %70 = icmp eq i8* %68, null, !dbg !2605
  br i1 %70, label %210, label %71, !dbg !2606

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 3, metadata !2593, metadata !DIExpression()), !dbg !2596
  %72 = icmp sgt i32 %65, -1, !dbg !2600
  br i1 %72, label %80, label %73, !dbg !2600

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2600
  store i32 %74, i32* %8, align 8, !dbg !2600
  %75 = icmp ult i32 %65, -7, !dbg !2600
  br i1 %75, label %76, label %80, !dbg !2600

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2600
  %78 = sext i32 %65 to i64, !dbg !2600
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2600
  br label %84, !dbg !2600

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2600
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2600
  store i8* %83, i8** %10, align 8, !dbg !2600
  br label %84, !dbg !2600

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2600
  %88 = load i8*, i8** %87, align 8, !dbg !2600
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2603
  store i8* %88, i8** %89, align 8, !dbg !2604, !tbaa !438
  %90 = icmp eq i8* %88, null, !dbg !2605
  br i1 %90, label %210, label %91, !dbg !2606

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 4, metadata !2593, metadata !DIExpression()), !dbg !2596
  %92 = icmp sgt i32 %85, -1, !dbg !2600
  br i1 %92, label %100, label %93, !dbg !2600

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2600
  store i32 %94, i32* %8, align 8, !dbg !2600
  %95 = icmp ult i32 %85, -7, !dbg !2600
  br i1 %95, label %96, label %100, !dbg !2600

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2600
  %98 = sext i32 %85 to i64, !dbg !2600
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2600
  br label %104, !dbg !2600

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2600
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2600
  store i8* %103, i8** %10, align 8, !dbg !2600
  br label %104, !dbg !2600

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2600
  %108 = load i8*, i8** %107, align 8, !dbg !2600
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2603
  store i8* %108, i8** %109, align 8, !dbg !2604, !tbaa !438
  %110 = icmp eq i8* %108, null, !dbg !2605
  br i1 %110, label %210, label %111, !dbg !2606

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 5, metadata !2593, metadata !DIExpression()), !dbg !2596
  %112 = icmp sgt i32 %105, -1, !dbg !2600
  br i1 %112, label %120, label %113, !dbg !2600

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2600
  store i32 %114, i32* %8, align 8, !dbg !2600
  %115 = icmp ult i32 %105, -7, !dbg !2600
  br i1 %115, label %116, label %120, !dbg !2600

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2600
  %118 = sext i32 %105 to i64, !dbg !2600
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2600
  br label %124, !dbg !2600

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2600
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2600
  store i8* %123, i8** %10, align 8, !dbg !2600
  br label %124, !dbg !2600

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2600
  %128 = load i8*, i8** %127, align 8, !dbg !2600
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2603
  store i8* %128, i8** %129, align 8, !dbg !2604, !tbaa !438
  %130 = icmp eq i8* %128, null, !dbg !2605
  br i1 %130, label %210, label %131, !dbg !2606

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 6, metadata !2593, metadata !DIExpression()), !dbg !2596
  %132 = icmp sgt i32 %125, -1, !dbg !2600
  br i1 %132, label %140, label %133, !dbg !2600

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2600
  store i32 %134, i32* %8, align 8, !dbg !2600
  %135 = icmp ult i32 %125, -7, !dbg !2600
  br i1 %135, label %136, label %140, !dbg !2600

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2600
  %138 = sext i32 %125 to i64, !dbg !2600
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2600
  br label %144, !dbg !2600

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2600
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2600
  store i8* %143, i8** %10, align 8, !dbg !2600
  br label %144, !dbg !2600

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2600
  %148 = load i8*, i8** %147, align 8, !dbg !2600
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2603
  store i8* %148, i8** %149, align 8, !dbg !2604, !tbaa !438
  %150 = icmp eq i8* %148, null, !dbg !2605
  br i1 %150, label %210, label %151, !dbg !2606

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 7, metadata !2593, metadata !DIExpression()), !dbg !2596
  %152 = icmp sgt i32 %145, -1, !dbg !2600
  br i1 %152, label %160, label %153, !dbg !2600

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2600
  store i32 %154, i32* %8, align 8, !dbg !2600
  %155 = icmp ult i32 %145, -7, !dbg !2600
  br i1 %155, label %156, label %160, !dbg !2600

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2600
  %158 = sext i32 %145 to i64, !dbg !2600
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2600
  br label %164, !dbg !2600

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2600
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2600
  store i8* %163, i8** %10, align 8, !dbg !2600
  br label %164, !dbg !2600

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2600
  %168 = load i8*, i8** %167, align 8, !dbg !2600
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2603
  store i8* %168, i8** %169, align 8, !dbg !2604, !tbaa !438
  %170 = icmp eq i8* %168, null, !dbg !2605
  br i1 %170, label %210, label %171, !dbg !2606

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 8, metadata !2593, metadata !DIExpression()), !dbg !2596
  %172 = icmp sgt i32 %165, -1, !dbg !2600
  br i1 %172, label %180, label %173, !dbg !2600

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2600
  store i32 %174, i32* %8, align 8, !dbg !2600
  %175 = icmp ult i32 %165, -7, !dbg !2600
  br i1 %175, label %176, label %180, !dbg !2600

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2600
  %178 = sext i32 %165 to i64, !dbg !2600
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2600
  br label %184, !dbg !2600

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2600
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2600
  store i8* %183, i8** %10, align 8, !dbg !2600
  br label %184, !dbg !2600

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2600
  %188 = load i8*, i8** %187, align 8, !dbg !2600
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2603
  store i8* %188, i8** %189, align 8, !dbg !2604, !tbaa !438
  %190 = icmp eq i8* %188, null, !dbg !2605
  br i1 %190, label %210, label %191, !dbg !2606

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 9, metadata !2593, metadata !DIExpression()), !dbg !2596
  %192 = icmp sgt i32 %185, -1, !dbg !2600
  br i1 %192, label %200, label %193, !dbg !2600

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2600
  store i32 %194, i32* %8, align 8, !dbg !2600
  %195 = icmp ult i32 %185, -7, !dbg !2600
  br i1 %195, label %196, label %200, !dbg !2600

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2600
  %198 = sext i32 %185 to i64, !dbg !2600
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2600
  br label %203, !dbg !2600

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2600
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2600
  store i8* %202, i8** %10, align 8, !dbg !2600
  br label %203, !dbg !2600

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2600
  %206 = load i8*, i8** %205, align 8, !dbg !2600
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2603
  store i8* %206, i8** %207, align 8, !dbg !2604, !tbaa !438
  %208 = icmp eq i8* %206, null, !dbg !2605
  %209 = select i1 %208, i64 9, i64 10, !dbg !2606
  br label %210, !dbg !2606

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2607
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2608
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2609
  ret void, !dbg !2609
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2610 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2614, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2615, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %2, metadata !2616, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %3, metadata !2617, metadata !DIExpression()), !dbg !2619
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2620
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2620
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2618, metadata !DIExpression()), !dbg !2621
  call void @llvm.va_start(i8* nonnull %7), !dbg !2622
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2623
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2623
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2623, !tbaa.struct !911
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2623
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2623
  call void @llvm.va_end(i8* nonnull %7), !dbg !2624
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2625
  ret void, !dbg !2625
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2626 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2627, !tbaa !438
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.102, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2627
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.119, i64 0, i64 0), i32 noundef 5) #33, !dbg !2628
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.120, i64 0, i64 0)) #33, !dbg !2628
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.121, i64 0, i64 0), i32 noundef 5) #33, !dbg !2629
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.123, i64 0, i64 0)) #33, !dbg !2629
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.124, i64 0, i64 0), i32 noundef 5) #33, !dbg !2630
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.125, i64 0, i64 0)) #33, !dbg !2630
  ret void, !dbg !2631
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2632 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2637, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %1, metadata !2638, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %2, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()) #33, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %1, metadata !2644, metadata !DIExpression()) #33, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %2, metadata !2645, metadata !DIExpression()) #33, !dbg !2646
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %4, metadata !2649, metadata !DIExpression()) #33, !dbg !2654
  %5 = icmp eq i8* %4, null, !dbg !2656
  br i1 %5, label %6, label %7, !dbg !2658

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2659
  unreachable, !dbg !2659

7:                                                ; preds = %3
  ret i8* %4, !dbg !2660
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2642 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %1, metadata !2644, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %2, metadata !2645, metadata !DIExpression()), !dbg !2661
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %4, metadata !2649, metadata !DIExpression()) #33, !dbg !2663
  %5 = icmp eq i8* %4, null, !dbg !2665
  br i1 %5, label %6, label %7, !dbg !2666

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2667
  unreachable, !dbg !2667

7:                                                ; preds = %3
  ret i8* %4, !dbg !2668
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2669 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2673, metadata !DIExpression()), !dbg !2674
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %2, metadata !2649, metadata !DIExpression()) #33, !dbg !2676
  %3 = icmp eq i8* %2, null, !dbg !2678
  br i1 %3, label %4, label %5, !dbg !2679

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2680
  unreachable, !dbg !2680

5:                                                ; preds = %1
  ret i8* %2, !dbg !2681
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2682 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %0, metadata !2688, metadata !DIExpression()) #33, !dbg !2692
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %2, metadata !2649, metadata !DIExpression()) #33, !dbg !2695
  %3 = icmp eq i8* %2, null, !dbg !2697
  br i1 %3, label %4, label %5, !dbg !2698

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2699
  unreachable, !dbg !2699

5:                                                ; preds = %1
  ret i8* %2, !dbg !2700
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2701 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2705, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %0, metadata !2673, metadata !DIExpression()) #33, !dbg !2707
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %2, metadata !2649, metadata !DIExpression()) #33, !dbg !2710
  %3 = icmp eq i8* %2, null, !dbg !2712
  br i1 %3, label %4, label %5, !dbg !2713

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2714
  unreachable, !dbg !2714

5:                                                ; preds = %1
  ret i8* %2, !dbg !2715
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2716 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2720, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 %1, metadata !2721, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %0, metadata !2723, metadata !DIExpression()) #33, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %1, metadata !2727, metadata !DIExpression()) #33, !dbg !2728
  %3 = icmp eq i64 %1, 0, !dbg !2730
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2730
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !2731
  call void @llvm.dbg.value(metadata i8* %5, metadata !2649, metadata !DIExpression()) #33, !dbg !2732
  %6 = icmp eq i8* %5, null, !dbg !2734
  br i1 %6, label %7, label %8, !dbg !2735

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2736
  unreachable, !dbg !2736

8:                                                ; preds = %2
  ret i8* %5, !dbg !2737
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2738 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()) #33, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %1, metadata !2748, metadata !DIExpression()) #33, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %0, metadata !2723, metadata !DIExpression()) #33, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %1, metadata !2727, metadata !DIExpression()) #33, !dbg !2751
  %3 = icmp eq i64 %1, 0, !dbg !2753
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2753
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %5, metadata !2649, metadata !DIExpression()) #33, !dbg !2755
  %6 = icmp eq i8* %5, null, !dbg !2757
  br i1 %6, label %7, label %8, !dbg !2758

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2759
  unreachable, !dbg !2759

8:                                                ; preds = %2
  ret i8* %5, !dbg !2760
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2761 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %1, metadata !2766, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %2, metadata !2767, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8* %0, metadata !2769, metadata !DIExpression()) #33, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %1, metadata !2772, metadata !DIExpression()) #33, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %2, metadata !2773, metadata !DIExpression()) #33, !dbg !2774
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2776
  call void @llvm.dbg.value(metadata i8* %4, metadata !2649, metadata !DIExpression()) #33, !dbg !2777
  %5 = icmp eq i8* %4, null, !dbg !2779
  br i1 %5, label %6, label %7, !dbg !2780

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2781
  unreachable, !dbg !2781

7:                                                ; preds = %3
  ret i8* %4, !dbg !2782
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2783 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2787, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 %1, metadata !2788, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* null, metadata !2641, metadata !DIExpression()) #33, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %0, metadata !2644, metadata !DIExpression()) #33, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %1, metadata !2645, metadata !DIExpression()) #33, !dbg !2790
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %3, metadata !2649, metadata !DIExpression()) #33, !dbg !2793
  %4 = icmp eq i8* %3, null, !dbg !2795
  br i1 %4, label %5, label %6, !dbg !2796

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2797
  unreachable, !dbg !2797

6:                                                ; preds = %2
  ret i8* %3, !dbg !2798
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2799 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %1, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8* null, metadata !2765, metadata !DIExpression()) #33, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %0, metadata !2766, metadata !DIExpression()) #33, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %1, metadata !2767, metadata !DIExpression()) #33, !dbg !2806
  call void @llvm.dbg.value(metadata i8* null, metadata !2769, metadata !DIExpression()) #33, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %0, metadata !2772, metadata !DIExpression()) #33, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %1, metadata !2773, metadata !DIExpression()) #33, !dbg !2808
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %3, metadata !2649, metadata !DIExpression()) #33, !dbg !2811
  %4 = icmp eq i8* %3, null, !dbg !2813
  br i1 %4, label %5, label %6, !dbg !2814

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2815
  unreachable, !dbg !2815

6:                                                ; preds = %2
  ret i8* %3, !dbg !2816
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2817 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2821, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i64* %1, metadata !2822, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()) #33, !dbg !2824
  call void @llvm.dbg.value(metadata i64* %1, metadata !370, metadata !DIExpression()) #33, !dbg !2824
  call void @llvm.dbg.value(metadata i64 1, metadata !371, metadata !DIExpression()) #33, !dbg !2824
  %3 = load i64, i64* %1, align 8, !dbg !2826, !tbaa !1922
  call void @llvm.dbg.value(metadata i64 %3, metadata !372, metadata !DIExpression()) #33, !dbg !2824
  %4 = icmp eq i8* %0, null, !dbg !2827
  br i1 %4, label %5, label %8, !dbg !2829

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2830
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2833
  br label %15, !dbg !2833

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2834
  %10 = add nuw i64 %9, 1, !dbg !2834
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !2834
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2834
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %13, metadata !372, metadata !DIExpression()) #33, !dbg !2824
  br i1 %12, label %14, label %15, !dbg !2837

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !2838
  unreachable, !dbg !2838

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2824
  call void @llvm.dbg.value(metadata i64 %16, metadata !372, metadata !DIExpression()) #33, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()) #33, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %16, metadata !2644, metadata !DIExpression()) #33, !dbg !2839
  call void @llvm.dbg.value(metadata i64 1, metadata !2645, metadata !DIExpression()) #33, !dbg !2839
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %17, metadata !2649, metadata !DIExpression()) #33, !dbg !2842
  %18 = icmp eq i8* %17, null, !dbg !2844
  br i1 %18, label %19, label %20, !dbg !2845

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !2846
  unreachable, !dbg !2846

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !369, metadata !DIExpression()) #33, !dbg !2824
  store i64 %16, i64* %1, align 8, !dbg !2847, !tbaa !1922
  ret i8* %17, !dbg !2848
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !364 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64* %1, metadata !370, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %2, metadata !371, metadata !DIExpression()), !dbg !2849
  %4 = load i64, i64* %1, align 8, !dbg !2850, !tbaa !1922
  call void @llvm.dbg.value(metadata i64 %4, metadata !372, metadata !DIExpression()), !dbg !2849
  %5 = icmp eq i8* %0, null, !dbg !2851
  br i1 %5, label %6, label %13, !dbg !2852

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2853
  br i1 %7, label %8, label %20, !dbg !2854

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %9, metadata !372, metadata !DIExpression()), !dbg !2849
  %10 = icmp ugt i64 %2, 128, !dbg !2857
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %12, metadata !372, metadata !DIExpression()), !dbg !2849
  br label %20, !dbg !2859

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2860
  %15 = add nuw i64 %14, 1, !dbg !2860
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2860
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2860
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %18, metadata !372, metadata !DIExpression()), !dbg !2849
  br i1 %17, label %19, label %20, !dbg !2861

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !2862
  unreachable, !dbg !2862

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2849
  call void @llvm.dbg.value(metadata i64 %21, metadata !372, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()) #33, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %21, metadata !2644, metadata !DIExpression()) #33, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %2, metadata !2645, metadata !DIExpression()) #33, !dbg !2863
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %22, metadata !2649, metadata !DIExpression()) #33, !dbg !2866
  %23 = icmp eq i8* %22, null, !dbg !2868
  br i1 %23, label %24, label %25, !dbg !2869

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !2870
  unreachable, !dbg !2870

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !369, metadata !DIExpression()), !dbg !2849
  store i64 %21, i64* %1, align 8, !dbg !2871, !tbaa !1922
  ret i8* %22, !dbg !2872
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !376 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !384, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64* %1, metadata !385, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64 %2, metadata !386, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64 %3, metadata !387, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64 %4, metadata !388, metadata !DIExpression()), !dbg !2873
  %6 = load i64, i64* %1, align 8, !dbg !2874, !tbaa !1922
  call void @llvm.dbg.value(metadata i64 %6, metadata !389, metadata !DIExpression()), !dbg !2873
  %7 = ashr i64 %6, 1, !dbg !2875
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2875
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2875
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %10, metadata !390, metadata !DIExpression()), !dbg !2873
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %11, metadata !390, metadata !DIExpression()), !dbg !2873
  %12 = icmp sgt i64 %3, -1, !dbg !2878
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2880
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %15, metadata !390, metadata !DIExpression()), !dbg !2873
  %16 = icmp slt i64 %4, 0, !dbg !2881
  br i1 %16, label %17, label %30, !dbg !2881

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2881
  br i1 %18, label %19, label %24, !dbg !2881

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2881
  %21 = udiv i64 9223372036854775807, %20, !dbg !2881
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2881
  br i1 %23, label %46, label %43, !dbg !2881

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2881
  br i1 %25, label %43, label %26, !dbg !2881

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2881
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2881
  %29 = icmp ult i64 %28, %15, !dbg !2881
  br i1 %29, label %46, label %43, !dbg !2881

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2881
  br i1 %31, label %43, label %32, !dbg !2881

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2881
  br i1 %33, label %34, label %40, !dbg !2881

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2881
  br i1 %35, label %43, label %36, !dbg !2881

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2881
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2881
  %39 = icmp ult i64 %38, %4, !dbg !2881
  br i1 %39, label %46, label %43, !dbg !2881

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2881
  %42 = icmp ult i64 %41, %15, !dbg !2881
  br i1 %42, label %46, label %43, !dbg !2881

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !391, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2873
  %44 = mul i64 %15, %4, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %44, metadata !391, metadata !DIExpression()), !dbg !2873
  %45 = icmp slt i64 %44, 128, !dbg !2881
  br i1 %45, label %46, label %52, !dbg !2881

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !392, metadata !DIExpression()), !dbg !2873
  %48 = sdiv i64 %47, %4, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %48, metadata !390, metadata !DIExpression()), !dbg !2873
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %51, metadata !391, metadata !DIExpression()), !dbg !2873
  br label %52, !dbg !2886

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2873
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2873
  call void @llvm.dbg.value(metadata i64 %54, metadata !391, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64 %53, metadata !390, metadata !DIExpression()), !dbg !2873
  %55 = icmp eq i8* %0, null, !dbg !2887
  br i1 %55, label %56, label %57, !dbg !2889

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2890, !tbaa !1922
  br label %57, !dbg !2891

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2892
  %59 = icmp slt i64 %58, %2, !dbg !2894
  br i1 %59, label %60, label %97, !dbg !2895

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2896
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2896
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %63, metadata !390, metadata !DIExpression()), !dbg !2873
  br i1 %62, label %96, label %64, !dbg !2897

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2898
  br i1 %66, label %96, label %67, !dbg !2898

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2899

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2899
  br i1 %69, label %70, label %75, !dbg !2899

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2899
  %72 = udiv i64 9223372036854775807, %71, !dbg !2899
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2899
  br i1 %74, label %96, label %94, !dbg !2899

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2899
  br i1 %76, label %94, label %77, !dbg !2899

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2899
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2899
  %80 = icmp ult i64 %79, %63, !dbg !2899
  br i1 %80, label %96, label %94, !dbg !2899

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2899
  br i1 %82, label %94, label %83, !dbg !2899

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2899
  br i1 %84, label %85, label %91, !dbg !2899

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2899
  br i1 %86, label %94, label %87, !dbg !2899

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2899
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2899
  %90 = icmp ult i64 %89, %4, !dbg !2899
  br i1 %90, label %96, label %94, !dbg !2899

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2899
  %93 = icmp ult i64 %92, %63, !dbg !2899
  br i1 %93, label %96, label %94, !dbg !2899

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !391, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2873
  %95 = mul i64 %63, %4, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %95, metadata !391, metadata !DIExpression()), !dbg !2873
  br label %97, !dbg !2900

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !2901
  unreachable, !dbg !2901

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2873
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2873
  call void @llvm.dbg.value(metadata i64 %99, metadata !391, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64 %98, metadata !390, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %0, metadata !2720, metadata !DIExpression()) #33, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %99, metadata !2721, metadata !DIExpression()) #33, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %0, metadata !2723, metadata !DIExpression()) #33, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %99, metadata !2727, metadata !DIExpression()) #33, !dbg !2904
  %100 = icmp eq i64 %99, 0, !dbg !2906
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2906
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %102, metadata !2649, metadata !DIExpression()) #33, !dbg !2908
  %103 = icmp eq i8* %102, null, !dbg !2910
  br i1 %103, label %104, label %105, !dbg !2911

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !2912
  unreachable, !dbg !2912

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !384, metadata !DIExpression()), !dbg !2873
  store i64 %98, i64* %1, align 8, !dbg !2913, !tbaa !1922
  ret i8* %102, !dbg !2914
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2915 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %0, metadata !2919, metadata !DIExpression()) #33, !dbg !2923
  call void @llvm.dbg.value(metadata i64 1, metadata !2922, metadata !DIExpression()) #33, !dbg !2923
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %2, metadata !2649, metadata !DIExpression()) #33, !dbg !2926
  %3 = icmp eq i8* %2, null, !dbg !2928
  br i1 %3, label %4, label %5, !dbg !2929

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2930
  unreachable, !dbg !2930

5:                                                ; preds = %1
  ret i8* %2, !dbg !2931
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2920 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2919, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2922, metadata !DIExpression()), !dbg !2932
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !2933
  call void @llvm.dbg.value(metadata i8* %3, metadata !2649, metadata !DIExpression()) #33, !dbg !2934
  %4 = icmp eq i8* %3, null, !dbg !2936
  br i1 %4, label %5, label %6, !dbg !2937

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2938
  unreachable, !dbg !2938

6:                                                ; preds = %2
  ret i8* %3, !dbg !2939
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2940 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %0, metadata !2944, metadata !DIExpression()) #33, !dbg !2948
  call void @llvm.dbg.value(metadata i64 1, metadata !2947, metadata !DIExpression()) #33, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %0, metadata !2950, metadata !DIExpression()) #33, !dbg !2954
  call void @llvm.dbg.value(metadata i64 1, metadata !2953, metadata !DIExpression()) #33, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %0, metadata !2950, metadata !DIExpression()) #33, !dbg !2954
  call void @llvm.dbg.value(metadata i64 1, metadata !2953, metadata !DIExpression()) #33, !dbg !2954
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %2, metadata !2649, metadata !DIExpression()) #33, !dbg !2957
  %3 = icmp eq i8* %2, null, !dbg !2959
  br i1 %3, label %4, label %5, !dbg !2960

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2961
  unreachable, !dbg !2961

5:                                                ; preds = %1
  ret i8* %2, !dbg !2962
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2945 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2944, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %0, metadata !2950, metadata !DIExpression()) #33, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()) #33, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %0, metadata !2950, metadata !DIExpression()) #33, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()) #33, !dbg !2964
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %3, metadata !2649, metadata !DIExpression()) #33, !dbg !2967
  %4 = icmp eq i8* %3, null, !dbg !2969
  br i1 %4, label %5, label %6, !dbg !2970

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2971
  unreachable, !dbg !2971

6:                                                ; preds = %2
  ret i8* %3, !dbg !2972
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2973 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2977, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %1, metadata !2673, metadata !DIExpression()) #33, !dbg !2980
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !2982
  call void @llvm.dbg.value(metadata i8* %3, metadata !2649, metadata !DIExpression()) #33, !dbg !2983
  %4 = icmp eq i8* %3, null, !dbg !2985
  br i1 %4, label %5, label %6, !dbg !2986

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2987
  unreachable, !dbg !2987

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2988, metadata !DIExpression()) #33, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %0, metadata !2991, metadata !DIExpression()) #33, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()) #33, !dbg !2993
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !2995
  ret i8* %3, !dbg !2996
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2997 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %1, metadata !2686, metadata !DIExpression()) #33, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %1, metadata !2688, metadata !DIExpression()) #33, !dbg !3006
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3008
  call void @llvm.dbg.value(metadata i8* %3, metadata !2649, metadata !DIExpression()) #33, !dbg !3009
  %4 = icmp eq i8* %3, null, !dbg !3011
  br i1 %4, label %5, label %6, !dbg !3012

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3013
  unreachable, !dbg !3013

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2988, metadata !DIExpression()) #33, !dbg !3014
  call void @llvm.dbg.value(metadata i8* %0, metadata !2991, metadata !DIExpression()) #33, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()) #33, !dbg !3014
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3016
  ret i8* %3, !dbg !3017
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3018 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3022, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3023, metadata !DIExpression()), !dbg !3025
  %3 = add nsw i64 %1, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %3, metadata !2686, metadata !DIExpression()) #33, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %3, metadata !2688, metadata !DIExpression()) #33, !dbg !3029
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %4, metadata !2649, metadata !DIExpression()) #33, !dbg !3032
  %5 = icmp eq i8* %4, null, !dbg !3034
  br i1 %5, label %6, label %7, !dbg !3035

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3036
  unreachable, !dbg !3036

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3024, metadata !DIExpression()), !dbg !3025
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3037
  store i8 0, i8* %8, align 1, !dbg !3038, !tbaa !540
  call void @llvm.dbg.value(metadata i8* %4, metadata !2988, metadata !DIExpression()) #33, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %0, metadata !2991, metadata !DIExpression()) #33, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()) #33, !dbg !3039
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3041
  ret i8* %4, !dbg !3042
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3043 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3045, metadata !DIExpression()), !dbg !3046
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3047
  %3 = add i64 %2, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %0, metadata !2977, metadata !DIExpression()) #33, !dbg !3049
  call void @llvm.dbg.value(metadata i64 %3, metadata !2978, metadata !DIExpression()) #33, !dbg !3049
  call void @llvm.dbg.value(metadata i64 %3, metadata !2673, metadata !DIExpression()) #33, !dbg !3051
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %4, metadata !2649, metadata !DIExpression()) #33, !dbg !3054
  %5 = icmp eq i8* %4, null, !dbg !3056
  br i1 %5, label %6, label %7, !dbg !3057

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3058
  unreachable, !dbg !3058

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2988, metadata !DIExpression()) #33, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %0, metadata !2991, metadata !DIExpression()) #33, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %3, metadata !2992, metadata !DIExpression()) #33, !dbg !3059
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !3061
  ret i8* %4, !dbg !3062
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3063 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3068, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %1, metadata !3065, metadata !DIExpression()), !dbg !3069
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.139, i64 0, i64 0), i32 noundef 5) #33, !dbg !3068
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* noundef %2) #33, !dbg !3068
  %3 = icmp eq i32 %1, 0, !dbg !3068
  tail call void @llvm.assume(i1 %3), !dbg !3068
  tail call void @abort() #35, !dbg !3070
  unreachable, !dbg !3070
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef readonly %0) local_unnamed_addr #19 !dbg !3071 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3073, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !3074, metadata !DIExpression()), !dbg !3078
  br label %2, !dbg !3079

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3078
  call void @llvm.dbg.value(metadata i8* %3, metadata !3074, metadata !DIExpression()), !dbg !3078
  %4 = load i8, i8* %3, align 1, !dbg !3080, !tbaa !540
  %5 = icmp eq i8 %4, 47, !dbg !3080
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3081
  call void @llvm.dbg.value(metadata i8* %6, metadata !3074, metadata !DIExpression()), !dbg !3078
  br i1 %5, label %2, label %7, !dbg !3079, !llvm.loop !3082

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !3083
  %9 = phi i8* [ %16, %15 ], [ %3, %2 ], !dbg !3085
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi i8* [ %18, %15 ], [ %3, %2 ], !dbg !3086
  call void @llvm.dbg.value(metadata i8* %11, metadata !3076, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8 poison, metadata !3075, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* %9, metadata !3074, metadata !DIExpression()), !dbg !3078
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3087

12:                                               ; preds = %7
  ret i8* %9, !dbg !3088

13:                                               ; preds = %7
  %14 = select i1 %10, i8* %11, i8* %9, !dbg !3089
  br label %15, !dbg !3089

15:                                               ; preds = %13, %7
  %16 = phi i8* [ %9, %7 ], [ %14, %13 ], !dbg !3078
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3075, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* %16, metadata !3074, metadata !DIExpression()), !dbg !3078
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3092
  call void @llvm.dbg.value(metadata i8* %18, metadata !3076, metadata !DIExpression()), !dbg !3086
  %19 = load i8, i8* %18, align 1, !dbg !3083, !tbaa !540
  br label %7, !dbg !3093, !llvm.loop !3094
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @base_len(i8* nocapture noundef readonly %0) local_unnamed_addr #30 !dbg !3096 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3100, metadata !DIExpression()), !dbg !3103
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %2, metadata !3101, metadata !DIExpression()), !dbg !3103
  %3 = icmp ne i64 %2, 0, !dbg !3106
  %4 = zext i1 %3 to i64, !dbg !3106
  br label %5, !dbg !3106

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3107
  call void @llvm.dbg.value(metadata i64 %6, metadata !3101, metadata !DIExpression()), !dbg !3103
  %7 = icmp ugt i64 %6, 1, !dbg !3108
  br i1 %7, label %8, label %13, !dbg !3110

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3111
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !3111
  %11 = load i8, i8* %10, align 1, !dbg !3111, !tbaa !540
  %12 = icmp eq i8 %11, 47, !dbg !3111
  br i1 %12, label %5, label %13, !dbg !3112, !llvm.loop !3113

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3107
  call void @llvm.dbg.value(metadata i64 0, metadata !3102, metadata !DIExpression()), !dbg !3103
  ret i64 %14, !dbg !3115
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3116 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3154, metadata !DIExpression()), !dbg !3159
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !3160
  call void @llvm.dbg.value(metadata i1 undef, metadata !3155, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3159
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3161, metadata !DIExpression()), !dbg !3164
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3166
  %4 = load i32, i32* %3, align 8, !dbg !3166, !tbaa !3167
  %5 = and i32 %4, 32, !dbg !3168
  %6 = icmp eq i32 %5, 0, !dbg !3168
  call void @llvm.dbg.value(metadata i1 %6, metadata !3157, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3159
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !3169
  %8 = icmp eq i32 %7, 0, !dbg !3170
  call void @llvm.dbg.value(metadata i1 %8, metadata !3158, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3159
  br i1 %6, label %9, label %19, !dbg !3171

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3173
  call void @llvm.dbg.value(metadata i1 %10, metadata !3155, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3159
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3174
  %12 = xor i1 %8, true, !dbg !3174
  %13 = sext i1 %12 to i32, !dbg !3174
  br i1 %11, label %22, label %14, !dbg !3174

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !3175
  %16 = load i32, i32* %15, align 4, !dbg !3175, !tbaa !531
  %17 = icmp ne i32 %16, 9, !dbg !3176
  %18 = sext i1 %17 to i32, !dbg !3177
  br label %22, !dbg !3177

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3178

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !3180
  store i32 0, i32* %21, align 4, !dbg !3182, !tbaa !531
  br label %22, !dbg !3180

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3159
  ret i32 %23, !dbg !3183
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3184 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3222, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 0, metadata !3223, metadata !DIExpression()), !dbg !3226
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %2, metadata !3224, metadata !DIExpression()), !dbg !3226
  %3 = icmp slt i32 %2, 0, !dbg !3228
  br i1 %3, label %4, label %6, !dbg !3230

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3231
  br label %24, !dbg !3232

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3233
  %8 = icmp eq i32 %7, 0, !dbg !3233
  br i1 %8, label %13, label %9, !dbg !3235

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3236
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !3237
  %12 = icmp eq i64 %11, -1, !dbg !3238
  br i1 %12, label %16, label %13, !dbg !3239

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3240
  %15 = icmp eq i32 %14, 0, !dbg !3240
  br i1 %15, label %16, label %18, !dbg !3241

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3223, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 0, metadata !3225, metadata !DIExpression()), !dbg !3226
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %21, metadata !3225, metadata !DIExpression()), !dbg !3226
  br label %24, !dbg !3243

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !3244
  %20 = load i32, i32* %19, align 4, !dbg !3244, !tbaa !531
  call void @llvm.dbg.value(metadata i32 %20, metadata !3223, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 0, metadata !3225, metadata !DIExpression()), !dbg !3226
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %21, metadata !3225, metadata !DIExpression()), !dbg !3226
  %22 = icmp eq i32 %20, 0, !dbg !3245
  br i1 %22, label %24, label %23, !dbg !3243

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3247, !tbaa !531
  call void @llvm.dbg.value(metadata i32 -1, metadata !3225, metadata !DIExpression()), !dbg !3226
  br label %24, !dbg !3249

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3226
  ret i32 %25, !dbg !3250
}

; Function Attrs: nofree nounwind
declare !dbg !3251 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3252 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3253 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3257 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3295, metadata !DIExpression()), !dbg !3296
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3297
  br i1 %2, label %6, label %3, !dbg !3299

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3300
  %5 = icmp eq i32 %4, 0, !dbg !3300
  br i1 %5, label %6, label %8, !dbg !3301

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3302
  br label %17, !dbg !3303

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3304, metadata !DIExpression()) #33, !dbg !3309
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3311
  %10 = load i32, i32* %9, align 8, !dbg !3311, !tbaa !3167
  %11 = and i32 %10, 256, !dbg !3313
  %12 = icmp eq i32 %11, 0, !dbg !3313
  br i1 %12, label %15, label %13, !dbg !3314

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !3315
  br label %15, !dbg !3315

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3316
  br label %17, !dbg !3317

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3296
  ret i32 %18, !dbg !3318
}

; Function Attrs: nofree nounwind
declare !dbg !3319 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3320 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3359, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i64 %1, metadata !3360, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 %2, metadata !3361, metadata !DIExpression()), !dbg !3365
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3366
  %5 = load i8*, i8** %4, align 8, !dbg !3366, !tbaa !3367
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3368
  %7 = load i8*, i8** %6, align 8, !dbg !3368, !tbaa !3369
  %8 = icmp eq i8* %5, %7, !dbg !3370
  br i1 %8, label %9, label %28, !dbg !3371

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3372
  %11 = load i8*, i8** %10, align 8, !dbg !3372, !tbaa !781
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3373
  %13 = load i8*, i8** %12, align 8, !dbg !3373, !tbaa !3374
  %14 = icmp eq i8* %11, %13, !dbg !3375
  br i1 %14, label %15, label %28, !dbg !3376

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3377
  %17 = load i8*, i8** %16, align 8, !dbg !3377, !tbaa !3378
  %18 = icmp eq i8* %17, null, !dbg !3379
  br i1 %18, label %19, label %28, !dbg !3380

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3381
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %21, metadata !3362, metadata !DIExpression()), !dbg !3383
  %22 = icmp eq i64 %21, -1, !dbg !3384
  br i1 %22, label %30, label %23, !dbg !3386

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3387
  %25 = load i32, i32* %24, align 8, !dbg !3388, !tbaa !3167
  %26 = and i32 %25, -17, !dbg !3388
  store i32 %26, i32* %24, align 8, !dbg !3388, !tbaa !3167
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3389
  store i64 %21, i64* %27, align 8, !dbg !3390, !tbaa !3391
  br label %30, !dbg !3392

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3393
  br label %30, !dbg !3394

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3365
  ret i32 %31, !dbg !3395
}

; Function Attrs: nofree nounwind
declare !dbg !3396 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3399 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3404, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8* %1, metadata !3405, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %2, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3407, metadata !DIExpression()), !dbg !3409
  %5 = icmp eq i8* %1, null, !dbg !3410
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3412
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.155, i64 0, i64 0), i8* %1, !dbg !3412
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %8, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8* %7, metadata !3405, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32* %6, metadata !3404, metadata !DIExpression()), !dbg !3409
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3413
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3415
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3407, metadata !DIExpression()), !dbg !3409
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %11, metadata !3408, metadata !DIExpression()), !dbg !3409
  %12 = icmp ult i64 %11, -3, !dbg !3417
  br i1 %12, label %13, label %18, !dbg !3419

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !3420
  %15 = icmp eq i32 %14, 0, !dbg !3420
  br i1 %15, label %16, label %30, !dbg !3421

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3422, metadata !DIExpression()) #33, !dbg !3427
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3429, metadata !DIExpression()) #33, !dbg !3434
  call void @llvm.dbg.value(metadata i32 0, metadata !3432, metadata !DIExpression()) #33, !dbg !3434
  call void @llvm.dbg.value(metadata i64 8, metadata !3433, metadata !DIExpression()) #33, !dbg !3434
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3436
  store i64 0, i64* %17, align 1, !dbg !3436
  br label %30, !dbg !3437

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3438
  br i1 %19, label %20, label %21, !dbg !3440

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !3441
  unreachable, !dbg !3441

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3442

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !3444
  br i1 %24, label %30, label %25, !dbg !3445

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3446
  br i1 %26, label %30, label %27, !dbg !3449

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3450, !tbaa !540
  %29 = zext i8 %28 to i32, !dbg !3451
  store i32 %29, i32* %6, align 4, !dbg !3452, !tbaa !531
  br label %30, !dbg !3453

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3409
  ret i64 %31, !dbg !3454
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3455 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !3461 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3463, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3464, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %2, metadata !3465, metadata !DIExpression()), !dbg !3467
  %4 = icmp eq i64 %2, 0, !dbg !3468
  br i1 %4, label %8, label %5, !dbg !3468

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3468
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3468
  br i1 %7, label %13, label %8, !dbg !3468

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3466, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3467
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3466, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3467
  %9 = mul i64 %2, %1, !dbg !3468
  call void @llvm.dbg.value(metadata i64 %9, metadata !3466, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %0, metadata !3470, metadata !DIExpression()) #33, !dbg !3474
  call void @llvm.dbg.value(metadata i64 %9, metadata !3473, metadata !DIExpression()) #33, !dbg !3474
  %10 = icmp eq i64 %9, 0, !dbg !3476
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3476
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !3477
  br label %15, !dbg !3478

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3466, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3467
  %14 = tail call i32* @__errno_location() #36, !dbg !3479
  store i32 12, i32* %14, align 4, !dbg !3481, !tbaa !531
  br label %15, !dbg !3482

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3467
  ret i8* %16, !dbg !3483
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3484 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3488, metadata !DIExpression()), !dbg !3493
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3494
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3494
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3489, metadata !DIExpression()), !dbg !3495
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !3496
  %5 = icmp eq i32 %4, 0, !dbg !3496
  br i1 %5, label %6, label %13, !dbg !3498

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3499, metadata !DIExpression()) #33, !dbg !3503
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i64 0, i64 0), metadata !3502, metadata !DIExpression()) #33, !dbg !3503
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i64 0, i64 0), i64 2), !dbg !3506
  %8 = icmp eq i32 %7, 0, !dbg !3507
  br i1 %8, label %12, label %9, !dbg !3508

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3499, metadata !DIExpression()) #33, !dbg !3509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), metadata !3502, metadata !DIExpression()) #33, !dbg !3509
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i64 6), !dbg !3511
  %11 = icmp eq i32 %10, 0, !dbg !3512
  br i1 %11, label %12, label %13, !dbg !3513

12:                                               ; preds = %9, %6
  br label %13, !dbg !3514

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3515
  ret i1 %14, !dbg !3515
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3516 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3520, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8* %1, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %2, metadata !3522, metadata !DIExpression()), !dbg !3523
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !3524
  ret i32 %4, !dbg !3525
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3526 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3530, metadata !DIExpression()), !dbg !3531
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !3532
  ret i8* %2, !dbg !3533
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3534 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3536, metadata !DIExpression()), !dbg !3538
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %2, metadata !3537, metadata !DIExpression()), !dbg !3538
  ret i8* %2, !dbg !3540
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3541 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3543, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8* %1, metadata !3544, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %2, metadata !3545, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i32 %0, metadata !3536, metadata !DIExpression()) #33, !dbg !3551
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3553
  call void @llvm.dbg.value(metadata i8* %4, metadata !3537, metadata !DIExpression()) #33, !dbg !3551
  call void @llvm.dbg.value(metadata i8* %4, metadata !3546, metadata !DIExpression()), !dbg !3550
  %5 = icmp eq i8* %4, null, !dbg !3554
  br i1 %5, label %6, label %9, !dbg !3555

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3556
  br i1 %7, label %19, label %8, !dbg !3559

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3560, !tbaa !540
  br label %19, !dbg !3561

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %10, metadata !3547, metadata !DIExpression()), !dbg !3563
  %11 = icmp ult i64 %10, %2, !dbg !3564
  br i1 %11, label %12, label %14, !dbg !3566

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %1, metadata !3569, metadata !DIExpression()) #33, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %4, metadata !3572, metadata !DIExpression()) #33, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %13, metadata !3573, metadata !DIExpression()) #33, !dbg !3574
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !3576
  br label %19, !dbg !3577

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3578
  br i1 %15, label %19, label %16, !dbg !3581

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3582
  call void @llvm.dbg.value(metadata i8* %1, metadata !3569, metadata !DIExpression()) #33, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %4, metadata !3572, metadata !DIExpression()) #33, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %17, metadata !3573, metadata !DIExpression()) #33, !dbg !3584
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !3586
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3587
  store i8 0, i8* %18, align 1, !dbg !3588, !tbaa !540
  br label %19, !dbg !3589

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3590
  ret i32 %20, !dbg !3591
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
attributes #16 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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
attributes #30 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind }
attributes #34 = { nounwind readonly willreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind readnone willreturn }
attributes #37 = { noreturn }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !135, !140, !347, !349, !147, !327, !351, !188, !198, !230, !353, !319, !360, !394, !396, !398, !400, !402, !404, !333, !406, !409, !411, !413}
!llvm.ident = !{!415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415}
!llvm.module.flags = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 30, type: !121, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "477d3cd1850fe551cd0c5a9952f88312")
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
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1536, elements: !131)
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
!132 = !DISubrange(count: 6)
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
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "lib/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f66445772cbc4fc024422470508e242e")
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!352 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!353 = distinct !DICompileUnit(language: DW_LANG_C99, file: !354, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !355, retainedTypes: !359, splitDebugInlining: false, nameTableKind: None)
!354 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!355 = !{!356}
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 40, baseType: !7, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!359 = !{!24}
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !362, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!362 = !{!363, !375}
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !364, file: !361, line: 188, baseType: !7, size: 32, elements: !373)
!364 = distinct !DISubprogram(name: "x2nrealloc", scope: !361, file: !361, line: 176, type: !365, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !368)
!365 = !DISubroutineType(types: !366)
!366 = !{!24, !24, !367, !27}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!368 = !{!369, !370, !371, !372}
!369 = !DILocalVariable(name: "p", arg: 1, scope: !364, file: !361, line: 176, type: !24)
!370 = !DILocalVariable(name: "pn", arg: 2, scope: !364, file: !361, line: 176, type: !367)
!371 = !DILocalVariable(name: "s", arg: 3, scope: !364, file: !361, line: 176, type: !27)
!372 = !DILocalVariable(name: "n", scope: !364, file: !361, line: 178, type: !27)
!373 = !{!374}
!374 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !376, file: !361, line: 228, baseType: !7, size: 32, elements: !373)
!376 = distinct !DISubprogram(name: "xpalloc", scope: !361, file: !361, line: 223, type: !377, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !383)
!377 = !DISubroutineType(types: !378)
!378 = !{!24, !24, !379, !380, !382, !380}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !381, line: 130, baseType: !382)
!381 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !28, line: 35, baseType: !88)
!383 = !{!384, !385, !386, !387, !388, !389, !390, !391, !392}
!384 = !DILocalVariable(name: "pa", arg: 1, scope: !376, file: !361, line: 223, type: !24)
!385 = !DILocalVariable(name: "pn", arg: 2, scope: !376, file: !361, line: 223, type: !379)
!386 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !376, file: !361, line: 223, type: !380)
!387 = !DILocalVariable(name: "n_max", arg: 4, scope: !376, file: !361, line: 223, type: !382)
!388 = !DILocalVariable(name: "s", arg: 5, scope: !376, file: !361, line: 223, type: !380)
!389 = !DILocalVariable(name: "n0", scope: !376, file: !361, line: 230, type: !380)
!390 = !DILocalVariable(name: "n", scope: !376, file: !361, line: 237, type: !380)
!391 = !DILocalVariable(name: "nbytes", scope: !376, file: !361, line: 248, type: !380)
!392 = !DILocalVariable(name: "adjusted_nbytes", scope: !376, file: !361, line: 252, type: !380)
!393 = !{!22, !24, !47, !88, !29}
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !190, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !359, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !359, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !408, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!408 = !{!47, !29, !24}
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !359, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!415 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!416 = !{i32 7, !"Dwarf Version", i32 5}
!417 = !{i32 2, !"Debug Info Version", i32 3}
!418 = !{i32 1, !"wchar_size", i32 4}
!419 = !{i32 1, !"branch-target-enforcement", i32 0}
!420 = !{i32 1, !"sign-return-address", i32 0}
!421 = !{i32 1, !"sign-return-address-all", i32 0}
!422 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!423 = !{i32 7, !"PIC Level", i32 2}
!424 = !{i32 7, !"PIE Level", i32 2}
!425 = !{i32 7, !"uwtable", i32 1}
!426 = !{i32 7, !"frame-pointer", i32 1}
!427 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 41, type: !428, scopeLine: 42, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !25}
!430 = !{!431}
!431 = !DILocalVariable(name: "status", arg: 1, scope: !427, file: !3, line: 41, type: !25)
!432 = !DILocation(line: 0, scope: !427)
!433 = !DILocation(line: 43, column: 14, scope: !434)
!434 = distinct !DILexicalBlock(scope: !427, file: !3, line: 43, column: 7)
!435 = !DILocation(line: 43, column: 7, scope: !427)
!436 = !DILocation(line: 44, column: 5, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !3, line: 44, column: 5)
!438 = !{!439, !439, i64 0}
!439 = !{!"any pointer", !440, i64 0}
!440 = !{!"omnipotent char", !441, i64 0}
!441 = !{!"Simple C/C++ TBAA"}
!442 = !DILocation(line: 47, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !434, file: !3, line: 46, column: 5)
!444 = !DILocation(line: 52, column: 7, scope: !443)
!445 = !DILocation(line: 736, column: 3, scope: !446, inlinedAt: !448)
!446 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !37, file: !37, line: 734, type: !184, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !447)
!447 = !{}
!448 = distinct !DILocation(line: 57, column: 7, scope: !443)
!449 = !DILocation(line: 59, column: 7, scope: !443)
!450 = !DILocation(line: 63, column: 7, scope: !443)
!451 = !DILocation(line: 67, column: 7, scope: !443)
!452 = !DILocation(line: 71, column: 7, scope: !443)
!453 = !DILocation(line: 72, column: 7, scope: !443)
!454 = !DILocation(line: 73, column: 7, scope: !443)
!455 = !DILocalVariable(name: "program", arg: 1, scope: !456, file: !37, line: 836, type: !30)
!456 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !37, file: !37, line: 836, type: !457, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !30}
!459 = !{!455, !460, !469, !470, !472, !473}
!460 = !DILocalVariable(name: "infomap", scope: !456, file: !37, line: 838, type: !461)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 896, elements: !467)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !456, file: !37, line: 838, size: 128, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !463, file: !37, line: 838, baseType: !30, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !463, file: !37, line: 838, baseType: !30, size: 64, offset: 64)
!467 = !{!468}
!468 = !DISubrange(count: 7)
!469 = !DILocalVariable(name: "node", scope: !456, file: !37, line: 848, type: !30)
!470 = !DILocalVariable(name: "map_prog", scope: !456, file: !37, line: 849, type: !471)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!472 = !DILocalVariable(name: "lc_messages", scope: !456, file: !37, line: 861, type: !30)
!473 = !DILocalVariable(name: "url_program", scope: !456, file: !37, line: 874, type: !30)
!474 = !DILocation(line: 0, scope: !456, inlinedAt: !475)
!475 = distinct !DILocation(line: 82, column: 7, scope: !443)
!476 = !DILocation(line: 838, column: 3, scope: !456, inlinedAt: !475)
!477 = !DILocation(line: 838, column: 67, scope: !456, inlinedAt: !475)
!478 = !DILocation(line: 849, column: 36, scope: !456, inlinedAt: !475)
!479 = !DILocation(line: 851, column: 3, scope: !456, inlinedAt: !475)
!480 = !DILocalVariable(name: "__s1", arg: 1, scope: !481, file: !482, line: 1359, type: !30)
!481 = distinct !DISubprogram(name: "streq", scope: !482, file: !482, line: 1359, type: !483, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!482 = !DIFile(filename: "./lib/string.h", directory: "/src")
!483 = !DISubroutineType(types: !484)
!484 = !{!47, !30, !30}
!485 = !{!480, !486}
!486 = !DILocalVariable(name: "__s2", arg: 2, scope: !481, file: !482, line: 1359, type: !30)
!487 = !DILocation(line: 0, scope: !481, inlinedAt: !488)
!488 = distinct !DILocation(line: 851, column: 33, scope: !456, inlinedAt: !475)
!489 = !DILocation(line: 1361, column: 11, scope: !481, inlinedAt: !488)
!490 = !DILocation(line: 1361, column: 10, scope: !481, inlinedAt: !488)
!491 = !DILocation(line: 852, column: 13, scope: !456, inlinedAt: !475)
!492 = !DILocation(line: 851, column: 20, scope: !456, inlinedAt: !475)
!493 = !{!494, !439, i64 0}
!494 = !{!"infomap", !439, i64 0, !439, i64 8}
!495 = !DILocation(line: 851, column: 10, scope: !456, inlinedAt: !475)
!496 = !DILocation(line: 851, column: 28, scope: !456, inlinedAt: !475)
!497 = distinct !{!497, !479, !491, !498}
!498 = !{!"llvm.loop.mustprogress"}
!499 = !DILocation(line: 854, column: 17, scope: !500, inlinedAt: !475)
!500 = distinct !DILexicalBlock(scope: !456, file: !37, line: 854, column: 7)
!501 = !{!494, !439, i64 8}
!502 = !DILocation(line: 854, column: 7, scope: !500, inlinedAt: !475)
!503 = !DILocation(line: 854, column: 7, scope: !456, inlinedAt: !475)
!504 = !DILocation(line: 857, column: 3, scope: !456, inlinedAt: !475)
!505 = !DILocation(line: 861, column: 29, scope: !456, inlinedAt: !475)
!506 = !DILocation(line: 862, column: 7, scope: !507, inlinedAt: !475)
!507 = distinct !DILexicalBlock(scope: !456, file: !37, line: 862, column: 7)
!508 = !DILocation(line: 862, column: 19, scope: !507, inlinedAt: !475)
!509 = !DILocation(line: 862, column: 22, scope: !507, inlinedAt: !475)
!510 = !DILocation(line: 862, column: 7, scope: !456, inlinedAt: !475)
!511 = !DILocation(line: 868, column: 7, scope: !512, inlinedAt: !475)
!512 = distinct !DILexicalBlock(scope: !507, file: !37, line: 863, column: 5)
!513 = !DILocation(line: 870, column: 5, scope: !512, inlinedAt: !475)
!514 = !DILocation(line: 0, scope: !481, inlinedAt: !515)
!515 = distinct !DILocation(line: 874, column: 29, scope: !456, inlinedAt: !475)
!516 = !DILocation(line: 875, column: 3, scope: !456, inlinedAt: !475)
!517 = !DILocation(line: 877, column: 3, scope: !456, inlinedAt: !475)
!518 = !DILocation(line: 879, column: 1, scope: !456, inlinedAt: !475)
!519 = !DILocation(line: 84, column: 3, scope: !427)
!520 = !DISubprogram(name: "dcgettext", scope: !521, file: !521, line: 51, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!521 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!522 = !DISubroutineType(types: !523)
!523 = !{!22, !30, !30, !25}
!524 = !DISubprogram(name: "fputs_unlocked", scope: !157, file: !157, line: 691, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!525 = !DISubroutineType(types: !526)
!526 = !{!25, !527, !528}
!527 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!528 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!529 = !DILocation(line: 0, scope: !36)
!530 = !DILocation(line: 581, column: 7, scope: !45)
!531 = !{!532, !532, i64 0}
!532 = !{!"int", !440, i64 0}
!533 = !DILocation(line: 581, column: 19, scope: !45)
!534 = !DILocation(line: 581, column: 7, scope: !36)
!535 = !DILocation(line: 585, column: 26, scope: !44)
!536 = !DILocation(line: 0, scope: !44)
!537 = !DILocation(line: 586, column: 23, scope: !44)
!538 = !DILocation(line: 586, column: 28, scope: !44)
!539 = !DILocation(line: 586, column: 32, scope: !44)
!540 = !{!440, !440, i64 0}
!541 = !DILocation(line: 586, column: 38, scope: !44)
!542 = !DILocation(line: 0, scope: !481, inlinedAt: !543)
!543 = distinct !DILocation(line: 586, column: 41, scope: !44)
!544 = !DILocation(line: 1361, column: 11, scope: !481, inlinedAt: !543)
!545 = !DILocation(line: 1361, column: 10, scope: !481, inlinedAt: !543)
!546 = !DILocation(line: 586, column: 19, scope: !44)
!547 = !DILocation(line: 587, column: 5, scope: !44)
!548 = !DILocation(line: 588, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !36, file: !37, line: 588, column: 7)
!550 = !DILocation(line: 588, column: 7, scope: !36)
!551 = !DILocation(line: 590, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !37, line: 589, column: 5)
!553 = !DILocation(line: 591, column: 7, scope: !552)
!554 = !DILocation(line: 595, column: 37, scope: !36)
!555 = !DILocation(line: 595, column: 35, scope: !36)
!556 = !DILocation(line: 596, column: 29, scope: !36)
!557 = !DILocation(line: 597, column: 8, scope: !53)
!558 = !DILocation(line: 597, column: 7, scope: !36)
!559 = !DILocation(line: 604, column: 24, scope: !52)
!560 = !DILocation(line: 604, column: 12, scope: !53)
!561 = !DILocation(line: 0, scope: !51)
!562 = !DILocation(line: 610, column: 16, scope: !51)
!563 = !DILocation(line: 610, column: 7, scope: !51)
!564 = !DILocation(line: 611, column: 21, scope: !51)
!565 = !{!566, !566, i64 0}
!566 = !{!"short", !440, i64 0}
!567 = !DILocation(line: 611, column: 19, scope: !51)
!568 = !DILocation(line: 611, column: 16, scope: !51)
!569 = !DILocation(line: 610, column: 30, scope: !51)
!570 = distinct !{!570, !563, !564, !498}
!571 = !DILocation(line: 612, column: 18, scope: !572)
!572 = distinct !DILexicalBlock(scope: !51, file: !37, line: 612, column: 11)
!573 = !DILocation(line: 612, column: 11, scope: !51)
!574 = !DILocation(line: 620, column: 23, scope: !36)
!575 = !DILocation(line: 625, column: 39, scope: !36)
!576 = !DILocation(line: 626, column: 3, scope: !36)
!577 = !DILocation(line: 626, column: 10, scope: !36)
!578 = !DILocation(line: 626, column: 21, scope: !36)
!579 = !DILocation(line: 628, column: 44, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !37, line: 628, column: 11)
!581 = distinct !DILexicalBlock(scope: !36, file: !37, line: 627, column: 5)
!582 = !DILocation(line: 628, column: 32, scope: !580)
!583 = !DILocation(line: 628, column: 49, scope: !580)
!584 = !DILocation(line: 628, column: 11, scope: !581)
!585 = !DILocation(line: 630, column: 11, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !37, line: 630, column: 11)
!587 = !DILocation(line: 630, column: 11, scope: !581)
!588 = !DILocation(line: 632, column: 26, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !37, line: 632, column: 15)
!590 = distinct !DILexicalBlock(scope: !586, file: !37, line: 631, column: 9)
!591 = !DILocation(line: 632, column: 34, scope: !589)
!592 = !DILocation(line: 632, column: 37, scope: !589)
!593 = !DILocation(line: 632, column: 15, scope: !590)
!594 = !DILocation(line: 636, column: 29, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !37, line: 636, column: 15)
!596 = !DILocation(line: 640, column: 16, scope: !581)
!597 = distinct !{!597, !576, !598, !498}
!598 = !DILocation(line: 641, column: 5, scope: !36)
!599 = !DILocation(line: 644, column: 3, scope: !36)
!600 = !DILocation(line: 0, scope: !481, inlinedAt: !601)
!601 = distinct !DILocation(line: 648, column: 31, scope: !36)
!602 = !DILocation(line: 0, scope: !481, inlinedAt: !603)
!603 = distinct !DILocation(line: 649, column: 31, scope: !36)
!604 = !DILocation(line: 0, scope: !481, inlinedAt: !605)
!605 = distinct !DILocation(line: 650, column: 31, scope: !36)
!606 = !DILocation(line: 0, scope: !481, inlinedAt: !607)
!607 = distinct !DILocation(line: 651, column: 31, scope: !36)
!608 = !DILocation(line: 0, scope: !481, inlinedAt: !609)
!609 = distinct !DILocation(line: 652, column: 31, scope: !36)
!610 = !DILocation(line: 0, scope: !481, inlinedAt: !611)
!611 = distinct !DILocation(line: 653, column: 31, scope: !36)
!612 = !DILocation(line: 0, scope: !481, inlinedAt: !613)
!613 = distinct !DILocation(line: 654, column: 31, scope: !36)
!614 = !DILocation(line: 0, scope: !481, inlinedAt: !615)
!615 = distinct !DILocation(line: 655, column: 31, scope: !36)
!616 = !DILocation(line: 0, scope: !481, inlinedAt: !617)
!617 = distinct !DILocation(line: 656, column: 31, scope: !36)
!618 = !DILocation(line: 0, scope: !481, inlinedAt: !619)
!619 = distinct !DILocation(line: 657, column: 31, scope: !36)
!620 = !DILocation(line: 663, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !36, file: !37, line: 663, column: 7)
!622 = !DILocation(line: 664, column: 7, scope: !621)
!623 = !DILocation(line: 664, column: 10, scope: !621)
!624 = !DILocation(line: 663, column: 7, scope: !36)
!625 = !DILocation(line: 669, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !621, file: !37, line: 665, column: 5)
!627 = !DILocation(line: 671, column: 5, scope: !626)
!628 = !DILocation(line: 676, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !621, file: !37, line: 673, column: 5)
!630 = !DILocation(line: 679, column: 3, scope: !36)
!631 = !DILocation(line: 683, column: 3, scope: !36)
!632 = !DILocation(line: 686, column: 3, scope: !36)
!633 = !DILocation(line: 688, column: 3, scope: !36)
!634 = !DILocation(line: 691, column: 3, scope: !36)
!635 = !DILocation(line: 695, column: 3, scope: !36)
!636 = !DILocation(line: 696, column: 1, scope: !36)
!637 = !DISubprogram(name: "setlocale", scope: !638, file: !638, line: 122, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!638 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!639 = !DISubroutineType(types: !640)
!640 = !{!22, !25, !30}
!641 = !DISubprogram(name: "getenv", scope: !642, file: !642, line: 641, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!642 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!643 = !DISubroutineType(types: !644)
!644 = !{!22, !30}
!645 = !DISubprogram(name: "fwrite_unlocked", scope: !157, file: !157, line: 704, type: !646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!646 = !DISubroutineType(types: !647)
!647 = !{!27, !648, !27, !27, !528}
!648 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!651 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 127, type: !652, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !655)
!652 = !DISubroutineType(types: !653)
!653 = !{!25, !25, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!655 = !{!656, !657, !658, !659, !660, !661}
!656 = !DILocalVariable(name: "argc", arg: 1, scope: !651, file: !3, line: 127, type: !25)
!657 = !DILocalVariable(name: "argv", arg: 2, scope: !651, file: !3, line: 127, type: !654)
!658 = !DILocalVariable(name: "multiple_names", scope: !651, file: !3, line: 129, type: !47)
!659 = !DILocalVariable(name: "use_nuls", scope: !651, file: !3, line: 130, type: !47)
!660 = !DILocalVariable(name: "suffix", scope: !651, file: !3, line: 131, type: !30)
!661 = !DILocalVariable(name: "c", scope: !662, file: !3, line: 143, type: !25)
!662 = distinct !DILexicalBlock(scope: !651, file: !3, line: 142, column: 5)
!663 = !DILocation(line: 0, scope: !651)
!664 = !DILocation(line: 134, column: 21, scope: !651)
!665 = !DILocation(line: 134, column: 3, scope: !651)
!666 = !DILocation(line: 135, column: 3, scope: !651)
!667 = !DILocation(line: 136, column: 3, scope: !651)
!668 = !DILocation(line: 137, column: 3, scope: !651)
!669 = !DILocation(line: 139, column: 3, scope: !651)
!670 = !DILocation(line: 141, column: 3, scope: !651)
!671 = !DILocation(line: 145, column: 11, scope: !662)
!672 = !DILocation(line: 143, column: 15, scope: !662)
!673 = !DILocation(line: 0, scope: !662)
!674 = !DILocation(line: 151, column: 20, scope: !675)
!675 = distinct !DILexicalBlock(scope: !662, file: !3, line: 149, column: 9)
!676 = !DILocation(line: 151, column: 11, scope: !675)
!677 = !DILocation(line: 163, column: 9, scope: !675)
!678 = !DILocation(line: 164, column: 9, scope: !675)
!679 = !DILocation(line: 167, column: 11, scope: !675)
!680 = !DILocation(line: 171, column: 14, scope: !681)
!681 = distinct !DILexicalBlock(scope: !651, file: !3, line: 171, column: 7)
!682 = !DILocation(line: 171, column: 12, scope: !681)
!683 = !DILocation(line: 171, column: 7, scope: !651)
!684 = !DILocation(line: 173, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !3, line: 172, column: 5)
!686 = !DILocation(line: 174, column: 7, scope: !685)
!687 = !DILocation(line: 177, column: 23, scope: !688)
!688 = distinct !DILexicalBlock(scope: !651, file: !3, line: 177, column: 7)
!689 = !DILocation(line: 179, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !688, file: !3, line: 178, column: 5)
!691 = !DILocation(line: 180, column: 7, scope: !690)
!692 = !DILocation(line: 183, column: 7, scope: !651)
!693 = !DILocation(line: 186, column: 27, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 185, column: 7)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 185, column: 7)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 184, column: 5)
!697 = distinct !DILexicalBlock(scope: !651, file: !3, line: 183, column: 7)
!698 = !DILocation(line: 186, column: 9, scope: !694)
!699 = !DILocation(line: 185, column: 35, scope: !694)
!700 = !DILocation(line: 185, column: 21, scope: !694)
!701 = !DILocation(line: 185, column: 7, scope: !695)
!702 = distinct !{!702, !701, !703, !498}
!703 = !DILocation(line: 186, column: 57, scope: !695)
!704 = !DILocation(line: 189, column: 23, scope: !697)
!705 = !DILocation(line: 190, column: 34, scope: !697)
!706 = !DILocation(line: 190, column: 23, scope: !697)
!707 = !DILocation(line: 190, column: 56, scope: !697)
!708 = !DILocation(line: 190, column: 44, scope: !697)
!709 = !DILocation(line: 189, column: 5, scope: !697)
!710 = !DILocation(line: 194, column: 1, scope: !651)
!711 = !DISubprogram(name: "bindtextdomain", scope: !521, file: !521, line: 86, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!712 = !DISubroutineType(types: !713)
!713 = !{!22, !30, !30}
!714 = !DISubprogram(name: "textdomain", scope: !521, file: !521, line: 82, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!715 = !DISubprogram(name: "atexit", scope: !642, file: !642, line: 602, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!716 = !DISubroutineType(types: !717)
!717 = !{!25, !183}
!718 = !DISubprogram(name: "getopt_long", scope: !124, file: !124, line: 66, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!719 = !DISubroutineType(types: !720)
!720 = !{!25, !25, !721, !30, !723, !129}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!724 = distinct !DISubprogram(name: "perform_basename", scope: !3, file: !3, line: 107, type: !725, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !30, !30, !47}
!727 = !{!728, !729, !730, !731}
!728 = !DILocalVariable(name: "string", arg: 1, scope: !724, file: !3, line: 107, type: !30)
!729 = !DILocalVariable(name: "suffix", arg: 2, scope: !724, file: !3, line: 107, type: !30)
!730 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !724, file: !3, line: 107, type: !47)
!731 = !DILocalVariable(name: "name", scope: !724, file: !3, line: 109, type: !22)
!732 = !DILocation(line: 0, scope: !724)
!733 = !DILocation(line: 109, column: 16, scope: !724)
!734 = !DILocation(line: 110, column: 3, scope: !724)
!735 = !DILocation(line: 118, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !724, file: !3, line: 118, column: 7)
!737 = !DILocation(line: 118, column: 14, scope: !736)
!738 = !DILocation(line: 118, column: 17, scope: !736)
!739 = !DILocation(line: 118, column: 46, scope: !736)
!740 = !DILocalVariable(name: "name", arg: 1, scope: !741, file: !3, line: 91, type: !22)
!741 = distinct !DISubprogram(name: "remove_suffix", scope: !3, file: !3, line: 91, type: !742, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !22, !30}
!744 = !{!740, !745, !746, !747}
!745 = !DILocalVariable(name: "suffix", arg: 2, scope: !741, file: !3, line: 91, type: !30)
!746 = !DILocalVariable(name: "np", scope: !741, file: !3, line: 93, type: !22)
!747 = !DILocalVariable(name: "sp", scope: !741, file: !3, line: 94, type: !30)
!748 = !DILocation(line: 0, scope: !741, inlinedAt: !749)
!749 = distinct !DILocation(line: 119, column: 5, scope: !736)
!750 = !DILocation(line: 93, column: 21, scope: !741, inlinedAt: !749)
!751 = !DILocation(line: 93, column: 19, scope: !741, inlinedAt: !749)
!752 = !DILocation(line: 94, column: 29, scope: !741, inlinedAt: !749)
!753 = !DILocation(line: 94, column: 27, scope: !741, inlinedAt: !749)
!754 = !DILocation(line: 96, column: 3, scope: !741, inlinedAt: !749)
!755 = !DILocation(line: 96, column: 13, scope: !741, inlinedAt: !749)
!756 = !DILocation(line: 96, column: 20, scope: !741, inlinedAt: !749)
!757 = !DILocation(line: 97, column: 10, scope: !758, inlinedAt: !749)
!758 = distinct !DILexicalBlock(scope: !741, file: !3, line: 97, column: 9)
!759 = !DILocation(line: 97, column: 9, scope: !758, inlinedAt: !749)
!760 = !DILocation(line: 97, column: 19, scope: !758, inlinedAt: !749)
!761 = !DILocation(line: 97, column: 18, scope: !758, inlinedAt: !749)
!762 = !DILocation(line: 97, column: 15, scope: !758, inlinedAt: !749)
!763 = !DILocation(line: 97, column: 9, scope: !741, inlinedAt: !749)
!764 = distinct !{!764, !754, !765, !498}
!765 = !DILocation(line: 98, column: 7, scope: !741, inlinedAt: !749)
!766 = !DILocation(line: 99, column: 7, scope: !741, inlinedAt: !749)
!767 = !DILocation(line: 100, column: 9, scope: !768, inlinedAt: !749)
!768 = distinct !DILexicalBlock(scope: !741, file: !3, line: 99, column: 7)
!769 = !DILocation(line: 100, column: 5, scope: !768, inlinedAt: !749)
!770 = !DILocation(line: 121, column: 3, scope: !724)
!771 = !DILocation(line: 122, column: 3, scope: !724)
!772 = !DILocalVariable(name: "__c", arg: 1, scope: !773, file: !774, line: 108, type: !25)
!773 = distinct !DISubprogram(name: "putchar_unlocked", scope: !774, file: !774, line: 108, type: !775, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !777)
!774 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!775 = !DISubroutineType(types: !776)
!776 = !{!25, !25}
!777 = !{!772}
!778 = !DILocation(line: 0, scope: !773, inlinedAt: !779)
!779 = distinct !DILocation(line: 122, column: 3, scope: !724)
!780 = !DILocation(line: 110, column: 10, scope: !773, inlinedAt: !779)
!781 = !{!782, !439, i64 40}
!782 = !{!"_IO_FILE", !532, i64 0, !439, i64 8, !439, i64 16, !439, i64 24, !439, i64 32, !439, i64 40, !439, i64 48, !439, i64 56, !439, i64 64, !439, i64 72, !439, i64 80, !439, i64 88, !439, i64 96, !439, i64 104, !532, i64 112, !532, i64 116, !783, i64 120, !566, i64 128, !440, i64 130, !440, i64 131, !439, i64 136, !783, i64 144, !439, i64 152, !439, i64 160, !439, i64 168, !439, i64 176, !783, i64 184, !532, i64 192, !440, i64 196}
!783 = !{!"long", !440, i64 0}
!784 = !{!782, !439, i64 48}
!785 = !{!"branch_weights", i32 2000, i32 1}
!786 = !DILocation(line: 123, column: 3, scope: !724)
!787 = !DILocation(line: 124, column: 1, scope: !724)
!788 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !141, file: !141, line: 50, type: !457, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !789)
!789 = !{!790}
!790 = !DILocalVariable(name: "file", arg: 1, scope: !788, file: !141, line: 50, type: !30)
!791 = !DILocation(line: 0, scope: !788)
!792 = !DILocation(line: 52, column: 13, scope: !788)
!793 = !DILocation(line: 53, column: 1, scope: !788)
!794 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !141, file: !141, line: 87, type: !795, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !47}
!797 = !{!798}
!798 = !DILocalVariable(name: "ignore", arg: 1, scope: !794, file: !141, line: 87, type: !47)
!799 = !DILocation(line: 0, scope: !794)
!800 = !DILocation(line: 89, column: 16, scope: !794)
!801 = !{!802, !802, i64 0}
!802 = !{!"_Bool", !440, i64 0}
!803 = !DILocation(line: 90, column: 1, scope: !794)
!804 = distinct !DISubprogram(name: "close_stdout", scope: !141, file: !141, line: 116, type: !184, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !805)
!805 = !{!806}
!806 = !DILocalVariable(name: "write_error", scope: !807, file: !141, line: 121, type: !30)
!807 = distinct !DILexicalBlock(scope: !808, file: !141, line: 120, column: 5)
!808 = distinct !DILexicalBlock(scope: !804, file: !141, line: 118, column: 7)
!809 = !DILocation(line: 118, column: 21, scope: !808)
!810 = !DILocation(line: 118, column: 7, scope: !808)
!811 = !DILocation(line: 118, column: 29, scope: !808)
!812 = !DILocation(line: 119, column: 7, scope: !808)
!813 = !DILocation(line: 119, column: 12, scope: !808)
!814 = !{i8 0, i8 2}
!815 = !DILocation(line: 119, column: 25, scope: !808)
!816 = !DILocation(line: 119, column: 28, scope: !808)
!817 = !DILocation(line: 119, column: 34, scope: !808)
!818 = !DILocation(line: 118, column: 7, scope: !804)
!819 = !DILocation(line: 121, column: 33, scope: !807)
!820 = !DILocation(line: 0, scope: !807)
!821 = !DILocation(line: 122, column: 11, scope: !822)
!822 = distinct !DILexicalBlock(scope: !807, file: !141, line: 122, column: 11)
!823 = !DILocation(line: 0, scope: !822)
!824 = !DILocation(line: 122, column: 11, scope: !807)
!825 = !DILocation(line: 123, column: 9, scope: !822)
!826 = !DILocation(line: 126, column: 9, scope: !822)
!827 = !DILocation(line: 128, column: 14, scope: !807)
!828 = !DILocation(line: 128, column: 7, scope: !807)
!829 = !DILocation(line: 133, column: 42, scope: !830)
!830 = distinct !DILexicalBlock(scope: !804, file: !141, line: 133, column: 7)
!831 = !DILocation(line: 133, column: 28, scope: !830)
!832 = !DILocation(line: 133, column: 50, scope: !830)
!833 = !DILocation(line: 133, column: 7, scope: !804)
!834 = !DILocation(line: 134, column: 12, scope: !830)
!835 = !DILocation(line: 134, column: 5, scope: !830)
!836 = !DILocation(line: 135, column: 1, scope: !804)
!837 = distinct !DISubprogram(name: "base_name", scope: !348, file: !348, line: 27, type: !643, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !838)
!838 = !{!839, !840, !841, !842, !843}
!839 = !DILocalVariable(name: "name", arg: 1, scope: !837, file: !348, line: 27, type: !30)
!840 = !DILocalVariable(name: "base", scope: !837, file: !348, line: 29, type: !30)
!841 = !DILocalVariable(name: "length", scope: !837, file: !348, line: 30, type: !380)
!842 = !DILocalVariable(name: "dotslash_len", scope: !837, file: !348, line: 31, type: !25)
!843 = !DILocalVariable(name: "p", scope: !837, file: !348, line: 53, type: !22)
!844 = !DILocation(line: 0, scope: !837)
!845 = !DILocation(line: 29, column: 22, scope: !837)
!846 = !DILocation(line: 32, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !837, file: !348, line: 32, column: 7)
!848 = !DILocation(line: 32, column: 7, scope: !837)
!849 = !DILocation(line: 34, column: 16, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !348, line: 33, column: 5)
!851 = !DILocation(line: 37, column: 17, scope: !850)
!852 = !DILocation(line: 37, column: 14, scope: !850)
!853 = !DILocation(line: 43, column: 5, scope: !850)
!854 = !DILocation(line: 49, column: 16, scope: !855)
!855 = distinct !DILexicalBlock(scope: !847, file: !348, line: 45, column: 5)
!856 = !DILocation(line: 0, scope: !847)
!857 = !DILocation(line: 53, column: 45, scope: !837)
!858 = !DILocation(line: 53, column: 13, scope: !837)
!859 = !DILocalVariable(name: "__dest", arg: 1, scope: !860, file: !861, line: 26, type: !864)
!860 = distinct !DISubprogram(name: "memcpy", scope: !861, file: !861, line: 26, type: !862, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !865)
!861 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!862 = !DISubroutineType(types: !863)
!863 = !{!24, !864, !648, !27}
!864 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!865 = !{!859, !866, !867}
!866 = !DILocalVariable(name: "__src", arg: 2, scope: !860, file: !861, line: 26, type: !648)
!867 = !DILocalVariable(name: "__len", arg: 3, scope: !860, file: !861, line: 26, type: !27)
!868 = !DILocation(line: 0, scope: !860, inlinedAt: !869)
!869 = distinct !DILocation(line: 61, column: 3, scope: !837)
!870 = !DILocation(line: 29, column: 10, scope: !860, inlinedAt: !869)
!871 = !DILocation(line: 62, column: 3, scope: !837)
!872 = !DILocation(line: 62, column: 28, scope: !837)
!873 = !DILocation(line: 63, column: 3, scope: !837)
!874 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !350, file: !350, line: 31, type: !875, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{!47, !22}
!877 = !{!878, !879, !880, !881}
!878 = !DILocalVariable(name: "file", arg: 1, scope: !874, file: !350, line: 31, type: !22)
!879 = !DILocalVariable(name: "base", scope: !874, file: !350, line: 33, type: !22)
!880 = !DILocalVariable(name: "base_lim", scope: !874, file: !350, line: 39, type: !22)
!881 = !DILocalVariable(name: "had_slash", scope: !874, file: !350, line: 40, type: !47)
!882 = !DILocation(line: 0, scope: !874)
!883 = !DILocation(line: 33, column: 16, scope: !874)
!884 = !DILocation(line: 37, column: 9, scope: !885)
!885 = distinct !DILexicalBlock(scope: !874, file: !350, line: 37, column: 7)
!886 = !DILocation(line: 37, column: 7, scope: !874)
!887 = !DILocation(line: 39, column: 27, scope: !874)
!888 = !DILocation(line: 39, column: 25, scope: !874)
!889 = !DILocation(line: 40, column: 21, scope: !874)
!890 = !DILocation(line: 40, column: 31, scope: !874)
!891 = !DILocation(line: 41, column: 13, scope: !874)
!892 = !DILocation(line: 42, column: 3, scope: !874)
!893 = distinct !DISubprogram(name: "verror", scope: !148, file: !148, line: 251, type: !894, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !25, !25, !30, !156}
!896 = !{!897, !898, !899, !900}
!897 = !DILocalVariable(name: "status", arg: 1, scope: !893, file: !148, line: 251, type: !25)
!898 = !DILocalVariable(name: "errnum", arg: 2, scope: !893, file: !148, line: 251, type: !25)
!899 = !DILocalVariable(name: "message", arg: 3, scope: !893, file: !148, line: 251, type: !30)
!900 = !DILocalVariable(name: "args", arg: 4, scope: !893, file: !148, line: 251, type: !156)
!901 = !DILocation(line: 0, scope: !893)
!902 = !DILocation(line: 251, column: 1, scope: !893)
!903 = !DILocation(line: 261, column: 3, scope: !893)
!904 = !DILocation(line: 265, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !893, file: !148, line: 265, column: 7)
!906 = !DILocation(line: 265, column: 7, scope: !893)
!907 = !DILocation(line: 266, column: 5, scope: !905)
!908 = !DILocation(line: 272, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !148, line: 268, column: 5)
!910 = !DILocation(line: 276, column: 3, scope: !893)
!911 = !{i64 0, i64 8, !438, i64 8, i64 8, !438, i64 16, i64 8, !438, i64 24, i64 4, !531, i64 28, i64 4, !531}
!912 = !DILocation(line: 282, column: 1, scope: !893)
!913 = distinct !DISubprogram(name: "flush_stdout", scope: !148, file: !148, line: 163, type: !184, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !914)
!914 = !{!915}
!915 = !DILocalVariable(name: "stdout_fd", scope: !913, file: !148, line: 166, type: !25)
!916 = !DILocation(line: 0, scope: !913)
!917 = !DILocalVariable(name: "fd", arg: 1, scope: !918, file: !148, line: 145, type: !25)
!918 = distinct !DISubprogram(name: "is_open", scope: !148, file: !148, line: 145, type: !775, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !919)
!919 = !{!917}
!920 = !DILocation(line: 0, scope: !918, inlinedAt: !921)
!921 = distinct !DILocation(line: 182, column: 25, scope: !922)
!922 = distinct !DILexicalBlock(scope: !913, file: !148, line: 182, column: 7)
!923 = !DILocation(line: 157, column: 15, scope: !918, inlinedAt: !921)
!924 = !DILocation(line: 182, column: 25, scope: !922)
!925 = !DILocation(line: 182, column: 7, scope: !913)
!926 = !DILocation(line: 184, column: 5, scope: !922)
!927 = !DILocation(line: 185, column: 1, scope: !913)
!928 = distinct !DISubprogram(name: "error_tail", scope: !148, file: !148, line: 219, type: !894, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !929)
!929 = !{!930, !931, !932, !933}
!930 = !DILocalVariable(name: "status", arg: 1, scope: !928, file: !148, line: 219, type: !25)
!931 = !DILocalVariable(name: "errnum", arg: 2, scope: !928, file: !148, line: 219, type: !25)
!932 = !DILocalVariable(name: "message", arg: 3, scope: !928, file: !148, line: 219, type: !30)
!933 = !DILocalVariable(name: "args", arg: 4, scope: !928, file: !148, line: 219, type: !156)
!934 = !DILocation(line: 0, scope: !928)
!935 = !DILocation(line: 219, column: 1, scope: !928)
!936 = !DILocation(line: 229, column: 13, scope: !928)
!937 = !DILocation(line: 229, column: 3, scope: !928)
!938 = !DILocalVariable(name: "__stream", arg: 1, scope: !939, file: !940, line: 132, type: !943)
!939 = distinct !DISubprogram(name: "vfprintf", scope: !940, file: !940, line: 132, type: !941, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !978)
!940 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!941 = !DISubroutineType(types: !942)
!942 = !{!25, !943, !527, !158}
!943 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !947)
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !946, file: !64, line: 51, baseType: !25, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !946, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !946, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !946, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !946, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !946, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !946, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !946, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !946, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !946, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !946, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !946, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !946, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !946, file: !64, line: 70, baseType: !962, size: 64, offset: 832)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !946, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !946, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !946, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !946, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !946, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !946, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !946, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !946, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !946, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !946, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !946, file: !64, line: 93, baseType: !962, size: 64, offset: 1344)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !946, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !946, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !946, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !946, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!978 = !{!938, !979, !980}
!979 = !DILocalVariable(name: "__fmt", arg: 2, scope: !939, file: !940, line: 133, type: !527)
!980 = !DILocalVariable(name: "__ap", arg: 3, scope: !939, file: !940, line: 133, type: !158)
!981 = !DILocation(line: 0, scope: !939, inlinedAt: !982)
!982 = distinct !DILocation(line: 229, column: 3, scope: !928)
!983 = !DILocation(line: 135, column: 10, scope: !939, inlinedAt: !982)
!984 = !{!985, !987}
!985 = distinct !{!985, !986, !"vfprintf.inline: argument 0"}
!986 = distinct !{!986, !"vfprintf.inline"}
!987 = distinct !{!987, !986, !"vfprintf.inline: argument 1"}
!988 = !DILocation(line: 232, column: 3, scope: !928)
!989 = !DILocation(line: 233, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !928, file: !148, line: 233, column: 7)
!991 = !DILocation(line: 233, column: 7, scope: !928)
!992 = !DILocalVariable(name: "errnum", arg: 1, scope: !993, file: !148, line: 188, type: !25)
!993 = distinct !DISubprogram(name: "print_errno_message", scope: !148, file: !148, line: 188, type: !428, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !994)
!994 = !{!992, !995, !996}
!995 = !DILocalVariable(name: "s", scope: !993, file: !148, line: 190, type: !30)
!996 = !DILocalVariable(name: "errbuf", scope: !993, file: !148, line: 193, type: !997)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !998)
!998 = !{!999}
!999 = !DISubrange(count: 1024)
!1000 = !DILocation(line: 0, scope: !993, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 234, column: 5, scope: !990)
!1002 = !DILocation(line: 193, column: 3, scope: !993, inlinedAt: !1001)
!1003 = !DILocation(line: 193, column: 8, scope: !993, inlinedAt: !1001)
!1004 = !DILocation(line: 195, column: 7, scope: !993, inlinedAt: !1001)
!1005 = !DILocation(line: 207, column: 9, scope: !1006, inlinedAt: !1001)
!1006 = distinct !DILexicalBlock(scope: !993, file: !148, line: 207, column: 7)
!1007 = !DILocation(line: 207, column: 7, scope: !993, inlinedAt: !1001)
!1008 = !DILocation(line: 208, column: 9, scope: !1006, inlinedAt: !1001)
!1009 = !DILocation(line: 208, column: 5, scope: !1006, inlinedAt: !1001)
!1010 = !DILocation(line: 214, column: 3, scope: !993, inlinedAt: !1001)
!1011 = !DILocation(line: 216, column: 1, scope: !993, inlinedAt: !1001)
!1012 = !DILocation(line: 234, column: 5, scope: !990)
!1013 = !DILocation(line: 238, column: 3, scope: !928)
!1014 = !DILocalVariable(name: "__c", arg: 1, scope: !1015, file: !774, line: 101, type: !25)
!1015 = distinct !DISubprogram(name: "putc_unlocked", scope: !774, file: !774, line: 101, type: !1016, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!25, !25, !944}
!1018 = !{!1014, !1019}
!1019 = !DILocalVariable(name: "__stream", arg: 2, scope: !1015, file: !774, line: 101, type: !944)
!1020 = !DILocation(line: 0, scope: !1015, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 238, column: 3, scope: !928)
!1022 = !DILocation(line: 103, column: 10, scope: !1015, inlinedAt: !1021)
!1023 = !DILocation(line: 240, column: 3, scope: !928)
!1024 = !DILocation(line: 241, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !928, file: !148, line: 241, column: 7)
!1026 = !DILocation(line: 241, column: 7, scope: !928)
!1027 = !DILocation(line: 242, column: 5, scope: !1025)
!1028 = !DILocation(line: 243, column: 1, scope: !928)
!1029 = !DISubprogram(name: "strerror_r", scope: !1030, file: !1030, line: 444, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!1030 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!22, !25, !22, !27}
!1033 = !DISubprogram(name: "fflush_unlocked", scope: !157, file: !157, line: 239, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!25, !944}
!1036 = !DISubprogram(name: "fcntl", scope: !1037, file: !1037, line: 149, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!1037 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!25, !25, !25, null}
!1040 = distinct !DISubprogram(name: "error", scope: !148, file: !148, line: 285, type: !1041, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !25, !25, !30, null}
!1043 = !{!1044, !1045, !1046, !1047}
!1044 = !DILocalVariable(name: "status", arg: 1, scope: !1040, file: !148, line: 285, type: !25)
!1045 = !DILocalVariable(name: "errnum", arg: 2, scope: !1040, file: !148, line: 285, type: !25)
!1046 = !DILocalVariable(name: "message", arg: 3, scope: !1040, file: !148, line: 285, type: !30)
!1047 = !DILocalVariable(name: "ap", scope: !1040, file: !148, line: 287, type: !156)
!1048 = !DILocation(line: 0, scope: !1040)
!1049 = !DILocation(line: 287, column: 3, scope: !1040)
!1050 = !DILocation(line: 287, column: 11, scope: !1040)
!1051 = !DILocation(line: 288, column: 3, scope: !1040)
!1052 = !DILocation(line: 289, column: 3, scope: !1040)
!1053 = !DILocation(line: 290, column: 3, scope: !1040)
!1054 = !DILocation(line: 291, column: 1, scope: !1040)
!1055 = !DILocation(line: 0, scope: !153)
!1056 = !DILocation(line: 298, column: 1, scope: !153)
!1057 = !DILocation(line: 302, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !153, file: !148, line: 302, column: 7)
!1059 = !DILocation(line: 302, column: 7, scope: !153)
!1060 = !DILocation(line: 307, column: 11, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !148, line: 307, column: 11)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !148, line: 303, column: 5)
!1063 = !DILocation(line: 307, column: 27, scope: !1061)
!1064 = !DILocation(line: 308, column: 11, scope: !1061)
!1065 = !DILocation(line: 308, column: 28, scope: !1061)
!1066 = !DILocation(line: 308, column: 25, scope: !1061)
!1067 = !DILocation(line: 309, column: 15, scope: !1061)
!1068 = !DILocation(line: 309, column: 33, scope: !1061)
!1069 = !DILocation(line: 310, column: 19, scope: !1061)
!1070 = !DILocation(line: 311, column: 22, scope: !1061)
!1071 = !DILocation(line: 311, column: 56, scope: !1061)
!1072 = !DILocation(line: 307, column: 11, scope: !1062)
!1073 = !DILocation(line: 316, column: 21, scope: !1062)
!1074 = !DILocation(line: 317, column: 23, scope: !1062)
!1075 = !DILocation(line: 318, column: 5, scope: !1062)
!1076 = !DILocation(line: 327, column: 3, scope: !153)
!1077 = !DILocation(line: 331, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !153, file: !148, line: 331, column: 7)
!1079 = !DILocation(line: 331, column: 7, scope: !153)
!1080 = !DILocation(line: 332, column: 5, scope: !1078)
!1081 = !DILocation(line: 338, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !148, line: 334, column: 5)
!1083 = !DILocation(line: 346, column: 3, scope: !153)
!1084 = !DILocation(line: 350, column: 3, scope: !153)
!1085 = !DILocation(line: 356, column: 1, scope: !153)
!1086 = distinct !DISubprogram(name: "error_at_line", scope: !148, file: !148, line: 359, type: !1087, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !25, !25, !30, !7, !30, null}
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095}
!1090 = !DILocalVariable(name: "status", arg: 1, scope: !1086, file: !148, line: 359, type: !25)
!1091 = !DILocalVariable(name: "errnum", arg: 2, scope: !1086, file: !148, line: 359, type: !25)
!1092 = !DILocalVariable(name: "file_name", arg: 3, scope: !1086, file: !148, line: 359, type: !30)
!1093 = !DILocalVariable(name: "line_number", arg: 4, scope: !1086, file: !148, line: 360, type: !7)
!1094 = !DILocalVariable(name: "message", arg: 5, scope: !1086, file: !148, line: 360, type: !30)
!1095 = !DILocalVariable(name: "ap", scope: !1086, file: !148, line: 362, type: !156)
!1096 = !DILocation(line: 0, scope: !1086)
!1097 = !DILocation(line: 362, column: 3, scope: !1086)
!1098 = !DILocation(line: 362, column: 11, scope: !1086)
!1099 = !DILocation(line: 363, column: 3, scope: !1086)
!1100 = !DILocation(line: 364, column: 3, scope: !1086)
!1101 = !DILocation(line: 366, column: 3, scope: !1086)
!1102 = !DILocation(line: 367, column: 1, scope: !1086)
!1103 = distinct !DISubprogram(name: "getprogname", scope: !352, file: !352, line: 54, type: !1104, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !447)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!30}
!1106 = !DILocation(line: 58, column: 10, scope: !1103)
!1107 = !DILocation(line: 58, column: 3, scope: !1103)
!1108 = distinct !DISubprogram(name: "set_program_name", scope: !189, file: !189, line: 37, type: !457, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DILocalVariable(name: "argv0", arg: 1, scope: !1108, file: !189, line: 37, type: !30)
!1111 = !DILocalVariable(name: "slash", scope: !1108, file: !189, line: 44, type: !30)
!1112 = !DILocalVariable(name: "base", scope: !1108, file: !189, line: 45, type: !30)
!1113 = !DILocation(line: 0, scope: !1108)
!1114 = !DILocation(line: 44, column: 23, scope: !1108)
!1115 = !DILocation(line: 45, column: 22, scope: !1108)
!1116 = !DILocation(line: 46, column: 17, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1108, file: !189, line: 46, column: 7)
!1118 = !DILocation(line: 46, column: 9, scope: !1117)
!1119 = !DILocation(line: 46, column: 25, scope: !1117)
!1120 = !DILocation(line: 46, column: 40, scope: !1117)
!1121 = !DILocalVariable(name: "__s1", arg: 1, scope: !1122, file: !482, line: 974, type: !649)
!1122 = distinct !DISubprogram(name: "memeq", scope: !482, file: !482, line: 974, type: !1123, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !1125)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!47, !649, !649, !27}
!1125 = !{!1121, !1126, !1127}
!1126 = !DILocalVariable(name: "__s2", arg: 2, scope: !1122, file: !482, line: 974, type: !649)
!1127 = !DILocalVariable(name: "__n", arg: 3, scope: !1122, file: !482, line: 974, type: !27)
!1128 = !DILocation(line: 0, scope: !1122, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 46, column: 28, scope: !1117)
!1130 = !DILocation(line: 976, column: 11, scope: !1122, inlinedAt: !1129)
!1131 = !DILocation(line: 976, column: 10, scope: !1122, inlinedAt: !1129)
!1132 = !DILocation(line: 46, column: 7, scope: !1108)
!1133 = !DILocation(line: 49, column: 11, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !189, line: 49, column: 11)
!1135 = distinct !DILexicalBlock(scope: !1117, file: !189, line: 47, column: 5)
!1136 = !DILocation(line: 49, column: 36, scope: !1134)
!1137 = !DILocation(line: 49, column: 11, scope: !1135)
!1138 = !DILocation(line: 65, column: 16, scope: !1108)
!1139 = !DILocation(line: 71, column: 27, scope: !1108)
!1140 = !DILocation(line: 74, column: 33, scope: !1108)
!1141 = !DILocation(line: 76, column: 1, scope: !1108)
!1142 = !DILocation(line: 0, scope: !194)
!1143 = !DILocation(line: 40, column: 29, scope: !194)
!1144 = !DILocation(line: 41, column: 19, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !194, file: !195, line: 41, column: 7)
!1146 = !DILocation(line: 41, column: 7, scope: !194)
!1147 = !DILocation(line: 47, column: 3, scope: !194)
!1148 = !DILocation(line: 48, column: 3, scope: !194)
!1149 = !DILocation(line: 48, column: 13, scope: !194)
!1150 = !DILocalVariable(name: "ps", arg: 1, scope: !1151, file: !1152, line: 1135, type: !1155)
!1151 = distinct !DISubprogram(name: "mbszero", scope: !1152, file: !1152, line: 1135, type: !1153, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1156)
!1152 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1156 = !{!1150}
!1157 = !DILocation(line: 0, scope: !1151, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 48, column: 18, scope: !194)
!1159 = !DILocalVariable(name: "__dest", arg: 1, scope: !1160, file: !861, line: 57, type: !24)
!1160 = distinct !DISubprogram(name: "memset", scope: !861, file: !861, line: 57, type: !1161, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!24, !24, !25, !27}
!1163 = !{!1159, !1164, !1165}
!1164 = !DILocalVariable(name: "__ch", arg: 2, scope: !1160, file: !861, line: 57, type: !25)
!1165 = !DILocalVariable(name: "__len", arg: 3, scope: !1160, file: !861, line: 57, type: !27)
!1166 = !DILocation(line: 0, scope: !1160, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 1137, column: 3, scope: !1151, inlinedAt: !1158)
!1168 = !DILocation(line: 59, column: 10, scope: !1160, inlinedAt: !1167)
!1169 = !DILocation(line: 49, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !194, file: !195, line: 49, column: 7)
!1171 = !DILocation(line: 49, column: 39, scope: !1170)
!1172 = !DILocation(line: 49, column: 44, scope: !1170)
!1173 = !DILocation(line: 54, column: 1, scope: !194)
!1174 = !DISubprogram(name: "mbrtoc32", scope: !206, file: !206, line: 57, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!27, !1177, !527, !27, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1155)
!1180 = distinct !DISubprogram(name: "clone_quoting_options", scope: !231, file: !231, line: 113, type: !1181, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1184)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!1183, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1184 = !{!1185, !1186, !1187}
!1185 = !DILocalVariable(name: "o", arg: 1, scope: !1180, file: !231, line: 113, type: !1183)
!1186 = !DILocalVariable(name: "saved_errno", scope: !1180, file: !231, line: 115, type: !25)
!1187 = !DILocalVariable(name: "p", scope: !1180, file: !231, line: 116, type: !1183)
!1188 = !DILocation(line: 0, scope: !1180)
!1189 = !DILocation(line: 115, column: 21, scope: !1180)
!1190 = !DILocation(line: 116, column: 40, scope: !1180)
!1191 = !DILocation(line: 116, column: 31, scope: !1180)
!1192 = !DILocation(line: 118, column: 9, scope: !1180)
!1193 = !DILocation(line: 119, column: 3, scope: !1180)
!1194 = distinct !DISubprogram(name: "get_quoting_style", scope: !231, file: !231, line: 124, type: !1195, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1199)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!233, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!1199 = !{!1200}
!1200 = !DILocalVariable(name: "o", arg: 1, scope: !1194, file: !231, line: 124, type: !1197)
!1201 = !DILocation(line: 0, scope: !1194)
!1202 = !DILocation(line: 126, column: 11, scope: !1194)
!1203 = !DILocation(line: 126, column: 46, scope: !1194)
!1204 = !{!1205, !440, i64 0}
!1205 = !{!"quoting_options", !440, i64 0, !532, i64 4, !440, i64 8, !439, i64 40, !439, i64 48}
!1206 = !DILocation(line: 126, column: 3, scope: !1194)
!1207 = distinct !DISubprogram(name: "set_quoting_style", scope: !231, file: !231, line: 132, type: !1208, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1210)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !1183, !233}
!1210 = !{!1211, !1212}
!1211 = !DILocalVariable(name: "o", arg: 1, scope: !1207, file: !231, line: 132, type: !1183)
!1212 = !DILocalVariable(name: "s", arg: 2, scope: !1207, file: !231, line: 132, type: !233)
!1213 = !DILocation(line: 0, scope: !1207)
!1214 = !DILocation(line: 134, column: 4, scope: !1207)
!1215 = !DILocation(line: 134, column: 39, scope: !1207)
!1216 = !DILocation(line: 134, column: 45, scope: !1207)
!1217 = !DILocation(line: 135, column: 1, scope: !1207)
!1218 = distinct !DISubprogram(name: "set_char_quoting", scope: !231, file: !231, line: 143, type: !1219, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!25, !1183, !23, !25}
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1228, !1229}
!1222 = !DILocalVariable(name: "o", arg: 1, scope: !1218, file: !231, line: 143, type: !1183)
!1223 = !DILocalVariable(name: "c", arg: 2, scope: !1218, file: !231, line: 143, type: !23)
!1224 = !DILocalVariable(name: "i", arg: 3, scope: !1218, file: !231, line: 143, type: !25)
!1225 = !DILocalVariable(name: "uc", scope: !1218, file: !231, line: 145, type: !32)
!1226 = !DILocalVariable(name: "p", scope: !1218, file: !231, line: 146, type: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1228 = !DILocalVariable(name: "shift", scope: !1218, file: !231, line: 148, type: !25)
!1229 = !DILocalVariable(name: "r", scope: !1218, file: !231, line: 149, type: !7)
!1230 = !DILocation(line: 0, scope: !1218)
!1231 = !DILocation(line: 147, column: 6, scope: !1218)
!1232 = !DILocation(line: 147, column: 62, scope: !1218)
!1233 = !DILocation(line: 147, column: 57, scope: !1218)
!1234 = !DILocation(line: 148, column: 15, scope: !1218)
!1235 = !DILocation(line: 149, column: 21, scope: !1218)
!1236 = !DILocation(line: 149, column: 24, scope: !1218)
!1237 = !DILocation(line: 149, column: 34, scope: !1218)
!1238 = !DILocation(line: 150, column: 13, scope: !1218)
!1239 = !DILocation(line: 150, column: 19, scope: !1218)
!1240 = !DILocation(line: 150, column: 24, scope: !1218)
!1241 = !DILocation(line: 150, column: 6, scope: !1218)
!1242 = !DILocation(line: 151, column: 3, scope: !1218)
!1243 = distinct !DISubprogram(name: "set_quoting_flags", scope: !231, file: !231, line: 159, type: !1244, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!25, !1183, !25}
!1246 = !{!1247, !1248, !1249}
!1247 = !DILocalVariable(name: "o", arg: 1, scope: !1243, file: !231, line: 159, type: !1183)
!1248 = !DILocalVariable(name: "i", arg: 2, scope: !1243, file: !231, line: 159, type: !25)
!1249 = !DILocalVariable(name: "r", scope: !1243, file: !231, line: 163, type: !25)
!1250 = !DILocation(line: 0, scope: !1243)
!1251 = !DILocation(line: 161, column: 8, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1243, file: !231, line: 161, column: 7)
!1253 = !DILocation(line: 161, column: 7, scope: !1243)
!1254 = !DILocation(line: 163, column: 14, scope: !1243)
!1255 = !{!1205, !532, i64 4}
!1256 = !DILocation(line: 164, column: 12, scope: !1243)
!1257 = !DILocation(line: 165, column: 3, scope: !1243)
!1258 = distinct !DISubprogram(name: "set_custom_quoting", scope: !231, file: !231, line: 169, type: !1259, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !1183, !30, !30}
!1261 = !{!1262, !1263, !1264}
!1262 = !DILocalVariable(name: "o", arg: 1, scope: !1258, file: !231, line: 169, type: !1183)
!1263 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1258, file: !231, line: 170, type: !30)
!1264 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1258, file: !231, line: 170, type: !30)
!1265 = !DILocation(line: 0, scope: !1258)
!1266 = !DILocation(line: 172, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1258, file: !231, line: 172, column: 7)
!1268 = !DILocation(line: 172, column: 7, scope: !1258)
!1269 = !DILocation(line: 174, column: 6, scope: !1258)
!1270 = !DILocation(line: 174, column: 12, scope: !1258)
!1271 = !DILocation(line: 175, column: 8, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1258, file: !231, line: 175, column: 7)
!1273 = !DILocation(line: 175, column: 19, scope: !1272)
!1274 = !DILocation(line: 176, column: 5, scope: !1272)
!1275 = !DILocation(line: 177, column: 6, scope: !1258)
!1276 = !DILocation(line: 177, column: 17, scope: !1258)
!1277 = !{!1205, !439, i64 40}
!1278 = !DILocation(line: 178, column: 6, scope: !1258)
!1279 = !DILocation(line: 178, column: 18, scope: !1258)
!1280 = !{!1205, !439, i64 48}
!1281 = !DILocation(line: 179, column: 1, scope: !1258)
!1282 = distinct !DISubprogram(name: "quotearg_buffer", scope: !231, file: !231, line: 774, type: !1283, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!27, !22, !27, !30, !27, !1197}
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1286 = !DILocalVariable(name: "buffer", arg: 1, scope: !1282, file: !231, line: 774, type: !22)
!1287 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1282, file: !231, line: 774, type: !27)
!1288 = !DILocalVariable(name: "arg", arg: 3, scope: !1282, file: !231, line: 775, type: !30)
!1289 = !DILocalVariable(name: "argsize", arg: 4, scope: !1282, file: !231, line: 775, type: !27)
!1290 = !DILocalVariable(name: "o", arg: 5, scope: !1282, file: !231, line: 776, type: !1197)
!1291 = !DILocalVariable(name: "p", scope: !1282, file: !231, line: 778, type: !1197)
!1292 = !DILocalVariable(name: "saved_errno", scope: !1282, file: !231, line: 779, type: !25)
!1293 = !DILocalVariable(name: "r", scope: !1282, file: !231, line: 780, type: !27)
!1294 = !DILocation(line: 0, scope: !1282)
!1295 = !DILocation(line: 778, column: 37, scope: !1282)
!1296 = !DILocation(line: 779, column: 21, scope: !1282)
!1297 = !DILocation(line: 781, column: 43, scope: !1282)
!1298 = !DILocation(line: 781, column: 53, scope: !1282)
!1299 = !DILocation(line: 781, column: 60, scope: !1282)
!1300 = !DILocation(line: 782, column: 43, scope: !1282)
!1301 = !DILocation(line: 782, column: 58, scope: !1282)
!1302 = !DILocation(line: 780, column: 14, scope: !1282)
!1303 = !DILocation(line: 783, column: 9, scope: !1282)
!1304 = !DILocation(line: 784, column: 3, scope: !1282)
!1305 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !231, file: !231, line: 251, type: !1306, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1310)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!27, !22, !27, !30, !27, !233, !25, !1308, !30, !30}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1335, !1337, !1340, !1341, !1342, !1343, !1346, !1347, !1350, !1354, !1355, !1363, !1366, !1367, !1369, !1370, !1371, !1372}
!1311 = !DILocalVariable(name: "buffer", arg: 1, scope: !1305, file: !231, line: 251, type: !22)
!1312 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1305, file: !231, line: 251, type: !27)
!1313 = !DILocalVariable(name: "arg", arg: 3, scope: !1305, file: !231, line: 252, type: !30)
!1314 = !DILocalVariable(name: "argsize", arg: 4, scope: !1305, file: !231, line: 252, type: !27)
!1315 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1305, file: !231, line: 253, type: !233)
!1316 = !DILocalVariable(name: "flags", arg: 6, scope: !1305, file: !231, line: 253, type: !25)
!1317 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1305, file: !231, line: 254, type: !1308)
!1318 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1305, file: !231, line: 255, type: !30)
!1319 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1305, file: !231, line: 256, type: !30)
!1320 = !DILocalVariable(name: "unibyte_locale", scope: !1305, file: !231, line: 258, type: !47)
!1321 = !DILocalVariable(name: "len", scope: !1305, file: !231, line: 260, type: !27)
!1322 = !DILocalVariable(name: "orig_buffersize", scope: !1305, file: !231, line: 261, type: !27)
!1323 = !DILocalVariable(name: "quote_string", scope: !1305, file: !231, line: 262, type: !30)
!1324 = !DILocalVariable(name: "quote_string_len", scope: !1305, file: !231, line: 263, type: !27)
!1325 = !DILocalVariable(name: "backslash_escapes", scope: !1305, file: !231, line: 264, type: !47)
!1326 = !DILocalVariable(name: "elide_outer_quotes", scope: !1305, file: !231, line: 265, type: !47)
!1327 = !DILocalVariable(name: "encountered_single_quote", scope: !1305, file: !231, line: 266, type: !47)
!1328 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1305, file: !231, line: 267, type: !47)
!1329 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1305, file: !231, line: 309, type: !47)
!1330 = !DILocalVariable(name: "lq", scope: !1331, file: !231, line: 361, type: !30)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !231, line: 361, column: 11)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !231, line: 360, column: 13)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !231, line: 333, column: 7)
!1334 = distinct !DILexicalBlock(scope: !1305, file: !231, line: 312, column: 5)
!1335 = !DILocalVariable(name: "i", scope: !1336, file: !231, line: 395, type: !27)
!1336 = distinct !DILexicalBlock(scope: !1305, file: !231, line: 395, column: 3)
!1337 = !DILocalVariable(name: "is_right_quote", scope: !1338, file: !231, line: 397, type: !47)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !231, line: 396, column: 5)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !231, line: 395, column: 3)
!1340 = !DILocalVariable(name: "escaping", scope: !1338, file: !231, line: 398, type: !47)
!1341 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1338, file: !231, line: 399, type: !47)
!1342 = !DILocalVariable(name: "c", scope: !1338, file: !231, line: 417, type: !32)
!1343 = !DILocalVariable(name: "m", scope: !1344, file: !231, line: 598, type: !27)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !231, line: 596, column: 11)
!1345 = distinct !DILexicalBlock(scope: !1338, file: !231, line: 419, column: 9)
!1346 = !DILocalVariable(name: "printable", scope: !1344, file: !231, line: 600, type: !47)
!1347 = !DILocalVariable(name: "mbs", scope: !1348, file: !231, line: 609, type: !290)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !231, line: 608, column: 15)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !231, line: 602, column: 17)
!1350 = !DILocalVariable(name: "w", scope: !1351, file: !231, line: 618, type: !205)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !231, line: 617, column: 19)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !231, line: 616, column: 17)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !231, line: 616, column: 17)
!1354 = !DILocalVariable(name: "bytes", scope: !1351, file: !231, line: 619, type: !27)
!1355 = !DILocalVariable(name: "j", scope: !1356, file: !231, line: 648, type: !27)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !231, line: 648, column: 29)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !231, line: 647, column: 27)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !231, line: 645, column: 29)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !231, line: 636, column: 23)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !231, line: 628, column: 30)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !231, line: 623, column: 30)
!1362 = distinct !DILexicalBlock(scope: !1351, file: !231, line: 621, column: 25)
!1363 = !DILocalVariable(name: "ilim", scope: !1364, file: !231, line: 674, type: !27)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !231, line: 671, column: 15)
!1365 = distinct !DILexicalBlock(scope: !1344, file: !231, line: 670, column: 17)
!1366 = !DILabel(scope: !1305, name: "process_input", file: !231, line: 308)
!1367 = !DILabel(scope: !1368, name: "c_and_shell_escape", file: !231, line: 502)
!1368 = distinct !DILexicalBlock(scope: !1345, file: !231, line: 478, column: 9)
!1369 = !DILabel(scope: !1368, name: "c_escape", file: !231, line: 507)
!1370 = !DILabel(scope: !1338, name: "store_escape", file: !231, line: 709)
!1371 = !DILabel(scope: !1338, name: "store_c", file: !231, line: 712)
!1372 = !DILabel(scope: !1305, name: "force_outer_quoting_style", file: !231, line: 753)
!1373 = !DILocation(line: 0, scope: !1305)
!1374 = !DILocation(line: 258, column: 25, scope: !1305)
!1375 = !DILocation(line: 258, column: 36, scope: !1305)
!1376 = !DILocation(line: 267, column: 3, scope: !1305)
!1377 = !DILocation(line: 261, column: 10, scope: !1305)
!1378 = !DILocation(line: 262, column: 15, scope: !1305)
!1379 = !DILocation(line: 263, column: 10, scope: !1305)
!1380 = !DILocation(line: 308, column: 2, scope: !1305)
!1381 = !DILocation(line: 311, column: 3, scope: !1305)
!1382 = !DILocation(line: 318, column: 11, scope: !1334)
!1383 = !DILocation(line: 319, column: 9, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !231, line: 319, column: 9)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !231, line: 319, column: 9)
!1386 = distinct !DILexicalBlock(scope: !1334, file: !231, line: 318, column: 11)
!1387 = !DILocation(line: 319, column: 9, scope: !1385)
!1388 = !DILocation(line: 0, scope: !281, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 357, column: 26, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !231, line: 335, column: 11)
!1391 = distinct !DILexicalBlock(scope: !1333, file: !231, line: 334, column: 13)
!1392 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1389)
!1393 = !DILocation(line: 201, column: 19, scope: !1394, inlinedAt: !1389)
!1394 = distinct !DILexicalBlock(scope: !281, file: !231, line: 201, column: 7)
!1395 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1389)
!1396 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1389)
!1397 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1389)
!1398 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1389)
!1399 = !DILocalVariable(name: "ps", arg: 1, scope: !1400, file: !1152, line: 1135, type: !1403)
!1400 = distinct !DISubprogram(name: "mbszero", scope: !1152, file: !1152, line: 1135, type: !1401, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1404)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !1403}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1404 = !{!1399}
!1405 = !DILocation(line: 0, scope: !1400, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1389)
!1407 = !DILocalVariable(name: "__dest", arg: 1, scope: !1408, file: !861, line: 57, type: !24)
!1408 = distinct !DISubprogram(name: "memset", scope: !861, file: !861, line: 57, type: !1161, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1409)
!1409 = !{!1407, !1410, !1411}
!1410 = !DILocalVariable(name: "__ch", arg: 2, scope: !1408, file: !861, line: 57, type: !25)
!1411 = !DILocalVariable(name: "__len", arg: 3, scope: !1408, file: !861, line: 57, type: !27)
!1412 = !DILocation(line: 0, scope: !1408, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 1137, column: 3, scope: !1400, inlinedAt: !1406)
!1414 = !DILocation(line: 59, column: 10, scope: !1408, inlinedAt: !1413)
!1415 = !DILocation(line: 231, column: 7, scope: !1416, inlinedAt: !1389)
!1416 = distinct !DILexicalBlock(scope: !281, file: !231, line: 231, column: 7)
!1417 = !DILocation(line: 231, column: 40, scope: !1416, inlinedAt: !1389)
!1418 = !DILocation(line: 231, column: 45, scope: !1416, inlinedAt: !1389)
!1419 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1389)
!1420 = !DILocation(line: 0, scope: !281, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 358, column: 27, scope: !1390)
!1422 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1421)
!1423 = !DILocation(line: 201, column: 19, scope: !1394, inlinedAt: !1421)
!1424 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1421)
!1425 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1421)
!1426 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1421)
!1427 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1421)
!1428 = !DILocation(line: 0, scope: !1400, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1421)
!1430 = !DILocation(line: 0, scope: !1408, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 1137, column: 3, scope: !1400, inlinedAt: !1429)
!1432 = !DILocation(line: 59, column: 10, scope: !1408, inlinedAt: !1431)
!1433 = !DILocation(line: 231, column: 7, scope: !1416, inlinedAt: !1421)
!1434 = !DILocation(line: 231, column: 40, scope: !1416, inlinedAt: !1421)
!1435 = !DILocation(line: 231, column: 45, scope: !1416, inlinedAt: !1421)
!1436 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1421)
!1437 = !DILocation(line: 360, column: 13, scope: !1333)
!1438 = !DILocation(line: 0, scope: !1331)
!1439 = !DILocation(line: 361, column: 45, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1331, file: !231, line: 361, column: 11)
!1441 = !DILocation(line: 361, column: 11, scope: !1331)
!1442 = !DILocation(line: 362, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !231, line: 362, column: 13)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !231, line: 362, column: 13)
!1445 = !DILocation(line: 362, column: 13, scope: !1444)
!1446 = !DILocation(line: 361, column: 52, scope: !1440)
!1447 = distinct !{!1447, !1441, !1448, !498}
!1448 = !DILocation(line: 362, column: 13, scope: !1331)
!1449 = !DILocation(line: 260, column: 10, scope: !1305)
!1450 = !DILocation(line: 365, column: 28, scope: !1333)
!1451 = !DILocation(line: 367, column: 7, scope: !1334)
!1452 = !DILocation(line: 370, column: 7, scope: !1334)
!1453 = !DILocation(line: 376, column: 11, scope: !1334)
!1454 = !DILocation(line: 381, column: 11, scope: !1334)
!1455 = !DILocation(line: 382, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !231, line: 382, column: 9)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !231, line: 382, column: 9)
!1458 = distinct !DILexicalBlock(scope: !1334, file: !231, line: 381, column: 11)
!1459 = !DILocation(line: 382, column: 9, scope: !1457)
!1460 = !DILocation(line: 389, column: 7, scope: !1334)
!1461 = !DILocation(line: 392, column: 7, scope: !1334)
!1462 = !DILocation(line: 0, scope: !1336)
!1463 = !DILocation(line: 395, column: 8, scope: !1336)
!1464 = !DILocation(line: 395, column: 34, scope: !1339)
!1465 = !DILocation(line: 395, column: 26, scope: !1339)
!1466 = !DILocation(line: 395, column: 48, scope: !1339)
!1467 = !DILocation(line: 395, column: 55, scope: !1339)
!1468 = !DILocation(line: 395, column: 3, scope: !1336)
!1469 = !DILocation(line: 395, column: 67, scope: !1339)
!1470 = !DILocation(line: 0, scope: !1338)
!1471 = !DILocation(line: 402, column: 11, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1338, file: !231, line: 401, column: 11)
!1473 = !DILocation(line: 404, column: 17, scope: !1472)
!1474 = !DILocation(line: 405, column: 39, scope: !1472)
!1475 = !DILocation(line: 409, column: 32, scope: !1472)
!1476 = !DILocation(line: 405, column: 19, scope: !1472)
!1477 = !DILocation(line: 405, column: 15, scope: !1472)
!1478 = !DILocation(line: 410, column: 11, scope: !1472)
!1479 = !DILocation(line: 410, column: 25, scope: !1472)
!1480 = !DILocalVariable(name: "__s1", arg: 1, scope: !1481, file: !482, line: 974, type: !649)
!1481 = distinct !DISubprogram(name: "memeq", scope: !482, file: !482, line: 974, type: !1123, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1482)
!1482 = !{!1480, !1483, !1484}
!1483 = !DILocalVariable(name: "__s2", arg: 2, scope: !1481, file: !482, line: 974, type: !649)
!1484 = !DILocalVariable(name: "__n", arg: 3, scope: !1481, file: !482, line: 974, type: !27)
!1485 = !DILocation(line: 0, scope: !1481, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 410, column: 14, scope: !1472)
!1487 = !DILocation(line: 976, column: 11, scope: !1481, inlinedAt: !1486)
!1488 = !DILocation(line: 976, column: 10, scope: !1481, inlinedAt: !1486)
!1489 = !DILocation(line: 401, column: 11, scope: !1338)
!1490 = !DILocation(line: 417, column: 25, scope: !1338)
!1491 = !DILocation(line: 418, column: 7, scope: !1338)
!1492 = !DILocation(line: 421, column: 15, scope: !1345)
!1493 = !DILocation(line: 423, column: 15, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !231, line: 423, column: 15)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !231, line: 422, column: 13)
!1496 = distinct !DILexicalBlock(scope: !1345, file: !231, line: 421, column: 15)
!1497 = !DILocation(line: 423, column: 15, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !231, line: 423, column: 15)
!1499 = !DILocation(line: 423, column: 15, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !231, line: 423, column: 15)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !231, line: 423, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !231, line: 423, column: 15)
!1503 = !DILocation(line: 423, column: 15, scope: !1501)
!1504 = !DILocation(line: 423, column: 15, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !231, line: 423, column: 15)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !231, line: 423, column: 15)
!1507 = !DILocation(line: 423, column: 15, scope: !1506)
!1508 = !DILocation(line: 423, column: 15, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !231, line: 423, column: 15)
!1510 = distinct !DILexicalBlock(scope: !1502, file: !231, line: 423, column: 15)
!1511 = !DILocation(line: 423, column: 15, scope: !1510)
!1512 = !DILocation(line: 423, column: 15, scope: !1502)
!1513 = !DILocation(line: 423, column: 15, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !231, line: 423, column: 15)
!1515 = distinct !DILexicalBlock(scope: !1494, file: !231, line: 423, column: 15)
!1516 = !DILocation(line: 423, column: 15, scope: !1515)
!1517 = !DILocation(line: 431, column: 19, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1495, file: !231, line: 430, column: 19)
!1519 = !DILocation(line: 431, column: 24, scope: !1518)
!1520 = !DILocation(line: 431, column: 28, scope: !1518)
!1521 = !DILocation(line: 431, column: 38, scope: !1518)
!1522 = !DILocation(line: 431, column: 48, scope: !1518)
!1523 = !DILocation(line: 431, column: 59, scope: !1518)
!1524 = !DILocation(line: 433, column: 19, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !231, line: 433, column: 19)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !231, line: 433, column: 19)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !231, line: 432, column: 17)
!1528 = !DILocation(line: 433, column: 19, scope: !1526)
!1529 = !DILocation(line: 434, column: 19, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !231, line: 434, column: 19)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !231, line: 434, column: 19)
!1532 = !DILocation(line: 434, column: 19, scope: !1531)
!1533 = !DILocation(line: 435, column: 17, scope: !1527)
!1534 = !DILocation(line: 442, column: 20, scope: !1496)
!1535 = !DILocation(line: 447, column: 11, scope: !1345)
!1536 = !DILocation(line: 450, column: 19, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1345, file: !231, line: 448, column: 13)
!1538 = !DILocation(line: 456, column: 19, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1537, file: !231, line: 455, column: 19)
!1540 = !DILocation(line: 456, column: 24, scope: !1539)
!1541 = !DILocation(line: 456, column: 28, scope: !1539)
!1542 = !DILocation(line: 456, column: 38, scope: !1539)
!1543 = !DILocation(line: 456, column: 47, scope: !1539)
!1544 = !DILocation(line: 456, column: 41, scope: !1539)
!1545 = !DILocation(line: 456, column: 52, scope: !1539)
!1546 = !DILocation(line: 455, column: 19, scope: !1537)
!1547 = !DILocation(line: 457, column: 25, scope: !1539)
!1548 = !DILocation(line: 457, column: 17, scope: !1539)
!1549 = !DILocation(line: 464, column: 25, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1539, file: !231, line: 458, column: 19)
!1551 = !DILocation(line: 468, column: 21, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !231, line: 468, column: 21)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !231, line: 468, column: 21)
!1554 = !DILocation(line: 468, column: 21, scope: !1553)
!1555 = !DILocation(line: 469, column: 21, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !231, line: 469, column: 21)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !231, line: 469, column: 21)
!1558 = !DILocation(line: 469, column: 21, scope: !1557)
!1559 = !DILocation(line: 470, column: 21, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !231, line: 470, column: 21)
!1561 = distinct !DILexicalBlock(scope: !1550, file: !231, line: 470, column: 21)
!1562 = !DILocation(line: 470, column: 21, scope: !1561)
!1563 = !DILocation(line: 471, column: 21, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !231, line: 471, column: 21)
!1565 = distinct !DILexicalBlock(scope: !1550, file: !231, line: 471, column: 21)
!1566 = !DILocation(line: 471, column: 21, scope: !1565)
!1567 = !DILocation(line: 472, column: 21, scope: !1550)
!1568 = !DILocation(line: 482, column: 33, scope: !1368)
!1569 = !DILocation(line: 483, column: 33, scope: !1368)
!1570 = !DILocation(line: 485, column: 33, scope: !1368)
!1571 = !DILocation(line: 486, column: 33, scope: !1368)
!1572 = !DILocation(line: 487, column: 33, scope: !1368)
!1573 = !DILocation(line: 490, column: 17, scope: !1368)
!1574 = !DILocation(line: 492, column: 21, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !231, line: 491, column: 15)
!1576 = distinct !DILexicalBlock(scope: !1368, file: !231, line: 490, column: 17)
!1577 = !DILocation(line: 499, column: 35, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1368, file: !231, line: 499, column: 17)
!1579 = !DILocation(line: 499, column: 57, scope: !1578)
!1580 = !DILocation(line: 0, scope: !1368)
!1581 = !DILocation(line: 502, column: 11, scope: !1368)
!1582 = !DILocation(line: 504, column: 17, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1368, file: !231, line: 503, column: 17)
!1584 = !DILocation(line: 507, column: 11, scope: !1368)
!1585 = !DILocation(line: 508, column: 17, scope: !1368)
!1586 = !DILocation(line: 517, column: 15, scope: !1345)
!1587 = !DILocation(line: 517, column: 40, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1345, file: !231, line: 517, column: 15)
!1589 = !DILocation(line: 517, column: 47, scope: !1588)
!1590 = !DILocation(line: 517, column: 18, scope: !1588)
!1591 = !DILocation(line: 521, column: 17, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1345, file: !231, line: 521, column: 15)
!1593 = !DILocation(line: 521, column: 15, scope: !1345)
!1594 = !DILocation(line: 525, column: 11, scope: !1345)
!1595 = !DILocation(line: 537, column: 15, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1345, file: !231, line: 536, column: 15)
!1597 = !DILocation(line: 536, column: 15, scope: !1345)
!1598 = !DILocation(line: 544, column: 15, scope: !1345)
!1599 = !DILocation(line: 546, column: 19, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !231, line: 545, column: 13)
!1601 = distinct !DILexicalBlock(scope: !1345, file: !231, line: 544, column: 15)
!1602 = !DILocation(line: 549, column: 19, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !231, line: 549, column: 19)
!1604 = !DILocation(line: 549, column: 30, scope: !1603)
!1605 = !DILocation(line: 558, column: 15, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !231, line: 558, column: 15)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !231, line: 558, column: 15)
!1608 = !DILocation(line: 558, column: 15, scope: !1607)
!1609 = !DILocation(line: 559, column: 15, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !231, line: 559, column: 15)
!1611 = distinct !DILexicalBlock(scope: !1600, file: !231, line: 559, column: 15)
!1612 = !DILocation(line: 559, column: 15, scope: !1611)
!1613 = !DILocation(line: 560, column: 15, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !231, line: 560, column: 15)
!1615 = distinct !DILexicalBlock(scope: !1600, file: !231, line: 560, column: 15)
!1616 = !DILocation(line: 560, column: 15, scope: !1615)
!1617 = !DILocation(line: 562, column: 13, scope: !1600)
!1618 = !DILocation(line: 602, column: 17, scope: !1344)
!1619 = !DILocation(line: 0, scope: !1344)
!1620 = !DILocation(line: 605, column: 29, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1349, file: !231, line: 603, column: 15)
!1622 = !DILocation(line: 605, column: 41, scope: !1621)
!1623 = !DILocation(line: 670, column: 23, scope: !1365)
!1624 = !DILocation(line: 609, column: 17, scope: !1348)
!1625 = !DILocation(line: 609, column: 27, scope: !1348)
!1626 = !DILocation(line: 0, scope: !1400, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 609, column: 32, scope: !1348)
!1628 = !DILocation(line: 0, scope: !1408, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 1137, column: 3, scope: !1400, inlinedAt: !1627)
!1630 = !DILocation(line: 59, column: 10, scope: !1408, inlinedAt: !1629)
!1631 = !DILocation(line: 613, column: 29, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1348, file: !231, line: 613, column: 21)
!1633 = !DILocation(line: 613, column: 21, scope: !1348)
!1634 = !DILocation(line: 614, column: 29, scope: !1632)
!1635 = !DILocation(line: 614, column: 19, scope: !1632)
!1636 = !DILocation(line: 618, column: 21, scope: !1351)
!1637 = !DILocation(line: 620, column: 54, scope: !1351)
!1638 = !DILocation(line: 0, scope: !1351)
!1639 = !DILocation(line: 619, column: 36, scope: !1351)
!1640 = !DILocation(line: 621, column: 25, scope: !1351)
!1641 = !DILocation(line: 631, column: 38, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1360, file: !231, line: 629, column: 23)
!1643 = !DILocation(line: 631, column: 48, scope: !1642)
!1644 = !DILocation(line: 665, column: 19, scope: !1352)
!1645 = !DILocation(line: 666, column: 15, scope: !1349)
!1646 = !DILocation(line: 626, column: 25, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1361, file: !231, line: 624, column: 23)
!1648 = !DILocation(line: 631, column: 51, scope: !1642)
!1649 = !DILocation(line: 631, column: 25, scope: !1642)
!1650 = !DILocation(line: 632, column: 28, scope: !1642)
!1651 = !DILocation(line: 631, column: 34, scope: !1642)
!1652 = distinct !{!1652, !1649, !1650, !498}
!1653 = !DILocation(line: 646, column: 29, scope: !1358)
!1654 = !DILocation(line: 0, scope: !1356)
!1655 = !DILocation(line: 649, column: 49, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1356, file: !231, line: 648, column: 29)
!1657 = !DILocation(line: 649, column: 39, scope: !1656)
!1658 = !DILocation(line: 649, column: 31, scope: !1656)
!1659 = !DILocation(line: 648, column: 60, scope: !1656)
!1660 = !DILocation(line: 648, column: 50, scope: !1656)
!1661 = !DILocation(line: 648, column: 29, scope: !1356)
!1662 = distinct !{!1662, !1661, !1663, !498}
!1663 = !DILocation(line: 654, column: 33, scope: !1356)
!1664 = !DILocation(line: 657, column: 43, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1359, file: !231, line: 657, column: 29)
!1666 = !DILocalVariable(name: "wc", arg: 1, scope: !1667, file: !1668, line: 865, type: !1671)
!1667 = distinct !DISubprogram(name: "c32isprint", scope: !1668, file: !1668, line: 865, type: !1669, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1673)
!1668 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!25, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1672, line: 20, baseType: !7)
!1672 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1673 = !{!1666}
!1674 = !DILocation(line: 0, scope: !1667, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 657, column: 31, scope: !1665)
!1676 = !DILocation(line: 871, column: 10, scope: !1667, inlinedAt: !1675)
!1677 = !DILocation(line: 657, column: 31, scope: !1665)
!1678 = !DILocation(line: 664, column: 23, scope: !1351)
!1679 = !DILocation(line: 753, column: 2, scope: !1305)
!1680 = !DILocation(line: 756, column: 51, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1305, file: !231, line: 756, column: 7)
!1682 = !DILocation(line: 670, column: 19, scope: !1365)
!1683 = !DILocation(line: 670, column: 45, scope: !1365)
!1684 = !DILocation(line: 674, column: 33, scope: !1364)
!1685 = !DILocation(line: 0, scope: !1364)
!1686 = !DILocation(line: 676, column: 17, scope: !1364)
!1687 = !DILocation(line: 398, column: 12, scope: !1338)
!1688 = !DILocation(line: 678, column: 43, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !231, line: 678, column: 25)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !231, line: 677, column: 19)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !231, line: 676, column: 17)
!1692 = distinct !DILexicalBlock(scope: !1364, file: !231, line: 676, column: 17)
!1693 = !DILocation(line: 680, column: 25, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !231, line: 680, column: 25)
!1695 = distinct !DILexicalBlock(scope: !1689, file: !231, line: 679, column: 23)
!1696 = !DILocation(line: 680, column: 25, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1694, file: !231, line: 680, column: 25)
!1698 = !DILocation(line: 680, column: 25, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !231, line: 680, column: 25)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !231, line: 680, column: 25)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !231, line: 680, column: 25)
!1702 = !DILocation(line: 680, column: 25, scope: !1700)
!1703 = !DILocation(line: 680, column: 25, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !231, line: 680, column: 25)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !231, line: 680, column: 25)
!1706 = !DILocation(line: 680, column: 25, scope: !1705)
!1707 = !DILocation(line: 680, column: 25, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !231, line: 680, column: 25)
!1709 = distinct !DILexicalBlock(scope: !1701, file: !231, line: 680, column: 25)
!1710 = !DILocation(line: 680, column: 25, scope: !1709)
!1711 = !DILocation(line: 680, column: 25, scope: !1701)
!1712 = !DILocation(line: 680, column: 25, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !231, line: 680, column: 25)
!1714 = distinct !DILexicalBlock(scope: !1694, file: !231, line: 680, column: 25)
!1715 = !DILocation(line: 680, column: 25, scope: !1714)
!1716 = !DILocation(line: 681, column: 25, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !231, line: 681, column: 25)
!1718 = distinct !DILexicalBlock(scope: !1695, file: !231, line: 681, column: 25)
!1719 = !DILocation(line: 681, column: 25, scope: !1718)
!1720 = !DILocation(line: 682, column: 25, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !231, line: 682, column: 25)
!1722 = distinct !DILexicalBlock(scope: !1695, file: !231, line: 682, column: 25)
!1723 = !DILocation(line: 682, column: 25, scope: !1722)
!1724 = !DILocation(line: 683, column: 38, scope: !1695)
!1725 = !DILocation(line: 683, column: 33, scope: !1695)
!1726 = !DILocation(line: 684, column: 23, scope: !1695)
!1727 = !DILocation(line: 685, column: 30, scope: !1689)
!1728 = !DILocation(line: 687, column: 25, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !231, line: 687, column: 25)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !231, line: 687, column: 25)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !231, line: 686, column: 23)
!1732 = distinct !DILexicalBlock(scope: !1689, file: !231, line: 685, column: 30)
!1733 = !DILocation(line: 687, column: 25, scope: !1730)
!1734 = !DILocation(line: 689, column: 23, scope: !1731)
!1735 = !DILocation(line: 690, column: 35, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1690, file: !231, line: 690, column: 25)
!1737 = !DILocation(line: 690, column: 30, scope: !1736)
!1738 = !DILocation(line: 690, column: 25, scope: !1690)
!1739 = !DILocation(line: 692, column: 21, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !231, line: 692, column: 21)
!1741 = distinct !DILexicalBlock(scope: !1690, file: !231, line: 692, column: 21)
!1742 = !DILocation(line: 692, column: 21, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !231, line: 692, column: 21)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !231, line: 692, column: 21)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !231, line: 692, column: 21)
!1746 = !DILocation(line: 692, column: 21, scope: !1744)
!1747 = !DILocation(line: 692, column: 21, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !231, line: 692, column: 21)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !231, line: 692, column: 21)
!1750 = !DILocation(line: 692, column: 21, scope: !1749)
!1751 = !DILocation(line: 692, column: 21, scope: !1745)
!1752 = !DILocation(line: 0, scope: !1690)
!1753 = !DILocation(line: 693, column: 21, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !231, line: 693, column: 21)
!1755 = distinct !DILexicalBlock(scope: !1690, file: !231, line: 693, column: 21)
!1756 = !DILocation(line: 693, column: 21, scope: !1755)
!1757 = !DILocation(line: 694, column: 25, scope: !1690)
!1758 = !DILocation(line: 676, column: 17, scope: !1691)
!1759 = distinct !{!1759, !1760, !1761}
!1760 = !DILocation(line: 676, column: 17, scope: !1692)
!1761 = !DILocation(line: 695, column: 19, scope: !1692)
!1762 = !DILocation(line: 409, column: 30, scope: !1472)
!1763 = !DILocation(line: 702, column: 34, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1338, file: !231, line: 702, column: 11)
!1765 = !DILocation(line: 704, column: 14, scope: !1764)
!1766 = !DILocation(line: 705, column: 14, scope: !1764)
!1767 = !DILocation(line: 705, column: 35, scope: !1764)
!1768 = !DILocation(line: 705, column: 17, scope: !1764)
!1769 = !DILocation(line: 705, column: 47, scope: !1764)
!1770 = !DILocation(line: 705, column: 65, scope: !1764)
!1771 = !DILocation(line: 706, column: 11, scope: !1764)
!1772 = !DILocation(line: 702, column: 11, scope: !1338)
!1773 = !DILocation(line: 395, column: 15, scope: !1336)
!1774 = !DILocation(line: 709, column: 5, scope: !1338)
!1775 = !DILocation(line: 710, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1338, file: !231, line: 710, column: 7)
!1777 = !DILocation(line: 710, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !231, line: 710, column: 7)
!1779 = !DILocation(line: 710, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !231, line: 710, column: 7)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !231, line: 710, column: 7)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !231, line: 710, column: 7)
!1783 = !DILocation(line: 710, column: 7, scope: !1781)
!1784 = !DILocation(line: 710, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !231, line: 710, column: 7)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !231, line: 710, column: 7)
!1787 = !DILocation(line: 710, column: 7, scope: !1786)
!1788 = !DILocation(line: 710, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !231, line: 710, column: 7)
!1790 = distinct !DILexicalBlock(scope: !1782, file: !231, line: 710, column: 7)
!1791 = !DILocation(line: 710, column: 7, scope: !1790)
!1792 = !DILocation(line: 710, column: 7, scope: !1782)
!1793 = !DILocation(line: 710, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !231, line: 710, column: 7)
!1795 = distinct !DILexicalBlock(scope: !1776, file: !231, line: 710, column: 7)
!1796 = !DILocation(line: 710, column: 7, scope: !1795)
!1797 = !DILocation(line: 712, column: 5, scope: !1338)
!1798 = !DILocation(line: 713, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !231, line: 713, column: 7)
!1800 = distinct !DILexicalBlock(scope: !1338, file: !231, line: 713, column: 7)
!1801 = !DILocation(line: 417, column: 21, scope: !1338)
!1802 = !DILocation(line: 713, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !231, line: 713, column: 7)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !231, line: 713, column: 7)
!1805 = distinct !DILexicalBlock(scope: !1799, file: !231, line: 713, column: 7)
!1806 = !DILocation(line: 713, column: 7, scope: !1804)
!1807 = !DILocation(line: 713, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !231, line: 713, column: 7)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !231, line: 713, column: 7)
!1810 = !DILocation(line: 713, column: 7, scope: !1809)
!1811 = !DILocation(line: 713, column: 7, scope: !1805)
!1812 = !DILocation(line: 714, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !231, line: 714, column: 7)
!1814 = distinct !DILexicalBlock(scope: !1338, file: !231, line: 714, column: 7)
!1815 = !DILocation(line: 714, column: 7, scope: !1814)
!1816 = !DILocation(line: 716, column: 11, scope: !1338)
!1817 = !DILocation(line: 718, column: 5, scope: !1339)
!1818 = !DILocation(line: 395, column: 82, scope: !1339)
!1819 = !DILocation(line: 395, column: 3, scope: !1339)
!1820 = distinct !{!1820, !1468, !1821, !498}
!1821 = !DILocation(line: 718, column: 5, scope: !1336)
!1822 = !DILocation(line: 720, column: 11, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1305, file: !231, line: 720, column: 7)
!1824 = !DILocation(line: 720, column: 16, scope: !1823)
!1825 = !DILocation(line: 728, column: 51, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1305, file: !231, line: 728, column: 7)
!1827 = !DILocation(line: 731, column: 11, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1826, file: !231, line: 730, column: 5)
!1829 = !DILocation(line: 732, column: 16, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1828, file: !231, line: 731, column: 11)
!1831 = !DILocation(line: 732, column: 9, scope: !1830)
!1832 = !DILocation(line: 736, column: 18, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !231, line: 736, column: 16)
!1834 = !DILocation(line: 736, column: 29, scope: !1833)
!1835 = !DILocation(line: 745, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1305, file: !231, line: 745, column: 7)
!1837 = !DILocation(line: 745, column: 20, scope: !1836)
!1838 = !DILocation(line: 746, column: 12, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !231, line: 746, column: 5)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !231, line: 746, column: 5)
!1841 = !DILocation(line: 746, column: 5, scope: !1840)
!1842 = !DILocation(line: 747, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !231, line: 747, column: 7)
!1844 = distinct !DILexicalBlock(scope: !1839, file: !231, line: 747, column: 7)
!1845 = !DILocation(line: 747, column: 7, scope: !1844)
!1846 = !DILocation(line: 746, column: 39, scope: !1839)
!1847 = distinct !{!1847, !1841, !1848, !498}
!1848 = !DILocation(line: 747, column: 7, scope: !1840)
!1849 = !DILocation(line: 749, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1305, file: !231, line: 749, column: 7)
!1851 = !DILocation(line: 749, column: 7, scope: !1305)
!1852 = !DILocation(line: 750, column: 5, scope: !1850)
!1853 = !DILocation(line: 750, column: 17, scope: !1850)
!1854 = !DILocation(line: 756, column: 21, scope: !1681)
!1855 = !DILocation(line: 760, column: 42, scope: !1305)
!1856 = !DILocation(line: 758, column: 10, scope: !1305)
!1857 = !DILocation(line: 758, column: 3, scope: !1305)
!1858 = !DILocation(line: 762, column: 1, scope: !1305)
!1859 = !DISubprogram(name: "iswprint", scope: !1860, file: !1860, line: 120, type: !1669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!1860 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1861 = distinct !DISubprogram(name: "quotearg_alloc", scope: !231, file: !231, line: 788, type: !1862, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1864)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!22, !30, !27, !1197}
!1864 = !{!1865, !1866, !1867}
!1865 = !DILocalVariable(name: "arg", arg: 1, scope: !1861, file: !231, line: 788, type: !30)
!1866 = !DILocalVariable(name: "argsize", arg: 2, scope: !1861, file: !231, line: 788, type: !27)
!1867 = !DILocalVariable(name: "o", arg: 3, scope: !1861, file: !231, line: 789, type: !1197)
!1868 = !DILocation(line: 0, scope: !1861)
!1869 = !DILocalVariable(name: "arg", arg: 1, scope: !1870, file: !231, line: 801, type: !30)
!1870 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !231, file: !231, line: 801, type: !1871, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!22, !30, !27, !367, !1197}
!1873 = !{!1869, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1874 = !DILocalVariable(name: "argsize", arg: 2, scope: !1870, file: !231, line: 801, type: !27)
!1875 = !DILocalVariable(name: "size", arg: 3, scope: !1870, file: !231, line: 801, type: !367)
!1876 = !DILocalVariable(name: "o", arg: 4, scope: !1870, file: !231, line: 802, type: !1197)
!1877 = !DILocalVariable(name: "p", scope: !1870, file: !231, line: 804, type: !1197)
!1878 = !DILocalVariable(name: "saved_errno", scope: !1870, file: !231, line: 805, type: !25)
!1879 = !DILocalVariable(name: "flags", scope: !1870, file: !231, line: 807, type: !25)
!1880 = !DILocalVariable(name: "bufsize", scope: !1870, file: !231, line: 808, type: !27)
!1881 = !DILocalVariable(name: "buf", scope: !1870, file: !231, line: 812, type: !22)
!1882 = !DILocation(line: 0, scope: !1870, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 791, column: 10, scope: !1861)
!1884 = !DILocation(line: 804, column: 37, scope: !1870, inlinedAt: !1883)
!1885 = !DILocation(line: 805, column: 21, scope: !1870, inlinedAt: !1883)
!1886 = !DILocation(line: 807, column: 18, scope: !1870, inlinedAt: !1883)
!1887 = !DILocation(line: 807, column: 24, scope: !1870, inlinedAt: !1883)
!1888 = !DILocation(line: 808, column: 72, scope: !1870, inlinedAt: !1883)
!1889 = !DILocation(line: 809, column: 53, scope: !1870, inlinedAt: !1883)
!1890 = !DILocation(line: 810, column: 49, scope: !1870, inlinedAt: !1883)
!1891 = !DILocation(line: 811, column: 49, scope: !1870, inlinedAt: !1883)
!1892 = !DILocation(line: 808, column: 20, scope: !1870, inlinedAt: !1883)
!1893 = !DILocation(line: 811, column: 62, scope: !1870, inlinedAt: !1883)
!1894 = !DILocation(line: 812, column: 15, scope: !1870, inlinedAt: !1883)
!1895 = !DILocation(line: 813, column: 60, scope: !1870, inlinedAt: !1883)
!1896 = !DILocation(line: 815, column: 32, scope: !1870, inlinedAt: !1883)
!1897 = !DILocation(line: 815, column: 47, scope: !1870, inlinedAt: !1883)
!1898 = !DILocation(line: 813, column: 3, scope: !1870, inlinedAt: !1883)
!1899 = !DILocation(line: 816, column: 9, scope: !1870, inlinedAt: !1883)
!1900 = !DILocation(line: 791, column: 3, scope: !1861)
!1901 = !DILocation(line: 0, scope: !1870)
!1902 = !DILocation(line: 804, column: 37, scope: !1870)
!1903 = !DILocation(line: 805, column: 21, scope: !1870)
!1904 = !DILocation(line: 807, column: 18, scope: !1870)
!1905 = !DILocation(line: 807, column: 27, scope: !1870)
!1906 = !DILocation(line: 807, column: 24, scope: !1870)
!1907 = !DILocation(line: 808, column: 72, scope: !1870)
!1908 = !DILocation(line: 809, column: 53, scope: !1870)
!1909 = !DILocation(line: 810, column: 49, scope: !1870)
!1910 = !DILocation(line: 811, column: 49, scope: !1870)
!1911 = !DILocation(line: 808, column: 20, scope: !1870)
!1912 = !DILocation(line: 811, column: 62, scope: !1870)
!1913 = !DILocation(line: 812, column: 15, scope: !1870)
!1914 = !DILocation(line: 813, column: 60, scope: !1870)
!1915 = !DILocation(line: 815, column: 32, scope: !1870)
!1916 = !DILocation(line: 815, column: 47, scope: !1870)
!1917 = !DILocation(line: 813, column: 3, scope: !1870)
!1918 = !DILocation(line: 816, column: 9, scope: !1870)
!1919 = !DILocation(line: 817, column: 7, scope: !1870)
!1920 = !DILocation(line: 818, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1870, file: !231, line: 817, column: 7)
!1922 = !{!783, !783, i64 0}
!1923 = !DILocation(line: 818, column: 5, scope: !1921)
!1924 = !DILocation(line: 819, column: 3, scope: !1870)
!1925 = distinct !DISubprogram(name: "quotearg_free", scope: !231, file: !231, line: 837, type: !184, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1926)
!1926 = !{!1927, !1928}
!1927 = !DILocalVariable(name: "sv", scope: !1925, file: !231, line: 839, type: !304)
!1928 = !DILocalVariable(name: "i", scope: !1929, file: !231, line: 840, type: !25)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !231, line: 840, column: 3)
!1930 = !DILocation(line: 839, column: 24, scope: !1925)
!1931 = !DILocation(line: 0, scope: !1925)
!1932 = !DILocation(line: 0, scope: !1929)
!1933 = !DILocation(line: 840, column: 21, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !231, line: 840, column: 3)
!1935 = !DILocation(line: 840, column: 3, scope: !1929)
!1936 = !DILocation(line: 842, column: 13, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1925, file: !231, line: 842, column: 7)
!1938 = !{!1939, !439, i64 8}
!1939 = !{!"slotvec", !783, i64 0, !439, i64 8}
!1940 = !DILocation(line: 842, column: 17, scope: !1937)
!1941 = !DILocation(line: 842, column: 7, scope: !1925)
!1942 = !DILocation(line: 841, column: 17, scope: !1934)
!1943 = !DILocation(line: 841, column: 5, scope: !1934)
!1944 = !DILocation(line: 840, column: 32, scope: !1934)
!1945 = distinct !{!1945, !1935, !1946, !498}
!1946 = !DILocation(line: 841, column: 20, scope: !1929)
!1947 = !DILocation(line: 844, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1937, file: !231, line: 843, column: 5)
!1949 = !DILocation(line: 845, column: 21, scope: !1948)
!1950 = !{!1939, !783, i64 0}
!1951 = !DILocation(line: 846, column: 20, scope: !1948)
!1952 = !DILocation(line: 847, column: 5, scope: !1948)
!1953 = !DILocation(line: 848, column: 10, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1925, file: !231, line: 848, column: 7)
!1955 = !DILocation(line: 848, column: 7, scope: !1925)
!1956 = !DILocation(line: 850, column: 13, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1954, file: !231, line: 849, column: 5)
!1958 = !DILocation(line: 850, column: 7, scope: !1957)
!1959 = !DILocation(line: 851, column: 15, scope: !1957)
!1960 = !DILocation(line: 852, column: 5, scope: !1957)
!1961 = !DILocation(line: 853, column: 10, scope: !1925)
!1962 = !DILocation(line: 854, column: 1, scope: !1925)
!1963 = distinct !DISubprogram(name: "quotearg_n", scope: !231, file: !231, line: 919, type: !639, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1964)
!1964 = !{!1965, !1966}
!1965 = !DILocalVariable(name: "n", arg: 1, scope: !1963, file: !231, line: 919, type: !25)
!1966 = !DILocalVariable(name: "arg", arg: 2, scope: !1963, file: !231, line: 919, type: !30)
!1967 = !DILocation(line: 0, scope: !1963)
!1968 = !DILocation(line: 921, column: 10, scope: !1963)
!1969 = !DILocation(line: 921, column: 3, scope: !1963)
!1970 = distinct !DISubprogram(name: "quotearg_n_options", scope: !231, file: !231, line: 866, type: !1971, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!22, !25, !30, !27, !1197}
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1984, !1985, !1987, !1988, !1989}
!1974 = !DILocalVariable(name: "n", arg: 1, scope: !1970, file: !231, line: 866, type: !25)
!1975 = !DILocalVariable(name: "arg", arg: 2, scope: !1970, file: !231, line: 866, type: !30)
!1976 = !DILocalVariable(name: "argsize", arg: 3, scope: !1970, file: !231, line: 866, type: !27)
!1977 = !DILocalVariable(name: "options", arg: 4, scope: !1970, file: !231, line: 867, type: !1197)
!1978 = !DILocalVariable(name: "saved_errno", scope: !1970, file: !231, line: 869, type: !25)
!1979 = !DILocalVariable(name: "sv", scope: !1970, file: !231, line: 871, type: !304)
!1980 = !DILocalVariable(name: "nslots_max", scope: !1970, file: !231, line: 873, type: !25)
!1981 = !DILocalVariable(name: "preallocated", scope: !1982, file: !231, line: 879, type: !47)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !231, line: 878, column: 5)
!1983 = distinct !DILexicalBlock(scope: !1970, file: !231, line: 877, column: 7)
!1984 = !DILocalVariable(name: "new_nslots", scope: !1982, file: !231, line: 880, type: !380)
!1985 = !DILocalVariable(name: "size", scope: !1986, file: !231, line: 891, type: !27)
!1986 = distinct !DILexicalBlock(scope: !1970, file: !231, line: 890, column: 3)
!1987 = !DILocalVariable(name: "val", scope: !1986, file: !231, line: 892, type: !22)
!1988 = !DILocalVariable(name: "flags", scope: !1986, file: !231, line: 894, type: !25)
!1989 = !DILocalVariable(name: "qsize", scope: !1986, file: !231, line: 895, type: !27)
!1990 = !DILocation(line: 0, scope: !1970)
!1991 = !DILocation(line: 869, column: 21, scope: !1970)
!1992 = !DILocation(line: 871, column: 24, scope: !1970)
!1993 = !DILocation(line: 874, column: 17, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1970, file: !231, line: 874, column: 7)
!1995 = !DILocation(line: 875, column: 5, scope: !1994)
!1996 = !DILocation(line: 877, column: 7, scope: !1983)
!1997 = !DILocation(line: 877, column: 14, scope: !1983)
!1998 = !DILocation(line: 877, column: 7, scope: !1970)
!1999 = !DILocation(line: 879, column: 31, scope: !1982)
!2000 = !DILocation(line: 0, scope: !1982)
!2001 = !DILocation(line: 880, column: 7, scope: !1982)
!2002 = !DILocation(line: 880, column: 26, scope: !1982)
!2003 = !DILocation(line: 880, column: 13, scope: !1982)
!2004 = !DILocation(line: 882, column: 31, scope: !1982)
!2005 = !DILocation(line: 883, column: 33, scope: !1982)
!2006 = !DILocation(line: 883, column: 42, scope: !1982)
!2007 = !DILocation(line: 883, column: 31, scope: !1982)
!2008 = !DILocation(line: 882, column: 22, scope: !1982)
!2009 = !DILocation(line: 882, column: 15, scope: !1982)
!2010 = !DILocation(line: 884, column: 11, scope: !1982)
!2011 = !DILocation(line: 885, column: 15, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1982, file: !231, line: 884, column: 11)
!2013 = !{i64 0, i64 8, !1922, i64 8, i64 8, !438}
!2014 = !DILocation(line: 885, column: 9, scope: !2012)
!2015 = !DILocation(line: 886, column: 20, scope: !1982)
!2016 = !DILocation(line: 886, column: 18, scope: !1982)
!2017 = !DILocation(line: 886, column: 15, scope: !1982)
!2018 = !DILocation(line: 886, column: 32, scope: !1982)
!2019 = !DILocation(line: 886, column: 43, scope: !1982)
!2020 = !DILocation(line: 886, column: 53, scope: !1982)
!2021 = !DILocation(line: 0, scope: !1408, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 886, column: 7, scope: !1982)
!2023 = !DILocation(line: 59, column: 10, scope: !1408, inlinedAt: !2022)
!2024 = !DILocation(line: 887, column: 16, scope: !1982)
!2025 = !DILocation(line: 887, column: 14, scope: !1982)
!2026 = !DILocation(line: 888, column: 5, scope: !1983)
!2027 = !DILocation(line: 888, column: 5, scope: !1982)
!2028 = !DILocation(line: 891, column: 19, scope: !1986)
!2029 = !DILocation(line: 891, column: 25, scope: !1986)
!2030 = !DILocation(line: 0, scope: !1986)
!2031 = !DILocation(line: 892, column: 23, scope: !1986)
!2032 = !DILocation(line: 894, column: 26, scope: !1986)
!2033 = !DILocation(line: 894, column: 32, scope: !1986)
!2034 = !DILocation(line: 896, column: 55, scope: !1986)
!2035 = !DILocation(line: 897, column: 46, scope: !1986)
!2036 = !DILocation(line: 898, column: 55, scope: !1986)
!2037 = !DILocation(line: 899, column: 55, scope: !1986)
!2038 = !DILocation(line: 895, column: 20, scope: !1986)
!2039 = !DILocation(line: 901, column: 14, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1986, file: !231, line: 901, column: 9)
!2041 = !DILocation(line: 901, column: 9, scope: !1986)
!2042 = !DILocation(line: 903, column: 35, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2040, file: !231, line: 902, column: 7)
!2044 = !DILocation(line: 903, column: 20, scope: !2043)
!2045 = !DILocation(line: 904, column: 17, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !231, line: 904, column: 13)
!2047 = !DILocation(line: 904, column: 13, scope: !2043)
!2048 = !DILocation(line: 905, column: 11, scope: !2046)
!2049 = !DILocation(line: 906, column: 27, scope: !2043)
!2050 = !DILocation(line: 906, column: 19, scope: !2043)
!2051 = !DILocation(line: 907, column: 69, scope: !2043)
!2052 = !DILocation(line: 909, column: 44, scope: !2043)
!2053 = !DILocation(line: 910, column: 44, scope: !2043)
!2054 = !DILocation(line: 907, column: 9, scope: !2043)
!2055 = !DILocation(line: 911, column: 7, scope: !2043)
!2056 = !DILocation(line: 913, column: 11, scope: !1986)
!2057 = !DILocation(line: 914, column: 5, scope: !1986)
!2058 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !231, file: !231, line: 925, type: !2059, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2061)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!22, !25, !30, !27}
!2061 = !{!2062, !2063, !2064}
!2062 = !DILocalVariable(name: "n", arg: 1, scope: !2058, file: !231, line: 925, type: !25)
!2063 = !DILocalVariable(name: "arg", arg: 2, scope: !2058, file: !231, line: 925, type: !30)
!2064 = !DILocalVariable(name: "argsize", arg: 3, scope: !2058, file: !231, line: 925, type: !27)
!2065 = !DILocation(line: 0, scope: !2058)
!2066 = !DILocation(line: 927, column: 10, scope: !2058)
!2067 = !DILocation(line: 927, column: 3, scope: !2058)
!2068 = distinct !DISubprogram(name: "quotearg", scope: !231, file: !231, line: 931, type: !643, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2069)
!2069 = !{!2070}
!2070 = !DILocalVariable(name: "arg", arg: 1, scope: !2068, file: !231, line: 931, type: !30)
!2071 = !DILocation(line: 0, scope: !2068)
!2072 = !DILocation(line: 0, scope: !1963, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 933, column: 10, scope: !2068)
!2074 = !DILocation(line: 921, column: 10, scope: !1963, inlinedAt: !2073)
!2075 = !DILocation(line: 933, column: 3, scope: !2068)
!2076 = distinct !DISubprogram(name: "quotearg_mem", scope: !231, file: !231, line: 937, type: !2077, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2079)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!22, !30, !27}
!2079 = !{!2080, !2081}
!2080 = !DILocalVariable(name: "arg", arg: 1, scope: !2076, file: !231, line: 937, type: !30)
!2081 = !DILocalVariable(name: "argsize", arg: 2, scope: !2076, file: !231, line: 937, type: !27)
!2082 = !DILocation(line: 0, scope: !2076)
!2083 = !DILocation(line: 0, scope: !2058, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 939, column: 10, scope: !2076)
!2085 = !DILocation(line: 927, column: 10, scope: !2058, inlinedAt: !2084)
!2086 = !DILocation(line: 939, column: 3, scope: !2076)
!2087 = distinct !DISubprogram(name: "quotearg_n_style", scope: !231, file: !231, line: 943, type: !2088, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!22, !25, !233, !30}
!2090 = !{!2091, !2092, !2093, !2094}
!2091 = !DILocalVariable(name: "n", arg: 1, scope: !2087, file: !231, line: 943, type: !25)
!2092 = !DILocalVariable(name: "s", arg: 2, scope: !2087, file: !231, line: 943, type: !233)
!2093 = !DILocalVariable(name: "arg", arg: 3, scope: !2087, file: !231, line: 943, type: !30)
!2094 = !DILocalVariable(name: "o", scope: !2087, file: !231, line: 945, type: !1198)
!2095 = !DILocation(line: 0, scope: !2087)
!2096 = !DILocation(line: 945, column: 3, scope: !2087)
!2097 = !DILocation(line: 945, column: 32, scope: !2087)
!2098 = !{!2099}
!2099 = distinct !{!2099, !2100, !"quoting_options_from_style: argument 0"}
!2100 = distinct !{!2100, !"quoting_options_from_style"}
!2101 = !DILocation(line: 945, column: 36, scope: !2087)
!2102 = !DILocalVariable(name: "style", arg: 1, scope: !2103, file: !231, line: 183, type: !233)
!2103 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !231, file: !231, line: 183, type: !2104, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!262, !233}
!2106 = !{!2102, !2107}
!2107 = !DILocalVariable(name: "o", scope: !2103, file: !231, line: 185, type: !262)
!2108 = !DILocation(line: 0, scope: !2103, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 945, column: 36, scope: !2087)
!2110 = !DILocation(line: 185, column: 26, scope: !2103, inlinedAt: !2109)
!2111 = !DILocation(line: 186, column: 13, scope: !2112, inlinedAt: !2109)
!2112 = distinct !DILexicalBlock(scope: !2103, file: !231, line: 186, column: 7)
!2113 = !DILocation(line: 186, column: 7, scope: !2103, inlinedAt: !2109)
!2114 = !DILocation(line: 187, column: 5, scope: !2112, inlinedAt: !2109)
!2115 = !DILocation(line: 188, column: 5, scope: !2103, inlinedAt: !2109)
!2116 = !DILocation(line: 188, column: 11, scope: !2103, inlinedAt: !2109)
!2117 = !DILocation(line: 946, column: 10, scope: !2087)
!2118 = !DILocation(line: 947, column: 1, scope: !2087)
!2119 = !DILocation(line: 946, column: 3, scope: !2087)
!2120 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !231, file: !231, line: 950, type: !2121, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!22, !25, !233, !30, !27}
!2123 = !{!2124, !2125, !2126, !2127, !2128}
!2124 = !DILocalVariable(name: "n", arg: 1, scope: !2120, file: !231, line: 950, type: !25)
!2125 = !DILocalVariable(name: "s", arg: 2, scope: !2120, file: !231, line: 950, type: !233)
!2126 = !DILocalVariable(name: "arg", arg: 3, scope: !2120, file: !231, line: 951, type: !30)
!2127 = !DILocalVariable(name: "argsize", arg: 4, scope: !2120, file: !231, line: 951, type: !27)
!2128 = !DILocalVariable(name: "o", scope: !2120, file: !231, line: 953, type: !1198)
!2129 = !DILocation(line: 0, scope: !2120)
!2130 = !DILocation(line: 953, column: 3, scope: !2120)
!2131 = !DILocation(line: 953, column: 32, scope: !2120)
!2132 = !{!2133}
!2133 = distinct !{!2133, !2134, !"quoting_options_from_style: argument 0"}
!2134 = distinct !{!2134, !"quoting_options_from_style"}
!2135 = !DILocation(line: 953, column: 36, scope: !2120)
!2136 = !DILocation(line: 0, scope: !2103, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 953, column: 36, scope: !2120)
!2138 = !DILocation(line: 185, column: 26, scope: !2103, inlinedAt: !2137)
!2139 = !DILocation(line: 186, column: 13, scope: !2112, inlinedAt: !2137)
!2140 = !DILocation(line: 186, column: 7, scope: !2103, inlinedAt: !2137)
!2141 = !DILocation(line: 187, column: 5, scope: !2112, inlinedAt: !2137)
!2142 = !DILocation(line: 188, column: 5, scope: !2103, inlinedAt: !2137)
!2143 = !DILocation(line: 188, column: 11, scope: !2103, inlinedAt: !2137)
!2144 = !DILocation(line: 954, column: 10, scope: !2120)
!2145 = !DILocation(line: 955, column: 1, scope: !2120)
!2146 = !DILocation(line: 954, column: 3, scope: !2120)
!2147 = distinct !DISubprogram(name: "quotearg_style", scope: !231, file: !231, line: 958, type: !2148, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!22, !233, !30}
!2150 = !{!2151, !2152}
!2151 = !DILocalVariable(name: "s", arg: 1, scope: !2147, file: !231, line: 958, type: !233)
!2152 = !DILocalVariable(name: "arg", arg: 2, scope: !2147, file: !231, line: 958, type: !30)
!2153 = !DILocation(line: 0, scope: !2147)
!2154 = !DILocation(line: 0, scope: !2087, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 960, column: 10, scope: !2147)
!2156 = !DILocation(line: 945, column: 3, scope: !2087, inlinedAt: !2155)
!2157 = !DILocation(line: 945, column: 32, scope: !2087, inlinedAt: !2155)
!2158 = !{!2159}
!2159 = distinct !{!2159, !2160, !"quoting_options_from_style: argument 0"}
!2160 = distinct !{!2160, !"quoting_options_from_style"}
!2161 = !DILocation(line: 945, column: 36, scope: !2087, inlinedAt: !2155)
!2162 = !DILocation(line: 0, scope: !2103, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 945, column: 36, scope: !2087, inlinedAt: !2155)
!2164 = !DILocation(line: 185, column: 26, scope: !2103, inlinedAt: !2163)
!2165 = !DILocation(line: 186, column: 13, scope: !2112, inlinedAt: !2163)
!2166 = !DILocation(line: 186, column: 7, scope: !2103, inlinedAt: !2163)
!2167 = !DILocation(line: 187, column: 5, scope: !2112, inlinedAt: !2163)
!2168 = !DILocation(line: 188, column: 5, scope: !2103, inlinedAt: !2163)
!2169 = !DILocation(line: 188, column: 11, scope: !2103, inlinedAt: !2163)
!2170 = !DILocation(line: 946, column: 10, scope: !2087, inlinedAt: !2155)
!2171 = !DILocation(line: 947, column: 1, scope: !2087, inlinedAt: !2155)
!2172 = !DILocation(line: 960, column: 3, scope: !2147)
!2173 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !231, file: !231, line: 964, type: !2174, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!22, !233, !30, !27}
!2176 = !{!2177, !2178, !2179}
!2177 = !DILocalVariable(name: "s", arg: 1, scope: !2173, file: !231, line: 964, type: !233)
!2178 = !DILocalVariable(name: "arg", arg: 2, scope: !2173, file: !231, line: 964, type: !30)
!2179 = !DILocalVariable(name: "argsize", arg: 3, scope: !2173, file: !231, line: 964, type: !27)
!2180 = !DILocation(line: 0, scope: !2173)
!2181 = !DILocation(line: 0, scope: !2120, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 966, column: 10, scope: !2173)
!2183 = !DILocation(line: 953, column: 3, scope: !2120, inlinedAt: !2182)
!2184 = !DILocation(line: 953, column: 32, scope: !2120, inlinedAt: !2182)
!2185 = !{!2186}
!2186 = distinct !{!2186, !2187, !"quoting_options_from_style: argument 0"}
!2187 = distinct !{!2187, !"quoting_options_from_style"}
!2188 = !DILocation(line: 953, column: 36, scope: !2120, inlinedAt: !2182)
!2189 = !DILocation(line: 0, scope: !2103, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 953, column: 36, scope: !2120, inlinedAt: !2182)
!2191 = !DILocation(line: 185, column: 26, scope: !2103, inlinedAt: !2190)
!2192 = !DILocation(line: 186, column: 13, scope: !2112, inlinedAt: !2190)
!2193 = !DILocation(line: 186, column: 7, scope: !2103, inlinedAt: !2190)
!2194 = !DILocation(line: 187, column: 5, scope: !2112, inlinedAt: !2190)
!2195 = !DILocation(line: 188, column: 5, scope: !2103, inlinedAt: !2190)
!2196 = !DILocation(line: 188, column: 11, scope: !2103, inlinedAt: !2190)
!2197 = !DILocation(line: 954, column: 10, scope: !2120, inlinedAt: !2182)
!2198 = !DILocation(line: 955, column: 1, scope: !2120, inlinedAt: !2182)
!2199 = !DILocation(line: 966, column: 3, scope: !2173)
!2200 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !231, file: !231, line: 970, type: !2201, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!22, !30, !27, !23}
!2203 = !{!2204, !2205, !2206, !2207}
!2204 = !DILocalVariable(name: "arg", arg: 1, scope: !2200, file: !231, line: 970, type: !30)
!2205 = !DILocalVariable(name: "argsize", arg: 2, scope: !2200, file: !231, line: 970, type: !27)
!2206 = !DILocalVariable(name: "ch", arg: 3, scope: !2200, file: !231, line: 970, type: !23)
!2207 = !DILocalVariable(name: "options", scope: !2200, file: !231, line: 972, type: !262)
!2208 = !DILocation(line: 0, scope: !2200)
!2209 = !DILocation(line: 972, column: 3, scope: !2200)
!2210 = !DILocation(line: 972, column: 26, scope: !2200)
!2211 = !DILocation(line: 973, column: 13, scope: !2200)
!2212 = !{i64 0, i64 4, !540, i64 4, i64 4, !531, i64 8, i64 32, !540, i64 40, i64 8, !438, i64 48, i64 8, !438}
!2213 = !DILocation(line: 0, scope: !1218, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 974, column: 3, scope: !2200)
!2215 = !DILocation(line: 147, column: 62, scope: !1218, inlinedAt: !2214)
!2216 = !DILocation(line: 147, column: 57, scope: !1218, inlinedAt: !2214)
!2217 = !DILocation(line: 148, column: 15, scope: !1218, inlinedAt: !2214)
!2218 = !DILocation(line: 149, column: 21, scope: !1218, inlinedAt: !2214)
!2219 = !DILocation(line: 149, column: 24, scope: !1218, inlinedAt: !2214)
!2220 = !DILocation(line: 149, column: 34, scope: !1218, inlinedAt: !2214)
!2221 = !DILocation(line: 150, column: 19, scope: !1218, inlinedAt: !2214)
!2222 = !DILocation(line: 150, column: 24, scope: !1218, inlinedAt: !2214)
!2223 = !DILocation(line: 150, column: 6, scope: !1218, inlinedAt: !2214)
!2224 = !DILocation(line: 975, column: 10, scope: !2200)
!2225 = !DILocation(line: 976, column: 1, scope: !2200)
!2226 = !DILocation(line: 975, column: 3, scope: !2200)
!2227 = distinct !DISubprogram(name: "quotearg_char", scope: !231, file: !231, line: 979, type: !2228, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!22, !30, !23}
!2230 = !{!2231, !2232}
!2231 = !DILocalVariable(name: "arg", arg: 1, scope: !2227, file: !231, line: 979, type: !30)
!2232 = !DILocalVariable(name: "ch", arg: 2, scope: !2227, file: !231, line: 979, type: !23)
!2233 = !DILocation(line: 0, scope: !2227)
!2234 = !DILocation(line: 0, scope: !2200, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 981, column: 10, scope: !2227)
!2236 = !DILocation(line: 972, column: 3, scope: !2200, inlinedAt: !2235)
!2237 = !DILocation(line: 972, column: 26, scope: !2200, inlinedAt: !2235)
!2238 = !DILocation(line: 973, column: 13, scope: !2200, inlinedAt: !2235)
!2239 = !DILocation(line: 0, scope: !1218, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 974, column: 3, scope: !2200, inlinedAt: !2235)
!2241 = !DILocation(line: 147, column: 62, scope: !1218, inlinedAt: !2240)
!2242 = !DILocation(line: 147, column: 57, scope: !1218, inlinedAt: !2240)
!2243 = !DILocation(line: 148, column: 15, scope: !1218, inlinedAt: !2240)
!2244 = !DILocation(line: 149, column: 21, scope: !1218, inlinedAt: !2240)
!2245 = !DILocation(line: 149, column: 24, scope: !1218, inlinedAt: !2240)
!2246 = !DILocation(line: 149, column: 34, scope: !1218, inlinedAt: !2240)
!2247 = !DILocation(line: 150, column: 19, scope: !1218, inlinedAt: !2240)
!2248 = !DILocation(line: 150, column: 24, scope: !1218, inlinedAt: !2240)
!2249 = !DILocation(line: 150, column: 6, scope: !1218, inlinedAt: !2240)
!2250 = !DILocation(line: 975, column: 10, scope: !2200, inlinedAt: !2235)
!2251 = !DILocation(line: 976, column: 1, scope: !2200, inlinedAt: !2235)
!2252 = !DILocation(line: 981, column: 3, scope: !2227)
!2253 = distinct !DISubprogram(name: "quotearg_colon", scope: !231, file: !231, line: 985, type: !643, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2254)
!2254 = !{!2255}
!2255 = !DILocalVariable(name: "arg", arg: 1, scope: !2253, file: !231, line: 985, type: !30)
!2256 = !DILocation(line: 0, scope: !2253)
!2257 = !DILocation(line: 0, scope: !2227, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 987, column: 10, scope: !2253)
!2259 = !DILocation(line: 0, scope: !2200, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 981, column: 10, scope: !2227, inlinedAt: !2258)
!2261 = !DILocation(line: 972, column: 3, scope: !2200, inlinedAt: !2260)
!2262 = !DILocation(line: 972, column: 26, scope: !2200, inlinedAt: !2260)
!2263 = !DILocation(line: 973, column: 13, scope: !2200, inlinedAt: !2260)
!2264 = !DILocation(line: 0, scope: !1218, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 974, column: 3, scope: !2200, inlinedAt: !2260)
!2266 = !DILocation(line: 147, column: 57, scope: !1218, inlinedAt: !2265)
!2267 = !DILocation(line: 149, column: 21, scope: !1218, inlinedAt: !2265)
!2268 = !DILocation(line: 150, column: 6, scope: !1218, inlinedAt: !2265)
!2269 = !DILocation(line: 975, column: 10, scope: !2200, inlinedAt: !2260)
!2270 = !DILocation(line: 976, column: 1, scope: !2200, inlinedAt: !2260)
!2271 = !DILocation(line: 987, column: 3, scope: !2253)
!2272 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !231, file: !231, line: 991, type: !2077, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2273)
!2273 = !{!2274, !2275}
!2274 = !DILocalVariable(name: "arg", arg: 1, scope: !2272, file: !231, line: 991, type: !30)
!2275 = !DILocalVariable(name: "argsize", arg: 2, scope: !2272, file: !231, line: 991, type: !27)
!2276 = !DILocation(line: 0, scope: !2272)
!2277 = !DILocation(line: 0, scope: !2200, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 993, column: 10, scope: !2272)
!2279 = !DILocation(line: 972, column: 3, scope: !2200, inlinedAt: !2278)
!2280 = !DILocation(line: 972, column: 26, scope: !2200, inlinedAt: !2278)
!2281 = !DILocation(line: 973, column: 13, scope: !2200, inlinedAt: !2278)
!2282 = !DILocation(line: 0, scope: !1218, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 974, column: 3, scope: !2200, inlinedAt: !2278)
!2284 = !DILocation(line: 147, column: 57, scope: !1218, inlinedAt: !2283)
!2285 = !DILocation(line: 149, column: 21, scope: !1218, inlinedAt: !2283)
!2286 = !DILocation(line: 150, column: 6, scope: !1218, inlinedAt: !2283)
!2287 = !DILocation(line: 975, column: 10, scope: !2200, inlinedAt: !2278)
!2288 = !DILocation(line: 976, column: 1, scope: !2200, inlinedAt: !2278)
!2289 = !DILocation(line: 993, column: 3, scope: !2272)
!2290 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !231, file: !231, line: 997, type: !2088, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2291)
!2291 = !{!2292, !2293, !2294, !2295}
!2292 = !DILocalVariable(name: "n", arg: 1, scope: !2290, file: !231, line: 997, type: !25)
!2293 = !DILocalVariable(name: "s", arg: 2, scope: !2290, file: !231, line: 997, type: !233)
!2294 = !DILocalVariable(name: "arg", arg: 3, scope: !2290, file: !231, line: 997, type: !30)
!2295 = !DILocalVariable(name: "options", scope: !2290, file: !231, line: 999, type: !262)
!2296 = !DILocation(line: 0, scope: !2290)
!2297 = !DILocation(line: 999, column: 3, scope: !2290)
!2298 = !DILocation(line: 999, column: 26, scope: !2290)
!2299 = !DILocation(line: 0, scope: !2103, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 1000, column: 13, scope: !2290)
!2301 = !DILocation(line: 186, column: 13, scope: !2112, inlinedAt: !2300)
!2302 = !DILocation(line: 186, column: 7, scope: !2103, inlinedAt: !2300)
!2303 = !DILocation(line: 187, column: 5, scope: !2112, inlinedAt: !2300)
!2304 = !{!2305}
!2305 = distinct !{!2305, !2306, !"quoting_options_from_style: argument 0"}
!2306 = distinct !{!2306, !"quoting_options_from_style"}
!2307 = !DILocation(line: 1000, column: 13, scope: !2290)
!2308 = !DILocation(line: 0, scope: !1218, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 1001, column: 3, scope: !2290)
!2310 = !DILocation(line: 147, column: 57, scope: !1218, inlinedAt: !2309)
!2311 = !DILocation(line: 149, column: 21, scope: !1218, inlinedAt: !2309)
!2312 = !DILocation(line: 150, column: 6, scope: !1218, inlinedAt: !2309)
!2313 = !DILocation(line: 1002, column: 10, scope: !2290)
!2314 = !DILocation(line: 1003, column: 1, scope: !2290)
!2315 = !DILocation(line: 1002, column: 3, scope: !2290)
!2316 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !231, file: !231, line: 1006, type: !2317, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!22, !25, !30, !30, !30}
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DILocalVariable(name: "n", arg: 1, scope: !2316, file: !231, line: 1006, type: !25)
!2321 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2316, file: !231, line: 1006, type: !30)
!2322 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2316, file: !231, line: 1007, type: !30)
!2323 = !DILocalVariable(name: "arg", arg: 4, scope: !2316, file: !231, line: 1007, type: !30)
!2324 = !DILocation(line: 0, scope: !2316)
!2325 = !DILocalVariable(name: "n", arg: 1, scope: !2326, file: !231, line: 1014, type: !25)
!2326 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !231, file: !231, line: 1014, type: !2327, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!22, !25, !30, !30, !30, !27}
!2329 = !{!2325, !2330, !2331, !2332, !2333, !2334}
!2330 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2326, file: !231, line: 1014, type: !30)
!2331 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2326, file: !231, line: 1015, type: !30)
!2332 = !DILocalVariable(name: "arg", arg: 4, scope: !2326, file: !231, line: 1016, type: !30)
!2333 = !DILocalVariable(name: "argsize", arg: 5, scope: !2326, file: !231, line: 1016, type: !27)
!2334 = !DILocalVariable(name: "o", scope: !2326, file: !231, line: 1018, type: !262)
!2335 = !DILocation(line: 0, scope: !2326, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 1009, column: 10, scope: !2316)
!2337 = !DILocation(line: 1018, column: 3, scope: !2326, inlinedAt: !2336)
!2338 = !DILocation(line: 1018, column: 26, scope: !2326, inlinedAt: !2336)
!2339 = !DILocation(line: 1018, column: 30, scope: !2326, inlinedAt: !2336)
!2340 = !DILocation(line: 0, scope: !1258, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 1019, column: 3, scope: !2326, inlinedAt: !2336)
!2342 = !DILocation(line: 174, column: 6, scope: !1258, inlinedAt: !2341)
!2343 = !DILocation(line: 174, column: 12, scope: !1258, inlinedAt: !2341)
!2344 = !DILocation(line: 175, column: 8, scope: !1272, inlinedAt: !2341)
!2345 = !DILocation(line: 175, column: 19, scope: !1272, inlinedAt: !2341)
!2346 = !DILocation(line: 176, column: 5, scope: !1272, inlinedAt: !2341)
!2347 = !DILocation(line: 177, column: 6, scope: !1258, inlinedAt: !2341)
!2348 = !DILocation(line: 177, column: 17, scope: !1258, inlinedAt: !2341)
!2349 = !DILocation(line: 178, column: 6, scope: !1258, inlinedAt: !2341)
!2350 = !DILocation(line: 178, column: 18, scope: !1258, inlinedAt: !2341)
!2351 = !DILocation(line: 1020, column: 10, scope: !2326, inlinedAt: !2336)
!2352 = !DILocation(line: 1021, column: 1, scope: !2326, inlinedAt: !2336)
!2353 = !DILocation(line: 1009, column: 3, scope: !2316)
!2354 = !DILocation(line: 0, scope: !2326)
!2355 = !DILocation(line: 1018, column: 3, scope: !2326)
!2356 = !DILocation(line: 1018, column: 26, scope: !2326)
!2357 = !DILocation(line: 1018, column: 30, scope: !2326)
!2358 = !DILocation(line: 0, scope: !1258, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 1019, column: 3, scope: !2326)
!2360 = !DILocation(line: 174, column: 6, scope: !1258, inlinedAt: !2359)
!2361 = !DILocation(line: 174, column: 12, scope: !1258, inlinedAt: !2359)
!2362 = !DILocation(line: 175, column: 8, scope: !1272, inlinedAt: !2359)
!2363 = !DILocation(line: 175, column: 19, scope: !1272, inlinedAt: !2359)
!2364 = !DILocation(line: 176, column: 5, scope: !1272, inlinedAt: !2359)
!2365 = !DILocation(line: 177, column: 6, scope: !1258, inlinedAt: !2359)
!2366 = !DILocation(line: 177, column: 17, scope: !1258, inlinedAt: !2359)
!2367 = !DILocation(line: 178, column: 6, scope: !1258, inlinedAt: !2359)
!2368 = !DILocation(line: 178, column: 18, scope: !1258, inlinedAt: !2359)
!2369 = !DILocation(line: 1020, column: 10, scope: !2326)
!2370 = !DILocation(line: 1021, column: 1, scope: !2326)
!2371 = !DILocation(line: 1020, column: 3, scope: !2326)
!2372 = distinct !DISubprogram(name: "quotearg_custom", scope: !231, file: !231, line: 1024, type: !2373, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!22, !30, !30, !30}
!2375 = !{!2376, !2377, !2378}
!2376 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2372, file: !231, line: 1024, type: !30)
!2377 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2372, file: !231, line: 1024, type: !30)
!2378 = !DILocalVariable(name: "arg", arg: 3, scope: !2372, file: !231, line: 1025, type: !30)
!2379 = !DILocation(line: 0, scope: !2372)
!2380 = !DILocation(line: 0, scope: !2316, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 1027, column: 10, scope: !2372)
!2382 = !DILocation(line: 0, scope: !2326, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 1009, column: 10, scope: !2316, inlinedAt: !2381)
!2384 = !DILocation(line: 1018, column: 3, scope: !2326, inlinedAt: !2383)
!2385 = !DILocation(line: 1018, column: 26, scope: !2326, inlinedAt: !2383)
!2386 = !DILocation(line: 1018, column: 30, scope: !2326, inlinedAt: !2383)
!2387 = !DILocation(line: 0, scope: !1258, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 1019, column: 3, scope: !2326, inlinedAt: !2383)
!2389 = !DILocation(line: 174, column: 6, scope: !1258, inlinedAt: !2388)
!2390 = !DILocation(line: 174, column: 12, scope: !1258, inlinedAt: !2388)
!2391 = !DILocation(line: 175, column: 8, scope: !1272, inlinedAt: !2388)
!2392 = !DILocation(line: 175, column: 19, scope: !1272, inlinedAt: !2388)
!2393 = !DILocation(line: 176, column: 5, scope: !1272, inlinedAt: !2388)
!2394 = !DILocation(line: 177, column: 6, scope: !1258, inlinedAt: !2388)
!2395 = !DILocation(line: 177, column: 17, scope: !1258, inlinedAt: !2388)
!2396 = !DILocation(line: 178, column: 6, scope: !1258, inlinedAt: !2388)
!2397 = !DILocation(line: 178, column: 18, scope: !1258, inlinedAt: !2388)
!2398 = !DILocation(line: 1020, column: 10, scope: !2326, inlinedAt: !2383)
!2399 = !DILocation(line: 1021, column: 1, scope: !2326, inlinedAt: !2383)
!2400 = !DILocation(line: 1027, column: 3, scope: !2372)
!2401 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !231, file: !231, line: 1031, type: !2402, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!22, !30, !30, !30, !27}
!2404 = !{!2405, !2406, !2407, !2408}
!2405 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2401, file: !231, line: 1031, type: !30)
!2406 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2401, file: !231, line: 1031, type: !30)
!2407 = !DILocalVariable(name: "arg", arg: 3, scope: !2401, file: !231, line: 1032, type: !30)
!2408 = !DILocalVariable(name: "argsize", arg: 4, scope: !2401, file: !231, line: 1032, type: !27)
!2409 = !DILocation(line: 0, scope: !2401)
!2410 = !DILocation(line: 0, scope: !2326, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1034, column: 10, scope: !2401)
!2412 = !DILocation(line: 1018, column: 3, scope: !2326, inlinedAt: !2411)
!2413 = !DILocation(line: 1018, column: 26, scope: !2326, inlinedAt: !2411)
!2414 = !DILocation(line: 1018, column: 30, scope: !2326, inlinedAt: !2411)
!2415 = !DILocation(line: 0, scope: !1258, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 1019, column: 3, scope: !2326, inlinedAt: !2411)
!2417 = !DILocation(line: 174, column: 6, scope: !1258, inlinedAt: !2416)
!2418 = !DILocation(line: 174, column: 12, scope: !1258, inlinedAt: !2416)
!2419 = !DILocation(line: 175, column: 8, scope: !1272, inlinedAt: !2416)
!2420 = !DILocation(line: 175, column: 19, scope: !1272, inlinedAt: !2416)
!2421 = !DILocation(line: 176, column: 5, scope: !1272, inlinedAt: !2416)
!2422 = !DILocation(line: 177, column: 6, scope: !1258, inlinedAt: !2416)
!2423 = !DILocation(line: 177, column: 17, scope: !1258, inlinedAt: !2416)
!2424 = !DILocation(line: 178, column: 6, scope: !1258, inlinedAt: !2416)
!2425 = !DILocation(line: 178, column: 18, scope: !1258, inlinedAt: !2416)
!2426 = !DILocation(line: 1020, column: 10, scope: !2326, inlinedAt: !2411)
!2427 = !DILocation(line: 1021, column: 1, scope: !2326, inlinedAt: !2411)
!2428 = !DILocation(line: 1034, column: 3, scope: !2401)
!2429 = distinct !DISubprogram(name: "quote_n_mem", scope: !231, file: !231, line: 1049, type: !2430, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!30, !25, !30, !27}
!2432 = !{!2433, !2434, !2435}
!2433 = !DILocalVariable(name: "n", arg: 1, scope: !2429, file: !231, line: 1049, type: !25)
!2434 = !DILocalVariable(name: "arg", arg: 2, scope: !2429, file: !231, line: 1049, type: !30)
!2435 = !DILocalVariable(name: "argsize", arg: 3, scope: !2429, file: !231, line: 1049, type: !27)
!2436 = !DILocation(line: 0, scope: !2429)
!2437 = !DILocation(line: 1051, column: 10, scope: !2429)
!2438 = !DILocation(line: 1051, column: 3, scope: !2429)
!2439 = distinct !DISubprogram(name: "quote_mem", scope: !231, file: !231, line: 1055, type: !2440, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!30, !30, !27}
!2442 = !{!2443, !2444}
!2443 = !DILocalVariable(name: "arg", arg: 1, scope: !2439, file: !231, line: 1055, type: !30)
!2444 = !DILocalVariable(name: "argsize", arg: 2, scope: !2439, file: !231, line: 1055, type: !27)
!2445 = !DILocation(line: 0, scope: !2439)
!2446 = !DILocation(line: 0, scope: !2429, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 1057, column: 10, scope: !2439)
!2448 = !DILocation(line: 1051, column: 10, scope: !2429, inlinedAt: !2447)
!2449 = !DILocation(line: 1057, column: 3, scope: !2439)
!2450 = distinct !DISubprogram(name: "quote_n", scope: !231, file: !231, line: 1061, type: !2451, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!30, !25, !30}
!2453 = !{!2454, !2455}
!2454 = !DILocalVariable(name: "n", arg: 1, scope: !2450, file: !231, line: 1061, type: !25)
!2455 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !231, line: 1061, type: !30)
!2456 = !DILocation(line: 0, scope: !2450)
!2457 = !DILocation(line: 0, scope: !2429, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 1063, column: 10, scope: !2450)
!2459 = !DILocation(line: 1051, column: 10, scope: !2429, inlinedAt: !2458)
!2460 = !DILocation(line: 1063, column: 3, scope: !2450)
!2461 = distinct !DISubprogram(name: "quote", scope: !231, file: !231, line: 1067, type: !2462, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!30, !30}
!2464 = !{!2465}
!2465 = !DILocalVariable(name: "arg", arg: 1, scope: !2461, file: !231, line: 1067, type: !30)
!2466 = !DILocation(line: 0, scope: !2461)
!2467 = !DILocation(line: 0, scope: !2450, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1069, column: 10, scope: !2461)
!2469 = !DILocation(line: 0, scope: !2429, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 1063, column: 10, scope: !2450, inlinedAt: !2468)
!2471 = !DILocation(line: 1051, column: 10, scope: !2429, inlinedAt: !2470)
!2472 = !DILocation(line: 1069, column: 3, scope: !2461)
!2473 = distinct !DISubprogram(name: "version_etc_arn", scope: !354, file: !354, line: 61, type: !2474, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !2511)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2476, !30, !30, !30, !2510, !27}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !2478)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2478, file: !64, line: 51, baseType: !25, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2478, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2478, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2478, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2478, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2478, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2478, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2478, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2478, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2478, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2478, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2478, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2478, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2478, file: !64, line: 70, baseType: !2494, size: 64, offset: 832)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2478, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2478, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2478, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2478, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2478, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2478, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2478, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2478, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2478, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2478, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2478, file: !64, line: 93, baseType: !2494, size: 64, offset: 1344)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2478, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2478, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2478, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2478, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517}
!2512 = !DILocalVariable(name: "stream", arg: 1, scope: !2473, file: !354, line: 61, type: !2476)
!2513 = !DILocalVariable(name: "command_name", arg: 2, scope: !2473, file: !354, line: 62, type: !30)
!2514 = !DILocalVariable(name: "package", arg: 3, scope: !2473, file: !354, line: 62, type: !30)
!2515 = !DILocalVariable(name: "version", arg: 4, scope: !2473, file: !354, line: 63, type: !30)
!2516 = !DILocalVariable(name: "authors", arg: 5, scope: !2473, file: !354, line: 64, type: !2510)
!2517 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2473, file: !354, line: 64, type: !27)
!2518 = !DILocation(line: 0, scope: !2473)
!2519 = !DILocation(line: 66, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2473, file: !354, line: 66, column: 7)
!2521 = !DILocation(line: 66, column: 7, scope: !2473)
!2522 = !DILocation(line: 67, column: 5, scope: !2520)
!2523 = !DILocation(line: 69, column: 5, scope: !2520)
!2524 = !DILocation(line: 83, column: 3, scope: !2473)
!2525 = !DILocation(line: 85, column: 3, scope: !2473)
!2526 = !DILocation(line: 88, column: 3, scope: !2473)
!2527 = !DILocation(line: 95, column: 3, scope: !2473)
!2528 = !DILocation(line: 97, column: 3, scope: !2473)
!2529 = !DILocation(line: 105, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2473, file: !354, line: 98, column: 5)
!2531 = !DILocation(line: 106, column: 7, scope: !2530)
!2532 = !DILocation(line: 109, column: 7, scope: !2530)
!2533 = !DILocation(line: 110, column: 7, scope: !2530)
!2534 = !DILocation(line: 113, column: 7, scope: !2530)
!2535 = !DILocation(line: 115, column: 7, scope: !2530)
!2536 = !DILocation(line: 120, column: 7, scope: !2530)
!2537 = !DILocation(line: 122, column: 7, scope: !2530)
!2538 = !DILocation(line: 127, column: 7, scope: !2530)
!2539 = !DILocation(line: 129, column: 7, scope: !2530)
!2540 = !DILocation(line: 134, column: 7, scope: !2530)
!2541 = !DILocation(line: 137, column: 7, scope: !2530)
!2542 = !DILocation(line: 142, column: 7, scope: !2530)
!2543 = !DILocation(line: 145, column: 7, scope: !2530)
!2544 = !DILocation(line: 150, column: 7, scope: !2530)
!2545 = !DILocation(line: 154, column: 7, scope: !2530)
!2546 = !DILocation(line: 159, column: 7, scope: !2530)
!2547 = !DILocation(line: 163, column: 7, scope: !2530)
!2548 = !DILocation(line: 170, column: 7, scope: !2530)
!2549 = !DILocation(line: 174, column: 7, scope: !2530)
!2550 = !DILocation(line: 176, column: 1, scope: !2473)
!2551 = distinct !DISubprogram(name: "version_etc_ar", scope: !354, file: !354, line: 183, type: !2552, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !2476, !30, !30, !30, !2510}
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560}
!2555 = !DILocalVariable(name: "stream", arg: 1, scope: !2551, file: !354, line: 183, type: !2476)
!2556 = !DILocalVariable(name: "command_name", arg: 2, scope: !2551, file: !354, line: 184, type: !30)
!2557 = !DILocalVariable(name: "package", arg: 3, scope: !2551, file: !354, line: 184, type: !30)
!2558 = !DILocalVariable(name: "version", arg: 4, scope: !2551, file: !354, line: 185, type: !30)
!2559 = !DILocalVariable(name: "authors", arg: 5, scope: !2551, file: !354, line: 185, type: !2510)
!2560 = !DILocalVariable(name: "n_authors", scope: !2551, file: !354, line: 187, type: !27)
!2561 = !DILocation(line: 0, scope: !2551)
!2562 = !DILocation(line: 189, column: 8, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2551, file: !354, line: 189, column: 3)
!2564 = !DILocation(line: 0, scope: !2563)
!2565 = !DILocation(line: 189, column: 23, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2563, file: !354, line: 189, column: 3)
!2567 = !DILocation(line: 189, column: 3, scope: !2563)
!2568 = !DILocation(line: 189, column: 52, scope: !2566)
!2569 = distinct !{!2569, !2567, !2570, !498}
!2570 = !DILocation(line: 190, column: 5, scope: !2563)
!2571 = !DILocation(line: 191, column: 3, scope: !2551)
!2572 = !DILocation(line: 192, column: 1, scope: !2551)
!2573 = distinct !DISubprogram(name: "version_etc_va", scope: !354, file: !354, line: 199, type: !2574, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !2587)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !2476, !30, !30, !30, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !2577)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !2578)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2579, baseType: !2580)
!2579 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !2581)
!2581 = !{!2582, !2583, !2584, !2585, !2586}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2580, file: !2579, line: 192, baseType: !24, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2580, file: !2579, line: 192, baseType: !24, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2580, file: !2579, line: 192, baseType: !24, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2580, file: !2579, line: 192, baseType: !25, size: 32, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2580, file: !2579, line: 192, baseType: !25, size: 32, offset: 224)
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2588 = !DILocalVariable(name: "stream", arg: 1, scope: !2573, file: !354, line: 199, type: !2476)
!2589 = !DILocalVariable(name: "command_name", arg: 2, scope: !2573, file: !354, line: 200, type: !30)
!2590 = !DILocalVariable(name: "package", arg: 3, scope: !2573, file: !354, line: 200, type: !30)
!2591 = !DILocalVariable(name: "version", arg: 4, scope: !2573, file: !354, line: 201, type: !30)
!2592 = !DILocalVariable(name: "authors", arg: 5, scope: !2573, file: !354, line: 201, type: !2576)
!2593 = !DILocalVariable(name: "n_authors", scope: !2573, file: !354, line: 203, type: !27)
!2594 = !DILocalVariable(name: "authtab", scope: !2573, file: !354, line: 204, type: !2595)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !258)
!2596 = !DILocation(line: 0, scope: !2573)
!2597 = !DILocation(line: 201, column: 46, scope: !2573)
!2598 = !DILocation(line: 204, column: 3, scope: !2573)
!2599 = !DILocation(line: 204, column: 15, scope: !2573)
!2600 = !DILocation(line: 208, column: 35, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !354, line: 206, column: 3)
!2602 = distinct !DILexicalBlock(scope: !2573, file: !354, line: 206, column: 3)
!2603 = !DILocation(line: 208, column: 14, scope: !2601)
!2604 = !DILocation(line: 208, column: 33, scope: !2601)
!2605 = !DILocation(line: 208, column: 67, scope: !2601)
!2606 = !DILocation(line: 206, column: 3, scope: !2602)
!2607 = !DILocation(line: 0, scope: !2602)
!2608 = !DILocation(line: 211, column: 3, scope: !2573)
!2609 = !DILocation(line: 213, column: 1, scope: !2573)
!2610 = distinct !DISubprogram(name: "version_etc", scope: !354, file: !354, line: 230, type: !2611, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !2476, !30, !30, !30, null}
!2613 = !{!2614, !2615, !2616, !2617, !2618}
!2614 = !DILocalVariable(name: "stream", arg: 1, scope: !2610, file: !354, line: 230, type: !2476)
!2615 = !DILocalVariable(name: "command_name", arg: 2, scope: !2610, file: !354, line: 231, type: !30)
!2616 = !DILocalVariable(name: "package", arg: 3, scope: !2610, file: !354, line: 231, type: !30)
!2617 = !DILocalVariable(name: "version", arg: 4, scope: !2610, file: !354, line: 232, type: !30)
!2618 = !DILocalVariable(name: "authors", scope: !2610, file: !354, line: 234, type: !2576)
!2619 = !DILocation(line: 0, scope: !2610)
!2620 = !DILocation(line: 234, column: 3, scope: !2610)
!2621 = !DILocation(line: 234, column: 11, scope: !2610)
!2622 = !DILocation(line: 235, column: 3, scope: !2610)
!2623 = !DILocation(line: 236, column: 3, scope: !2610)
!2624 = !DILocation(line: 237, column: 3, scope: !2610)
!2625 = !DILocation(line: 238, column: 1, scope: !2610)
!2626 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !354, file: !354, line: 241, type: !184, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !447)
!2627 = !DILocation(line: 243, column: 3, scope: !2626)
!2628 = !DILocation(line: 248, column: 3, scope: !2626)
!2629 = !DILocation(line: 254, column: 3, scope: !2626)
!2630 = !DILocation(line: 259, column: 3, scope: !2626)
!2631 = !DILocation(line: 261, column: 1, scope: !2626)
!2632 = distinct !DISubprogram(name: "xnrealloc", scope: !2633, file: !2633, line: 147, type: !2634, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2636)
!2633 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!24, !24, !27, !27}
!2636 = !{!2637, !2638, !2639}
!2637 = !DILocalVariable(name: "p", arg: 1, scope: !2632, file: !2633, line: 147, type: !24)
!2638 = !DILocalVariable(name: "n", arg: 2, scope: !2632, file: !2633, line: 147, type: !27)
!2639 = !DILocalVariable(name: "s", arg: 3, scope: !2632, file: !2633, line: 147, type: !27)
!2640 = !DILocation(line: 0, scope: !2632)
!2641 = !DILocalVariable(name: "p", arg: 1, scope: !2642, file: !361, line: 83, type: !24)
!2642 = distinct !DISubprogram(name: "xreallocarray", scope: !361, file: !361, line: 83, type: !2634, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2643)
!2643 = !{!2641, !2644, !2645}
!2644 = !DILocalVariable(name: "n", arg: 2, scope: !2642, file: !361, line: 83, type: !27)
!2645 = !DILocalVariable(name: "s", arg: 3, scope: !2642, file: !361, line: 83, type: !27)
!2646 = !DILocation(line: 0, scope: !2642, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 149, column: 10, scope: !2632)
!2648 = !DILocation(line: 85, column: 25, scope: !2642, inlinedAt: !2647)
!2649 = !DILocalVariable(name: "p", arg: 1, scope: !2650, file: !361, line: 37, type: !24)
!2650 = distinct !DISubprogram(name: "check_nonnull", scope: !361, file: !361, line: 37, type: !2651, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!24, !24}
!2653 = !{!2649}
!2654 = !DILocation(line: 0, scope: !2650, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 85, column: 10, scope: !2642, inlinedAt: !2647)
!2656 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2655)
!2657 = distinct !DILexicalBlock(scope: !2650, file: !361, line: 39, column: 7)
!2658 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2655)
!2659 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2655)
!2660 = !DILocation(line: 149, column: 3, scope: !2632)
!2661 = !DILocation(line: 0, scope: !2642)
!2662 = !DILocation(line: 85, column: 25, scope: !2642)
!2663 = !DILocation(line: 0, scope: !2650, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 85, column: 10, scope: !2642)
!2665 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2664)
!2666 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2664)
!2667 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2664)
!2668 = !DILocation(line: 85, column: 3, scope: !2642)
!2669 = distinct !DISubprogram(name: "xmalloc", scope: !361, file: !361, line: 47, type: !2670, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!24, !27}
!2672 = !{!2673}
!2673 = !DILocalVariable(name: "s", arg: 1, scope: !2669, file: !361, line: 47, type: !27)
!2674 = !DILocation(line: 0, scope: !2669)
!2675 = !DILocation(line: 49, column: 25, scope: !2669)
!2676 = !DILocation(line: 0, scope: !2650, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 49, column: 10, scope: !2669)
!2678 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2677)
!2679 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2677)
!2680 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2677)
!2681 = !DILocation(line: 49, column: 3, scope: !2669)
!2682 = distinct !DISubprogram(name: "ximalloc", scope: !361, file: !361, line: 53, type: !2683, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!24, !380}
!2685 = !{!2686}
!2686 = !DILocalVariable(name: "s", arg: 1, scope: !2682, file: !361, line: 53, type: !380)
!2687 = !DILocation(line: 0, scope: !2682)
!2688 = !DILocalVariable(name: "s", arg: 1, scope: !2689, file: !2690, line: 55, type: !380)
!2689 = distinct !DISubprogram(name: "imalloc", scope: !2690, file: !2690, line: 55, type: !2683, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2691)
!2690 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2691 = !{!2688}
!2692 = !DILocation(line: 0, scope: !2689, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 55, column: 25, scope: !2682)
!2694 = !DILocation(line: 57, column: 26, scope: !2689, inlinedAt: !2693)
!2695 = !DILocation(line: 0, scope: !2650, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 55, column: 10, scope: !2682)
!2697 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2696)
!2698 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2696)
!2699 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2696)
!2700 = !DILocation(line: 55, column: 3, scope: !2682)
!2701 = distinct !DISubprogram(name: "xcharalloc", scope: !361, file: !361, line: 59, type: !2702, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!22, !27}
!2704 = !{!2705}
!2705 = !DILocalVariable(name: "n", arg: 1, scope: !2701, file: !361, line: 59, type: !27)
!2706 = !DILocation(line: 0, scope: !2701)
!2707 = !DILocation(line: 0, scope: !2669, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 61, column: 10, scope: !2701)
!2709 = !DILocation(line: 49, column: 25, scope: !2669, inlinedAt: !2708)
!2710 = !DILocation(line: 0, scope: !2650, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 49, column: 10, scope: !2669, inlinedAt: !2708)
!2712 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2711)
!2713 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2711)
!2714 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2711)
!2715 = !DILocation(line: 61, column: 3, scope: !2701)
!2716 = distinct !DISubprogram(name: "xrealloc", scope: !361, file: !361, line: 68, type: !2717, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2719)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!24, !24, !27}
!2719 = !{!2720, !2721}
!2720 = !DILocalVariable(name: "p", arg: 1, scope: !2716, file: !361, line: 68, type: !24)
!2721 = !DILocalVariable(name: "s", arg: 2, scope: !2716, file: !361, line: 68, type: !27)
!2722 = !DILocation(line: 0, scope: !2716)
!2723 = !DILocalVariable(name: "ptr", arg: 1, scope: !2724, file: !2725, line: 2057, type: !24)
!2724 = distinct !DISubprogram(name: "rpl_realloc", scope: !2725, file: !2725, line: 2057, type: !2717, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2726)
!2725 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2726 = !{!2723, !2727}
!2727 = !DILocalVariable(name: "size", arg: 2, scope: !2724, file: !2725, line: 2057, type: !27)
!2728 = !DILocation(line: 0, scope: !2724, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 70, column: 25, scope: !2716)
!2730 = !DILocation(line: 2059, column: 24, scope: !2724, inlinedAt: !2729)
!2731 = !DILocation(line: 2059, column: 10, scope: !2724, inlinedAt: !2729)
!2732 = !DILocation(line: 0, scope: !2650, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 70, column: 10, scope: !2716)
!2734 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2733)
!2735 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2733)
!2736 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2733)
!2737 = !DILocation(line: 70, column: 3, scope: !2716)
!2738 = distinct !DISubprogram(name: "xirealloc", scope: !361, file: !361, line: 74, type: !2739, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!24, !24, !380}
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "p", arg: 1, scope: !2738, file: !361, line: 74, type: !24)
!2743 = !DILocalVariable(name: "s", arg: 2, scope: !2738, file: !361, line: 74, type: !380)
!2744 = !DILocation(line: 0, scope: !2738)
!2745 = !DILocalVariable(name: "p", arg: 1, scope: !2746, file: !2690, line: 66, type: !24)
!2746 = distinct !DISubprogram(name: "irealloc", scope: !2690, file: !2690, line: 66, type: !2739, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2747)
!2747 = !{!2745, !2748}
!2748 = !DILocalVariable(name: "s", arg: 2, scope: !2746, file: !2690, line: 66, type: !380)
!2749 = !DILocation(line: 0, scope: !2746, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 76, column: 25, scope: !2738)
!2751 = !DILocation(line: 0, scope: !2724, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 68, column: 26, scope: !2746, inlinedAt: !2750)
!2753 = !DILocation(line: 2059, column: 24, scope: !2724, inlinedAt: !2752)
!2754 = !DILocation(line: 2059, column: 10, scope: !2724, inlinedAt: !2752)
!2755 = !DILocation(line: 0, scope: !2650, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 76, column: 10, scope: !2738)
!2757 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2756)
!2758 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2756)
!2759 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2756)
!2760 = !DILocation(line: 76, column: 3, scope: !2738)
!2761 = distinct !DISubprogram(name: "xireallocarray", scope: !361, file: !361, line: 89, type: !2762, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!24, !24, !380, !380}
!2764 = !{!2765, !2766, !2767}
!2765 = !DILocalVariable(name: "p", arg: 1, scope: !2761, file: !361, line: 89, type: !24)
!2766 = !DILocalVariable(name: "n", arg: 2, scope: !2761, file: !361, line: 89, type: !380)
!2767 = !DILocalVariable(name: "s", arg: 3, scope: !2761, file: !361, line: 89, type: !380)
!2768 = !DILocation(line: 0, scope: !2761)
!2769 = !DILocalVariable(name: "p", arg: 1, scope: !2770, file: !2690, line: 98, type: !24)
!2770 = distinct !DISubprogram(name: "ireallocarray", scope: !2690, file: !2690, line: 98, type: !2762, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2771)
!2771 = !{!2769, !2772, !2773}
!2772 = !DILocalVariable(name: "n", arg: 2, scope: !2770, file: !2690, line: 98, type: !380)
!2773 = !DILocalVariable(name: "s", arg: 3, scope: !2770, file: !2690, line: 98, type: !380)
!2774 = !DILocation(line: 0, scope: !2770, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 91, column: 25, scope: !2761)
!2776 = !DILocation(line: 101, column: 13, scope: !2770, inlinedAt: !2775)
!2777 = !DILocation(line: 0, scope: !2650, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 91, column: 10, scope: !2761)
!2779 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2778)
!2780 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2778)
!2781 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2778)
!2782 = !DILocation(line: 91, column: 3, scope: !2761)
!2783 = distinct !DISubprogram(name: "xnmalloc", scope: !361, file: !361, line: 98, type: !2784, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!24, !27, !27}
!2786 = !{!2787, !2788}
!2787 = !DILocalVariable(name: "n", arg: 1, scope: !2783, file: !361, line: 98, type: !27)
!2788 = !DILocalVariable(name: "s", arg: 2, scope: !2783, file: !361, line: 98, type: !27)
!2789 = !DILocation(line: 0, scope: !2783)
!2790 = !DILocation(line: 0, scope: !2642, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 100, column: 10, scope: !2783)
!2792 = !DILocation(line: 85, column: 25, scope: !2642, inlinedAt: !2791)
!2793 = !DILocation(line: 0, scope: !2650, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 85, column: 10, scope: !2642, inlinedAt: !2791)
!2795 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2794)
!2796 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2794)
!2797 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2794)
!2798 = !DILocation(line: 100, column: 3, scope: !2783)
!2799 = distinct !DISubprogram(name: "xinmalloc", scope: !361, file: !361, line: 104, type: !2800, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!24, !380, !380}
!2802 = !{!2803, !2804}
!2803 = !DILocalVariable(name: "n", arg: 1, scope: !2799, file: !361, line: 104, type: !380)
!2804 = !DILocalVariable(name: "s", arg: 2, scope: !2799, file: !361, line: 104, type: !380)
!2805 = !DILocation(line: 0, scope: !2799)
!2806 = !DILocation(line: 0, scope: !2761, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 106, column: 10, scope: !2799)
!2808 = !DILocation(line: 0, scope: !2770, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 91, column: 25, scope: !2761, inlinedAt: !2807)
!2810 = !DILocation(line: 101, column: 13, scope: !2770, inlinedAt: !2809)
!2811 = !DILocation(line: 0, scope: !2650, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 91, column: 10, scope: !2761, inlinedAt: !2807)
!2813 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2812)
!2814 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2812)
!2815 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2812)
!2816 = !DILocation(line: 106, column: 3, scope: !2799)
!2817 = distinct !DISubprogram(name: "x2realloc", scope: !361, file: !361, line: 116, type: !2818, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!24, !24, !367}
!2820 = !{!2821, !2822}
!2821 = !DILocalVariable(name: "p", arg: 1, scope: !2817, file: !361, line: 116, type: !24)
!2822 = !DILocalVariable(name: "ps", arg: 2, scope: !2817, file: !361, line: 116, type: !367)
!2823 = !DILocation(line: 0, scope: !2817)
!2824 = !DILocation(line: 0, scope: !364, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 118, column: 10, scope: !2817)
!2826 = !DILocation(line: 178, column: 14, scope: !364, inlinedAt: !2825)
!2827 = !DILocation(line: 180, column: 9, scope: !2828, inlinedAt: !2825)
!2828 = distinct !DILexicalBlock(scope: !364, file: !361, line: 180, column: 7)
!2829 = !DILocation(line: 180, column: 7, scope: !364, inlinedAt: !2825)
!2830 = !DILocation(line: 182, column: 13, scope: !2831, inlinedAt: !2825)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !361, line: 182, column: 11)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !361, line: 181, column: 5)
!2833 = !DILocation(line: 182, column: 11, scope: !2832, inlinedAt: !2825)
!2834 = !DILocation(line: 197, column: 11, scope: !2835, inlinedAt: !2825)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !361, line: 197, column: 11)
!2836 = distinct !DILexicalBlock(scope: !2828, file: !361, line: 195, column: 5)
!2837 = !DILocation(line: 197, column: 11, scope: !2836, inlinedAt: !2825)
!2838 = !DILocation(line: 198, column: 9, scope: !2835, inlinedAt: !2825)
!2839 = !DILocation(line: 0, scope: !2642, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 201, column: 7, scope: !364, inlinedAt: !2825)
!2841 = !DILocation(line: 85, column: 25, scope: !2642, inlinedAt: !2840)
!2842 = !DILocation(line: 0, scope: !2650, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 85, column: 10, scope: !2642, inlinedAt: !2840)
!2844 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2843)
!2845 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2843)
!2846 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2843)
!2847 = !DILocation(line: 202, column: 7, scope: !364, inlinedAt: !2825)
!2848 = !DILocation(line: 118, column: 3, scope: !2817)
!2849 = !DILocation(line: 0, scope: !364)
!2850 = !DILocation(line: 178, column: 14, scope: !364)
!2851 = !DILocation(line: 180, column: 9, scope: !2828)
!2852 = !DILocation(line: 180, column: 7, scope: !364)
!2853 = !DILocation(line: 182, column: 13, scope: !2831)
!2854 = !DILocation(line: 182, column: 11, scope: !2832)
!2855 = !DILocation(line: 190, column: 30, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2831, file: !361, line: 183, column: 9)
!2857 = !DILocation(line: 191, column: 16, scope: !2856)
!2858 = !DILocation(line: 191, column: 13, scope: !2856)
!2859 = !DILocation(line: 192, column: 9, scope: !2856)
!2860 = !DILocation(line: 197, column: 11, scope: !2835)
!2861 = !DILocation(line: 197, column: 11, scope: !2836)
!2862 = !DILocation(line: 198, column: 9, scope: !2835)
!2863 = !DILocation(line: 0, scope: !2642, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 201, column: 7, scope: !364)
!2865 = !DILocation(line: 85, column: 25, scope: !2642, inlinedAt: !2864)
!2866 = !DILocation(line: 0, scope: !2650, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 85, column: 10, scope: !2642, inlinedAt: !2864)
!2868 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2867)
!2869 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2867)
!2870 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2867)
!2871 = !DILocation(line: 202, column: 7, scope: !364)
!2872 = !DILocation(line: 203, column: 3, scope: !364)
!2873 = !DILocation(line: 0, scope: !376)
!2874 = !DILocation(line: 230, column: 14, scope: !376)
!2875 = !DILocation(line: 238, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !376, file: !361, line: 238, column: 7)
!2877 = !DILocation(line: 238, column: 7, scope: !376)
!2878 = !DILocation(line: 240, column: 9, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !376, file: !361, line: 240, column: 7)
!2880 = !DILocation(line: 240, column: 18, scope: !2879)
!2881 = !DILocation(line: 253, column: 8, scope: !376)
!2882 = !DILocation(line: 258, column: 27, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !361, line: 257, column: 5)
!2884 = distinct !DILexicalBlock(scope: !376, file: !361, line: 256, column: 7)
!2885 = !DILocation(line: 259, column: 32, scope: !2883)
!2886 = !DILocation(line: 260, column: 5, scope: !2883)
!2887 = !DILocation(line: 262, column: 9, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !376, file: !361, line: 262, column: 7)
!2889 = !DILocation(line: 262, column: 7, scope: !376)
!2890 = !DILocation(line: 263, column: 9, scope: !2888)
!2891 = !DILocation(line: 263, column: 5, scope: !2888)
!2892 = !DILocation(line: 264, column: 9, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !376, file: !361, line: 264, column: 7)
!2894 = !DILocation(line: 264, column: 14, scope: !2893)
!2895 = !DILocation(line: 265, column: 7, scope: !2893)
!2896 = !DILocation(line: 265, column: 11, scope: !2893)
!2897 = !DILocation(line: 266, column: 11, scope: !2893)
!2898 = !DILocation(line: 266, column: 26, scope: !2893)
!2899 = !DILocation(line: 267, column: 14, scope: !2893)
!2900 = !DILocation(line: 264, column: 7, scope: !376)
!2901 = !DILocation(line: 268, column: 5, scope: !2893)
!2902 = !DILocation(line: 0, scope: !2716, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 269, column: 8, scope: !376)
!2904 = !DILocation(line: 0, scope: !2724, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 70, column: 25, scope: !2716, inlinedAt: !2903)
!2906 = !DILocation(line: 2059, column: 24, scope: !2724, inlinedAt: !2905)
!2907 = !DILocation(line: 2059, column: 10, scope: !2724, inlinedAt: !2905)
!2908 = !DILocation(line: 0, scope: !2650, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 70, column: 10, scope: !2716, inlinedAt: !2903)
!2910 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2909)
!2911 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2909)
!2912 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2909)
!2913 = !DILocation(line: 270, column: 7, scope: !376)
!2914 = !DILocation(line: 271, column: 3, scope: !376)
!2915 = distinct !DISubprogram(name: "xzalloc", scope: !361, file: !361, line: 279, type: !2670, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2916)
!2916 = !{!2917}
!2917 = !DILocalVariable(name: "s", arg: 1, scope: !2915, file: !361, line: 279, type: !27)
!2918 = !DILocation(line: 0, scope: !2915)
!2919 = !DILocalVariable(name: "n", arg: 1, scope: !2920, file: !361, line: 294, type: !27)
!2920 = distinct !DISubprogram(name: "xcalloc", scope: !361, file: !361, line: 294, type: !2784, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2921)
!2921 = !{!2919, !2922}
!2922 = !DILocalVariable(name: "s", arg: 2, scope: !2920, file: !361, line: 294, type: !27)
!2923 = !DILocation(line: 0, scope: !2920, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 281, column: 10, scope: !2915)
!2925 = !DILocation(line: 296, column: 25, scope: !2920, inlinedAt: !2924)
!2926 = !DILocation(line: 0, scope: !2650, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 296, column: 10, scope: !2920, inlinedAt: !2924)
!2928 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2927)
!2929 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2927)
!2930 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2927)
!2931 = !DILocation(line: 281, column: 3, scope: !2915)
!2932 = !DILocation(line: 0, scope: !2920)
!2933 = !DILocation(line: 296, column: 25, scope: !2920)
!2934 = !DILocation(line: 0, scope: !2650, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 296, column: 10, scope: !2920)
!2936 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2935)
!2937 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2935)
!2938 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2935)
!2939 = !DILocation(line: 296, column: 3, scope: !2920)
!2940 = distinct !DISubprogram(name: "xizalloc", scope: !361, file: !361, line: 285, type: !2683, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2941)
!2941 = !{!2942}
!2942 = !DILocalVariable(name: "s", arg: 1, scope: !2940, file: !361, line: 285, type: !380)
!2943 = !DILocation(line: 0, scope: !2940)
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2945, file: !361, line: 300, type: !380)
!2945 = distinct !DISubprogram(name: "xicalloc", scope: !361, file: !361, line: 300, type: !2800, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2946)
!2946 = !{!2944, !2947}
!2947 = !DILocalVariable(name: "s", arg: 2, scope: !2945, file: !361, line: 300, type: !380)
!2948 = !DILocation(line: 0, scope: !2945, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 287, column: 10, scope: !2940)
!2950 = !DILocalVariable(name: "n", arg: 1, scope: !2951, file: !2690, line: 77, type: !380)
!2951 = distinct !DISubprogram(name: "icalloc", scope: !2690, file: !2690, line: 77, type: !2800, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2952)
!2952 = !{!2950, !2953}
!2953 = !DILocalVariable(name: "s", arg: 2, scope: !2951, file: !2690, line: 77, type: !380)
!2954 = !DILocation(line: 0, scope: !2951, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 302, column: 25, scope: !2945, inlinedAt: !2949)
!2956 = !DILocation(line: 91, column: 10, scope: !2951, inlinedAt: !2955)
!2957 = !DILocation(line: 0, scope: !2650, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 302, column: 10, scope: !2945, inlinedAt: !2949)
!2959 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2958)
!2960 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2958)
!2961 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2958)
!2962 = !DILocation(line: 287, column: 3, scope: !2940)
!2963 = !DILocation(line: 0, scope: !2945)
!2964 = !DILocation(line: 0, scope: !2951, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 302, column: 25, scope: !2945)
!2966 = !DILocation(line: 91, column: 10, scope: !2951, inlinedAt: !2965)
!2967 = !DILocation(line: 0, scope: !2650, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 302, column: 10, scope: !2945)
!2969 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2968)
!2970 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2968)
!2971 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2968)
!2972 = !DILocation(line: 302, column: 3, scope: !2945)
!2973 = distinct !DISubprogram(name: "xmemdup", scope: !361, file: !361, line: 310, type: !2974, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!24, !649, !27}
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "p", arg: 1, scope: !2973, file: !361, line: 310, type: !649)
!2978 = !DILocalVariable(name: "s", arg: 2, scope: !2973, file: !361, line: 310, type: !27)
!2979 = !DILocation(line: 0, scope: !2973)
!2980 = !DILocation(line: 0, scope: !2669, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 312, column: 18, scope: !2973)
!2982 = !DILocation(line: 49, column: 25, scope: !2669, inlinedAt: !2981)
!2983 = !DILocation(line: 0, scope: !2650, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 49, column: 10, scope: !2669, inlinedAt: !2981)
!2985 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !2984)
!2986 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !2984)
!2987 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !2984)
!2988 = !DILocalVariable(name: "__dest", arg: 1, scope: !2989, file: !861, line: 26, type: !864)
!2989 = distinct !DISubprogram(name: "memcpy", scope: !861, file: !861, line: 26, type: !862, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2990)
!2990 = !{!2988, !2991, !2992}
!2991 = !DILocalVariable(name: "__src", arg: 2, scope: !2989, file: !861, line: 26, type: !648)
!2992 = !DILocalVariable(name: "__len", arg: 3, scope: !2989, file: !861, line: 26, type: !27)
!2993 = !DILocation(line: 0, scope: !2989, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 312, column: 10, scope: !2973)
!2995 = !DILocation(line: 29, column: 10, scope: !2989, inlinedAt: !2994)
!2996 = !DILocation(line: 312, column: 3, scope: !2973)
!2997 = distinct !DISubprogram(name: "ximemdup", scope: !361, file: !361, line: 316, type: !2998, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!24, !649, !380}
!3000 = !{!3001, !3002}
!3001 = !DILocalVariable(name: "p", arg: 1, scope: !2997, file: !361, line: 316, type: !649)
!3002 = !DILocalVariable(name: "s", arg: 2, scope: !2997, file: !361, line: 316, type: !380)
!3003 = !DILocation(line: 0, scope: !2997)
!3004 = !DILocation(line: 0, scope: !2682, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 318, column: 18, scope: !2997)
!3006 = !DILocation(line: 0, scope: !2689, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 55, column: 25, scope: !2682, inlinedAt: !3005)
!3008 = !DILocation(line: 57, column: 26, scope: !2689, inlinedAt: !3007)
!3009 = !DILocation(line: 0, scope: !2650, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 55, column: 10, scope: !2682, inlinedAt: !3005)
!3011 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !3010)
!3012 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !3010)
!3013 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !3010)
!3014 = !DILocation(line: 0, scope: !2989, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 318, column: 10, scope: !2997)
!3016 = !DILocation(line: 29, column: 10, scope: !2989, inlinedAt: !3015)
!3017 = !DILocation(line: 318, column: 3, scope: !2997)
!3018 = distinct !DISubprogram(name: "ximemdup0", scope: !361, file: !361, line: 325, type: !3019, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!22, !649, !380}
!3021 = !{!3022, !3023, !3024}
!3022 = !DILocalVariable(name: "p", arg: 1, scope: !3018, file: !361, line: 325, type: !649)
!3023 = !DILocalVariable(name: "s", arg: 2, scope: !3018, file: !361, line: 325, type: !380)
!3024 = !DILocalVariable(name: "result", scope: !3018, file: !361, line: 327, type: !22)
!3025 = !DILocation(line: 0, scope: !3018)
!3026 = !DILocation(line: 327, column: 30, scope: !3018)
!3027 = !DILocation(line: 0, scope: !2682, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 327, column: 18, scope: !3018)
!3029 = !DILocation(line: 0, scope: !2689, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 55, column: 25, scope: !2682, inlinedAt: !3028)
!3031 = !DILocation(line: 57, column: 26, scope: !2689, inlinedAt: !3030)
!3032 = !DILocation(line: 0, scope: !2650, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 55, column: 10, scope: !2682, inlinedAt: !3028)
!3034 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !3033)
!3035 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !3033)
!3036 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !3033)
!3037 = !DILocation(line: 328, column: 3, scope: !3018)
!3038 = !DILocation(line: 328, column: 13, scope: !3018)
!3039 = !DILocation(line: 0, scope: !2989, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 329, column: 10, scope: !3018)
!3041 = !DILocation(line: 29, column: 10, scope: !2989, inlinedAt: !3040)
!3042 = !DILocation(line: 329, column: 3, scope: !3018)
!3043 = distinct !DISubprogram(name: "xstrdup", scope: !361, file: !361, line: 335, type: !643, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3044)
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "string", arg: 1, scope: !3043, file: !361, line: 335, type: !30)
!3046 = !DILocation(line: 0, scope: !3043)
!3047 = !DILocation(line: 337, column: 27, scope: !3043)
!3048 = !DILocation(line: 337, column: 43, scope: !3043)
!3049 = !DILocation(line: 0, scope: !2973, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 337, column: 10, scope: !3043)
!3051 = !DILocation(line: 0, scope: !2669, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 312, column: 18, scope: !2973, inlinedAt: !3050)
!3053 = !DILocation(line: 49, column: 25, scope: !2669, inlinedAt: !3052)
!3054 = !DILocation(line: 0, scope: !2650, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 49, column: 10, scope: !2669, inlinedAt: !3052)
!3056 = !DILocation(line: 39, column: 8, scope: !2657, inlinedAt: !3055)
!3057 = !DILocation(line: 39, column: 7, scope: !2650, inlinedAt: !3055)
!3058 = !DILocation(line: 40, column: 5, scope: !2657, inlinedAt: !3055)
!3059 = !DILocation(line: 0, scope: !2989, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 312, column: 10, scope: !2973, inlinedAt: !3050)
!3061 = !DILocation(line: 29, column: 10, scope: !2989, inlinedAt: !3060)
!3062 = !DILocation(line: 337, column: 3, scope: !3043)
!3063 = distinct !DISubprogram(name: "xalloc_die", scope: !395, file: !395, line: 32, type: !184, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3064)
!3064 = !{!3065}
!3065 = !DILocalVariable(name: "__errstatus", scope: !3066, file: !395, line: 34, type: !3067)
!3066 = distinct !DILexicalBlock(scope: !3063, file: !395, line: 34, column: 3)
!3067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3068 = !DILocation(line: 34, column: 3, scope: !3066)
!3069 = !DILocation(line: 0, scope: !3066)
!3070 = !DILocation(line: 40, column: 3, scope: !3063)
!3071 = distinct !DISubprogram(name: "last_component", scope: !397, file: !397, line: 29, type: !643, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3072)
!3072 = !{!3073, !3074, !3075, !3076}
!3073 = !DILocalVariable(name: "name", arg: 1, scope: !3071, file: !397, line: 29, type: !30)
!3074 = !DILocalVariable(name: "base", scope: !3071, file: !397, line: 31, type: !30)
!3075 = !DILocalVariable(name: "last_was_slash", scope: !3071, file: !397, line: 35, type: !47)
!3076 = !DILocalVariable(name: "p", scope: !3077, file: !397, line: 36, type: !30)
!3077 = distinct !DILexicalBlock(scope: !3071, file: !397, line: 36, column: 3)
!3078 = !DILocation(line: 0, scope: !3071)
!3079 = !DILocation(line: 32, column: 3, scope: !3071)
!3080 = !DILocation(line: 32, column: 10, scope: !3071)
!3081 = !DILocation(line: 33, column: 9, scope: !3071)
!3082 = distinct !{!3082, !3079, !3081, !498}
!3083 = !DILocation(line: 36, column: 30, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3077, file: !397, line: 36, column: 3)
!3085 = !DILocation(line: 31, column: 15, scope: !3071)
!3086 = !DILocation(line: 0, scope: !3077)
!3087 = !DILocation(line: 36, column: 3, scope: !3077)
!3088 = !DILocation(line: 47, column: 3, scope: !3071)
!3089 = !DILocation(line: 40, column: 16, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !397, line: 38, column: 11)
!3091 = distinct !DILexicalBlock(scope: !3084, file: !397, line: 37, column: 5)
!3092 = !DILocation(line: 36, column: 35, scope: !3084)
!3093 = !DILocation(line: 36, column: 3, scope: !3084)
!3094 = distinct !{!3094, !3087, !3095, !498}
!3095 = !DILocation(line: 45, column: 5, scope: !3077)
!3096 = distinct !DISubprogram(name: "base_len", scope: !397, file: !397, line: 51, type: !3097, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3099)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!27, !30}
!3099 = !{!3100, !3101, !3102}
!3100 = !DILocalVariable(name: "name", arg: 1, scope: !3096, file: !397, line: 51, type: !30)
!3101 = !DILocalVariable(name: "len", scope: !3096, file: !397, line: 53, type: !27)
!3102 = !DILocalVariable(name: "prefix_len", scope: !3096, file: !397, line: 61, type: !27)
!3103 = !DILocation(line: 0, scope: !3096)
!3104 = !DILocation(line: 54, column: 14, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3096, file: !397, line: 54, column: 3)
!3106 = !DILocation(line: 54, column: 8, scope: !3105)
!3107 = !DILocation(line: 0, scope: !3105)
!3108 = !DILocation(line: 54, column: 32, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !397, line: 54, column: 3)
!3110 = !DILocation(line: 54, column: 38, scope: !3109)
!3111 = !DILocation(line: 54, column: 41, scope: !3109)
!3112 = !DILocation(line: 54, column: 3, scope: !3105)
!3113 = distinct !{!3113, !3112, !3114, !498}
!3114 = !DILocation(line: 55, column: 5, scope: !3105)
!3115 = !DILocation(line: 66, column: 3, scope: !3096)
!3116 = distinct !DISubprogram(name: "close_stream", scope: !399, file: !399, line: 55, type: !3117, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !3153)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!25, !3119}
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3121)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3122)
!3122 = !{!3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3121, file: !64, line: 51, baseType: !25, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3121, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3121, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3121, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3121, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3121, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3121, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3121, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3121, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3121, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3121, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3121, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3121, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3121, file: !64, line: 70, baseType: !3137, size: 64, offset: 832)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3121, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3121, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3121, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3121, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3121, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3121, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3121, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3121, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3121, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3121, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3121, file: !64, line: 93, baseType: !3137, size: 64, offset: 1344)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3121, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3121, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3121, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3121, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3153 = !{!3154, !3155, !3157, !3158}
!3154 = !DILocalVariable(name: "stream", arg: 1, scope: !3116, file: !399, line: 55, type: !3119)
!3155 = !DILocalVariable(name: "some_pending", scope: !3116, file: !399, line: 57, type: !3156)
!3156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!3157 = !DILocalVariable(name: "prev_fail", scope: !3116, file: !399, line: 58, type: !3156)
!3158 = !DILocalVariable(name: "fclose_fail", scope: !3116, file: !399, line: 59, type: !3156)
!3159 = !DILocation(line: 0, scope: !3116)
!3160 = !DILocation(line: 57, column: 30, scope: !3116)
!3161 = !DILocalVariable(name: "__stream", arg: 1, scope: !3162, file: !774, line: 135, type: !3119)
!3162 = distinct !DISubprogram(name: "ferror_unlocked", scope: !774, file: !774, line: 135, type: !3117, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !3163)
!3163 = !{!3161}
!3164 = !DILocation(line: 0, scope: !3162, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 58, column: 27, scope: !3116)
!3166 = !DILocation(line: 137, column: 10, scope: !3162, inlinedAt: !3165)
!3167 = !{!782, !532, i64 0}
!3168 = !DILocation(line: 58, column: 43, scope: !3116)
!3169 = !DILocation(line: 59, column: 29, scope: !3116)
!3170 = !DILocation(line: 59, column: 45, scope: !3116)
!3171 = !DILocation(line: 69, column: 17, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3116, file: !399, line: 69, column: 7)
!3173 = !DILocation(line: 57, column: 50, scope: !3116)
!3174 = !DILocation(line: 69, column: 33, scope: !3172)
!3175 = !DILocation(line: 69, column: 53, scope: !3172)
!3176 = !DILocation(line: 69, column: 59, scope: !3172)
!3177 = !DILocation(line: 69, column: 7, scope: !3116)
!3178 = !DILocation(line: 71, column: 11, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3172, file: !399, line: 70, column: 5)
!3180 = !DILocation(line: 72, column: 9, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3179, file: !399, line: 71, column: 11)
!3182 = !DILocation(line: 72, column: 15, scope: !3181)
!3183 = !DILocation(line: 77, column: 1, scope: !3116)
!3184 = distinct !DISubprogram(name: "rpl_fclose", scope: !401, file: !401, line: 58, type: !3185, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3221)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!25, !3187}
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3189)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3189, file: !64, line: 51, baseType: !25, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3189, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3189, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3189, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3189, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3189, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3189, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3189, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3189, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3189, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3189, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3189, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3189, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3189, file: !64, line: 70, baseType: !3205, size: 64, offset: 832)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3189, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3189, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3189, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3189, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3189, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3189, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3189, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3189, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3189, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3189, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3189, file: !64, line: 93, baseType: !3205, size: 64, offset: 1344)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3189, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3189, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3189, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3189, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3221 = !{!3222, !3223, !3224, !3225}
!3222 = !DILocalVariable(name: "fp", arg: 1, scope: !3184, file: !401, line: 58, type: !3187)
!3223 = !DILocalVariable(name: "saved_errno", scope: !3184, file: !401, line: 60, type: !25)
!3224 = !DILocalVariable(name: "fd", scope: !3184, file: !401, line: 63, type: !25)
!3225 = !DILocalVariable(name: "result", scope: !3184, file: !401, line: 74, type: !25)
!3226 = !DILocation(line: 0, scope: !3184)
!3227 = !DILocation(line: 63, column: 12, scope: !3184)
!3228 = !DILocation(line: 64, column: 10, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3184, file: !401, line: 64, column: 7)
!3230 = !DILocation(line: 64, column: 7, scope: !3184)
!3231 = !DILocation(line: 65, column: 12, scope: !3229)
!3232 = !DILocation(line: 65, column: 5, scope: !3229)
!3233 = !DILocation(line: 70, column: 9, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3184, file: !401, line: 70, column: 7)
!3235 = !DILocation(line: 70, column: 23, scope: !3234)
!3236 = !DILocation(line: 70, column: 33, scope: !3234)
!3237 = !DILocation(line: 70, column: 26, scope: !3234)
!3238 = !DILocation(line: 70, column: 59, scope: !3234)
!3239 = !DILocation(line: 71, column: 7, scope: !3234)
!3240 = !DILocation(line: 71, column: 10, scope: !3234)
!3241 = !DILocation(line: 70, column: 7, scope: !3184)
!3242 = !DILocation(line: 100, column: 12, scope: !3184)
!3243 = !DILocation(line: 105, column: 7, scope: !3184)
!3244 = !DILocation(line: 72, column: 19, scope: !3234)
!3245 = !DILocation(line: 105, column: 19, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3184, file: !401, line: 105, column: 7)
!3247 = !DILocation(line: 107, column: 13, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3246, file: !401, line: 106, column: 5)
!3249 = !DILocation(line: 109, column: 5, scope: !3248)
!3250 = !DILocation(line: 112, column: 1, scope: !3184)
!3251 = !DISubprogram(name: "fileno", scope: !157, file: !157, line: 809, type: !3185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!3252 = !DISubprogram(name: "fclose", scope: !157, file: !157, line: 178, type: !3185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!3253 = !DISubprogram(name: "lseek", scope: !3254, file: !3254, line: 339, type: !3255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!3254 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!86, !25, !86, !25}
!3257 = distinct !DISubprogram(name: "rpl_fflush", scope: !403, file: !403, line: 130, type: !3258, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3294)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!25, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3262, file: !64, line: 51, baseType: !25, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3262, file: !64, line: 54, baseType: !22, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3262, file: !64, line: 55, baseType: !22, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3262, file: !64, line: 56, baseType: !22, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3262, file: !64, line: 57, baseType: !22, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3262, file: !64, line: 58, baseType: !22, size: 64, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3262, file: !64, line: 59, baseType: !22, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3262, file: !64, line: 60, baseType: !22, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3262, file: !64, line: 61, baseType: !22, size: 64, offset: 512)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3262, file: !64, line: 64, baseType: !22, size: 64, offset: 576)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3262, file: !64, line: 65, baseType: !22, size: 64, offset: 640)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3262, file: !64, line: 66, baseType: !22, size: 64, offset: 704)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3262, file: !64, line: 68, baseType: !79, size: 64, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3262, file: !64, line: 70, baseType: !3278, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3262, file: !64, line: 72, baseType: !25, size: 32, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3262, file: !64, line: 73, baseType: !25, size: 32, offset: 928)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3262, file: !64, line: 74, baseType: !86, size: 64, offset: 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3262, file: !64, line: 77, baseType: !26, size: 16, offset: 1024)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3262, file: !64, line: 78, baseType: !91, size: 8, offset: 1040)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3262, file: !64, line: 79, baseType: !93, size: 8, offset: 1048)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3262, file: !64, line: 81, baseType: !97, size: 64, offset: 1088)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3262, file: !64, line: 89, baseType: !100, size: 64, offset: 1152)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3262, file: !64, line: 91, baseType: !102, size: 64, offset: 1216)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3262, file: !64, line: 92, baseType: !105, size: 64, offset: 1280)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3262, file: !64, line: 93, baseType: !3278, size: 64, offset: 1344)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3262, file: !64, line: 94, baseType: !24, size: 64, offset: 1408)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3262, file: !64, line: 95, baseType: !27, size: 64, offset: 1472)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3262, file: !64, line: 96, baseType: !25, size: 32, offset: 1536)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3262, file: !64, line: 98, baseType: !112, size: 160, offset: 1568)
!3294 = !{!3295}
!3295 = !DILocalVariable(name: "stream", arg: 1, scope: !3257, file: !403, line: 130, type: !3260)
!3296 = !DILocation(line: 0, scope: !3257)
!3297 = !DILocation(line: 151, column: 14, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3257, file: !403, line: 151, column: 7)
!3299 = !DILocation(line: 151, column: 22, scope: !3298)
!3300 = !DILocation(line: 151, column: 27, scope: !3298)
!3301 = !DILocation(line: 151, column: 7, scope: !3257)
!3302 = !DILocation(line: 152, column: 12, scope: !3298)
!3303 = !DILocation(line: 152, column: 5, scope: !3298)
!3304 = !DILocalVariable(name: "fp", arg: 1, scope: !3305, file: !403, line: 42, type: !3260)
!3305 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !403, file: !403, line: 42, type: !3306, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !3260}
!3308 = !{!3304}
!3309 = !DILocation(line: 0, scope: !3305, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 157, column: 3, scope: !3257)
!3311 = !DILocation(line: 44, column: 12, scope: !3312, inlinedAt: !3310)
!3312 = distinct !DILexicalBlock(scope: !3305, file: !403, line: 44, column: 7)
!3313 = !DILocation(line: 44, column: 19, scope: !3312, inlinedAt: !3310)
!3314 = !DILocation(line: 44, column: 7, scope: !3305, inlinedAt: !3310)
!3315 = !DILocation(line: 46, column: 5, scope: !3312, inlinedAt: !3310)
!3316 = !DILocation(line: 159, column: 10, scope: !3257)
!3317 = !DILocation(line: 159, column: 3, scope: !3257)
!3318 = !DILocation(line: 236, column: 1, scope: !3257)
!3319 = !DISubprogram(name: "fflush", scope: !157, file: !157, line: 230, type: !3258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!3320 = distinct !DISubprogram(name: "rpl_fseeko", scope: !405, file: !405, line: 28, type: !3321, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3358)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!25, !3323, !3357, !25}
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
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !157, line: 63, baseType: !86)
!3358 = !{!3359, !3360, !3361, !3362}
!3359 = !DILocalVariable(name: "fp", arg: 1, scope: !3320, file: !405, line: 28, type: !3323)
!3360 = !DILocalVariable(name: "offset", arg: 2, scope: !3320, file: !405, line: 28, type: !3357)
!3361 = !DILocalVariable(name: "whence", arg: 3, scope: !3320, file: !405, line: 28, type: !25)
!3362 = !DILocalVariable(name: "pos", scope: !3363, file: !405, line: 123, type: !3357)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !405, line: 119, column: 5)
!3364 = distinct !DILexicalBlock(scope: !3320, file: !405, line: 55, column: 7)
!3365 = !DILocation(line: 0, scope: !3320)
!3366 = !DILocation(line: 55, column: 12, scope: !3364)
!3367 = !{!782, !439, i64 16}
!3368 = !DILocation(line: 55, column: 33, scope: !3364)
!3369 = !{!782, !439, i64 8}
!3370 = !DILocation(line: 55, column: 25, scope: !3364)
!3371 = !DILocation(line: 56, column: 7, scope: !3364)
!3372 = !DILocation(line: 56, column: 15, scope: !3364)
!3373 = !DILocation(line: 56, column: 37, scope: !3364)
!3374 = !{!782, !439, i64 32}
!3375 = !DILocation(line: 56, column: 29, scope: !3364)
!3376 = !DILocation(line: 57, column: 7, scope: !3364)
!3377 = !DILocation(line: 57, column: 15, scope: !3364)
!3378 = !{!782, !439, i64 72}
!3379 = !DILocation(line: 57, column: 29, scope: !3364)
!3380 = !DILocation(line: 55, column: 7, scope: !3320)
!3381 = !DILocation(line: 123, column: 26, scope: !3363)
!3382 = !DILocation(line: 123, column: 19, scope: !3363)
!3383 = !DILocation(line: 0, scope: !3363)
!3384 = !DILocation(line: 124, column: 15, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3363, file: !405, line: 124, column: 11)
!3386 = !DILocation(line: 124, column: 11, scope: !3363)
!3387 = !DILocation(line: 135, column: 12, scope: !3363)
!3388 = !DILocation(line: 135, column: 19, scope: !3363)
!3389 = !DILocation(line: 136, column: 12, scope: !3363)
!3390 = !DILocation(line: 136, column: 20, scope: !3363)
!3391 = !{!782, !783, i64 144}
!3392 = !DILocation(line: 167, column: 7, scope: !3363)
!3393 = !DILocation(line: 169, column: 10, scope: !3320)
!3394 = !DILocation(line: 169, column: 3, scope: !3320)
!3395 = !DILocation(line: 170, column: 1, scope: !3320)
!3396 = !DISubprogram(name: "fseeko", scope: !157, file: !157, line: 736, type: !3397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!25, !3323, !86, !25}
!3399 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !334, file: !334, line: 100, type: !3400, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3403)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!27, !1178, !30, !27, !3402}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3403 = !{!3404, !3405, !3406, !3407, !3408}
!3404 = !DILocalVariable(name: "pwc", arg: 1, scope: !3399, file: !334, line: 100, type: !1178)
!3405 = !DILocalVariable(name: "s", arg: 2, scope: !3399, file: !334, line: 100, type: !30)
!3406 = !DILocalVariable(name: "n", arg: 3, scope: !3399, file: !334, line: 100, type: !27)
!3407 = !DILocalVariable(name: "ps", arg: 4, scope: !3399, file: !334, line: 100, type: !3402)
!3408 = !DILocalVariable(name: "ret", scope: !3399, file: !334, line: 130, type: !27)
!3409 = !DILocation(line: 0, scope: !3399)
!3410 = !DILocation(line: 105, column: 9, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3399, file: !334, line: 105, column: 7)
!3412 = !DILocation(line: 105, column: 7, scope: !3399)
!3413 = !DILocation(line: 117, column: 10, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3399, file: !334, line: 117, column: 7)
!3415 = !DILocation(line: 117, column: 7, scope: !3399)
!3416 = !DILocation(line: 130, column: 16, scope: !3399)
!3417 = !DILocation(line: 135, column: 11, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3399, file: !334, line: 135, column: 7)
!3419 = !DILocation(line: 135, column: 25, scope: !3418)
!3420 = !DILocation(line: 135, column: 30, scope: !3418)
!3421 = !DILocation(line: 135, column: 7, scope: !3399)
!3422 = !DILocalVariable(name: "ps", arg: 1, scope: !3423, file: !1152, line: 1135, type: !3402)
!3423 = distinct !DISubprogram(name: "mbszero", scope: !1152, file: !1152, line: 1135, type: !3424, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !3402}
!3426 = !{!3422}
!3427 = !DILocation(line: 0, scope: !3423, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 137, column: 5, scope: !3418)
!3429 = !DILocalVariable(name: "__dest", arg: 1, scope: !3430, file: !861, line: 57, type: !24)
!3430 = distinct !DISubprogram(name: "memset", scope: !861, file: !861, line: 57, type: !1161, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3431)
!3431 = !{!3429, !3432, !3433}
!3432 = !DILocalVariable(name: "__ch", arg: 2, scope: !3430, file: !861, line: 57, type: !25)
!3433 = !DILocalVariable(name: "__len", arg: 3, scope: !3430, file: !861, line: 57, type: !27)
!3434 = !DILocation(line: 0, scope: !3430, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 1137, column: 3, scope: !3423, inlinedAt: !3428)
!3436 = !DILocation(line: 59, column: 10, scope: !3430, inlinedAt: !3435)
!3437 = !DILocation(line: 137, column: 5, scope: !3418)
!3438 = !DILocation(line: 138, column: 11, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3399, file: !334, line: 138, column: 7)
!3440 = !DILocation(line: 138, column: 7, scope: !3399)
!3441 = !DILocation(line: 139, column: 5, scope: !3439)
!3442 = !DILocation(line: 143, column: 26, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3399, file: !334, line: 143, column: 7)
!3444 = !DILocation(line: 143, column: 41, scope: !3443)
!3445 = !DILocation(line: 143, column: 7, scope: !3399)
!3446 = !DILocation(line: 145, column: 15, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !334, line: 145, column: 11)
!3448 = distinct !DILexicalBlock(scope: !3443, file: !334, line: 144, column: 5)
!3449 = !DILocation(line: 145, column: 11, scope: !3448)
!3450 = !DILocation(line: 146, column: 32, scope: !3447)
!3451 = !DILocation(line: 146, column: 16, scope: !3447)
!3452 = !DILocation(line: 146, column: 14, scope: !3447)
!3453 = !DILocation(line: 146, column: 9, scope: !3447)
!3454 = !DILocation(line: 286, column: 1, scope: !3399)
!3455 = !DISubprogram(name: "mbsinit", scope: !3456, file: !3456, line: 293, type: !3457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !447)
!3456 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!25, !3459}
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!3461 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !407, file: !407, line: 27, type: !2634, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3462)
!3462 = !{!3463, !3464, !3465, !3466}
!3463 = !DILocalVariable(name: "ptr", arg: 1, scope: !3461, file: !407, line: 27, type: !24)
!3464 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3461, file: !407, line: 27, type: !27)
!3465 = !DILocalVariable(name: "size", arg: 3, scope: !3461, file: !407, line: 27, type: !27)
!3466 = !DILocalVariable(name: "nbytes", scope: !3461, file: !407, line: 29, type: !27)
!3467 = !DILocation(line: 0, scope: !3461)
!3468 = !DILocation(line: 30, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3461, file: !407, line: 30, column: 7)
!3470 = !DILocalVariable(name: "ptr", arg: 1, scope: !3471, file: !2725, line: 2057, type: !24)
!3471 = distinct !DISubprogram(name: "rpl_realloc", scope: !2725, file: !2725, line: 2057, type: !2717, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3472)
!3472 = !{!3470, !3473}
!3473 = !DILocalVariable(name: "size", arg: 2, scope: !3471, file: !2725, line: 2057, type: !27)
!3474 = !DILocation(line: 0, scope: !3471, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 37, column: 10, scope: !3461)
!3476 = !DILocation(line: 2059, column: 24, scope: !3471, inlinedAt: !3475)
!3477 = !DILocation(line: 2059, column: 10, scope: !3471, inlinedAt: !3475)
!3478 = !DILocation(line: 37, column: 3, scope: !3461)
!3479 = !DILocation(line: 32, column: 7, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3469, file: !407, line: 31, column: 5)
!3481 = !DILocation(line: 32, column: 13, scope: !3480)
!3482 = !DILocation(line: 33, column: 7, scope: !3480)
!3483 = !DILocation(line: 38, column: 1, scope: !3461)
!3484 = distinct !DISubprogram(name: "hard_locale", scope: !410, file: !410, line: 28, type: !3485, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!47, !25}
!3487 = !{!3488, !3489}
!3488 = !DILocalVariable(name: "category", arg: 1, scope: !3484, file: !410, line: 28, type: !25)
!3489 = !DILocalVariable(name: "locale", scope: !3484, file: !410, line: 30, type: !3490)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !3491)
!3491 = !{!3492}
!3492 = !DISubrange(count: 257)
!3493 = !DILocation(line: 0, scope: !3484)
!3494 = !DILocation(line: 30, column: 3, scope: !3484)
!3495 = !DILocation(line: 30, column: 8, scope: !3484)
!3496 = !DILocation(line: 32, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3484, file: !410, line: 32, column: 7)
!3498 = !DILocation(line: 32, column: 7, scope: !3484)
!3499 = !DILocalVariable(name: "__s1", arg: 1, scope: !3500, file: !482, line: 1359, type: !30)
!3500 = distinct !DISubprogram(name: "streq", scope: !482, file: !482, line: 1359, type: !483, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3501)
!3501 = !{!3499, !3502}
!3502 = !DILocalVariable(name: "__s2", arg: 2, scope: !3500, file: !482, line: 1359, type: !30)
!3503 = !DILocation(line: 0, scope: !3500, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 35, column: 9, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3484, file: !410, line: 35, column: 7)
!3506 = !DILocation(line: 1361, column: 11, scope: !3500, inlinedAt: !3504)
!3507 = !DILocation(line: 1361, column: 10, scope: !3500, inlinedAt: !3504)
!3508 = !DILocation(line: 35, column: 29, scope: !3505)
!3509 = !DILocation(line: 0, scope: !3500, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 35, column: 32, scope: !3505)
!3511 = !DILocation(line: 1361, column: 11, scope: !3500, inlinedAt: !3510)
!3512 = !DILocation(line: 1361, column: 10, scope: !3500, inlinedAt: !3510)
!3513 = !DILocation(line: 35, column: 7, scope: !3484)
!3514 = !DILocation(line: 46, column: 3, scope: !3484)
!3515 = !DILocation(line: 47, column: 1, scope: !3484)
!3516 = distinct !DISubprogram(name: "setlocale_null_r", scope: !412, file: !412, line: 154, type: !3517, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3519)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!25, !25, !22, !27}
!3519 = !{!3520, !3521, !3522}
!3520 = !DILocalVariable(name: "category", arg: 1, scope: !3516, file: !412, line: 154, type: !25)
!3521 = !DILocalVariable(name: "buf", arg: 2, scope: !3516, file: !412, line: 154, type: !22)
!3522 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3516, file: !412, line: 154, type: !27)
!3523 = !DILocation(line: 0, scope: !3516)
!3524 = !DILocation(line: 159, column: 10, scope: !3516)
!3525 = !DILocation(line: 159, column: 3, scope: !3516)
!3526 = distinct !DISubprogram(name: "setlocale_null", scope: !412, file: !412, line: 186, type: !3527, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!30, !25}
!3529 = !{!3530}
!3530 = !DILocalVariable(name: "category", arg: 1, scope: !3526, file: !412, line: 186, type: !25)
!3531 = !DILocation(line: 0, scope: !3526)
!3532 = !DILocation(line: 189, column: 10, scope: !3526)
!3533 = !DILocation(line: 189, column: 3, scope: !3526)
!3534 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !414, file: !414, line: 35, type: !3527, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3535)
!3535 = !{!3536, !3537}
!3536 = !DILocalVariable(name: "category", arg: 1, scope: !3534, file: !414, line: 35, type: !25)
!3537 = !DILocalVariable(name: "result", scope: !3534, file: !414, line: 37, type: !30)
!3538 = !DILocation(line: 0, scope: !3534)
!3539 = !DILocation(line: 37, column: 24, scope: !3534)
!3540 = !DILocation(line: 62, column: 3, scope: !3534)
!3541 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !414, file: !414, line: 66, type: !3517, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3542)
!3542 = !{!3543, !3544, !3545, !3546, !3547}
!3543 = !DILocalVariable(name: "category", arg: 1, scope: !3541, file: !414, line: 66, type: !25)
!3544 = !DILocalVariable(name: "buf", arg: 2, scope: !3541, file: !414, line: 66, type: !22)
!3545 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3541, file: !414, line: 66, type: !27)
!3546 = !DILocalVariable(name: "result", scope: !3541, file: !414, line: 111, type: !30)
!3547 = !DILocalVariable(name: "length", scope: !3548, file: !414, line: 125, type: !27)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !414, line: 124, column: 5)
!3549 = distinct !DILexicalBlock(scope: !3541, file: !414, line: 113, column: 7)
!3550 = !DILocation(line: 0, scope: !3541)
!3551 = !DILocation(line: 0, scope: !3534, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 111, column: 24, scope: !3541)
!3553 = !DILocation(line: 37, column: 24, scope: !3534, inlinedAt: !3552)
!3554 = !DILocation(line: 113, column: 14, scope: !3549)
!3555 = !DILocation(line: 113, column: 7, scope: !3541)
!3556 = !DILocation(line: 116, column: 19, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !414, line: 116, column: 11)
!3558 = distinct !DILexicalBlock(scope: !3549, file: !414, line: 114, column: 5)
!3559 = !DILocation(line: 116, column: 11, scope: !3558)
!3560 = !DILocation(line: 120, column: 16, scope: !3557)
!3561 = !DILocation(line: 120, column: 9, scope: !3557)
!3562 = !DILocation(line: 125, column: 23, scope: !3548)
!3563 = !DILocation(line: 0, scope: !3548)
!3564 = !DILocation(line: 126, column: 18, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3548, file: !414, line: 126, column: 11)
!3566 = !DILocation(line: 126, column: 11, scope: !3548)
!3567 = !DILocation(line: 128, column: 39, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3565, file: !414, line: 127, column: 9)
!3569 = !DILocalVariable(name: "__dest", arg: 1, scope: !3570, file: !861, line: 26, type: !864)
!3570 = distinct !DISubprogram(name: "memcpy", scope: !861, file: !861, line: 26, type: !862, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3571)
!3571 = !{!3569, !3572, !3573}
!3572 = !DILocalVariable(name: "__src", arg: 2, scope: !3570, file: !861, line: 26, type: !648)
!3573 = !DILocalVariable(name: "__len", arg: 3, scope: !3570, file: !861, line: 26, type: !27)
!3574 = !DILocation(line: 0, scope: !3570, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 128, column: 11, scope: !3568)
!3576 = !DILocation(line: 29, column: 10, scope: !3570, inlinedAt: !3575)
!3577 = !DILocation(line: 129, column: 11, scope: !3568)
!3578 = !DILocation(line: 133, column: 23, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !414, line: 133, column: 15)
!3580 = distinct !DILexicalBlock(scope: !3565, file: !414, line: 132, column: 9)
!3581 = !DILocation(line: 133, column: 15, scope: !3580)
!3582 = !DILocation(line: 138, column: 44, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3579, file: !414, line: 134, column: 13)
!3584 = !DILocation(line: 0, scope: !3570, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 138, column: 15, scope: !3583)
!3586 = !DILocation(line: 29, column: 10, scope: !3570, inlinedAt: !3585)
!3587 = !DILocation(line: 139, column: 15, scope: !3583)
!3588 = !DILocation(line: 139, column: 32, scope: !3583)
!3589 = !DILocation(line: 140, column: 13, scope: !3583)
!3590 = !DILocation(line: 0, scope: !3549)
!3591 = !DILocation(line: 145, column: 1, scope: !3541)
