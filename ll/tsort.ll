; ModuleID = 'src/tsort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.item = type { i8*, %struct.item*, %struct.item*, i8, i8, i64, %struct.item*, %struct.successor* }
%struct.successor = type { %struct.item*, %struct.successor* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.tokenbuffer = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"Usage: %s [OPTION] [FILE]\0AWrite totally ordered list consistent with the partial ordering in FILE.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"tsort\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@main.long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.9 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Mark Kettenis\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !61
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
@.str.52 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"src/tsort.c\00", align 1
@__PRETTY_FUNCTION__.tsort = private unnamed_addr constant [25 x i8] c"void tsort(const char *)\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"%s: input contains an odd number of tokens\00", align 1
@n_strings = internal unnamed_addr global i64 0, align 8, !dbg !148
@head = internal unnamed_addr global %struct.item* null, align 8, !dbg !150
@zeros = internal unnamed_addr global %struct.item* null, align 8, !dbg !168
@.str.58 = private unnamed_addr constant [27 x i8] c"%s: input contains a loop:\00", align 1
@loop = internal unnamed_addr global %struct.item* null, align 8, !dbg !170
@.str.59 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"0 < a\00", align 1
@__PRETTY_FUNCTION__.search_item = private unnamed_addr constant [54 x i8] c"struct item *search_item(struct item *, const char *)\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"0 < cmp\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !189
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !194
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !199
@.str.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !201
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !237
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !207
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !233
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !235
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !242
@.str.71 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.72 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !248
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.78, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.84, i32 0, i32 0), i8* null], align 8, !dbg !284
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !296
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !314
@slotvec = internal unnamed_addr global %struct.tokenbuffer* @slotvec0, align 8, !dbg !344
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !351
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !316
@slotvec0 = internal global %struct.tokenbuffer { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !353
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !302
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !321
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.125 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !359
@exit_failure = dso_local global i32 1, align 4, !dbg !367
@.str.148 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.146 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.147 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !373
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !476 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !480, metadata !DIExpression()), !dbg !481
  %3 = icmp eq i32 %0, 0, !dbg !482
  br i1 %3, label %9, label %4, !dbg !484

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !485, !tbaa !487
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !485
  %7 = load i8*, i8** @program_name, align 8, !dbg !485, !tbaa !487
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !485
  br label %55, !dbg !485

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !491
  %11 = load i8*, i8** @program_name, align 8, !dbg !491, !tbaa !487
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !491
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #33, !dbg !493
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !493, !tbaa !487
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14) #33, !dbg !493
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !497
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !497, !tbaa !487
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !497
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !498
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !498
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !499
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !499
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !500, metadata !DIExpression()) #33, !dbg !519
  %21 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !521
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %21) #33, !dbg !521
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !505, metadata !DIExpression()) #33, !dbg !522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %21, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !522
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !514, metadata !DIExpression()) #33, !dbg !519
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !515, metadata !DIExpression()) #33, !dbg !519
  %22 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !523
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !515, metadata !DIExpression()) #33, !dbg !519
  br label %23, !dbg !524

23:                                               ; preds = %28, %9
  %24 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %25 = phi %struct.infomap* [ %29, %28 ], [ %22, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !515, metadata !DIExpression()) #33, !dbg !519
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !532
  call void @llvm.dbg.value(metadata i8* %24, metadata !531, metadata !DIExpression()) #33, !dbg !532
  %26 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %24) #34, !dbg !534
  %27 = icmp eq i32 %26, 0, !dbg !535
  br i1 %27, label %33, label %28, !dbg !524

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %25, i64 1, !dbg !536
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !515, metadata !DIExpression()) #33, !dbg !519
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 0, i32 0, !dbg !537
  %31 = load i8*, i8** %30, align 8, !dbg !537, !tbaa !538
  %32 = icmp eq i8* %31, null, !dbg !540
  br i1 %32, label %33, label %23, !dbg !541, !llvm.loop !542

33:                                               ; preds = %28, %23
  %34 = phi %struct.infomap* [ %25, %23 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 0, i32 1, !dbg !544
  %36 = load i8*, i8** %35, align 8, !dbg !544, !tbaa !546
  %37 = icmp eq i8* %36, null, !dbg !547
  %38 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %36, !dbg !548
  call void @llvm.dbg.value(metadata i8* %38, metadata !514, metadata !DIExpression()) #33, !dbg !519
  tail call void @emit_bug_reporting_address() #33, !dbg !549
  %39 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !550
  call void @llvm.dbg.value(metadata i8* %39, metadata !517, metadata !DIExpression()) #33, !dbg !519
  %40 = icmp eq i8* %39, null, !dbg !551
  br i1 %40, label %48, label %41, !dbg !553

41:                                               ; preds = %33
  %42 = tail call i32 @strncmp(i8* noundef nonnull %39, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 noundef 3) #34, !dbg !554
  %43 = icmp eq i32 %42, 0, !dbg !554
  br i1 %43, label %48, label %44, !dbg !555

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #33, !dbg !556
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !556, !tbaa !487
  %47 = tail call i32 @fputs_unlocked(i8* noundef %45, %struct._IO_FILE* noundef %46) #33, !dbg !556
  br label %48, !dbg !558

48:                                               ; preds = %33, %41, %44
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !559
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !531, metadata !DIExpression()) #33, !dbg !559
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !519
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #33, !dbg !561
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %49, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !561
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #33, !dbg !562
  %52 = icmp eq i8* %38, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), !dbg !562
  %53 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !562
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %51, i8* noundef %38, i8* noundef %53) #33, !dbg !562
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #33, !dbg !563
  br label %55

55:                                               ; preds = %48, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !564
  unreachable, !dbg !564
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !565 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !569 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !63 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !68, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i8* %0, metadata !69, metadata !DIExpression()), !dbg !574
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !575, !tbaa !576
  %3 = icmp eq i32 %2, -1, !dbg !578
  br i1 %3, label %4, label %16, !dbg !579

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #33, !dbg !580
  call void @llvm.dbg.value(metadata i8* %5, metadata !70, metadata !DIExpression()), !dbg !581
  %6 = icmp eq i8* %5, null, !dbg !582
  br i1 %6, label %14, label %7, !dbg !583

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !584, !tbaa !585
  %9 = icmp eq i8 %8, 0, !dbg !584
  br i1 %9, label %14, label %10, !dbg !586

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !525, metadata !DIExpression()) #33, !dbg !587
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), metadata !531, metadata !DIExpression()) #33, !dbg !587
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #34, !dbg !589
  %12 = icmp eq i32 %11, 0, !dbg !590
  %13 = zext i1 %12 to i32, !dbg !586
  br label %14, !dbg !586

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !591, !tbaa !576
  br label %16, !dbg !592

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !593
  %18 = icmp eq i32 %17, 0, !dbg !593
  br i1 %18, label %22, label %19, !dbg !595

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !596, !tbaa !487
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !596
  br label %121, !dbg !598

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !73, metadata !DIExpression()), !dbg !574
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #34, !dbg !599
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !600
  call void @llvm.dbg.value(metadata i8* %24, metadata !75, metadata !DIExpression()), !dbg !574
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !601
  call void @llvm.dbg.value(metadata i8* %25, metadata !76, metadata !DIExpression()), !dbg !574
  %26 = icmp eq i8* %25, null, !dbg !602
  br i1 %26, label %53, label %27, !dbg !603

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !604
  br i1 %28, label %53, label %29, !dbg !605

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !77, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i64 0, metadata !81, metadata !DIExpression()), !dbg !606
  %30 = icmp ult i8* %24, %25, !dbg !607
  br i1 %30, label %31, label %53, !dbg !608

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !574
  %33 = load i16*, i16** %32, align 8, !tbaa !487
  br label %34, !dbg !608

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !77, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i64 %36, metadata !81, metadata !DIExpression()), !dbg !606
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !609
  call void @llvm.dbg.value(metadata i8* %37, metadata !77, metadata !DIExpression()), !dbg !606
  %38 = load i8, i8* %35, align 1, !dbg !609, !tbaa !585
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !609
  %41 = load i16, i16* %40, align 2, !dbg !609, !tbaa !610
  %42 = lshr i16 %41, 13, !dbg !612
  %43 = and i16 %42, 1, !dbg !612
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !613
  call void @llvm.dbg.value(metadata i64 %45, metadata !81, metadata !DIExpression()), !dbg !606
  %46 = icmp ult i8* %37, %25, !dbg !607
  %47 = icmp ult i64 %45, 2, !dbg !614
  %48 = select i1 %46, i1 %47, i1 false, !dbg !614
  br i1 %48, label %34, label %49, !dbg !608, !llvm.loop !615

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !616
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !618
  %52 = xor i1 %50, true, !dbg !618
  br label %53, !dbg !618

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !574
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !73, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i8* %54, metadata !76, metadata !DIExpression()), !dbg !574
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #34, !dbg !619
  call void @llvm.dbg.value(metadata i64 %56, metadata !82, metadata !DIExpression()), !dbg !574
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !620
  call void @llvm.dbg.value(metadata i8* %57, metadata !83, metadata !DIExpression()), !dbg !574
  br label %58, !dbg !621

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !574
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !73, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i8* %59, metadata !83, metadata !DIExpression()), !dbg !574
  %61 = load i8, i8* %59, align 1, !dbg !622, !tbaa !585
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !623

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !624
  %64 = load i8, i8* %63, align 1, !dbg !627, !tbaa !585
  %65 = icmp ne i8 %64, 45, !dbg !628
  %66 = select i1 %65, i1 %60, i1 false, !dbg !629
  br label %67, !dbg !629

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !73, metadata !DIExpression()), !dbg !574
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !630
  %70 = load i16*, i16** %69, align 8, !dbg !630, !tbaa !487
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !630
  %73 = load i16, i16* %72, align 2, !dbg !630, !tbaa !610
  %74 = and i16 %73, 8192, !dbg !630
  %75 = icmp eq i16 %74, 0, !dbg !630
  br i1 %75, label %89, label %76, !dbg !632

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !633
  br i1 %77, label %91, label %78, !dbg !636

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !637
  %80 = load i8, i8* %79, align 1, !dbg !637, !tbaa !585
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !637
  %83 = load i16, i16* %82, align 2, !dbg !637, !tbaa !610
  %84 = and i16 %83, 8192, !dbg !637
  %85 = icmp eq i16 %84, 0, !dbg !637
  br i1 %85, label %86, label %91, !dbg !638

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !639
  br i1 %88, label %89, label %91, !dbg !639

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !641
  call void @llvm.dbg.value(metadata i8* %90, metadata !83, metadata !DIExpression()), !dbg !574
  br label %58, !dbg !621, !llvm.loop !642

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !644
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !487
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !645
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !531, metadata !DIExpression()) #33, !dbg !645
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !647
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !649
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !651
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !653
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !657
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !659
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !661
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !525, metadata !DIExpression()) #33, !dbg !663
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !143, metadata !DIExpression()), !dbg !574
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i64 noundef 6) #34, !dbg !665
  %96 = icmp eq i32 %95, 0, !dbg !665
  br i1 %96, label %100, label %97, !dbg !667

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 noundef 9) #34, !dbg !668
  %99 = icmp eq i32 %98, 0, !dbg !668
  br i1 %99, label %100, label %103, !dbg !669

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !670
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !670
  br label %106, !dbg !672

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !673
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !673
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !675, !tbaa !487
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !675
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !676, !tbaa !487
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !676
  %111 = ptrtoint i8* %59 to i64, !dbg !677
  %112 = sub i64 %111, %92, !dbg !677
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !677, !tbaa !487
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !677
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !678, !tbaa !487
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !678
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !487
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !679
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !680, !tbaa !487
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !680
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !681
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
declare !dbg !682 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !686 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !690 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #0 !dbg !2 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !173, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i8** %1, metadata !174, metadata !DIExpression()), !dbg !696
  %3 = load i8*, i8** %1, align 8, !dbg !697, !tbaa !487
  tail call void @set_program_name(i8* noundef %3) #33, !dbg !698
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #33, !dbg !699
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #33, !dbg !700
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #33, !dbg !701
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !702
  br label %8, !dbg !703

8:                                                ; preds = %8, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @main.long_options, i64 0, i64 0), i32* noundef null) #33, !dbg !704
  call void @llvm.dbg.value(metadata i32 %9, metadata !175, metadata !DIExpression()), !dbg !705
  switch i32 %9, label %15 [
    i32 -1, label %16
    i32 119, label %8
    i32 -2, label %10
    i32 -3, label %11
  ], !dbg !706

10:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #37, !dbg !707
  unreachable, !dbg !707

11:                                               ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !487
  %13 = load i8*, i8** @Version, align 8, !dbg !709, !tbaa !487
  %14 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #33, !dbg !709
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %13, i8* noundef %14, i8* noundef null) #33, !dbg !709
  tail call void @exit(i32 noundef 0) #35, !dbg !709
  unreachable, !dbg !709

15:                                               ; preds = %8
  tail call void @usage(i32 noundef 1) #37, !dbg !710
  unreachable, !dbg !710

16:                                               ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !711, !tbaa !576
  %18 = sub nsw i32 %0, %17, !dbg !713
  %19 = icmp sgt i32 %18, 1, !dbg !714
  br i1 %19, label %20, label %28, !dbg !715

20:                                               ; preds = %16
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #33, !dbg !716
  %22 = load i32, i32* @optind, align 4, !dbg !716, !tbaa !576
  %23 = add nsw i32 %22, 1, !dbg !716
  %24 = sext i32 %23 to i64, !dbg !716
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !716
  %26 = load i8*, i8** %25, align 8, !dbg !716, !tbaa !487
  %27 = tail call i8* @quote(i8* noundef %26) #33, !dbg !716
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %21, i8* noundef %27) #33, !dbg !716
  tail call void @usage(i32 noundef 1) #37, !dbg !718
  unreachable, !dbg !718

28:                                               ; preds = %16
  %29 = icmp eq i32 %17, %0, !dbg !719
  br i1 %29, label %34, label %30, !dbg !720

30:                                               ; preds = %28
  %31 = sext i32 %17 to i64, !dbg !721
  %32 = getelementptr inbounds i8*, i8** %1, i64 %31, !dbg !721
  %33 = load i8*, i8** %32, align 8, !dbg !721, !tbaa !487
  br label %34, !dbg !720

34:                                               ; preds = %28, %30
  %35 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %28 ], !dbg !720
  tail call fastcc void @tsort(i8* noundef %35) #37, !dbg !722
  unreachable, !dbg !722
}

; Function Attrs: nounwind
declare !dbg !723 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !726 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !727 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !730 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @tsort(i8* noundef %0) unnamed_addr #0 !dbg !736 {
  %2 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !738, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i8 1, metadata !739, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata %struct.item* null, metadata !740, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata %struct.item* null, metadata !741, metadata !DIExpression()), !dbg !756
  %3 = bitcast %struct.tokenbuffer* %2 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #33, !dbg !757
  call void @llvm.dbg.declare(metadata %struct.tokenbuffer* %2, metadata !742, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i8* %0, metadata !525, metadata !DIExpression()) #33, !dbg !759
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), metadata !531, metadata !DIExpression()) #33, !dbg !759
  %4 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #34, !dbg !761
  %5 = icmp eq i32 %4, 0, !dbg !762
  call void @llvm.dbg.value(metadata i1 %5, metadata !749, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !756
  call void @llvm.dbg.value(metadata i8* null, metadata !763, metadata !DIExpression()) #33, !dbg !769
  %6 = tail call noalias nonnull i8* @xzalloc(i64 noundef 56) #38, !dbg !771
  call void @llvm.dbg.value(metadata i8* %6, metadata !768, metadata !DIExpression()) #33, !dbg !769
  %7 = bitcast i8* %6 to %struct.item*, !dbg !771
  call void @llvm.dbg.value(metadata %struct.item* %7, metadata !768, metadata !DIExpression()) #33, !dbg !769
  call void @llvm.dbg.value(metadata %struct.item* %7, metadata !750, metadata !DIExpression()), !dbg !756
  br i1 %5, label %16, label %8, !dbg !772

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !774, !tbaa !487
  %10 = tail call %struct._IO_FILE* @freopen_safer(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %9) #33, !dbg !775
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !775
  br i1 %11, label %12, label %16, !dbg !776

12:                                               ; preds = %8
  %13 = tail call i32* @__errno_location() #36, !dbg !777
  %14 = load i32, i32* %13, align 4, !dbg !777, !tbaa !576
  %15 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #33, !dbg !777
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i8* noundef %15) #33, !dbg !777
  unreachable, !dbg !777

16:                                               ; preds = %8, %1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !778, !tbaa !487
  tail call void @fadvise(%struct._IO_FILE* noundef %17, i32 noundef 2) #33, !dbg !779
  call void @init_tokenbuffer(%struct.tokenbuffer* noundef nonnull %2) #33, !dbg !780
  %18 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %2, i64 0, i32 1
  %19 = getelementptr inbounds i8, i8* %6, i64 16
  %20 = bitcast i8* %19 to %struct.item**
  %21 = bitcast i8* %19 to i8**
  br label %22, !dbg !781

22:                                               ; preds = %207, %16
  %23 = phi %struct.item* [ null, %16 ], [ %208, %207 ], !dbg !782
  call void @llvm.dbg.value(metadata %struct.item* %23, metadata !740, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata %struct.item* %23, metadata !741, metadata !DIExpression()), !dbg !756
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !783, !tbaa !487
  %25 = call i64 @readtoken(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i64 noundef 3, %struct.tokenbuffer* noundef nonnull %2) #33, !dbg !784
  call void @llvm.dbg.value(metadata i64 %25, metadata !751, metadata !DIExpression()), !dbg !785
  switch i64 %25, label %38 [
    i64 -1, label %26
    i64 0, label %37
  ], !dbg !786

26:                                               ; preds = %22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !787, !tbaa !487
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %27, metadata !791, metadata !DIExpression()), !dbg !797
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %27, i64 0, i32 0, !dbg !799
  %29 = load i32, i32* %28, align 8, !dbg !799, !tbaa !800
  %30 = and i32 %29, 32, !dbg !787
  %31 = icmp eq i32 %30, 0, !dbg !787
  br i1 %31, label %209, label %32, !dbg !803

32:                                               ; preds = %26
  %33 = tail call i32* @__errno_location() #36, !dbg !804
  %34 = load i32, i32* %33, align 4, !dbg !804, !tbaa !576
  %35 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #33, !dbg !804
  %36 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #33, !dbg !804
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %34, i8* noundef %35, i8* noundef %36) #33, !dbg !804
  unreachable, !dbg !804

37:                                               ; preds = %22
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.tsort, i64 0, i64 0)) #35, !dbg !805
  unreachable, !dbg !805

38:                                               ; preds = %22
  %39 = load i8*, i8** %18, align 8, !dbg !808, !tbaa !809
  call void @llvm.dbg.value(metadata %struct.item* %7, metadata !811, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata i8* %39, metadata !816, metadata !DIExpression()) #33, !dbg !828
  %40 = load %struct.item*, %struct.item** %20, align 8, !dbg !830, !tbaa !832
  %41 = icmp eq %struct.item* %40, null, !dbg !835
  br i1 %41, label %47, label %42, !dbg !836

42:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %struct.item* %7, metadata !821, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* %40, metadata !820, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* %40, metadata !817, metadata !DIExpression()) #33, !dbg !828
  %43 = getelementptr inbounds %struct.item, %struct.item* %40, i64 0, i32 0, !dbg !837
  %44 = load i8*, i8** %43, align 8, !dbg !837, !tbaa !838
  %45 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %39, i8* noundef nonnull dereferenceable(1) %44) #34, !dbg !839
  call void @llvm.dbg.value(metadata i32 %45, metadata !822, metadata !DIExpression()) #33, !dbg !828
  %46 = icmp eq i32 %45, 0, !dbg !840
  br i1 %46, label %186, label %55, !dbg !842

47:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i8* %39, metadata !763, metadata !DIExpression()) #33, !dbg !843
  %48 = call noalias nonnull i8* @xzalloc(i64 noundef 56) #38, !dbg !845
  call void @llvm.dbg.value(metadata i8* %48, metadata !768, metadata !DIExpression()) #33, !dbg !843
  %49 = icmp eq i8* %39, null, !dbg !846
  br i1 %49, label %53, label %50, !dbg !848

50:                                               ; preds = %47
  %51 = call noalias nonnull i8* @xstrdup(i8* noundef nonnull %39) #33, !dbg !849
  %52 = bitcast i8* %48 to i8**, !dbg !850
  store i8* %51, i8** %52, align 8, !dbg !851, !tbaa !838
  br label %53, !dbg !852

53:                                               ; preds = %50, %47
  %54 = bitcast i8* %48 to %struct.item*, !dbg !845
  call void @llvm.dbg.value(metadata %struct.item* %54, metadata !768, metadata !DIExpression()) #33, !dbg !843
  store i8* %48, i8** %21, align 8, !dbg !853, !tbaa !832
  br label %186, !dbg !854

55:                                               ; preds = %42, %176
  %56 = phi i32 [ %184, %176 ], [ %45, %42 ]
  %57 = phi %struct.item* [ %181, %176 ], [ %7, %42 ]
  %58 = phi %struct.item* [ %180, %176 ], [ %40, %42 ]
  %59 = phi %struct.item* [ %64, %176 ], [ %40, %42 ]
  call void @llvm.dbg.value(metadata %struct.item* %57, metadata !821, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* %58, metadata !820, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* %59, metadata !817, metadata !DIExpression()) #33, !dbg !828
  %60 = icmp slt i32 %56, 0, !dbg !855
  %61 = getelementptr inbounds %struct.item, %struct.item* %59, i64 0, i32 1, !dbg !857
  %62 = getelementptr inbounds %struct.item, %struct.item* %59, i64 0, i32 2, !dbg !857
  %63 = select i1 %60, %struct.item** %61, %struct.item** %62, !dbg !857
  %64 = load %struct.item*, %struct.item** %63, align 8, !dbg !858, !tbaa !487
  call void @llvm.dbg.value(metadata %struct.item* %64, metadata !818, metadata !DIExpression()) #33, !dbg !828
  %65 = icmp eq %struct.item* %64, null, !dbg !859
  br i1 %65, label %66, label %176, !dbg !860

66:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i8* %39, metadata !763, metadata !DIExpression()) #33, !dbg !861
  %67 = call noalias nonnull i8* @xzalloc(i64 noundef 56) #38, !dbg !863
  call void @llvm.dbg.value(metadata i8* %67, metadata !768, metadata !DIExpression()) #33, !dbg !861
  %68 = icmp eq i8* %39, null, !dbg !864
  br i1 %68, label %72, label %69, !dbg !865

69:                                               ; preds = %66
  %70 = call noalias nonnull i8* @xstrdup(i8* noundef nonnull %39) #33, !dbg !866
  %71 = bitcast i8* %67 to i8**, !dbg !867
  store i8* %70, i8** %71, align 8, !dbg !868, !tbaa !838
  br label %72, !dbg !869

72:                                               ; preds = %69, %66
  %73 = bitcast i8* %67 to %struct.item*, !dbg !863
  call void @llvm.dbg.value(metadata %struct.item* %73, metadata !768, metadata !DIExpression()) #33, !dbg !861
  call void @llvm.dbg.value(metadata %struct.item* %73, metadata !818, metadata !DIExpression()) #33, !dbg !828
  %74 = bitcast %struct.item** %63 to i8**, !dbg !870
  store i8* %67, i8** %74, align 8, !dbg !870, !tbaa !487
  %75 = getelementptr inbounds %struct.item, %struct.item* %58, i64 0, i32 0, !dbg !872
  %76 = load i8*, i8** %75, align 8, !dbg !872, !tbaa !838
  %77 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %39, i8* noundef nonnull dereferenceable(1) %76) #34, !dbg !873
  call void @llvm.dbg.value(metadata i32 %77, metadata !822, metadata !DIExpression()) #33, !dbg !828
  %78 = icmp slt i32 %77, 0, !dbg !874
  br i1 %78, label %79, label %81, !dbg !876

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.item, %struct.item* %58, i64 0, i32 1, !dbg !877
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !817, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !819, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata i32 -1, metadata !822, metadata !DIExpression()) #33, !dbg !828
  br label %86, !dbg !879

81:                                               ; preds = %72
  %82 = icmp eq i32 %77, 0, !dbg !880
  br i1 %82, label %83, label %84, !dbg !884

83:                                               ; preds = %81
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #35, !dbg !880
  unreachable, !dbg !880

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.item, %struct.item* %58, i64 0, i32 2, !dbg !885
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !817, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !819, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata i32 1, metadata !822, metadata !DIExpression()) #33, !dbg !828
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi %struct.item** [ %80, %79 ], [ %85, %84 ]
  %88 = phi i32 [ -1, %79 ], [ 1, %84 ], !dbg !886
  %89 = load %struct.item*, %struct.item** %87, align 8, !dbg !886, !tbaa !487
  call void @llvm.dbg.value(metadata i32 %88, metadata !822, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* %89, metadata !819, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* %89, metadata !817, metadata !DIExpression()) #33, !dbg !828
  %90 = icmp eq %struct.item* %89, %73, !dbg !887
  br i1 %90, label %110, label %91, !dbg !888

91:                                               ; preds = %86, %106
  %92 = phi %struct.item* [ %108, %106 ], [ %89, %86 ]
  call void @llvm.dbg.value(metadata %struct.item* %92, metadata !817, metadata !DIExpression()) #33, !dbg !828
  %93 = getelementptr inbounds %struct.item, %struct.item* %92, i64 0, i32 0, !dbg !889
  %94 = load i8*, i8** %93, align 8, !dbg !889, !tbaa !838
  %95 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %39, i8* noundef nonnull dereferenceable(1) %94) #34, !dbg !890
  call void @llvm.dbg.value(metadata i32 %95, metadata !823, metadata !DIExpression()) #33, !dbg !891
  %96 = icmp slt i32 %95, 0, !dbg !892
  br i1 %96, label %97, label %100, !dbg !894

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.item, %struct.item* %92, i64 0, i32 3, !dbg !895
  store i8 -1, i8* %98, align 8, !dbg !897, !tbaa !898
  %99 = getelementptr inbounds %struct.item, %struct.item* %92, i64 0, i32 1, !dbg !899
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !817, metadata !DIExpression()) #33, !dbg !828
  br label %106, !dbg !900

100:                                              ; preds = %91
  %101 = icmp eq i32 %95, 0, !dbg !901
  br i1 %101, label %102, label %103, !dbg !905

102:                                              ; preds = %100
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #35, !dbg !901
  unreachable, !dbg !901

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.item, %struct.item* %92, i64 0, i32 3, !dbg !906
  store i8 1, i8* %104, align 8, !dbg !907, !tbaa !898
  %105 = getelementptr inbounds %struct.item, %struct.item* %92, i64 0, i32 2, !dbg !908
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !817, metadata !DIExpression()) #33, !dbg !828
  br label %106

106:                                              ; preds = %103, %97
  %107 = phi %struct.item** [ %99, %97 ], [ %105, %103 ]
  %108 = load %struct.item*, %struct.item** %107, align 8, !dbg !909, !tbaa !487
  call void @llvm.dbg.value(metadata %struct.item* %108, metadata !817, metadata !DIExpression()) #33, !dbg !828
  %109 = icmp eq %struct.item* %108, %73, !dbg !887
  br i1 %109, label %110, label %91, !dbg !888, !llvm.loop !910

110:                                              ; preds = %106, %86
  %111 = getelementptr inbounds %struct.item, %struct.item* %58, i64 0, i32 3, !dbg !912
  %112 = load i8, i8* %111, align 8, !dbg !912, !tbaa !898
  %113 = icmp eq i8 %112, 0, !dbg !914
  br i1 %113, label %118, label %114, !dbg !915

114:                                              ; preds = %110
  %115 = sext i8 %112 to i32, !dbg !916
  %116 = sub nsw i32 0, %88, !dbg !917
  %117 = icmp eq i32 %115, %116, !dbg !918
  br i1 %117, label %118, label %121, !dbg !919

118:                                              ; preds = %114, %110
  %119 = trunc i32 %88 to i8, !dbg !920
  %120 = add i8 %112, %119, !dbg !920
  store i8 %120, i8* %111, align 8, !dbg !920, !tbaa !898
  br label %186, !dbg !922

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.item, %struct.item* %89, i64 0, i32 3, !dbg !923
  %123 = load i8, i8* %122, align 8, !dbg !923, !tbaa !898
  %124 = sext i8 %123 to i32, !dbg !925
  %125 = icmp eq i32 %88, %124, !dbg !926
  br i1 %125, label %126, label %137, !dbg !927

126:                                              ; preds = %121
  call void @llvm.dbg.value(metadata %struct.item* %89, metadata !817, metadata !DIExpression()) #33, !dbg !828
  br i1 %78, label %127, label %131, !dbg !928

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct.item, %struct.item* %89, i64 0, i32 2, !dbg !930
  %129 = load %struct.item*, %struct.item** %128, align 8, !dbg !930, !tbaa !832
  %130 = getelementptr inbounds %struct.item, %struct.item* %58, i64 0, i32 1, !dbg !933
  store %struct.item* %129, %struct.item** %130, align 8, !dbg !934, !tbaa !935
  br label %135, !dbg !936

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.item, %struct.item* %89, i64 0, i32 1, !dbg !937
  %133 = load %struct.item*, %struct.item** %132, align 8, !dbg !937, !tbaa !935
  %134 = getelementptr inbounds %struct.item, %struct.item* %58, i64 0, i32 2, !dbg !939
  store %struct.item* %133, %struct.item** %134, align 8, !dbg !940, !tbaa !832
  br label %135

135:                                              ; preds = %131, %127
  %136 = phi %struct.item** [ %132, %131 ], [ %128, %127 ]
  store %struct.item* %58, %struct.item** %136, align 8, !dbg !941, !tbaa !487
  store i8 0, i8* %122, align 8, !dbg !942, !tbaa !898
  br label %167, !dbg !943

137:                                              ; preds = %121
  br i1 %78, label %138, label %146, !dbg !944

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.item, %struct.item* %89, i64 0, i32 2, !dbg !946
  %140 = load %struct.item*, %struct.item** %139, align 8, !dbg !946, !tbaa !832
  call void @llvm.dbg.value(metadata %struct.item* %140, metadata !817, metadata !DIExpression()) #33, !dbg !828
  %141 = getelementptr inbounds %struct.item, %struct.item* %140, i64 0, i32 1, !dbg !949
  %142 = load %struct.item*, %struct.item** %141, align 8, !dbg !949, !tbaa !935
  store %struct.item* %142, %struct.item** %139, align 8, !dbg !950, !tbaa !832
  store %struct.item* %89, %struct.item** %141, align 8, !dbg !951, !tbaa !935
  %143 = getelementptr inbounds %struct.item, %struct.item* %140, i64 0, i32 2, !dbg !952
  %144 = load %struct.item*, %struct.item** %143, align 8, !dbg !952, !tbaa !832
  %145 = getelementptr inbounds %struct.item, %struct.item* %58, i64 0, i32 1, !dbg !953
  store %struct.item* %144, %struct.item** %145, align 8, !dbg !954, !tbaa !935
  br label %154, !dbg !955

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.item, %struct.item* %89, i64 0, i32 1, !dbg !956
  %148 = load %struct.item*, %struct.item** %147, align 8, !dbg !956, !tbaa !935
  call void @llvm.dbg.value(metadata %struct.item* %148, metadata !817, metadata !DIExpression()) #33, !dbg !828
  %149 = getelementptr inbounds %struct.item, %struct.item* %148, i64 0, i32 2, !dbg !958
  %150 = load %struct.item*, %struct.item** %149, align 8, !dbg !958, !tbaa !832
  store %struct.item* %150, %struct.item** %147, align 8, !dbg !959, !tbaa !935
  store %struct.item* %89, %struct.item** %149, align 8, !dbg !960, !tbaa !832
  %151 = getelementptr inbounds %struct.item, %struct.item* %148, i64 0, i32 1, !dbg !961
  %152 = load %struct.item*, %struct.item** %151, align 8, !dbg !961, !tbaa !935
  %153 = getelementptr inbounds %struct.item, %struct.item* %58, i64 0, i32 2, !dbg !962
  store %struct.item* %152, %struct.item** %153, align 8, !dbg !963, !tbaa !832
  br label %154

154:                                              ; preds = %146, %138
  %155 = phi %struct.item** [ %151, %146 ], [ %143, %138 ]
  %156 = phi %struct.item* [ %148, %146 ], [ %140, %138 ], !dbg !964
  store %struct.item* %58, %struct.item** %155, align 8, !dbg !964, !tbaa !487
  call void @llvm.dbg.value(metadata %struct.item* %156, metadata !817, metadata !DIExpression()) #33, !dbg !828
  store i8 0, i8* %111, align 8, !dbg !965, !tbaa !898
  store i8 0, i8* %122, align 8, !dbg !966, !tbaa !898
  %157 = getelementptr inbounds %struct.item, %struct.item* %156, i64 0, i32 3, !dbg !967
  %158 = load i8, i8* %157, align 8, !dbg !967, !tbaa !898
  %159 = sext i8 %158 to i32, !dbg !969
  %160 = icmp eq i32 %88, %159, !dbg !970
  br i1 %160, label %163, label %161, !dbg !971

161:                                              ; preds = %154
  %162 = icmp eq i32 %159, %116, !dbg !972
  br i1 %162, label %163, label %167, !dbg !974

163:                                              ; preds = %161, %154
  %164 = phi i32 [ %116, %154 ], [ %88, %161 ]
  %165 = phi i8* [ %111, %154 ], [ %122, %161 ]
  %166 = trunc i32 %164 to i8, !dbg !975
  store i8 %166, i8* %165, align 8, !dbg !975, !tbaa !898
  br label %167, !dbg !976

167:                                              ; preds = %163, %161, %135
  %168 = phi i8* [ %111, %135 ], [ %157, %163 ], [ %157, %161 ]
  %169 = phi %struct.item* [ %89, %135 ], [ %156, %163 ], [ %156, %161 ], !dbg !977
  store i8 0, i8* %168, align 8, !dbg !977, !tbaa !898
  call void @llvm.dbg.value(metadata %struct.item* %169, metadata !817, metadata !DIExpression()) #33, !dbg !828
  %170 = getelementptr inbounds %struct.item, %struct.item* %57, i64 0, i32 2, !dbg !978
  %171 = load %struct.item*, %struct.item** %170, align 8, !dbg !978, !tbaa !832
  %172 = icmp eq %struct.item* %58, %171, !dbg !980
  br i1 %172, label %173, label %174, !dbg !981

173:                                              ; preds = %167
  store %struct.item* %169, %struct.item** %170, align 8, !dbg !982, !tbaa !832
  br label %186, !dbg !983

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.item, %struct.item* %57, i64 0, i32 1, !dbg !984
  store %struct.item* %169, %struct.item** %175, align 8, !dbg !985, !tbaa !935
  br label %186

176:                                              ; preds = %55
  %177 = getelementptr inbounds %struct.item, %struct.item* %64, i64 0, i32 3, !dbg !986
  %178 = load i8, i8* %177, align 8, !dbg !986, !tbaa !898
  %179 = icmp eq i8 %178, 0, !dbg !988
  %180 = select i1 %179, %struct.item* %58, %struct.item* %64, !dbg !989
  %181 = select i1 %179, %struct.item* %57, %struct.item* %59, !dbg !989
  call void @llvm.dbg.value(metadata %struct.item* %181, metadata !821, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* %180, metadata !820, metadata !DIExpression()) #33, !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* %64, metadata !817, metadata !DIExpression()) #33, !dbg !828
  %182 = getelementptr inbounds %struct.item, %struct.item* %64, i64 0, i32 0, !dbg !837
  %183 = load i8*, i8** %182, align 8, !dbg !837, !tbaa !838
  %184 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %39, i8* noundef nonnull dereferenceable(1) %183) #34, !dbg !839
  call void @llvm.dbg.value(metadata i32 %184, metadata !822, metadata !DIExpression()) #33, !dbg !828
  %185 = icmp eq i32 %184, 0, !dbg !840
  br i1 %185, label %186, label %55, !dbg !842, !llvm.loop !990

186:                                              ; preds = %176, %42, %53, %118, %173, %174
  %187 = phi %struct.item* [ %54, %53 ], [ %73, %118 ], [ %73, %174 ], [ %73, %173 ], [ %40, %42 ], [ %64, %176 ], !dbg !828
  call void @llvm.dbg.value(metadata %struct.item* %187, metadata !741, metadata !DIExpression()), !dbg !756
  %188 = icmp eq %struct.item* %23, null, !dbg !993
  br i1 %188, label %207, label %189, !dbg !995

189:                                              ; preds = %186
  call void @llvm.dbg.value(metadata %struct.item* %23, metadata !996, metadata !DIExpression()) #33, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.item* %187, metadata !1001, metadata !DIExpression()) #33, !dbg !1003
  %190 = getelementptr inbounds %struct.item, %struct.item* %23, i64 0, i32 0, !dbg !1006
  %191 = load i8*, i8** %190, align 8, !dbg !1006, !tbaa !838
  %192 = getelementptr inbounds %struct.item, %struct.item* %187, i64 0, i32 0, !dbg !1008
  %193 = load i8*, i8** %192, align 8, !dbg !1008, !tbaa !838
  call void @llvm.dbg.value(metadata i8* %191, metadata !525, metadata !DIExpression()) #33, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %193, metadata !531, metadata !DIExpression()) #33, !dbg !1009
  %194 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %191, i8* noundef nonnull dereferenceable(1) %193) #34, !dbg !1011
  %195 = icmp eq i32 %194, 0, !dbg !1012
  br i1 %195, label %207, label %196, !dbg !1013

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.item, %struct.item* %187, i64 0, i32 5, !dbg !1014
  %198 = load i64, i64* %197, align 8, !dbg !1016, !tbaa !1017
  %199 = add i64 %198, 1, !dbg !1016
  store i64 %199, i64* %197, align 8, !dbg !1016, !tbaa !1017
  %200 = call noalias nonnull i8* @xmalloc(i64 noundef 16) #38, !dbg !1018
  call void @llvm.dbg.value(metadata i8* %200, metadata !1002, metadata !DIExpression()) #33, !dbg !1003
  %201 = bitcast i8* %200 to %struct.item**, !dbg !1019
  store %struct.item* %187, %struct.item** %201, align 8, !dbg !1020, !tbaa !1021
  %202 = getelementptr inbounds %struct.item, %struct.item* %23, i64 0, i32 7, !dbg !1023
  %203 = load %struct.successor*, %struct.successor** %202, align 8, !dbg !1023, !tbaa !1024
  %204 = getelementptr inbounds i8, i8* %200, i64 8, !dbg !1025
  %205 = bitcast i8* %204 to %struct.successor**, !dbg !1025
  store %struct.successor* %203, %struct.successor** %205, align 8, !dbg !1026, !tbaa !1027
  %206 = bitcast %struct.successor** %202 to i8**, !dbg !1028
  store i8* %200, i8** %206, align 8, !dbg !1028, !tbaa !1024
  br label %207, !dbg !1029

207:                                              ; preds = %196, %189, %186
  %208 = phi %struct.item* [ %187, %186 ], [ null, %189 ], [ null, %196 ]
  br label %22, !dbg !756

209:                                              ; preds = %26
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !740, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !741, metadata !DIExpression()), !dbg !756
  %210 = icmp eq %struct.item* %23, null, !dbg !1030
  br i1 %210, label %214, label %211, !dbg !1032

211:                                              ; preds = %209
  %212 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.57, i64 0, i64 0), i32 noundef 5) #33, !dbg !1033
  %213 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #33, !dbg !1033
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %212, i8* noundef %213) #33, !dbg !1033
  unreachable, !dbg !1033

214:                                              ; preds = %209
  call void @llvm.dbg.value(metadata %struct.item* %7, metadata !1034, metadata !DIExpression()) #33, !dbg !1043
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @count_items, metadata !1042, metadata !DIExpression()) #33, !dbg !1043
  %215 = load %struct.item*, %struct.item** %20, align 8, !dbg !1045, !tbaa !832
  %216 = icmp eq %struct.item* %215, null, !dbg !1047
  br i1 %216, label %219, label %217, !dbg !1048

217:                                              ; preds = %214
  %218 = call fastcc i1 @recurse_tree(%struct.item* noundef nonnull %215, i1 (%struct.item*)* noundef nonnull @count_items) #33, !dbg !1049
  br label %219, !dbg !1049

219:                                              ; preds = %214, %217
  call void @llvm.dbg.value(metadata i8 poison, metadata !739, metadata !DIExpression()), !dbg !756
  %220 = load i64, i64* @n_strings, align 8, !dbg !1050, !tbaa !1051
  %221 = icmp eq i64 %220, 0, !dbg !1052
  br i1 %221, label %277, label %222, !dbg !1053

222:                                              ; preds = %219, %274
  %223 = phi i32 [ 0, %274 ], [ 1, %219 ]
  call void @llvm.dbg.value(metadata %struct.item* %7, metadata !1034, metadata !DIExpression()) #33, !dbg !1054
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @scan_zeros, metadata !1042, metadata !DIExpression()) #33, !dbg !1054
  br i1 %216, label %226, label %224, !dbg !1056

224:                                              ; preds = %222
  %225 = call fastcc i1 @recurse_tree(%struct.item* noundef nonnull %215, i1 (%struct.item*)* noundef nonnull @scan_zeros) #33, !dbg !1057
  br label %226, !dbg !1057

226:                                              ; preds = %222, %224
  %227 = load %struct.item*, %struct.item** @head, align 8, !dbg !1058, !tbaa !487
  %228 = icmp eq %struct.item* %227, null, !dbg !1059
  br i1 %228, label %229, label %231, !dbg !1059

229:                                              ; preds = %226
  %230 = load i64, i64* @n_strings, align 8, !dbg !1060, !tbaa !1051
  br label %262, !dbg !1059

231:                                              ; preds = %226, %258
  %232 = phi %struct.item* [ %260, %258 ], [ %227, %226 ]
  %233 = getelementptr inbounds %struct.item, %struct.item* %232, i64 0, i32 7, !dbg !1062
  %234 = load %struct.successor*, %struct.successor** %233, align 8, !dbg !1062, !tbaa !1024
  call void @llvm.dbg.value(metadata %struct.successor* %234, metadata !753, metadata !DIExpression()), !dbg !1063
  %235 = getelementptr inbounds %struct.item, %struct.item* %232, i64 0, i32 0, !dbg !1064
  %236 = load i8*, i8** %235, align 8, !dbg !1064, !tbaa !838
  %237 = call i32 @puts(i8* noundef nonnull dereferenceable(1) %236), !dbg !1065
  %238 = load %struct.item*, %struct.item** @head, align 8, !dbg !1066, !tbaa !487
  %239 = getelementptr inbounds %struct.item, %struct.item* %238, i64 0, i32 4, !dbg !1067
  store i8 1, i8* %239, align 1, !dbg !1068, !tbaa !1069
  %240 = load i64, i64* @n_strings, align 8, !dbg !1070, !tbaa !1051
  %241 = add i64 %240, -1, !dbg !1070
  store i64 %241, i64* @n_strings, align 8, !dbg !1070, !tbaa !1051
  %242 = icmp eq %struct.successor* %234, null, !dbg !1071
  br i1 %242, label %258, label %243, !dbg !1071

243:                                              ; preds = %231, %254
  %244 = phi %struct.successor* [ %256, %254 ], [ %234, %231 ]
  call void @llvm.dbg.value(metadata %struct.successor* %244, metadata !753, metadata !DIExpression()), !dbg !1063
  %245 = getelementptr inbounds %struct.successor, %struct.successor* %244, i64 0, i32 0, !dbg !1072
  %246 = load %struct.item*, %struct.item** %245, align 8, !dbg !1072, !tbaa !1021
  %247 = getelementptr inbounds %struct.item, %struct.item* %246, i64 0, i32 5, !dbg !1074
  %248 = load i64, i64* %247, align 8, !dbg !1075, !tbaa !1017
  %249 = add i64 %248, -1, !dbg !1075
  store i64 %249, i64* %247, align 8, !dbg !1075, !tbaa !1017
  %250 = icmp eq i64 %249, 0, !dbg !1076
  br i1 %250, label %251, label %254, !dbg !1078

251:                                              ; preds = %243
  %252 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1079, !tbaa !487
  %253 = getelementptr inbounds %struct.item, %struct.item* %252, i64 0, i32 6, !dbg !1081
  store %struct.item* %246, %struct.item** %253, align 8, !dbg !1082, !tbaa !1083
  store %struct.item* %246, %struct.item** @zeros, align 8, !dbg !1084, !tbaa !487
  br label %254, !dbg !1085

254:                                              ; preds = %251, %243
  %255 = getelementptr inbounds %struct.successor, %struct.successor* %244, i64 0, i32 1, !dbg !1086
  %256 = load %struct.successor*, %struct.successor** %255, align 8, !dbg !1086, !tbaa !1027
  call void @llvm.dbg.value(metadata %struct.successor* %256, metadata !753, metadata !DIExpression()), !dbg !1063
  %257 = icmp eq %struct.successor* %256, null, !dbg !1071
  br i1 %257, label %258, label %243, !dbg !1071, !llvm.loop !1087

258:                                              ; preds = %254, %231
  %259 = getelementptr inbounds %struct.item, %struct.item* %238, i64 0, i32 6, !dbg !1089
  %260 = load %struct.item*, %struct.item** %259, align 8, !dbg !1089, !tbaa !1083
  store %struct.item* %260, %struct.item** @head, align 8, !dbg !1090, !tbaa !487
  %261 = icmp eq %struct.item* %260, null, !dbg !1059
  br i1 %261, label %262, label %231, !dbg !1059, !llvm.loop !1091

262:                                              ; preds = %258, %229
  %263 = phi i64 [ %230, %229 ], [ %241, %258 ], !dbg !1060
  %264 = icmp eq i64 %263, 0, !dbg !1093
  br i1 %264, label %277, label %265, !dbg !1094

265:                                              ; preds = %262
  %266 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i32 noundef 5) #33, !dbg !1095
  %267 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #33, !dbg !1095
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %266, i8* noundef %267) #33, !dbg !1095
  call void @llvm.dbg.value(metadata i8 0, metadata !739, metadata !DIExpression()), !dbg !756
  br label %268, !dbg !1097

268:                                              ; preds = %271, %265
  call void @llvm.dbg.value(metadata %struct.item* %7, metadata !1034, metadata !DIExpression()) #33, !dbg !1098
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @detect_loop, metadata !1042, metadata !DIExpression()) #33, !dbg !1098
  br i1 %216, label %271, label %269, !dbg !1100

269:                                              ; preds = %268
  %270 = call fastcc i1 @recurse_tree(%struct.item* noundef nonnull %215, i1 (%struct.item*)* noundef nonnull @detect_loop) #33, !dbg !1101
  br label %271, !dbg !1101

271:                                              ; preds = %268, %269
  %272 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1102, !tbaa !487
  %273 = icmp eq %struct.item* %272, null, !dbg !1103
  br i1 %273, label %274, label %268, !dbg !1103, !llvm.loop !1104

274:                                              ; preds = %271
  %275 = load i64, i64* @n_strings, align 8, !dbg !1050, !tbaa !1051
  call void @llvm.dbg.value(metadata i8 poison, metadata !739, metadata !DIExpression()), !dbg !756
  %276 = icmp eq i64 %275, 0, !dbg !1052
  br i1 %276, label %277, label %222, !dbg !1053, !llvm.loop !1106

277:                                              ; preds = %262, %274, %219
  %278 = phi i32 [ 1, %219 ], [ %223, %262 ], [ 0, %274 ]
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1108, !tbaa !487
  %280 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %279) #33, !dbg !1110
  %281 = icmp eq i32 %280, 0, !dbg !1111
  br i1 %281, label %291, label %282, !dbg !1112

282:                                              ; preds = %277
  %283 = tail call i32* @__errno_location() #36, !dbg !1113
  %284 = load i32, i32* %283, align 4, !dbg !1113, !tbaa !576
  br i1 %5, label %285, label %287, !dbg !1113

285:                                              ; preds = %282
  %286 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0), i32 noundef 5) #33, !dbg !1113
  br label %289, !dbg !1113

287:                                              ; preds = %282
  %288 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #33, !dbg !1113
  br label %289, !dbg !1113

289:                                              ; preds = %287, %285
  %290 = phi i8* [ %286, %285 ], [ %288, %287 ], !dbg !1113
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %284, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i8* noundef %290) #33, !dbg !1113
  unreachable, !dbg !1113

291:                                              ; preds = %277
  %292 = and i32 %278, 1, !dbg !1114
  %293 = xor i32 %292, 1, !dbg !1114
  call void @exit(i32 noundef %293) #35, !dbg !1115
  unreachable, !dbg !1115
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i1 @count_items(%struct.item* nocapture noundef readnone %0) #12 !dbg !1116 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1118, metadata !DIExpression()), !dbg !1119
  %2 = load i64, i64* @n_strings, align 8, !dbg !1120, !tbaa !1051
  %3 = add i64 %2, 1, !dbg !1120
  store i64 %3, i64* @n_strings, align 8, !dbg !1120, !tbaa !1051
  ret i1 false, !dbg !1121
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @recurse_tree(%struct.item* noundef %0, i1 (%struct.item*)* noundef %1) unnamed_addr #13 !dbg !1122 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1126, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* %1, metadata !1127, metadata !DIExpression()), !dbg !1128
  %3 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 1, !dbg !1129
  %4 = load %struct.item*, %struct.item** %3, align 8, !dbg !1129, !tbaa !935
  %5 = icmp eq %struct.item* %4, null, !dbg !1131
  br i1 %5, label %6, label %12, !dbg !1132

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1133
  %8 = load %struct.item*, %struct.item** %7, align 8, !dbg !1133, !tbaa !832
  %9 = icmp eq %struct.item* %8, null, !dbg !1134
  br i1 %9, label %10, label %14, !dbg !1135

10:                                               ; preds = %6
  %11 = tail call i1 %1(%struct.item* noundef nonnull %0) #33, !dbg !1136, !callees !1137
  br label %23, !dbg !1138

12:                                               ; preds = %2
  %13 = tail call fastcc i1 @recurse_tree(%struct.item* noundef nonnull %4, i1 (%struct.item*)* noundef %1), !dbg !1139
  br i1 %13, label %23, label %14, !dbg !1143

14:                                               ; preds = %6, %12
  %15 = tail call i1 %1(%struct.item* noundef nonnull %0) #33, !dbg !1144, !callees !1137
  br i1 %15, label %23, label %16, !dbg !1146

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1147
  %18 = load %struct.item*, %struct.item** %17, align 8, !dbg !1147, !tbaa !832
  %19 = icmp eq %struct.item* %18, null, !dbg !1149
  br i1 %19, label %22, label %20, !dbg !1150

20:                                               ; preds = %16
  %21 = tail call fastcc i1 @recurse_tree(%struct.item* noundef nonnull %18, i1 (%struct.item*)* noundef %1), !dbg !1151
  br i1 %21, label %23, label %22, !dbg !1153

22:                                               ; preds = %16, %20
  br label %23, !dbg !1154

23:                                               ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ], !dbg !1128
  ret i1 %24, !dbg !1155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i1 @scan_zeros(%struct.item* noundef %0) #12 !dbg !1156 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1158, metadata !DIExpression()), !dbg !1159
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 5, !dbg !1160
  %3 = load i64, i64* %2, align 8, !dbg !1160, !tbaa !1017
  %4 = icmp eq i64 %3, 0, !dbg !1162
  br i1 %4, label %5, label %15, !dbg !1163

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1164
  %7 = load i8, i8* %6, align 1, !dbg !1164, !tbaa !1069, !range !1165
  %8 = icmp eq i8 %7, 0, !dbg !1164
  br i1 %8, label %9, label %15, !dbg !1166

9:                                                ; preds = %5
  %10 = load %struct.item*, %struct.item** @head, align 8, !dbg !1167, !tbaa !487
  %11 = icmp eq %struct.item* %10, null, !dbg !1170
  %12 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1171
  %13 = getelementptr inbounds %struct.item, %struct.item* %12, i64 0, i32 6, !dbg !1171
  %14 = select i1 %11, %struct.item** @head, %struct.item** %13, !dbg !1171
  store %struct.item* %0, %struct.item** %14, align 8, !dbg !1172, !tbaa !487
  store %struct.item* %0, %struct.item** @zeros, align 8, !dbg !1173, !tbaa !487
  br label %15, !dbg !1174

15:                                               ; preds = %9, %5, %1
  ret i1 false, !dbg !1175
}

; Function Attrs: nofree nounwind
declare !dbg !1176 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i1 @detect_loop(%struct.item* noundef %0) #13 !dbg !1179 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1181, metadata !DIExpression()), !dbg !1200
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 5, !dbg !1201
  %3 = load i64, i64* %2, align 8, !dbg !1201, !tbaa !1017
  %4 = icmp eq i64 %3, 0, !dbg !1202
  br i1 %4, label %62, label %5, !dbg !1203

5:                                                ; preds = %1
  %6 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1204, !tbaa !487
  %7 = icmp eq %struct.item* %6, null, !dbg !1205
  br i1 %7, label %59, label %8, !dbg !1206

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 7, !dbg !1207
  call void @llvm.dbg.value(metadata %struct.successor** %9, metadata !1182, metadata !DIExpression()), !dbg !1208
  %10 = load %struct.successor*, %struct.successor** %9, align 8, !dbg !1209, !tbaa !487
  %11 = icmp eq %struct.successor* %10, null, !dbg !1210
  br i1 %11, label %62, label %12, !dbg !1210

12:                                               ; preds = %8
  call void @llvm.dbg.value(metadata %struct.successor** %9, metadata !1182, metadata !DIExpression()), !dbg !1208
  %13 = getelementptr inbounds %struct.successor, %struct.successor* %10, i64 0, i32 0, !dbg !1211
  %14 = load %struct.item*, %struct.item** %13, align 8, !dbg !1211, !tbaa !1021
  %15 = icmp eq %struct.item* %14, %6, !dbg !1212
  call void @llvm.dbg.value(metadata %struct.successor* %10, metadata !1182, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1208
  br i1 %15, label %27, label %16, !dbg !1213

16:                                               ; preds = %12, %21
  %17 = phi %struct.successor* [ %19, %21 ], [ %10, %12 ]
  %18 = getelementptr inbounds %struct.successor, %struct.successor* %17, i64 0, i32 1, !dbg !1214
  call void @llvm.dbg.value(metadata %struct.successor** %18, metadata !1182, metadata !DIExpression()), !dbg !1208
  %19 = load %struct.successor*, %struct.successor** %18, align 8, !dbg !1209, !tbaa !487
  %20 = icmp eq %struct.successor* %19, null, !dbg !1210
  br i1 %20, label %62, label %21, !dbg !1210, !llvm.loop !1215

21:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %struct.successor** %18, metadata !1182, metadata !DIExpression()), !dbg !1208
  %22 = getelementptr inbounds %struct.successor, %struct.successor* %19, i64 0, i32 0, !dbg !1211
  %23 = load %struct.item*, %struct.item** %22, align 8, !dbg !1211, !tbaa !1021
  %24 = icmp eq %struct.item* %23, %6, !dbg !1212
  call void @llvm.dbg.value(metadata %struct.successor* %19, metadata !1182, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1208
  br i1 %24, label %25, label %16, !dbg !1213, !llvm.loop !1215

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.successor, %struct.successor* %17, i64 0, i32 1, !dbg !1214
  br label %27, !dbg !1217

27:                                               ; preds = %25, %12
  %28 = phi %struct.successor** [ %9, %12 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 6, !dbg !1217
  %30 = load %struct.item*, %struct.item** %29, align 8, !dbg !1217, !tbaa !1083
  %31 = icmp eq %struct.item* %30, null, !dbg !1218
  br i1 %31, label %58, label %32, !dbg !1219

32:                                               ; preds = %27, %40
  %33 = phi %struct.item* [ %35, %40 ], [ %6, %27 ]
  %34 = getelementptr inbounds %struct.item, %struct.item* %33, i64 0, i32 6, !dbg !1220
  %35 = load %struct.item*, %struct.item** %34, align 8, !dbg !1220, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct.item* %35, metadata !1188, metadata !DIExpression()), !dbg !1221
  %36 = getelementptr inbounds %struct.item, %struct.item* %33, i64 0, i32 0, !dbg !1222
  %37 = load i8*, i8** %36, align 8, !dbg !1222, !tbaa !838
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i8* noundef %37) #33, !dbg !1222
  %38 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1223, !tbaa !487
  %39 = icmp eq %struct.item* %38, %0, !dbg !1224
  br i1 %39, label %43, label %40, !dbg !1225

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.item, %struct.item* %38, i64 0, i32 6, !dbg !1226
  store %struct.item* null, %struct.item** %41, align 8, !dbg !1227, !tbaa !1083
  store %struct.item* %35, %struct.item** @loop, align 8, !dbg !1228, !tbaa !487
  %42 = icmp eq %struct.item* %35, null, !dbg !1229
  br i1 %42, label %62, label %32, !dbg !1229

43:                                               ; preds = %32
  %44 = load %struct.successor*, %struct.successor** %28, align 8, !dbg !1230, !tbaa !487
  call void @llvm.dbg.value(metadata %struct.successor* %44, metadata !1195, metadata !DIExpression()), !dbg !1231
  %45 = getelementptr inbounds %struct.successor, %struct.successor* %44, i64 0, i32 0, !dbg !1232
  %46 = load %struct.item*, %struct.item** %45, align 8, !dbg !1232, !tbaa !1021
  %47 = getelementptr inbounds %struct.item, %struct.item* %46, i64 0, i32 5, !dbg !1233
  %48 = load i64, i64* %47, align 8, !dbg !1234, !tbaa !1017
  %49 = add i64 %48, -1, !dbg !1234
  store i64 %49, i64* %47, align 8, !dbg !1234, !tbaa !1017
  %50 = getelementptr inbounds %struct.successor, %struct.successor* %44, i64 0, i32 1, !dbg !1235
  %51 = load %struct.successor*, %struct.successor** %50, align 8, !dbg !1235, !tbaa !1027
  store %struct.successor* %51, %struct.successor** %28, align 8, !dbg !1236, !tbaa !487
  %52 = icmp eq %struct.item* %0, null, !dbg !1237
  br i1 %52, label %62, label %53, !dbg !1237

53:                                               ; preds = %43, %53
  %54 = phi %struct.item* [ %56, %53 ], [ %0, %43 ]
  %55 = getelementptr inbounds %struct.item, %struct.item* %54, i64 0, i32 6, !dbg !1238
  %56 = load %struct.item*, %struct.item** %55, align 8, !dbg !1238, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct.item* %56, metadata !1198, metadata !DIExpression()), !dbg !1239
  store %struct.item* null, %struct.item** %55, align 8, !dbg !1240, !tbaa !1083
  %57 = icmp eq %struct.item* %56, null, !dbg !1237
  br i1 %57, label %59, label %53, !dbg !1237, !llvm.loop !1241

58:                                               ; preds = %27
  store %struct.item* %6, %struct.item** %29, align 8, !dbg !1243, !tbaa !1083
  br label %59, !dbg !1245

59:                                               ; preds = %53, %5, %58
  %60 = phi %struct.item* [ %0, %58 ], [ %0, %5 ], [ null, %53 ]
  %61 = phi i1 [ false, %58 ], [ false, %5 ], [ true, %53 ]
  store %struct.item* %60, %struct.item** @loop, align 8, !dbg !1246, !tbaa !487
  br label %62, !dbg !1247

62:                                               ; preds = %16, %40, %59, %8, %43, %1
  %63 = phi i1 [ false, %1 ], [ true, %43 ], [ false, %8 ], [ %61, %59 ], [ true, %40 ], [ false, %16 ], !dbg !1200
  ret i1 %63, !dbg !1247
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !1248 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1250, metadata !DIExpression()), !dbg !1251
  store i8* %0, i8** @file_name, align 8, !dbg !1252, !tbaa !487
  ret void, !dbg !1253
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1254 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1258, metadata !DIExpression()), !dbg !1259
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1260, !tbaa !1261
  ret void, !dbg !1262
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #13 !dbg !1263 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1268, !tbaa !487
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !1269
  %3 = icmp eq i32 %2, 0, !dbg !1270
  br i1 %3, label %22, label %4, !dbg !1271

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1272, !tbaa !1261, !range !1165
  %6 = icmp eq i8 %5, 0, !dbg !1272
  br i1 %6, label %11, label %7, !dbg !1273

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !1274
  %9 = load i32, i32* %8, align 4, !dbg !1274, !tbaa !576
  %10 = icmp eq i32 %9, 32, !dbg !1275
  br i1 %10, label %22, label %11, !dbg !1276

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.26, i64 0, i64 0), i32 noundef 5) #33, !dbg !1277
  call void @llvm.dbg.value(metadata i8* %12, metadata !1265, metadata !DIExpression()), !dbg !1278
  %13 = load i8*, i8** @file_name, align 8, !dbg !1279, !tbaa !487
  %14 = icmp eq i8* %13, null, !dbg !1279
  %15 = tail call i32* @__errno_location() #36, !dbg !1281
  %16 = load i32, i32* %15, align 4, !dbg !1281, !tbaa !576
  br i1 %14, label %19, label %17, !dbg !1282

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !1283
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.27, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !1283
  br label %20, !dbg !1283

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.28, i64 0, i64 0), i8* noundef %12) #33, !dbg !1284
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1285, !tbaa !576
  tail call void @_exit(i32 noundef %21) #35, !dbg !1286
  unreachable, !dbg !1286

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1287, !tbaa !487
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !1289
  %25 = icmp eq i32 %24, 0, !dbg !1290
  br i1 %25, label %28, label %26, !dbg !1291

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1292, !tbaa !576
  tail call void @_exit(i32 noundef %27) #35, !dbg !1293
  unreachable, !dbg !1293

28:                                               ; preds = %22
  ret void, !dbg !1294
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1295 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1299, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %1, metadata !1300, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i8* %2, metadata !1301, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1302, metadata !DIExpression()), !dbg !1304
  tail call fastcc void @flush_stdout(), !dbg !1305
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1306, !tbaa !487
  %7 = icmp eq void ()* %6, null, !dbg !1306
  br i1 %7, label %9, label %8, !dbg !1308

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !1309
  br label %13, !dbg !1309

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1310, !tbaa !487
  %11 = tail call i8* @getprogname() #34, !dbg !1310
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* noundef %11) #33, !dbg !1310
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1312
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1312
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1312, !tbaa.struct !1313
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1312
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1312
  ret void, !dbg !1314
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #13 !dbg !1315 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1317, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 1, metadata !1319, metadata !DIExpression()) #33, !dbg !1324
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !1327
  %2 = icmp slt i32 %1, 0, !dbg !1328
  br i1 %2, label %6, label %3, !dbg !1329

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1330, !tbaa !487
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !1330
  br label %6, !dbg !1330

6:                                                ; preds = %3, %0
  ret void, !dbg !1331
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #13 !dbg !1332 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1334, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i32 %1, metadata !1335, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i8* %2, metadata !1336, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1337, metadata !DIExpression()), !dbg !1339
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1340, !tbaa !487
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1341
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1342, metadata !DIExpression()) #33, !dbg !1385
  call void @llvm.dbg.value(metadata i8* %2, metadata !1383, metadata !DIExpression()) #33, !dbg !1385
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1387
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1387, !noalias !1388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1387
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !1387
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1387, !noalias !1388
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1392, !tbaa !576
  %12 = add i32 %11, 1, !dbg !1392
  store i32 %12, i32* @error_message_count, align 4, !dbg !1392, !tbaa !576
  %13 = icmp eq i32 %1, 0, !dbg !1393
  br i1 %13, label %24, label %14, !dbg !1395

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1396, metadata !DIExpression()) #33, !dbg !1404
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1406
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1406
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1400, metadata !DIExpression()) #33, !dbg !1407
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %16, metadata !1399, metadata !DIExpression()) #33, !dbg !1404
  %17 = icmp eq i8* %16, null, !dbg !1409
  br i1 %17, label %18, label %20, !dbg !1411

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.31, i64 0, i64 0), i32 noundef 5) #33, !dbg !1412
  call void @llvm.dbg.value(metadata i8* %19, metadata !1399, metadata !DIExpression()) #33, !dbg !1404
  br label %20, !dbg !1413

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1404
  call void @llvm.dbg.value(metadata i8* %21, metadata !1399, metadata !DIExpression()) #33, !dbg !1404
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1414, !tbaa !487
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.32, i64 0, i64 0), i8* noundef %21) #33, !dbg !1414
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1415
  br label %24, !dbg !1416

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1417, !tbaa !487
  call void @llvm.dbg.value(metadata i32 10, metadata !1418, metadata !DIExpression()) #33, !dbg !1424
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1423, metadata !DIExpression()) #33, !dbg !1424
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1426
  %27 = load i8*, i8** %26, align 8, !dbg !1426, !tbaa !1427
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1426
  %29 = load i8*, i8** %28, align 8, !dbg !1426, !tbaa !1428
  %30 = icmp ult i8* %27, %29, !dbg !1426
  br i1 %30, label %33, label %31, !dbg !1426, !prof !1429

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1426
  br label %35, !dbg !1426

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1426
  store i8* %34, i8** %26, align 8, !dbg !1426, !tbaa !1427
  store i8 10, i8* %27, align 1, !dbg !1426, !tbaa !585
  br label %35, !dbg !1426

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1430, !tbaa !487
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1430
  %38 = icmp eq i32 %0, 0, !dbg !1431
  br i1 %38, label %40, label %39, !dbg !1433

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !1434
  unreachable, !dbg !1434

40:                                               ; preds = %35
  ret void, !dbg !1435
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1436 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1440 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1443 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #13 !dbg !1447 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1451, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i32 %1, metadata !1452, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i8* %2, metadata !1453, metadata !DIExpression()), !dbg !1455
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1456
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1456
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1454, metadata !DIExpression()), !dbg !1457
  call void @llvm.va_start(i8* nonnull %6), !dbg !1458
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1459
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1459, !tbaa.struct !1313
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1459
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1459
  call void @llvm.va_end(i8* nonnull %6), !dbg !1460
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1461
  ret void, !dbg !1461
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !209 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !227, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %1, metadata !228, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %2, metadata !229, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %3, metadata !230, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %4, metadata !231, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !232, metadata !DIExpression()), !dbg !1463
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1464, !tbaa !576
  %9 = icmp eq i32 %8, 0, !dbg !1464
  br i1 %9, label %24, label %10, !dbg !1466

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1467, !tbaa !576
  %12 = icmp eq i32 %11, %3, !dbg !1470
  br i1 %12, label %13, label %23, !dbg !1471

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1472, !tbaa !487
  %15 = icmp eq i8* %14, %2, !dbg !1473
  br i1 %15, label %39, label %16, !dbg !1474

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1475
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1476
  br i1 %19, label %20, label %23, !dbg !1476

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !1477
  %22 = icmp eq i32 %21, 0, !dbg !1478
  br i1 %22, label %39, label %23, !dbg !1479

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1480, !tbaa !487
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1481, !tbaa !576
  br label %24, !dbg !1482

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1483
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1484, !tbaa !487
  %26 = icmp eq void ()* %25, null, !dbg !1484
  br i1 %26, label %28, label %27, !dbg !1486

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !1487
  br label %32, !dbg !1487

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1488, !tbaa !487
  %30 = tail call i8* @getprogname() #34, !dbg !1488
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.35, i64 0, i64 0), i8* noundef %30) #33, !dbg !1488
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1490, !tbaa !487
  %34 = icmp eq i8* %2, null, !dbg !1490
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.36, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.37, i64 0, i64 0), !dbg !1490
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !1490
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1491
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1491
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1491
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1491, !tbaa.struct !1313
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1491
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1491
  br label %39, !dbg !1492

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1492
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #13 !dbg !1493 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1497, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %1, metadata !1498, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %2, metadata !1499, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %3, metadata !1500, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8* %4, metadata !1501, metadata !DIExpression()), !dbg !1503
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1504
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1504
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1502, metadata !DIExpression()), !dbg !1505
  call void @llvm.va_start(i8* nonnull %8), !dbg !1506
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1507
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1507, !tbaa.struct !1313
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1507
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1507
  call void @llvm.va_end(i8* nonnull %8), !dbg !1508
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1509
  ret void, !dbg !1509
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #13 !dbg !1510 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1516, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %1, metadata !1517, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %2, metadata !1518, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %3, metadata !1519, metadata !DIExpression()), !dbg !1520
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #33, !dbg !1521
  ret void, !dbg !1522
}

; Function Attrs: nounwind
declare !dbg !1523 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1526 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1564, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 %1, metadata !1565, metadata !DIExpression()), !dbg !1566
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1567
  br i1 %3, label %7, label %4, !dbg !1569

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1570
  call void @llvm.dbg.value(metadata i32 %5, metadata !1516, metadata !DIExpression()) #33, !dbg !1571
  call void @llvm.dbg.value(metadata i64 0, metadata !1517, metadata !DIExpression()) #33, !dbg !1571
  call void @llvm.dbg.value(metadata i64 0, metadata !1518, metadata !DIExpression()) #33, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %1, metadata !1519, metadata !DIExpression()) #33, !dbg !1571
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #33, !dbg !1573
  br label %7, !dbg !1574

7:                                                ; preds = %4, %2
  ret void, !dbg !1575
}

; Function Attrs: nofree nounwind
declare !dbg !1576 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #13 !dbg !1579 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1617, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i32 0, metadata !1618, metadata !DIExpression()), !dbg !1621
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1622
  call void @llvm.dbg.value(metadata i32 %2, metadata !1619, metadata !DIExpression()), !dbg !1621
  %3 = icmp slt i32 %2, 0, !dbg !1623
  br i1 %3, label %4, label %6, !dbg !1625

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1626
  br label %24, !dbg !1627

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1628
  %8 = icmp eq i32 %7, 0, !dbg !1628
  br i1 %8, label %13, label %9, !dbg !1630

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1631
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !1632
  %12 = icmp eq i64 %11, -1, !dbg !1633
  br i1 %12, label %16, label %13, !dbg !1634

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1635
  %15 = icmp eq i32 %14, 0, !dbg !1635
  br i1 %15, label %16, label %18, !dbg !1636

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !1618, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1621
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1637
  call void @llvm.dbg.value(metadata i32 %21, metadata !1620, metadata !DIExpression()), !dbg !1621
  br label %24, !dbg !1638

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !1639
  %20 = load i32, i32* %19, align 4, !dbg !1639, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %20, metadata !1618, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1621
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1637
  call void @llvm.dbg.value(metadata i32 %21, metadata !1620, metadata !DIExpression()), !dbg !1621
  %22 = icmp eq i32 %20, 0, !dbg !1640
  br i1 %22, label %24, label %23, !dbg !1638

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !1642, !tbaa !576
  call void @llvm.dbg.value(metadata i32 -1, metadata !1620, metadata !DIExpression()), !dbg !1621
  br label %24, !dbg !1644

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1621
  ret i32 %25, !dbg !1645
}

; Function Attrs: nofree nounwind
declare !dbg !1646 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1647 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #13 !dbg !1651 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1689, metadata !DIExpression()), !dbg !1690
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1691
  br i1 %2, label %6, label %3, !dbg !1693

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1694
  %5 = icmp eq i32 %4, 0, !dbg !1694
  br i1 %5, label %6, label %8, !dbg !1695

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !1696
  br label %17, !dbg !1697

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1698, metadata !DIExpression()) #33, !dbg !1703
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1705
  %10 = load i32, i32* %9, align 8, !dbg !1705, !tbaa !800
  %11 = and i32 %10, 256, !dbg !1707
  %12 = icmp eq i32 %11, 0, !dbg !1707
  br i1 %12, label %15, label %13, !dbg !1708

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !1709
  br label %15, !dbg !1709

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !1710
  br label %17, !dbg !1711

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !1690
  ret i32 %18, !dbg !1712
}

; Function Attrs: nofree nounwind
declare !dbg !1713 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* noundef %0, i8* noundef nonnull %1, %struct._IO_FILE* noundef nonnull %2) local_unnamed_addr #13 !dbg !1714 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1752, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8* %1, metadata !1753, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1754, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1755, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1756, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1759
  %4 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %2) #33, !dbg !1760
  switch i32 %4, label %5 [
    i32 2, label %8
    i32 1, label %14
    i32 0, label %57
  ], !dbg !1761

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #33, !dbg !1762
  %7 = icmp eq i32 %6, 2, !dbg !1765
  br label %8, !dbg !1766

8:                                                ; preds = %3, %5
  %9 = phi i1 [ true, %3 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1757, metadata !DIExpression()), !dbg !1759
  %10 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #33, !dbg !1767
  %11 = icmp ne i32 %10, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i8 undef, metadata !1756, metadata !DIExpression()), !dbg !1759
  %12 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #33, !dbg !1770
  %13 = icmp eq i32 %12, 0, !dbg !1772
  br i1 %13, label %17, label %18, !dbg !1773

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8 undef, metadata !1757, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 undef, metadata !1756, metadata !DIExpression()), !dbg !1759
  %15 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #33, !dbg !1770
  %16 = icmp eq i32 %15, 0, !dbg !1772
  br i1 %16, label %57, label %18, !dbg !1773

17:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 poison, metadata !1757, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 poison, metadata !1756, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 poison, metadata !1755, metadata !DIExpression()), !dbg !1759
  br i1 %11, label %29, label %40, !dbg !1774

18:                                               ; preds = %14, %8
  %19 = phi i1 [ true, %14 ], [ %9, %8 ]
  %20 = phi i1 [ false, %14 ], [ %11, %8 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1757, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 poison, metadata !1756, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 poison, metadata !1755, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32 0, metadata !1777, metadata !DIExpression()) #33, !dbg !1783
  %21 = tail call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 0) #33, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %21, metadata !1782, metadata !DIExpression()) #33, !dbg !1783
  %22 = icmp eq i32 %21, 0, !dbg !1786
  %23 = icmp slt i32 %21, 1, !dbg !1788
  br i1 %23, label %27, label %24, !dbg !1788

24:                                               ; preds = %18
  %25 = tail call i32 @close(i32 noundef %21) #33, !dbg !1789
  %26 = tail call i32* @__errno_location() #36, !dbg !1793
  store i32 9, i32* %26, align 4, !dbg !1794, !tbaa !576
  br label %27, !dbg !1795

27:                                               ; preds = %18, %24
  br i1 %22, label %28, label %64, !dbg !1796

28:                                               ; preds = %27
  br i1 %20, label %29, label %40, !dbg !1774

29:                                               ; preds = %17, %28
  %30 = phi i1 [ %9, %17 ], [ %19, %28 ]
  %31 = phi i1 [ false, %17 ], [ true, %28 ]
  call void @llvm.dbg.value(metadata i32 1, metadata !1777, metadata !DIExpression()) #33, !dbg !1797
  %32 = tail call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 0) #33, !dbg !1799
  call void @llvm.dbg.value(metadata i32 %32, metadata !1782, metadata !DIExpression()) #33, !dbg !1797
  %33 = icmp eq i32 %32, 1, !dbg !1800
  %34 = icmp slt i32 %32, 0
  %35 = or i1 %33, %34, !dbg !1801
  br i1 %35, label %39, label %36, !dbg !1801

36:                                               ; preds = %29
  %37 = tail call i32 @close(i32 noundef %32) #33, !dbg !1802
  %38 = tail call i32* @__errno_location() #36, !dbg !1803
  store i32 9, i32* %38, align 4, !dbg !1804, !tbaa !576
  br label %39, !dbg !1805

39:                                               ; preds = %29, %36
  br i1 %33, label %40, label %64, !dbg !1806

40:                                               ; preds = %17, %39, %28
  %41 = phi i1 [ %9, %17 ], [ %30, %39 ], [ %19, %28 ]
  %42 = phi i1 [ false, %17 ], [ %31, %39 ], [ true, %28 ]
  %43 = phi i1 [ false, %17 ], [ true, %39 ], [ false, %28 ]
  br i1 %41, label %57, label %44, !dbg !1807

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 2, metadata !1777, metadata !DIExpression()) #33, !dbg !1809
  %45 = tail call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 0) #33, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %45, metadata !1782, metadata !DIExpression()) #33, !dbg !1809
  %46 = icmp eq i32 %45, 2, !dbg !1812
  %47 = icmp slt i32 %45, 0
  %48 = or i1 %46, %47, !dbg !1813
  br i1 %48, label %52, label %49, !dbg !1813

49:                                               ; preds = %44
  %50 = tail call i32 @close(i32 noundef %45) #33, !dbg !1814
  %51 = tail call i32* @__errno_location() #36, !dbg !1815
  store i32 9, i32* %51, align 4, !dbg !1816, !tbaa !576
  br label %52, !dbg !1817

52:                                               ; preds = %44, %49
  br i1 %46, label %57, label %53, !dbg !1818

53:                                               ; preds = %52
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1754, metadata !DIExpression()), !dbg !1759
  %54 = tail call i32* @__errno_location() #36, !dbg !1819
  %55 = load i32, i32* %54, align 4, !dbg !1819, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %69, metadata !1758, metadata !DIExpression()), !dbg !1759
  %56 = tail call i32 @close(i32 noundef 2) #33, !dbg !1820
  br i1 %43, label %83, label %89, !dbg !1822

57:                                               ; preds = %14, %3, %52, %40
  %58 = phi i1 [ true, %52 ], [ false, %40 ], [ false, %3 ], [ false, %14 ]
  %59 = phi i1 [ %43, %52 ], [ %43, %40 ], [ false, %3 ], [ false, %14 ]
  %60 = phi i1 [ %42, %52 ], [ %42, %40 ], [ false, %3 ], [ false, %14 ]
  %61 = tail call %struct._IO_FILE* @freopen(i8* noundef %0, i8* noundef nonnull %1, %struct._IO_FILE* noundef nonnull %2) #33, !dbg !1823
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1754, metadata !DIExpression()), !dbg !1759
  %62 = tail call i32* @__errno_location() #36, !dbg !1819
  %63 = load i32, i32* %62, align 4, !dbg !1819, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %69, metadata !1758, metadata !DIExpression()), !dbg !1759
  br i1 %58, label %70, label %77, !dbg !1824

64:                                               ; preds = %39, %27
  %65 = phi i1 [ %19, %27 ], [ %30, %39 ]
  %66 = phi i1 [ %20, %27 ], [ true, %39 ]
  %67 = phi i1 [ true, %27 ], [ %31, %39 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1754, metadata !DIExpression()), !dbg !1759
  %68 = tail call i32* @__errno_location() #36, !dbg !1819
  %69 = load i32, i32* %68, align 4, !dbg !1819, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %69, metadata !1758, metadata !DIExpression()), !dbg !1759
  br i1 %65, label %77, label %70, !dbg !1824

70:                                               ; preds = %57, %64
  %71 = phi i32 [ %69, %64 ], [ %63, %57 ]
  %72 = phi i32* [ %68, %64 ], [ %62, %57 ]
  %73 = phi %struct._IO_FILE* [ null, %64 ], [ %61, %57 ]
  %74 = phi i1 [ %67, %64 ], [ %60, %57 ]
  %75 = phi i1 [ %66, %64 ], [ %59, %57 ]
  %76 = tail call i32 @close(i32 noundef 2) #33, !dbg !1820
  br i1 %75, label %83, label %89, !dbg !1822

77:                                               ; preds = %57, %64
  %78 = phi i32 [ %69, %64 ], [ %63, %57 ]
  %79 = phi i32* [ %68, %64 ], [ %62, %57 ]
  %80 = phi %struct._IO_FILE* [ null, %64 ], [ %61, %57 ]
  %81 = phi i1 [ %67, %64 ], [ %60, %57 ]
  %82 = phi i1 [ %66, %64 ], [ %59, %57 ]
  br i1 %82, label %83, label %89, !dbg !1822

83:                                               ; preds = %53, %70, %77
  %84 = phi i1 [ %74, %70 ], [ %81, %77 ], [ %42, %53 ]
  %85 = phi %struct._IO_FILE* [ %73, %70 ], [ %80, %77 ], [ null, %53 ]
  %86 = phi i32* [ %72, %70 ], [ %79, %77 ], [ %54, %53 ]
  %87 = phi i32 [ %71, %70 ], [ %78, %77 ], [ %55, %53 ]
  %88 = tail call i32 @close(i32 noundef 1) #33, !dbg !1825
  br i1 %84, label %94, label %99, !dbg !1827

89:                                               ; preds = %53, %70, %77
  %90 = phi i1 [ %74, %70 ], [ %81, %77 ], [ %42, %53 ]
  %91 = phi %struct._IO_FILE* [ %73, %70 ], [ %80, %77 ], [ null, %53 ]
  %92 = phi i32* [ %72, %70 ], [ %79, %77 ], [ %54, %53 ]
  %93 = phi i32 [ %71, %70 ], [ %78, %77 ], [ %55, %53 ]
  br i1 %90, label %94, label %99, !dbg !1827

94:                                               ; preds = %83, %89
  %95 = phi i32 [ %87, %83 ], [ %93, %89 ]
  %96 = phi i32* [ %86, %83 ], [ %92, %89 ]
  %97 = phi %struct._IO_FILE* [ %85, %83 ], [ %91, %89 ]
  %98 = tail call i32 @close(i32 noundef 0) #33, !dbg !1828
  br label %99, !dbg !1828

99:                                               ; preds = %83, %94, %89
  %100 = phi i32 [ %87, %83 ], [ %95, %94 ], [ %93, %89 ]
  %101 = phi i32* [ %86, %83 ], [ %96, %94 ], [ %92, %89 ]
  %102 = phi %struct._IO_FILE* [ %85, %83 ], [ %97, %94 ], [ %91, %89 ]
  %103 = icmp eq %struct._IO_FILE* %102, null, !dbg !1830
  br i1 %103, label %104, label %105, !dbg !1832

104:                                              ; preds = %99
  store i32 %100, i32* %101, align 4, !dbg !1833, !tbaa !576
  br label %105, !dbg !1834

105:                                              ; preds = %104, %99
  ret %struct._IO_FILE* %102, !dbg !1835
}

; Function Attrs: nounwind
declare !dbg !1836 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1839 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #18

declare !dbg !1842 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !1843 %struct._IO_FILE* @freopen(i8* noundef, i8* noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #13 !dbg !1847 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1885, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %1, metadata !1886, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 %2, metadata !1887, metadata !DIExpression()), !dbg !1891
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1892
  %5 = load i8*, i8** %4, align 8, !dbg !1892, !tbaa !1893
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1894
  %7 = load i8*, i8** %6, align 8, !dbg !1894, !tbaa !1895
  %8 = icmp eq i8* %5, %7, !dbg !1896
  br i1 %8, label %9, label %28, !dbg !1897

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1898
  %11 = load i8*, i8** %10, align 8, !dbg !1898, !tbaa !1427
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !1899
  %13 = load i8*, i8** %12, align 8, !dbg !1899, !tbaa !1900
  %14 = icmp eq i8* %11, %13, !dbg !1901
  br i1 %14, label %15, label %28, !dbg !1902

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !1903
  %17 = load i8*, i8** %16, align 8, !dbg !1903, !tbaa !1904
  %18 = icmp eq i8* %17, null, !dbg !1905
  br i1 %18, label %19, label %28, !dbg !1906

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1907
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %21, metadata !1888, metadata !DIExpression()), !dbg !1909
  %22 = icmp eq i64 %21, -1, !dbg !1910
  br i1 %22, label %30, label %23, !dbg !1912

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1913
  %25 = load i32, i32* %24, align 8, !dbg !1914, !tbaa !800
  %26 = and i32 %25, -17, !dbg !1914
  store i32 %26, i32* %24, align 8, !dbg !1914, !tbaa !800
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !1915
  store i64 %21, i64* %27, align 8, !dbg !1916, !tbaa !1917
  br label %30, !dbg !1918

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !1919
  br label %30, !dbg !1920

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !1891
  ret i32 %31, !dbg !1921
}

; Function Attrs: nofree nounwind
declare !dbg !1922 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !1925 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1928, !tbaa !487
  ret i8* %1, !dbg !1929
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #20 !dbg !1930 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1932, metadata !DIExpression()), !dbg !1935
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !1936
  call void @llvm.dbg.value(metadata i8* %2, metadata !1933, metadata !DIExpression()), !dbg !1935
  %3 = icmp eq i8* %2, null, !dbg !1937
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1937
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1937
  call void @llvm.dbg.value(metadata i8* %5, metadata !1934, metadata !DIExpression()), !dbg !1935
  %6 = ptrtoint i8* %5 to i64, !dbg !1938
  %7 = ptrtoint i8* %0 to i64, !dbg !1938
  %8 = sub i64 %6, %7, !dbg !1938
  %9 = icmp sgt i64 %8, 6, !dbg !1940
  br i1 %9, label %10, label %19, !dbg !1941

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1942
  call void @llvm.dbg.value(metadata i8* %11, metadata !1943, metadata !DIExpression()) #33, !dbg !1950
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), metadata !1948, metadata !DIExpression()) #33, !dbg !1950
  call void @llvm.dbg.value(metadata i64 7, metadata !1949, metadata !DIExpression()) #33, !dbg !1950
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i64 7) #33, !dbg !1952
  %13 = icmp eq i32 %12, 0, !dbg !1953
  br i1 %13, label %14, label %19, !dbg !1954

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1932, metadata !DIExpression()), !dbg !1935
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.72, i64 0, i64 0), i64 noundef 3) #34, !dbg !1955
  %16 = icmp eq i32 %15, 0, !dbg !1958
  %17 = select i1 %16, i64 3, i64 0, !dbg !1959
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1959
  br label %19, !dbg !1959

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1935
  call void @llvm.dbg.value(metadata i8* %21, metadata !1934, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %20, metadata !1932, metadata !DIExpression()), !dbg !1935
  store i8* %20, i8** @program_name, align 8, !dbg !1960, !tbaa !487
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1961, !tbaa !487
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1962, !tbaa !487
  ret void, !dbg !1963
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #13 !dbg !250 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !257, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %1, metadata !258, metadata !DIExpression()), !dbg !1964
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !1965
  call void @llvm.dbg.value(metadata i8* %5, metadata !259, metadata !DIExpression()), !dbg !1964
  %6 = icmp eq i8* %5, %0, !dbg !1966
  br i1 %6, label %7, label %17, !dbg !1968

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1969
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1969
  %10 = bitcast i64* %4 to i8*, !dbg !1970
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1970
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !265, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1972, metadata !DIExpression()) #33, !dbg !1979
  call void @llvm.dbg.value(metadata i8* %10, metadata !1981, metadata !DIExpression()) #33, !dbg !1989
  call void @llvm.dbg.value(metadata i32 0, metadata !1987, metadata !DIExpression()) #33, !dbg !1989
  call void @llvm.dbg.value(metadata i64 8, metadata !1988, metadata !DIExpression()) #33, !dbg !1989
  store i64 0, i64* %4, align 8, !dbg !1991
  call void @llvm.dbg.value(metadata i32* %3, metadata !260, metadata !DIExpression(DW_OP_deref)), !dbg !1964
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !1992
  %12 = icmp eq i64 %11, 2, !dbg !1994
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !260, metadata !DIExpression()), !dbg !1964
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1995
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1964
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1996
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1996
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1964
  ret i8* %18, !dbg !1996
}

; Function Attrs: nounwind
declare !dbg !1997 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #13 !dbg !2003 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2008, metadata !DIExpression()), !dbg !2011
  %2 = tail call i32* @__errno_location() #36, !dbg !2012
  %3 = load i32, i32* %2, align 4, !dbg !2012, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %3, metadata !2009, metadata !DIExpression()), !dbg !2011
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2013
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2013
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2013
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !2014
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2014
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2010, metadata !DIExpression()), !dbg !2011
  store i32 %3, i32* %2, align 4, !dbg !2015, !tbaa !576
  ret %struct.quoting_options* %8, !dbg !2016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !2017 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2023, metadata !DIExpression()), !dbg !2024
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2025
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2025
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2026
  %5 = load i32, i32* %4, align 8, !dbg !2026, !tbaa !2027
  ret i32 %5, !dbg !2029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !2030 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %1, metadata !2035, metadata !DIExpression()), !dbg !2036
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2037
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2037
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2038
  store i32 %1, i32* %5, align 8, !dbg !2039, !tbaa !2027
  ret void, !dbg !2040
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !2041 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2045, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %1, metadata !2046, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %2, metadata !2047, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %1, metadata !2048, metadata !DIExpression()), !dbg !2053
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2054
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2054
  %6 = lshr i8 %1, 5, !dbg !2055
  %7 = zext i8 %6 to i64, !dbg !2055
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2056
  call void @llvm.dbg.value(metadata i32* %8, metadata !2049, metadata !DIExpression()), !dbg !2053
  %9 = and i8 %1, 31, !dbg !2057
  %10 = zext i8 %9 to i32, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %10, metadata !2051, metadata !DIExpression()), !dbg !2053
  %11 = load i32, i32* %8, align 4, !dbg !2058, !tbaa !576
  %12 = lshr i32 %11, %10, !dbg !2059
  %13 = and i32 %12, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %13, metadata !2052, metadata !DIExpression()), !dbg !2053
  %14 = and i32 %2, 1, !dbg !2061
  %15 = xor i32 %13, %14, !dbg !2062
  %16 = shl i32 %15, %10, !dbg !2063
  %17 = xor i32 %16, %11, !dbg !2064
  store i32 %17, i32* %8, align 4, !dbg !2064, !tbaa !576
  ret i32 %13, !dbg !2065
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !2066 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2070, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %1, metadata !2071, metadata !DIExpression()), !dbg !2073
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2074
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2076
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2070, metadata !DIExpression()), !dbg !2073
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2077
  %6 = load i32, i32* %5, align 4, !dbg !2077, !tbaa !2078
  call void @llvm.dbg.value(metadata i32 %6, metadata !2072, metadata !DIExpression()), !dbg !2073
  store i32 %1, i32* %5, align 4, !dbg !2079, !tbaa !2078
  ret i32 %6, !dbg !2080
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #13 !dbg !2081 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2085, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %1, metadata !2086, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %2, metadata !2087, metadata !DIExpression()), !dbg !2088
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2089
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()), !dbg !2088
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2092
  store i32 10, i32* %6, align 8, !dbg !2093, !tbaa !2027
  %7 = icmp ne i8* %1, null, !dbg !2094
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2096
  br i1 %9, label %11, label %10, !dbg !2096

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2097
  unreachable, !dbg !2097

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2098
  store i8* %1, i8** %12, align 8, !dbg !2099, !tbaa !2100
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2101
  store i8* %2, i8** %13, align 8, !dbg !2102, !tbaa !2103
  ret void, !dbg !2104
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #13 !dbg !2105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2109, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %1, metadata !2110, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8* %2, metadata !2111, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %3, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2113, metadata !DIExpression()), !dbg !2117
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2118
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2118
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2114, metadata !DIExpression()), !dbg !2117
  %8 = tail call i32* @__errno_location() #36, !dbg !2119
  %9 = load i32, i32* %8, align 4, !dbg !2119, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %9, metadata !2115, metadata !DIExpression()), !dbg !2117
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2120
  %11 = load i32, i32* %10, align 8, !dbg !2120, !tbaa !2027
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2121
  %13 = load i32, i32* %12, align 4, !dbg !2121, !tbaa !2078
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2122
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2123
  %16 = load i8*, i8** %15, align 8, !dbg !2123, !tbaa !2100
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2124
  %18 = load i8*, i8** %17, align 8, !dbg !2124, !tbaa !2103
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %19, metadata !2116, metadata !DIExpression()), !dbg !2117
  store i32 %9, i32* %8, align 4, !dbg !2126, !tbaa !576
  ret i64 %19, !dbg !2127
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #13 !dbg !2128 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2134, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %1, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %2, metadata !2136, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %3, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %4, metadata !2138, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %5, metadata !2139, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32* %6, metadata !2140, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %7, metadata !2141, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %8, metadata !2142, metadata !DIExpression()), !dbg !2196
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !2197
  %18 = icmp eq i64 %17, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i1 %18, metadata !2143, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2196
  call void @llvm.dbg.value(metadata i64 0, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 0, metadata !2145, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* null, metadata !2146, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 0, metadata !2147, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %5, metadata !2149, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 1, metadata !2151, metadata !DIExpression()), !dbg !2196
  %19 = and i32 %5, 2, !dbg !2199
  %20 = icmp ne i32 %19, 0, !dbg !2199
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
  br label %36, !dbg !2199

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2200
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2201
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2202
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2151, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %43, metadata !2147, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %42, metadata !2146, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %41, metadata !2145, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 0, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %40, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %39, metadata !2142, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %38, metadata !2141, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %37, metadata !2138, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.label(metadata !2189), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2196
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
  ], !dbg !2204

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 5, metadata !2138, metadata !DIExpression()), !dbg !2196
  br label %111, !dbg !2205

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 5, metadata !2138, metadata !DIExpression()), !dbg !2196
  br i1 %45, label %111, label %51, !dbg !2205

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2206
  br i1 %52, label %111, label %53, !dbg !2210

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2206, !tbaa !585
  br label %111, !dbg !2206

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), metadata !327, metadata !DIExpression()) #33, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %37, metadata !328, metadata !DIExpression()) #33, !dbg !2211
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), i32 noundef 5) #33, !dbg !2215
  call void @llvm.dbg.value(metadata i8* %55, metadata !329, metadata !DIExpression()) #33, !dbg !2211
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), !dbg !2216
  br i1 %56, label %57, label %66, !dbg !2218

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2219
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2220
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !331, metadata !DIExpression()) #33, !dbg !2221
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2222, metadata !DIExpression()) #33, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %23, metadata !2230, metadata !DIExpression()) #33, !dbg !2235
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()) #33, !dbg !2235
  call void @llvm.dbg.value(metadata i64 8, metadata !2234, metadata !DIExpression()) #33, !dbg !2235
  store i64 0, i64* %13, align 8, !dbg !2237
  call void @llvm.dbg.value(metadata i32* %12, metadata !330, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2211
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !2238
  %59 = icmp eq i64 %58, 3, !dbg !2240
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !330, metadata !DIExpression()) #33, !dbg !2211
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2241
  %63 = icmp eq i32 %37, 9, !dbg !2241
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !2241
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2241
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2242
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2211
  call void @llvm.dbg.value(metadata i8* %67, metadata !2141, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), metadata !327, metadata !DIExpression()) #33, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %37, metadata !328, metadata !DIExpression()) #33, !dbg !2243
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), i32 noundef 5) #33, !dbg !2245
  call void @llvm.dbg.value(metadata i8* %68, metadata !329, metadata !DIExpression()) #33, !dbg !2243
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !2246
  br i1 %69, label %70, label %79, !dbg !2247

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2249
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !331, metadata !DIExpression()) #33, !dbg !2250
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2222, metadata !DIExpression()) #33, !dbg !2251
  call void @llvm.dbg.value(metadata i8* %26, metadata !2230, metadata !DIExpression()) #33, !dbg !2253
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()) #33, !dbg !2253
  call void @llvm.dbg.value(metadata i64 8, metadata !2234, metadata !DIExpression()) #33, !dbg !2253
  store i64 0, i64* %11, align 8, !dbg !2255
  call void @llvm.dbg.value(metadata i32* %10, metadata !330, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2243
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !2256
  %72 = icmp eq i64 %71, 3, !dbg !2257
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !330, metadata !DIExpression()) #33, !dbg !2243
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2258
  %76 = icmp eq i32 %37, 9, !dbg !2258
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !2258
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2258
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2259
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2259
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2142, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %80, metadata !2141, metadata !DIExpression()), !dbg !2196
  br i1 %45, label %97, label %82, !dbg !2260

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2153, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 0, metadata !2144, metadata !DIExpression()), !dbg !2196
  %83 = load i8, i8* %80, align 1, !dbg !2262, !tbaa !585
  %84 = icmp eq i8 %83, 0, !dbg !2264
  br i1 %84, label %97, label %85, !dbg !2264

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2153, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 %88, metadata !2144, metadata !DIExpression()), !dbg !2196
  %89 = icmp ult i64 %88, %48, !dbg !2265
  br i1 %89, label %90, label %92, !dbg !2268

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2265
  store i8 %86, i8* %91, align 1, !dbg !2265, !tbaa !585
  br label %92, !dbg !2265

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %93, metadata !2144, metadata !DIExpression()), !dbg !2196
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2269
  call void @llvm.dbg.value(metadata i8* %94, metadata !2153, metadata !DIExpression()), !dbg !2261
  %95 = load i8, i8* %94, align 1, !dbg !2262, !tbaa !585
  %96 = icmp eq i8 %95, 0, !dbg !2264
  br i1 %96, label %97, label %85, !dbg !2264, !llvm.loop !2270

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2272
  call void @llvm.dbg.value(metadata i64 %98, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 1, metadata !2148, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %81, metadata !2146, metadata !DIExpression()), !dbg !2196
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %99, metadata !2147, metadata !DIExpression()), !dbg !2196
  br label %111, !dbg !2274

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2148, metadata !DIExpression()), !dbg !2196
  br label %102, !dbg !2275

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2196
  br i1 %45, label %102, label %105, !dbg !2276

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 2, metadata !2138, metadata !DIExpression()), !dbg !2196
  br label %111, !dbg !2277

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 2, metadata !2138, metadata !DIExpression()), !dbg !2196
  br i1 %45, label %111, label %105, !dbg !2277

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2278
  br i1 %107, label %111, label %108, !dbg !2282

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2278, !tbaa !585
  br label %111, !dbg !2278

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2149, metadata !DIExpression()), !dbg !2196
  br label %111, !dbg !2283

110:                                              ; preds = %36
  call void @abort() #35, !dbg !2284
  unreachable, !dbg !2284

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2272
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %102 ], !dbg !2196
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2196
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2149, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %117, metadata !2147, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %116, metadata !2146, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %115, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %114, metadata !2142, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %113, metadata !2141, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %112, metadata !2138, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 0, metadata !2158, metadata !DIExpression()), !dbg !2285
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
  br label %132, !dbg !2286

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2272
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2200
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2285
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %139, metadata !2158, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2151, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %135, metadata !2145, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %134, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %133, metadata !2137, metadata !DIExpression()), !dbg !2196
  %141 = icmp eq i64 %133, -1, !dbg !2287
  br i1 %141, label %142, label %146, !dbg !2288

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2289
  %144 = load i8, i8* %143, align 1, !dbg !2289, !tbaa !585
  %145 = icmp eq i8 %144, 0, !dbg !2290
  br i1 %145, label %596, label %148, !dbg !2291

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2292
  br i1 %147, label %596, label %148, !dbg !2291

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 0, metadata !2164, metadata !DIExpression()), !dbg !2293
  br i1 %123, label %149, label %163, !dbg !2294

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2296
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2297
  br i1 %151, label %152, label %154, !dbg !2297

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %153, metadata !2137, metadata !DIExpression()), !dbg !2196
  br label %154, !dbg !2299

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2299
  call void @llvm.dbg.value(metadata i64 %155, metadata !2137, metadata !DIExpression()), !dbg !2196
  %156 = icmp ugt i64 %150, %155, !dbg !2300
  br i1 %156, label %163, label %157, !dbg !2301

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %158, metadata !2303, metadata !DIExpression()) #33, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %116, metadata !2306, metadata !DIExpression()) #33, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %117, metadata !2307, metadata !DIExpression()) #33, !dbg !2308
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !2310
  %160 = icmp ne i32 %159, 0, !dbg !2311
  %161 = or i1 %160, %125, !dbg !2312
  %162 = xor i1 %160, true, !dbg !2312
  br i1 %161, label %163, label %647, !dbg !2312

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2160, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %164, metadata !2137, metadata !DIExpression()), !dbg !2196
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2313
  %167 = load i8, i8* %166, align 1, !dbg !2313, !tbaa !585
  call void @llvm.dbg.value(metadata i8 %167, metadata !2165, metadata !DIExpression()), !dbg !2293
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
  ], !dbg !2314

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2315

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2316

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2163, metadata !DIExpression()), !dbg !2293
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2320
  br i1 %171, label %188, label %172, !dbg !2320

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2322
  br i1 %173, label %174, label %176, !dbg !2326

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2322
  store i8 39, i8* %175, align 1, !dbg !2322, !tbaa !585
  br label %176, !dbg !2322

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %177, metadata !2144, metadata !DIExpression()), !dbg !2196
  %178 = icmp ult i64 %177, %140, !dbg !2327
  br i1 %178, label %179, label %181, !dbg !2330

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2327
  store i8 36, i8* %180, align 1, !dbg !2327, !tbaa !585
  br label %181, !dbg !2327

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %182, metadata !2144, metadata !DIExpression()), !dbg !2196
  %183 = icmp ult i64 %182, %140, !dbg !2331
  br i1 %183, label %184, label %186, !dbg !2334

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2331
  store i8 39, i8* %185, align 1, !dbg !2331, !tbaa !585
  br label %186, !dbg !2331

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %187, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 1, metadata !2152, metadata !DIExpression()), !dbg !2196
  br label %188, !dbg !2335

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2196
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %189, metadata !2144, metadata !DIExpression()), !dbg !2196
  %191 = icmp ult i64 %189, %140, !dbg !2336
  br i1 %191, label %192, label %194, !dbg !2339

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2336
  store i8 92, i8* %193, align 1, !dbg !2336, !tbaa !585
  br label %194, !dbg !2336

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %195, metadata !2144, metadata !DIExpression()), !dbg !2196
  br i1 %120, label %196, label %499, !dbg !2340

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2342
  %198 = icmp ult i64 %197, %164, !dbg !2343
  br i1 %198, label %199, label %456, !dbg !2344

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2345
  %201 = load i8, i8* %200, align 1, !dbg !2345, !tbaa !585
  %202 = add i8 %201, -48, !dbg !2346
  %203 = icmp ult i8 %202, 10, !dbg !2346
  br i1 %203, label %204, label %456, !dbg !2346

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2347
  br i1 %205, label %206, label %208, !dbg !2351

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2347
  store i8 48, i8* %207, align 1, !dbg !2347, !tbaa !585
  br label %208, !dbg !2347

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %209, metadata !2144, metadata !DIExpression()), !dbg !2196
  %210 = icmp ult i64 %209, %140, !dbg !2352
  br i1 %210, label %211, label %213, !dbg !2355

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2352
  store i8 48, i8* %212, align 1, !dbg !2352, !tbaa !585
  br label %213, !dbg !2352

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %214, metadata !2144, metadata !DIExpression()), !dbg !2196
  br label %456, !dbg !2356

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2357

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2358

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2359

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2361

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2363
  %221 = icmp ult i64 %220, %164, !dbg !2364
  br i1 %221, label %222, label %456, !dbg !2365

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2366
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2367
  %225 = load i8, i8* %224, align 1, !dbg !2367, !tbaa !585
  %226 = icmp eq i8 %225, 63, !dbg !2368
  br i1 %226, label %227, label %456, !dbg !2369

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2370
  %229 = load i8, i8* %228, align 1, !dbg !2370, !tbaa !585
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
  ], !dbg !2371

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2372

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2165, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %220, metadata !2158, metadata !DIExpression()), !dbg !2285
  %232 = icmp ult i64 %134, %140, !dbg !2374
  br i1 %232, label %233, label %235, !dbg !2377

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2374
  store i8 63, i8* %234, align 1, !dbg !2374, !tbaa !585
  br label %235, !dbg !2374

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %236, metadata !2144, metadata !DIExpression()), !dbg !2196
  %237 = icmp ult i64 %236, %140, !dbg !2378
  br i1 %237, label %238, label %240, !dbg !2381

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2378
  store i8 34, i8* %239, align 1, !dbg !2378, !tbaa !585
  br label %240, !dbg !2378

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %241, metadata !2144, metadata !DIExpression()), !dbg !2196
  %242 = icmp ult i64 %241, %140, !dbg !2382
  br i1 %242, label %243, label %245, !dbg !2385

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2382
  store i8 34, i8* %244, align 1, !dbg !2382, !tbaa !585
  br label %245, !dbg !2382

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %246, metadata !2144, metadata !DIExpression()), !dbg !2196
  %247 = icmp ult i64 %246, %140, !dbg !2386
  br i1 %247, label %248, label %250, !dbg !2389

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2386
  store i8 63, i8* %249, align 1, !dbg !2386, !tbaa !585
  br label %250, !dbg !2386

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %251, metadata !2144, metadata !DIExpression()), !dbg !2196
  br label %456, !dbg !2390

252:                                              ; preds = %163
  br label %263, !dbg !2391

253:                                              ; preds = %163
  br label %263, !dbg !2392

254:                                              ; preds = %163
  br label %261, !dbg !2393

255:                                              ; preds = %163
  br label %261, !dbg !2394

256:                                              ; preds = %163
  br label %263, !dbg !2395

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2396

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2397

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2400

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2402

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2403
  call void @llvm.dbg.label(metadata !2190), !dbg !2404
  br i1 %128, label %263, label %638, !dbg !2405

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2403
  call void @llvm.dbg.label(metadata !2192), !dbg !2407
  br i1 %118, label %510, label %467, !dbg !2408

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2409

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2410, !tbaa !585
  %268 = icmp eq i8 %267, 0, !dbg !2412
  br i1 %268, label %269, label %456, !dbg !2413

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2414
  br i1 %270, label %271, label %456, !dbg !2416

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2164, metadata !DIExpression()), !dbg !2293
  br label %272, !dbg !2417

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2164, metadata !DIExpression()), !dbg !2293
  br i1 %126, label %274, label %456, !dbg !2418

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2420

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 1, metadata !2164, metadata !DIExpression()), !dbg !2293
  br i1 %126, label %276, label %456, !dbg !2421

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2422

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2425
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2427
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2427
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %282, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %281, metadata !2145, metadata !DIExpression()), !dbg !2196
  %283 = icmp ult i64 %134, %282, !dbg !2428
  br i1 %283, label %284, label %286, !dbg !2431

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2428
  store i8 39, i8* %285, align 1, !dbg !2428, !tbaa !585
  br label %286, !dbg !2428

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %287, metadata !2144, metadata !DIExpression()), !dbg !2196
  %288 = icmp ult i64 %287, %282, !dbg !2432
  br i1 %288, label %289, label %291, !dbg !2435

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2432
  store i8 92, i8* %290, align 1, !dbg !2432, !tbaa !585
  br label %291, !dbg !2432

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %292, metadata !2144, metadata !DIExpression()), !dbg !2196
  %293 = icmp ult i64 %292, %282, !dbg !2436
  br i1 %293, label %294, label %296, !dbg !2439

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2436
  store i8 39, i8* %295, align 1, !dbg !2436, !tbaa !585
  br label %296, !dbg !2436

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %297, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2196
  br label %456, !dbg !2440

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2441

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2166, metadata !DIExpression()), !dbg !2442
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !2443
  %301 = load i16*, i16** %300, align 8, !dbg !2443, !tbaa !487
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2443
  %304 = load i16, i16* %303, align 2, !dbg !2443, !tbaa !610
  %305 = and i16 %304, 16384, !dbg !2443
  %306 = icmp ne i16 %305, 0, !dbg !2445
  call void @llvm.dbg.value(metadata i8 poison, metadata !2169, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %349, metadata !2166, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %312, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i1 %350, metadata !2164, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2293
  br label %352, !dbg !2446

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2447
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2170, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2222, metadata !DIExpression()) #33, !dbg !2449
  call void @llvm.dbg.value(metadata i8* %32, metadata !2230, metadata !DIExpression()) #33, !dbg !2451
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()) #33, !dbg !2451
  call void @llvm.dbg.value(metadata i64 8, metadata !2234, metadata !DIExpression()) #33, !dbg !2451
  store i64 0, i64* %14, align 8, !dbg !2453
  call void @llvm.dbg.value(metadata i64 0, metadata !2166, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 1, metadata !2169, metadata !DIExpression()), !dbg !2442
  %308 = icmp eq i64 %164, -1, !dbg !2454
  br i1 %308, label %309, label %311, !dbg !2456

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %310, metadata !2137, metadata !DIExpression()), !dbg !2196
  br label %311, !dbg !2458

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2293
  call void @llvm.dbg.value(metadata i64 %312, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2459
  %313 = sub i64 %312, %139, !dbg !2460
  call void @llvm.dbg.value(metadata i32* %16, metadata !2173, metadata !DIExpression(DW_OP_deref)), !dbg !2461
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %314, metadata !2177, metadata !DIExpression()), !dbg !2461
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2463

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2166, metadata !DIExpression()), !dbg !2442
  %316 = icmp ugt i64 %312, %139, !dbg !2464
  br i1 %316, label %319, label %317, !dbg !2466

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2169, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 0, metadata !2166, metadata !DIExpression()), !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2467
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %349, metadata !2166, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %312, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i1 %350, metadata !2164, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2293
  br label %352, !dbg !2446

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2442
  br label %346, !dbg !2469

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2166, metadata !DIExpression()), !dbg !2442
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2471
  %323 = load i8, i8* %322, align 1, !dbg !2471, !tbaa !585
  %324 = icmp eq i8 %323, 0, !dbg !2466
  br i1 %324, label %348, label %325, !dbg !2472

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %326, metadata !2166, metadata !DIExpression()), !dbg !2442
  %327 = add i64 %326, %139, !dbg !2474
  %328 = icmp eq i64 %326, %313, !dbg !2464
  br i1 %328, label %348, label %319, !dbg !2466, !llvm.loop !2475

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2476
  call void @llvm.dbg.value(metadata i64 1, metadata !2178, metadata !DIExpression()), !dbg !2477
  br i1 %331, label %332, label %340, !dbg !2476

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2178, metadata !DIExpression()), !dbg !2477
  %334 = add i64 %333, %139, !dbg !2478
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2480
  %336 = load i8, i8* %335, align 1, !dbg !2480, !tbaa !585
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2481

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %338, metadata !2178, metadata !DIExpression()), !dbg !2477
  %339 = icmp eq i64 %338, %314, !dbg !2483
  br i1 %339, label %340, label %332, !dbg !2484, !llvm.loop !2485

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2487, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %341, metadata !2173, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 %341, metadata !2489, metadata !DIExpression()) #33, !dbg !2497
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !2499
  %343 = icmp ne i32 %342, 0, !dbg !2500
  call void @llvm.dbg.value(metadata i8 poison, metadata !2169, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %314, metadata !2166, metadata !DIExpression()), !dbg !2442
  br label %348, !dbg !2501

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2169, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 0, metadata !2166, metadata !DIExpression()), !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2467
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2468
  call void @llvm.dbg.label(metadata !2195), !dbg !2502
  %345 = select i1 %118, i32 4, i32 2, !dbg !2503
  br label %643, !dbg !2503

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2169, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 0, metadata !2166, metadata !DIExpression()), !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2467
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %349, metadata !2166, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %312, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i1 %350, metadata !2164, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2293
  br label %352, !dbg !2446

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2169, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 0, metadata !2166, metadata !DIExpression()), !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2467
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %349, metadata !2166, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %312, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i1 %350, metadata !2164, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2293
  %351 = icmp ugt i64 %349, 1, !dbg !2505
  br i1 %351, label %357, label %352, !dbg !2446

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2506
  br i1 %356, label %456, label %357, !dbg !2506

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %361, metadata !2186, metadata !DIExpression()), !dbg !2508
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2509

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2196
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2285
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2510
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2293
  call void @llvm.dbg.value(metadata i8 %369, metadata !2165, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 %368, metadata !2163, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2160, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %366, metadata !2158, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %364, metadata !2144, metadata !DIExpression()), !dbg !2196
  br i1 %362, label %414, label %370, !dbg !2511

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2516

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2163, metadata !DIExpression()), !dbg !2293
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2519
  br i1 %372, label %389, label %373, !dbg !2519

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2521
  br i1 %374, label %375, label %377, !dbg !2525

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2521
  store i8 39, i8* %376, align 1, !dbg !2521, !tbaa !585
  br label %377, !dbg !2521

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %378, metadata !2144, metadata !DIExpression()), !dbg !2196
  %379 = icmp ult i64 %378, %140, !dbg !2526
  br i1 %379, label %380, label %382, !dbg !2529

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2526
  store i8 36, i8* %381, align 1, !dbg !2526, !tbaa !585
  br label %382, !dbg !2526

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %383, metadata !2144, metadata !DIExpression()), !dbg !2196
  %384 = icmp ult i64 %383, %140, !dbg !2530
  br i1 %384, label %385, label %387, !dbg !2533

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2530
  store i8 39, i8* %386, align 1, !dbg !2530, !tbaa !585
  br label %387, !dbg !2530

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %388, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 1, metadata !2152, metadata !DIExpression()), !dbg !2196
  br label %389, !dbg !2534

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2196
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %390, metadata !2144, metadata !DIExpression()), !dbg !2196
  %392 = icmp ult i64 %390, %140, !dbg !2535
  br i1 %392, label %393, label %395, !dbg !2538

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2535
  store i8 92, i8* %394, align 1, !dbg !2535, !tbaa !585
  br label %395, !dbg !2535

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %396, metadata !2144, metadata !DIExpression()), !dbg !2196
  %397 = icmp ult i64 %396, %140, !dbg !2539
  br i1 %397, label %398, label %402, !dbg !2542

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2539
  %400 = or i8 %399, 48, !dbg !2539
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2539
  store i8 %400, i8* %401, align 1, !dbg !2539, !tbaa !585
  br label %402, !dbg !2539

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %403, metadata !2144, metadata !DIExpression()), !dbg !2196
  %404 = icmp ult i64 %403, %140, !dbg !2543
  br i1 %404, label %405, label %410, !dbg !2546

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2543
  %407 = and i8 %406, 7, !dbg !2543
  %408 = or i8 %407, 48, !dbg !2543
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2543
  store i8 %408, i8* %409, align 1, !dbg !2543, !tbaa !585
  br label %410, !dbg !2543

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %411, metadata !2144, metadata !DIExpression()), !dbg !2196
  %412 = and i8 %369, 7, !dbg !2547
  %413 = or i8 %412, 48, !dbg !2548
  call void @llvm.dbg.value(metadata i8 %413, metadata !2165, metadata !DIExpression()), !dbg !2293
  br label %421, !dbg !2549

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2550

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2551
  br i1 %416, label %417, label %419, !dbg !2556

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2551
  store i8 92, i8* %418, align 1, !dbg !2551, !tbaa !585
  br label %419, !dbg !2551

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %420, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2293
  br label %421, !dbg !2557

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2196
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2293
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2293
  call void @llvm.dbg.value(metadata i8 %426, metadata !2165, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 %425, metadata !2163, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2160, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %422, metadata !2144, metadata !DIExpression()), !dbg !2196
  %427 = add i64 %366, 1, !dbg !2558
  %428 = icmp ugt i64 %361, %427, !dbg !2560
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2561

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2562
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2562
  br i1 %432, label %433, label %444, !dbg !2562

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2565
  br i1 %434, label %435, label %437, !dbg !2569

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2565
  store i8 39, i8* %436, align 1, !dbg !2565, !tbaa !585
  br label %437, !dbg !2565

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %438, metadata !2144, metadata !DIExpression()), !dbg !2196
  %439 = icmp ult i64 %438, %140, !dbg !2570
  br i1 %439, label %440, label %442, !dbg !2573

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2570
  store i8 39, i8* %441, align 1, !dbg !2570, !tbaa !585
  br label %442, !dbg !2570

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %443, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2196
  br label %444, !dbg !2574

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2575
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %445, metadata !2144, metadata !DIExpression()), !dbg !2196
  %447 = icmp ult i64 %445, %140, !dbg !2576
  br i1 %447, label %448, label %450, !dbg !2579

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2576
  store i8 %426, i8* %449, align 1, !dbg !2576, !tbaa !585
  br label %450, !dbg !2576

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %451, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %427, metadata !2158, metadata !DIExpression()), !dbg !2285
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2580
  %453 = load i8, i8* %452, align 1, !dbg !2580, !tbaa !585
  call void @llvm.dbg.value(metadata i8 %453, metadata !2165, metadata !DIExpression()), !dbg !2293
  br label %363, !dbg !2581, !llvm.loop !2582

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2165, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i1 %358, metadata !2164, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2293
  call void @llvm.dbg.value(metadata i8 %425, metadata !2163, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2160, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %366, metadata !2158, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %422, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %360, metadata !2137, metadata !DIExpression()), !dbg !2196
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2585
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2196
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2200
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2285
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2293
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 %465, metadata !2165, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2163, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2160, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %462, metadata !2158, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %459, metadata !2145, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %458, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %457, metadata !2137, metadata !DIExpression()), !dbg !2196
  br i1 %121, label %478, label %467, !dbg !2586

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
  br i1 %131, label %479, label %499, !dbg !2588

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2589

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
  %490 = lshr i8 %481, 5, !dbg !2590
  %491 = zext i8 %490 to i64, !dbg !2590
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2591
  %493 = load i32, i32* %492, align 4, !dbg !2591, !tbaa !576
  %494 = and i8 %481, 31, !dbg !2592
  %495 = zext i8 %494 to i32, !dbg !2592
  %496 = shl nuw i32 1, %495, !dbg !2593
  %497 = and i32 %493, %496, !dbg !2593
  %498 = icmp eq i32 %497, 0, !dbg !2593
  br i1 %498, label %499, label %510, !dbg !2594

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
  br i1 %165, label %510, label %546, !dbg !2595

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2585
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2196
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2200
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2596
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2293
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 %518, metadata !2165, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %516, metadata !2158, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %513, metadata !2145, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %512, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %511, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.label(metadata !2193), !dbg !2597
  br i1 %119, label %638, label %520, !dbg !2598

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2163, metadata !DIExpression()), !dbg !2293
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2600
  br i1 %521, label %538, label %522, !dbg !2600

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2602
  br i1 %523, label %524, label %526, !dbg !2606

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2602
  store i8 39, i8* %525, align 1, !dbg !2602, !tbaa !585
  br label %526, !dbg !2602

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %527, metadata !2144, metadata !DIExpression()), !dbg !2196
  %528 = icmp ult i64 %527, %519, !dbg !2607
  br i1 %528, label %529, label %531, !dbg !2610

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2607
  store i8 36, i8* %530, align 1, !dbg !2607, !tbaa !585
  br label %531, !dbg !2607

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %532, metadata !2144, metadata !DIExpression()), !dbg !2196
  %533 = icmp ult i64 %532, %519, !dbg !2611
  br i1 %533, label %534, label %536, !dbg !2614

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2611
  store i8 39, i8* %535, align 1, !dbg !2611, !tbaa !585
  br label %536, !dbg !2611

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %537, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 1, metadata !2152, metadata !DIExpression()), !dbg !2196
  br label %538, !dbg !2615

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2293
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %539, metadata !2144, metadata !DIExpression()), !dbg !2196
  %541 = icmp ult i64 %539, %519, !dbg !2616
  br i1 %541, label %542, label %544, !dbg !2619

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2616
  store i8 92, i8* %543, align 1, !dbg !2616, !tbaa !585
  br label %544, !dbg !2616

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %556, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 %555, metadata !2165, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2163, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %552, metadata !2158, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %549, metadata !2145, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %548, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %547, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.label(metadata !2194), !dbg !2620
  br label %570, !dbg !2621

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2585
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2196
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2200
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2596
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2624
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 %555, metadata !2165, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2164, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 poison, metadata !2163, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %552, metadata !2158, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %549, metadata !2145, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %548, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %547, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.label(metadata !2194), !dbg !2620
  %557 = xor i1 %551, true, !dbg !2621
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2621
  br i1 %558, label %570, label %559, !dbg !2621

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2625
  br i1 %560, label %561, label %563, !dbg !2629

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2625
  store i8 39, i8* %562, align 1, !dbg !2625, !tbaa !585
  br label %563, !dbg !2625

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %564, metadata !2144, metadata !DIExpression()), !dbg !2196
  %565 = icmp ult i64 %564, %556, !dbg !2630
  br i1 %565, label %566, label %568, !dbg !2633

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2630
  store i8 39, i8* %567, align 1, !dbg !2630, !tbaa !585
  br label %568, !dbg !2630

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %569, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2196
  br label %570, !dbg !2634

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2293
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %578, metadata !2144, metadata !DIExpression()), !dbg !2196
  %580 = icmp ult i64 %578, %571, !dbg !2635
  br i1 %580, label %581, label %583, !dbg !2638

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2635
  store i8 %572, i8* %582, align 1, !dbg !2635, !tbaa !585
  br label %583, !dbg !2635

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %584, metadata !2144, metadata !DIExpression()), !dbg !2196
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2639
  call void @llvm.dbg.value(metadata i8 poison, metadata !2151, metadata !DIExpression()), !dbg !2196
  br label %586, !dbg !2640

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2585
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2196
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2200
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2596
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %593, metadata !2158, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2151, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %589, metadata !2145, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %588, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %587, metadata !2137, metadata !DIExpression()), !dbg !2196
  %595 = add i64 %593, 1, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %595, metadata !2158, metadata !DIExpression()), !dbg !2285
  br label %132, !dbg !2642, !llvm.loop !2643

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2151, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 poison, metadata !2150, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 undef, metadata !2145, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 undef, metadata !2144, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 undef, metadata !2137, metadata !DIExpression()), !dbg !2196
  %597 = icmp eq i64 %134, 0, !dbg !2645
  %598 = and i1 %126, %597, !dbg !2647
  %599 = and i1 %598, %119, !dbg !2647
  br i1 %599, label %638, label %600, !dbg !2647

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2648
  %602 = or i1 %119, %601, !dbg !2648
  %603 = xor i1 %136, true, !dbg !2648
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2648
  br i1 %604, label %612, label %605, !dbg !2648

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2650

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2652
  br label %653, !dbg !2654

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2655
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2657
  br i1 %611, label %36, label %612, !dbg !2657

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2658
  %615 = or i1 %614, %613, !dbg !2660
  br i1 %615, label %631, label %616, !dbg !2660

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2146, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %134, metadata !2144, metadata !DIExpression()), !dbg !2196
  %617 = load i8, i8* %116, align 1, !dbg !2661, !tbaa !585
  %618 = icmp eq i8 %617, 0, !dbg !2664
  br i1 %618, label %631, label %619, !dbg !2664

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2146, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %622, metadata !2144, metadata !DIExpression()), !dbg !2196
  %623 = icmp ult i64 %622, %140, !dbg !2665
  br i1 %623, label %624, label %626, !dbg !2668

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2665
  store i8 %620, i8* %625, align 1, !dbg !2665, !tbaa !585
  br label %626, !dbg !2665

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %627, metadata !2144, metadata !DIExpression()), !dbg !2196
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2669
  call void @llvm.dbg.value(metadata i8* %628, metadata !2146, metadata !DIExpression()), !dbg !2196
  %629 = load i8, i8* %628, align 1, !dbg !2661, !tbaa !585
  %630 = icmp eq i8 %629, 0, !dbg !2664
  br i1 %630, label %631, label %619, !dbg !2664, !llvm.loop !2670

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2272
  call void @llvm.dbg.value(metadata i64 %632, metadata !2144, metadata !DIExpression()), !dbg !2196
  %633 = icmp ult i64 %632, %140, !dbg !2672
  br i1 %633, label %634, label %653, !dbg !2674

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2675
  store i8 0, i8* %635, align 1, !dbg !2676, !tbaa !585
  br label %653, !dbg !2675

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2195), !dbg !2502
  %637 = icmp eq i32 %112, 2, !dbg !2677
  br i1 %637, label %643, label %647, !dbg !2503

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2195), !dbg !2502
  %641 = icmp eq i32 %112, 2, !dbg !2677
  %642 = select i1 %118, i32 4, i32 2, !dbg !2503
  br i1 %641, label %643, label %647, !dbg !2503

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2503

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2138, metadata !DIExpression()), !dbg !2196
  %651 = and i32 %5, -3, !dbg !2678
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2679
  br label %653, !dbg !2680

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2681
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2682 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #13 !dbg !2684 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %1, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %0, metadata !2692, metadata !DIExpression()) #33, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %1, metadata !2697, metadata !DIExpression()) #33, !dbg !2705
  call void @llvm.dbg.value(metadata i64* null, metadata !2698, metadata !DIExpression()) #33, !dbg !2705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2699, metadata !DIExpression()) #33, !dbg !2705
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2707
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2700, metadata !DIExpression()) #33, !dbg !2705
  %6 = tail call i32* @__errno_location() #36, !dbg !2708
  %7 = load i32, i32* %6, align 4, !dbg !2708, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %7, metadata !2701, metadata !DIExpression()) #33, !dbg !2705
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2709
  %9 = load i32, i32* %8, align 4, !dbg !2709, !tbaa !2078
  %10 = or i32 %9, 1, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %10, metadata !2702, metadata !DIExpression()) #33, !dbg !2705
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2711
  %12 = load i32, i32* %11, align 8, !dbg !2711, !tbaa !2027
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2712
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2713
  %15 = load i8*, i8** %14, align 8, !dbg !2713, !tbaa !2100
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2714
  %17 = load i8*, i8** %16, align 8, !dbg !2714, !tbaa !2103
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !2715
  %19 = add i64 %18, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %19, metadata !2703, metadata !DIExpression()) #33, !dbg !2705
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %20, metadata !2704, metadata !DIExpression()) #33, !dbg !2705
  %21 = load i32, i32* %11, align 8, !dbg !2718, !tbaa !2027
  %22 = load i8*, i8** %14, align 8, !dbg !2719, !tbaa !2100
  %23 = load i8*, i8** %16, align 8, !dbg !2720, !tbaa !2103
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !2721
  store i32 %7, i32* %6, align 4, !dbg !2722, !tbaa !576
  ret i8* %20, !dbg !2723
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #13 !dbg !2693 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2692, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %1, metadata !2697, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64* %2, metadata !2698, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2699, metadata !DIExpression()), !dbg !2724
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2725
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2725
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2700, metadata !DIExpression()), !dbg !2724
  %7 = tail call i32* @__errno_location() #36, !dbg !2726
  %8 = load i32, i32* %7, align 4, !dbg !2726, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %8, metadata !2701, metadata !DIExpression()), !dbg !2724
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2727
  %10 = load i32, i32* %9, align 4, !dbg !2727, !tbaa !2078
  %11 = icmp eq i64* %2, null, !dbg !2728
  %12 = zext i1 %11 to i32, !dbg !2728
  %13 = or i32 %10, %12, !dbg !2729
  call void @llvm.dbg.value(metadata i32 %13, metadata !2702, metadata !DIExpression()), !dbg !2724
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2730
  %15 = load i32, i32* %14, align 8, !dbg !2730, !tbaa !2027
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2731
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2732
  %18 = load i8*, i8** %17, align 8, !dbg !2732, !tbaa !2100
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2733
  %20 = load i8*, i8** %19, align 8, !dbg !2733, !tbaa !2103
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2734
  %22 = add i64 %21, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %22, metadata !2703, metadata !DIExpression()), !dbg !2724
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !2736
  call void @llvm.dbg.value(metadata i8* %23, metadata !2704, metadata !DIExpression()), !dbg !2724
  %24 = load i32, i32* %14, align 8, !dbg !2737, !tbaa !2027
  %25 = load i8*, i8** %17, align 8, !dbg !2738, !tbaa !2100
  %26 = load i8*, i8** %19, align 8, !dbg !2739, !tbaa !2103
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2740
  store i32 %8, i32* %7, align 4, !dbg !2741, !tbaa !576
  br i1 %11, label %29, label %28, !dbg !2742

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2743, !tbaa !1051
  br label %29, !dbg !2745

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2746
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #13 !dbg !2747 {
  %1 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !2752, !tbaa !487
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %1, metadata !2749, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 1, metadata !2750, metadata !DIExpression()), !dbg !2754
  %2 = load i32, i32* @nslots, align 4, !tbaa !576
  call void @llvm.dbg.value(metadata i32 1, metadata !2750, metadata !DIExpression()), !dbg !2754
  %3 = icmp sgt i32 %2, 1, !dbg !2755
  br i1 %3, label %4, label %6, !dbg !2757

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2755
  br label %10, !dbg !2757

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 0, i32 1, !dbg !2758
  %8 = load i8*, i8** %7, align 8, !dbg !2758, !tbaa !2760
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2762
  br i1 %9, label %17, label %16, !dbg !2763

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2750, metadata !DIExpression()), !dbg !2754
  %12 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 %11, i32 1, !dbg !2764
  %13 = load i8*, i8** %12, align 8, !dbg !2764, !tbaa !2760
  tail call void @free(i8* noundef %13) #33, !dbg !2765
  %14 = add nuw nsw i64 %11, 1, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %14, metadata !2750, metadata !DIExpression()), !dbg !2754
  %15 = icmp eq i64 %14, %5, !dbg !2755
  br i1 %15, label %6, label %10, !dbg !2757, !llvm.loop !2767

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !2769
  store i64 256, i64* getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 0), align 8, !dbg !2771, !tbaa !2772
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 1), align 8, !dbg !2773, !tbaa !2760
  br label %17, !dbg !2774

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.tokenbuffer* %1, @slotvec0, !dbg !2775
  br i1 %18, label %21, label %19, !dbg !2777

19:                                               ; preds = %17
  %20 = bitcast %struct.tokenbuffer* %1 to i8*, !dbg !2778
  tail call void @free(i8* noundef %20) #33, !dbg !2780
  store %struct.tokenbuffer* @slotvec0, %struct.tokenbuffer** @slotvec, align 8, !dbg !2781, !tbaa !487
  br label %21, !dbg !2782

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2783, !tbaa !576
  ret void, !dbg !2784
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #13 !dbg !2785 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2787, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !2788, metadata !DIExpression()), !dbg !2789
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2790
  ret i8* %3, !dbg !2791
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #13 !dbg !2792 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2796, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8* %1, metadata !2797, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %2, metadata !2798, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2799, metadata !DIExpression()), !dbg !2812
  %6 = tail call i32* @__errno_location() #36, !dbg !2813
  %7 = load i32, i32* %6, align 4, !dbg !2813, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %7, metadata !2800, metadata !DIExpression()), !dbg !2812
  %8 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !2814, !tbaa !487
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %8, metadata !2801, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2802, metadata !DIExpression()), !dbg !2812
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2815
  br i1 %9, label %10, label %11, !dbg !2815

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2817
  unreachable, !dbg !2817

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2818, !tbaa !576
  %13 = icmp sgt i32 %12, %0, !dbg !2819
  br i1 %13, label %36, label %14, !dbg !2820

14:                                               ; preds = %11
  %15 = icmp eq %struct.tokenbuffer* %8, @slotvec0, !dbg !2821
  call void @llvm.dbg.value(metadata i1 %15, metadata !2803, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2822
  %16 = bitcast i64* %5 to i8*, !dbg !2823
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2823
  %17 = sext i32 %12 to i64, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %17, metadata !2806, metadata !DIExpression()), !dbg !2822
  store i64 %17, i64* %5, align 8, !dbg !2825, !tbaa !1051
  %18 = select i1 %15, %struct.tokenbuffer* null, %struct.tokenbuffer* %8, !dbg !2826
  %19 = bitcast %struct.tokenbuffer* %18 to i8*, !dbg !2826
  %20 = add nuw nsw i32 %0, 1, !dbg !2827
  %21 = sub i32 %20, %12, !dbg !2828
  %22 = sext i32 %21 to i64, !dbg !2829
  call void @llvm.dbg.value(metadata i64* %5, metadata !2806, metadata !DIExpression(DW_OP_deref)), !dbg !2822
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !2830
  %24 = bitcast i8* %23 to %struct.tokenbuffer*, !dbg !2830
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %24, metadata !2801, metadata !DIExpression()), !dbg !2812
  store i8* %23, i8** bitcast (%struct.tokenbuffer** @slotvec to i8**), align 8, !dbg !2831, !tbaa !487
  br i1 %15, label %25, label %26, !dbg !2832

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.tokenbuffer* @slotvec0 to i8*), i64 16, i1 false), !dbg !2833, !tbaa.struct !2835
  br label %26, !dbg !2836

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2837, !tbaa !576
  %28 = sext i32 %27 to i64, !dbg !2838
  %29 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %24, i64 %28, !dbg !2838
  %30 = bitcast %struct.tokenbuffer* %29 to i8*, !dbg !2839
  %31 = load i64, i64* %5, align 8, !dbg !2840, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %31, metadata !2806, metadata !DIExpression()), !dbg !2822
  %32 = sub nsw i64 %31, %28, !dbg !2841
  %33 = shl i64 %32, 4, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %30, metadata !2230, metadata !DIExpression()) #33, !dbg !2843
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()) #33, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %33, metadata !2234, metadata !DIExpression()) #33, !dbg !2843
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !2845
  %34 = load i64, i64* %5, align 8, !dbg !2846, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %34, metadata !2806, metadata !DIExpression()), !dbg !2822
  %35 = trunc i64 %34 to i32, !dbg !2846
  store i32 %35, i32* @nslots, align 4, !dbg !2847, !tbaa !576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2848
  br label %36, !dbg !2849

36:                                               ; preds = %26, %11
  %37 = phi %struct.tokenbuffer* [ %24, %26 ], [ %8, %11 ], !dbg !2812
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %37, metadata !2801, metadata !DIExpression()), !dbg !2812
  %38 = zext i32 %0 to i64, !dbg !2850
  %39 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %37, i64 %38, i32 0, !dbg !2851
  %40 = load i64, i64* %39, align 8, !dbg !2851, !tbaa !2772
  call void @llvm.dbg.value(metadata i64 %40, metadata !2807, metadata !DIExpression()), !dbg !2852
  %41 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %37, i64 %38, i32 1, !dbg !2853
  %42 = load i8*, i8** %41, align 8, !dbg !2853, !tbaa !2760
  call void @llvm.dbg.value(metadata i8* %42, metadata !2809, metadata !DIExpression()), !dbg !2852
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2854
  %44 = load i32, i32* %43, align 4, !dbg !2854, !tbaa !2078
  %45 = or i32 %44, 1, !dbg !2855
  call void @llvm.dbg.value(metadata i32 %45, metadata !2810, metadata !DIExpression()), !dbg !2852
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2856
  %47 = load i32, i32* %46, align 8, !dbg !2856, !tbaa !2027
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2857
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2858
  %50 = load i8*, i8** %49, align 8, !dbg !2858, !tbaa !2100
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2859
  %52 = load i8*, i8** %51, align 8, !dbg !2859, !tbaa !2103
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %53, metadata !2811, metadata !DIExpression()), !dbg !2852
  %54 = icmp ugt i64 %40, %53, !dbg !2861
  br i1 %54, label %65, label %55, !dbg !2863

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %56, metadata !2807, metadata !DIExpression()), !dbg !2852
  store i64 %56, i64* %39, align 8, !dbg !2866, !tbaa !2772
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2867
  br i1 %57, label %59, label %58, !dbg !2869

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !2870
  br label %59, !dbg !2870

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2871
  call void @llvm.dbg.value(metadata i8* %60, metadata !2809, metadata !DIExpression()), !dbg !2852
  store i8* %60, i8** %41, align 8, !dbg !2872, !tbaa !2760
  %61 = load i32, i32* %46, align 8, !dbg !2873, !tbaa !2027
  %62 = load i8*, i8** %49, align 8, !dbg !2874, !tbaa !2100
  %63 = load i8*, i8** %51, align 8, !dbg !2875, !tbaa !2103
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2876
  br label %65, !dbg !2877

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2852
  call void @llvm.dbg.value(metadata i8* %66, metadata !2809, metadata !DIExpression()), !dbg !2852
  store i32 %7, i32* %6, align 4, !dbg !2878, !tbaa !576
  ret i8* %66, !dbg !2879
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #13 !dbg !2880 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2884, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* %1, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %2, metadata !2886, metadata !DIExpression()), !dbg !2887
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2888
  ret i8* %4, !dbg !2889
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #13 !dbg !2890 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i32 0, metadata !2787, metadata !DIExpression()) #33, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %0, metadata !2788, metadata !DIExpression()) #33, !dbg !2894
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2896
  ret i8* %2, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #13 !dbg !2898 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2902, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %1, metadata !2903, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 0, metadata !2884, metadata !DIExpression()) #33, !dbg !2905
  call void @llvm.dbg.value(metadata i8* %0, metadata !2885, metadata !DIExpression()) #33, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %1, metadata !2886, metadata !DIExpression()) #33, !dbg !2905
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2907
  ret i8* %3, !dbg !2908
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #13 !dbg !2909 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2913, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 %1, metadata !2914, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8* %2, metadata !2915, metadata !DIExpression()), !dbg !2917
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2918
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2918
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2916, metadata !DIExpression()), !dbg !2919
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2920), !dbg !2923
  call void @llvm.dbg.value(metadata i32 %1, metadata !2924, metadata !DIExpression()) #33, !dbg !2930
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2929, metadata !DIExpression()) #33, !dbg !2932
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2932, !alias.scope !2920
  %6 = icmp eq i32 %1, 10, !dbg !2933
  br i1 %6, label %7, label %8, !dbg !2935

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2936, !noalias !2920
  unreachable, !dbg !2936

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2937
  store i32 %1, i32* %9, align 8, !dbg !2938, !tbaa !2027, !alias.scope !2920
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2939
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2940
  ret i8* %10, !dbg !2941
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #13 !dbg !2942 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2946, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 %1, metadata !2947, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8* %2, metadata !2948, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i64 %3, metadata !2949, metadata !DIExpression()), !dbg !2951
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2952
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2952
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2950, metadata !DIExpression()), !dbg !2953
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2954), !dbg !2957
  call void @llvm.dbg.value(metadata i32 %1, metadata !2924, metadata !DIExpression()) #33, !dbg !2958
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2929, metadata !DIExpression()) #33, !dbg !2960
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !2960, !alias.scope !2954
  %7 = icmp eq i32 %1, 10, !dbg !2961
  br i1 %7, label %8, label %9, !dbg !2962

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !2963, !noalias !2954
  unreachable, !dbg !2963

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2964
  store i32 %1, i32* %10, align 8, !dbg !2965, !tbaa !2027, !alias.scope !2954
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2966
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2967
  ret i8* %11, !dbg !2968
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #13 !dbg !2969 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2973, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8* %1, metadata !2974, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()) #33, !dbg !2976
  call void @llvm.dbg.value(metadata i32 %0, metadata !2914, metadata !DIExpression()) #33, !dbg !2976
  call void @llvm.dbg.value(metadata i8* %1, metadata !2915, metadata !DIExpression()) #33, !dbg !2976
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2978
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2978
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2916, metadata !DIExpression()) #33, !dbg !2979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980) #33, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %0, metadata !2924, metadata !DIExpression()) #33, !dbg !2984
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2929, metadata !DIExpression()) #33, !dbg !2986
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !2986, !alias.scope !2980
  %5 = icmp eq i32 %0, 10, !dbg !2987
  br i1 %5, label %6, label %7, !dbg !2988

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !2989, !noalias !2980
  unreachable, !dbg !2989

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2990
  store i32 %0, i32* %8, align 8, !dbg !2991, !tbaa !2027, !alias.scope !2980
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2992
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2993
  ret i8* %9, !dbg !2994
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #13 !dbg !2995 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2999, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8* %1, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %2, metadata !3001, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 0, metadata !2946, metadata !DIExpression()) #33, !dbg !3003
  call void @llvm.dbg.value(metadata i32 %0, metadata !2947, metadata !DIExpression()) #33, !dbg !3003
  call void @llvm.dbg.value(metadata i8* %1, metadata !2948, metadata !DIExpression()) #33, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %2, metadata !2949, metadata !DIExpression()) #33, !dbg !3003
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3005
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3005
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2950, metadata !DIExpression()) #33, !dbg !3006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3007) #33, !dbg !3010
  call void @llvm.dbg.value(metadata i32 %0, metadata !2924, metadata !DIExpression()) #33, !dbg !3011
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2929, metadata !DIExpression()) #33, !dbg !3013
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !3013, !alias.scope !3007
  %6 = icmp eq i32 %0, 10, !dbg !3014
  br i1 %6, label %7, label %8, !dbg !3015

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3016, !noalias !3007
  unreachable, !dbg !3016

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3017
  store i32 %0, i32* %9, align 8, !dbg !3018, !tbaa !2027, !alias.scope !3007
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3019
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3020
  ret i8* %10, !dbg !3021
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #13 !dbg !3022 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3026, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8 %2, metadata !3028, metadata !DIExpression()), !dbg !3030
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3031
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3031
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3033, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2045, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i8 %2, metadata !2046, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i8 %2, metadata !2048, metadata !DIExpression()), !dbg !3035
  %6 = lshr i8 %2, 5, !dbg !3037
  %7 = zext i8 %6 to i64, !dbg !3037
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3038
  call void @llvm.dbg.value(metadata i32* %8, metadata !2049, metadata !DIExpression()), !dbg !3035
  %9 = and i8 %2, 31, !dbg !3039
  %10 = zext i8 %9 to i32, !dbg !3039
  call void @llvm.dbg.value(metadata i32 %10, metadata !2051, metadata !DIExpression()), !dbg !3035
  %11 = load i32, i32* %8, align 4, !dbg !3040, !tbaa !576
  %12 = lshr i32 %11, %10, !dbg !3041
  %13 = and i32 %12, 1, !dbg !3042
  call void @llvm.dbg.value(metadata i32 %13, metadata !2052, metadata !DIExpression()), !dbg !3035
  %14 = xor i32 %13, 1, !dbg !3043
  %15 = shl i32 %14, %10, !dbg !3044
  %16 = xor i32 %15, %11, !dbg !3045
  store i32 %16, i32* %8, align 4, !dbg !3045, !tbaa !576
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3046
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3047
  ret i8* %17, !dbg !3048
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #13 !dbg !3049 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 %1, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8* %0, metadata !3026, metadata !DIExpression()) #33, !dbg !3056
  call void @llvm.dbg.value(metadata i64 -1, metadata !3027, metadata !DIExpression()) #33, !dbg !3056
  call void @llvm.dbg.value(metadata i8 %1, metadata !3028, metadata !DIExpression()) #33, !dbg !3056
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3058
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3058
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3029, metadata !DIExpression()) #33, !dbg !3059
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3060, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2045, metadata !DIExpression()) #33, !dbg !3061
  call void @llvm.dbg.value(metadata i8 %1, metadata !2046, metadata !DIExpression()) #33, !dbg !3061
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()) #33, !dbg !3061
  call void @llvm.dbg.value(metadata i8 %1, metadata !2048, metadata !DIExpression()) #33, !dbg !3061
  %5 = lshr i8 %1, 5, !dbg !3063
  %6 = zext i8 %5 to i64, !dbg !3063
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3064
  call void @llvm.dbg.value(metadata i32* %7, metadata !2049, metadata !DIExpression()) #33, !dbg !3061
  %8 = and i8 %1, 31, !dbg !3065
  %9 = zext i8 %8 to i32, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %9, metadata !2051, metadata !DIExpression()) #33, !dbg !3061
  %10 = load i32, i32* %7, align 4, !dbg !3066, !tbaa !576
  %11 = lshr i32 %10, %9, !dbg !3067
  %12 = and i32 %11, 1, !dbg !3068
  call void @llvm.dbg.value(metadata i32 %12, metadata !2052, metadata !DIExpression()) #33, !dbg !3061
  %13 = xor i32 %12, 1, !dbg !3069
  %14 = shl i32 %13, %9, !dbg !3070
  %15 = xor i32 %14, %10, !dbg !3071
  store i32 %15, i32* %7, align 4, !dbg !3071, !tbaa !576
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3072
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3073
  ret i8* %16, !dbg !3074
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #13 !dbg !3075 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !3053, metadata !DIExpression()) #33, !dbg !3079
  call void @llvm.dbg.value(metadata i8 58, metadata !3054, metadata !DIExpression()) #33, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %0, metadata !3026, metadata !DIExpression()) #33, !dbg !3081
  call void @llvm.dbg.value(metadata i64 -1, metadata !3027, metadata !DIExpression()) #33, !dbg !3081
  call void @llvm.dbg.value(metadata i8 58, metadata !3028, metadata !DIExpression()) #33, !dbg !3081
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3083
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3083
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3029, metadata !DIExpression()) #33, !dbg !3084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3085, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2045, metadata !DIExpression()) #33, !dbg !3086
  call void @llvm.dbg.value(metadata i8 58, metadata !2046, metadata !DIExpression()) #33, !dbg !3086
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()) #33, !dbg !3086
  call void @llvm.dbg.value(metadata i8 58, metadata !2048, metadata !DIExpression()) #33, !dbg !3086
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3088
  call void @llvm.dbg.value(metadata i32* %4, metadata !2049, metadata !DIExpression()) #33, !dbg !3086
  call void @llvm.dbg.value(metadata i32 26, metadata !2051, metadata !DIExpression()) #33, !dbg !3086
  %5 = load i32, i32* %4, align 4, !dbg !3089, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %5, metadata !2052, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3086
  %6 = or i32 %5, 67108864, !dbg !3090
  store i32 %6, i32* %4, align 4, !dbg !3090, !tbaa !576
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !3091
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3092
  ret i8* %7, !dbg !3093
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #13 !dbg !3094 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %0, metadata !3026, metadata !DIExpression()) #33, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3027, metadata !DIExpression()) #33, !dbg !3099
  call void @llvm.dbg.value(metadata i8 58, metadata !3028, metadata !DIExpression()) #33, !dbg !3099
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3101
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3101
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3029, metadata !DIExpression()) #33, !dbg !3102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3103, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2045, metadata !DIExpression()) #33, !dbg !3104
  call void @llvm.dbg.value(metadata i8 58, metadata !2046, metadata !DIExpression()) #33, !dbg !3104
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()) #33, !dbg !3104
  call void @llvm.dbg.value(metadata i8 58, metadata !2048, metadata !DIExpression()) #33, !dbg !3104
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3106
  call void @llvm.dbg.value(metadata i32* %5, metadata !2049, metadata !DIExpression()) #33, !dbg !3104
  call void @llvm.dbg.value(metadata i32 26, metadata !2051, metadata !DIExpression()) #33, !dbg !3104
  %6 = load i32, i32* %5, align 4, !dbg !3107, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %6, metadata !2052, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3104
  %7 = or i32 %6, 67108864, !dbg !3108
  store i32 %7, i32* %5, align 4, !dbg !3108, !tbaa !576
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3109
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3110
  ret i8* %8, !dbg !3111
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #13 !dbg !3112 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3114, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %1, metadata !3115, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8* %2, metadata !3116, metadata !DIExpression()), !dbg !3118
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3119
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3119
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3117, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %1, metadata !2924, metadata !DIExpression()) #33, !dbg !3121
  call void @llvm.dbg.value(metadata i32 0, metadata !2929, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3121
  %6 = icmp eq i32 %1, 10, !dbg !3123
  br i1 %6, label %7, label %8, !dbg !3124

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3125, !noalias !3126
  unreachable, !dbg !3125

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2929, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3121
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3129
  store i32 %1, i32* %9, align 8, !dbg !3129, !tbaa.struct !3034
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3129
  %11 = bitcast i32* %10 to i8*, !dbg !3129
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3129
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2045, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 58, metadata !2046, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 58, metadata !2048, metadata !DIExpression()), !dbg !3130
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3132
  call void @llvm.dbg.value(metadata i32* %12, metadata !2049, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 26, metadata !2051, metadata !DIExpression()), !dbg !3130
  %13 = load i32, i32* %12, align 4, !dbg !3133, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %13, metadata !2052, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3130
  %14 = or i32 %13, 67108864, !dbg !3134
  store i32 %14, i32* %12, align 4, !dbg !3134, !tbaa !576
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3135
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3136
  ret i8* %15, !dbg !3137
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #13 !dbg !3138 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3142, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8* %1, metadata !3143, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8* %2, metadata !3144, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8* %3, metadata !3145, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()) #33, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %1, metadata !3152, metadata !DIExpression()) #33, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %2, metadata !3153, metadata !DIExpression()) #33, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %3, metadata !3154, metadata !DIExpression()) #33, !dbg !3157
  call void @llvm.dbg.value(metadata i64 -1, metadata !3155, metadata !DIExpression()) #33, !dbg !3157
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3159
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3159
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3156, metadata !DIExpression()) #33, !dbg !3160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3161, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()) #33, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %1, metadata !2086, metadata !DIExpression()) #33, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %2, metadata !2087, metadata !DIExpression()) #33, !dbg !3162
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()) #33, !dbg !3162
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3164
  store i32 10, i32* %7, align 8, !dbg !3165, !tbaa !2027
  %8 = icmp ne i8* %1, null, !dbg !3166
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3167
  br i1 %10, label %12, label %11, !dbg !3167

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3168
  unreachable, !dbg !3168

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3169
  store i8* %1, i8** %13, align 8, !dbg !3170, !tbaa !2100
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3171
  store i8* %2, i8** %14, align 8, !dbg !3172, !tbaa !2103
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3173
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3174
  ret i8* %15, !dbg !3175
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #13 !dbg !3148 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %1, metadata !3152, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %2, metadata !3153, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %3, metadata !3154, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %4, metadata !3155, metadata !DIExpression()), !dbg !3176
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3177
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3177
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3156, metadata !DIExpression()), !dbg !3178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3179, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2085, metadata !DIExpression()) #33, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %1, metadata !2086, metadata !DIExpression()) #33, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %2, metadata !2087, metadata !DIExpression()) #33, !dbg !3180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2085, metadata !DIExpression()) #33, !dbg !3180
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3182
  store i32 10, i32* %8, align 8, !dbg !3183, !tbaa !2027
  %9 = icmp ne i8* %1, null, !dbg !3184
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3185
  br i1 %11, label %13, label %12, !dbg !3185

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !3186
  unreachable, !dbg !3186

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3187
  store i8* %1, i8** %14, align 8, !dbg !3188, !tbaa !2100
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3189
  store i8* %2, i8** %15, align 8, !dbg !3190, !tbaa !2103
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3191
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3192
  ret i8* %16, !dbg !3193
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #13 !dbg !3194 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3198, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8* %1, metadata !3199, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8* %2, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 0, metadata !3142, metadata !DIExpression()) #33, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %0, metadata !3143, metadata !DIExpression()) #33, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %1, metadata !3144, metadata !DIExpression()) #33, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %2, metadata !3145, metadata !DIExpression()) #33, !dbg !3202
  call void @llvm.dbg.value(metadata i32 0, metadata !3147, metadata !DIExpression()) #33, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %0, metadata !3152, metadata !DIExpression()) #33, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %1, metadata !3153, metadata !DIExpression()) #33, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %2, metadata !3154, metadata !DIExpression()) #33, !dbg !3204
  call void @llvm.dbg.value(metadata i64 -1, metadata !3155, metadata !DIExpression()) #33, !dbg !3204
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3206
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3206
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3156, metadata !DIExpression()) #33, !dbg !3207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3208, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2085, metadata !DIExpression()) #33, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %0, metadata !2086, metadata !DIExpression()) #33, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %1, metadata !2087, metadata !DIExpression()) #33, !dbg !3209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2085, metadata !DIExpression()) #33, !dbg !3209
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3211
  store i32 10, i32* %6, align 8, !dbg !3212, !tbaa !2027
  %7 = icmp ne i8* %0, null, !dbg !3213
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3214
  br i1 %9, label %11, label %10, !dbg !3214

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !3215
  unreachable, !dbg !3215

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3216
  store i8* %0, i8** %12, align 8, !dbg !3217, !tbaa !2100
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3218
  store i8* %1, i8** %13, align 8, !dbg !3219, !tbaa !2103
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3220
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3221
  ret i8* %14, !dbg !3222
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #13 !dbg !3223 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3227, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %1, metadata !3228, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %2, metadata !3229, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %3, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i32 0, metadata !3147, metadata !DIExpression()) #33, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %0, metadata !3152, metadata !DIExpression()) #33, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %1, metadata !3153, metadata !DIExpression()) #33, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %2, metadata !3154, metadata !DIExpression()) #33, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %3, metadata !3155, metadata !DIExpression()) #33, !dbg !3232
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3234
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3234
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3156, metadata !DIExpression()) #33, !dbg !3235
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3236, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()) #33, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %0, metadata !2086, metadata !DIExpression()) #33, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %1, metadata !2087, metadata !DIExpression()) #33, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()) #33, !dbg !3237
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3239
  store i32 10, i32* %7, align 8, !dbg !3240, !tbaa !2027
  %8 = icmp ne i8* %0, null, !dbg !3241
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3242
  br i1 %10, label %12, label %11, !dbg !3242

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3243
  unreachable, !dbg !3243

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3244
  store i8* %0, i8** %13, align 8, !dbg !3245, !tbaa !2100
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3246
  store i8* %1, i8** %14, align 8, !dbg !3247, !tbaa !2103
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3248
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3249
  ret i8* %15, !dbg !3250
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #13 !dbg !3251 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3255, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i8* %1, metadata !3256, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %2, metadata !3257, metadata !DIExpression()), !dbg !3258
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3259
  ret i8* %4, !dbg !3260
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #13 !dbg !3261 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i32 0, metadata !3255, metadata !DIExpression()) #33, !dbg !3268
  call void @llvm.dbg.value(metadata i8* %0, metadata !3256, metadata !DIExpression()) #33, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %1, metadata !3257, metadata !DIExpression()) #33, !dbg !3268
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3270
  ret i8* %3, !dbg !3271
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #13 !dbg !3272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3276, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* %1, metadata !3277, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i32 %0, metadata !3255, metadata !DIExpression()) #33, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %1, metadata !3256, metadata !DIExpression()) #33, !dbg !3279
  call void @llvm.dbg.value(metadata i64 -1, metadata !3257, metadata !DIExpression()) #33, !dbg !3279
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3281
  ret i8* %3, !dbg !3282
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #13 !dbg !3283 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 0, metadata !3276, metadata !DIExpression()) #33, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %0, metadata !3277, metadata !DIExpression()) #33, !dbg !3289
  call void @llvm.dbg.value(metadata i32 0, metadata !3255, metadata !DIExpression()) #33, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3256, metadata !DIExpression()) #33, !dbg !3291
  call void @llvm.dbg.value(metadata i64 -1, metadata !3257, metadata !DIExpression()) #33, !dbg !3291
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3293
  ret i8* %2, !dbg !3294
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @init_tokenbuffer(%struct.tokenbuffer* nocapture noundef writeonly %0) local_unnamed_addr #14 !dbg !3295 {
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %0, metadata !3305, metadata !DIExpression()), !dbg !3306
  %2 = bitcast %struct.tokenbuffer* %0 to i8*, !dbg !3307
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !3308
  ret void, !dbg !3307
}

; Function Attrs: nounwind uwtable
define dso_local i64 @readtoken(%struct._IO_FILE* noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2, %struct.tokenbuffer* nocapture noundef %3) local_unnamed_addr #13 !dbg !3309 {
  %5 = alloca [4 x i64], align 8
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3347, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %1, metadata !3348, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %2, metadata !3349, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, metadata !3350, metadata !DIExpression()), !dbg !3363
  %7 = bitcast [4 x i64]* %5 to i8*, !dbg !3364
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3364
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !3351, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %7, metadata !3366, metadata !DIExpression()) #33, !dbg !3371
  call void @llvm.dbg.value(metadata i32 0, metadata !3369, metadata !DIExpression()) #33, !dbg !3371
  call void @llvm.dbg.value(metadata i64 32, metadata !3370, metadata !DIExpression()) #33, !dbg !3371
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8 noundef 0, i64 noundef 32, i1 noundef false) #33, !dbg !3373
  call void @llvm.dbg.value(metadata i64 0, metadata !3354, metadata !DIExpression()), !dbg !3374
  %8 = icmp eq i64 %2, 0, !dbg !3375
  br i1 %8, label %9, label %24, !dbg !3376

9:                                                ; preds = %24, %4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3377, metadata !DIExpression()) #33, !dbg !3382
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3385
  %11 = load i8*, i8** %10, align 8, !dbg !3385, !tbaa !1895
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3385
  %13 = load i8*, i8** %12, align 8, !dbg !3385, !tbaa !1893
  %14 = icmp ult i8* %11, %13, !dbg !3385
  br i1 %14, label %15, label %19, !dbg !3385, !prof !1429

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3385
  store i8* %16, i8** %10, align 8, !dbg !3385, !tbaa !1895
  %17 = load i8, i8* %11, align 1, !dbg !3385, !tbaa !585
  %18 = zext i8 %17 to i32, !dbg !3385
  call void @llvm.dbg.value(metadata i32 %20, metadata !3359, metadata !DIExpression()), !dbg !3363
  br label %22, !dbg !3386

19:                                               ; preds = %9
  %20 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3385
  call void @llvm.dbg.value(metadata i32 %20, metadata !3359, metadata !DIExpression()), !dbg !3363
  %21 = icmp sgt i32 %20, -1, !dbg !3388
  br i1 %21, label %22, label %60, !dbg !3386

22:                                               ; preds = %15, %19
  %23 = phi i32 [ %20, %19 ], [ %18, %15 ]
  br label %37, !dbg !3389

24:                                               ; preds = %4, %24
  %25 = phi i64 [ %35, %24 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !3354, metadata !DIExpression()), !dbg !3374
  %26 = getelementptr inbounds i8, i8* %1, i64 %25, !dbg !3390
  %27 = load i8, i8* %26, align 1, !dbg !3390, !tbaa !585
  call void @llvm.dbg.value(metadata i8 %27, metadata !3356, metadata !DIExpression()), !dbg !3391
  %28 = zext i8 %27 to i64, !dbg !3392
  call void @llvm.dbg.value(metadata i64 %28, metadata !3393, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3399, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 1, metadata !3400, metadata !DIExpression()), !dbg !3401
  %29 = and i64 %28, 63, !dbg !3403
  %30 = shl nuw i64 1, %29, !dbg !3404
  %31 = lshr i64 %28, 6, !dbg !3405
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %31, !dbg !3406
  %33 = load i64, i64* %32, align 8, !dbg !3407, !tbaa !1051
  %34 = or i64 %30, %33, !dbg !3407
  store i64 %34, i64* %32, align 8, !dbg !3407, !tbaa !1051
  %35 = add nuw nsw i64 %25, 1, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %35, metadata !3354, metadata !DIExpression()), !dbg !3374
  %36 = icmp eq i64 %35, %2, !dbg !3375
  br i1 %36, label %9, label %24, !dbg !3376, !llvm.loop !3409

37:                                               ; preds = %22, %57
  %38 = phi i32 [ %58, %57 ], [ %23, %22 ]
  call void @llvm.dbg.value(metadata i32 %38, metadata !3359, metadata !DIExpression()), !dbg !3363
  %39 = zext i32 %38 to i64, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %39, metadata !3412, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3419, metadata !DIExpression()), !dbg !3420
  %40 = lshr i64 %39, 6, !dbg !3422
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %40, !dbg !3423
  %42 = load i64, i64* %41, align 8, !dbg !3423, !tbaa !1051
  %43 = and i64 %39, 63, !dbg !3424
  %44 = shl nuw i64 1, %43, !dbg !3423
  %45 = and i64 %42, %44, !dbg !3423
  %46 = icmp eq i64 %45, 0, !dbg !3423
  br i1 %46, label %64, label %47, !dbg !3389

47:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3377, metadata !DIExpression()) #33, !dbg !3425
  %48 = load i8*, i8** %10, align 8, !dbg !3427, !tbaa !1895
  %49 = load i8*, i8** %12, align 8, !dbg !3427, !tbaa !1893
  %50 = icmp ult i8* %48, %49, !dbg !3427
  br i1 %50, label %53, label %51, !dbg !3427, !prof !1429

51:                                               ; preds = %47
  %52 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3427
  br label %57, !dbg !3427

53:                                               ; preds = %47
  %54 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !3427
  store i8* %54, i8** %10, align 8, !dbg !3427, !tbaa !1895
  %55 = load i8, i8* %48, align 1, !dbg !3427, !tbaa !585
  %56 = zext i8 %55 to i32, !dbg !3427
  br label %57, !dbg !3427

57:                                               ; preds = %51, %53
  %58 = phi i32 [ %52, %51 ], [ %56, %53 ], !dbg !3427
  call void @llvm.dbg.value(metadata i32 %58, metadata !3359, metadata !DIExpression()), !dbg !3363
  %59 = icmp sgt i32 %58, -1, !dbg !3388
  br i1 %59, label %37, label %60, !dbg !3386, !llvm.loop !3428

60:                                               ; preds = %57, %19
  call void @llvm.dbg.value(metadata i8* %66, metadata !3360, metadata !DIExpression()), !dbg !3363
  %61 = bitcast i64* %6 to i8*, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61) #33, !dbg !3430
  %62 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 0, !dbg !3431
  %63 = load i64, i64* %62, align 8, !dbg !3431, !tbaa !3432
  call void @llvm.dbg.value(metadata i64 %69, metadata !3361, metadata !DIExpression()), !dbg !3363
  store i64 %63, i64* %6, align 8, !dbg !3433, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 0, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 %38, metadata !3359, metadata !DIExpression()), !dbg !3363
  br label %110, !dbg !3434

64:                                               ; preds = %37
  %65 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1, !dbg !3439
  %66 = load i8*, i8** %65, align 8, !dbg !3439, !tbaa !809
  call void @llvm.dbg.value(metadata i8* %66, metadata !3360, metadata !DIExpression()), !dbg !3363
  %67 = bitcast i64* %6 to i8*, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #33, !dbg !3430
  %68 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 0, !dbg !3431
  %69 = load i64, i64* %68, align 8, !dbg !3431, !tbaa !3432
  call void @llvm.dbg.value(metadata i64 %69, metadata !3361, metadata !DIExpression()), !dbg !3363
  store i64 %69, i64* %6, align 8, !dbg !3433, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 0, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 %38, metadata !3359, metadata !DIExpression()), !dbg !3363
  br label %70, !dbg !3440

70:                                               ; preds = %103, %64
  %71 = phi i64 [ %106, %103 ], [ %69, %64 ], !dbg !3441
  %72 = phi i1 [ %105, %103 ], [ false, %64 ]
  %73 = phi i64 [ %92, %103 ], [ 0, %64 ]
  %74 = phi i8* [ %80, %103 ], [ %66, %64 ]
  %75 = phi i32 [ %104, %103 ], [ %38, %64 ]
  call void @llvm.dbg.value(metadata i64 %73, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %74, metadata !3360, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 %75, metadata !3359, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %71, metadata !3361, metadata !DIExpression()), !dbg !3363
  %76 = icmp eq i64 %73, %71, !dbg !3443
  br i1 %76, label %77, label %79, !dbg !3444

77:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i64* %6, metadata !3361, metadata !DIExpression(DW_OP_deref)), !dbg !3363
  %78 = call nonnull i8* @xpalloc(i8* noundef %74, i64* noundef nonnull %6, i64 noundef 1, i64 noundef -1, i64 noundef 1) #33, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %78, metadata !3360, metadata !DIExpression()), !dbg !3363
  br label %79, !dbg !3446

79:                                               ; preds = %77, %70
  %80 = phi i8* [ %78, %77 ], [ %74, %70 ], !dbg !3363
  call void @llvm.dbg.value(metadata i8* %80, metadata !3360, metadata !DIExpression()), !dbg !3363
  br i1 %72, label %107, label %81, !dbg !3447

81:                                               ; preds = %79
  %82 = zext i32 %75 to i64, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %82, metadata !3412, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3419, metadata !DIExpression()), !dbg !3450
  %83 = lshr i64 %82, 6, !dbg !3452
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %83, !dbg !3453
  %85 = load i64, i64* %84, align 8, !dbg !3453, !tbaa !1051
  %86 = and i64 %82, 63, !dbg !3454
  %87 = shl nuw i64 1, %86, !dbg !3453
  %88 = and i64 %85, %87, !dbg !3453
  %89 = icmp eq i64 %88, 0, !dbg !3453
  br i1 %89, label %90, label %107, !dbg !3455

90:                                               ; preds = %81
  %91 = trunc i32 %75 to i8, !dbg !3456
  %92 = add nuw nsw i64 %73, 1, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %92, metadata !3362, metadata !DIExpression()), !dbg !3363
  %93 = getelementptr inbounds i8, i8* %80, i64 %73, !dbg !3458
  store i8 %91, i8* %93, align 1, !dbg !3459, !tbaa !585
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3377, metadata !DIExpression()) #33, !dbg !3460
  %94 = load i8*, i8** %10, align 8, !dbg !3462, !tbaa !1895
  %95 = load i8*, i8** %12, align 8, !dbg !3462, !tbaa !1893
  %96 = icmp ult i8* %94, %95, !dbg !3462
  br i1 %96, label %99, label %97, !dbg !3462, !prof !1429

97:                                               ; preds = %90
  %98 = call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3462
  br label %103, !dbg !3462

99:                                               ; preds = %90
  %100 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !3462
  store i8* %100, i8** %10, align 8, !dbg !3462, !tbaa !1895
  %101 = load i8, i8* %94, align 1, !dbg !3462, !tbaa !585
  %102 = zext i8 %101 to i32, !dbg !3462
  br label %103, !dbg !3462

103:                                              ; preds = %99, %97
  %104 = phi i32 [ %98, %97 ], [ %102, %99 ], !dbg !3462
  call void @llvm.dbg.value(metadata i64 %92, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %80, metadata !3360, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 %104, metadata !3359, metadata !DIExpression()), !dbg !3363
  %105 = icmp slt i32 %104, 0, !dbg !3463
  %106 = load i64, i64* %6, align 8, !dbg !3441, !tbaa !1051
  br label %70, !dbg !3434

107:                                              ; preds = %81, %79
  %108 = getelementptr inbounds i8, i8* %80, i64 %73, !dbg !3464
  store i8 0, i8* %108, align 1, !dbg !3464, !tbaa !585
  store i8* %80, i8** %65, align 8, !dbg !3465, !tbaa !809
  %109 = load i64, i64* %6, align 8, !dbg !3466, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %109, metadata !3361, metadata !DIExpression()), !dbg !3363
  store i64 %109, i64* %68, align 8, !dbg !3467, !tbaa !3432
  br label %110, !dbg !3468

110:                                              ; preds = %60, %107
  %111 = phi i64 [ %73, %107 ], [ -1, %60 ], !dbg !3363
  %112 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #33, !dbg !3469
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3469
  ret i64 %111, !dbg !3469
}

declare i32 @__uflow(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @readtokens(%struct._IO_FILE* noundef %0, i64 noundef %1, i8* nocapture noundef readonly %2, i64 noundef %3, i8*** nocapture noundef writeonly %4, i64** noundef writeonly %5) local_unnamed_addr #13 !dbg !3470 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3476, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3477, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %2, metadata !3478, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %3, metadata !3479, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8*** %4, metadata !3480, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64** %5, metadata !3481, metadata !DIExpression()), !dbg !3493
  %9 = icmp eq i64 %1, 0, !dbg !3494
  %10 = add i64 %1, 1, !dbg !3496
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %11, metadata !3477, metadata !DIExpression()), !dbg !3493
  %12 = bitcast i64* %7 to i8*, !dbg !3497
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #33, !dbg !3497
  call void @llvm.dbg.value(metadata i64 %11, metadata !3482, metadata !DIExpression()), !dbg !3493
  store i64 %11, i64* %7, align 8, !dbg !3498, !tbaa !1051
  %13 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %11, i64 noundef 8) #41, !dbg !3499
  %14 = bitcast i8* %13 to i8**, !dbg !3499
  call void @llvm.dbg.value(metadata i8** %14, metadata !3483, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %11, metadata !3482, metadata !DIExpression()), !dbg !3493
  %15 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %11, i64 noundef 8) #41, !dbg !3500
  %16 = bitcast i8* %15 to i64*, !dbg !3500
  call void @llvm.dbg.value(metadata i64* %16, metadata !3484, metadata !DIExpression()), !dbg !3493
  %17 = bitcast %struct.tokenbuffer* %8 to i8*, !dbg !3501
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #33, !dbg !3501
  call void @llvm.dbg.declare(metadata %struct.tokenbuffer* %8, metadata !3485, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %8, metadata !3486, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %8, metadata !3305, metadata !DIExpression()) #33, !dbg !3503
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false) #33, !dbg !3505
  call void @llvm.dbg.value(metadata i64 0, metadata !3487, metadata !DIExpression()), !dbg !3493
  %18 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %8, i64 0, i32 1
  br label %19, !dbg !3506

19:                                               ; preds = %38, %6
  %20 = phi i64* [ %16, %6 ], [ %35, %38 ], !dbg !3493
  %21 = phi i64 [ 0, %6 ], [ %44, %38 ], !dbg !3507
  %22 = phi i8** [ %14, %6 ], [ %36, %38 ], !dbg !3493
  call void @llvm.dbg.value(metadata i8** %22, metadata !3483, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %21, metadata !3487, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64* %20, metadata !3484, metadata !DIExpression()), !dbg !3493
  %23 = call i64 @readtoken(%struct._IO_FILE* noundef %0, i8* noundef %2, i64 noundef %3, %struct.tokenbuffer* noundef nonnull %8), !dbg !3508
  call void @llvm.dbg.value(metadata i64 %23, metadata !3488, metadata !DIExpression()), !dbg !3509
  %24 = load i64, i64* %7, align 8, !dbg !3510, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %24, metadata !3482, metadata !DIExpression()), !dbg !3493
  %25 = icmp slt i64 %21, %24, !dbg !3512
  br i1 %25, label %34, label %26, !dbg !3513

26:                                               ; preds = %19
  %27 = bitcast i8** %22 to i8*, !dbg !3514
  call void @llvm.dbg.value(metadata i64* %7, metadata !3482, metadata !DIExpression(DW_OP_deref)), !dbg !3493
  %28 = call nonnull i8* @xpalloc(i8* noundef %27, i64* noundef nonnull %7, i64 noundef 1, i64 noundef -1, i64 noundef 8) #33, !dbg !3516
  %29 = bitcast i8* %28 to i8**, !dbg !3516
  call void @llvm.dbg.value(metadata i8** %29, metadata !3483, metadata !DIExpression()), !dbg !3493
  %30 = bitcast i64* %20 to i8*, !dbg !3517
  %31 = load i64, i64* %7, align 8, !dbg !3518, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %31, metadata !3482, metadata !DIExpression()), !dbg !3493
  %32 = call i8* @xreallocarray(i8* noundef %30, i64 noundef %31, i64 noundef 8) #42, !dbg !3519
  %33 = bitcast i8* %32 to i64*, !dbg !3519
  call void @llvm.dbg.value(metadata i64* %33, metadata !3484, metadata !DIExpression()), !dbg !3493
  br label %34, !dbg !3520

34:                                               ; preds = %26, %19
  %35 = phi i64* [ %33, %26 ], [ %20, %19 ], !dbg !3493
  %36 = phi i8** [ %29, %26 ], [ %22, %19 ], !dbg !3493
  call void @llvm.dbg.value(metadata i8** %36, metadata !3483, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64* %35, metadata !3484, metadata !DIExpression()), !dbg !3493
  %37 = icmp eq i64 %23, -1, !dbg !3521
  br i1 %37, label %45, label %38, !dbg !3523

38:                                               ; preds = %34
  %39 = add nuw i64 %23, 1, !dbg !3524
  %40 = call noalias nonnull i8* @xnmalloc(i64 noundef %39, i64 noundef 1) #41, !dbg !3525
  call void @llvm.dbg.value(metadata i8* %40, metadata !3492, metadata !DIExpression()), !dbg !3509
  %41 = getelementptr inbounds i64, i64* %35, i64 %21, !dbg !3526
  store i64 %23, i64* %41, align 8, !dbg !3527, !tbaa !1051
  %42 = load i8*, i8** %18, align 8, !dbg !3528, !tbaa !809
  call void @llvm.dbg.value(metadata i8* %40, metadata !3529, metadata !DIExpression()) #33, !dbg !3537
  call void @llvm.dbg.value(metadata i8* %42, metadata !3535, metadata !DIExpression()) #33, !dbg !3537
  call void @llvm.dbg.value(metadata i64 %39, metadata !3536, metadata !DIExpression()) #33, !dbg !3537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %40, i8* noundef nonnull align 1 %42, i64 noundef %39, i1 noundef false) #33, !dbg !3539
  %43 = getelementptr inbounds i8*, i8** %36, i64 %21, !dbg !3540
  store i8* %40, i8** %43, align 8, !dbg !3541, !tbaa !487
  %44 = add nuw nsw i64 %21, 1, !dbg !3542
  call void @llvm.dbg.value(metadata i64 %44, metadata !3487, metadata !DIExpression()), !dbg !3493
  br label %19

45:                                               ; preds = %34
  %46 = getelementptr inbounds i8*, i8** %36, i64 %21, !dbg !3543
  store i8* null, i8** %46, align 8, !dbg !3545, !tbaa !487
  %47 = getelementptr inbounds i64, i64* %35, i64 %21, !dbg !3546
  store i64 0, i64* %47, align 8, !dbg !3547, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %44, metadata !3487, metadata !DIExpression()), !dbg !3493
  %48 = load i8*, i8** %18, align 8, !dbg !3548, !tbaa !809
  call void @free(i8* noundef %48) #33, !dbg !3549
  store i8** %36, i8*** %4, align 8, !dbg !3550, !tbaa !487
  %49 = icmp eq i64** %5, null, !dbg !3551
  br i1 %49, label %51, label %50, !dbg !3553

50:                                               ; preds = %45
  store i64* %35, i64** %5, align 8, !dbg !3554, !tbaa !487
  br label %53, !dbg !3555

51:                                               ; preds = %45
  %52 = bitcast i64* %35 to i8*, !dbg !3556
  call void @free(i8* noundef %52) #33, !dbg !3557
  br label %53

53:                                               ; preds = %51, %50
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #33, !dbg !3558
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #33, !dbg !3558
  ret i64 %21, !dbg !3559
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #13 !dbg !3560 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3599, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %1, metadata !3600, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %2, metadata !3601, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %3, metadata !3602, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8** %4, metadata !3603, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %5, metadata !3604, metadata !DIExpression()), !dbg !3605
  %7 = icmp eq i8* %1, null, !dbg !3606
  br i1 %7, label %10, label %8, !dbg !3608

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !3609
  br label %12, !dbg !3609

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.100, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !3610
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.102, i64 0, i64 0), i32 noundef 5) #33, !dbg !3611
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !3611
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3612
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.104, i64 0, i64 0), i32 noundef 5) #33, !dbg !3613
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.105, i64 0, i64 0)) #33, !dbg !3613
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3614
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
  ], !dbg !3615

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.106, i64 0, i64 0), i32 noundef 5) #33, !dbg !3616
  %21 = load i8*, i8** %4, align 8, !dbg !3616, !tbaa !487
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !3616
  br label %147, !dbg !3618

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.107, i64 0, i64 0), i32 noundef 5) #33, !dbg !3619
  %25 = load i8*, i8** %4, align 8, !dbg !3619, !tbaa !487
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3619
  %27 = load i8*, i8** %26, align 8, !dbg !3619, !tbaa !487
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !3619
  br label %147, !dbg !3620

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.108, i64 0, i64 0), i32 noundef 5) #33, !dbg !3621
  %31 = load i8*, i8** %4, align 8, !dbg !3621, !tbaa !487
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3621
  %33 = load i8*, i8** %32, align 8, !dbg !3621, !tbaa !487
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3621
  %35 = load i8*, i8** %34, align 8, !dbg !3621, !tbaa !487
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !3621
  br label %147, !dbg !3622

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.109, i64 0, i64 0), i32 noundef 5) #33, !dbg !3623
  %39 = load i8*, i8** %4, align 8, !dbg !3623, !tbaa !487
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3623
  %41 = load i8*, i8** %40, align 8, !dbg !3623, !tbaa !487
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3623
  %43 = load i8*, i8** %42, align 8, !dbg !3623, !tbaa !487
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3623
  %45 = load i8*, i8** %44, align 8, !dbg !3623, !tbaa !487
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !3623
  br label %147, !dbg !3624

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.110, i64 0, i64 0), i32 noundef 5) #33, !dbg !3625
  %49 = load i8*, i8** %4, align 8, !dbg !3625, !tbaa !487
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3625
  %51 = load i8*, i8** %50, align 8, !dbg !3625, !tbaa !487
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3625
  %53 = load i8*, i8** %52, align 8, !dbg !3625, !tbaa !487
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3625
  %55 = load i8*, i8** %54, align 8, !dbg !3625, !tbaa !487
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3625
  %57 = load i8*, i8** %56, align 8, !dbg !3625, !tbaa !487
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !3625
  br label %147, !dbg !3626

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.111, i64 0, i64 0), i32 noundef 5) #33, !dbg !3627
  %61 = load i8*, i8** %4, align 8, !dbg !3627, !tbaa !487
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3627
  %63 = load i8*, i8** %62, align 8, !dbg !3627, !tbaa !487
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3627
  %65 = load i8*, i8** %64, align 8, !dbg !3627, !tbaa !487
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3627
  %67 = load i8*, i8** %66, align 8, !dbg !3627, !tbaa !487
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3627
  %69 = load i8*, i8** %68, align 8, !dbg !3627, !tbaa !487
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3627
  %71 = load i8*, i8** %70, align 8, !dbg !3627, !tbaa !487
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !3627
  br label %147, !dbg !3628

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.112, i64 0, i64 0), i32 noundef 5) #33, !dbg !3629
  %75 = load i8*, i8** %4, align 8, !dbg !3629, !tbaa !487
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3629
  %77 = load i8*, i8** %76, align 8, !dbg !3629, !tbaa !487
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3629
  %79 = load i8*, i8** %78, align 8, !dbg !3629, !tbaa !487
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3629
  %81 = load i8*, i8** %80, align 8, !dbg !3629, !tbaa !487
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3629
  %83 = load i8*, i8** %82, align 8, !dbg !3629, !tbaa !487
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3629
  %85 = load i8*, i8** %84, align 8, !dbg !3629, !tbaa !487
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3629
  %87 = load i8*, i8** %86, align 8, !dbg !3629, !tbaa !487
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !3629
  br label %147, !dbg !3630

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.113, i64 0, i64 0), i32 noundef 5) #33, !dbg !3631
  %91 = load i8*, i8** %4, align 8, !dbg !3631, !tbaa !487
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3631
  %93 = load i8*, i8** %92, align 8, !dbg !3631, !tbaa !487
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3631
  %95 = load i8*, i8** %94, align 8, !dbg !3631, !tbaa !487
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3631
  %97 = load i8*, i8** %96, align 8, !dbg !3631, !tbaa !487
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3631
  %99 = load i8*, i8** %98, align 8, !dbg !3631, !tbaa !487
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3631
  %101 = load i8*, i8** %100, align 8, !dbg !3631, !tbaa !487
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3631
  %103 = load i8*, i8** %102, align 8, !dbg !3631, !tbaa !487
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3631
  %105 = load i8*, i8** %104, align 8, !dbg !3631, !tbaa !487
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !3631
  br label %147, !dbg !3632

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.114, i64 0, i64 0), i32 noundef 5) #33, !dbg !3633
  %109 = load i8*, i8** %4, align 8, !dbg !3633, !tbaa !487
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3633
  %111 = load i8*, i8** %110, align 8, !dbg !3633, !tbaa !487
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3633
  %113 = load i8*, i8** %112, align 8, !dbg !3633, !tbaa !487
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3633
  %115 = load i8*, i8** %114, align 8, !dbg !3633, !tbaa !487
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3633
  %117 = load i8*, i8** %116, align 8, !dbg !3633, !tbaa !487
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3633
  %119 = load i8*, i8** %118, align 8, !dbg !3633, !tbaa !487
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3633
  %121 = load i8*, i8** %120, align 8, !dbg !3633, !tbaa !487
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3633
  %123 = load i8*, i8** %122, align 8, !dbg !3633, !tbaa !487
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3633
  %125 = load i8*, i8** %124, align 8, !dbg !3633, !tbaa !487
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !3633
  br label %147, !dbg !3634

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.115, i64 0, i64 0), i32 noundef 5) #33, !dbg !3635
  %129 = load i8*, i8** %4, align 8, !dbg !3635, !tbaa !487
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3635
  %131 = load i8*, i8** %130, align 8, !dbg !3635, !tbaa !487
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3635
  %133 = load i8*, i8** %132, align 8, !dbg !3635, !tbaa !487
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3635
  %135 = load i8*, i8** %134, align 8, !dbg !3635, !tbaa !487
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3635
  %137 = load i8*, i8** %136, align 8, !dbg !3635, !tbaa !487
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3635
  %139 = load i8*, i8** %138, align 8, !dbg !3635, !tbaa !487
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3635
  %141 = load i8*, i8** %140, align 8, !dbg !3635, !tbaa !487
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3635
  %143 = load i8*, i8** %142, align 8, !dbg !3635, !tbaa !487
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3635
  %145 = load i8*, i8** %144, align 8, !dbg !3635, !tbaa !487
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !3635
  br label %147, !dbg !3636

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3637
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #13 !dbg !3638 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3642, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8* %1, metadata !3643, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8* %2, metadata !3644, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8* %3, metadata !3645, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8** %4, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 0, metadata !3647, metadata !DIExpression()), !dbg !3648
  br label %6, !dbg !3649

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3651
  call void @llvm.dbg.value(metadata i64 %7, metadata !3647, metadata !DIExpression()), !dbg !3648
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3652
  %9 = load i8*, i8** %8, align 8, !dbg !3652, !tbaa !487
  %10 = icmp eq i8* %9, null, !dbg !3654
  %11 = add i64 %7, 1, !dbg !3655
  call void @llvm.dbg.value(metadata i64 %11, metadata !3647, metadata !DIExpression()), !dbg !3648
  br i1 %10, label %12, label %6, !dbg !3654, !llvm.loop !3656

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3658
  ret void, !dbg !3659
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #13 !dbg !3660 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3675, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i8* %1, metadata !3676, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i8* %2, metadata !3677, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i8* %3, metadata !3678, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3679, metadata !DIExpression()), !dbg !3684
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3685
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3685
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3681, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 0, metadata !3680, metadata !DIExpression()), !dbg !3683
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3680, metadata !DIExpression()), !dbg !3683
  %11 = load i32, i32* %8, align 8, !dbg !3687
  %12 = icmp sgt i32 %11, -1, !dbg !3687
  br i1 %12, label %20, label %13, !dbg !3687

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3687
  store i32 %14, i32* %8, align 8, !dbg !3687
  %15 = icmp ult i32 %11, -7, !dbg !3687
  br i1 %15, label %16, label %20, !dbg !3687

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3687
  %18 = sext i32 %11 to i64, !dbg !3687
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3687
  br label %24, !dbg !3687

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3687
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3687
  store i8* %23, i8** %10, align 8, !dbg !3687
  br label %24, !dbg !3687

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3687
  %28 = load i8*, i8** %27, align 8, !dbg !3687
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3690
  store i8* %28, i8** %29, align 8, !dbg !3691, !tbaa !487
  %30 = icmp eq i8* %28, null, !dbg !3692
  br i1 %30, label %210, label %31, !dbg !3693

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 1, metadata !3680, metadata !DIExpression()), !dbg !3683
  %32 = icmp sgt i32 %25, -1, !dbg !3687
  br i1 %32, label %40, label %33, !dbg !3687

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3687
  store i32 %34, i32* %8, align 8, !dbg !3687
  %35 = icmp ult i32 %25, -7, !dbg !3687
  br i1 %35, label %36, label %40, !dbg !3687

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3687
  %38 = sext i32 %25 to i64, !dbg !3687
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3687
  br label %44, !dbg !3687

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3687
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3687
  store i8* %43, i8** %10, align 8, !dbg !3687
  br label %44, !dbg !3687

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3687
  %48 = load i8*, i8** %47, align 8, !dbg !3687
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3690
  store i8* %48, i8** %49, align 8, !dbg !3691, !tbaa !487
  %50 = icmp eq i8* %48, null, !dbg !3692
  br i1 %50, label %210, label %51, !dbg !3693

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 2, metadata !3680, metadata !DIExpression()), !dbg !3683
  %52 = icmp sgt i32 %45, -1, !dbg !3687
  br i1 %52, label %60, label %53, !dbg !3687

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3687
  store i32 %54, i32* %8, align 8, !dbg !3687
  %55 = icmp ult i32 %45, -7, !dbg !3687
  br i1 %55, label %56, label %60, !dbg !3687

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3687
  %58 = sext i32 %45 to i64, !dbg !3687
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3687
  br label %64, !dbg !3687

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3687
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3687
  store i8* %63, i8** %10, align 8, !dbg !3687
  br label %64, !dbg !3687

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3687
  %68 = load i8*, i8** %67, align 8, !dbg !3687
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3690
  store i8* %68, i8** %69, align 8, !dbg !3691, !tbaa !487
  %70 = icmp eq i8* %68, null, !dbg !3692
  br i1 %70, label %210, label %71, !dbg !3693

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 3, metadata !3680, metadata !DIExpression()), !dbg !3683
  %72 = icmp sgt i32 %65, -1, !dbg !3687
  br i1 %72, label %80, label %73, !dbg !3687

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3687
  store i32 %74, i32* %8, align 8, !dbg !3687
  %75 = icmp ult i32 %65, -7, !dbg !3687
  br i1 %75, label %76, label %80, !dbg !3687

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3687
  %78 = sext i32 %65 to i64, !dbg !3687
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3687
  br label %84, !dbg !3687

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3687
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3687
  store i8* %83, i8** %10, align 8, !dbg !3687
  br label %84, !dbg !3687

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3687
  %88 = load i8*, i8** %87, align 8, !dbg !3687
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3690
  store i8* %88, i8** %89, align 8, !dbg !3691, !tbaa !487
  %90 = icmp eq i8* %88, null, !dbg !3692
  br i1 %90, label %210, label %91, !dbg !3693

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 4, metadata !3680, metadata !DIExpression()), !dbg !3683
  %92 = icmp sgt i32 %85, -1, !dbg !3687
  br i1 %92, label %100, label %93, !dbg !3687

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3687
  store i32 %94, i32* %8, align 8, !dbg !3687
  %95 = icmp ult i32 %85, -7, !dbg !3687
  br i1 %95, label %96, label %100, !dbg !3687

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3687
  %98 = sext i32 %85 to i64, !dbg !3687
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3687
  br label %104, !dbg !3687

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3687
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3687
  store i8* %103, i8** %10, align 8, !dbg !3687
  br label %104, !dbg !3687

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3687
  %108 = load i8*, i8** %107, align 8, !dbg !3687
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3690
  store i8* %108, i8** %109, align 8, !dbg !3691, !tbaa !487
  %110 = icmp eq i8* %108, null, !dbg !3692
  br i1 %110, label %210, label %111, !dbg !3693

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 5, metadata !3680, metadata !DIExpression()), !dbg !3683
  %112 = icmp sgt i32 %105, -1, !dbg !3687
  br i1 %112, label %120, label %113, !dbg !3687

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3687
  store i32 %114, i32* %8, align 8, !dbg !3687
  %115 = icmp ult i32 %105, -7, !dbg !3687
  br i1 %115, label %116, label %120, !dbg !3687

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3687
  %118 = sext i32 %105 to i64, !dbg !3687
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3687
  br label %124, !dbg !3687

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3687
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3687
  store i8* %123, i8** %10, align 8, !dbg !3687
  br label %124, !dbg !3687

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3687
  %128 = load i8*, i8** %127, align 8, !dbg !3687
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3690
  store i8* %128, i8** %129, align 8, !dbg !3691, !tbaa !487
  %130 = icmp eq i8* %128, null, !dbg !3692
  br i1 %130, label %210, label %131, !dbg !3693

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 6, metadata !3680, metadata !DIExpression()), !dbg !3683
  %132 = icmp sgt i32 %125, -1, !dbg !3687
  br i1 %132, label %140, label %133, !dbg !3687

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3687
  store i32 %134, i32* %8, align 8, !dbg !3687
  %135 = icmp ult i32 %125, -7, !dbg !3687
  br i1 %135, label %136, label %140, !dbg !3687

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3687
  %138 = sext i32 %125 to i64, !dbg !3687
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3687
  br label %144, !dbg !3687

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3687
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3687
  store i8* %143, i8** %10, align 8, !dbg !3687
  br label %144, !dbg !3687

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3687
  %148 = load i8*, i8** %147, align 8, !dbg !3687
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3690
  store i8* %148, i8** %149, align 8, !dbg !3691, !tbaa !487
  %150 = icmp eq i8* %148, null, !dbg !3692
  br i1 %150, label %210, label %151, !dbg !3693

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 7, metadata !3680, metadata !DIExpression()), !dbg !3683
  %152 = icmp sgt i32 %145, -1, !dbg !3687
  br i1 %152, label %160, label %153, !dbg !3687

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3687
  store i32 %154, i32* %8, align 8, !dbg !3687
  %155 = icmp ult i32 %145, -7, !dbg !3687
  br i1 %155, label %156, label %160, !dbg !3687

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3687
  %158 = sext i32 %145 to i64, !dbg !3687
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3687
  br label %164, !dbg !3687

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3687
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3687
  store i8* %163, i8** %10, align 8, !dbg !3687
  br label %164, !dbg !3687

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3687
  %168 = load i8*, i8** %167, align 8, !dbg !3687
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3690
  store i8* %168, i8** %169, align 8, !dbg !3691, !tbaa !487
  %170 = icmp eq i8* %168, null, !dbg !3692
  br i1 %170, label %210, label %171, !dbg !3693

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 8, metadata !3680, metadata !DIExpression()), !dbg !3683
  %172 = icmp sgt i32 %165, -1, !dbg !3687
  br i1 %172, label %180, label %173, !dbg !3687

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3687
  store i32 %174, i32* %8, align 8, !dbg !3687
  %175 = icmp ult i32 %165, -7, !dbg !3687
  br i1 %175, label %176, label %180, !dbg !3687

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3687
  %178 = sext i32 %165 to i64, !dbg !3687
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3687
  br label %184, !dbg !3687

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3687
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3687
  store i8* %183, i8** %10, align 8, !dbg !3687
  br label %184, !dbg !3687

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3687
  %188 = load i8*, i8** %187, align 8, !dbg !3687
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3690
  store i8* %188, i8** %189, align 8, !dbg !3691, !tbaa !487
  %190 = icmp eq i8* %188, null, !dbg !3692
  br i1 %190, label %210, label %191, !dbg !3693

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 9, metadata !3680, metadata !DIExpression()), !dbg !3683
  %192 = icmp sgt i32 %185, -1, !dbg !3687
  br i1 %192, label %200, label %193, !dbg !3687

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3687
  store i32 %194, i32* %8, align 8, !dbg !3687
  %195 = icmp ult i32 %185, -7, !dbg !3687
  br i1 %195, label %196, label %200, !dbg !3687

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3687
  %198 = sext i32 %185 to i64, !dbg !3687
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3687
  br label %203, !dbg !3687

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3687
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3687
  store i8* %202, i8** %10, align 8, !dbg !3687
  br label %203, !dbg !3687

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3687
  %206 = load i8*, i8** %205, align 8, !dbg !3687
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3690
  store i8* %206, i8** %207, align 8, !dbg !3691, !tbaa !487
  %208 = icmp eq i8* %206, null, !dbg !3692
  %209 = select i1 %208, i64 9, i64 10, !dbg !3693
  br label %210, !dbg !3693

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3694
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3695
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3696
  ret void, !dbg !3696
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #13 !dbg !3697 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3701, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8* %1, metadata !3702, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8* %2, metadata !3703, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8* %3, metadata !3704, metadata !DIExpression()), !dbg !3706
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3707
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3707
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3705, metadata !DIExpression()), !dbg !3708
  call void @llvm.va_start(i8* nonnull %7), !dbg !3709
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3710
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3710, !tbaa.struct !1313
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3710
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3710
  call void @llvm.va_end(i8* nonnull %7), !dbg !3711
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3712
  ret void, !dbg !3712
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #13 !dbg !3713 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3714, !tbaa !487
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3714
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.120, i64 0, i64 0), i32 noundef 5) #33, !dbg !3715
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.121, i64 0, i64 0)) #33, !dbg !3715
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.122, i64 0, i64 0), i32 noundef 5) #33, !dbg !3716
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.124, i64 0, i64 0)) #33, !dbg !3716
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.125, i64 0, i64 0), i32 noundef 5) #33, !dbg !3717
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #33, !dbg !3717
  ret void, !dbg !3718
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3719 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3724, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %1, metadata !3725, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %2, metadata !3726, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i8* %0, metadata !3728, metadata !DIExpression()) #33, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %1, metadata !3731, metadata !DIExpression()) #33, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %2, metadata !3732, metadata !DIExpression()) #33, !dbg !3733
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %4, metadata !3736, metadata !DIExpression()) #33, !dbg !3741
  %5 = icmp eq i8* %4, null, !dbg !3743
  br i1 %5, label %6, label %7, !dbg !3745

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3746
  unreachable, !dbg !3746

7:                                                ; preds = %3
  ret i8* %4, !dbg !3747
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3729 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3728, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %1, metadata !3731, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %2, metadata !3732, metadata !DIExpression()), !dbg !3748
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %4, metadata !3736, metadata !DIExpression()) #33, !dbg !3750
  %5 = icmp eq i8* %4, null, !dbg !3752
  br i1 %5, label %6, label %7, !dbg !3753

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3754
  unreachable, !dbg !3754

7:                                                ; preds = %3
  ret i8* %4, !dbg !3755
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3756 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3760, metadata !DIExpression()), !dbg !3761
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %2, metadata !3736, metadata !DIExpression()) #33, !dbg !3763
  %3 = icmp eq i8* %2, null, !dbg !3765
  br i1 %3, label %4, label %5, !dbg !3766

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3767
  unreachable, !dbg !3767

5:                                                ; preds = %1
  ret i8* %2, !dbg !3768
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3769 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3773, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i64 %0, metadata !3775, metadata !DIExpression()) #33, !dbg !3779
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3781
  call void @llvm.dbg.value(metadata i8* %2, metadata !3736, metadata !DIExpression()) #33, !dbg !3782
  %3 = icmp eq i8* %2, null, !dbg !3784
  br i1 %3, label %4, label %5, !dbg !3785

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3786
  unreachable, !dbg !3786

5:                                                ; preds = %1
  ret i8* %2, !dbg !3787
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3788 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %0, metadata !3760, metadata !DIExpression()) #33, !dbg !3794
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3796
  call void @llvm.dbg.value(metadata i8* %2, metadata !3736, metadata !DIExpression()) #33, !dbg !3797
  %3 = icmp eq i8* %2, null, !dbg !3799
  br i1 %3, label %4, label %5, !dbg !3800

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3801
  unreachable, !dbg !3801

5:                                                ; preds = %1
  ret i8* %2, !dbg !3802
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3803 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3807, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %1, metadata !3808, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i8* %0, metadata !3810, metadata !DIExpression()) #33, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %1, metadata !3814, metadata !DIExpression()) #33, !dbg !3815
  %3 = icmp eq i64 %1, 0, !dbg !3817
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3817
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3818
  call void @llvm.dbg.value(metadata i8* %5, metadata !3736, metadata !DIExpression()) #33, !dbg !3819
  %6 = icmp eq i8* %5, null, !dbg !3821
  br i1 %6, label %7, label %8, !dbg !3822

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3823
  unreachable, !dbg !3823

8:                                                ; preds = %2
  ret i8* %5, !dbg !3824
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3825 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3829, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 %1, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()) #33, !dbg !3836
  call void @llvm.dbg.value(metadata i64 %1, metadata !3835, metadata !DIExpression()) #33, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %0, metadata !3810, metadata !DIExpression()) #33, !dbg !3838
  call void @llvm.dbg.value(metadata i64 %1, metadata !3814, metadata !DIExpression()) #33, !dbg !3838
  %3 = icmp eq i64 %1, 0, !dbg !3840
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3840
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3841
  call void @llvm.dbg.value(metadata i8* %5, metadata !3736, metadata !DIExpression()) #33, !dbg !3842
  %6 = icmp eq i8* %5, null, !dbg !3844
  br i1 %6, label %7, label %8, !dbg !3845

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3846
  unreachable, !dbg !3846

8:                                                ; preds = %2
  ret i8* %5, !dbg !3847
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3852, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i64 %1, metadata !3853, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i64 %2, metadata !3854, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i8* %0, metadata !3856, metadata !DIExpression()) #33, !dbg !3861
  call void @llvm.dbg.value(metadata i64 %1, metadata !3859, metadata !DIExpression()) #33, !dbg !3861
  call void @llvm.dbg.value(metadata i64 %2, metadata !3860, metadata !DIExpression()) #33, !dbg !3861
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3863
  call void @llvm.dbg.value(metadata i8* %4, metadata !3736, metadata !DIExpression()) #33, !dbg !3864
  %5 = icmp eq i8* %4, null, !dbg !3866
  br i1 %5, label %6, label %7, !dbg !3867

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3868
  unreachable, !dbg !3868

7:                                                ; preds = %3
  ret i8* %4, !dbg !3869
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3870 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3874, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i64 %1, metadata !3875, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i8* null, metadata !3728, metadata !DIExpression()) #33, !dbg !3877
  call void @llvm.dbg.value(metadata i64 %0, metadata !3731, metadata !DIExpression()) #33, !dbg !3877
  call void @llvm.dbg.value(metadata i64 %1, metadata !3732, metadata !DIExpression()) #33, !dbg !3877
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3879
  call void @llvm.dbg.value(metadata i8* %3, metadata !3736, metadata !DIExpression()) #33, !dbg !3880
  %4 = icmp eq i8* %3, null, !dbg !3882
  br i1 %4, label %5, label %6, !dbg !3883

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3884
  unreachable, !dbg !3884

6:                                                ; preds = %2
  ret i8* %3, !dbg !3885
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3886 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3890, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %1, metadata !3891, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i8* null, metadata !3852, metadata !DIExpression()) #33, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %0, metadata !3853, metadata !DIExpression()) #33, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %1, metadata !3854, metadata !DIExpression()) #33, !dbg !3893
  call void @llvm.dbg.value(metadata i8* null, metadata !3856, metadata !DIExpression()) #33, !dbg !3895
  call void @llvm.dbg.value(metadata i64 %0, metadata !3859, metadata !DIExpression()) #33, !dbg !3895
  call void @llvm.dbg.value(metadata i64 %1, metadata !3860, metadata !DIExpression()) #33, !dbg !3895
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3897
  call void @llvm.dbg.value(metadata i8* %3, metadata !3736, metadata !DIExpression()) #33, !dbg !3898
  %4 = icmp eq i8* %3, null, !dbg !3900
  br i1 %4, label %5, label %6, !dbg !3901

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3902
  unreachable, !dbg !3902

6:                                                ; preds = %2
  ret i8* %3, !dbg !3903
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #13 !dbg !3904 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3908, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64* %1, metadata !3909, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i8* %0, metadata !426, metadata !DIExpression()) #33, !dbg !3911
  call void @llvm.dbg.value(metadata i64* %1, metadata !427, metadata !DIExpression()) #33, !dbg !3911
  call void @llvm.dbg.value(metadata i64 1, metadata !428, metadata !DIExpression()) #33, !dbg !3911
  %3 = load i64, i64* %1, align 8, !dbg !3913, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %3, metadata !429, metadata !DIExpression()) #33, !dbg !3911
  %4 = icmp eq i8* %0, null, !dbg !3914
  br i1 %4, label %5, label %8, !dbg !3916

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3917
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3920
  br label %15, !dbg !3920

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3921
  %10 = add nuw i64 %9, 1, !dbg !3921
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !3921
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3921
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %13, metadata !429, metadata !DIExpression()) #33, !dbg !3911
  br i1 %12, label %14, label %15, !dbg !3924

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !3925
  unreachable, !dbg !3925

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3911
  call void @llvm.dbg.value(metadata i64 %16, metadata !429, metadata !DIExpression()) #33, !dbg !3911
  call void @llvm.dbg.value(metadata i8* %0, metadata !3728, metadata !DIExpression()) #33, !dbg !3926
  call void @llvm.dbg.value(metadata i64 %16, metadata !3731, metadata !DIExpression()) #33, !dbg !3926
  call void @llvm.dbg.value(metadata i64 1, metadata !3732, metadata !DIExpression()) #33, !dbg !3926
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !3928
  call void @llvm.dbg.value(metadata i8* %17, metadata !3736, metadata !DIExpression()) #33, !dbg !3929
  %18 = icmp eq i8* %17, null, !dbg !3931
  br i1 %18, label %19, label %20, !dbg !3932

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !3933
  unreachable, !dbg !3933

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !426, metadata !DIExpression()) #33, !dbg !3911
  store i64 %16, i64* %1, align 8, !dbg !3934, !tbaa !1051
  ret i8* %17, !dbg !3935
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #13 !dbg !421 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !426, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64* %1, metadata !427, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %2, metadata !428, metadata !DIExpression()), !dbg !3936
  %4 = load i64, i64* %1, align 8, !dbg !3937, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %4, metadata !429, metadata !DIExpression()), !dbg !3936
  %5 = icmp eq i8* %0, null, !dbg !3938
  br i1 %5, label %6, label %13, !dbg !3939

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3940
  br i1 %7, label %8, label %20, !dbg !3941

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %9, metadata !429, metadata !DIExpression()), !dbg !3936
  %10 = icmp ugt i64 %2, 128, !dbg !3944
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %12, metadata !429, metadata !DIExpression()), !dbg !3936
  br label %20, !dbg !3946

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3947
  %15 = add nuw i64 %14, 1, !dbg !3947
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3947
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3947
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3947
  call void @llvm.dbg.value(metadata i64 %18, metadata !429, metadata !DIExpression()), !dbg !3936
  br i1 %17, label %19, label %20, !dbg !3948

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !3949
  unreachable, !dbg !3949

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3936
  call void @llvm.dbg.value(metadata i64 %21, metadata !429, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i8* %0, metadata !3728, metadata !DIExpression()) #33, !dbg !3950
  call void @llvm.dbg.value(metadata i64 %21, metadata !3731, metadata !DIExpression()) #33, !dbg !3950
  call void @llvm.dbg.value(metadata i64 %2, metadata !3732, metadata !DIExpression()) #33, !dbg !3950
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %22, metadata !3736, metadata !DIExpression()) #33, !dbg !3953
  %23 = icmp eq i8* %22, null, !dbg !3955
  br i1 %23, label %24, label %25, !dbg !3956

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !3957
  unreachable, !dbg !3957

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !426, metadata !DIExpression()), !dbg !3936
  store i64 %21, i64* %1, align 8, !dbg !3958, !tbaa !1051
  ret i8* %22, !dbg !3959
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #13 !dbg !433 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !441, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64* %1, metadata !442, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %2, metadata !443, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %3, metadata !444, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %4, metadata !445, metadata !DIExpression()), !dbg !3960
  %6 = load i64, i64* %1, align 8, !dbg !3961, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %6, metadata !446, metadata !DIExpression()), !dbg !3960
  %7 = ashr i64 %6, 1, !dbg !3962
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3962
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3962
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3962
  call void @llvm.dbg.value(metadata i64 %10, metadata !447, metadata !DIExpression()), !dbg !3960
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3964
  call void @llvm.dbg.value(metadata i64 %11, metadata !447, metadata !DIExpression()), !dbg !3960
  %12 = icmp sgt i64 %3, -1, !dbg !3965
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3967
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %15, metadata !447, metadata !DIExpression()), !dbg !3960
  %16 = icmp slt i64 %4, 0, !dbg !3968
  br i1 %16, label %17, label %30, !dbg !3968

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3968
  br i1 %18, label %19, label %24, !dbg !3968

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3968
  %21 = udiv i64 9223372036854775807, %20, !dbg !3968
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3968
  br i1 %23, label %46, label %43, !dbg !3968

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3968
  br i1 %25, label %43, label %26, !dbg !3968

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3968
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3968
  %29 = icmp ult i64 %28, %15, !dbg !3968
  br i1 %29, label %46, label %43, !dbg !3968

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3968
  br i1 %31, label %43, label %32, !dbg !3968

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3968
  br i1 %33, label %34, label %40, !dbg !3968

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3968
  br i1 %35, label %43, label %36, !dbg !3968

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3968
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3968
  %39 = icmp ult i64 %38, %4, !dbg !3968
  br i1 %39, label %46, label %43, !dbg !3968

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3968
  %42 = icmp ult i64 %41, %15, !dbg !3968
  br i1 %42, label %46, label %43, !dbg !3968

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !448, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3960
  %44 = mul i64 %15, %4, !dbg !3968
  call void @llvm.dbg.value(metadata i64 %44, metadata !448, metadata !DIExpression()), !dbg !3960
  %45 = icmp slt i64 %44, 128, !dbg !3968
  br i1 %45, label %46, label %52, !dbg !3968

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !449, metadata !DIExpression()), !dbg !3960
  %48 = sdiv i64 %47, %4, !dbg !3969
  call void @llvm.dbg.value(metadata i64 %48, metadata !447, metadata !DIExpression()), !dbg !3960
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3972
  call void @llvm.dbg.value(metadata i64 %51, metadata !448, metadata !DIExpression()), !dbg !3960
  br label %52, !dbg !3973

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3960
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3960
  call void @llvm.dbg.value(metadata i64 %54, metadata !448, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %53, metadata !447, metadata !DIExpression()), !dbg !3960
  %55 = icmp eq i8* %0, null, !dbg !3974
  br i1 %55, label %56, label %57, !dbg !3976

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3977, !tbaa !1051
  br label %57, !dbg !3978

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3979
  %59 = icmp slt i64 %58, %2, !dbg !3981
  br i1 %59, label %60, label %97, !dbg !3982

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3983
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3983
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %63, metadata !447, metadata !DIExpression()), !dbg !3960
  br i1 %62, label %96, label %64, !dbg !3984

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3985
  br i1 %66, label %96, label %67, !dbg !3985

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3986

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3986
  br i1 %69, label %70, label %75, !dbg !3986

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3986
  %72 = udiv i64 9223372036854775807, %71, !dbg !3986
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3986
  br i1 %74, label %96, label %94, !dbg !3986

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3986
  br i1 %76, label %94, label %77, !dbg !3986

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3986
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3986
  %80 = icmp ult i64 %79, %63, !dbg !3986
  br i1 %80, label %96, label %94, !dbg !3986

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3986
  br i1 %82, label %94, label %83, !dbg !3986

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3986
  br i1 %84, label %85, label %91, !dbg !3986

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3986
  br i1 %86, label %94, label %87, !dbg !3986

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3986
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3986
  %90 = icmp ult i64 %89, %4, !dbg !3986
  br i1 %90, label %96, label %94, !dbg !3986

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3986
  %93 = icmp ult i64 %92, %63, !dbg !3986
  br i1 %93, label %96, label %94, !dbg !3986

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !448, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3960
  %95 = mul i64 %63, %4, !dbg !3986
  call void @llvm.dbg.value(metadata i64 %95, metadata !448, metadata !DIExpression()), !dbg !3960
  br label %97, !dbg !3987

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !3988
  unreachable, !dbg !3988

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3960
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3960
  call void @llvm.dbg.value(metadata i64 %99, metadata !448, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %98, metadata !447, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i8* %0, metadata !3807, metadata !DIExpression()) #33, !dbg !3989
  call void @llvm.dbg.value(metadata i64 %99, metadata !3808, metadata !DIExpression()) #33, !dbg !3989
  call void @llvm.dbg.value(metadata i8* %0, metadata !3810, metadata !DIExpression()) #33, !dbg !3991
  call void @llvm.dbg.value(metadata i64 %99, metadata !3814, metadata !DIExpression()) #33, !dbg !3991
  %100 = icmp eq i64 %99, 0, !dbg !3993
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3993
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !3994
  call void @llvm.dbg.value(metadata i8* %102, metadata !3736, metadata !DIExpression()) #33, !dbg !3995
  %103 = icmp eq i8* %102, null, !dbg !3997
  br i1 %103, label %104, label %105, !dbg !3998

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !3999
  unreachable, !dbg !3999

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !441, metadata !DIExpression()), !dbg !3960
  store i64 %98, i64* %1, align 8, !dbg !4000, !tbaa !1051
  ret i8* %102, !dbg !4001
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !4002 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4004, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %0, metadata !4006, metadata !DIExpression()) #33, !dbg !4010
  call void @llvm.dbg.value(metadata i64 1, metadata !4009, metadata !DIExpression()) #33, !dbg !4010
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !4012
  call void @llvm.dbg.value(metadata i8* %2, metadata !3736, metadata !DIExpression()) #33, !dbg !4013
  %3 = icmp eq i8* %2, null, !dbg !4015
  br i1 %3, label %4, label %5, !dbg !4016

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4017
  unreachable, !dbg !4017

5:                                                ; preds = %1
  ret i8* %2, !dbg !4018
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4007 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4006, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %1, metadata !4009, metadata !DIExpression()), !dbg !4019
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !4020
  call void @llvm.dbg.value(metadata i8* %3, metadata !3736, metadata !DIExpression()) #33, !dbg !4021
  %4 = icmp eq i8* %3, null, !dbg !4023
  br i1 %4, label %5, label %6, !dbg !4024

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4025
  unreachable, !dbg !4025

6:                                                ; preds = %2
  ret i8* %3, !dbg !4026
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !4027 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %0, metadata !4031, metadata !DIExpression()) #33, !dbg !4035
  call void @llvm.dbg.value(metadata i64 1, metadata !4034, metadata !DIExpression()) #33, !dbg !4035
  call void @llvm.dbg.value(metadata i64 %0, metadata !4037, metadata !DIExpression()) #33, !dbg !4041
  call void @llvm.dbg.value(metadata i64 1, metadata !4040, metadata !DIExpression()) #33, !dbg !4041
  call void @llvm.dbg.value(metadata i64 %0, metadata !4037, metadata !DIExpression()) #33, !dbg !4041
  call void @llvm.dbg.value(metadata i64 1, metadata !4040, metadata !DIExpression()) #33, !dbg !4041
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !4043
  call void @llvm.dbg.value(metadata i8* %2, metadata !3736, metadata !DIExpression()) #33, !dbg !4044
  %3 = icmp eq i8* %2, null, !dbg !4046
  br i1 %3, label %4, label %5, !dbg !4047

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4048
  unreachable, !dbg !4048

5:                                                ; preds = %1
  ret i8* %2, !dbg !4049
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4032 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4031, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %1, metadata !4034, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %0, metadata !4037, metadata !DIExpression()) #33, !dbg !4051
  call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()) #33, !dbg !4051
  call void @llvm.dbg.value(metadata i64 %0, metadata !4037, metadata !DIExpression()) #33, !dbg !4051
  call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()) #33, !dbg !4051
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !4053
  call void @llvm.dbg.value(metadata i8* %3, metadata !3736, metadata !DIExpression()) #33, !dbg !4054
  %4 = icmp eq i8* %3, null, !dbg !4056
  br i1 %4, label %5, label %6, !dbg !4057

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4058
  unreachable, !dbg !4058

6:                                                ; preds = %2
  ret i8* %3, !dbg !4059
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4060 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4064, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %1, metadata !4065, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %1, metadata !3760, metadata !DIExpression()) #33, !dbg !4067
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !4069
  call void @llvm.dbg.value(metadata i8* %3, metadata !3736, metadata !DIExpression()) #33, !dbg !4070
  %4 = icmp eq i8* %3, null, !dbg !4072
  br i1 %4, label %5, label %6, !dbg !4073

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4074
  unreachable, !dbg !4074

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4075, metadata !DIExpression()) #33, !dbg !4080
  call void @llvm.dbg.value(metadata i8* %0, metadata !4078, metadata !DIExpression()) #33, !dbg !4080
  call void @llvm.dbg.value(metadata i64 %1, metadata !4079, metadata !DIExpression()) #33, !dbg !4080
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4082
  ret i8* %3, !dbg !4083
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4084 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4088, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %1, metadata !4089, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3773, metadata !DIExpression()) #33, !dbg !4091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3775, metadata !DIExpression()) #33, !dbg !4093
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !4095
  call void @llvm.dbg.value(metadata i8* %3, metadata !3736, metadata !DIExpression()) #33, !dbg !4096
  %4 = icmp eq i8* %3, null, !dbg !4098
  br i1 %4, label %5, label %6, !dbg !4099

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4100
  unreachable, !dbg !4100

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4075, metadata !DIExpression()) #33, !dbg !4101
  call void @llvm.dbg.value(metadata i8* %0, metadata !4078, metadata !DIExpression()) #33, !dbg !4101
  call void @llvm.dbg.value(metadata i64 %1, metadata !4079, metadata !DIExpression()) #33, !dbg !4101
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4103
  ret i8* %3, !dbg !4104
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #13 !dbg !4105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4109, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i64 %1, metadata !4110, metadata !DIExpression()), !dbg !4112
  %3 = add nsw i64 %1, 1, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %3, metadata !3773, metadata !DIExpression()) #33, !dbg !4114
  call void @llvm.dbg.value(metadata i64 %3, metadata !3775, metadata !DIExpression()) #33, !dbg !4116
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !4118
  call void @llvm.dbg.value(metadata i8* %4, metadata !3736, metadata !DIExpression()) #33, !dbg !4119
  %5 = icmp eq i8* %4, null, !dbg !4121
  br i1 %5, label %6, label %7, !dbg !4122

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4123
  unreachable, !dbg !4123

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4111, metadata !DIExpression()), !dbg !4112
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4124
  store i8 0, i8* %8, align 1, !dbg !4125, !tbaa !585
  call void @llvm.dbg.value(metadata i8* %4, metadata !4075, metadata !DIExpression()) #33, !dbg !4126
  call void @llvm.dbg.value(metadata i8* %0, metadata !4078, metadata !DIExpression()) #33, !dbg !4126
  call void @llvm.dbg.value(metadata i64 %1, metadata !4079, metadata !DIExpression()) #33, !dbg !4126
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4128
  ret i8* %4, !dbg !4129
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #13 !dbg !4130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4132, metadata !DIExpression()), !dbg !4133
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !4134
  %3 = add i64 %2, 1, !dbg !4135
  call void @llvm.dbg.value(metadata i8* %0, metadata !4064, metadata !DIExpression()) #33, !dbg !4136
  call void @llvm.dbg.value(metadata i64 %3, metadata !4065, metadata !DIExpression()) #33, !dbg !4136
  call void @llvm.dbg.value(metadata i64 %3, metadata !3760, metadata !DIExpression()) #33, !dbg !4138
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !4140
  call void @llvm.dbg.value(metadata i8* %4, metadata !3736, metadata !DIExpression()) #33, !dbg !4141
  %5 = icmp eq i8* %4, null, !dbg !4143
  br i1 %5, label %6, label %7, !dbg !4144

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4145
  unreachable, !dbg !4145

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4075, metadata !DIExpression()) #33, !dbg !4146
  call void @llvm.dbg.value(metadata i8* %0, metadata !4078, metadata !DIExpression()) #33, !dbg !4146
  call void @llvm.dbg.value(metadata i64 %3, metadata !4079, metadata !DIExpression()) #33, !dbg !4146
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !4148
  ret i8* %4, !dbg !4149
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4150 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4155, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %1, metadata !4152, metadata !DIExpression()), !dbg !4156
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.146, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.147, i64 0, i64 0), i32 noundef 5) #33, !dbg !4155
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i64 0, i64 0), i8* noundef %2) #33, !dbg !4155
  %3 = icmp eq i32 %1, 0, !dbg !4155
  tail call void @llvm.assume(i1 %3), !dbg !4155
  tail call void @abort() #35, !dbg !4157
  unreachable, !dbg !4157
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #13 !dbg !4158 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4196, metadata !DIExpression()), !dbg !4201
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !4202
  call void @llvm.dbg.value(metadata i1 undef, metadata !4197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4203, metadata !DIExpression()), !dbg !4206
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4208
  %4 = load i32, i32* %3, align 8, !dbg !4208, !tbaa !800
  %5 = and i32 %4, 32, !dbg !4209
  %6 = icmp eq i32 %5, 0, !dbg !4209
  call void @llvm.dbg.value(metadata i1 %6, metadata !4199, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4201
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !4210
  %8 = icmp eq i32 %7, 0, !dbg !4211
  call void @llvm.dbg.value(metadata i1 %8, metadata !4200, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4201
  br i1 %6, label %9, label %19, !dbg !4212

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4214
  call void @llvm.dbg.value(metadata i1 %10, metadata !4197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4201
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4215
  %12 = xor i1 %8, true, !dbg !4215
  %13 = sext i1 %12 to i32, !dbg !4215
  br i1 %11, label %22, label %14, !dbg !4215

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !4216
  %16 = load i32, i32* %15, align 4, !dbg !4216, !tbaa !576
  %17 = icmp ne i32 %16, 9, !dbg !4217
  %18 = sext i1 %17 to i32, !dbg !4218
  br label %22, !dbg !4218

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4219

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !4221
  store i32 0, i32* %21, align 4, !dbg !4223, !tbaa !576
  br label %22, !dbg !4221

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4201
  ret i32 %23, !dbg !4224
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #13 !dbg !4225 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4230, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8* %1, metadata !4231, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i64 %2, metadata !4232, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4233, metadata !DIExpression()), !dbg !4235
  %5 = icmp eq i8* %1, null, !dbg !4236
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4238
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), i8* %1, !dbg !4238
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %8, metadata !4232, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8* %7, metadata !4231, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i32* %6, metadata !4230, metadata !DIExpression()), !dbg !4235
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4239
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4241
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4233, metadata !DIExpression()), !dbg !4235
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !4242
  call void @llvm.dbg.value(metadata i64 %11, metadata !4234, metadata !DIExpression()), !dbg !4235
  %12 = icmp ult i64 %11, -3, !dbg !4243
  br i1 %12, label %13, label %18, !dbg !4245

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !4246
  %15 = icmp eq i32 %14, 0, !dbg !4246
  br i1 %15, label %16, label %30, !dbg !4247

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4248, metadata !DIExpression()) #33, !dbg !4253
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4255, metadata !DIExpression()) #33, !dbg !4260
  call void @llvm.dbg.value(metadata i32 0, metadata !4258, metadata !DIExpression()) #33, !dbg !4260
  call void @llvm.dbg.value(metadata i64 8, metadata !4259, metadata !DIExpression()) #33, !dbg !4260
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4262
  store i64 0, i64* %17, align 1, !dbg !4262
  br label %30, !dbg !4263

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4264
  br i1 %19, label %20, label %21, !dbg !4266

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !4267
  unreachable, !dbg !4267

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4268

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !4270
  br i1 %24, label %30, label %25, !dbg !4271

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4272
  br i1 %26, label %30, label %27, !dbg !4275

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4276, !tbaa !585
  %29 = zext i8 %28 to i32, !dbg !4277
  store i32 %29, i32* %6, align 4, !dbg !4278, !tbaa !576
  br label %30, !dbg !4279

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4235
  ret i64 %31, !dbg !4280
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4281 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4287 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4289, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %1, metadata !4290, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %2, metadata !4291, metadata !DIExpression()), !dbg !4293
  %4 = icmp eq i64 %2, 0, !dbg !4294
  br i1 %4, label %8, label %5, !dbg !4294

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4294
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4294
  br i1 %7, label %13, label %8, !dbg !4294

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4292, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4293
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4292, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4293
  %9 = mul i64 %2, %1, !dbg !4294
  call void @llvm.dbg.value(metadata i64 %9, metadata !4292, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i8* %0, metadata !4296, metadata !DIExpression()) #33, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %9, metadata !4299, metadata !DIExpression()) #33, !dbg !4300
  %10 = icmp eq i64 %9, 0, !dbg !4302
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4302
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !4303
  br label %15, !dbg !4304

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4292, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4293
  %14 = tail call i32* @__errno_location() #36, !dbg !4305
  store i32 12, i32* %14, align 4, !dbg !4307, !tbaa !576
  br label %15, !dbg !4308

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4293
  ret i8* %16, !dbg !4309
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #13 !dbg !4310 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4312, metadata !DIExpression()), !dbg !4317
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4318
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4318
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4313, metadata !DIExpression()), !dbg !4319
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !4320
  %5 = icmp eq i32 %4, 0, !dbg !4320
  br i1 %5, label %6, label %13, !dbg !4322

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4323, metadata !DIExpression()) #33, !dbg !4327
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0), metadata !4326, metadata !DIExpression()) #33, !dbg !4327
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0), i64 2), !dbg !4330
  %8 = icmp eq i32 %7, 0, !dbg !4331
  br i1 %8, label %12, label %9, !dbg !4332

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4323, metadata !DIExpression()) #33, !dbg !4333
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), metadata !4326, metadata !DIExpression()) #33, !dbg !4333
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), i64 6), !dbg !4335
  %11 = icmp eq i32 %10, 0, !dbg !4336
  br i1 %11, label %12, label %13, !dbg !4337

12:                                               ; preds = %9, %6
  br label %13, !dbg !4338

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4317
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4339
  ret i1 %14, !dbg !4339
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #13 !dbg !4340 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4344, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i8* %1, metadata !4345, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i64 %2, metadata !4346, metadata !DIExpression()), !dbg !4347
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !4348
  ret i32 %4, !dbg !4349
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #13 !dbg !4350 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4354, metadata !DIExpression()), !dbg !4355
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !4356
  ret i8* %2, !dbg !4357
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #13 !dbg !4358 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4360, metadata !DIExpression()), !dbg !4362
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4363
  call void @llvm.dbg.value(metadata i8* %2, metadata !4361, metadata !DIExpression()), !dbg !4362
  ret i8* %2, !dbg !4364
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #13 !dbg !4365 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4367, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i8* %1, metadata !4368, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %2, metadata !4369, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i32 %0, metadata !4360, metadata !DIExpression()) #33, !dbg !4375
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4377
  call void @llvm.dbg.value(metadata i8* %4, metadata !4361, metadata !DIExpression()) #33, !dbg !4375
  call void @llvm.dbg.value(metadata i8* %4, metadata !4370, metadata !DIExpression()), !dbg !4374
  %5 = icmp eq i8* %4, null, !dbg !4378
  br i1 %5, label %6, label %9, !dbg !4379

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4380
  br i1 %7, label %19, label %8, !dbg !4383

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4384, !tbaa !585
  br label %19, !dbg !4385

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !4386
  call void @llvm.dbg.value(metadata i64 %10, metadata !4371, metadata !DIExpression()), !dbg !4387
  %11 = icmp ult i64 %10, %2, !dbg !4388
  br i1 %11, label %12, label %14, !dbg !4390

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4391
  call void @llvm.dbg.value(metadata i8* %1, metadata !4393, metadata !DIExpression()) #33, !dbg !4398
  call void @llvm.dbg.value(metadata i8* %4, metadata !4396, metadata !DIExpression()) #33, !dbg !4398
  call void @llvm.dbg.value(metadata i64 %13, metadata !4397, metadata !DIExpression()) #33, !dbg !4398
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !4400
  br label %19, !dbg !4401

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4402
  br i1 %15, label %19, label %16, !dbg !4405

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4406
  call void @llvm.dbg.value(metadata i8* %1, metadata !4393, metadata !DIExpression()) #33, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %4, metadata !4396, metadata !DIExpression()) #33, !dbg !4408
  call void @llvm.dbg.value(metadata i64 %17, metadata !4397, metadata !DIExpression()) #33, !dbg !4408
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !4410
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4411
  store i8 0, i8* %18, align 1, !dbg !4412, !tbaa !585
  br label %19, !dbg !4413

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4414
  ret i32 %20, !dbg !4415
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
attributes #12 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
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
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }
attributes #41 = { nounwind allocsize(0,1) }
attributes #42 = { nounwind allocsize(1,2) }

!llvm.dbg.cu = !{!10, !191, !196, !203, !369, !389, !392, !394, !397, !399, !401, !244, !254, !286, !403, !411, !361, !417, !451, !453, !375, !455, !458, !460, !462}
!llvm.ident = !{!464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464, !464}
!llvm.module.flags = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 543, type: !177, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 531, type: !4, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !172)
!3 = !DIFile(filename: "src/tsort.c", directory: "/src", checksumkind: CSK_MD5, checksum: "dfc4944a651c3ad1de6dfe7266a5508c")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !51, globals: !60, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !28, !42}
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !29, line: 42, baseType: !14, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!31 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!32 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!33 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!34 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!35 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!36 = !DIEnumerator(name: "c_quoting_style", value: 5)
!37 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!38 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!39 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!40 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!41 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 44, baseType: !14, size: 32, elements: !44)
!43 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!46 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!47 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!48 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!49 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!50 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!51 = !{!8, !52, !6, !53, !54, !57, !59}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !{!0, !61, !148, !150, !168, !170}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !63, file: !64, line: 575, type: !6, isLocal: true, isDefinition: true)
!63 = distinct !DISubprogram(name: "oputs_", scope: !64, file: !64, line: 573, type: !65, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !67)
!64 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!65 = !DISubroutineType(types: !66)
!66 = !{null, !57, !57}
!67 = !{!68, !69, !70, !73, !75, !76, !77, !81, !82, !83, !84, !86, !142, !143, !144, !146, !147}
!68 = !DILocalVariable(name: "program", arg: 1, scope: !63, file: !64, line: 573, type: !57)
!69 = !DILocalVariable(name: "option", arg: 2, scope: !63, file: !64, line: 573, type: !57)
!70 = !DILocalVariable(name: "term", scope: !71, file: !64, line: 585, type: !57)
!71 = distinct !DILexicalBlock(scope: !72, file: !64, line: 582, column: 5)
!72 = distinct !DILexicalBlock(scope: !63, file: !64, line: 581, column: 7)
!73 = !DILocalVariable(name: "double_space", scope: !63, file: !64, line: 594, type: !74)
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DILocalVariable(name: "first_word", scope: !63, file: !64, line: 595, type: !57)
!76 = !DILocalVariable(name: "option_text", scope: !63, file: !64, line: 596, type: !57)
!77 = !DILocalVariable(name: "s", scope: !78, file: !64, line: 608, type: !57)
!78 = distinct !DILexicalBlock(scope: !79, file: !64, line: 605, column: 5)
!79 = distinct !DILexicalBlock(scope: !80, file: !64, line: 604, column: 12)
!80 = distinct !DILexicalBlock(scope: !63, file: !64, line: 597, column: 7)
!81 = !DILocalVariable(name: "spaces", scope: !78, file: !64, line: 609, type: !54)
!82 = !DILocalVariable(name: "anchor_len", scope: !63, file: !64, line: 620, type: !54)
!83 = !DILocalVariable(name: "desc_text", scope: !63, file: !64, line: 625, type: !57)
!84 = !DILocalVariable(name: "__ptr", scope: !85, file: !64, line: 644, type: !57)
!85 = distinct !DILexicalBlock(scope: !63, file: !64, line: 644, column: 3)
!86 = !DILocalVariable(name: "__stream", scope: !85, file: !64, line: 644, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !90)
!89 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !92)
!91 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !108, !110, !111, !112, !116, !117, !119, !123, !126, !128, !131, !134, !135, !136, !137, !138}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !90, file: !91, line: 51, baseType: !6, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !90, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !90, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !90, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !90, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !90, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !90, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !90, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !90, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !90, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !90, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !90, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !90, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !91, line: 36, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !90, file: !91, line: 70, baseType: !109, size: 64, offset: 832)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !90, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !90, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !90, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !114, line: 152, baseType: !115)
!114 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!115 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !90, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !90, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!118 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !90, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 1)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !90, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !91, line: 43, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !90, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !114, line: 153, baseType: !115)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !90, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !91, line: 37, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !90, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !91, line: 38, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !90, file: !91, line: 93, baseType: !109, size: 64, offset: 1344)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !90, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !90, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !90, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !90, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 20)
!142 = !DILocalVariable(name: "__cnt", scope: !85, file: !64, line: 644, type: !54)
!143 = !DILocalVariable(name: "url_program", scope: !63, file: !64, line: 648, type: !57)
!144 = !DILocalVariable(name: "__ptr", scope: !145, file: !64, line: 686, type: !57)
!145 = distinct !DILexicalBlock(scope: !63, file: !64, line: 686, column: 3)
!146 = !DILocalVariable(name: "__stream", scope: !145, file: !64, line: 686, type: !87)
!147 = !DILocalVariable(name: "__cnt", scope: !145, file: !64, line: 686, type: !54)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "n_strings", scope: !10, file: !3, line: 72, type: !54, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "head", scope: !10, file: !3, line: 63, type: !152, isLocal: true, isDefinition: true)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !3, line: 51, size: 448, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !153, file: !3, line: 53, baseType: !57, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !153, file: !3, line: 54, baseType: !152, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !153, file: !3, line: 54, baseType: !152, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !153, file: !3, line: 55, baseType: !118, size: 8, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !153, file: !3, line: 56, baseType: !74, size: 8, offset: 200)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !153, file: !3, line: 57, baseType: !54, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "qlink", scope: !153, file: !3, line: 58, baseType: !152, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !153, file: !3, line: 59, baseType: !163, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "successor", file: !3, line: 44, size: 128, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "suc", scope: !164, file: !3, line: 46, baseType: !152, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !3, line: 47, baseType: !163, size: 64, offset: 64)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "zeros", scope: !10, file: !3, line: 66, type: !152, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "loop", scope: !10, file: !3, line: 69, type: !152, isLocal: true, isDefinition: true)
!172 = !{!173, !174, !175}
!173 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 531, type: !6)
!174 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 531, type: !7)
!175 = !DILocalVariable(name: "c", scope: !176, file: !3, line: 549, type: !6)
!176 = distinct !DILexicalBlock(scope: !2, file: !3, line: 542, column: 5)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 768, elements: !187)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !180, line: 50, size: 256, elements: !181)
!180 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!181 = !{!182, !183, !184, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !180, line: 52, baseType: !57, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !179, file: !180, line: 55, baseType: !6, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !179, file: !180, line: 56, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !179, file: !180, line: 57, baseType: !6, size: 32, offset: 192)
!187 = !{!188}
!188 = !DISubrange(count: 3)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "Version", scope: !191, file: !192, line: 3, type: !57, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !193, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!193 = !{!189}
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "file_name", scope: !196, file: !197, line: 45, type: !57, isLocal: true, isDefinition: true)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !198, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!198 = !{!194, !199}
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !196, file: !197, line: 55, type: !74, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !203, file: !204, line: 66, type: !239, isLocal: false, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !205, globals: !206, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!205 = !{!52, !59}
!206 = !{!207, !233, !201, !235, !237}
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "old_file_name", scope: !209, file: !204, line: 304, type: !57, isLocal: true, isDefinition: true)
!209 = distinct !DISubprogram(name: "verror_at_line", scope: !204, file: !204, line: 298, type: !210, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !226)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !6, !6, !57, !14, !57, !212}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !213, line: 52, baseType: !214)
!213 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !215, line: 32, baseType: !216)
!215 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !217, baseType: !218)
!217 = !DIFile(filename: "lib/error.c", directory: "/src")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !219, size: 256, elements: !220)
!219 = !DINamespace(name: "std", scope: null)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !218, file: !217, baseType: !52, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !218, file: !217, baseType: !52, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !218, file: !217, baseType: !52, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !218, file: !217, baseType: !6, size: 32, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !218, file: !217, baseType: !6, size: 32, offset: 224)
!226 = !{!227, !228, !229, !230, !231, !232}
!227 = !DILocalVariable(name: "status", arg: 1, scope: !209, file: !204, line: 298, type: !6)
!228 = !DILocalVariable(name: "errnum", arg: 2, scope: !209, file: !204, line: 298, type: !6)
!229 = !DILocalVariable(name: "file_name", arg: 3, scope: !209, file: !204, line: 298, type: !57)
!230 = !DILocalVariable(name: "line_number", arg: 4, scope: !209, file: !204, line: 298, type: !14)
!231 = !DILocalVariable(name: "message", arg: 5, scope: !209, file: !204, line: 298, type: !57)
!232 = !DILocalVariable(name: "args", arg: 6, scope: !209, file: !204, line: 298, type: !212)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "old_line_number", scope: !209, file: !204, line: 305, type: !14, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "error_message_count", scope: !203, file: !204, line: 69, type: !14, isLocal: false, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !203, file: !204, line: 295, type: !6, isLocal: false, isDefinition: true)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null}
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "program_name", scope: !244, file: !245, line: 31, type: !57, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !246, globals: !247, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!246 = !{!8}
!247 = !{!242}
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "utf07FF", scope: !250, file: !251, line: 46, type: !281, isLocal: true, isDefinition: true)
!250 = distinct !DISubprogram(name: "proper_name_lite", scope: !251, file: !251, line: 38, type: !252, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !256)
!251 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!252 = !DISubroutineType(types: !253)
!253 = !{!57, !57, !57}
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !255, splitDebugInlining: false, nameTableKind: None)
!255 = !{!248}
!256 = !{!257, !258, !259, !260, !265}
!257 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !250, file: !251, line: 38, type: !57)
!258 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !250, file: !251, line: 38, type: !57)
!259 = !DILocalVariable(name: "translation", scope: !250, file: !251, line: 40, type: !57)
!260 = !DILocalVariable(name: "w", scope: !250, file: !251, line: 47, type: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !262, line: 37, baseType: !263)
!262 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !114, line: 57, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !114, line: 42, baseType: !14)
!265 = !DILocalVariable(name: "mbs", scope: !250, file: !251, line: 48, type: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !267, line: 6, baseType: !268)
!267 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !269, line: 21, baseType: !270)
!269 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 13, size: 64, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !270, file: !269, line: 15, baseType: !6, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !270, file: !269, line: 20, baseType: !274, size: 32, offset: 32)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !269, line: 16, size: 32, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !274, file: !269, line: 18, baseType: !14, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !274, file: !269, line: 19, baseType: !278, size: 32)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 4)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 16, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 2)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !286, file: !287, line: 76, type: !355, isLocal: false, isDefinition: true)
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !288, retainedTypes: !294, globals: !295, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!288 = !{!28, !289, !12}
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !29, line: 254, baseType: !14, size: 32, elements: !290)
!290 = !{!291, !292, !293}
!291 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!292 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!293 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!294 = !{!6, !53, !54}
!295 = !{!284, !296, !302, !314, !316, !321, !344, !351, !353}
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !286, file: !287, line: 92, type: !298, isLocal: false, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 320, elements: !300)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!300 = !{!301}
!301 = !DISubrange(count: 10)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !286, file: !287, line: 1040, type: !304, isLocal: false, isDefinition: true)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !287, line: 56, size: 448, elements: !305)
!305 = !{!306, !307, !308, !312, !313}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !304, file: !287, line: 59, baseType: !28, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !287, line: 62, baseType: !6, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !304, file: !287, line: 66, baseType: !309, size: 256, offset: 64)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 8)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !304, file: !287, line: 69, baseType: !57, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !304, file: !287, line: 72, baseType: !57, size: 64, offset: 384)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !286, file: !287, line: 107, type: !304, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "slot0", scope: !286, file: !287, line: 831, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 256)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "quote", scope: !323, file: !287, line: 228, type: !342, isLocal: true, isDefinition: true)
!323 = distinct !DISubprogram(name: "gettext_quote", scope: !287, file: !287, line: 197, type: !324, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!57, !57, !28}
!326 = !{!327, !328, !329, !330, !331}
!327 = !DILocalVariable(name: "msgid", arg: 1, scope: !323, file: !287, line: 197, type: !57)
!328 = !DILocalVariable(name: "s", arg: 2, scope: !323, file: !287, line: 197, type: !28)
!329 = !DILocalVariable(name: "translation", scope: !323, file: !287, line: 199, type: !57)
!330 = !DILocalVariable(name: "w", scope: !323, file: !287, line: 229, type: !261)
!331 = !DILocalVariable(name: "mbs", scope: !323, file: !287, line: 230, type: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !267, line: 6, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !269, line: 21, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 13, size: 64, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !334, file: !269, line: 15, baseType: !6, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !334, file: !269, line: 20, baseType: !338, size: 32, offset: 32)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !269, line: 16, size: 32, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !338, file: !269, line: 18, baseType: !14, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !338, file: !269, line: 19, baseType: !278, size: 32)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !343)
!343 = !{!283, !280}
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "slotvec", scope: !286, file: !287, line: 834, type: !346, isLocal: true, isDefinition: true)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !287, line: 823, size: 128, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !347, file: !287, line: 825, baseType: !54, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !347, file: !287, line: 826, baseType: !8, size: 64, offset: 64)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "nslots", scope: !286, file: !287, line: 832, type: !6, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "slotvec0", scope: !286, file: !287, line: 833, type: !347, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 704, elements: !357)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!357 = !{!358}
!358 = !DISubrange(count: 11)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !361, file: !362, line: 26, type: !364, isLocal: false, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !363, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!363 = !{!359}
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 376, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 47)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "exit_failure", scope: !369, file: !370, line: 24, type: !372, isLocal: false, isDefinition: true)
!369 = distinct !DICompileUnit(language: DW_LANG_C99, file: !370, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !371, splitDebugInlining: false, nameTableKind: None)
!370 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!371 = !{!367}
!372 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "internal_state", scope: !375, file: !376, line: 97, type: !379, isLocal: true, isDefinition: true)
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !377, globals: !378, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!377 = !{!52, !54, !59}
!378 = !{!373}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !267, line: 6, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !269, line: 21, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 13, size: 64, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !381, file: !269, line: 15, baseType: !6, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !381, file: !269, line: 20, baseType: !385, size: 32, offset: 32)
!385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !269, line: 16, size: 32, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !385, file: !269, line: 18, baseType: !14, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !385, file: !269, line: 19, baseType: !278, size: 32)
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !391, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!391 = !{!42}
!392 = distinct !DICompileUnit(language: DW_LANG_C99, file: !393, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!393 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !396, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!396 = !{!52}
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !396, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !405, retainedTypes: !409, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/readtokens.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bd27ae043f20cb5dd96b528a940c0bf9")
!405 = !{!406}
!406 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !404, line: 50, baseType: !14, size: 32, elements: !407)
!407 = !{!408}
!408 = !DIEnumerator(name: "bits_per_word", value: 64)
!409 = !{!54, !52, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !413, retainedTypes: !396, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!413 = !{!414}
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !412, line: 40, baseType: !14, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!417 = distinct !DICompileUnit(language: DW_LANG_C99, file: !418, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !419, retainedTypes: !450, splitDebugInlining: false, nameTableKind: None)
!418 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!419 = !{!420, !432}
!420 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !421, file: !418, line: 188, baseType: !14, size: 32, elements: !430)
!421 = distinct !DISubprogram(name: "x2nrealloc", scope: !418, file: !418, line: 176, type: !422, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !425)
!422 = !DISubroutineType(types: !423)
!423 = !{!52, !52, !424, !54}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!425 = !{!426, !427, !428, !429}
!426 = !DILocalVariable(name: "p", arg: 1, scope: !421, file: !418, line: 176, type: !52)
!427 = !DILocalVariable(name: "pn", arg: 2, scope: !421, file: !418, line: 176, type: !424)
!428 = !DILocalVariable(name: "s", arg: 3, scope: !421, file: !418, line: 176, type: !54)
!429 = !DILocalVariable(name: "n", scope: !421, file: !418, line: 178, type: !54)
!430 = !{!431}
!431 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !433, file: !418, line: 228, baseType: !14, size: 32, elements: !430)
!433 = distinct !DISubprogram(name: "xpalloc", scope: !418, file: !418, line: 223, type: !434, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !440)
!434 = !DISubroutineType(types: !435)
!435 = !{!52, !52, !436, !437, !439, !437}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !438, line: 130, baseType: !439)
!438 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !55, line: 35, baseType: !115)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449}
!441 = !DILocalVariable(name: "pa", arg: 1, scope: !433, file: !418, line: 223, type: !52)
!442 = !DILocalVariable(name: "pn", arg: 2, scope: !433, file: !418, line: 223, type: !436)
!443 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !433, file: !418, line: 223, type: !437)
!444 = !DILocalVariable(name: "n_max", arg: 4, scope: !433, file: !418, line: 223, type: !439)
!445 = !DILocalVariable(name: "s", arg: 5, scope: !433, file: !418, line: 223, type: !437)
!446 = !DILocalVariable(name: "n0", scope: !433, file: !418, line: 230, type: !437)
!447 = !DILocalVariable(name: "n", scope: !433, file: !418, line: 237, type: !437)
!448 = !DILocalVariable(name: "nbytes", scope: !433, file: !418, line: 248, type: !437)
!449 = !DILocalVariable(name: "adjusted_nbytes", scope: !433, file: !418, line: 252, type: !437)
!450 = !{!8, !52, !74, !115, !56}
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!455 = distinct !DICompileUnit(language: DW_LANG_C99, file: !456, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !457, splitDebugInlining: false, nameTableKind: None)
!456 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!457 = !{!74, !56, !52}
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !463, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !396, splitDebugInlining: false, nameTableKind: None)
!463 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!464 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!465 = !{i32 7, !"Dwarf Version", i32 5}
!466 = !{i32 2, !"Debug Info Version", i32 3}
!467 = !{i32 1, !"wchar_size", i32 4}
!468 = !{i32 1, !"branch-target-enforcement", i32 0}
!469 = !{i32 1, !"sign-return-address", i32 0}
!470 = !{i32 1, !"sign-return-address-all", i32 0}
!471 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!472 = !{i32 7, !"PIC Level", i32 2}
!473 = !{i32 7, !"PIE Level", i32 2}
!474 = !{i32 7, !"uwtable", i32 1}
!475 = !{i32 7, !"frame-pointer", i32 1}
!476 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 75, type: !477, scopeLine: 76, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !6}
!479 = !{!480}
!480 = !DILocalVariable(name: "status", arg: 1, scope: !476, file: !3, line: 75, type: !6)
!481 = !DILocation(line: 0, scope: !476)
!482 = !DILocation(line: 77, column: 14, scope: !483)
!483 = distinct !DILexicalBlock(scope: !476, file: !3, line: 77, column: 7)
!484 = !DILocation(line: 77, column: 7, scope: !476)
!485 = !DILocation(line: 78, column: 5, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !3, line: 78, column: 5)
!487 = !{!488, !488, i64 0}
!488 = !{!"any pointer", !489, i64 0}
!489 = !{!"omnipotent char", !490, i64 0}
!490 = !{!"Simple C/C++ TBAA"}
!491 = !DILocation(line: 81, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !483, file: !3, line: 80, column: 5)
!493 = !DILocation(line: 729, column: 3, scope: !494, inlinedAt: !496)
!494 = distinct !DISubprogram(name: "emit_stdin_note", scope: !64, file: !64, line: 727, type: !240, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !495)
!495 = !{}
!496 = distinct !DILocation(line: 86, column: 7, scope: !492)
!497 = !DILocation(line: 88, column: 7, scope: !492)
!498 = !DILocation(line: 91, column: 7, scope: !492)
!499 = !DILocation(line: 92, column: 7, scope: !492)
!500 = !DILocalVariable(name: "program", arg: 1, scope: !501, file: !64, line: 836, type: !57)
!501 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !64, file: !64, line: 836, type: !502, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !57}
!504 = !{!500, !505, !514, !515, !517, !518}
!505 = !DILocalVariable(name: "infomap", scope: !501, file: !64, line: 838, type: !506)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 896, elements: !512)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !501, file: !64, line: 838, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !508, file: !64, line: 838, baseType: !57, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !64, line: 838, baseType: !57, size: 64, offset: 64)
!512 = !{!513}
!513 = !DISubrange(count: 7)
!514 = !DILocalVariable(name: "node", scope: !501, file: !64, line: 848, type: !57)
!515 = !DILocalVariable(name: "map_prog", scope: !501, file: !64, line: 849, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!517 = !DILocalVariable(name: "lc_messages", scope: !501, file: !64, line: 861, type: !57)
!518 = !DILocalVariable(name: "url_program", scope: !501, file: !64, line: 874, type: !57)
!519 = !DILocation(line: 0, scope: !501, inlinedAt: !520)
!520 = distinct !DILocation(line: 93, column: 7, scope: !492)
!521 = !DILocation(line: 838, column: 3, scope: !501, inlinedAt: !520)
!522 = !DILocation(line: 838, column: 67, scope: !501, inlinedAt: !520)
!523 = !DILocation(line: 849, column: 36, scope: !501, inlinedAt: !520)
!524 = !DILocation(line: 851, column: 3, scope: !501, inlinedAt: !520)
!525 = !DILocalVariable(name: "__s1", arg: 1, scope: !526, file: !527, line: 1359, type: !57)
!526 = distinct !DISubprogram(name: "streq", scope: !527, file: !527, line: 1359, type: !528, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !530)
!527 = !DIFile(filename: "./lib/string.h", directory: "/src")
!528 = !DISubroutineType(types: !529)
!529 = !{!74, !57, !57}
!530 = !{!525, !531}
!531 = !DILocalVariable(name: "__s2", arg: 2, scope: !526, file: !527, line: 1359, type: !57)
!532 = !DILocation(line: 0, scope: !526, inlinedAt: !533)
!533 = distinct !DILocation(line: 851, column: 33, scope: !501, inlinedAt: !520)
!534 = !DILocation(line: 1361, column: 11, scope: !526, inlinedAt: !533)
!535 = !DILocation(line: 1361, column: 10, scope: !526, inlinedAt: !533)
!536 = !DILocation(line: 852, column: 13, scope: !501, inlinedAt: !520)
!537 = !DILocation(line: 851, column: 20, scope: !501, inlinedAt: !520)
!538 = !{!539, !488, i64 0}
!539 = !{!"infomap", !488, i64 0, !488, i64 8}
!540 = !DILocation(line: 851, column: 10, scope: !501, inlinedAt: !520)
!541 = !DILocation(line: 851, column: 28, scope: !501, inlinedAt: !520)
!542 = distinct !{!542, !524, !536, !543}
!543 = !{!"llvm.loop.mustprogress"}
!544 = !DILocation(line: 854, column: 17, scope: !545, inlinedAt: !520)
!545 = distinct !DILexicalBlock(scope: !501, file: !64, line: 854, column: 7)
!546 = !{!539, !488, i64 8}
!547 = !DILocation(line: 854, column: 7, scope: !545, inlinedAt: !520)
!548 = !DILocation(line: 854, column: 7, scope: !501, inlinedAt: !520)
!549 = !DILocation(line: 857, column: 3, scope: !501, inlinedAt: !520)
!550 = !DILocation(line: 861, column: 29, scope: !501, inlinedAt: !520)
!551 = !DILocation(line: 862, column: 7, scope: !552, inlinedAt: !520)
!552 = distinct !DILexicalBlock(scope: !501, file: !64, line: 862, column: 7)
!553 = !DILocation(line: 862, column: 19, scope: !552, inlinedAt: !520)
!554 = !DILocation(line: 862, column: 22, scope: !552, inlinedAt: !520)
!555 = !DILocation(line: 862, column: 7, scope: !501, inlinedAt: !520)
!556 = !DILocation(line: 868, column: 7, scope: !557, inlinedAt: !520)
!557 = distinct !DILexicalBlock(scope: !552, file: !64, line: 863, column: 5)
!558 = !DILocation(line: 870, column: 5, scope: !557, inlinedAt: !520)
!559 = !DILocation(line: 0, scope: !526, inlinedAt: !560)
!560 = distinct !DILocation(line: 874, column: 29, scope: !501, inlinedAt: !520)
!561 = !DILocation(line: 875, column: 3, scope: !501, inlinedAt: !520)
!562 = !DILocation(line: 877, column: 3, scope: !501, inlinedAt: !520)
!563 = !DILocation(line: 879, column: 1, scope: !501, inlinedAt: !520)
!564 = !DILocation(line: 96, column: 3, scope: !476)
!565 = !DISubprogram(name: "dcgettext", scope: !566, file: !566, line: 51, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!566 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!567 = !DISubroutineType(types: !568)
!568 = !{!8, !57, !57, !6}
!569 = !DISubprogram(name: "fputs_unlocked", scope: !213, file: !213, line: 691, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!570 = !DISubroutineType(types: !571)
!571 = !{!6, !572, !573}
!572 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!573 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!574 = !DILocation(line: 0, scope: !63)
!575 = !DILocation(line: 581, column: 7, scope: !72)
!576 = !{!577, !577, i64 0}
!577 = !{!"int", !489, i64 0}
!578 = !DILocation(line: 581, column: 19, scope: !72)
!579 = !DILocation(line: 581, column: 7, scope: !63)
!580 = !DILocation(line: 585, column: 26, scope: !71)
!581 = !DILocation(line: 0, scope: !71)
!582 = !DILocation(line: 586, column: 23, scope: !71)
!583 = !DILocation(line: 586, column: 28, scope: !71)
!584 = !DILocation(line: 586, column: 32, scope: !71)
!585 = !{!489, !489, i64 0}
!586 = !DILocation(line: 586, column: 38, scope: !71)
!587 = !DILocation(line: 0, scope: !526, inlinedAt: !588)
!588 = distinct !DILocation(line: 586, column: 41, scope: !71)
!589 = !DILocation(line: 1361, column: 11, scope: !526, inlinedAt: !588)
!590 = !DILocation(line: 1361, column: 10, scope: !526, inlinedAt: !588)
!591 = !DILocation(line: 586, column: 19, scope: !71)
!592 = !DILocation(line: 587, column: 5, scope: !71)
!593 = !DILocation(line: 588, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !63, file: !64, line: 588, column: 7)
!595 = !DILocation(line: 588, column: 7, scope: !63)
!596 = !DILocation(line: 590, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !64, line: 589, column: 5)
!598 = !DILocation(line: 591, column: 7, scope: !597)
!599 = !DILocation(line: 595, column: 37, scope: !63)
!600 = !DILocation(line: 595, column: 35, scope: !63)
!601 = !DILocation(line: 596, column: 29, scope: !63)
!602 = !DILocation(line: 597, column: 8, scope: !80)
!603 = !DILocation(line: 597, column: 7, scope: !63)
!604 = !DILocation(line: 604, column: 24, scope: !79)
!605 = !DILocation(line: 604, column: 12, scope: !80)
!606 = !DILocation(line: 0, scope: !78)
!607 = !DILocation(line: 610, column: 16, scope: !78)
!608 = !DILocation(line: 610, column: 7, scope: !78)
!609 = !DILocation(line: 611, column: 21, scope: !78)
!610 = !{!611, !611, i64 0}
!611 = !{!"short", !489, i64 0}
!612 = !DILocation(line: 611, column: 19, scope: !78)
!613 = !DILocation(line: 611, column: 16, scope: !78)
!614 = !DILocation(line: 610, column: 30, scope: !78)
!615 = distinct !{!615, !608, !609, !543}
!616 = !DILocation(line: 612, column: 18, scope: !617)
!617 = distinct !DILexicalBlock(scope: !78, file: !64, line: 612, column: 11)
!618 = !DILocation(line: 612, column: 11, scope: !78)
!619 = !DILocation(line: 620, column: 23, scope: !63)
!620 = !DILocation(line: 625, column: 39, scope: !63)
!621 = !DILocation(line: 626, column: 3, scope: !63)
!622 = !DILocation(line: 626, column: 10, scope: !63)
!623 = !DILocation(line: 626, column: 21, scope: !63)
!624 = !DILocation(line: 628, column: 44, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !64, line: 628, column: 11)
!626 = distinct !DILexicalBlock(scope: !63, file: !64, line: 627, column: 5)
!627 = !DILocation(line: 628, column: 32, scope: !625)
!628 = !DILocation(line: 628, column: 49, scope: !625)
!629 = !DILocation(line: 628, column: 11, scope: !626)
!630 = !DILocation(line: 630, column: 11, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !64, line: 630, column: 11)
!632 = !DILocation(line: 630, column: 11, scope: !626)
!633 = !DILocation(line: 632, column: 26, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !64, line: 632, column: 15)
!635 = distinct !DILexicalBlock(scope: !631, file: !64, line: 631, column: 9)
!636 = !DILocation(line: 632, column: 34, scope: !634)
!637 = !DILocation(line: 632, column: 37, scope: !634)
!638 = !DILocation(line: 632, column: 15, scope: !635)
!639 = !DILocation(line: 636, column: 29, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !64, line: 636, column: 15)
!641 = !DILocation(line: 640, column: 16, scope: !626)
!642 = distinct !{!642, !621, !643, !543}
!643 = !DILocation(line: 641, column: 5, scope: !63)
!644 = !DILocation(line: 644, column: 3, scope: !63)
!645 = !DILocation(line: 0, scope: !526, inlinedAt: !646)
!646 = distinct !DILocation(line: 648, column: 31, scope: !63)
!647 = !DILocation(line: 0, scope: !526, inlinedAt: !648)
!648 = distinct !DILocation(line: 649, column: 31, scope: !63)
!649 = !DILocation(line: 0, scope: !526, inlinedAt: !650)
!650 = distinct !DILocation(line: 650, column: 31, scope: !63)
!651 = !DILocation(line: 0, scope: !526, inlinedAt: !652)
!652 = distinct !DILocation(line: 651, column: 31, scope: !63)
!653 = !DILocation(line: 0, scope: !526, inlinedAt: !654)
!654 = distinct !DILocation(line: 652, column: 31, scope: !63)
!655 = !DILocation(line: 0, scope: !526, inlinedAt: !656)
!656 = distinct !DILocation(line: 653, column: 31, scope: !63)
!657 = !DILocation(line: 0, scope: !526, inlinedAt: !658)
!658 = distinct !DILocation(line: 654, column: 31, scope: !63)
!659 = !DILocation(line: 0, scope: !526, inlinedAt: !660)
!660 = distinct !DILocation(line: 655, column: 31, scope: !63)
!661 = !DILocation(line: 0, scope: !526, inlinedAt: !662)
!662 = distinct !DILocation(line: 656, column: 31, scope: !63)
!663 = !DILocation(line: 0, scope: !526, inlinedAt: !664)
!664 = distinct !DILocation(line: 657, column: 31, scope: !63)
!665 = !DILocation(line: 663, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !63, file: !64, line: 663, column: 7)
!667 = !DILocation(line: 664, column: 7, scope: !666)
!668 = !DILocation(line: 664, column: 10, scope: !666)
!669 = !DILocation(line: 663, column: 7, scope: !63)
!670 = !DILocation(line: 669, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !64, line: 665, column: 5)
!672 = !DILocation(line: 671, column: 5, scope: !671)
!673 = !DILocation(line: 676, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !666, file: !64, line: 673, column: 5)
!675 = !DILocation(line: 679, column: 3, scope: !63)
!676 = !DILocation(line: 683, column: 3, scope: !63)
!677 = !DILocation(line: 686, column: 3, scope: !63)
!678 = !DILocation(line: 688, column: 3, scope: !63)
!679 = !DILocation(line: 691, column: 3, scope: !63)
!680 = !DILocation(line: 695, column: 3, scope: !63)
!681 = !DILocation(line: 696, column: 1, scope: !63)
!682 = !DISubprogram(name: "setlocale", scope: !683, file: !683, line: 122, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!683 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!684 = !DISubroutineType(types: !685)
!685 = !{!8, !6, !57}
!686 = !DISubprogram(name: "getenv", scope: !687, file: !687, line: 641, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!687 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!688 = !DISubroutineType(types: !689)
!689 = !{!8, !57}
!690 = !DISubprogram(name: "fwrite_unlocked", scope: !213, file: !213, line: 704, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!691 = !DISubroutineType(types: !692)
!692 = !{!54, !693, !54, !54, !573}
!693 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!696 = !DILocation(line: 0, scope: !2)
!697 = !DILocation(line: 534, column: 21, scope: !2)
!698 = !DILocation(line: 534, column: 3, scope: !2)
!699 = !DILocation(line: 535, column: 3, scope: !2)
!700 = !DILocation(line: 536, column: 3, scope: !2)
!701 = !DILocation(line: 537, column: 3, scope: !2)
!702 = !DILocation(line: 539, column: 3, scope: !2)
!703 = !DILocation(line: 541, column: 3, scope: !2)
!704 = !DILocation(line: 549, column: 15, scope: !176)
!705 = !DILocation(line: 0, scope: !176)
!706 = !DILocation(line: 551, column: 11, scope: !176)
!707 = !DILocation(line: 559, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !176, file: !3, line: 555, column: 9)
!709 = !DILocation(line: 561, column: 9, scope: !708)
!710 = !DILocation(line: 564, column: 11, scope: !708)
!711 = !DILocation(line: 568, column: 18, scope: !712)
!712 = distinct !DILexicalBlock(scope: !2, file: !3, line: 568, column: 7)
!713 = !DILocation(line: 568, column: 16, scope: !712)
!714 = !DILocation(line: 568, column: 9, scope: !712)
!715 = !DILocation(line: 568, column: 7, scope: !2)
!716 = !DILocation(line: 570, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !3, line: 569, column: 5)
!718 = !DILocation(line: 571, column: 7, scope: !717)
!719 = !DILocation(line: 574, column: 17, scope: !2)
!720 = !DILocation(line: 574, column: 10, scope: !2)
!721 = !DILocation(line: 574, column: 33, scope: !2)
!722 = !DILocation(line: 574, column: 3, scope: !2)
!723 = !DISubprogram(name: "bindtextdomain", scope: !566, file: !566, line: 86, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!724 = !DISubroutineType(types: !725)
!725 = !{!8, !57, !57}
!726 = !DISubprogram(name: "textdomain", scope: !566, file: !566, line: 82, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!727 = !DISubprogram(name: "atexit", scope: !687, file: !687, line: 602, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!728 = !DISubroutineType(types: !729)
!729 = !{!6, !239}
!730 = !DISubprogram(name: "getopt_long", scope: !180, file: !180, line: 66, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!731 = !DISubroutineType(types: !732)
!732 = !{!6, !6, !733, !57, !735, !185}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!736 = distinct !DISubprogram(name: "tsort", scope: !3, file: !3, line: 429, type: !502, scopeLine: 430, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !737)
!737 = !{!738, !739, !740, !741, !742, !749, !750, !751, !753}
!738 = !DILocalVariable(name: "file", arg: 1, scope: !736, file: !3, line: 429, type: !57)
!739 = !DILocalVariable(name: "ok", scope: !736, file: !3, line: 431, type: !74)
!740 = !DILocalVariable(name: "j", scope: !736, file: !3, line: 432, type: !152)
!741 = !DILocalVariable(name: "k", scope: !736, file: !3, line: 433, type: !152)
!742 = !DILocalVariable(name: "tokenbuffer", scope: !736, file: !3, line: 434, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !744, line: 38, baseType: !745)
!744 = !DIFile(filename: "./lib/readtokens.h", directory: "/src", checksumkind: CSK_MD5, checksum: "75cc48641d199743577b153a0d1c82de")
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !744, line: 33, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !745, file: !744, line: 35, baseType: !54, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !745, file: !744, line: 36, baseType: !8, size: 64, offset: 64)
!749 = !DILocalVariable(name: "is_stdin", scope: !736, file: !3, line: 435, type: !74)
!750 = !DILocalVariable(name: "root", scope: !736, file: !3, line: 438, type: !152)
!751 = !DILocalVariable(name: "len", scope: !752, file: !3, line: 450, type: !54)
!752 = distinct !DILexicalBlock(scope: !736, file: !3, line: 448, column: 5)
!753 = !DILocalVariable(name: "p", scope: !754, file: !3, line: 485, type: !163)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 484, column: 9)
!755 = distinct !DILexicalBlock(scope: !736, file: !3, line: 479, column: 5)
!756 = !DILocation(line: 0, scope: !736)
!757 = !DILocation(line: 434, column: 3, scope: !736)
!758 = !DILocation(line: 434, column: 16, scope: !736)
!759 = !DILocation(line: 0, scope: !526, inlinedAt: !760)
!760 = distinct !DILocation(line: 435, column: 19, scope: !736)
!761 = !DILocation(line: 1361, column: 11, scope: !526, inlinedAt: !760)
!762 = !DILocation(line: 1361, column: 10, scope: !526, inlinedAt: !760)
!763 = !DILocalVariable(name: "str", arg: 1, scope: !764, file: !3, line: 101, type: !57)
!764 = distinct !DISubprogram(name: "new_item", scope: !3, file: !3, line: 101, type: !765, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!152, !57}
!767 = !{!763, !768}
!768 = !DILocalVariable(name: "k", scope: !764, file: !3, line: 104, type: !152)
!769 = !DILocation(line: 0, scope: !764, inlinedAt: !770)
!770 = distinct !DILocation(line: 438, column: 23, scope: !736)
!771 = !DILocation(line: 104, column: 20, scope: !764, inlinedAt: !770)
!772 = !DILocation(line: 440, column: 17, scope: !773)
!773 = distinct !DILexicalBlock(scope: !736, file: !3, line: 440, column: 7)
!774 = !DILocation(line: 440, column: 42, scope: !773)
!775 = !DILocation(line: 440, column: 22, scope: !773)
!776 = !DILocation(line: 440, column: 7, scope: !736)
!777 = !DILocation(line: 441, column: 5, scope: !773)
!778 = !DILocation(line: 443, column: 12, scope: !736)
!779 = !DILocation(line: 443, column: 3, scope: !736)
!780 = !DILocation(line: 445, column: 3, scope: !736)
!781 = !DILocation(line: 447, column: 3, scope: !736)
!782 = !DILocation(line: 433, column: 16, scope: !736)
!783 = !DILocation(line: 450, column: 31, scope: !752)
!784 = !DILocation(line: 450, column: 20, scope: !752)
!785 = !DILocation(line: 0, scope: !752)
!786 = !DILocation(line: 451, column: 11, scope: !752)
!787 = !DILocation(line: 453, column: 15, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 453, column: 15)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 452, column: 9)
!790 = distinct !DILexicalBlock(scope: !752, file: !3, line: 451, column: 11)
!791 = !DILocalVariable(name: "__stream", arg: 1, scope: !792, file: !793, line: 135, type: !87)
!792 = distinct !DISubprogram(name: "ferror_unlocked", scope: !793, file: !793, line: 135, type: !794, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !796)
!793 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!794 = !DISubroutineType(types: !795)
!795 = !{!6, !87}
!796 = !{!791}
!797 = !DILocation(line: 0, scope: !792, inlinedAt: !798)
!798 = distinct !DILocation(line: 453, column: 15, scope: !788)
!799 = !DILocation(line: 137, column: 10, scope: !792, inlinedAt: !798)
!800 = !{!801, !577, i64 0}
!801 = !{!"_IO_FILE", !577, i64 0, !488, i64 8, !488, i64 16, !488, i64 24, !488, i64 32, !488, i64 40, !488, i64 48, !488, i64 56, !488, i64 64, !488, i64 72, !488, i64 80, !488, i64 88, !488, i64 96, !488, i64 104, !577, i64 112, !577, i64 116, !802, i64 120, !611, i64 128, !489, i64 130, !489, i64 131, !488, i64 136, !802, i64 144, !488, i64 152, !488, i64 160, !488, i64 168, !488, i64 176, !802, i64 184, !577, i64 192, !489, i64 196}
!802 = !{!"long", !489, i64 0}
!803 = !DILocation(line: 453, column: 15, scope: !789)
!804 = !DILocation(line: 454, column: 13, scope: !788)
!805 = !DILocation(line: 458, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 458, column: 7)
!807 = distinct !DILexicalBlock(scope: !752, file: !3, line: 458, column: 7)
!808 = !DILocation(line: 460, column: 42, scope: !752)
!809 = !{!810, !488, i64 8}
!810 = !{!"tokenbuffer", !802, i64 0, !488, i64 8}
!811 = !DILocalVariable(name: "root", arg: 1, scope: !812, file: !3, line: 119, type: !152)
!812 = distinct !DISubprogram(name: "search_item", scope: !3, file: !3, line: 119, type: !813, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!152, !152, !57}
!815 = !{!811, !816, !817, !818, !819, !820, !821, !822, !823}
!816 = !DILocalVariable(name: "str", arg: 2, scope: !812, file: !3, line: 119, type: !57)
!817 = !DILocalVariable(name: "p", scope: !812, file: !3, line: 121, type: !152)
!818 = !DILocalVariable(name: "q", scope: !812, file: !3, line: 121, type: !152)
!819 = !DILocalVariable(name: "r", scope: !812, file: !3, line: 121, type: !152)
!820 = !DILocalVariable(name: "s", scope: !812, file: !3, line: 121, type: !152)
!821 = !DILocalVariable(name: "t", scope: !812, file: !3, line: 121, type: !152)
!822 = !DILocalVariable(name: "a", scope: !812, file: !3, line: 122, type: !6)
!823 = !DILocalVariable(name: "cmp", scope: !824, file: !3, line: 173, type: !6)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 172, column: 13)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 147, column: 9)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 146, column: 11)
!827 = distinct !DILexicalBlock(scope: !812, file: !3, line: 134, column: 5)
!828 = !DILocation(line: 0, scope: !812, inlinedAt: !829)
!829 = distinct !DILocation(line: 460, column: 11, scope: !752)
!830 = !DILocation(line: 126, column: 13, scope: !831, inlinedAt: !829)
!831 = distinct !DILexicalBlock(scope: !812, file: !3, line: 126, column: 7)
!832 = !{!833, !488, i64 16}
!833 = !{!"item", !488, i64 0, !488, i64 8, !488, i64 16, !489, i64 24, !834, i64 25, !802, i64 32, !488, i64 40, !488, i64 48}
!834 = !{!"_Bool", !489, i64 0}
!835 = !DILocation(line: 126, column: 19, scope: !831, inlinedAt: !829)
!836 = !DILocation(line: 126, column: 7, scope: !812, inlinedAt: !829)
!837 = !DILocation(line: 136, column: 27, scope: !827, inlinedAt: !829)
!838 = !{!833, !488, i64 0}
!839 = !DILocation(line: 136, column: 11, scope: !827, inlinedAt: !829)
!840 = !DILocation(line: 137, column: 13, scope: !841, inlinedAt: !829)
!841 = distinct !DILexicalBlock(scope: !827, file: !3, line: 137, column: 11)
!842 = !DILocation(line: 137, column: 11, scope: !827, inlinedAt: !829)
!843 = !DILocation(line: 0, scope: !764, inlinedAt: !844)
!844 = distinct !DILocation(line: 127, column: 27, scope: !831, inlinedAt: !829)
!845 = !DILocation(line: 104, column: 20, scope: !764, inlinedAt: !844)
!846 = !DILocation(line: 105, column: 7, scope: !847, inlinedAt: !844)
!847 = distinct !DILexicalBlock(scope: !764, file: !3, line: 105, column: 7)
!848 = !DILocation(line: 105, column: 7, scope: !764, inlinedAt: !844)
!849 = !DILocation(line: 106, column: 14, scope: !847, inlinedAt: !844)
!850 = !DILocation(line: 106, column: 8, scope: !847, inlinedAt: !844)
!851 = !DILocation(line: 106, column: 12, scope: !847, inlinedAt: !844)
!852 = !DILocation(line: 106, column: 5, scope: !847, inlinedAt: !844)
!853 = !DILocation(line: 127, column: 25, scope: !831, inlinedAt: !829)
!854 = !DILocation(line: 127, column: 5, scope: !831, inlinedAt: !829)
!855 = !DILocation(line: 141, column: 13, scope: !856, inlinedAt: !829)
!856 = distinct !DILexicalBlock(scope: !827, file: !3, line: 141, column: 11)
!857 = !DILocation(line: 141, column: 11, scope: !827, inlinedAt: !829)
!858 = !DILocation(line: 0, scope: !856, inlinedAt: !829)
!859 = !DILocation(line: 146, column: 13, scope: !826, inlinedAt: !829)
!860 = !DILocation(line: 146, column: 11, scope: !827, inlinedAt: !829)
!861 = !DILocation(line: 0, scope: !764, inlinedAt: !862)
!862 = distinct !DILocation(line: 149, column: 15, scope: !825, inlinedAt: !829)
!863 = !DILocation(line: 104, column: 20, scope: !764, inlinedAt: !862)
!864 = !DILocation(line: 105, column: 7, scope: !847, inlinedAt: !862)
!865 = !DILocation(line: 105, column: 7, scope: !764, inlinedAt: !862)
!866 = !DILocation(line: 106, column: 14, scope: !847, inlinedAt: !862)
!867 = !DILocation(line: 106, column: 8, scope: !847, inlinedAt: !862)
!868 = !DILocation(line: 106, column: 12, scope: !847, inlinedAt: !862)
!869 = !DILocation(line: 106, column: 5, scope: !847, inlinedAt: !862)
!870 = !DILocation(line: 0, scope: !871, inlinedAt: !829)
!871 = distinct !DILexicalBlock(scope: !825, file: !3, line: 152, column: 15)
!872 = !DILocation(line: 158, column: 31, scope: !825, inlinedAt: !829)
!873 = !DILocation(line: 158, column: 15, scope: !825, inlinedAt: !829)
!874 = !DILocation(line: 159, column: 17, scope: !875, inlinedAt: !829)
!875 = distinct !DILexicalBlock(scope: !825, file: !3, line: 159, column: 15)
!876 = !DILocation(line: 159, column: 15, scope: !825, inlinedAt: !829)
!877 = !DILocation(line: 161, column: 26, scope: !878, inlinedAt: !829)
!878 = distinct !DILexicalBlock(scope: !875, file: !3, line: 160, column: 13)
!879 = !DILocation(line: 163, column: 13, scope: !878, inlinedAt: !829)
!880 = !DILocation(line: 166, column: 15, scope: !881, inlinedAt: !829)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 166, column: 15)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 166, column: 15)
!883 = distinct !DILexicalBlock(scope: !875, file: !3, line: 165, column: 13)
!884 = !DILocation(line: 166, column: 15, scope: !882, inlinedAt: !829)
!885 = !DILocation(line: 167, column: 26, scope: !883, inlinedAt: !829)
!886 = !DILocation(line: 0, scope: !875, inlinedAt: !829)
!887 = !DILocation(line: 171, column: 20, scope: !825, inlinedAt: !829)
!888 = !DILocation(line: 171, column: 11, scope: !825, inlinedAt: !829)
!889 = !DILocation(line: 173, column: 41, scope: !824, inlinedAt: !829)
!890 = !DILocation(line: 173, column: 25, scope: !824, inlinedAt: !829)
!891 = !DILocation(line: 0, scope: !824, inlinedAt: !829)
!892 = !DILocation(line: 174, column: 23, scope: !893, inlinedAt: !829)
!893 = distinct !DILexicalBlock(scope: !824, file: !3, line: 174, column: 19)
!894 = !DILocation(line: 174, column: 19, scope: !824, inlinedAt: !829)
!895 = !DILocation(line: 176, column: 22, scope: !896, inlinedAt: !829)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 175, column: 17)
!897 = !DILocation(line: 176, column: 30, scope: !896, inlinedAt: !829)
!898 = !{!833, !489, i64 24}
!899 = !DILocation(line: 177, column: 26, scope: !896, inlinedAt: !829)
!900 = !DILocation(line: 178, column: 17, scope: !896, inlinedAt: !829)
!901 = !DILocation(line: 181, column: 19, scope: !902, inlinedAt: !829)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 181, column: 19)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 181, column: 19)
!904 = distinct !DILexicalBlock(scope: !893, file: !3, line: 180, column: 17)
!905 = !DILocation(line: 181, column: 19, scope: !903, inlinedAt: !829)
!906 = !DILocation(line: 182, column: 22, scope: !904, inlinedAt: !829)
!907 = !DILocation(line: 182, column: 30, scope: !904, inlinedAt: !829)
!908 = !DILocation(line: 183, column: 26, scope: !904, inlinedAt: !829)
!909 = !DILocation(line: 0, scope: !893, inlinedAt: !829)
!910 = distinct !{!910, !888, !911, !543}
!911 = !DILocation(line: 185, column: 13, scope: !825, inlinedAt: !829)
!912 = !DILocation(line: 188, column: 18, scope: !913, inlinedAt: !829)
!913 = distinct !DILexicalBlock(scope: !825, file: !3, line: 188, column: 15)
!914 = !DILocation(line: 188, column: 26, scope: !913, inlinedAt: !829)
!915 = !DILocation(line: 188, column: 31, scope: !913, inlinedAt: !829)
!916 = !DILocation(line: 188, column: 15, scope: !913, inlinedAt: !829)
!917 = !DILocation(line: 188, column: 48, scope: !913, inlinedAt: !829)
!918 = !DILocation(line: 188, column: 45, scope: !913, inlinedAt: !829)
!919 = !DILocation(line: 188, column: 15, scope: !825, inlinedAt: !829)
!920 = !DILocation(line: 190, column: 26, scope: !921, inlinedAt: !829)
!921 = distinct !DILexicalBlock(scope: !913, file: !3, line: 189, column: 13)
!922 = !DILocation(line: 191, column: 15, scope: !921, inlinedAt: !829)
!923 = !DILocation(line: 194, column: 18, scope: !924, inlinedAt: !829)
!924 = distinct !DILexicalBlock(scope: !825, file: !3, line: 194, column: 15)
!925 = !DILocation(line: 194, column: 15, scope: !924, inlinedAt: !829)
!926 = !DILocation(line: 194, column: 26, scope: !924, inlinedAt: !829)
!927 = !DILocation(line: 194, column: 15, scope: !825, inlinedAt: !829)
!928 = !DILocation(line: 198, column: 19, scope: !929, inlinedAt: !829)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 195, column: 13)
!930 = !DILocation(line: 200, column: 32, scope: !931, inlinedAt: !829)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 199, column: 17)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 198, column: 19)
!933 = !DILocation(line: 200, column: 22, scope: !931, inlinedAt: !829)
!934 = !DILocation(line: 200, column: 27, scope: !931, inlinedAt: !829)
!935 = !{!833, !488, i64 8}
!936 = !DILocation(line: 202, column: 17, scope: !931, inlinedAt: !829)
!937 = !DILocation(line: 205, column: 33, scope: !938, inlinedAt: !829)
!938 = distinct !DILexicalBlock(scope: !932, file: !3, line: 204, column: 17)
!939 = !DILocation(line: 205, column: 22, scope: !938, inlinedAt: !829)
!940 = !DILocation(line: 205, column: 28, scope: !938, inlinedAt: !829)
!941 = !DILocation(line: 0, scope: !932, inlinedAt: !829)
!942 = !DILocation(line: 208, column: 39, scope: !929, inlinedAt: !829)
!943 = !DILocation(line: 209, column: 13, scope: !929, inlinedAt: !829)
!944 = !DILocation(line: 213, column: 19, scope: !945, inlinedAt: !829)
!945 = distinct !DILexicalBlock(scope: !924, file: !3, line: 211, column: 13)
!946 = !DILocation(line: 215, column: 26, scope: !947, inlinedAt: !829)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 214, column: 17)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 213, column: 19)
!949 = !DILocation(line: 216, column: 33, scope: !947, inlinedAt: !829)
!950 = !DILocation(line: 216, column: 28, scope: !947, inlinedAt: !829)
!951 = !DILocation(line: 217, column: 27, scope: !947, inlinedAt: !829)
!952 = !DILocation(line: 218, column: 32, scope: !947, inlinedAt: !829)
!953 = !DILocation(line: 218, column: 22, scope: !947, inlinedAt: !829)
!954 = !DILocation(line: 218, column: 27, scope: !947, inlinedAt: !829)
!955 = !DILocation(line: 220, column: 17, scope: !947, inlinedAt: !829)
!956 = !DILocation(line: 223, column: 26, scope: !957, inlinedAt: !829)
!957 = distinct !DILexicalBlock(scope: !948, file: !3, line: 222, column: 17)
!958 = !DILocation(line: 224, column: 32, scope: !957, inlinedAt: !829)
!959 = !DILocation(line: 224, column: 27, scope: !957, inlinedAt: !829)
!960 = !DILocation(line: 225, column: 28, scope: !957, inlinedAt: !829)
!961 = !DILocation(line: 226, column: 33, scope: !957, inlinedAt: !829)
!962 = !DILocation(line: 226, column: 22, scope: !957, inlinedAt: !829)
!963 = !DILocation(line: 226, column: 28, scope: !957, inlinedAt: !829)
!964 = !DILocation(line: 0, scope: !948, inlinedAt: !829)
!965 = !DILocation(line: 230, column: 26, scope: !945, inlinedAt: !829)
!966 = !DILocation(line: 231, column: 26, scope: !945, inlinedAt: !829)
!967 = !DILocation(line: 232, column: 22, scope: !968, inlinedAt: !829)
!968 = distinct !DILexicalBlock(scope: !945, file: !3, line: 232, column: 19)
!969 = !DILocation(line: 232, column: 19, scope: !968, inlinedAt: !829)
!970 = !DILocation(line: 232, column: 30, scope: !968, inlinedAt: !829)
!971 = !DILocation(line: 232, column: 19, scope: !945, inlinedAt: !829)
!972 = !DILocation(line: 234, column: 35, scope: !973, inlinedAt: !829)
!973 = distinct !DILexicalBlock(scope: !968, file: !3, line: 234, column: 24)
!974 = !DILocation(line: 234, column: 24, scope: !968, inlinedAt: !829)
!975 = !DILocation(line: 0, scope: !968, inlinedAt: !829)
!976 = !DILocation(line: 236, column: 26, scope: !945, inlinedAt: !829)
!977 = !DILocation(line: 0, scope: !924, inlinedAt: !829)
!978 = !DILocation(line: 240, column: 23, scope: !979, inlinedAt: !829)
!979 = distinct !DILexicalBlock(scope: !825, file: !3, line: 240, column: 15)
!980 = !DILocation(line: 240, column: 17, scope: !979, inlinedAt: !829)
!981 = !DILocation(line: 240, column: 15, scope: !825, inlinedAt: !829)
!982 = !DILocation(line: 241, column: 22, scope: !979, inlinedAt: !829)
!983 = !DILocation(line: 241, column: 13, scope: !979, inlinedAt: !829)
!984 = !DILocation(line: 243, column: 16, scope: !979, inlinedAt: !829)
!985 = !DILocation(line: 243, column: 21, scope: !979, inlinedAt: !829)
!986 = !DILocation(line: 249, column: 14, scope: !987, inlinedAt: !829)
!987 = distinct !DILexicalBlock(scope: !827, file: !3, line: 249, column: 11)
!988 = !DILocation(line: 249, column: 11, scope: !987, inlinedAt: !829)
!989 = !DILocation(line: 249, column: 11, scope: !827, inlinedAt: !829)
!990 = distinct !{!990, !991, !992}
!991 = !DILocation(line: 133, column: 3, scope: !812, inlinedAt: !829)
!992 = !DILocation(line: 256, column: 5, scope: !812, inlinedAt: !829)
!993 = !DILocation(line: 461, column: 11, scope: !994)
!994 = distinct !DILexicalBlock(scope: !752, file: !3, line: 461, column: 11)
!995 = !DILocation(line: 461, column: 11, scope: !752)
!996 = !DILocalVariable(name: "j", arg: 1, scope: !997, file: !3, line: 264, type: !152)
!997 = distinct !DISubprogram(name: "record_relation", scope: !3, file: !3, line: 264, type: !998, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !152, !152}
!1000 = !{!996, !1001, !1002}
!1001 = !DILocalVariable(name: "k", arg: 2, scope: !997, file: !3, line: 264, type: !152)
!1002 = !DILocalVariable(name: "p", scope: !997, file: !3, line: 266, type: !163)
!1003 = !DILocation(line: 0, scope: !997, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 464, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !994, file: !3, line: 462, column: 9)
!1006 = !DILocation(line: 268, column: 18, scope: !1007, inlinedAt: !1004)
!1007 = distinct !DILexicalBlock(scope: !997, file: !3, line: 268, column: 7)
!1008 = !DILocation(line: 268, column: 26, scope: !1007, inlinedAt: !1004)
!1009 = !DILocation(line: 0, scope: !526, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 268, column: 8, scope: !1007, inlinedAt: !1004)
!1011 = !DILocation(line: 1361, column: 11, scope: !526, inlinedAt: !1010)
!1012 = !DILocation(line: 1361, column: 10, scope: !526, inlinedAt: !1010)
!1013 = !DILocation(line: 268, column: 7, scope: !997, inlinedAt: !1004)
!1014 = !DILocation(line: 270, column: 10, scope: !1015, inlinedAt: !1004)
!1015 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 269, column: 5)
!1016 = !DILocation(line: 270, column: 15, scope: !1015, inlinedAt: !1004)
!1017 = !{!833, !802, i64 32}
!1018 = !DILocation(line: 271, column: 11, scope: !1015, inlinedAt: !1004)
!1019 = !DILocation(line: 272, column: 10, scope: !1015, inlinedAt: !1004)
!1020 = !DILocation(line: 272, column: 14, scope: !1015, inlinedAt: !1004)
!1021 = !{!1022, !488, i64 0}
!1022 = !{!"successor", !488, i64 0, !488, i64 8}
!1023 = !DILocation(line: 273, column: 20, scope: !1015, inlinedAt: !1004)
!1024 = !{!833, !488, i64 48}
!1025 = !DILocation(line: 273, column: 10, scope: !1015, inlinedAt: !1004)
!1026 = !DILocation(line: 273, column: 15, scope: !1015, inlinedAt: !1004)
!1027 = !{!1022, !488, i64 8}
!1028 = !DILocation(line: 274, column: 14, scope: !1015, inlinedAt: !1004)
!1029 = !DILocation(line: 275, column: 5, scope: !1015, inlinedAt: !1004)
!1030 = !DILocation(line: 471, column: 9, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !736, file: !3, line: 471, column: 7)
!1032 = !DILocation(line: 471, column: 7, scope: !736)
!1033 = !DILocation(line: 472, column: 5, scope: !1031)
!1034 = !DILocalVariable(name: "root", arg: 1, scope: !1035, file: !3, line: 420, type: !152)
!1035 = distinct !DISubprogram(name: "walk_tree", scope: !3, file: !3, line: 420, type: !1036, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1041)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !152, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!74, !152}
!1041 = !{!1034, !1042}
!1042 = !DILocalVariable(name: "action", arg: 2, scope: !1035, file: !3, line: 420, type: !1038)
!1043 = !DILocation(line: 0, scope: !1035, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 476, column: 3, scope: !736)
!1045 = !DILocation(line: 422, column: 13, scope: !1046, inlinedAt: !1044)
!1046 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 422, column: 7)
!1047 = !DILocation(line: 422, column: 7, scope: !1046, inlinedAt: !1044)
!1048 = !DILocation(line: 422, column: 7, scope: !1035, inlinedAt: !1044)
!1049 = !DILocation(line: 423, column: 5, scope: !1046, inlinedAt: !1044)
!1050 = !DILocation(line: 478, column: 10, scope: !736)
!1051 = !{!802, !802, i64 0}
!1052 = !DILocation(line: 478, column: 20, scope: !736)
!1053 = !DILocation(line: 478, column: 3, scope: !736)
!1054 = !DILocation(line: 0, scope: !1035, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 481, column: 7, scope: !755)
!1056 = !DILocation(line: 422, column: 7, scope: !1035, inlinedAt: !1055)
!1057 = !DILocation(line: 423, column: 5, scope: !1046, inlinedAt: !1055)
!1058 = !DILocation(line: 483, column: 14, scope: !755)
!1059 = !DILocation(line: 483, column: 7, scope: !755)
!1060 = !DILocation(line: 510, column: 11, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !755, file: !3, line: 510, column: 11)
!1062 = !DILocation(line: 485, column: 39, scope: !754)
!1063 = !DILocation(line: 0, scope: !754)
!1064 = !DILocation(line: 488, column: 23, scope: !754)
!1065 = !DILocation(line: 488, column: 11, scope: !754)
!1066 = !DILocation(line: 489, column: 11, scope: !754)
!1067 = !DILocation(line: 489, column: 17, scope: !754)
!1068 = !DILocation(line: 489, column: 25, scope: !754)
!1069 = !{!833, !834, i64 25}
!1070 = !DILocation(line: 490, column: 20, scope: !754)
!1071 = !DILocation(line: 493, column: 11, scope: !754)
!1072 = !DILocation(line: 495, column: 18, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !754, file: !3, line: 494, column: 13)
!1074 = !DILocation(line: 495, column: 23, scope: !1073)
!1075 = !DILocation(line: 495, column: 28, scope: !1073)
!1076 = !DILocation(line: 496, column: 33, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 496, column: 19)
!1078 = !DILocation(line: 496, column: 19, scope: !1073)
!1079 = !DILocation(line: 498, column: 19, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 497, column: 17)
!1081 = !DILocation(line: 498, column: 26, scope: !1080)
!1082 = !DILocation(line: 498, column: 32, scope: !1080)
!1083 = !{!833, !488, i64 40}
!1084 = !DILocation(line: 499, column: 25, scope: !1080)
!1085 = !DILocation(line: 500, column: 17, scope: !1080)
!1086 = !DILocation(line: 502, column: 22, scope: !1073)
!1087 = distinct !{!1087, !1071, !1088, !543}
!1088 = !DILocation(line: 503, column: 13, scope: !754)
!1089 = !DILocation(line: 506, column: 24, scope: !754)
!1090 = !DILocation(line: 506, column: 16, scope: !754)
!1091 = distinct !{!1091, !1059, !1092, !543}
!1092 = !DILocation(line: 507, column: 9, scope: !755)
!1093 = !DILocation(line: 510, column: 21, scope: !1061)
!1094 = !DILocation(line: 510, column: 11, scope: !755)
!1095 = !DILocation(line: 513, column: 11, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 511, column: 9)
!1097 = !DILocation(line: 517, column: 11, scope: !1096)
!1098 = !DILocation(line: 0, scope: !1035, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 518, column: 13, scope: !1096)
!1100 = !DILocation(line: 422, column: 7, scope: !1035, inlinedAt: !1099)
!1101 = !DILocation(line: 423, column: 5, scope: !1046, inlinedAt: !1099)
!1102 = !DILocation(line: 519, column: 18, scope: !1096)
!1103 = !DILocation(line: 518, column: 13, scope: !1096)
!1104 = distinct !{!1104, !1097, !1105, !543}
!1105 = !DILocation(line: 519, column: 22, scope: !1096)
!1106 = distinct !{!1106, !1053, !1107, !543}
!1107 = !DILocation(line: 521, column: 5, scope: !736)
!1108 = !DILocation(line: 523, column: 15, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !736, file: !3, line: 523, column: 7)
!1110 = !DILocation(line: 523, column: 7, scope: !1109)
!1111 = !DILocation(line: 523, column: 22, scope: !1109)
!1112 = !DILocation(line: 523, column: 7, scope: !736)
!1113 = !DILocation(line: 524, column: 5, scope: !1109)
!1114 = !DILocation(line: 527, column: 9, scope: !736)
!1115 = !DILocation(line: 527, column: 3, scope: !736)
!1116 = distinct !DISubprogram(name: "count_items", scope: !3, file: !3, line: 279, type: !1039, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1117)
!1117 = !{!1118}
!1118 = !DILocalVariable(name: "unused", arg: 1, scope: !1116, file: !3, line: 279, type: !152)
!1119 = !DILocation(line: 0, scope: !1116)
!1120 = !DILocation(line: 281, column: 12, scope: !1116)
!1121 = !DILocation(line: 282, column: 3, scope: !1116)
!1122 = distinct !DISubprogram(name: "recurse_tree", scope: !3, file: !3, line: 397, type: !1123, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1125)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!74, !152, !1038}
!1125 = !{!1126, !1127}
!1126 = !DILocalVariable(name: "root", arg: 1, scope: !1122, file: !3, line: 397, type: !152)
!1127 = !DILocalVariable(name: "action", arg: 2, scope: !1122, file: !3, line: 397, type: !1038)
!1128 = !DILocation(line: 0, scope: !1122)
!1129 = !DILocation(line: 399, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 399, column: 7)
!1131 = !DILocation(line: 399, column: 18, scope: !1130)
!1132 = !DILocation(line: 399, column: 26, scope: !1130)
!1133 = !DILocation(line: 399, column: 35, scope: !1130)
!1134 = !DILocation(line: 399, column: 41, scope: !1130)
!1135 = !DILocation(line: 399, column: 7, scope: !1122)
!1136 = !DILocation(line: 400, column: 12, scope: !1130)
!1137 = !{i1 (%struct.item*)* @count_items, i1 (%struct.item*)* @detect_loop, i1 (%struct.item*)* @scan_zeros}
!1138 = !DILocation(line: 400, column: 5, scope: !1130)
!1139 = !DILocation(line: 404, column: 13, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 404, column: 13)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 403, column: 11)
!1142 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 402, column: 5)
!1143 = !DILocation(line: 404, column: 13, scope: !1141)
!1144 = !DILocation(line: 406, column: 11, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 406, column: 11)
!1146 = !DILocation(line: 406, column: 11, scope: !1142)
!1147 = !DILocation(line: 408, column: 17, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 408, column: 11)
!1149 = !DILocation(line: 408, column: 23, scope: !1148)
!1150 = !DILocation(line: 408, column: 11, scope: !1142)
!1151 = !DILocation(line: 409, column: 13, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 409, column: 13)
!1153 = !DILocation(line: 409, column: 13, scope: !1148)
!1154 = !DILocation(line: 413, column: 3, scope: !1122)
!1155 = !DILocation(line: 414, column: 1, scope: !1122)
!1156 = distinct !DISubprogram(name: "scan_zeros", scope: !3, file: !3, line: 286, type: !1039, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1157)
!1157 = !{!1158}
!1158 = !DILocalVariable(name: "k", arg: 1, scope: !1156, file: !3, line: 286, type: !152)
!1159 = !DILocation(line: 0, scope: !1156)
!1160 = !DILocation(line: 289, column: 10, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 289, column: 7)
!1162 = !DILocation(line: 289, column: 16, scope: !1161)
!1163 = !DILocation(line: 289, column: 21, scope: !1161)
!1164 = !DILocation(line: 289, column: 28, scope: !1161)
!1165 = !{i8 0, i8 2}
!1166 = !DILocation(line: 289, column: 7, scope: !1156)
!1167 = !DILocation(line: 291, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 291, column: 11)
!1169 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 290, column: 5)
!1170 = !DILocation(line: 291, column: 16, scope: !1168)
!1171 = !DILocation(line: 291, column: 11, scope: !1169)
!1172 = !DILocation(line: 0, scope: !1168)
!1173 = !DILocation(line: 296, column: 13, scope: !1169)
!1174 = !DILocation(line: 297, column: 5, scope: !1169)
!1175 = !DILocation(line: 299, column: 3, scope: !1156)
!1176 = !DISubprogram(name: "puts", scope: !213, file: !213, line: 661, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!6, !57}
!1179 = distinct !DISubprogram(name: "detect_loop", scope: !3, file: !3, line: 321, type: !1039, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1180)
!1180 = !{!1181, !1182, !1188, !1195, !1198}
!1181 = !DILocalVariable(name: "k", arg: 1, scope: !1179, file: !3, line: 321, type: !152)
!1182 = !DILocalVariable(name: "p", scope: !1183, file: !3, line: 333, type: !1187)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 332, column: 9)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 328, column: 11)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 324, column: 5)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 323, column: 7)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1188 = !DILocalVariable(name: "tmp", scope: !1189, file: !3, line: 344, type: !152)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 343, column: 25)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 340, column: 21)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 339, column: 23)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 338, column: 17)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 337, column: 19)
!1194 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 336, column: 13)
!1195 = !DILocalVariable(name: "s", scope: !1196, file: !3, line: 352, type: !163)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 350, column: 29)
!1197 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 349, column: 31)
!1198 = !DILocalVariable(name: "tmp", scope: !1199, file: !3, line: 367, type: !152)
!1199 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 366, column: 25)
!1200 = !DILocation(line: 0, scope: !1179)
!1201 = !DILocation(line: 323, column: 10, scope: !1186)
!1202 = !DILocation(line: 323, column: 16, scope: !1186)
!1203 = !DILocation(line: 323, column: 7, scope: !1179)
!1204 = !DILocation(line: 328, column: 11, scope: !1184)
!1205 = !DILocation(line: 328, column: 16, scope: !1184)
!1206 = !DILocation(line: 328, column: 11, scope: !1185)
!1207 = !DILocation(line: 333, column: 38, scope: !1183)
!1208 = !DILocation(line: 0, scope: !1183)
!1209 = !DILocation(line: 335, column: 18, scope: !1183)
!1210 = !DILocation(line: 335, column: 11, scope: !1183)
!1211 = !DILocation(line: 337, column: 25, scope: !1193)
!1212 = !DILocation(line: 337, column: 29, scope: !1193)
!1213 = !DILocation(line: 337, column: 19, scope: !1194)
!1214 = !DILocation(line: 385, column: 26, scope: !1194)
!1215 = distinct !{!1215, !1210, !1216, !543}
!1216 = !DILocation(line: 386, column: 13, scope: !1183)
!1217 = !DILocation(line: 339, column: 26, scope: !1191)
!1218 = !DILocation(line: 339, column: 23, scope: !1191)
!1219 = !DILocation(line: 339, column: 23, scope: !1192)
!1220 = !DILocation(line: 344, column: 52, scope: !1189)
!1221 = !DILocation(line: 0, scope: !1189)
!1222 = !DILocation(line: 346, column: 27, scope: !1189)
!1223 = !DILocation(line: 349, column: 31, scope: !1197)
!1224 = !DILocation(line: 349, column: 36, scope: !1197)
!1225 = !DILocation(line: 349, column: 31, scope: !1189)
!1226 = !DILocation(line: 361, column: 33, scope: !1189)
!1227 = !DILocation(line: 361, column: 39, scope: !1189)
!1228 = !DILocation(line: 362, column: 32, scope: !1189)
!1229 = !DILocation(line: 342, column: 23, scope: !1190)
!1230 = !DILocation(line: 352, column: 53, scope: !1196)
!1231 = !DILocation(line: 0, scope: !1196)
!1232 = !DILocation(line: 353, column: 34, scope: !1196)
!1233 = !DILocation(line: 353, column: 39, scope: !1196)
!1234 = !DILocation(line: 353, column: 44, scope: !1196)
!1235 = !DILocation(line: 354, column: 39, scope: !1196)
!1236 = !DILocation(line: 354, column: 34, scope: !1196)
!1237 = !DILocation(line: 365, column: 23, scope: !1190)
!1238 = !DILocation(line: 367, column: 52, scope: !1199)
!1239 = !DILocation(line: 0, scope: !1199)
!1240 = !DILocation(line: 369, column: 39, scope: !1199)
!1241 = distinct !{!1241, !1237, !1242, !543}
!1242 = !DILocation(line: 371, column: 25, scope: !1190)
!1243 = !DILocation(line: 379, column: 32, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 378, column: 21)
!1245 = !DILocation(line: 381, column: 23, scope: !1244)
!1246 = !DILocation(line: 0, scope: !1184)
!1247 = !DILocation(line: 391, column: 1, scope: !1179)
!1248 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !197, file: !197, line: 50, type: !502, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !1249)
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "file", arg: 1, scope: !1248, file: !197, line: 50, type: !57)
!1251 = !DILocation(line: 0, scope: !1248)
!1252 = !DILocation(line: 52, column: 13, scope: !1248)
!1253 = !DILocation(line: 53, column: 1, scope: !1248)
!1254 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !197, file: !197, line: 87, type: !1255, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !74}
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "ignore", arg: 1, scope: !1254, file: !197, line: 87, type: !74)
!1259 = !DILocation(line: 0, scope: !1254)
!1260 = !DILocation(line: 89, column: 16, scope: !1254)
!1261 = !{!834, !834, i64 0}
!1262 = !DILocation(line: 90, column: 1, scope: !1254)
!1263 = distinct !DISubprogram(name: "close_stdout", scope: !197, file: !197, line: 116, type: !240, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !1264)
!1264 = !{!1265}
!1265 = !DILocalVariable(name: "write_error", scope: !1266, file: !197, line: 121, type: !57)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !197, line: 120, column: 5)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !197, line: 118, column: 7)
!1268 = !DILocation(line: 118, column: 21, scope: !1267)
!1269 = !DILocation(line: 118, column: 7, scope: !1267)
!1270 = !DILocation(line: 118, column: 29, scope: !1267)
!1271 = !DILocation(line: 119, column: 7, scope: !1267)
!1272 = !DILocation(line: 119, column: 12, scope: !1267)
!1273 = !DILocation(line: 119, column: 25, scope: !1267)
!1274 = !DILocation(line: 119, column: 28, scope: !1267)
!1275 = !DILocation(line: 119, column: 34, scope: !1267)
!1276 = !DILocation(line: 118, column: 7, scope: !1263)
!1277 = !DILocation(line: 121, column: 33, scope: !1266)
!1278 = !DILocation(line: 0, scope: !1266)
!1279 = !DILocation(line: 122, column: 11, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1266, file: !197, line: 122, column: 11)
!1281 = !DILocation(line: 0, scope: !1280)
!1282 = !DILocation(line: 122, column: 11, scope: !1266)
!1283 = !DILocation(line: 123, column: 9, scope: !1280)
!1284 = !DILocation(line: 126, column: 9, scope: !1280)
!1285 = !DILocation(line: 128, column: 14, scope: !1266)
!1286 = !DILocation(line: 128, column: 7, scope: !1266)
!1287 = !DILocation(line: 133, column: 42, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1263, file: !197, line: 133, column: 7)
!1289 = !DILocation(line: 133, column: 28, scope: !1288)
!1290 = !DILocation(line: 133, column: 50, scope: !1288)
!1291 = !DILocation(line: 133, column: 7, scope: !1263)
!1292 = !DILocation(line: 134, column: 12, scope: !1288)
!1293 = !DILocation(line: 134, column: 5, scope: !1288)
!1294 = !DILocation(line: 135, column: 1, scope: !1263)
!1295 = distinct !DISubprogram(name: "verror", scope: !204, file: !204, line: 251, type: !1296, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !6, !6, !57, !212}
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DILocalVariable(name: "status", arg: 1, scope: !1295, file: !204, line: 251, type: !6)
!1300 = !DILocalVariable(name: "errnum", arg: 2, scope: !1295, file: !204, line: 251, type: !6)
!1301 = !DILocalVariable(name: "message", arg: 3, scope: !1295, file: !204, line: 251, type: !57)
!1302 = !DILocalVariable(name: "args", arg: 4, scope: !1295, file: !204, line: 251, type: !212)
!1303 = !DILocation(line: 0, scope: !1295)
!1304 = !DILocation(line: 251, column: 1, scope: !1295)
!1305 = !DILocation(line: 261, column: 3, scope: !1295)
!1306 = !DILocation(line: 265, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1295, file: !204, line: 265, column: 7)
!1308 = !DILocation(line: 265, column: 7, scope: !1295)
!1309 = !DILocation(line: 266, column: 5, scope: !1307)
!1310 = !DILocation(line: 272, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !204, line: 268, column: 5)
!1312 = !DILocation(line: 276, column: 3, scope: !1295)
!1313 = !{i64 0, i64 8, !487, i64 8, i64 8, !487, i64 16, i64 8, !487, i64 24, i64 4, !576, i64 28, i64 4, !576}
!1314 = !DILocation(line: 282, column: 1, scope: !1295)
!1315 = distinct !DISubprogram(name: "flush_stdout", scope: !204, file: !204, line: 163, type: !240, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1316)
!1316 = !{!1317}
!1317 = !DILocalVariable(name: "stdout_fd", scope: !1315, file: !204, line: 166, type: !6)
!1318 = !DILocation(line: 0, scope: !1315)
!1319 = !DILocalVariable(name: "fd", arg: 1, scope: !1320, file: !204, line: 145, type: !6)
!1320 = distinct !DISubprogram(name: "is_open", scope: !204, file: !204, line: 145, type: !1321, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1323)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!6, !6}
!1323 = !{!1319}
!1324 = !DILocation(line: 0, scope: !1320, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 182, column: 25, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1315, file: !204, line: 182, column: 7)
!1327 = !DILocation(line: 157, column: 15, scope: !1320, inlinedAt: !1325)
!1328 = !DILocation(line: 182, column: 25, scope: !1326)
!1329 = !DILocation(line: 182, column: 7, scope: !1315)
!1330 = !DILocation(line: 184, column: 5, scope: !1326)
!1331 = !DILocation(line: 185, column: 1, scope: !1315)
!1332 = distinct !DISubprogram(name: "error_tail", scope: !204, file: !204, line: 219, type: !1296, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1333)
!1333 = !{!1334, !1335, !1336, !1337}
!1334 = !DILocalVariable(name: "status", arg: 1, scope: !1332, file: !204, line: 219, type: !6)
!1335 = !DILocalVariable(name: "errnum", arg: 2, scope: !1332, file: !204, line: 219, type: !6)
!1336 = !DILocalVariable(name: "message", arg: 3, scope: !1332, file: !204, line: 219, type: !57)
!1337 = !DILocalVariable(name: "args", arg: 4, scope: !1332, file: !204, line: 219, type: !212)
!1338 = !DILocation(line: 0, scope: !1332)
!1339 = !DILocation(line: 219, column: 1, scope: !1332)
!1340 = !DILocation(line: 229, column: 13, scope: !1332)
!1341 = !DILocation(line: 229, column: 3, scope: !1332)
!1342 = !DILocalVariable(name: "__stream", arg: 1, scope: !1343, file: !1344, line: 132, type: !1347)
!1343 = distinct !DISubprogram(name: "vfprintf", scope: !1344, file: !1344, line: 132, type: !1345, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1382)
!1344 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!6, !1347, !572, !214}
!1347 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1350, file: !91, line: 51, baseType: !6, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1350, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1350, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1350, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1350, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1350, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1350, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1350, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1350, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1350, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1350, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1350, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1350, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1350, file: !91, line: 70, baseType: !1366, size: 64, offset: 832)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1350, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1350, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1350, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1350, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1350, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1350, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1350, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1350, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1350, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1350, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1350, file: !91, line: 93, baseType: !1366, size: 64, offset: 1344)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1350, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1350, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1350, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1350, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!1382 = !{!1342, !1383, !1384}
!1383 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1343, file: !1344, line: 133, type: !572)
!1384 = !DILocalVariable(name: "__ap", arg: 3, scope: !1343, file: !1344, line: 133, type: !214)
!1385 = !DILocation(line: 0, scope: !1343, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 229, column: 3, scope: !1332)
!1387 = !DILocation(line: 135, column: 10, scope: !1343, inlinedAt: !1386)
!1388 = !{!1389, !1391}
!1389 = distinct !{!1389, !1390, !"vfprintf.inline: argument 0"}
!1390 = distinct !{!1390, !"vfprintf.inline"}
!1391 = distinct !{!1391, !1390, !"vfprintf.inline: argument 1"}
!1392 = !DILocation(line: 232, column: 3, scope: !1332)
!1393 = !DILocation(line: 233, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1332, file: !204, line: 233, column: 7)
!1395 = !DILocation(line: 233, column: 7, scope: !1332)
!1396 = !DILocalVariable(name: "errnum", arg: 1, scope: !1397, file: !204, line: 188, type: !6)
!1397 = distinct !DISubprogram(name: "print_errno_message", scope: !204, file: !204, line: 188, type: !477, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1398)
!1398 = !{!1396, !1399, !1400}
!1399 = !DILocalVariable(name: "s", scope: !1397, file: !204, line: 190, type: !57)
!1400 = !DILocalVariable(name: "errbuf", scope: !1397, file: !204, line: 193, type: !1401)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8192, elements: !1402)
!1402 = !{!1403}
!1403 = !DISubrange(count: 1024)
!1404 = !DILocation(line: 0, scope: !1397, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 234, column: 5, scope: !1394)
!1406 = !DILocation(line: 193, column: 3, scope: !1397, inlinedAt: !1405)
!1407 = !DILocation(line: 193, column: 8, scope: !1397, inlinedAt: !1405)
!1408 = !DILocation(line: 195, column: 7, scope: !1397, inlinedAt: !1405)
!1409 = !DILocation(line: 207, column: 9, scope: !1410, inlinedAt: !1405)
!1410 = distinct !DILexicalBlock(scope: !1397, file: !204, line: 207, column: 7)
!1411 = !DILocation(line: 207, column: 7, scope: !1397, inlinedAt: !1405)
!1412 = !DILocation(line: 208, column: 9, scope: !1410, inlinedAt: !1405)
!1413 = !DILocation(line: 208, column: 5, scope: !1410, inlinedAt: !1405)
!1414 = !DILocation(line: 214, column: 3, scope: !1397, inlinedAt: !1405)
!1415 = !DILocation(line: 216, column: 1, scope: !1397, inlinedAt: !1405)
!1416 = !DILocation(line: 234, column: 5, scope: !1394)
!1417 = !DILocation(line: 238, column: 3, scope: !1332)
!1418 = !DILocalVariable(name: "__c", arg: 1, scope: !1419, file: !793, line: 101, type: !6)
!1419 = distinct !DISubprogram(name: "putc_unlocked", scope: !793, file: !793, line: 101, type: !1420, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1422)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!6, !6, !1348}
!1422 = !{!1418, !1423}
!1423 = !DILocalVariable(name: "__stream", arg: 2, scope: !1419, file: !793, line: 101, type: !1348)
!1424 = !DILocation(line: 0, scope: !1419, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 238, column: 3, scope: !1332)
!1426 = !DILocation(line: 103, column: 10, scope: !1419, inlinedAt: !1425)
!1427 = !{!801, !488, i64 40}
!1428 = !{!801, !488, i64 48}
!1429 = !{!"branch_weights", i32 2000, i32 1}
!1430 = !DILocation(line: 240, column: 3, scope: !1332)
!1431 = !DILocation(line: 241, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1332, file: !204, line: 241, column: 7)
!1433 = !DILocation(line: 241, column: 7, scope: !1332)
!1434 = !DILocation(line: 242, column: 5, scope: !1432)
!1435 = !DILocation(line: 243, column: 1, scope: !1332)
!1436 = !DISubprogram(name: "strerror_r", scope: !1437, file: !1437, line: 444, type: !1438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1437 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!8, !6, !8, !54}
!1440 = !DISubprogram(name: "fflush_unlocked", scope: !213, file: !213, line: 239, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!6, !1348}
!1443 = !DISubprogram(name: "fcntl", scope: !1444, file: !1444, line: 149, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1444 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!6, !6, !6, null}
!1447 = distinct !DISubprogram(name: "error", scope: !204, file: !204, line: 285, type: !1448, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !6, !6, !57, null}
!1450 = !{!1451, !1452, !1453, !1454}
!1451 = !DILocalVariable(name: "status", arg: 1, scope: !1447, file: !204, line: 285, type: !6)
!1452 = !DILocalVariable(name: "errnum", arg: 2, scope: !1447, file: !204, line: 285, type: !6)
!1453 = !DILocalVariable(name: "message", arg: 3, scope: !1447, file: !204, line: 285, type: !57)
!1454 = !DILocalVariable(name: "ap", scope: !1447, file: !204, line: 287, type: !212)
!1455 = !DILocation(line: 0, scope: !1447)
!1456 = !DILocation(line: 287, column: 3, scope: !1447)
!1457 = !DILocation(line: 287, column: 11, scope: !1447)
!1458 = !DILocation(line: 288, column: 3, scope: !1447)
!1459 = !DILocation(line: 289, column: 3, scope: !1447)
!1460 = !DILocation(line: 290, column: 3, scope: !1447)
!1461 = !DILocation(line: 291, column: 1, scope: !1447)
!1462 = !DILocation(line: 0, scope: !209)
!1463 = !DILocation(line: 298, column: 1, scope: !209)
!1464 = !DILocation(line: 302, column: 7, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !209, file: !204, line: 302, column: 7)
!1466 = !DILocation(line: 302, column: 7, scope: !209)
!1467 = !DILocation(line: 307, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !204, line: 307, column: 11)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !204, line: 303, column: 5)
!1470 = !DILocation(line: 307, column: 27, scope: !1468)
!1471 = !DILocation(line: 308, column: 11, scope: !1468)
!1472 = !DILocation(line: 308, column: 28, scope: !1468)
!1473 = !DILocation(line: 308, column: 25, scope: !1468)
!1474 = !DILocation(line: 309, column: 15, scope: !1468)
!1475 = !DILocation(line: 309, column: 33, scope: !1468)
!1476 = !DILocation(line: 310, column: 19, scope: !1468)
!1477 = !DILocation(line: 311, column: 22, scope: !1468)
!1478 = !DILocation(line: 311, column: 56, scope: !1468)
!1479 = !DILocation(line: 307, column: 11, scope: !1469)
!1480 = !DILocation(line: 316, column: 21, scope: !1469)
!1481 = !DILocation(line: 317, column: 23, scope: !1469)
!1482 = !DILocation(line: 318, column: 5, scope: !1469)
!1483 = !DILocation(line: 327, column: 3, scope: !209)
!1484 = !DILocation(line: 331, column: 7, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !209, file: !204, line: 331, column: 7)
!1486 = !DILocation(line: 331, column: 7, scope: !209)
!1487 = !DILocation(line: 332, column: 5, scope: !1485)
!1488 = !DILocation(line: 338, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !204, line: 334, column: 5)
!1490 = !DILocation(line: 346, column: 3, scope: !209)
!1491 = !DILocation(line: 350, column: 3, scope: !209)
!1492 = !DILocation(line: 356, column: 1, scope: !209)
!1493 = distinct !DISubprogram(name: "error_at_line", scope: !204, file: !204, line: 359, type: !1494, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !6, !6, !57, !14, !57, null}
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502}
!1497 = !DILocalVariable(name: "status", arg: 1, scope: !1493, file: !204, line: 359, type: !6)
!1498 = !DILocalVariable(name: "errnum", arg: 2, scope: !1493, file: !204, line: 359, type: !6)
!1499 = !DILocalVariable(name: "file_name", arg: 3, scope: !1493, file: !204, line: 359, type: !57)
!1500 = !DILocalVariable(name: "line_number", arg: 4, scope: !1493, file: !204, line: 360, type: !14)
!1501 = !DILocalVariable(name: "message", arg: 5, scope: !1493, file: !204, line: 360, type: !57)
!1502 = !DILocalVariable(name: "ap", scope: !1493, file: !204, line: 362, type: !212)
!1503 = !DILocation(line: 0, scope: !1493)
!1504 = !DILocation(line: 362, column: 3, scope: !1493)
!1505 = !DILocation(line: 362, column: 11, scope: !1493)
!1506 = !DILocation(line: 363, column: 3, scope: !1493)
!1507 = !DILocation(line: 364, column: 3, scope: !1493)
!1508 = !DILocation(line: 366, column: 3, scope: !1493)
!1509 = !DILocation(line: 367, column: 1, scope: !1493)
!1510 = distinct !DISubprogram(name: "fdadvise", scope: !390, file: !390, line: 25, type: !1511, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !1515)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !6, !1513, !1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !213, line: 63, baseType: !113)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !43, line: 51, baseType: !42)
!1515 = !{!1516, !1517, !1518, !1519}
!1516 = !DILocalVariable(name: "fd", arg: 1, scope: !1510, file: !390, line: 25, type: !6)
!1517 = !DILocalVariable(name: "offset", arg: 2, scope: !1510, file: !390, line: 25, type: !1513)
!1518 = !DILocalVariable(name: "len", arg: 3, scope: !1510, file: !390, line: 25, type: !1513)
!1519 = !DILocalVariable(name: "advice", arg: 4, scope: !1510, file: !390, line: 25, type: !1514)
!1520 = !DILocation(line: 0, scope: !1510)
!1521 = !DILocation(line: 28, column: 3, scope: !1510)
!1522 = !DILocation(line: 30, column: 1, scope: !1510)
!1523 = !DISubprogram(name: "posix_fadvise", scope: !1444, file: !1444, line: 273, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!6, !6, !1513, !1513, !6}
!1526 = distinct !DISubprogram(name: "fadvise", scope: !390, file: !390, line: 33, type: !1527, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !1563)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1529, !1514}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !1531)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1531, file: !91, line: 51, baseType: !6, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1531, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1531, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1531, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1531, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1531, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1531, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1531, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1531, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1531, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1531, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1531, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1531, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1531, file: !91, line: 70, baseType: !1547, size: 64, offset: 832)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1531, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1531, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1531, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1531, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1531, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1531, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1531, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1531, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1531, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1531, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1531, file: !91, line: 93, baseType: !1547, size: 64, offset: 1344)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1531, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1531, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1531, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1531, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!1563 = !{!1564, !1565}
!1564 = !DILocalVariable(name: "fp", arg: 1, scope: !1526, file: !390, line: 33, type: !1529)
!1565 = !DILocalVariable(name: "advice", arg: 2, scope: !1526, file: !390, line: 33, type: !1514)
!1566 = !DILocation(line: 0, scope: !1526)
!1567 = !DILocation(line: 35, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1526, file: !390, line: 35, column: 7)
!1569 = !DILocation(line: 35, column: 7, scope: !1526)
!1570 = !DILocation(line: 36, column: 15, scope: !1568)
!1571 = !DILocation(line: 0, scope: !1510, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 36, column: 5, scope: !1568)
!1573 = !DILocation(line: 28, column: 3, scope: !1510, inlinedAt: !1572)
!1574 = !DILocation(line: 36, column: 5, scope: !1568)
!1575 = !DILocation(line: 37, column: 1, scope: !1526)
!1576 = !DISubprogram(name: "fileno", scope: !213, file: !213, line: 809, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!6, !1529}
!1579 = distinct !DISubprogram(name: "rpl_fclose", scope: !393, file: !393, line: 58, type: !1580, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !1616)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!6, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !1585)
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1584, file: !91, line: 51, baseType: !6, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1584, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1584, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1584, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1584, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1584, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1584, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1584, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1584, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1584, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1584, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1584, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1584, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1584, file: !91, line: 70, baseType: !1600, size: 64, offset: 832)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1584, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1584, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1584, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1584, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1584, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1584, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1584, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1584, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1584, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1584, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1584, file: !91, line: 93, baseType: !1600, size: 64, offset: 1344)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1584, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1584, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1584, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1584, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!1616 = !{!1617, !1618, !1619, !1620}
!1617 = !DILocalVariable(name: "fp", arg: 1, scope: !1579, file: !393, line: 58, type: !1582)
!1618 = !DILocalVariable(name: "saved_errno", scope: !1579, file: !393, line: 60, type: !6)
!1619 = !DILocalVariable(name: "fd", scope: !1579, file: !393, line: 63, type: !6)
!1620 = !DILocalVariable(name: "result", scope: !1579, file: !393, line: 74, type: !6)
!1621 = !DILocation(line: 0, scope: !1579)
!1622 = !DILocation(line: 63, column: 12, scope: !1579)
!1623 = !DILocation(line: 64, column: 10, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1579, file: !393, line: 64, column: 7)
!1625 = !DILocation(line: 64, column: 7, scope: !1579)
!1626 = !DILocation(line: 65, column: 12, scope: !1624)
!1627 = !DILocation(line: 65, column: 5, scope: !1624)
!1628 = !DILocation(line: 70, column: 9, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1579, file: !393, line: 70, column: 7)
!1630 = !DILocation(line: 70, column: 23, scope: !1629)
!1631 = !DILocation(line: 70, column: 33, scope: !1629)
!1632 = !DILocation(line: 70, column: 26, scope: !1629)
!1633 = !DILocation(line: 70, column: 59, scope: !1629)
!1634 = !DILocation(line: 71, column: 7, scope: !1629)
!1635 = !DILocation(line: 71, column: 10, scope: !1629)
!1636 = !DILocation(line: 70, column: 7, scope: !1579)
!1637 = !DILocation(line: 100, column: 12, scope: !1579)
!1638 = !DILocation(line: 105, column: 7, scope: !1579)
!1639 = !DILocation(line: 72, column: 19, scope: !1629)
!1640 = !DILocation(line: 105, column: 19, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1579, file: !393, line: 105, column: 7)
!1642 = !DILocation(line: 107, column: 13, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1641, file: !393, line: 106, column: 5)
!1644 = !DILocation(line: 109, column: 5, scope: !1643)
!1645 = !DILocation(line: 112, column: 1, scope: !1579)
!1646 = !DISubprogram(name: "fclose", scope: !213, file: !213, line: 178, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1647 = !DISubprogram(name: "lseek", scope: !1648, file: !1648, line: 339, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1648 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!113, !6, !113, !6}
!1651 = distinct !DISubprogram(name: "rpl_fflush", scope: !395, file: !395, line: 130, type: !1652, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1688)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!6, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1656, file: !91, line: 51, baseType: !6, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1656, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1656, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1656, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1656, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1656, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1656, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1656, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1656, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1656, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1656, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1656, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1656, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1656, file: !91, line: 70, baseType: !1672, size: 64, offset: 832)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1656, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1656, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1656, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1656, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1656, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1656, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1656, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1656, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1656, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1656, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1656, file: !91, line: 93, baseType: !1672, size: 64, offset: 1344)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1656, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1656, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1656, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1656, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!1688 = !{!1689}
!1689 = !DILocalVariable(name: "stream", arg: 1, scope: !1651, file: !395, line: 130, type: !1654)
!1690 = !DILocation(line: 0, scope: !1651)
!1691 = !DILocation(line: 151, column: 14, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1651, file: !395, line: 151, column: 7)
!1693 = !DILocation(line: 151, column: 22, scope: !1692)
!1694 = !DILocation(line: 151, column: 27, scope: !1692)
!1695 = !DILocation(line: 151, column: 7, scope: !1651)
!1696 = !DILocation(line: 152, column: 12, scope: !1692)
!1697 = !DILocation(line: 152, column: 5, scope: !1692)
!1698 = !DILocalVariable(name: "fp", arg: 1, scope: !1699, file: !395, line: 42, type: !1654)
!1699 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !395, file: !395, line: 42, type: !1700, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1654}
!1702 = !{!1698}
!1703 = !DILocation(line: 0, scope: !1699, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 157, column: 3, scope: !1651)
!1705 = !DILocation(line: 44, column: 12, scope: !1706, inlinedAt: !1704)
!1706 = distinct !DILexicalBlock(scope: !1699, file: !395, line: 44, column: 7)
!1707 = !DILocation(line: 44, column: 19, scope: !1706, inlinedAt: !1704)
!1708 = !DILocation(line: 44, column: 7, scope: !1699, inlinedAt: !1704)
!1709 = !DILocation(line: 46, column: 5, scope: !1706, inlinedAt: !1704)
!1710 = !DILocation(line: 159, column: 10, scope: !1651)
!1711 = !DILocation(line: 159, column: 3, scope: !1651)
!1712 = !DILocation(line: 236, column: 1, scope: !1651)
!1713 = !DISubprogram(name: "fflush", scope: !213, file: !213, line: 230, type: !1652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1714 = distinct !DISubprogram(name: "freopen_safer", scope: !398, file: !398, line: 60, type: !1715, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !1751)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1717, !57, !57, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1719, file: !91, line: 51, baseType: !6, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1719, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1719, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1719, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1719, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1719, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1719, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1719, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1719, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1719, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1719, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1719, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1719, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1719, file: !91, line: 70, baseType: !1735, size: 64, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1719, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1719, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1719, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1719, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1719, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1719, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1719, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1719, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1719, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1719, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1719, file: !91, line: 93, baseType: !1735, size: 64, offset: 1344)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1719, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1719, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1719, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1719, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758}
!1752 = !DILocalVariable(name: "name", arg: 1, scope: !1714, file: !398, line: 60, type: !57)
!1753 = !DILocalVariable(name: "mode", arg: 2, scope: !1714, file: !398, line: 60, type: !57)
!1754 = !DILocalVariable(name: "f", arg: 3, scope: !1714, file: !398, line: 60, type: !1717)
!1755 = !DILocalVariable(name: "protect_in", scope: !1714, file: !398, line: 68, type: !74)
!1756 = !DILocalVariable(name: "protect_out", scope: !1714, file: !398, line: 69, type: !74)
!1757 = !DILocalVariable(name: "protect_err", scope: !1714, file: !398, line: 70, type: !74)
!1758 = !DILocalVariable(name: "saved_errno", scope: !1714, file: !398, line: 98, type: !6)
!1759 = !DILocation(line: 0, scope: !1714)
!1760 = !DILocation(line: 72, column: 11, scope: !1714)
!1761 = !DILocation(line: 72, column: 3, scope: !1714)
!1762 = !DILocation(line: 75, column: 11, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !398, line: 75, column: 11)
!1764 = distinct !DILexicalBlock(scope: !1714, file: !398, line: 73, column: 5)
!1765 = !DILocation(line: 75, column: 47, scope: !1763)
!1766 = !DILocation(line: 75, column: 11, scope: !1764)
!1767 = !DILocation(line: 79, column: 11, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1764, file: !398, line: 79, column: 11)
!1769 = !DILocation(line: 79, column: 47, scope: !1768)
!1770 = !DILocation(line: 83, column: 11, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1764, file: !398, line: 83, column: 11)
!1772 = !DILocation(line: 83, column: 45, scope: !1771)
!1773 = !DILocation(line: 83, column: 11, scope: !1764)
!1774 = !DILocation(line: 92, column: 24, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !398, line: 92, column: 12)
!1776 = distinct !DILexicalBlock(scope: !1714, file: !398, line: 90, column: 7)
!1777 = !DILocalVariable(name: "fd", arg: 1, scope: !1778, file: !398, line: 38, type: !6)
!1778 = distinct !DISubprogram(name: "protect_fd", scope: !398, file: !398, line: 38, type: !1779, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!74, !6}
!1781 = !{!1777, !1782}
!1782 = !DILocalVariable(name: "value", scope: !1778, file: !398, line: 40, type: !6)
!1783 = !DILocation(line: 0, scope: !1778, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 90, column: 22, scope: !1776)
!1785 = !DILocation(line: 40, column: 15, scope: !1778, inlinedAt: !1784)
!1786 = !DILocation(line: 41, column: 13, scope: !1787, inlinedAt: !1784)
!1787 = distinct !DILexicalBlock(scope: !1778, file: !398, line: 41, column: 7)
!1788 = !DILocation(line: 41, column: 7, scope: !1778, inlinedAt: !1784)
!1789 = !DILocation(line: 45, column: 11, scope: !1790, inlinedAt: !1784)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !398, line: 44, column: 9)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !398, line: 43, column: 11)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !398, line: 42, column: 5)
!1793 = !DILocation(line: 46, column: 11, scope: !1790, inlinedAt: !1784)
!1794 = !DILocation(line: 46, column: 17, scope: !1790, inlinedAt: !1784)
!1795 = !DILocation(line: 47, column: 9, scope: !1790, inlinedAt: !1784)
!1796 = !DILocation(line: 90, column: 7, scope: !1714)
!1797 = !DILocation(line: 0, scope: !1778, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 92, column: 28, scope: !1775)
!1799 = !DILocation(line: 40, column: 15, scope: !1778, inlinedAt: !1798)
!1800 = !DILocation(line: 41, column: 13, scope: !1787, inlinedAt: !1798)
!1801 = !DILocation(line: 41, column: 7, scope: !1778, inlinedAt: !1798)
!1802 = !DILocation(line: 45, column: 11, scope: !1790, inlinedAt: !1798)
!1803 = !DILocation(line: 46, column: 11, scope: !1790, inlinedAt: !1798)
!1804 = !DILocation(line: 46, column: 17, scope: !1790, inlinedAt: !1798)
!1805 = !DILocation(line: 47, column: 9, scope: !1790, inlinedAt: !1798)
!1806 = !DILocation(line: 92, column: 12, scope: !1776)
!1807 = !DILocation(line: 94, column: 24, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1775, file: !398, line: 94, column: 12)
!1809 = !DILocation(line: 0, scope: !1778, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 94, column: 28, scope: !1808)
!1811 = !DILocation(line: 40, column: 15, scope: !1778, inlinedAt: !1810)
!1812 = !DILocation(line: 41, column: 13, scope: !1787, inlinedAt: !1810)
!1813 = !DILocation(line: 41, column: 7, scope: !1778, inlinedAt: !1810)
!1814 = !DILocation(line: 45, column: 11, scope: !1790, inlinedAt: !1810)
!1815 = !DILocation(line: 46, column: 11, scope: !1790, inlinedAt: !1810)
!1816 = !DILocation(line: 46, column: 17, scope: !1790, inlinedAt: !1810)
!1817 = !DILocation(line: 47, column: 9, scope: !1790, inlinedAt: !1810)
!1818 = !DILocation(line: 94, column: 12, scope: !1775)
!1819 = !DILocation(line: 98, column: 21, scope: !1714)
!1820 = !DILocation(line: 100, column: 5, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1714, file: !398, line: 99, column: 7)
!1822 = !DILocation(line: 101, column: 7, scope: !1714)
!1823 = !DILocation(line: 97, column: 9, scope: !1808)
!1824 = !DILocation(line: 99, column: 7, scope: !1714)
!1825 = !DILocation(line: 102, column: 5, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1714, file: !398, line: 101, column: 7)
!1827 = !DILocation(line: 103, column: 7, scope: !1714)
!1828 = !DILocation(line: 104, column: 5, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1714, file: !398, line: 103, column: 7)
!1830 = !DILocation(line: 105, column: 8, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1714, file: !398, line: 105, column: 7)
!1832 = !DILocation(line: 105, column: 7, scope: !1714)
!1833 = !DILocation(line: 106, column: 11, scope: !1831)
!1834 = !DILocation(line: 106, column: 5, scope: !1831)
!1835 = !DILocation(line: 107, column: 3, scope: !1714)
!1836 = !DISubprogram(name: "dup2", scope: !1648, file: !1648, line: 555, type: !1837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!6, !6, !6}
!1839 = !DISubprogram(name: "open", scope: !1444, file: !1444, line: 181, type: !1840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!6, !57, !6, null}
!1842 = !DISubprogram(name: "close", scope: !1648, file: !1648, line: 358, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1843 = !DISubprogram(name: "freopen", scope: !213, file: !213, line: 265, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!1717, !572, !572, !1846}
!1846 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1717)
!1847 = distinct !DISubprogram(name: "rpl_fseeko", scope: !400, file: !400, line: 28, type: !1848, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !1884)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!6, !1850, !1513, !6}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1852, file: !91, line: 51, baseType: !6, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1852, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1852, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1852, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1852, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1852, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1852, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1852, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1852, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1852, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1852, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1852, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1852, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1852, file: !91, line: 70, baseType: !1868, size: 64, offset: 832)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1852, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1852, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1852, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1852, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1852, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1852, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1852, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1852, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1852, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1852, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1852, file: !91, line: 93, baseType: !1868, size: 64, offset: 1344)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1852, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1852, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1852, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1852, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!1884 = !{!1885, !1886, !1887, !1888}
!1885 = !DILocalVariable(name: "fp", arg: 1, scope: !1847, file: !400, line: 28, type: !1850)
!1886 = !DILocalVariable(name: "offset", arg: 2, scope: !1847, file: !400, line: 28, type: !1513)
!1887 = !DILocalVariable(name: "whence", arg: 3, scope: !1847, file: !400, line: 28, type: !6)
!1888 = !DILocalVariable(name: "pos", scope: !1889, file: !400, line: 123, type: !1513)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !400, line: 119, column: 5)
!1890 = distinct !DILexicalBlock(scope: !1847, file: !400, line: 55, column: 7)
!1891 = !DILocation(line: 0, scope: !1847)
!1892 = !DILocation(line: 55, column: 12, scope: !1890)
!1893 = !{!801, !488, i64 16}
!1894 = !DILocation(line: 55, column: 33, scope: !1890)
!1895 = !{!801, !488, i64 8}
!1896 = !DILocation(line: 55, column: 25, scope: !1890)
!1897 = !DILocation(line: 56, column: 7, scope: !1890)
!1898 = !DILocation(line: 56, column: 15, scope: !1890)
!1899 = !DILocation(line: 56, column: 37, scope: !1890)
!1900 = !{!801, !488, i64 32}
!1901 = !DILocation(line: 56, column: 29, scope: !1890)
!1902 = !DILocation(line: 57, column: 7, scope: !1890)
!1903 = !DILocation(line: 57, column: 15, scope: !1890)
!1904 = !{!801, !488, i64 72}
!1905 = !DILocation(line: 57, column: 29, scope: !1890)
!1906 = !DILocation(line: 55, column: 7, scope: !1847)
!1907 = !DILocation(line: 123, column: 26, scope: !1889)
!1908 = !DILocation(line: 123, column: 19, scope: !1889)
!1909 = !DILocation(line: 0, scope: !1889)
!1910 = !DILocation(line: 124, column: 15, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1889, file: !400, line: 124, column: 11)
!1912 = !DILocation(line: 124, column: 11, scope: !1889)
!1913 = !DILocation(line: 135, column: 12, scope: !1889)
!1914 = !DILocation(line: 135, column: 19, scope: !1889)
!1915 = !DILocation(line: 136, column: 12, scope: !1889)
!1916 = !DILocation(line: 136, column: 20, scope: !1889)
!1917 = !{!801, !802, i64 144}
!1918 = !DILocation(line: 167, column: 7, scope: !1889)
!1919 = !DILocation(line: 169, column: 10, scope: !1847)
!1920 = !DILocation(line: 169, column: 3, scope: !1847)
!1921 = !DILocation(line: 170, column: 1, scope: !1847)
!1922 = !DISubprogram(name: "fseeko", scope: !213, file: !213, line: 736, type: !1923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!6, !1850, !113, !6}
!1925 = distinct !DISubprogram(name: "getprogname", scope: !402, file: !402, line: 54, type: !1926, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !495)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!57}
!1928 = !DILocation(line: 58, column: 10, scope: !1925)
!1929 = !DILocation(line: 58, column: 3, scope: !1925)
!1930 = distinct !DISubprogram(name: "set_program_name", scope: !245, file: !245, line: 37, type: !502, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1931)
!1931 = !{!1932, !1933, !1934}
!1932 = !DILocalVariable(name: "argv0", arg: 1, scope: !1930, file: !245, line: 37, type: !57)
!1933 = !DILocalVariable(name: "slash", scope: !1930, file: !245, line: 44, type: !57)
!1934 = !DILocalVariable(name: "base", scope: !1930, file: !245, line: 45, type: !57)
!1935 = !DILocation(line: 0, scope: !1930)
!1936 = !DILocation(line: 44, column: 23, scope: !1930)
!1937 = !DILocation(line: 45, column: 22, scope: !1930)
!1938 = !DILocation(line: 46, column: 17, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1930, file: !245, line: 46, column: 7)
!1940 = !DILocation(line: 46, column: 9, scope: !1939)
!1941 = !DILocation(line: 46, column: 25, scope: !1939)
!1942 = !DILocation(line: 46, column: 40, scope: !1939)
!1943 = !DILocalVariable(name: "__s1", arg: 1, scope: !1944, file: !527, line: 974, type: !694)
!1944 = distinct !DISubprogram(name: "memeq", scope: !527, file: !527, line: 974, type: !1945, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!74, !694, !694, !54}
!1947 = !{!1943, !1948, !1949}
!1948 = !DILocalVariable(name: "__s2", arg: 2, scope: !1944, file: !527, line: 974, type: !694)
!1949 = !DILocalVariable(name: "__n", arg: 3, scope: !1944, file: !527, line: 974, type: !54)
!1950 = !DILocation(line: 0, scope: !1944, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 46, column: 28, scope: !1939)
!1952 = !DILocation(line: 976, column: 11, scope: !1944, inlinedAt: !1951)
!1953 = !DILocation(line: 976, column: 10, scope: !1944, inlinedAt: !1951)
!1954 = !DILocation(line: 46, column: 7, scope: !1930)
!1955 = !DILocation(line: 49, column: 11, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !245, line: 49, column: 11)
!1957 = distinct !DILexicalBlock(scope: !1939, file: !245, line: 47, column: 5)
!1958 = !DILocation(line: 49, column: 36, scope: !1956)
!1959 = !DILocation(line: 49, column: 11, scope: !1957)
!1960 = !DILocation(line: 65, column: 16, scope: !1930)
!1961 = !DILocation(line: 71, column: 27, scope: !1930)
!1962 = !DILocation(line: 74, column: 33, scope: !1930)
!1963 = !DILocation(line: 76, column: 1, scope: !1930)
!1964 = !DILocation(line: 0, scope: !250)
!1965 = !DILocation(line: 40, column: 29, scope: !250)
!1966 = !DILocation(line: 41, column: 19, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !250, file: !251, line: 41, column: 7)
!1968 = !DILocation(line: 41, column: 7, scope: !250)
!1969 = !DILocation(line: 47, column: 3, scope: !250)
!1970 = !DILocation(line: 48, column: 3, scope: !250)
!1971 = !DILocation(line: 48, column: 13, scope: !250)
!1972 = !DILocalVariable(name: "ps", arg: 1, scope: !1973, file: !1974, line: 1135, type: !1977)
!1973 = distinct !DISubprogram(name: "mbszero", scope: !1974, file: !1974, line: 1135, type: !1975, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1978)
!1974 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1977}
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!1978 = !{!1972}
!1979 = !DILocation(line: 0, scope: !1973, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 48, column: 18, scope: !250)
!1981 = !DILocalVariable(name: "__dest", arg: 1, scope: !1982, file: !1983, line: 57, type: !52)
!1982 = distinct !DISubprogram(name: "memset", scope: !1983, file: !1983, line: 57, type: !1984, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1986)
!1983 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!52, !52, !6, !54}
!1986 = !{!1981, !1987, !1988}
!1987 = !DILocalVariable(name: "__ch", arg: 2, scope: !1982, file: !1983, line: 57, type: !6)
!1988 = !DILocalVariable(name: "__len", arg: 3, scope: !1982, file: !1983, line: 57, type: !54)
!1989 = !DILocation(line: 0, scope: !1982, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 1137, column: 3, scope: !1973, inlinedAt: !1980)
!1991 = !DILocation(line: 59, column: 10, scope: !1982, inlinedAt: !1990)
!1992 = !DILocation(line: 49, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !250, file: !251, line: 49, column: 7)
!1994 = !DILocation(line: 49, column: 39, scope: !1993)
!1995 = !DILocation(line: 49, column: 44, scope: !1993)
!1996 = !DILocation(line: 54, column: 1, scope: !250)
!1997 = !DISubprogram(name: "mbrtoc32", scope: !262, file: !262, line: 57, type: !1998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!54, !2000, !572, !54, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2001)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1977)
!2003 = distinct !DISubprogram(name: "clone_quoting_options", scope: !287, file: !287, line: 113, type: !2004, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2007)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!2006, !2006}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!2007 = !{!2008, !2009, !2010}
!2008 = !DILocalVariable(name: "o", arg: 1, scope: !2003, file: !287, line: 113, type: !2006)
!2009 = !DILocalVariable(name: "saved_errno", scope: !2003, file: !287, line: 115, type: !6)
!2010 = !DILocalVariable(name: "p", scope: !2003, file: !287, line: 116, type: !2006)
!2011 = !DILocation(line: 0, scope: !2003)
!2012 = !DILocation(line: 115, column: 21, scope: !2003)
!2013 = !DILocation(line: 116, column: 40, scope: !2003)
!2014 = !DILocation(line: 116, column: 31, scope: !2003)
!2015 = !DILocation(line: 118, column: 9, scope: !2003)
!2016 = !DILocation(line: 119, column: 3, scope: !2003)
!2017 = distinct !DISubprogram(name: "get_quoting_style", scope: !287, file: !287, line: 124, type: !2018, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2022)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!28, !2020}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!2022 = !{!2023}
!2023 = !DILocalVariable(name: "o", arg: 1, scope: !2017, file: !287, line: 124, type: !2020)
!2024 = !DILocation(line: 0, scope: !2017)
!2025 = !DILocation(line: 126, column: 11, scope: !2017)
!2026 = !DILocation(line: 126, column: 46, scope: !2017)
!2027 = !{!2028, !489, i64 0}
!2028 = !{!"quoting_options", !489, i64 0, !577, i64 4, !489, i64 8, !488, i64 40, !488, i64 48}
!2029 = !DILocation(line: 126, column: 3, scope: !2017)
!2030 = distinct !DISubprogram(name: "set_quoting_style", scope: !287, file: !287, line: 132, type: !2031, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !2006, !28}
!2033 = !{!2034, !2035}
!2034 = !DILocalVariable(name: "o", arg: 1, scope: !2030, file: !287, line: 132, type: !2006)
!2035 = !DILocalVariable(name: "s", arg: 2, scope: !2030, file: !287, line: 132, type: !28)
!2036 = !DILocation(line: 0, scope: !2030)
!2037 = !DILocation(line: 134, column: 4, scope: !2030)
!2038 = !DILocation(line: 134, column: 39, scope: !2030)
!2039 = !DILocation(line: 134, column: 45, scope: !2030)
!2040 = !DILocation(line: 135, column: 1, scope: !2030)
!2041 = distinct !DISubprogram(name: "set_char_quoting", scope: !287, file: !287, line: 143, type: !2042, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!6, !2006, !9, !6}
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2051, !2052}
!2045 = !DILocalVariable(name: "o", arg: 1, scope: !2041, file: !287, line: 143, type: !2006)
!2046 = !DILocalVariable(name: "c", arg: 2, scope: !2041, file: !287, line: 143, type: !9)
!2047 = !DILocalVariable(name: "i", arg: 3, scope: !2041, file: !287, line: 143, type: !6)
!2048 = !DILocalVariable(name: "uc", scope: !2041, file: !287, line: 145, type: !59)
!2049 = !DILocalVariable(name: "p", scope: !2041, file: !287, line: 146, type: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!2051 = !DILocalVariable(name: "shift", scope: !2041, file: !287, line: 148, type: !6)
!2052 = !DILocalVariable(name: "r", scope: !2041, file: !287, line: 149, type: !14)
!2053 = !DILocation(line: 0, scope: !2041)
!2054 = !DILocation(line: 147, column: 6, scope: !2041)
!2055 = !DILocation(line: 147, column: 62, scope: !2041)
!2056 = !DILocation(line: 147, column: 57, scope: !2041)
!2057 = !DILocation(line: 148, column: 15, scope: !2041)
!2058 = !DILocation(line: 149, column: 21, scope: !2041)
!2059 = !DILocation(line: 149, column: 24, scope: !2041)
!2060 = !DILocation(line: 149, column: 34, scope: !2041)
!2061 = !DILocation(line: 150, column: 13, scope: !2041)
!2062 = !DILocation(line: 150, column: 19, scope: !2041)
!2063 = !DILocation(line: 150, column: 24, scope: !2041)
!2064 = !DILocation(line: 150, column: 6, scope: !2041)
!2065 = !DILocation(line: 151, column: 3, scope: !2041)
!2066 = distinct !DISubprogram(name: "set_quoting_flags", scope: !287, file: !287, line: 159, type: !2067, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!6, !2006, !6}
!2069 = !{!2070, !2071, !2072}
!2070 = !DILocalVariable(name: "o", arg: 1, scope: !2066, file: !287, line: 159, type: !2006)
!2071 = !DILocalVariable(name: "i", arg: 2, scope: !2066, file: !287, line: 159, type: !6)
!2072 = !DILocalVariable(name: "r", scope: !2066, file: !287, line: 163, type: !6)
!2073 = !DILocation(line: 0, scope: !2066)
!2074 = !DILocation(line: 161, column: 8, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2066, file: !287, line: 161, column: 7)
!2076 = !DILocation(line: 161, column: 7, scope: !2066)
!2077 = !DILocation(line: 163, column: 14, scope: !2066)
!2078 = !{!2028, !577, i64 4}
!2079 = !DILocation(line: 164, column: 12, scope: !2066)
!2080 = !DILocation(line: 165, column: 3, scope: !2066)
!2081 = distinct !DISubprogram(name: "set_custom_quoting", scope: !287, file: !287, line: 169, type: !2082, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !2006, !57, !57}
!2084 = !{!2085, !2086, !2087}
!2085 = !DILocalVariable(name: "o", arg: 1, scope: !2081, file: !287, line: 169, type: !2006)
!2086 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2081, file: !287, line: 170, type: !57)
!2087 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2081, file: !287, line: 170, type: !57)
!2088 = !DILocation(line: 0, scope: !2081)
!2089 = !DILocation(line: 172, column: 8, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2081, file: !287, line: 172, column: 7)
!2091 = !DILocation(line: 172, column: 7, scope: !2081)
!2092 = !DILocation(line: 174, column: 6, scope: !2081)
!2093 = !DILocation(line: 174, column: 12, scope: !2081)
!2094 = !DILocation(line: 175, column: 8, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2081, file: !287, line: 175, column: 7)
!2096 = !DILocation(line: 175, column: 19, scope: !2095)
!2097 = !DILocation(line: 176, column: 5, scope: !2095)
!2098 = !DILocation(line: 177, column: 6, scope: !2081)
!2099 = !DILocation(line: 177, column: 17, scope: !2081)
!2100 = !{!2028, !488, i64 40}
!2101 = !DILocation(line: 178, column: 6, scope: !2081)
!2102 = !DILocation(line: 178, column: 18, scope: !2081)
!2103 = !{!2028, !488, i64 48}
!2104 = !DILocation(line: 179, column: 1, scope: !2081)
!2105 = distinct !DISubprogram(name: "quotearg_buffer", scope: !287, file: !287, line: 774, type: !2106, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!54, !8, !54, !57, !54, !2020}
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116}
!2109 = !DILocalVariable(name: "buffer", arg: 1, scope: !2105, file: !287, line: 774, type: !8)
!2110 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2105, file: !287, line: 774, type: !54)
!2111 = !DILocalVariable(name: "arg", arg: 3, scope: !2105, file: !287, line: 775, type: !57)
!2112 = !DILocalVariable(name: "argsize", arg: 4, scope: !2105, file: !287, line: 775, type: !54)
!2113 = !DILocalVariable(name: "o", arg: 5, scope: !2105, file: !287, line: 776, type: !2020)
!2114 = !DILocalVariable(name: "p", scope: !2105, file: !287, line: 778, type: !2020)
!2115 = !DILocalVariable(name: "saved_errno", scope: !2105, file: !287, line: 779, type: !6)
!2116 = !DILocalVariable(name: "r", scope: !2105, file: !287, line: 780, type: !54)
!2117 = !DILocation(line: 0, scope: !2105)
!2118 = !DILocation(line: 778, column: 37, scope: !2105)
!2119 = !DILocation(line: 779, column: 21, scope: !2105)
!2120 = !DILocation(line: 781, column: 43, scope: !2105)
!2121 = !DILocation(line: 781, column: 53, scope: !2105)
!2122 = !DILocation(line: 781, column: 60, scope: !2105)
!2123 = !DILocation(line: 782, column: 43, scope: !2105)
!2124 = !DILocation(line: 782, column: 58, scope: !2105)
!2125 = !DILocation(line: 780, column: 14, scope: !2105)
!2126 = !DILocation(line: 783, column: 9, scope: !2105)
!2127 = !DILocation(line: 784, column: 3, scope: !2105)
!2128 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !287, file: !287, line: 251, type: !2129, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2133)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!54, !8, !54, !57, !54, !28, !6, !2131, !57, !57}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2158, !2160, !2163, !2164, !2165, !2166, !2169, !2170, !2173, !2177, !2178, !2186, !2189, !2190, !2192, !2193, !2194, !2195}
!2134 = !DILocalVariable(name: "buffer", arg: 1, scope: !2128, file: !287, line: 251, type: !8)
!2135 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2128, file: !287, line: 251, type: !54)
!2136 = !DILocalVariable(name: "arg", arg: 3, scope: !2128, file: !287, line: 252, type: !57)
!2137 = !DILocalVariable(name: "argsize", arg: 4, scope: !2128, file: !287, line: 252, type: !54)
!2138 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2128, file: !287, line: 253, type: !28)
!2139 = !DILocalVariable(name: "flags", arg: 6, scope: !2128, file: !287, line: 253, type: !6)
!2140 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2128, file: !287, line: 254, type: !2131)
!2141 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2128, file: !287, line: 255, type: !57)
!2142 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2128, file: !287, line: 256, type: !57)
!2143 = !DILocalVariable(name: "unibyte_locale", scope: !2128, file: !287, line: 258, type: !74)
!2144 = !DILocalVariable(name: "len", scope: !2128, file: !287, line: 260, type: !54)
!2145 = !DILocalVariable(name: "orig_buffersize", scope: !2128, file: !287, line: 261, type: !54)
!2146 = !DILocalVariable(name: "quote_string", scope: !2128, file: !287, line: 262, type: !57)
!2147 = !DILocalVariable(name: "quote_string_len", scope: !2128, file: !287, line: 263, type: !54)
!2148 = !DILocalVariable(name: "backslash_escapes", scope: !2128, file: !287, line: 264, type: !74)
!2149 = !DILocalVariable(name: "elide_outer_quotes", scope: !2128, file: !287, line: 265, type: !74)
!2150 = !DILocalVariable(name: "encountered_single_quote", scope: !2128, file: !287, line: 266, type: !74)
!2151 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2128, file: !287, line: 267, type: !74)
!2152 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2128, file: !287, line: 309, type: !74)
!2153 = !DILocalVariable(name: "lq", scope: !2154, file: !287, line: 361, type: !57)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !287, line: 361, column: 11)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !287, line: 360, column: 13)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !287, line: 333, column: 7)
!2157 = distinct !DILexicalBlock(scope: !2128, file: !287, line: 312, column: 5)
!2158 = !DILocalVariable(name: "i", scope: !2159, file: !287, line: 395, type: !54)
!2159 = distinct !DILexicalBlock(scope: !2128, file: !287, line: 395, column: 3)
!2160 = !DILocalVariable(name: "is_right_quote", scope: !2161, file: !287, line: 397, type: !74)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !287, line: 396, column: 5)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !287, line: 395, column: 3)
!2163 = !DILocalVariable(name: "escaping", scope: !2161, file: !287, line: 398, type: !74)
!2164 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2161, file: !287, line: 399, type: !74)
!2165 = !DILocalVariable(name: "c", scope: !2161, file: !287, line: 417, type: !59)
!2166 = !DILocalVariable(name: "m", scope: !2167, file: !287, line: 598, type: !54)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !287, line: 596, column: 11)
!2168 = distinct !DILexicalBlock(scope: !2161, file: !287, line: 419, column: 9)
!2169 = !DILocalVariable(name: "printable", scope: !2167, file: !287, line: 600, type: !74)
!2170 = !DILocalVariable(name: "mbs", scope: !2171, file: !287, line: 609, type: !332)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !287, line: 608, column: 15)
!2172 = distinct !DILexicalBlock(scope: !2167, file: !287, line: 602, column: 17)
!2173 = !DILocalVariable(name: "w", scope: !2174, file: !287, line: 618, type: !261)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !287, line: 617, column: 19)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !287, line: 616, column: 17)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !287, line: 616, column: 17)
!2177 = !DILocalVariable(name: "bytes", scope: !2174, file: !287, line: 619, type: !54)
!2178 = !DILocalVariable(name: "j", scope: !2179, file: !287, line: 648, type: !54)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !287, line: 648, column: 29)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !287, line: 647, column: 27)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !287, line: 645, column: 29)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !287, line: 636, column: 23)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !287, line: 628, column: 30)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !287, line: 623, column: 30)
!2185 = distinct !DILexicalBlock(scope: !2174, file: !287, line: 621, column: 25)
!2186 = !DILocalVariable(name: "ilim", scope: !2187, file: !287, line: 674, type: !54)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !287, line: 671, column: 15)
!2188 = distinct !DILexicalBlock(scope: !2167, file: !287, line: 670, column: 17)
!2189 = !DILabel(scope: !2128, name: "process_input", file: !287, line: 308)
!2190 = !DILabel(scope: !2191, name: "c_and_shell_escape", file: !287, line: 502)
!2191 = distinct !DILexicalBlock(scope: !2168, file: !287, line: 478, column: 9)
!2192 = !DILabel(scope: !2191, name: "c_escape", file: !287, line: 507)
!2193 = !DILabel(scope: !2161, name: "store_escape", file: !287, line: 709)
!2194 = !DILabel(scope: !2161, name: "store_c", file: !287, line: 712)
!2195 = !DILabel(scope: !2128, name: "force_outer_quoting_style", file: !287, line: 753)
!2196 = !DILocation(line: 0, scope: !2128)
!2197 = !DILocation(line: 258, column: 25, scope: !2128)
!2198 = !DILocation(line: 258, column: 36, scope: !2128)
!2199 = !DILocation(line: 267, column: 3, scope: !2128)
!2200 = !DILocation(line: 261, column: 10, scope: !2128)
!2201 = !DILocation(line: 262, column: 15, scope: !2128)
!2202 = !DILocation(line: 263, column: 10, scope: !2128)
!2203 = !DILocation(line: 308, column: 2, scope: !2128)
!2204 = !DILocation(line: 311, column: 3, scope: !2128)
!2205 = !DILocation(line: 318, column: 11, scope: !2157)
!2206 = !DILocation(line: 319, column: 9, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !287, line: 319, column: 9)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !287, line: 319, column: 9)
!2209 = distinct !DILexicalBlock(scope: !2157, file: !287, line: 318, column: 11)
!2210 = !DILocation(line: 319, column: 9, scope: !2208)
!2211 = !DILocation(line: 0, scope: !323, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 357, column: 26, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !287, line: 335, column: 11)
!2214 = distinct !DILexicalBlock(scope: !2156, file: !287, line: 334, column: 13)
!2215 = !DILocation(line: 199, column: 29, scope: !323, inlinedAt: !2212)
!2216 = !DILocation(line: 201, column: 19, scope: !2217, inlinedAt: !2212)
!2217 = distinct !DILexicalBlock(scope: !323, file: !287, line: 201, column: 7)
!2218 = !DILocation(line: 201, column: 7, scope: !323, inlinedAt: !2212)
!2219 = !DILocation(line: 229, column: 3, scope: !323, inlinedAt: !2212)
!2220 = !DILocation(line: 230, column: 3, scope: !323, inlinedAt: !2212)
!2221 = !DILocation(line: 230, column: 13, scope: !323, inlinedAt: !2212)
!2222 = !DILocalVariable(name: "ps", arg: 1, scope: !2223, file: !1974, line: 1135, type: !2226)
!2223 = distinct !DISubprogram(name: "mbszero", scope: !1974, file: !1974, line: 1135, type: !2224, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2227)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !2226}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!2227 = !{!2222}
!2228 = !DILocation(line: 0, scope: !2223, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 230, column: 18, scope: !323, inlinedAt: !2212)
!2230 = !DILocalVariable(name: "__dest", arg: 1, scope: !2231, file: !1983, line: 57, type: !52)
!2231 = distinct !DISubprogram(name: "memset", scope: !1983, file: !1983, line: 57, type: !1984, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2232)
!2232 = !{!2230, !2233, !2234}
!2233 = !DILocalVariable(name: "__ch", arg: 2, scope: !2231, file: !1983, line: 57, type: !6)
!2234 = !DILocalVariable(name: "__len", arg: 3, scope: !2231, file: !1983, line: 57, type: !54)
!2235 = !DILocation(line: 0, scope: !2231, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 1137, column: 3, scope: !2223, inlinedAt: !2229)
!2237 = !DILocation(line: 59, column: 10, scope: !2231, inlinedAt: !2236)
!2238 = !DILocation(line: 231, column: 7, scope: !2239, inlinedAt: !2212)
!2239 = distinct !DILexicalBlock(scope: !323, file: !287, line: 231, column: 7)
!2240 = !DILocation(line: 231, column: 40, scope: !2239, inlinedAt: !2212)
!2241 = !DILocation(line: 231, column: 45, scope: !2239, inlinedAt: !2212)
!2242 = !DILocation(line: 235, column: 1, scope: !323, inlinedAt: !2212)
!2243 = !DILocation(line: 0, scope: !323, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 358, column: 27, scope: !2213)
!2245 = !DILocation(line: 199, column: 29, scope: !323, inlinedAt: !2244)
!2246 = !DILocation(line: 201, column: 19, scope: !2217, inlinedAt: !2244)
!2247 = !DILocation(line: 201, column: 7, scope: !323, inlinedAt: !2244)
!2248 = !DILocation(line: 229, column: 3, scope: !323, inlinedAt: !2244)
!2249 = !DILocation(line: 230, column: 3, scope: !323, inlinedAt: !2244)
!2250 = !DILocation(line: 230, column: 13, scope: !323, inlinedAt: !2244)
!2251 = !DILocation(line: 0, scope: !2223, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 230, column: 18, scope: !323, inlinedAt: !2244)
!2253 = !DILocation(line: 0, scope: !2231, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 1137, column: 3, scope: !2223, inlinedAt: !2252)
!2255 = !DILocation(line: 59, column: 10, scope: !2231, inlinedAt: !2254)
!2256 = !DILocation(line: 231, column: 7, scope: !2239, inlinedAt: !2244)
!2257 = !DILocation(line: 231, column: 40, scope: !2239, inlinedAt: !2244)
!2258 = !DILocation(line: 231, column: 45, scope: !2239, inlinedAt: !2244)
!2259 = !DILocation(line: 235, column: 1, scope: !323, inlinedAt: !2244)
!2260 = !DILocation(line: 360, column: 13, scope: !2156)
!2261 = !DILocation(line: 0, scope: !2154)
!2262 = !DILocation(line: 361, column: 45, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2154, file: !287, line: 361, column: 11)
!2264 = !DILocation(line: 361, column: 11, scope: !2154)
!2265 = !DILocation(line: 362, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !287, line: 362, column: 13)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !287, line: 362, column: 13)
!2268 = !DILocation(line: 362, column: 13, scope: !2267)
!2269 = !DILocation(line: 361, column: 52, scope: !2263)
!2270 = distinct !{!2270, !2264, !2271, !543}
!2271 = !DILocation(line: 362, column: 13, scope: !2154)
!2272 = !DILocation(line: 260, column: 10, scope: !2128)
!2273 = !DILocation(line: 365, column: 28, scope: !2156)
!2274 = !DILocation(line: 367, column: 7, scope: !2157)
!2275 = !DILocation(line: 370, column: 7, scope: !2157)
!2276 = !DILocation(line: 376, column: 11, scope: !2157)
!2277 = !DILocation(line: 381, column: 11, scope: !2157)
!2278 = !DILocation(line: 382, column: 9, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !287, line: 382, column: 9)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !287, line: 382, column: 9)
!2281 = distinct !DILexicalBlock(scope: !2157, file: !287, line: 381, column: 11)
!2282 = !DILocation(line: 382, column: 9, scope: !2280)
!2283 = !DILocation(line: 389, column: 7, scope: !2157)
!2284 = !DILocation(line: 392, column: 7, scope: !2157)
!2285 = !DILocation(line: 0, scope: !2159)
!2286 = !DILocation(line: 395, column: 8, scope: !2159)
!2287 = !DILocation(line: 395, column: 34, scope: !2162)
!2288 = !DILocation(line: 395, column: 26, scope: !2162)
!2289 = !DILocation(line: 395, column: 48, scope: !2162)
!2290 = !DILocation(line: 395, column: 55, scope: !2162)
!2291 = !DILocation(line: 395, column: 3, scope: !2159)
!2292 = !DILocation(line: 395, column: 67, scope: !2162)
!2293 = !DILocation(line: 0, scope: !2161)
!2294 = !DILocation(line: 402, column: 11, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2161, file: !287, line: 401, column: 11)
!2296 = !DILocation(line: 404, column: 17, scope: !2295)
!2297 = !DILocation(line: 405, column: 39, scope: !2295)
!2298 = !DILocation(line: 409, column: 32, scope: !2295)
!2299 = !DILocation(line: 405, column: 19, scope: !2295)
!2300 = !DILocation(line: 405, column: 15, scope: !2295)
!2301 = !DILocation(line: 410, column: 11, scope: !2295)
!2302 = !DILocation(line: 410, column: 25, scope: !2295)
!2303 = !DILocalVariable(name: "__s1", arg: 1, scope: !2304, file: !527, line: 974, type: !694)
!2304 = distinct !DISubprogram(name: "memeq", scope: !527, file: !527, line: 974, type: !1945, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2305)
!2305 = !{!2303, !2306, !2307}
!2306 = !DILocalVariable(name: "__s2", arg: 2, scope: !2304, file: !527, line: 974, type: !694)
!2307 = !DILocalVariable(name: "__n", arg: 3, scope: !2304, file: !527, line: 974, type: !54)
!2308 = !DILocation(line: 0, scope: !2304, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 410, column: 14, scope: !2295)
!2310 = !DILocation(line: 976, column: 11, scope: !2304, inlinedAt: !2309)
!2311 = !DILocation(line: 976, column: 10, scope: !2304, inlinedAt: !2309)
!2312 = !DILocation(line: 401, column: 11, scope: !2161)
!2313 = !DILocation(line: 417, column: 25, scope: !2161)
!2314 = !DILocation(line: 418, column: 7, scope: !2161)
!2315 = !DILocation(line: 421, column: 15, scope: !2168)
!2316 = !DILocation(line: 423, column: 15, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !287, line: 423, column: 15)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !287, line: 422, column: 13)
!2319 = distinct !DILexicalBlock(scope: !2168, file: !287, line: 421, column: 15)
!2320 = !DILocation(line: 423, column: 15, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !287, line: 423, column: 15)
!2322 = !DILocation(line: 423, column: 15, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !287, line: 423, column: 15)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !287, line: 423, column: 15)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !287, line: 423, column: 15)
!2326 = !DILocation(line: 423, column: 15, scope: !2324)
!2327 = !DILocation(line: 423, column: 15, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !287, line: 423, column: 15)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !287, line: 423, column: 15)
!2330 = !DILocation(line: 423, column: 15, scope: !2329)
!2331 = !DILocation(line: 423, column: 15, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !287, line: 423, column: 15)
!2333 = distinct !DILexicalBlock(scope: !2325, file: !287, line: 423, column: 15)
!2334 = !DILocation(line: 423, column: 15, scope: !2333)
!2335 = !DILocation(line: 423, column: 15, scope: !2325)
!2336 = !DILocation(line: 423, column: 15, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !287, line: 423, column: 15)
!2338 = distinct !DILexicalBlock(scope: !2317, file: !287, line: 423, column: 15)
!2339 = !DILocation(line: 423, column: 15, scope: !2338)
!2340 = !DILocation(line: 431, column: 19, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2318, file: !287, line: 430, column: 19)
!2342 = !DILocation(line: 431, column: 24, scope: !2341)
!2343 = !DILocation(line: 431, column: 28, scope: !2341)
!2344 = !DILocation(line: 431, column: 38, scope: !2341)
!2345 = !DILocation(line: 431, column: 48, scope: !2341)
!2346 = !DILocation(line: 431, column: 59, scope: !2341)
!2347 = !DILocation(line: 433, column: 19, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !287, line: 433, column: 19)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !287, line: 433, column: 19)
!2350 = distinct !DILexicalBlock(scope: !2341, file: !287, line: 432, column: 17)
!2351 = !DILocation(line: 433, column: 19, scope: !2349)
!2352 = !DILocation(line: 434, column: 19, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !287, line: 434, column: 19)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !287, line: 434, column: 19)
!2355 = !DILocation(line: 434, column: 19, scope: !2354)
!2356 = !DILocation(line: 435, column: 17, scope: !2350)
!2357 = !DILocation(line: 442, column: 20, scope: !2319)
!2358 = !DILocation(line: 447, column: 11, scope: !2168)
!2359 = !DILocation(line: 450, column: 19, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2168, file: !287, line: 448, column: 13)
!2361 = !DILocation(line: 456, column: 19, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2360, file: !287, line: 455, column: 19)
!2363 = !DILocation(line: 456, column: 24, scope: !2362)
!2364 = !DILocation(line: 456, column: 28, scope: !2362)
!2365 = !DILocation(line: 456, column: 38, scope: !2362)
!2366 = !DILocation(line: 456, column: 47, scope: !2362)
!2367 = !DILocation(line: 456, column: 41, scope: !2362)
!2368 = !DILocation(line: 456, column: 52, scope: !2362)
!2369 = !DILocation(line: 455, column: 19, scope: !2360)
!2370 = !DILocation(line: 457, column: 25, scope: !2362)
!2371 = !DILocation(line: 457, column: 17, scope: !2362)
!2372 = !DILocation(line: 464, column: 25, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2362, file: !287, line: 458, column: 19)
!2374 = !DILocation(line: 468, column: 21, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !287, line: 468, column: 21)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !287, line: 468, column: 21)
!2377 = !DILocation(line: 468, column: 21, scope: !2376)
!2378 = !DILocation(line: 469, column: 21, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !287, line: 469, column: 21)
!2380 = distinct !DILexicalBlock(scope: !2373, file: !287, line: 469, column: 21)
!2381 = !DILocation(line: 469, column: 21, scope: !2380)
!2382 = !DILocation(line: 470, column: 21, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !287, line: 470, column: 21)
!2384 = distinct !DILexicalBlock(scope: !2373, file: !287, line: 470, column: 21)
!2385 = !DILocation(line: 470, column: 21, scope: !2384)
!2386 = !DILocation(line: 471, column: 21, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !287, line: 471, column: 21)
!2388 = distinct !DILexicalBlock(scope: !2373, file: !287, line: 471, column: 21)
!2389 = !DILocation(line: 471, column: 21, scope: !2388)
!2390 = !DILocation(line: 472, column: 21, scope: !2373)
!2391 = !DILocation(line: 482, column: 33, scope: !2191)
!2392 = !DILocation(line: 483, column: 33, scope: !2191)
!2393 = !DILocation(line: 485, column: 33, scope: !2191)
!2394 = !DILocation(line: 486, column: 33, scope: !2191)
!2395 = !DILocation(line: 487, column: 33, scope: !2191)
!2396 = !DILocation(line: 490, column: 17, scope: !2191)
!2397 = !DILocation(line: 492, column: 21, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !287, line: 491, column: 15)
!2399 = distinct !DILexicalBlock(scope: !2191, file: !287, line: 490, column: 17)
!2400 = !DILocation(line: 499, column: 35, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2191, file: !287, line: 499, column: 17)
!2402 = !DILocation(line: 499, column: 57, scope: !2401)
!2403 = !DILocation(line: 0, scope: !2191)
!2404 = !DILocation(line: 502, column: 11, scope: !2191)
!2405 = !DILocation(line: 504, column: 17, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2191, file: !287, line: 503, column: 17)
!2407 = !DILocation(line: 507, column: 11, scope: !2191)
!2408 = !DILocation(line: 508, column: 17, scope: !2191)
!2409 = !DILocation(line: 517, column: 15, scope: !2168)
!2410 = !DILocation(line: 517, column: 40, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2168, file: !287, line: 517, column: 15)
!2412 = !DILocation(line: 517, column: 47, scope: !2411)
!2413 = !DILocation(line: 517, column: 18, scope: !2411)
!2414 = !DILocation(line: 521, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2168, file: !287, line: 521, column: 15)
!2416 = !DILocation(line: 521, column: 15, scope: !2168)
!2417 = !DILocation(line: 525, column: 11, scope: !2168)
!2418 = !DILocation(line: 537, column: 15, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2168, file: !287, line: 536, column: 15)
!2420 = !DILocation(line: 536, column: 15, scope: !2168)
!2421 = !DILocation(line: 544, column: 15, scope: !2168)
!2422 = !DILocation(line: 546, column: 19, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !287, line: 545, column: 13)
!2424 = distinct !DILexicalBlock(scope: !2168, file: !287, line: 544, column: 15)
!2425 = !DILocation(line: 549, column: 19, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !287, line: 549, column: 19)
!2427 = !DILocation(line: 549, column: 30, scope: !2426)
!2428 = !DILocation(line: 558, column: 15, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !287, line: 558, column: 15)
!2430 = distinct !DILexicalBlock(scope: !2423, file: !287, line: 558, column: 15)
!2431 = !DILocation(line: 558, column: 15, scope: !2430)
!2432 = !DILocation(line: 559, column: 15, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !287, line: 559, column: 15)
!2434 = distinct !DILexicalBlock(scope: !2423, file: !287, line: 559, column: 15)
!2435 = !DILocation(line: 559, column: 15, scope: !2434)
!2436 = !DILocation(line: 560, column: 15, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !287, line: 560, column: 15)
!2438 = distinct !DILexicalBlock(scope: !2423, file: !287, line: 560, column: 15)
!2439 = !DILocation(line: 560, column: 15, scope: !2438)
!2440 = !DILocation(line: 562, column: 13, scope: !2423)
!2441 = !DILocation(line: 602, column: 17, scope: !2167)
!2442 = !DILocation(line: 0, scope: !2167)
!2443 = !DILocation(line: 605, column: 29, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2172, file: !287, line: 603, column: 15)
!2445 = !DILocation(line: 605, column: 41, scope: !2444)
!2446 = !DILocation(line: 670, column: 23, scope: !2188)
!2447 = !DILocation(line: 609, column: 17, scope: !2171)
!2448 = !DILocation(line: 609, column: 27, scope: !2171)
!2449 = !DILocation(line: 0, scope: !2223, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 609, column: 32, scope: !2171)
!2451 = !DILocation(line: 0, scope: !2231, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 1137, column: 3, scope: !2223, inlinedAt: !2450)
!2453 = !DILocation(line: 59, column: 10, scope: !2231, inlinedAt: !2452)
!2454 = !DILocation(line: 613, column: 29, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2171, file: !287, line: 613, column: 21)
!2456 = !DILocation(line: 613, column: 21, scope: !2171)
!2457 = !DILocation(line: 614, column: 29, scope: !2455)
!2458 = !DILocation(line: 614, column: 19, scope: !2455)
!2459 = !DILocation(line: 618, column: 21, scope: !2174)
!2460 = !DILocation(line: 620, column: 54, scope: !2174)
!2461 = !DILocation(line: 0, scope: !2174)
!2462 = !DILocation(line: 619, column: 36, scope: !2174)
!2463 = !DILocation(line: 621, column: 25, scope: !2174)
!2464 = !DILocation(line: 631, column: 38, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2183, file: !287, line: 629, column: 23)
!2466 = !DILocation(line: 631, column: 48, scope: !2465)
!2467 = !DILocation(line: 665, column: 19, scope: !2175)
!2468 = !DILocation(line: 666, column: 15, scope: !2172)
!2469 = !DILocation(line: 626, column: 25, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2184, file: !287, line: 624, column: 23)
!2471 = !DILocation(line: 631, column: 51, scope: !2465)
!2472 = !DILocation(line: 631, column: 25, scope: !2465)
!2473 = !DILocation(line: 632, column: 28, scope: !2465)
!2474 = !DILocation(line: 631, column: 34, scope: !2465)
!2475 = distinct !{!2475, !2472, !2473, !543}
!2476 = !DILocation(line: 646, column: 29, scope: !2181)
!2477 = !DILocation(line: 0, scope: !2179)
!2478 = !DILocation(line: 649, column: 49, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2179, file: !287, line: 648, column: 29)
!2480 = !DILocation(line: 649, column: 39, scope: !2479)
!2481 = !DILocation(line: 649, column: 31, scope: !2479)
!2482 = !DILocation(line: 648, column: 60, scope: !2479)
!2483 = !DILocation(line: 648, column: 50, scope: !2479)
!2484 = !DILocation(line: 648, column: 29, scope: !2179)
!2485 = distinct !{!2485, !2484, !2486, !543}
!2486 = !DILocation(line: 654, column: 33, scope: !2179)
!2487 = !DILocation(line: 657, column: 43, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2182, file: !287, line: 657, column: 29)
!2489 = !DILocalVariable(name: "wc", arg: 1, scope: !2490, file: !2491, line: 865, type: !2494)
!2490 = distinct !DISubprogram(name: "c32isprint", scope: !2491, file: !2491, line: 865, type: !2492, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2496)
!2491 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!6, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2495, line: 20, baseType: !14)
!2495 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2496 = !{!2489}
!2497 = !DILocation(line: 0, scope: !2490, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 657, column: 31, scope: !2488)
!2499 = !DILocation(line: 871, column: 10, scope: !2490, inlinedAt: !2498)
!2500 = !DILocation(line: 657, column: 31, scope: !2488)
!2501 = !DILocation(line: 664, column: 23, scope: !2174)
!2502 = !DILocation(line: 753, column: 2, scope: !2128)
!2503 = !DILocation(line: 756, column: 51, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2128, file: !287, line: 756, column: 7)
!2505 = !DILocation(line: 670, column: 19, scope: !2188)
!2506 = !DILocation(line: 670, column: 45, scope: !2188)
!2507 = !DILocation(line: 674, column: 33, scope: !2187)
!2508 = !DILocation(line: 0, scope: !2187)
!2509 = !DILocation(line: 676, column: 17, scope: !2187)
!2510 = !DILocation(line: 398, column: 12, scope: !2161)
!2511 = !DILocation(line: 678, column: 43, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !287, line: 678, column: 25)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !287, line: 677, column: 19)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !287, line: 676, column: 17)
!2515 = distinct !DILexicalBlock(scope: !2187, file: !287, line: 676, column: 17)
!2516 = !DILocation(line: 680, column: 25, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !287, line: 680, column: 25)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !287, line: 679, column: 23)
!2519 = !DILocation(line: 680, column: 25, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !287, line: 680, column: 25)
!2521 = !DILocation(line: 680, column: 25, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !287, line: 680, column: 25)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !287, line: 680, column: 25)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !287, line: 680, column: 25)
!2525 = !DILocation(line: 680, column: 25, scope: !2523)
!2526 = !DILocation(line: 680, column: 25, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !287, line: 680, column: 25)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !287, line: 680, column: 25)
!2529 = !DILocation(line: 680, column: 25, scope: !2528)
!2530 = !DILocation(line: 680, column: 25, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !287, line: 680, column: 25)
!2532 = distinct !DILexicalBlock(scope: !2524, file: !287, line: 680, column: 25)
!2533 = !DILocation(line: 680, column: 25, scope: !2532)
!2534 = !DILocation(line: 680, column: 25, scope: !2524)
!2535 = !DILocation(line: 680, column: 25, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !287, line: 680, column: 25)
!2537 = distinct !DILexicalBlock(scope: !2517, file: !287, line: 680, column: 25)
!2538 = !DILocation(line: 680, column: 25, scope: !2537)
!2539 = !DILocation(line: 681, column: 25, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !287, line: 681, column: 25)
!2541 = distinct !DILexicalBlock(scope: !2518, file: !287, line: 681, column: 25)
!2542 = !DILocation(line: 681, column: 25, scope: !2541)
!2543 = !DILocation(line: 682, column: 25, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !287, line: 682, column: 25)
!2545 = distinct !DILexicalBlock(scope: !2518, file: !287, line: 682, column: 25)
!2546 = !DILocation(line: 682, column: 25, scope: !2545)
!2547 = !DILocation(line: 683, column: 38, scope: !2518)
!2548 = !DILocation(line: 683, column: 33, scope: !2518)
!2549 = !DILocation(line: 684, column: 23, scope: !2518)
!2550 = !DILocation(line: 685, column: 30, scope: !2512)
!2551 = !DILocation(line: 687, column: 25, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !287, line: 687, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !287, line: 687, column: 25)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !287, line: 686, column: 23)
!2555 = distinct !DILexicalBlock(scope: !2512, file: !287, line: 685, column: 30)
!2556 = !DILocation(line: 687, column: 25, scope: !2553)
!2557 = !DILocation(line: 689, column: 23, scope: !2554)
!2558 = !DILocation(line: 690, column: 35, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2513, file: !287, line: 690, column: 25)
!2560 = !DILocation(line: 690, column: 30, scope: !2559)
!2561 = !DILocation(line: 690, column: 25, scope: !2513)
!2562 = !DILocation(line: 692, column: 21, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !287, line: 692, column: 21)
!2564 = distinct !DILexicalBlock(scope: !2513, file: !287, line: 692, column: 21)
!2565 = !DILocation(line: 692, column: 21, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !287, line: 692, column: 21)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !287, line: 692, column: 21)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !287, line: 692, column: 21)
!2569 = !DILocation(line: 692, column: 21, scope: !2567)
!2570 = !DILocation(line: 692, column: 21, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !287, line: 692, column: 21)
!2572 = distinct !DILexicalBlock(scope: !2568, file: !287, line: 692, column: 21)
!2573 = !DILocation(line: 692, column: 21, scope: !2572)
!2574 = !DILocation(line: 692, column: 21, scope: !2568)
!2575 = !DILocation(line: 0, scope: !2513)
!2576 = !DILocation(line: 693, column: 21, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !287, line: 693, column: 21)
!2578 = distinct !DILexicalBlock(scope: !2513, file: !287, line: 693, column: 21)
!2579 = !DILocation(line: 693, column: 21, scope: !2578)
!2580 = !DILocation(line: 694, column: 25, scope: !2513)
!2581 = !DILocation(line: 676, column: 17, scope: !2514)
!2582 = distinct !{!2582, !2583, !2584}
!2583 = !DILocation(line: 676, column: 17, scope: !2515)
!2584 = !DILocation(line: 695, column: 19, scope: !2515)
!2585 = !DILocation(line: 409, column: 30, scope: !2295)
!2586 = !DILocation(line: 702, column: 34, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2161, file: !287, line: 702, column: 11)
!2588 = !DILocation(line: 704, column: 14, scope: !2587)
!2589 = !DILocation(line: 705, column: 14, scope: !2587)
!2590 = !DILocation(line: 705, column: 35, scope: !2587)
!2591 = !DILocation(line: 705, column: 17, scope: !2587)
!2592 = !DILocation(line: 705, column: 47, scope: !2587)
!2593 = !DILocation(line: 705, column: 65, scope: !2587)
!2594 = !DILocation(line: 706, column: 11, scope: !2587)
!2595 = !DILocation(line: 702, column: 11, scope: !2161)
!2596 = !DILocation(line: 395, column: 15, scope: !2159)
!2597 = !DILocation(line: 709, column: 5, scope: !2161)
!2598 = !DILocation(line: 710, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2161, file: !287, line: 710, column: 7)
!2600 = !DILocation(line: 710, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2599, file: !287, line: 710, column: 7)
!2602 = !DILocation(line: 710, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !287, line: 710, column: 7)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !287, line: 710, column: 7)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !287, line: 710, column: 7)
!2606 = !DILocation(line: 710, column: 7, scope: !2604)
!2607 = !DILocation(line: 710, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !287, line: 710, column: 7)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !287, line: 710, column: 7)
!2610 = !DILocation(line: 710, column: 7, scope: !2609)
!2611 = !DILocation(line: 710, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !287, line: 710, column: 7)
!2613 = distinct !DILexicalBlock(scope: !2605, file: !287, line: 710, column: 7)
!2614 = !DILocation(line: 710, column: 7, scope: !2613)
!2615 = !DILocation(line: 710, column: 7, scope: !2605)
!2616 = !DILocation(line: 710, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !287, line: 710, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2599, file: !287, line: 710, column: 7)
!2619 = !DILocation(line: 710, column: 7, scope: !2618)
!2620 = !DILocation(line: 712, column: 5, scope: !2161)
!2621 = !DILocation(line: 713, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !287, line: 713, column: 7)
!2623 = distinct !DILexicalBlock(scope: !2161, file: !287, line: 713, column: 7)
!2624 = !DILocation(line: 417, column: 21, scope: !2161)
!2625 = !DILocation(line: 713, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !287, line: 713, column: 7)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !287, line: 713, column: 7)
!2628 = distinct !DILexicalBlock(scope: !2622, file: !287, line: 713, column: 7)
!2629 = !DILocation(line: 713, column: 7, scope: !2627)
!2630 = !DILocation(line: 713, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !287, line: 713, column: 7)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !287, line: 713, column: 7)
!2633 = !DILocation(line: 713, column: 7, scope: !2632)
!2634 = !DILocation(line: 713, column: 7, scope: !2628)
!2635 = !DILocation(line: 714, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !287, line: 714, column: 7)
!2637 = distinct !DILexicalBlock(scope: !2161, file: !287, line: 714, column: 7)
!2638 = !DILocation(line: 714, column: 7, scope: !2637)
!2639 = !DILocation(line: 716, column: 11, scope: !2161)
!2640 = !DILocation(line: 718, column: 5, scope: !2162)
!2641 = !DILocation(line: 395, column: 82, scope: !2162)
!2642 = !DILocation(line: 395, column: 3, scope: !2162)
!2643 = distinct !{!2643, !2291, !2644, !543}
!2644 = !DILocation(line: 718, column: 5, scope: !2159)
!2645 = !DILocation(line: 720, column: 11, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2128, file: !287, line: 720, column: 7)
!2647 = !DILocation(line: 720, column: 16, scope: !2646)
!2648 = !DILocation(line: 728, column: 51, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2128, file: !287, line: 728, column: 7)
!2650 = !DILocation(line: 731, column: 11, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2649, file: !287, line: 730, column: 5)
!2652 = !DILocation(line: 732, column: 16, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2651, file: !287, line: 731, column: 11)
!2654 = !DILocation(line: 732, column: 9, scope: !2653)
!2655 = !DILocation(line: 736, column: 18, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !287, line: 736, column: 16)
!2657 = !DILocation(line: 736, column: 29, scope: !2656)
!2658 = !DILocation(line: 745, column: 7, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2128, file: !287, line: 745, column: 7)
!2660 = !DILocation(line: 745, column: 20, scope: !2659)
!2661 = !DILocation(line: 746, column: 12, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !287, line: 746, column: 5)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !287, line: 746, column: 5)
!2664 = !DILocation(line: 746, column: 5, scope: !2663)
!2665 = !DILocation(line: 747, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !287, line: 747, column: 7)
!2667 = distinct !DILexicalBlock(scope: !2662, file: !287, line: 747, column: 7)
!2668 = !DILocation(line: 747, column: 7, scope: !2667)
!2669 = !DILocation(line: 746, column: 39, scope: !2662)
!2670 = distinct !{!2670, !2664, !2671, !543}
!2671 = !DILocation(line: 747, column: 7, scope: !2663)
!2672 = !DILocation(line: 749, column: 11, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2128, file: !287, line: 749, column: 7)
!2674 = !DILocation(line: 749, column: 7, scope: !2128)
!2675 = !DILocation(line: 750, column: 5, scope: !2673)
!2676 = !DILocation(line: 750, column: 17, scope: !2673)
!2677 = !DILocation(line: 756, column: 21, scope: !2504)
!2678 = !DILocation(line: 760, column: 42, scope: !2128)
!2679 = !DILocation(line: 758, column: 10, scope: !2128)
!2680 = !DILocation(line: 758, column: 3, scope: !2128)
!2681 = !DILocation(line: 762, column: 1, scope: !2128)
!2682 = !DISubprogram(name: "iswprint", scope: !2683, file: !2683, line: 120, type: !2492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!2683 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2684 = distinct !DISubprogram(name: "quotearg_alloc", scope: !287, file: !287, line: 788, type: !2685, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!8, !57, !54, !2020}
!2687 = !{!2688, !2689, !2690}
!2688 = !DILocalVariable(name: "arg", arg: 1, scope: !2684, file: !287, line: 788, type: !57)
!2689 = !DILocalVariable(name: "argsize", arg: 2, scope: !2684, file: !287, line: 788, type: !54)
!2690 = !DILocalVariable(name: "o", arg: 3, scope: !2684, file: !287, line: 789, type: !2020)
!2691 = !DILocation(line: 0, scope: !2684)
!2692 = !DILocalVariable(name: "arg", arg: 1, scope: !2693, file: !287, line: 801, type: !57)
!2693 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !287, file: !287, line: 801, type: !2694, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!8, !57, !54, !424, !2020}
!2696 = !{!2692, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704}
!2697 = !DILocalVariable(name: "argsize", arg: 2, scope: !2693, file: !287, line: 801, type: !54)
!2698 = !DILocalVariable(name: "size", arg: 3, scope: !2693, file: !287, line: 801, type: !424)
!2699 = !DILocalVariable(name: "o", arg: 4, scope: !2693, file: !287, line: 802, type: !2020)
!2700 = !DILocalVariable(name: "p", scope: !2693, file: !287, line: 804, type: !2020)
!2701 = !DILocalVariable(name: "saved_errno", scope: !2693, file: !287, line: 805, type: !6)
!2702 = !DILocalVariable(name: "flags", scope: !2693, file: !287, line: 807, type: !6)
!2703 = !DILocalVariable(name: "bufsize", scope: !2693, file: !287, line: 808, type: !54)
!2704 = !DILocalVariable(name: "buf", scope: !2693, file: !287, line: 812, type: !8)
!2705 = !DILocation(line: 0, scope: !2693, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 791, column: 10, scope: !2684)
!2707 = !DILocation(line: 804, column: 37, scope: !2693, inlinedAt: !2706)
!2708 = !DILocation(line: 805, column: 21, scope: !2693, inlinedAt: !2706)
!2709 = !DILocation(line: 807, column: 18, scope: !2693, inlinedAt: !2706)
!2710 = !DILocation(line: 807, column: 24, scope: !2693, inlinedAt: !2706)
!2711 = !DILocation(line: 808, column: 72, scope: !2693, inlinedAt: !2706)
!2712 = !DILocation(line: 809, column: 53, scope: !2693, inlinedAt: !2706)
!2713 = !DILocation(line: 810, column: 49, scope: !2693, inlinedAt: !2706)
!2714 = !DILocation(line: 811, column: 49, scope: !2693, inlinedAt: !2706)
!2715 = !DILocation(line: 808, column: 20, scope: !2693, inlinedAt: !2706)
!2716 = !DILocation(line: 811, column: 62, scope: !2693, inlinedAt: !2706)
!2717 = !DILocation(line: 812, column: 15, scope: !2693, inlinedAt: !2706)
!2718 = !DILocation(line: 813, column: 60, scope: !2693, inlinedAt: !2706)
!2719 = !DILocation(line: 815, column: 32, scope: !2693, inlinedAt: !2706)
!2720 = !DILocation(line: 815, column: 47, scope: !2693, inlinedAt: !2706)
!2721 = !DILocation(line: 813, column: 3, scope: !2693, inlinedAt: !2706)
!2722 = !DILocation(line: 816, column: 9, scope: !2693, inlinedAt: !2706)
!2723 = !DILocation(line: 791, column: 3, scope: !2684)
!2724 = !DILocation(line: 0, scope: !2693)
!2725 = !DILocation(line: 804, column: 37, scope: !2693)
!2726 = !DILocation(line: 805, column: 21, scope: !2693)
!2727 = !DILocation(line: 807, column: 18, scope: !2693)
!2728 = !DILocation(line: 807, column: 27, scope: !2693)
!2729 = !DILocation(line: 807, column: 24, scope: !2693)
!2730 = !DILocation(line: 808, column: 72, scope: !2693)
!2731 = !DILocation(line: 809, column: 53, scope: !2693)
!2732 = !DILocation(line: 810, column: 49, scope: !2693)
!2733 = !DILocation(line: 811, column: 49, scope: !2693)
!2734 = !DILocation(line: 808, column: 20, scope: !2693)
!2735 = !DILocation(line: 811, column: 62, scope: !2693)
!2736 = !DILocation(line: 812, column: 15, scope: !2693)
!2737 = !DILocation(line: 813, column: 60, scope: !2693)
!2738 = !DILocation(line: 815, column: 32, scope: !2693)
!2739 = !DILocation(line: 815, column: 47, scope: !2693)
!2740 = !DILocation(line: 813, column: 3, scope: !2693)
!2741 = !DILocation(line: 816, column: 9, scope: !2693)
!2742 = !DILocation(line: 817, column: 7, scope: !2693)
!2743 = !DILocation(line: 818, column: 11, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2693, file: !287, line: 817, column: 7)
!2745 = !DILocation(line: 818, column: 5, scope: !2744)
!2746 = !DILocation(line: 819, column: 3, scope: !2693)
!2747 = distinct !DISubprogram(name: "quotearg_free", scope: !287, file: !287, line: 837, type: !240, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2748)
!2748 = !{!2749, !2750}
!2749 = !DILocalVariable(name: "sv", scope: !2747, file: !287, line: 839, type: !346)
!2750 = !DILocalVariable(name: "i", scope: !2751, file: !287, line: 840, type: !6)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !287, line: 840, column: 3)
!2752 = !DILocation(line: 839, column: 24, scope: !2747)
!2753 = !DILocation(line: 0, scope: !2747)
!2754 = !DILocation(line: 0, scope: !2751)
!2755 = !DILocation(line: 840, column: 21, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2751, file: !287, line: 840, column: 3)
!2757 = !DILocation(line: 840, column: 3, scope: !2751)
!2758 = !DILocation(line: 842, column: 13, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2747, file: !287, line: 842, column: 7)
!2760 = !{!2761, !488, i64 8}
!2761 = !{!"slotvec", !802, i64 0, !488, i64 8}
!2762 = !DILocation(line: 842, column: 17, scope: !2759)
!2763 = !DILocation(line: 842, column: 7, scope: !2747)
!2764 = !DILocation(line: 841, column: 17, scope: !2756)
!2765 = !DILocation(line: 841, column: 5, scope: !2756)
!2766 = !DILocation(line: 840, column: 32, scope: !2756)
!2767 = distinct !{!2767, !2757, !2768, !543}
!2768 = !DILocation(line: 841, column: 20, scope: !2751)
!2769 = !DILocation(line: 844, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2759, file: !287, line: 843, column: 5)
!2771 = !DILocation(line: 845, column: 21, scope: !2770)
!2772 = !{!2761, !802, i64 0}
!2773 = !DILocation(line: 846, column: 20, scope: !2770)
!2774 = !DILocation(line: 847, column: 5, scope: !2770)
!2775 = !DILocation(line: 848, column: 10, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2747, file: !287, line: 848, column: 7)
!2777 = !DILocation(line: 848, column: 7, scope: !2747)
!2778 = !DILocation(line: 850, column: 13, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !287, line: 849, column: 5)
!2780 = !DILocation(line: 850, column: 7, scope: !2779)
!2781 = !DILocation(line: 851, column: 15, scope: !2779)
!2782 = !DILocation(line: 852, column: 5, scope: !2779)
!2783 = !DILocation(line: 853, column: 10, scope: !2747)
!2784 = !DILocation(line: 854, column: 1, scope: !2747)
!2785 = distinct !DISubprogram(name: "quotearg_n", scope: !287, file: !287, line: 919, type: !684, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2786)
!2786 = !{!2787, !2788}
!2787 = !DILocalVariable(name: "n", arg: 1, scope: !2785, file: !287, line: 919, type: !6)
!2788 = !DILocalVariable(name: "arg", arg: 2, scope: !2785, file: !287, line: 919, type: !57)
!2789 = !DILocation(line: 0, scope: !2785)
!2790 = !DILocation(line: 921, column: 10, scope: !2785)
!2791 = !DILocation(line: 921, column: 3, scope: !2785)
!2792 = distinct !DISubprogram(name: "quotearg_n_options", scope: !287, file: !287, line: 866, type: !2793, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!8, !6, !57, !54, !2020}
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2806, !2807, !2809, !2810, !2811}
!2796 = !DILocalVariable(name: "n", arg: 1, scope: !2792, file: !287, line: 866, type: !6)
!2797 = !DILocalVariable(name: "arg", arg: 2, scope: !2792, file: !287, line: 866, type: !57)
!2798 = !DILocalVariable(name: "argsize", arg: 3, scope: !2792, file: !287, line: 866, type: !54)
!2799 = !DILocalVariable(name: "options", arg: 4, scope: !2792, file: !287, line: 867, type: !2020)
!2800 = !DILocalVariable(name: "saved_errno", scope: !2792, file: !287, line: 869, type: !6)
!2801 = !DILocalVariable(name: "sv", scope: !2792, file: !287, line: 871, type: !346)
!2802 = !DILocalVariable(name: "nslots_max", scope: !2792, file: !287, line: 873, type: !6)
!2803 = !DILocalVariable(name: "preallocated", scope: !2804, file: !287, line: 879, type: !74)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !287, line: 878, column: 5)
!2805 = distinct !DILexicalBlock(scope: !2792, file: !287, line: 877, column: 7)
!2806 = !DILocalVariable(name: "new_nslots", scope: !2804, file: !287, line: 880, type: !437)
!2807 = !DILocalVariable(name: "size", scope: !2808, file: !287, line: 891, type: !54)
!2808 = distinct !DILexicalBlock(scope: !2792, file: !287, line: 890, column: 3)
!2809 = !DILocalVariable(name: "val", scope: !2808, file: !287, line: 892, type: !8)
!2810 = !DILocalVariable(name: "flags", scope: !2808, file: !287, line: 894, type: !6)
!2811 = !DILocalVariable(name: "qsize", scope: !2808, file: !287, line: 895, type: !54)
!2812 = !DILocation(line: 0, scope: !2792)
!2813 = !DILocation(line: 869, column: 21, scope: !2792)
!2814 = !DILocation(line: 871, column: 24, scope: !2792)
!2815 = !DILocation(line: 874, column: 17, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2792, file: !287, line: 874, column: 7)
!2817 = !DILocation(line: 875, column: 5, scope: !2816)
!2818 = !DILocation(line: 877, column: 7, scope: !2805)
!2819 = !DILocation(line: 877, column: 14, scope: !2805)
!2820 = !DILocation(line: 877, column: 7, scope: !2792)
!2821 = !DILocation(line: 879, column: 31, scope: !2804)
!2822 = !DILocation(line: 0, scope: !2804)
!2823 = !DILocation(line: 880, column: 7, scope: !2804)
!2824 = !DILocation(line: 880, column: 26, scope: !2804)
!2825 = !DILocation(line: 880, column: 13, scope: !2804)
!2826 = !DILocation(line: 882, column: 31, scope: !2804)
!2827 = !DILocation(line: 883, column: 33, scope: !2804)
!2828 = !DILocation(line: 883, column: 42, scope: !2804)
!2829 = !DILocation(line: 883, column: 31, scope: !2804)
!2830 = !DILocation(line: 882, column: 22, scope: !2804)
!2831 = !DILocation(line: 882, column: 15, scope: !2804)
!2832 = !DILocation(line: 884, column: 11, scope: !2804)
!2833 = !DILocation(line: 885, column: 15, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2804, file: !287, line: 884, column: 11)
!2835 = !{i64 0, i64 8, !1051, i64 8, i64 8, !487}
!2836 = !DILocation(line: 885, column: 9, scope: !2834)
!2837 = !DILocation(line: 886, column: 20, scope: !2804)
!2838 = !DILocation(line: 886, column: 18, scope: !2804)
!2839 = !DILocation(line: 886, column: 15, scope: !2804)
!2840 = !DILocation(line: 886, column: 32, scope: !2804)
!2841 = !DILocation(line: 886, column: 43, scope: !2804)
!2842 = !DILocation(line: 886, column: 53, scope: !2804)
!2843 = !DILocation(line: 0, scope: !2231, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 886, column: 7, scope: !2804)
!2845 = !DILocation(line: 59, column: 10, scope: !2231, inlinedAt: !2844)
!2846 = !DILocation(line: 887, column: 16, scope: !2804)
!2847 = !DILocation(line: 887, column: 14, scope: !2804)
!2848 = !DILocation(line: 888, column: 5, scope: !2805)
!2849 = !DILocation(line: 888, column: 5, scope: !2804)
!2850 = !DILocation(line: 891, column: 19, scope: !2808)
!2851 = !DILocation(line: 891, column: 25, scope: !2808)
!2852 = !DILocation(line: 0, scope: !2808)
!2853 = !DILocation(line: 892, column: 23, scope: !2808)
!2854 = !DILocation(line: 894, column: 26, scope: !2808)
!2855 = !DILocation(line: 894, column: 32, scope: !2808)
!2856 = !DILocation(line: 896, column: 55, scope: !2808)
!2857 = !DILocation(line: 897, column: 46, scope: !2808)
!2858 = !DILocation(line: 898, column: 55, scope: !2808)
!2859 = !DILocation(line: 899, column: 55, scope: !2808)
!2860 = !DILocation(line: 895, column: 20, scope: !2808)
!2861 = !DILocation(line: 901, column: 14, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2808, file: !287, line: 901, column: 9)
!2863 = !DILocation(line: 901, column: 9, scope: !2808)
!2864 = !DILocation(line: 903, column: 35, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !287, line: 902, column: 7)
!2866 = !DILocation(line: 903, column: 20, scope: !2865)
!2867 = !DILocation(line: 904, column: 17, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !287, line: 904, column: 13)
!2869 = !DILocation(line: 904, column: 13, scope: !2865)
!2870 = !DILocation(line: 905, column: 11, scope: !2868)
!2871 = !DILocation(line: 906, column: 27, scope: !2865)
!2872 = !DILocation(line: 906, column: 19, scope: !2865)
!2873 = !DILocation(line: 907, column: 69, scope: !2865)
!2874 = !DILocation(line: 909, column: 44, scope: !2865)
!2875 = !DILocation(line: 910, column: 44, scope: !2865)
!2876 = !DILocation(line: 907, column: 9, scope: !2865)
!2877 = !DILocation(line: 911, column: 7, scope: !2865)
!2878 = !DILocation(line: 913, column: 11, scope: !2808)
!2879 = !DILocation(line: 914, column: 5, scope: !2808)
!2880 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !287, file: !287, line: 925, type: !2881, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!8, !6, !57, !54}
!2883 = !{!2884, !2885, !2886}
!2884 = !DILocalVariable(name: "n", arg: 1, scope: !2880, file: !287, line: 925, type: !6)
!2885 = !DILocalVariable(name: "arg", arg: 2, scope: !2880, file: !287, line: 925, type: !57)
!2886 = !DILocalVariable(name: "argsize", arg: 3, scope: !2880, file: !287, line: 925, type: !54)
!2887 = !DILocation(line: 0, scope: !2880)
!2888 = !DILocation(line: 927, column: 10, scope: !2880)
!2889 = !DILocation(line: 927, column: 3, scope: !2880)
!2890 = distinct !DISubprogram(name: "quotearg", scope: !287, file: !287, line: 931, type: !688, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2891)
!2891 = !{!2892}
!2892 = !DILocalVariable(name: "arg", arg: 1, scope: !2890, file: !287, line: 931, type: !57)
!2893 = !DILocation(line: 0, scope: !2890)
!2894 = !DILocation(line: 0, scope: !2785, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 933, column: 10, scope: !2890)
!2896 = !DILocation(line: 921, column: 10, scope: !2785, inlinedAt: !2895)
!2897 = !DILocation(line: 933, column: 3, scope: !2890)
!2898 = distinct !DISubprogram(name: "quotearg_mem", scope: !287, file: !287, line: 937, type: !2899, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!8, !57, !54}
!2901 = !{!2902, !2903}
!2902 = !DILocalVariable(name: "arg", arg: 1, scope: !2898, file: !287, line: 937, type: !57)
!2903 = !DILocalVariable(name: "argsize", arg: 2, scope: !2898, file: !287, line: 937, type: !54)
!2904 = !DILocation(line: 0, scope: !2898)
!2905 = !DILocation(line: 0, scope: !2880, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 939, column: 10, scope: !2898)
!2907 = !DILocation(line: 927, column: 10, scope: !2880, inlinedAt: !2906)
!2908 = !DILocation(line: 939, column: 3, scope: !2898)
!2909 = distinct !DISubprogram(name: "quotearg_n_style", scope: !287, file: !287, line: 943, type: !2910, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!8, !6, !28, !57}
!2912 = !{!2913, !2914, !2915, !2916}
!2913 = !DILocalVariable(name: "n", arg: 1, scope: !2909, file: !287, line: 943, type: !6)
!2914 = !DILocalVariable(name: "s", arg: 2, scope: !2909, file: !287, line: 943, type: !28)
!2915 = !DILocalVariable(name: "arg", arg: 3, scope: !2909, file: !287, line: 943, type: !57)
!2916 = !DILocalVariable(name: "o", scope: !2909, file: !287, line: 945, type: !2021)
!2917 = !DILocation(line: 0, scope: !2909)
!2918 = !DILocation(line: 945, column: 3, scope: !2909)
!2919 = !DILocation(line: 945, column: 32, scope: !2909)
!2920 = !{!2921}
!2921 = distinct !{!2921, !2922, !"quoting_options_from_style: argument 0"}
!2922 = distinct !{!2922, !"quoting_options_from_style"}
!2923 = !DILocation(line: 945, column: 36, scope: !2909)
!2924 = !DILocalVariable(name: "style", arg: 1, scope: !2925, file: !287, line: 183, type: !28)
!2925 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !287, file: !287, line: 183, type: !2926, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!304, !28}
!2928 = !{!2924, !2929}
!2929 = !DILocalVariable(name: "o", scope: !2925, file: !287, line: 185, type: !304)
!2930 = !DILocation(line: 0, scope: !2925, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 945, column: 36, scope: !2909)
!2932 = !DILocation(line: 185, column: 26, scope: !2925, inlinedAt: !2931)
!2933 = !DILocation(line: 186, column: 13, scope: !2934, inlinedAt: !2931)
!2934 = distinct !DILexicalBlock(scope: !2925, file: !287, line: 186, column: 7)
!2935 = !DILocation(line: 186, column: 7, scope: !2925, inlinedAt: !2931)
!2936 = !DILocation(line: 187, column: 5, scope: !2934, inlinedAt: !2931)
!2937 = !DILocation(line: 188, column: 5, scope: !2925, inlinedAt: !2931)
!2938 = !DILocation(line: 188, column: 11, scope: !2925, inlinedAt: !2931)
!2939 = !DILocation(line: 946, column: 10, scope: !2909)
!2940 = !DILocation(line: 947, column: 1, scope: !2909)
!2941 = !DILocation(line: 946, column: 3, scope: !2909)
!2942 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !287, file: !287, line: 950, type: !2943, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!8, !6, !28, !57, !54}
!2945 = !{!2946, !2947, !2948, !2949, !2950}
!2946 = !DILocalVariable(name: "n", arg: 1, scope: !2942, file: !287, line: 950, type: !6)
!2947 = !DILocalVariable(name: "s", arg: 2, scope: !2942, file: !287, line: 950, type: !28)
!2948 = !DILocalVariable(name: "arg", arg: 3, scope: !2942, file: !287, line: 951, type: !57)
!2949 = !DILocalVariable(name: "argsize", arg: 4, scope: !2942, file: !287, line: 951, type: !54)
!2950 = !DILocalVariable(name: "o", scope: !2942, file: !287, line: 953, type: !2021)
!2951 = !DILocation(line: 0, scope: !2942)
!2952 = !DILocation(line: 953, column: 3, scope: !2942)
!2953 = !DILocation(line: 953, column: 32, scope: !2942)
!2954 = !{!2955}
!2955 = distinct !{!2955, !2956, !"quoting_options_from_style: argument 0"}
!2956 = distinct !{!2956, !"quoting_options_from_style"}
!2957 = !DILocation(line: 953, column: 36, scope: !2942)
!2958 = !DILocation(line: 0, scope: !2925, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 953, column: 36, scope: !2942)
!2960 = !DILocation(line: 185, column: 26, scope: !2925, inlinedAt: !2959)
!2961 = !DILocation(line: 186, column: 13, scope: !2934, inlinedAt: !2959)
!2962 = !DILocation(line: 186, column: 7, scope: !2925, inlinedAt: !2959)
!2963 = !DILocation(line: 187, column: 5, scope: !2934, inlinedAt: !2959)
!2964 = !DILocation(line: 188, column: 5, scope: !2925, inlinedAt: !2959)
!2965 = !DILocation(line: 188, column: 11, scope: !2925, inlinedAt: !2959)
!2966 = !DILocation(line: 954, column: 10, scope: !2942)
!2967 = !DILocation(line: 955, column: 1, scope: !2942)
!2968 = !DILocation(line: 954, column: 3, scope: !2942)
!2969 = distinct !DISubprogram(name: "quotearg_style", scope: !287, file: !287, line: 958, type: !2970, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!8, !28, !57}
!2972 = !{!2973, !2974}
!2973 = !DILocalVariable(name: "s", arg: 1, scope: !2969, file: !287, line: 958, type: !28)
!2974 = !DILocalVariable(name: "arg", arg: 2, scope: !2969, file: !287, line: 958, type: !57)
!2975 = !DILocation(line: 0, scope: !2969)
!2976 = !DILocation(line: 0, scope: !2909, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 960, column: 10, scope: !2969)
!2978 = !DILocation(line: 945, column: 3, scope: !2909, inlinedAt: !2977)
!2979 = !DILocation(line: 945, column: 32, scope: !2909, inlinedAt: !2977)
!2980 = !{!2981}
!2981 = distinct !{!2981, !2982, !"quoting_options_from_style: argument 0"}
!2982 = distinct !{!2982, !"quoting_options_from_style"}
!2983 = !DILocation(line: 945, column: 36, scope: !2909, inlinedAt: !2977)
!2984 = !DILocation(line: 0, scope: !2925, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 945, column: 36, scope: !2909, inlinedAt: !2977)
!2986 = !DILocation(line: 185, column: 26, scope: !2925, inlinedAt: !2985)
!2987 = !DILocation(line: 186, column: 13, scope: !2934, inlinedAt: !2985)
!2988 = !DILocation(line: 186, column: 7, scope: !2925, inlinedAt: !2985)
!2989 = !DILocation(line: 187, column: 5, scope: !2934, inlinedAt: !2985)
!2990 = !DILocation(line: 188, column: 5, scope: !2925, inlinedAt: !2985)
!2991 = !DILocation(line: 188, column: 11, scope: !2925, inlinedAt: !2985)
!2992 = !DILocation(line: 946, column: 10, scope: !2909, inlinedAt: !2977)
!2993 = !DILocation(line: 947, column: 1, scope: !2909, inlinedAt: !2977)
!2994 = !DILocation(line: 960, column: 3, scope: !2969)
!2995 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !287, file: !287, line: 964, type: !2996, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!8, !28, !57, !54}
!2998 = !{!2999, !3000, !3001}
!2999 = !DILocalVariable(name: "s", arg: 1, scope: !2995, file: !287, line: 964, type: !28)
!3000 = !DILocalVariable(name: "arg", arg: 2, scope: !2995, file: !287, line: 964, type: !57)
!3001 = !DILocalVariable(name: "argsize", arg: 3, scope: !2995, file: !287, line: 964, type: !54)
!3002 = !DILocation(line: 0, scope: !2995)
!3003 = !DILocation(line: 0, scope: !2942, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 966, column: 10, scope: !2995)
!3005 = !DILocation(line: 953, column: 3, scope: !2942, inlinedAt: !3004)
!3006 = !DILocation(line: 953, column: 32, scope: !2942, inlinedAt: !3004)
!3007 = !{!3008}
!3008 = distinct !{!3008, !3009, !"quoting_options_from_style: argument 0"}
!3009 = distinct !{!3009, !"quoting_options_from_style"}
!3010 = !DILocation(line: 953, column: 36, scope: !2942, inlinedAt: !3004)
!3011 = !DILocation(line: 0, scope: !2925, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 953, column: 36, scope: !2942, inlinedAt: !3004)
!3013 = !DILocation(line: 185, column: 26, scope: !2925, inlinedAt: !3012)
!3014 = !DILocation(line: 186, column: 13, scope: !2934, inlinedAt: !3012)
!3015 = !DILocation(line: 186, column: 7, scope: !2925, inlinedAt: !3012)
!3016 = !DILocation(line: 187, column: 5, scope: !2934, inlinedAt: !3012)
!3017 = !DILocation(line: 188, column: 5, scope: !2925, inlinedAt: !3012)
!3018 = !DILocation(line: 188, column: 11, scope: !2925, inlinedAt: !3012)
!3019 = !DILocation(line: 954, column: 10, scope: !2942, inlinedAt: !3004)
!3020 = !DILocation(line: 955, column: 1, scope: !2942, inlinedAt: !3004)
!3021 = !DILocation(line: 966, column: 3, scope: !2995)
!3022 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !287, file: !287, line: 970, type: !3023, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!8, !57, !54, !9}
!3025 = !{!3026, !3027, !3028, !3029}
!3026 = !DILocalVariable(name: "arg", arg: 1, scope: !3022, file: !287, line: 970, type: !57)
!3027 = !DILocalVariable(name: "argsize", arg: 2, scope: !3022, file: !287, line: 970, type: !54)
!3028 = !DILocalVariable(name: "ch", arg: 3, scope: !3022, file: !287, line: 970, type: !9)
!3029 = !DILocalVariable(name: "options", scope: !3022, file: !287, line: 972, type: !304)
!3030 = !DILocation(line: 0, scope: !3022)
!3031 = !DILocation(line: 972, column: 3, scope: !3022)
!3032 = !DILocation(line: 972, column: 26, scope: !3022)
!3033 = !DILocation(line: 973, column: 13, scope: !3022)
!3034 = !{i64 0, i64 4, !585, i64 4, i64 4, !576, i64 8, i64 32, !585, i64 40, i64 8, !487, i64 48, i64 8, !487}
!3035 = !DILocation(line: 0, scope: !2041, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 974, column: 3, scope: !3022)
!3037 = !DILocation(line: 147, column: 62, scope: !2041, inlinedAt: !3036)
!3038 = !DILocation(line: 147, column: 57, scope: !2041, inlinedAt: !3036)
!3039 = !DILocation(line: 148, column: 15, scope: !2041, inlinedAt: !3036)
!3040 = !DILocation(line: 149, column: 21, scope: !2041, inlinedAt: !3036)
!3041 = !DILocation(line: 149, column: 24, scope: !2041, inlinedAt: !3036)
!3042 = !DILocation(line: 149, column: 34, scope: !2041, inlinedAt: !3036)
!3043 = !DILocation(line: 150, column: 19, scope: !2041, inlinedAt: !3036)
!3044 = !DILocation(line: 150, column: 24, scope: !2041, inlinedAt: !3036)
!3045 = !DILocation(line: 150, column: 6, scope: !2041, inlinedAt: !3036)
!3046 = !DILocation(line: 975, column: 10, scope: !3022)
!3047 = !DILocation(line: 976, column: 1, scope: !3022)
!3048 = !DILocation(line: 975, column: 3, scope: !3022)
!3049 = distinct !DISubprogram(name: "quotearg_char", scope: !287, file: !287, line: 979, type: !3050, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!8, !57, !9}
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "arg", arg: 1, scope: !3049, file: !287, line: 979, type: !57)
!3054 = !DILocalVariable(name: "ch", arg: 2, scope: !3049, file: !287, line: 979, type: !9)
!3055 = !DILocation(line: 0, scope: !3049)
!3056 = !DILocation(line: 0, scope: !3022, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 981, column: 10, scope: !3049)
!3058 = !DILocation(line: 972, column: 3, scope: !3022, inlinedAt: !3057)
!3059 = !DILocation(line: 972, column: 26, scope: !3022, inlinedAt: !3057)
!3060 = !DILocation(line: 973, column: 13, scope: !3022, inlinedAt: !3057)
!3061 = !DILocation(line: 0, scope: !2041, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 974, column: 3, scope: !3022, inlinedAt: !3057)
!3063 = !DILocation(line: 147, column: 62, scope: !2041, inlinedAt: !3062)
!3064 = !DILocation(line: 147, column: 57, scope: !2041, inlinedAt: !3062)
!3065 = !DILocation(line: 148, column: 15, scope: !2041, inlinedAt: !3062)
!3066 = !DILocation(line: 149, column: 21, scope: !2041, inlinedAt: !3062)
!3067 = !DILocation(line: 149, column: 24, scope: !2041, inlinedAt: !3062)
!3068 = !DILocation(line: 149, column: 34, scope: !2041, inlinedAt: !3062)
!3069 = !DILocation(line: 150, column: 19, scope: !2041, inlinedAt: !3062)
!3070 = !DILocation(line: 150, column: 24, scope: !2041, inlinedAt: !3062)
!3071 = !DILocation(line: 150, column: 6, scope: !2041, inlinedAt: !3062)
!3072 = !DILocation(line: 975, column: 10, scope: !3022, inlinedAt: !3057)
!3073 = !DILocation(line: 976, column: 1, scope: !3022, inlinedAt: !3057)
!3074 = !DILocation(line: 981, column: 3, scope: !3049)
!3075 = distinct !DISubprogram(name: "quotearg_colon", scope: !287, file: !287, line: 985, type: !688, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3076)
!3076 = !{!3077}
!3077 = !DILocalVariable(name: "arg", arg: 1, scope: !3075, file: !287, line: 985, type: !57)
!3078 = !DILocation(line: 0, scope: !3075)
!3079 = !DILocation(line: 0, scope: !3049, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 987, column: 10, scope: !3075)
!3081 = !DILocation(line: 0, scope: !3022, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 981, column: 10, scope: !3049, inlinedAt: !3080)
!3083 = !DILocation(line: 972, column: 3, scope: !3022, inlinedAt: !3082)
!3084 = !DILocation(line: 972, column: 26, scope: !3022, inlinedAt: !3082)
!3085 = !DILocation(line: 973, column: 13, scope: !3022, inlinedAt: !3082)
!3086 = !DILocation(line: 0, scope: !2041, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 974, column: 3, scope: !3022, inlinedAt: !3082)
!3088 = !DILocation(line: 147, column: 57, scope: !2041, inlinedAt: !3087)
!3089 = !DILocation(line: 149, column: 21, scope: !2041, inlinedAt: !3087)
!3090 = !DILocation(line: 150, column: 6, scope: !2041, inlinedAt: !3087)
!3091 = !DILocation(line: 975, column: 10, scope: !3022, inlinedAt: !3082)
!3092 = !DILocation(line: 976, column: 1, scope: !3022, inlinedAt: !3082)
!3093 = !DILocation(line: 987, column: 3, scope: !3075)
!3094 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !287, file: !287, line: 991, type: !2899, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3095)
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "arg", arg: 1, scope: !3094, file: !287, line: 991, type: !57)
!3097 = !DILocalVariable(name: "argsize", arg: 2, scope: !3094, file: !287, line: 991, type: !54)
!3098 = !DILocation(line: 0, scope: !3094)
!3099 = !DILocation(line: 0, scope: !3022, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 993, column: 10, scope: !3094)
!3101 = !DILocation(line: 972, column: 3, scope: !3022, inlinedAt: !3100)
!3102 = !DILocation(line: 972, column: 26, scope: !3022, inlinedAt: !3100)
!3103 = !DILocation(line: 973, column: 13, scope: !3022, inlinedAt: !3100)
!3104 = !DILocation(line: 0, scope: !2041, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 974, column: 3, scope: !3022, inlinedAt: !3100)
!3106 = !DILocation(line: 147, column: 57, scope: !2041, inlinedAt: !3105)
!3107 = !DILocation(line: 149, column: 21, scope: !2041, inlinedAt: !3105)
!3108 = !DILocation(line: 150, column: 6, scope: !2041, inlinedAt: !3105)
!3109 = !DILocation(line: 975, column: 10, scope: !3022, inlinedAt: !3100)
!3110 = !DILocation(line: 976, column: 1, scope: !3022, inlinedAt: !3100)
!3111 = !DILocation(line: 993, column: 3, scope: !3094)
!3112 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !287, file: !287, line: 997, type: !2910, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3113)
!3113 = !{!3114, !3115, !3116, !3117}
!3114 = !DILocalVariable(name: "n", arg: 1, scope: !3112, file: !287, line: 997, type: !6)
!3115 = !DILocalVariable(name: "s", arg: 2, scope: !3112, file: !287, line: 997, type: !28)
!3116 = !DILocalVariable(name: "arg", arg: 3, scope: !3112, file: !287, line: 997, type: !57)
!3117 = !DILocalVariable(name: "options", scope: !3112, file: !287, line: 999, type: !304)
!3118 = !DILocation(line: 0, scope: !3112)
!3119 = !DILocation(line: 999, column: 3, scope: !3112)
!3120 = !DILocation(line: 999, column: 26, scope: !3112)
!3121 = !DILocation(line: 0, scope: !2925, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1000, column: 13, scope: !3112)
!3123 = !DILocation(line: 186, column: 13, scope: !2934, inlinedAt: !3122)
!3124 = !DILocation(line: 186, column: 7, scope: !2925, inlinedAt: !3122)
!3125 = !DILocation(line: 187, column: 5, scope: !2934, inlinedAt: !3122)
!3126 = !{!3127}
!3127 = distinct !{!3127, !3128, !"quoting_options_from_style: argument 0"}
!3128 = distinct !{!3128, !"quoting_options_from_style"}
!3129 = !DILocation(line: 1000, column: 13, scope: !3112)
!3130 = !DILocation(line: 0, scope: !2041, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 1001, column: 3, scope: !3112)
!3132 = !DILocation(line: 147, column: 57, scope: !2041, inlinedAt: !3131)
!3133 = !DILocation(line: 149, column: 21, scope: !2041, inlinedAt: !3131)
!3134 = !DILocation(line: 150, column: 6, scope: !2041, inlinedAt: !3131)
!3135 = !DILocation(line: 1002, column: 10, scope: !3112)
!3136 = !DILocation(line: 1003, column: 1, scope: !3112)
!3137 = !DILocation(line: 1002, column: 3, scope: !3112)
!3138 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !287, file: !287, line: 1006, type: !3139, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!8, !6, !57, !57, !57}
!3141 = !{!3142, !3143, !3144, !3145}
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3138, file: !287, line: 1006, type: !6)
!3143 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3138, file: !287, line: 1006, type: !57)
!3144 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3138, file: !287, line: 1007, type: !57)
!3145 = !DILocalVariable(name: "arg", arg: 4, scope: !3138, file: !287, line: 1007, type: !57)
!3146 = !DILocation(line: 0, scope: !3138)
!3147 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !287, line: 1014, type: !6)
!3148 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !287, file: !287, line: 1014, type: !3149, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!8, !6, !57, !57, !57, !54}
!3151 = !{!3147, !3152, !3153, !3154, !3155, !3156}
!3152 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3148, file: !287, line: 1014, type: !57)
!3153 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3148, file: !287, line: 1015, type: !57)
!3154 = !DILocalVariable(name: "arg", arg: 4, scope: !3148, file: !287, line: 1016, type: !57)
!3155 = !DILocalVariable(name: "argsize", arg: 5, scope: !3148, file: !287, line: 1016, type: !54)
!3156 = !DILocalVariable(name: "o", scope: !3148, file: !287, line: 1018, type: !304)
!3157 = !DILocation(line: 0, scope: !3148, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 1009, column: 10, scope: !3138)
!3159 = !DILocation(line: 1018, column: 3, scope: !3148, inlinedAt: !3158)
!3160 = !DILocation(line: 1018, column: 26, scope: !3148, inlinedAt: !3158)
!3161 = !DILocation(line: 1018, column: 30, scope: !3148, inlinedAt: !3158)
!3162 = !DILocation(line: 0, scope: !2081, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 1019, column: 3, scope: !3148, inlinedAt: !3158)
!3164 = !DILocation(line: 174, column: 6, scope: !2081, inlinedAt: !3163)
!3165 = !DILocation(line: 174, column: 12, scope: !2081, inlinedAt: !3163)
!3166 = !DILocation(line: 175, column: 8, scope: !2095, inlinedAt: !3163)
!3167 = !DILocation(line: 175, column: 19, scope: !2095, inlinedAt: !3163)
!3168 = !DILocation(line: 176, column: 5, scope: !2095, inlinedAt: !3163)
!3169 = !DILocation(line: 177, column: 6, scope: !2081, inlinedAt: !3163)
!3170 = !DILocation(line: 177, column: 17, scope: !2081, inlinedAt: !3163)
!3171 = !DILocation(line: 178, column: 6, scope: !2081, inlinedAt: !3163)
!3172 = !DILocation(line: 178, column: 18, scope: !2081, inlinedAt: !3163)
!3173 = !DILocation(line: 1020, column: 10, scope: !3148, inlinedAt: !3158)
!3174 = !DILocation(line: 1021, column: 1, scope: !3148, inlinedAt: !3158)
!3175 = !DILocation(line: 1009, column: 3, scope: !3138)
!3176 = !DILocation(line: 0, scope: !3148)
!3177 = !DILocation(line: 1018, column: 3, scope: !3148)
!3178 = !DILocation(line: 1018, column: 26, scope: !3148)
!3179 = !DILocation(line: 1018, column: 30, scope: !3148)
!3180 = !DILocation(line: 0, scope: !2081, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 1019, column: 3, scope: !3148)
!3182 = !DILocation(line: 174, column: 6, scope: !2081, inlinedAt: !3181)
!3183 = !DILocation(line: 174, column: 12, scope: !2081, inlinedAt: !3181)
!3184 = !DILocation(line: 175, column: 8, scope: !2095, inlinedAt: !3181)
!3185 = !DILocation(line: 175, column: 19, scope: !2095, inlinedAt: !3181)
!3186 = !DILocation(line: 176, column: 5, scope: !2095, inlinedAt: !3181)
!3187 = !DILocation(line: 177, column: 6, scope: !2081, inlinedAt: !3181)
!3188 = !DILocation(line: 177, column: 17, scope: !2081, inlinedAt: !3181)
!3189 = !DILocation(line: 178, column: 6, scope: !2081, inlinedAt: !3181)
!3190 = !DILocation(line: 178, column: 18, scope: !2081, inlinedAt: !3181)
!3191 = !DILocation(line: 1020, column: 10, scope: !3148)
!3192 = !DILocation(line: 1021, column: 1, scope: !3148)
!3193 = !DILocation(line: 1020, column: 3, scope: !3148)
!3194 = distinct !DISubprogram(name: "quotearg_custom", scope: !287, file: !287, line: 1024, type: !3195, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!8, !57, !57, !57}
!3197 = !{!3198, !3199, !3200}
!3198 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3194, file: !287, line: 1024, type: !57)
!3199 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3194, file: !287, line: 1024, type: !57)
!3200 = !DILocalVariable(name: "arg", arg: 3, scope: !3194, file: !287, line: 1025, type: !57)
!3201 = !DILocation(line: 0, scope: !3194)
!3202 = !DILocation(line: 0, scope: !3138, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 1027, column: 10, scope: !3194)
!3204 = !DILocation(line: 0, scope: !3148, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 1009, column: 10, scope: !3138, inlinedAt: !3203)
!3206 = !DILocation(line: 1018, column: 3, scope: !3148, inlinedAt: !3205)
!3207 = !DILocation(line: 1018, column: 26, scope: !3148, inlinedAt: !3205)
!3208 = !DILocation(line: 1018, column: 30, scope: !3148, inlinedAt: !3205)
!3209 = !DILocation(line: 0, scope: !2081, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 1019, column: 3, scope: !3148, inlinedAt: !3205)
!3211 = !DILocation(line: 174, column: 6, scope: !2081, inlinedAt: !3210)
!3212 = !DILocation(line: 174, column: 12, scope: !2081, inlinedAt: !3210)
!3213 = !DILocation(line: 175, column: 8, scope: !2095, inlinedAt: !3210)
!3214 = !DILocation(line: 175, column: 19, scope: !2095, inlinedAt: !3210)
!3215 = !DILocation(line: 176, column: 5, scope: !2095, inlinedAt: !3210)
!3216 = !DILocation(line: 177, column: 6, scope: !2081, inlinedAt: !3210)
!3217 = !DILocation(line: 177, column: 17, scope: !2081, inlinedAt: !3210)
!3218 = !DILocation(line: 178, column: 6, scope: !2081, inlinedAt: !3210)
!3219 = !DILocation(line: 178, column: 18, scope: !2081, inlinedAt: !3210)
!3220 = !DILocation(line: 1020, column: 10, scope: !3148, inlinedAt: !3205)
!3221 = !DILocation(line: 1021, column: 1, scope: !3148, inlinedAt: !3205)
!3222 = !DILocation(line: 1027, column: 3, scope: !3194)
!3223 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !287, file: !287, line: 1031, type: !3224, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3226)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!8, !57, !57, !57, !54}
!3226 = !{!3227, !3228, !3229, !3230}
!3227 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3223, file: !287, line: 1031, type: !57)
!3228 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3223, file: !287, line: 1031, type: !57)
!3229 = !DILocalVariable(name: "arg", arg: 3, scope: !3223, file: !287, line: 1032, type: !57)
!3230 = !DILocalVariable(name: "argsize", arg: 4, scope: !3223, file: !287, line: 1032, type: !54)
!3231 = !DILocation(line: 0, scope: !3223)
!3232 = !DILocation(line: 0, scope: !3148, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 1034, column: 10, scope: !3223)
!3234 = !DILocation(line: 1018, column: 3, scope: !3148, inlinedAt: !3233)
!3235 = !DILocation(line: 1018, column: 26, scope: !3148, inlinedAt: !3233)
!3236 = !DILocation(line: 1018, column: 30, scope: !3148, inlinedAt: !3233)
!3237 = !DILocation(line: 0, scope: !2081, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 1019, column: 3, scope: !3148, inlinedAt: !3233)
!3239 = !DILocation(line: 174, column: 6, scope: !2081, inlinedAt: !3238)
!3240 = !DILocation(line: 174, column: 12, scope: !2081, inlinedAt: !3238)
!3241 = !DILocation(line: 175, column: 8, scope: !2095, inlinedAt: !3238)
!3242 = !DILocation(line: 175, column: 19, scope: !2095, inlinedAt: !3238)
!3243 = !DILocation(line: 176, column: 5, scope: !2095, inlinedAt: !3238)
!3244 = !DILocation(line: 177, column: 6, scope: !2081, inlinedAt: !3238)
!3245 = !DILocation(line: 177, column: 17, scope: !2081, inlinedAt: !3238)
!3246 = !DILocation(line: 178, column: 6, scope: !2081, inlinedAt: !3238)
!3247 = !DILocation(line: 178, column: 18, scope: !2081, inlinedAt: !3238)
!3248 = !DILocation(line: 1020, column: 10, scope: !3148, inlinedAt: !3233)
!3249 = !DILocation(line: 1021, column: 1, scope: !3148, inlinedAt: !3233)
!3250 = !DILocation(line: 1034, column: 3, scope: !3223)
!3251 = distinct !DISubprogram(name: "quote_n_mem", scope: !287, file: !287, line: 1049, type: !3252, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!57, !6, !57, !54}
!3254 = !{!3255, !3256, !3257}
!3255 = !DILocalVariable(name: "n", arg: 1, scope: !3251, file: !287, line: 1049, type: !6)
!3256 = !DILocalVariable(name: "arg", arg: 2, scope: !3251, file: !287, line: 1049, type: !57)
!3257 = !DILocalVariable(name: "argsize", arg: 3, scope: !3251, file: !287, line: 1049, type: !54)
!3258 = !DILocation(line: 0, scope: !3251)
!3259 = !DILocation(line: 1051, column: 10, scope: !3251)
!3260 = !DILocation(line: 1051, column: 3, scope: !3251)
!3261 = distinct !DISubprogram(name: "quote_mem", scope: !287, file: !287, line: 1055, type: !3262, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!57, !57, !54}
!3264 = !{!3265, !3266}
!3265 = !DILocalVariable(name: "arg", arg: 1, scope: !3261, file: !287, line: 1055, type: !57)
!3266 = !DILocalVariable(name: "argsize", arg: 2, scope: !3261, file: !287, line: 1055, type: !54)
!3267 = !DILocation(line: 0, scope: !3261)
!3268 = !DILocation(line: 0, scope: !3251, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 1057, column: 10, scope: !3261)
!3270 = !DILocation(line: 1051, column: 10, scope: !3251, inlinedAt: !3269)
!3271 = !DILocation(line: 1057, column: 3, scope: !3261)
!3272 = distinct !DISubprogram(name: "quote_n", scope: !287, file: !287, line: 1061, type: !3273, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!57, !6, !57}
!3275 = !{!3276, !3277}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !287, line: 1061, type: !6)
!3277 = !DILocalVariable(name: "arg", arg: 2, scope: !3272, file: !287, line: 1061, type: !57)
!3278 = !DILocation(line: 0, scope: !3272)
!3279 = !DILocation(line: 0, scope: !3251, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 1063, column: 10, scope: !3272)
!3281 = !DILocation(line: 1051, column: 10, scope: !3251, inlinedAt: !3280)
!3282 = !DILocation(line: 1063, column: 3, scope: !3272)
!3283 = distinct !DISubprogram(name: "quote", scope: !287, file: !287, line: 1067, type: !3284, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!57, !57}
!3286 = !{!3287}
!3287 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !287, line: 1067, type: !57)
!3288 = !DILocation(line: 0, scope: !3283)
!3289 = !DILocation(line: 0, scope: !3272, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 1069, column: 10, scope: !3283)
!3291 = !DILocation(line: 0, scope: !3251, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1063, column: 10, scope: !3272, inlinedAt: !3290)
!3293 = !DILocation(line: 1051, column: 10, scope: !3251, inlinedAt: !3292)
!3294 = !DILocation(line: 1069, column: 3, scope: !3283)
!3295 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !404, file: !404, line: 43, type: !3296, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3304)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{null, !3298}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !744, line: 38, baseType: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !744, line: 33, size: 128, elements: !3301)
!3301 = !{!3302, !3303}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3300, file: !744, line: 35, baseType: !54, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3300, file: !744, line: 36, baseType: !8, size: 64, offset: 64)
!3304 = !{!3305}
!3305 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3295, file: !404, line: 43, type: !3298)
!3306 = !DILocation(line: 0, scope: !3295)
!3307 = !DILocation(line: 47, column: 1, scope: !3295)
!3308 = !DILocation(line: 46, column: 23, scope: !3295)
!3309 = distinct !DISubprogram(name: "readtoken", scope: !404, file: !404, line: 79, type: !3310, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3346)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!54, !3312, !57, !54, !3298}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !3314)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3314, file: !91, line: 51, baseType: !6, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3314, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3314, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3314, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3314, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3314, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3314, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3314, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3314, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3314, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3314, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3314, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3314, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3314, file: !91, line: 70, baseType: !3330, size: 64, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3314, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3314, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3314, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3314, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3314, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3314, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3314, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3314, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3314, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3314, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3314, file: !91, line: 93, baseType: !3330, size: 64, offset: 1344)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3314, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3314, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3314, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3314, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3354, !3356, !3359, !3360, !3361, !3362}
!3347 = !DILocalVariable(name: "stream", arg: 1, scope: !3309, file: !404, line: 79, type: !3312)
!3348 = !DILocalVariable(name: "delim", arg: 2, scope: !3309, file: !404, line: 80, type: !57)
!3349 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3309, file: !404, line: 81, type: !54)
!3350 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3309, file: !404, line: 82, type: !3298)
!3351 = !DILocalVariable(name: "isdelim", scope: !3309, file: !404, line: 84, type: !3352)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3353, size: 256, elements: !279)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !404, line: 49, baseType: !54)
!3354 = !DILocalVariable(name: "i", scope: !3355, file: !404, line: 86, type: !437)
!3355 = distinct !DILexicalBlock(scope: !3309, file: !404, line: 86, column: 3)
!3356 = !DILocalVariable(name: "ch", scope: !3357, file: !404, line: 88, type: !59)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !404, line: 87, column: 5)
!3358 = distinct !DILexicalBlock(scope: !3355, file: !404, line: 86, column: 3)
!3359 = !DILocalVariable(name: "c", scope: !3309, file: !404, line: 92, type: !6)
!3360 = !DILocalVariable(name: "p", scope: !3309, file: !404, line: 100, type: !8)
!3361 = !DILocalVariable(name: "n", scope: !3309, file: !404, line: 101, type: !437)
!3362 = !DILocalVariable(name: "i", scope: !3309, file: !404, line: 102, type: !437)
!3363 = !DILocation(line: 0, scope: !3309)
!3364 = !DILocation(line: 84, column: 3, scope: !3309)
!3365 = !DILocation(line: 84, column: 8, scope: !3309)
!3366 = !DILocalVariable(name: "__dest", arg: 1, scope: !3367, file: !1983, line: 57, type: !52)
!3367 = distinct !DISubprogram(name: "memset", scope: !1983, file: !1983, line: 57, type: !1984, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3368)
!3368 = !{!3366, !3369, !3370}
!3369 = !DILocalVariable(name: "__ch", arg: 2, scope: !3367, file: !1983, line: 57, type: !6)
!3370 = !DILocalVariable(name: "__len", arg: 3, scope: !3367, file: !1983, line: 57, type: !54)
!3371 = !DILocation(line: 0, scope: !3367, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 85, column: 3, scope: !3309)
!3373 = !DILocation(line: 59, column: 10, scope: !3367, inlinedAt: !3372)
!3374 = !DILocation(line: 0, scope: !3355)
!3375 = !DILocation(line: 86, column: 23, scope: !3358)
!3376 = !DILocation(line: 86, column: 3, scope: !3355)
!3377 = !DILocalVariable(name: "__fp", arg: 1, scope: !3378, file: !793, line: 66, type: !3312)
!3378 = distinct !DISubprogram(name: "getc_unlocked", scope: !793, file: !793, line: 66, type: !3379, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3381)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!6, !3312}
!3381 = !{!3377}
!3382 = !DILocation(line: 0, scope: !3378, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 95, column: 12, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3309, file: !404, line: 95, column: 3)
!3385 = !DILocation(line: 68, column: 10, scope: !3378, inlinedAt: !3383)
!3386 = !DILocation(line: 95, column: 34, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3384, file: !404, line: 95, column: 3)
!3388 = !DILocation(line: 95, column: 29, scope: !3387)
!3389 = !DILocation(line: 95, column: 3, scope: !3384)
!3390 = !DILocation(line: 88, column: 26, scope: !3357)
!3391 = !DILocation(line: 0, scope: !3357)
!3392 = !DILocation(line: 89, column: 20, scope: !3357)
!3393 = !DILocalVariable(name: "n", arg: 1, scope: !3394, file: !404, line: 59, type: !54)
!3394 = distinct !DISubprogram(name: "set_nth_bit", scope: !404, file: !404, line: 59, type: !3395, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3398)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{null, !54, !3397}
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3398 = !{!3393, !3399, !3400}
!3399 = !DILocalVariable(name: "bitset", arg: 2, scope: !3394, file: !404, line: 59, type: !3397)
!3400 = !DILocalVariable(name: "one", scope: !3394, file: !404, line: 61, type: !54)
!3401 = !DILocation(line: 0, scope: !3394, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 89, column: 7, scope: !3357)
!3403 = !DILocation(line: 62, column: 41, scope: !3394, inlinedAt: !3402)
!3404 = !DILocation(line: 62, column: 36, scope: !3394, inlinedAt: !3402)
!3405 = !DILocation(line: 62, column: 12, scope: !3394, inlinedAt: !3402)
!3406 = !DILocation(line: 62, column: 3, scope: !3394, inlinedAt: !3402)
!3407 = !DILocation(line: 62, column: 29, scope: !3394, inlinedAt: !3402)
!3408 = !DILocation(line: 86, column: 35, scope: !3358)
!3409 = distinct !{!3409, !3376, !3410, !543}
!3410 = !DILocation(line: 90, column: 5, scope: !3355)
!3411 = !DILocation(line: 95, column: 50, scope: !3387)
!3412 = !DILocalVariable(name: "n", arg: 1, scope: !3413, file: !404, line: 53, type: !54)
!3413 = distinct !DISubprogram(name: "get_nth_bit", scope: !404, file: !404, line: 53, type: !3414, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3418)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!74, !54, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3353)
!3418 = !{!3412, !3419}
!3419 = !DILocalVariable(name: "bitset", arg: 2, scope: !3413, file: !404, line: 53, type: !3416)
!3420 = !DILocation(line: 0, scope: !3413, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 95, column: 37, scope: !3387)
!3422 = !DILocation(line: 55, column: 19, scope: !3413, inlinedAt: !3421)
!3423 = !DILocation(line: 55, column: 10, scope: !3413, inlinedAt: !3421)
!3424 = !DILocation(line: 55, column: 41, scope: !3413, inlinedAt: !3421)
!3425 = !DILocation(line: 0, scope: !3378, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 95, column: 67, scope: !3387)
!3427 = !DILocation(line: 68, column: 10, scope: !3378, inlinedAt: !3426)
!3428 = distinct !{!3428, !3389, !3429, !543}
!3429 = !DILocation(line: 98, column: 5, scope: !3384)
!3430 = !DILocation(line: 101, column: 3, scope: !3309)
!3431 = !DILocation(line: 101, column: 26, scope: !3309)
!3432 = !{!810, !802, i64 0}
!3433 = !DILocation(line: 101, column: 9, scope: !3309)
!3434 = !DILocation(line: 105, column: 17, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !404, line: 105, column: 11)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !404, line: 104, column: 5)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !404, line: 103, column: 3)
!3438 = distinct !DILexicalBlock(scope: !3309, file: !404, line: 103, column: 3)
!3439 = !DILocation(line: 100, column: 26, scope: !3309)
!3440 = !DILocation(line: 103, column: 3, scope: !3438)
!3441 = !DILocation(line: 108, column: 16, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3436, file: !404, line: 108, column: 11)
!3443 = !DILocation(line: 108, column: 13, scope: !3442)
!3444 = !DILocation(line: 108, column: 11, scope: !3436)
!3445 = !DILocation(line: 109, column: 13, scope: !3442)
!3446 = !DILocation(line: 109, column: 9, scope: !3442)
!3447 = !DILocation(line: 111, column: 11, scope: !3436)
!3448 = !DILocation(line: 116, column: 24, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3436, file: !404, line: 116, column: 11)
!3450 = !DILocation(line: 0, scope: !3413, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 116, column: 11, scope: !3449)
!3452 = !DILocation(line: 55, column: 19, scope: !3413, inlinedAt: !3451)
!3453 = !DILocation(line: 55, column: 10, scope: !3413, inlinedAt: !3451)
!3454 = !DILocation(line: 55, column: 41, scope: !3413, inlinedAt: !3451)
!3455 = !DILocation(line: 116, column: 11, scope: !3436)
!3456 = !DILocation(line: 121, column: 16, scope: !3436)
!3457 = !DILocation(line: 121, column: 10, scope: !3436)
!3458 = !DILocation(line: 121, column: 7, scope: !3436)
!3459 = !DILocation(line: 121, column: 14, scope: !3436)
!3460 = !DILocation(line: 0, scope: !3378, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 122, column: 11, scope: !3436)
!3462 = !DILocation(line: 68, column: 10, scope: !3378, inlinedAt: !3461)
!3463 = !DILocation(line: 105, column: 13, scope: !3435)
!3464 = !DILocation(line: 0, scope: !3436)
!3465 = !DILocation(line: 125, column: 23, scope: !3309)
!3466 = !DILocation(line: 126, column: 23, scope: !3309)
!3467 = !DILocation(line: 126, column: 21, scope: !3309)
!3468 = !DILocation(line: 127, column: 3, scope: !3309)
!3469 = !DILocation(line: 128, column: 1, scope: !3309)
!3470 = distinct !DISubprogram(name: "readtokens", scope: !404, file: !404, line: 138, type: !3471, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3475)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!54, !3312, !54, !57, !54, !3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3492}
!3476 = !DILocalVariable(name: "stream", arg: 1, scope: !3470, file: !404, line: 138, type: !3312)
!3477 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3470, file: !404, line: 139, type: !54)
!3478 = !DILocalVariable(name: "delim", arg: 3, scope: !3470, file: !404, line: 140, type: !57)
!3479 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3470, file: !404, line: 141, type: !54)
!3480 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3470, file: !404, line: 142, type: !3473)
!3481 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3470, file: !404, line: 143, type: !3474)
!3482 = !DILocalVariable(name: "sz", scope: !3470, file: !404, line: 151, type: !437)
!3483 = !DILocalVariable(name: "tokens", scope: !3470, file: !404, line: 152, type: !7)
!3484 = !DILocalVariable(name: "lengths", scope: !3470, file: !404, line: 153, type: !424)
!3485 = !DILocalVariable(name: "tb", scope: !3470, file: !404, line: 155, type: !3299)
!3486 = !DILocalVariable(name: "token", scope: !3470, file: !404, line: 156, type: !3298)
!3487 = !DILocalVariable(name: "n_tokens", scope: !3470, file: !404, line: 158, type: !437)
!3488 = !DILocalVariable(name: "token_length", scope: !3489, file: !404, line: 161, type: !54)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !404, line: 160, column: 5)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !404, line: 159, column: 3)
!3491 = distinct !DILexicalBlock(scope: !3470, file: !404, line: 159, column: 3)
!3492 = !DILocalVariable(name: "tmp", scope: !3489, file: !404, line: 175, type: !8)
!3493 = !DILocation(line: 0, scope: !3470)
!3494 = !DILocation(line: 146, column: 26, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3470, file: !404, line: 146, column: 7)
!3496 = !DILocation(line: 146, column: 7, scope: !3470)
!3497 = !DILocation(line: 151, column: 3, scope: !3470)
!3498 = !DILocation(line: 151, column: 9, scope: !3470)
!3499 = !DILocation(line: 152, column: 19, scope: !3470)
!3500 = !DILocation(line: 153, column: 21, scope: !3470)
!3501 = !DILocation(line: 155, column: 3, scope: !3470)
!3502 = !DILocation(line: 155, column: 16, scope: !3470)
!3503 = !DILocation(line: 0, scope: !3295, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 157, column: 3, scope: !3470)
!3505 = !DILocation(line: 46, column: 23, scope: !3295, inlinedAt: !3504)
!3506 = !DILocation(line: 159, column: 3, scope: !3470)
!3507 = !DILocation(line: 158, column: 9, scope: !3470)
!3508 = !DILocation(line: 161, column: 29, scope: !3489)
!3509 = !DILocation(line: 0, scope: !3489)
!3510 = !DILocation(line: 162, column: 23, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3489, file: !404, line: 162, column: 11)
!3512 = !DILocation(line: 162, column: 20, scope: !3511)
!3513 = !DILocation(line: 162, column: 11, scope: !3489)
!3514 = !DILocation(line: 164, column: 29, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3511, file: !404, line: 163, column: 9)
!3516 = !DILocation(line: 164, column: 20, scope: !3515)
!3517 = !DILocation(line: 165, column: 36, scope: !3515)
!3518 = !DILocation(line: 165, column: 45, scope: !3515)
!3519 = !DILocation(line: 165, column: 21, scope: !3515)
!3520 = !DILocation(line: 166, column: 9, scope: !3515)
!3521 = !DILocation(line: 168, column: 24, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3489, file: !404, line: 168, column: 11)
!3523 = !DILocation(line: 168, column: 11, scope: !3489)
!3524 = !DILocation(line: 175, column: 42, scope: !3489)
!3525 = !DILocation(line: 175, column: 19, scope: !3489)
!3526 = !DILocation(line: 176, column: 7, scope: !3489)
!3527 = !DILocation(line: 176, column: 25, scope: !3489)
!3528 = !DILocation(line: 177, column: 46, scope: !3489)
!3529 = !DILocalVariable(name: "__dest", arg: 1, scope: !3530, file: !1983, line: 26, type: !3533)
!3530 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 26, type: !3531, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3534)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!52, !3533, !693, !54}
!3533 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!3534 = !{!3529, !3535, !3536}
!3535 = !DILocalVariable(name: "__src", arg: 2, scope: !3530, file: !1983, line: 26, type: !693)
!3536 = !DILocalVariable(name: "__len", arg: 3, scope: !3530, file: !1983, line: 26, type: !54)
!3537 = !DILocation(line: 0, scope: !3530, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 177, column: 26, scope: !3489)
!3539 = !DILocation(line: 29, column: 10, scope: !3530, inlinedAt: !3538)
!3540 = !DILocation(line: 177, column: 7, scope: !3489)
!3541 = !DILocation(line: 177, column: 24, scope: !3489)
!3542 = !DILocation(line: 178, column: 15, scope: !3489)
!3543 = !DILocation(line: 171, column: 11, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3522, file: !404, line: 169, column: 9)
!3545 = !DILocation(line: 171, column: 28, scope: !3544)
!3546 = !DILocation(line: 172, column: 11, scope: !3544)
!3547 = !DILocation(line: 172, column: 29, scope: !3544)
!3548 = !DILocation(line: 181, column: 16, scope: !3470)
!3549 = !DILocation(line: 181, column: 3, scope: !3470)
!3550 = !DILocation(line: 182, column: 15, scope: !3470)
!3551 = !DILocation(line: 183, column: 21, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3470, file: !404, line: 183, column: 7)
!3553 = !DILocation(line: 183, column: 7, scope: !3470)
!3554 = !DILocation(line: 184, column: 20, scope: !3552)
!3555 = !DILocation(line: 184, column: 5, scope: !3552)
!3556 = !DILocation(line: 186, column: 11, scope: !3552)
!3557 = !DILocation(line: 186, column: 5, scope: !3552)
!3558 = !DILocation(line: 188, column: 1, scope: !3470)
!3559 = !DILocation(line: 187, column: 3, scope: !3470)
!3560 = distinct !DISubprogram(name: "version_etc_arn", scope: !412, file: !412, line: 61, type: !3561, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3598)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !3563, !57, !57, !57, !3597, !54}
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !3565)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3565, file: !91, line: 51, baseType: !6, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3565, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3565, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3565, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3565, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3565, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3565, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3565, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3565, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3565, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3565, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3565, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3565, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3565, file: !91, line: 70, baseType: !3581, size: 64, offset: 832)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3565, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3565, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3565, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3565, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3565, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3565, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3565, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3565, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3565, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3565, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3565, file: !91, line: 93, baseType: !3581, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3565, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3565, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3565, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3565, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604}
!3599 = !DILocalVariable(name: "stream", arg: 1, scope: !3560, file: !412, line: 61, type: !3563)
!3600 = !DILocalVariable(name: "command_name", arg: 2, scope: !3560, file: !412, line: 62, type: !57)
!3601 = !DILocalVariable(name: "package", arg: 3, scope: !3560, file: !412, line: 62, type: !57)
!3602 = !DILocalVariable(name: "version", arg: 4, scope: !3560, file: !412, line: 63, type: !57)
!3603 = !DILocalVariable(name: "authors", arg: 5, scope: !3560, file: !412, line: 64, type: !3597)
!3604 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3560, file: !412, line: 64, type: !54)
!3605 = !DILocation(line: 0, scope: !3560)
!3606 = !DILocation(line: 66, column: 7, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3560, file: !412, line: 66, column: 7)
!3608 = !DILocation(line: 66, column: 7, scope: !3560)
!3609 = !DILocation(line: 67, column: 5, scope: !3607)
!3610 = !DILocation(line: 69, column: 5, scope: !3607)
!3611 = !DILocation(line: 83, column: 3, scope: !3560)
!3612 = !DILocation(line: 85, column: 3, scope: !3560)
!3613 = !DILocation(line: 88, column: 3, scope: !3560)
!3614 = !DILocation(line: 95, column: 3, scope: !3560)
!3615 = !DILocation(line: 97, column: 3, scope: !3560)
!3616 = !DILocation(line: 105, column: 7, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3560, file: !412, line: 98, column: 5)
!3618 = !DILocation(line: 106, column: 7, scope: !3617)
!3619 = !DILocation(line: 109, column: 7, scope: !3617)
!3620 = !DILocation(line: 110, column: 7, scope: !3617)
!3621 = !DILocation(line: 113, column: 7, scope: !3617)
!3622 = !DILocation(line: 115, column: 7, scope: !3617)
!3623 = !DILocation(line: 120, column: 7, scope: !3617)
!3624 = !DILocation(line: 122, column: 7, scope: !3617)
!3625 = !DILocation(line: 127, column: 7, scope: !3617)
!3626 = !DILocation(line: 129, column: 7, scope: !3617)
!3627 = !DILocation(line: 134, column: 7, scope: !3617)
!3628 = !DILocation(line: 137, column: 7, scope: !3617)
!3629 = !DILocation(line: 142, column: 7, scope: !3617)
!3630 = !DILocation(line: 145, column: 7, scope: !3617)
!3631 = !DILocation(line: 150, column: 7, scope: !3617)
!3632 = !DILocation(line: 154, column: 7, scope: !3617)
!3633 = !DILocation(line: 159, column: 7, scope: !3617)
!3634 = !DILocation(line: 163, column: 7, scope: !3617)
!3635 = !DILocation(line: 170, column: 7, scope: !3617)
!3636 = !DILocation(line: 174, column: 7, scope: !3617)
!3637 = !DILocation(line: 176, column: 1, scope: !3560)
!3638 = distinct !DISubprogram(name: "version_etc_ar", scope: !412, file: !412, line: 183, type: !3639, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3641)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !3563, !57, !57, !57, !3597}
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647}
!3642 = !DILocalVariable(name: "stream", arg: 1, scope: !3638, file: !412, line: 183, type: !3563)
!3643 = !DILocalVariable(name: "command_name", arg: 2, scope: !3638, file: !412, line: 184, type: !57)
!3644 = !DILocalVariable(name: "package", arg: 3, scope: !3638, file: !412, line: 184, type: !57)
!3645 = !DILocalVariable(name: "version", arg: 4, scope: !3638, file: !412, line: 185, type: !57)
!3646 = !DILocalVariable(name: "authors", arg: 5, scope: !3638, file: !412, line: 185, type: !3597)
!3647 = !DILocalVariable(name: "n_authors", scope: !3638, file: !412, line: 187, type: !54)
!3648 = !DILocation(line: 0, scope: !3638)
!3649 = !DILocation(line: 189, column: 8, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3638, file: !412, line: 189, column: 3)
!3651 = !DILocation(line: 0, scope: !3650)
!3652 = !DILocation(line: 189, column: 23, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3650, file: !412, line: 189, column: 3)
!3654 = !DILocation(line: 189, column: 3, scope: !3650)
!3655 = !DILocation(line: 189, column: 52, scope: !3653)
!3656 = distinct !{!3656, !3654, !3657, !543}
!3657 = !DILocation(line: 190, column: 5, scope: !3650)
!3658 = !DILocation(line: 191, column: 3, scope: !3638)
!3659 = !DILocation(line: 192, column: 1, scope: !3638)
!3660 = distinct !DISubprogram(name: "version_etc_va", scope: !412, file: !412, line: 199, type: !3661, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3674)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !3563, !57, !57, !57, !3663}
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !213, line: 52, baseType: !3664)
!3664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !215, line: 32, baseType: !3665)
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3666, baseType: !3667)
!3666 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !219, size: 256, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672, !3673}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3667, file: !3666, line: 192, baseType: !52, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3667, file: !3666, line: 192, baseType: !52, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3667, file: !3666, line: 192, baseType: !52, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3667, file: !3666, line: 192, baseType: !6, size: 32, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3667, file: !3666, line: 192, baseType: !6, size: 32, offset: 224)
!3674 = !{!3675, !3676, !3677, !3678, !3679, !3680, !3681}
!3675 = !DILocalVariable(name: "stream", arg: 1, scope: !3660, file: !412, line: 199, type: !3563)
!3676 = !DILocalVariable(name: "command_name", arg: 2, scope: !3660, file: !412, line: 200, type: !57)
!3677 = !DILocalVariable(name: "package", arg: 3, scope: !3660, file: !412, line: 200, type: !57)
!3678 = !DILocalVariable(name: "version", arg: 4, scope: !3660, file: !412, line: 201, type: !57)
!3679 = !DILocalVariable(name: "authors", arg: 5, scope: !3660, file: !412, line: 201, type: !3663)
!3680 = !DILocalVariable(name: "n_authors", scope: !3660, file: !412, line: 203, type: !54)
!3681 = !DILocalVariable(name: "authtab", scope: !3660, file: !412, line: 204, type: !3682)
!3682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 640, elements: !300)
!3683 = !DILocation(line: 0, scope: !3660)
!3684 = !DILocation(line: 201, column: 46, scope: !3660)
!3685 = !DILocation(line: 204, column: 3, scope: !3660)
!3686 = !DILocation(line: 204, column: 15, scope: !3660)
!3687 = !DILocation(line: 208, column: 35, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !412, line: 206, column: 3)
!3689 = distinct !DILexicalBlock(scope: !3660, file: !412, line: 206, column: 3)
!3690 = !DILocation(line: 208, column: 14, scope: !3688)
!3691 = !DILocation(line: 208, column: 33, scope: !3688)
!3692 = !DILocation(line: 208, column: 67, scope: !3688)
!3693 = !DILocation(line: 206, column: 3, scope: !3689)
!3694 = !DILocation(line: 0, scope: !3689)
!3695 = !DILocation(line: 211, column: 3, scope: !3660)
!3696 = !DILocation(line: 213, column: 1, scope: !3660)
!3697 = distinct !DISubprogram(name: "version_etc", scope: !412, file: !412, line: 230, type: !3698, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !3563, !57, !57, !57, null}
!3700 = !{!3701, !3702, !3703, !3704, !3705}
!3701 = !DILocalVariable(name: "stream", arg: 1, scope: !3697, file: !412, line: 230, type: !3563)
!3702 = !DILocalVariable(name: "command_name", arg: 2, scope: !3697, file: !412, line: 231, type: !57)
!3703 = !DILocalVariable(name: "package", arg: 3, scope: !3697, file: !412, line: 231, type: !57)
!3704 = !DILocalVariable(name: "version", arg: 4, scope: !3697, file: !412, line: 232, type: !57)
!3705 = !DILocalVariable(name: "authors", scope: !3697, file: !412, line: 234, type: !3663)
!3706 = !DILocation(line: 0, scope: !3697)
!3707 = !DILocation(line: 234, column: 3, scope: !3697)
!3708 = !DILocation(line: 234, column: 11, scope: !3697)
!3709 = !DILocation(line: 235, column: 3, scope: !3697)
!3710 = !DILocation(line: 236, column: 3, scope: !3697)
!3711 = !DILocation(line: 237, column: 3, scope: !3697)
!3712 = !DILocation(line: 238, column: 1, scope: !3697)
!3713 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !412, file: !412, line: 241, type: !240, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !495)
!3714 = !DILocation(line: 243, column: 3, scope: !3713)
!3715 = !DILocation(line: 248, column: 3, scope: !3713)
!3716 = !DILocation(line: 254, column: 3, scope: !3713)
!3717 = !DILocation(line: 259, column: 3, scope: !3713)
!3718 = !DILocation(line: 261, column: 1, scope: !3713)
!3719 = distinct !DISubprogram(name: "xnrealloc", scope: !3720, file: !3720, line: 147, type: !3721, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3723)
!3720 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!52, !52, !54, !54}
!3723 = !{!3724, !3725, !3726}
!3724 = !DILocalVariable(name: "p", arg: 1, scope: !3719, file: !3720, line: 147, type: !52)
!3725 = !DILocalVariable(name: "n", arg: 2, scope: !3719, file: !3720, line: 147, type: !54)
!3726 = !DILocalVariable(name: "s", arg: 3, scope: !3719, file: !3720, line: 147, type: !54)
!3727 = !DILocation(line: 0, scope: !3719)
!3728 = !DILocalVariable(name: "p", arg: 1, scope: !3729, file: !418, line: 83, type: !52)
!3729 = distinct !DISubprogram(name: "xreallocarray", scope: !418, file: !418, line: 83, type: !3721, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3730)
!3730 = !{!3728, !3731, !3732}
!3731 = !DILocalVariable(name: "n", arg: 2, scope: !3729, file: !418, line: 83, type: !54)
!3732 = !DILocalVariable(name: "s", arg: 3, scope: !3729, file: !418, line: 83, type: !54)
!3733 = !DILocation(line: 0, scope: !3729, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 149, column: 10, scope: !3719)
!3735 = !DILocation(line: 85, column: 25, scope: !3729, inlinedAt: !3734)
!3736 = !DILocalVariable(name: "p", arg: 1, scope: !3737, file: !418, line: 37, type: !52)
!3737 = distinct !DISubprogram(name: "check_nonnull", scope: !418, file: !418, line: 37, type: !3738, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!52, !52}
!3740 = !{!3736}
!3741 = !DILocation(line: 0, scope: !3737, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 85, column: 10, scope: !3729, inlinedAt: !3734)
!3743 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3742)
!3744 = distinct !DILexicalBlock(scope: !3737, file: !418, line: 39, column: 7)
!3745 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3742)
!3746 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3742)
!3747 = !DILocation(line: 149, column: 3, scope: !3719)
!3748 = !DILocation(line: 0, scope: !3729)
!3749 = !DILocation(line: 85, column: 25, scope: !3729)
!3750 = !DILocation(line: 0, scope: !3737, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 85, column: 10, scope: !3729)
!3752 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3751)
!3753 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3751)
!3754 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3751)
!3755 = !DILocation(line: 85, column: 3, scope: !3729)
!3756 = distinct !DISubprogram(name: "xmalloc", scope: !418, file: !418, line: 47, type: !3757, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!52, !54}
!3759 = !{!3760}
!3760 = !DILocalVariable(name: "s", arg: 1, scope: !3756, file: !418, line: 47, type: !54)
!3761 = !DILocation(line: 0, scope: !3756)
!3762 = !DILocation(line: 49, column: 25, scope: !3756)
!3763 = !DILocation(line: 0, scope: !3737, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 49, column: 10, scope: !3756)
!3765 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3764)
!3766 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3764)
!3767 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3764)
!3768 = !DILocation(line: 49, column: 3, scope: !3756)
!3769 = distinct !DISubprogram(name: "ximalloc", scope: !418, file: !418, line: 53, type: !3770, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!52, !437}
!3772 = !{!3773}
!3773 = !DILocalVariable(name: "s", arg: 1, scope: !3769, file: !418, line: 53, type: !437)
!3774 = !DILocation(line: 0, scope: !3769)
!3775 = !DILocalVariable(name: "s", arg: 1, scope: !3776, file: !3777, line: 55, type: !437)
!3776 = distinct !DISubprogram(name: "imalloc", scope: !3777, file: !3777, line: 55, type: !3770, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3778)
!3777 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3778 = !{!3775}
!3779 = !DILocation(line: 0, scope: !3776, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 55, column: 25, scope: !3769)
!3781 = !DILocation(line: 57, column: 26, scope: !3776, inlinedAt: !3780)
!3782 = !DILocation(line: 0, scope: !3737, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 55, column: 10, scope: !3769)
!3784 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3783)
!3785 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3783)
!3786 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3783)
!3787 = !DILocation(line: 55, column: 3, scope: !3769)
!3788 = distinct !DISubprogram(name: "xcharalloc", scope: !418, file: !418, line: 59, type: !3789, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!8, !54}
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "n", arg: 1, scope: !3788, file: !418, line: 59, type: !54)
!3793 = !DILocation(line: 0, scope: !3788)
!3794 = !DILocation(line: 0, scope: !3756, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 61, column: 10, scope: !3788)
!3796 = !DILocation(line: 49, column: 25, scope: !3756, inlinedAt: !3795)
!3797 = !DILocation(line: 0, scope: !3737, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 49, column: 10, scope: !3756, inlinedAt: !3795)
!3799 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3798)
!3800 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3798)
!3801 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3798)
!3802 = !DILocation(line: 61, column: 3, scope: !3788)
!3803 = distinct !DISubprogram(name: "xrealloc", scope: !418, file: !418, line: 68, type: !3804, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3806)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!52, !52, !54}
!3806 = !{!3807, !3808}
!3807 = !DILocalVariable(name: "p", arg: 1, scope: !3803, file: !418, line: 68, type: !52)
!3808 = !DILocalVariable(name: "s", arg: 2, scope: !3803, file: !418, line: 68, type: !54)
!3809 = !DILocation(line: 0, scope: !3803)
!3810 = !DILocalVariable(name: "ptr", arg: 1, scope: !3811, file: !3812, line: 2057, type: !52)
!3811 = distinct !DISubprogram(name: "rpl_realloc", scope: !3812, file: !3812, line: 2057, type: !3804, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3813)
!3812 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3813 = !{!3810, !3814}
!3814 = !DILocalVariable(name: "size", arg: 2, scope: !3811, file: !3812, line: 2057, type: !54)
!3815 = !DILocation(line: 0, scope: !3811, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 70, column: 25, scope: !3803)
!3817 = !DILocation(line: 2059, column: 24, scope: !3811, inlinedAt: !3816)
!3818 = !DILocation(line: 2059, column: 10, scope: !3811, inlinedAt: !3816)
!3819 = !DILocation(line: 0, scope: !3737, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 70, column: 10, scope: !3803)
!3821 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3820)
!3822 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3820)
!3823 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3820)
!3824 = !DILocation(line: 70, column: 3, scope: !3803)
!3825 = distinct !DISubprogram(name: "xirealloc", scope: !418, file: !418, line: 74, type: !3826, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!52, !52, !437}
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "p", arg: 1, scope: !3825, file: !418, line: 74, type: !52)
!3830 = !DILocalVariable(name: "s", arg: 2, scope: !3825, file: !418, line: 74, type: !437)
!3831 = !DILocation(line: 0, scope: !3825)
!3832 = !DILocalVariable(name: "p", arg: 1, scope: !3833, file: !3777, line: 66, type: !52)
!3833 = distinct !DISubprogram(name: "irealloc", scope: !3777, file: !3777, line: 66, type: !3826, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3834)
!3834 = !{!3832, !3835}
!3835 = !DILocalVariable(name: "s", arg: 2, scope: !3833, file: !3777, line: 66, type: !437)
!3836 = !DILocation(line: 0, scope: !3833, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 76, column: 25, scope: !3825)
!3838 = !DILocation(line: 0, scope: !3811, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 68, column: 26, scope: !3833, inlinedAt: !3837)
!3840 = !DILocation(line: 2059, column: 24, scope: !3811, inlinedAt: !3839)
!3841 = !DILocation(line: 2059, column: 10, scope: !3811, inlinedAt: !3839)
!3842 = !DILocation(line: 0, scope: !3737, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 76, column: 10, scope: !3825)
!3844 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3843)
!3845 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3843)
!3846 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3843)
!3847 = !DILocation(line: 76, column: 3, scope: !3825)
!3848 = distinct !DISubprogram(name: "xireallocarray", scope: !418, file: !418, line: 89, type: !3849, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!52, !52, !437, !437}
!3851 = !{!3852, !3853, !3854}
!3852 = !DILocalVariable(name: "p", arg: 1, scope: !3848, file: !418, line: 89, type: !52)
!3853 = !DILocalVariable(name: "n", arg: 2, scope: !3848, file: !418, line: 89, type: !437)
!3854 = !DILocalVariable(name: "s", arg: 3, scope: !3848, file: !418, line: 89, type: !437)
!3855 = !DILocation(line: 0, scope: !3848)
!3856 = !DILocalVariable(name: "p", arg: 1, scope: !3857, file: !3777, line: 98, type: !52)
!3857 = distinct !DISubprogram(name: "ireallocarray", scope: !3777, file: !3777, line: 98, type: !3849, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3858)
!3858 = !{!3856, !3859, !3860}
!3859 = !DILocalVariable(name: "n", arg: 2, scope: !3857, file: !3777, line: 98, type: !437)
!3860 = !DILocalVariable(name: "s", arg: 3, scope: !3857, file: !3777, line: 98, type: !437)
!3861 = !DILocation(line: 0, scope: !3857, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 91, column: 25, scope: !3848)
!3863 = !DILocation(line: 101, column: 13, scope: !3857, inlinedAt: !3862)
!3864 = !DILocation(line: 0, scope: !3737, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 91, column: 10, scope: !3848)
!3866 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3865)
!3867 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3865)
!3868 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3865)
!3869 = !DILocation(line: 91, column: 3, scope: !3848)
!3870 = distinct !DISubprogram(name: "xnmalloc", scope: !418, file: !418, line: 98, type: !3871, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!52, !54, !54}
!3873 = !{!3874, !3875}
!3874 = !DILocalVariable(name: "n", arg: 1, scope: !3870, file: !418, line: 98, type: !54)
!3875 = !DILocalVariable(name: "s", arg: 2, scope: !3870, file: !418, line: 98, type: !54)
!3876 = !DILocation(line: 0, scope: !3870)
!3877 = !DILocation(line: 0, scope: !3729, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 100, column: 10, scope: !3870)
!3879 = !DILocation(line: 85, column: 25, scope: !3729, inlinedAt: !3878)
!3880 = !DILocation(line: 0, scope: !3737, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 85, column: 10, scope: !3729, inlinedAt: !3878)
!3882 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3881)
!3883 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3881)
!3884 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3881)
!3885 = !DILocation(line: 100, column: 3, scope: !3870)
!3886 = distinct !DISubprogram(name: "xinmalloc", scope: !418, file: !418, line: 104, type: !3887, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!52, !437, !437}
!3889 = !{!3890, !3891}
!3890 = !DILocalVariable(name: "n", arg: 1, scope: !3886, file: !418, line: 104, type: !437)
!3891 = !DILocalVariable(name: "s", arg: 2, scope: !3886, file: !418, line: 104, type: !437)
!3892 = !DILocation(line: 0, scope: !3886)
!3893 = !DILocation(line: 0, scope: !3848, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 106, column: 10, scope: !3886)
!3895 = !DILocation(line: 0, scope: !3857, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 91, column: 25, scope: !3848, inlinedAt: !3894)
!3897 = !DILocation(line: 101, column: 13, scope: !3857, inlinedAt: !3896)
!3898 = !DILocation(line: 0, scope: !3737, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 91, column: 10, scope: !3848, inlinedAt: !3894)
!3900 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3899)
!3901 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3899)
!3902 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3899)
!3903 = !DILocation(line: 106, column: 3, scope: !3886)
!3904 = distinct !DISubprogram(name: "x2realloc", scope: !418, file: !418, line: 116, type: !3905, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!52, !52, !424}
!3907 = !{!3908, !3909}
!3908 = !DILocalVariable(name: "p", arg: 1, scope: !3904, file: !418, line: 116, type: !52)
!3909 = !DILocalVariable(name: "ps", arg: 2, scope: !3904, file: !418, line: 116, type: !424)
!3910 = !DILocation(line: 0, scope: !3904)
!3911 = !DILocation(line: 0, scope: !421, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 118, column: 10, scope: !3904)
!3913 = !DILocation(line: 178, column: 14, scope: !421, inlinedAt: !3912)
!3914 = !DILocation(line: 180, column: 9, scope: !3915, inlinedAt: !3912)
!3915 = distinct !DILexicalBlock(scope: !421, file: !418, line: 180, column: 7)
!3916 = !DILocation(line: 180, column: 7, scope: !421, inlinedAt: !3912)
!3917 = !DILocation(line: 182, column: 13, scope: !3918, inlinedAt: !3912)
!3918 = distinct !DILexicalBlock(scope: !3919, file: !418, line: 182, column: 11)
!3919 = distinct !DILexicalBlock(scope: !3915, file: !418, line: 181, column: 5)
!3920 = !DILocation(line: 182, column: 11, scope: !3919, inlinedAt: !3912)
!3921 = !DILocation(line: 197, column: 11, scope: !3922, inlinedAt: !3912)
!3922 = distinct !DILexicalBlock(scope: !3923, file: !418, line: 197, column: 11)
!3923 = distinct !DILexicalBlock(scope: !3915, file: !418, line: 195, column: 5)
!3924 = !DILocation(line: 197, column: 11, scope: !3923, inlinedAt: !3912)
!3925 = !DILocation(line: 198, column: 9, scope: !3922, inlinedAt: !3912)
!3926 = !DILocation(line: 0, scope: !3729, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 201, column: 7, scope: !421, inlinedAt: !3912)
!3928 = !DILocation(line: 85, column: 25, scope: !3729, inlinedAt: !3927)
!3929 = !DILocation(line: 0, scope: !3737, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 85, column: 10, scope: !3729, inlinedAt: !3927)
!3931 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3930)
!3932 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3930)
!3933 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3930)
!3934 = !DILocation(line: 202, column: 7, scope: !421, inlinedAt: !3912)
!3935 = !DILocation(line: 118, column: 3, scope: !3904)
!3936 = !DILocation(line: 0, scope: !421)
!3937 = !DILocation(line: 178, column: 14, scope: !421)
!3938 = !DILocation(line: 180, column: 9, scope: !3915)
!3939 = !DILocation(line: 180, column: 7, scope: !421)
!3940 = !DILocation(line: 182, column: 13, scope: !3918)
!3941 = !DILocation(line: 182, column: 11, scope: !3919)
!3942 = !DILocation(line: 190, column: 30, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3918, file: !418, line: 183, column: 9)
!3944 = !DILocation(line: 191, column: 16, scope: !3943)
!3945 = !DILocation(line: 191, column: 13, scope: !3943)
!3946 = !DILocation(line: 192, column: 9, scope: !3943)
!3947 = !DILocation(line: 197, column: 11, scope: !3922)
!3948 = !DILocation(line: 197, column: 11, scope: !3923)
!3949 = !DILocation(line: 198, column: 9, scope: !3922)
!3950 = !DILocation(line: 0, scope: !3729, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 201, column: 7, scope: !421)
!3952 = !DILocation(line: 85, column: 25, scope: !3729, inlinedAt: !3951)
!3953 = !DILocation(line: 0, scope: !3737, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 85, column: 10, scope: !3729, inlinedAt: !3951)
!3955 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3954)
!3956 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3954)
!3957 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3954)
!3958 = !DILocation(line: 202, column: 7, scope: !421)
!3959 = !DILocation(line: 203, column: 3, scope: !421)
!3960 = !DILocation(line: 0, scope: !433)
!3961 = !DILocation(line: 230, column: 14, scope: !433)
!3962 = !DILocation(line: 238, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !433, file: !418, line: 238, column: 7)
!3964 = !DILocation(line: 238, column: 7, scope: !433)
!3965 = !DILocation(line: 240, column: 9, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !433, file: !418, line: 240, column: 7)
!3967 = !DILocation(line: 240, column: 18, scope: !3966)
!3968 = !DILocation(line: 253, column: 8, scope: !433)
!3969 = !DILocation(line: 258, column: 27, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !418, line: 257, column: 5)
!3971 = distinct !DILexicalBlock(scope: !433, file: !418, line: 256, column: 7)
!3972 = !DILocation(line: 259, column: 32, scope: !3970)
!3973 = !DILocation(line: 260, column: 5, scope: !3970)
!3974 = !DILocation(line: 262, column: 9, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !433, file: !418, line: 262, column: 7)
!3976 = !DILocation(line: 262, column: 7, scope: !433)
!3977 = !DILocation(line: 263, column: 9, scope: !3975)
!3978 = !DILocation(line: 263, column: 5, scope: !3975)
!3979 = !DILocation(line: 264, column: 9, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !433, file: !418, line: 264, column: 7)
!3981 = !DILocation(line: 264, column: 14, scope: !3980)
!3982 = !DILocation(line: 265, column: 7, scope: !3980)
!3983 = !DILocation(line: 265, column: 11, scope: !3980)
!3984 = !DILocation(line: 266, column: 11, scope: !3980)
!3985 = !DILocation(line: 266, column: 26, scope: !3980)
!3986 = !DILocation(line: 267, column: 14, scope: !3980)
!3987 = !DILocation(line: 264, column: 7, scope: !433)
!3988 = !DILocation(line: 268, column: 5, scope: !3980)
!3989 = !DILocation(line: 0, scope: !3803, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 269, column: 8, scope: !433)
!3991 = !DILocation(line: 0, scope: !3811, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 70, column: 25, scope: !3803, inlinedAt: !3990)
!3993 = !DILocation(line: 2059, column: 24, scope: !3811, inlinedAt: !3992)
!3994 = !DILocation(line: 2059, column: 10, scope: !3811, inlinedAt: !3992)
!3995 = !DILocation(line: 0, scope: !3737, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 70, column: 10, scope: !3803, inlinedAt: !3990)
!3997 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !3996)
!3998 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !3996)
!3999 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !3996)
!4000 = !DILocation(line: 270, column: 7, scope: !433)
!4001 = !DILocation(line: 271, column: 3, scope: !433)
!4002 = distinct !DISubprogram(name: "xzalloc", scope: !418, file: !418, line: 279, type: !3757, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4003)
!4003 = !{!4004}
!4004 = !DILocalVariable(name: "s", arg: 1, scope: !4002, file: !418, line: 279, type: !54)
!4005 = !DILocation(line: 0, scope: !4002)
!4006 = !DILocalVariable(name: "n", arg: 1, scope: !4007, file: !418, line: 294, type: !54)
!4007 = distinct !DISubprogram(name: "xcalloc", scope: !418, file: !418, line: 294, type: !3871, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4008)
!4008 = !{!4006, !4009}
!4009 = !DILocalVariable(name: "s", arg: 2, scope: !4007, file: !418, line: 294, type: !54)
!4010 = !DILocation(line: 0, scope: !4007, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 281, column: 10, scope: !4002)
!4012 = !DILocation(line: 296, column: 25, scope: !4007, inlinedAt: !4011)
!4013 = !DILocation(line: 0, scope: !3737, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 296, column: 10, scope: !4007, inlinedAt: !4011)
!4015 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !4014)
!4016 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !4014)
!4017 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !4014)
!4018 = !DILocation(line: 281, column: 3, scope: !4002)
!4019 = !DILocation(line: 0, scope: !4007)
!4020 = !DILocation(line: 296, column: 25, scope: !4007)
!4021 = !DILocation(line: 0, scope: !3737, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 296, column: 10, scope: !4007)
!4023 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !4022)
!4024 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !4022)
!4025 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !4022)
!4026 = !DILocation(line: 296, column: 3, scope: !4007)
!4027 = distinct !DISubprogram(name: "xizalloc", scope: !418, file: !418, line: 285, type: !3770, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4028)
!4028 = !{!4029}
!4029 = !DILocalVariable(name: "s", arg: 1, scope: !4027, file: !418, line: 285, type: !437)
!4030 = !DILocation(line: 0, scope: !4027)
!4031 = !DILocalVariable(name: "n", arg: 1, scope: !4032, file: !418, line: 300, type: !437)
!4032 = distinct !DISubprogram(name: "xicalloc", scope: !418, file: !418, line: 300, type: !3887, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4033)
!4033 = !{!4031, !4034}
!4034 = !DILocalVariable(name: "s", arg: 2, scope: !4032, file: !418, line: 300, type: !437)
!4035 = !DILocation(line: 0, scope: !4032, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 287, column: 10, scope: !4027)
!4037 = !DILocalVariable(name: "n", arg: 1, scope: !4038, file: !3777, line: 77, type: !437)
!4038 = distinct !DISubprogram(name: "icalloc", scope: !3777, file: !3777, line: 77, type: !3887, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4039)
!4039 = !{!4037, !4040}
!4040 = !DILocalVariable(name: "s", arg: 2, scope: !4038, file: !3777, line: 77, type: !437)
!4041 = !DILocation(line: 0, scope: !4038, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 302, column: 25, scope: !4032, inlinedAt: !4036)
!4043 = !DILocation(line: 91, column: 10, scope: !4038, inlinedAt: !4042)
!4044 = !DILocation(line: 0, scope: !3737, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 302, column: 10, scope: !4032, inlinedAt: !4036)
!4046 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !4045)
!4047 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !4045)
!4048 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !4045)
!4049 = !DILocation(line: 287, column: 3, scope: !4027)
!4050 = !DILocation(line: 0, scope: !4032)
!4051 = !DILocation(line: 0, scope: !4038, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 302, column: 25, scope: !4032)
!4053 = !DILocation(line: 91, column: 10, scope: !4038, inlinedAt: !4052)
!4054 = !DILocation(line: 0, scope: !3737, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 302, column: 10, scope: !4032)
!4056 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !4055)
!4057 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !4055)
!4058 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !4055)
!4059 = !DILocation(line: 302, column: 3, scope: !4032)
!4060 = distinct !DISubprogram(name: "xmemdup", scope: !418, file: !418, line: 310, type: !4061, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!52, !694, !54}
!4063 = !{!4064, !4065}
!4064 = !DILocalVariable(name: "p", arg: 1, scope: !4060, file: !418, line: 310, type: !694)
!4065 = !DILocalVariable(name: "s", arg: 2, scope: !4060, file: !418, line: 310, type: !54)
!4066 = !DILocation(line: 0, scope: !4060)
!4067 = !DILocation(line: 0, scope: !3756, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 312, column: 18, scope: !4060)
!4069 = !DILocation(line: 49, column: 25, scope: !3756, inlinedAt: !4068)
!4070 = !DILocation(line: 0, scope: !3737, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 49, column: 10, scope: !3756, inlinedAt: !4068)
!4072 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !4071)
!4073 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !4071)
!4074 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !4071)
!4075 = !DILocalVariable(name: "__dest", arg: 1, scope: !4076, file: !1983, line: 26, type: !3533)
!4076 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 26, type: !3531, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4077)
!4077 = !{!4075, !4078, !4079}
!4078 = !DILocalVariable(name: "__src", arg: 2, scope: !4076, file: !1983, line: 26, type: !693)
!4079 = !DILocalVariable(name: "__len", arg: 3, scope: !4076, file: !1983, line: 26, type: !54)
!4080 = !DILocation(line: 0, scope: !4076, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 312, column: 10, scope: !4060)
!4082 = !DILocation(line: 29, column: 10, scope: !4076, inlinedAt: !4081)
!4083 = !DILocation(line: 312, column: 3, scope: !4060)
!4084 = distinct !DISubprogram(name: "ximemdup", scope: !418, file: !418, line: 316, type: !4085, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!52, !694, !437}
!4087 = !{!4088, !4089}
!4088 = !DILocalVariable(name: "p", arg: 1, scope: !4084, file: !418, line: 316, type: !694)
!4089 = !DILocalVariable(name: "s", arg: 2, scope: !4084, file: !418, line: 316, type: !437)
!4090 = !DILocation(line: 0, scope: !4084)
!4091 = !DILocation(line: 0, scope: !3769, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 318, column: 18, scope: !4084)
!4093 = !DILocation(line: 0, scope: !3776, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 55, column: 25, scope: !3769, inlinedAt: !4092)
!4095 = !DILocation(line: 57, column: 26, scope: !3776, inlinedAt: !4094)
!4096 = !DILocation(line: 0, scope: !3737, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 55, column: 10, scope: !3769, inlinedAt: !4092)
!4098 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !4097)
!4099 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !4097)
!4100 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !4097)
!4101 = !DILocation(line: 0, scope: !4076, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 318, column: 10, scope: !4084)
!4103 = !DILocation(line: 29, column: 10, scope: !4076, inlinedAt: !4102)
!4104 = !DILocation(line: 318, column: 3, scope: !4084)
!4105 = distinct !DISubprogram(name: "ximemdup0", scope: !418, file: !418, line: 325, type: !4106, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4108)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!8, !694, !437}
!4108 = !{!4109, !4110, !4111}
!4109 = !DILocalVariable(name: "p", arg: 1, scope: !4105, file: !418, line: 325, type: !694)
!4110 = !DILocalVariable(name: "s", arg: 2, scope: !4105, file: !418, line: 325, type: !437)
!4111 = !DILocalVariable(name: "result", scope: !4105, file: !418, line: 327, type: !8)
!4112 = !DILocation(line: 0, scope: !4105)
!4113 = !DILocation(line: 327, column: 30, scope: !4105)
!4114 = !DILocation(line: 0, scope: !3769, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 327, column: 18, scope: !4105)
!4116 = !DILocation(line: 0, scope: !3776, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 55, column: 25, scope: !3769, inlinedAt: !4115)
!4118 = !DILocation(line: 57, column: 26, scope: !3776, inlinedAt: !4117)
!4119 = !DILocation(line: 0, scope: !3737, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 55, column: 10, scope: !3769, inlinedAt: !4115)
!4121 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !4120)
!4122 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !4120)
!4123 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !4120)
!4124 = !DILocation(line: 328, column: 3, scope: !4105)
!4125 = !DILocation(line: 328, column: 13, scope: !4105)
!4126 = !DILocation(line: 0, scope: !4076, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 329, column: 10, scope: !4105)
!4128 = !DILocation(line: 29, column: 10, scope: !4076, inlinedAt: !4127)
!4129 = !DILocation(line: 329, column: 3, scope: !4105)
!4130 = distinct !DISubprogram(name: "xstrdup", scope: !418, file: !418, line: 335, type: !688, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4131)
!4131 = !{!4132}
!4132 = !DILocalVariable(name: "string", arg: 1, scope: !4130, file: !418, line: 335, type: !57)
!4133 = !DILocation(line: 0, scope: !4130)
!4134 = !DILocation(line: 337, column: 27, scope: !4130)
!4135 = !DILocation(line: 337, column: 43, scope: !4130)
!4136 = !DILocation(line: 0, scope: !4060, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 337, column: 10, scope: !4130)
!4138 = !DILocation(line: 0, scope: !3756, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 312, column: 18, scope: !4060, inlinedAt: !4137)
!4140 = !DILocation(line: 49, column: 25, scope: !3756, inlinedAt: !4139)
!4141 = !DILocation(line: 0, scope: !3737, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 49, column: 10, scope: !3756, inlinedAt: !4139)
!4143 = !DILocation(line: 39, column: 8, scope: !3744, inlinedAt: !4142)
!4144 = !DILocation(line: 39, column: 7, scope: !3737, inlinedAt: !4142)
!4145 = !DILocation(line: 40, column: 5, scope: !3744, inlinedAt: !4142)
!4146 = !DILocation(line: 0, scope: !4076, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 312, column: 10, scope: !4060, inlinedAt: !4137)
!4148 = !DILocation(line: 29, column: 10, scope: !4076, inlinedAt: !4147)
!4149 = !DILocation(line: 337, column: 3, scope: !4130)
!4150 = distinct !DISubprogram(name: "xalloc_die", scope: !452, file: !452, line: 32, type: !240, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !4151)
!4151 = !{!4152}
!4152 = !DILocalVariable(name: "__errstatus", scope: !4153, file: !452, line: 34, type: !4154)
!4153 = distinct !DILexicalBlock(scope: !4150, file: !452, line: 34, column: 3)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!4155 = !DILocation(line: 34, column: 3, scope: !4153)
!4156 = !DILocation(line: 0, scope: !4153)
!4157 = !DILocation(line: 40, column: 3, scope: !4150)
!4158 = distinct !DISubprogram(name: "close_stream", scope: !454, file: !454, line: 55, type: !4159, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !4195)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!6, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !4163)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4163, file: !91, line: 51, baseType: !6, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4163, file: !91, line: 54, baseType: !8, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4163, file: !91, line: 55, baseType: !8, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4163, file: !91, line: 56, baseType: !8, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4163, file: !91, line: 57, baseType: !8, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4163, file: !91, line: 58, baseType: !8, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4163, file: !91, line: 59, baseType: !8, size: 64, offset: 384)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4163, file: !91, line: 60, baseType: !8, size: 64, offset: 448)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4163, file: !91, line: 61, baseType: !8, size: 64, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4163, file: !91, line: 64, baseType: !8, size: 64, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4163, file: !91, line: 65, baseType: !8, size: 64, offset: 640)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4163, file: !91, line: 66, baseType: !8, size: 64, offset: 704)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4163, file: !91, line: 68, baseType: !106, size: 64, offset: 768)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4163, file: !91, line: 70, baseType: !4179, size: 64, offset: 832)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4163, file: !91, line: 72, baseType: !6, size: 32, offset: 896)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4163, file: !91, line: 73, baseType: !6, size: 32, offset: 928)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4163, file: !91, line: 74, baseType: !113, size: 64, offset: 960)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4163, file: !91, line: 77, baseType: !53, size: 16, offset: 1024)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4163, file: !91, line: 78, baseType: !118, size: 8, offset: 1040)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4163, file: !91, line: 79, baseType: !120, size: 8, offset: 1048)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4163, file: !91, line: 81, baseType: !124, size: 64, offset: 1088)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4163, file: !91, line: 89, baseType: !127, size: 64, offset: 1152)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4163, file: !91, line: 91, baseType: !129, size: 64, offset: 1216)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4163, file: !91, line: 92, baseType: !132, size: 64, offset: 1280)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4163, file: !91, line: 93, baseType: !4179, size: 64, offset: 1344)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4163, file: !91, line: 94, baseType: !52, size: 64, offset: 1408)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4163, file: !91, line: 95, baseType: !54, size: 64, offset: 1472)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4163, file: !91, line: 96, baseType: !6, size: 32, offset: 1536)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4163, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!4195 = !{!4196, !4197, !4199, !4200}
!4196 = !DILocalVariable(name: "stream", arg: 1, scope: !4158, file: !454, line: 55, type: !4161)
!4197 = !DILocalVariable(name: "some_pending", scope: !4158, file: !454, line: 57, type: !4198)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!4199 = !DILocalVariable(name: "prev_fail", scope: !4158, file: !454, line: 58, type: !4198)
!4200 = !DILocalVariable(name: "fclose_fail", scope: !4158, file: !454, line: 59, type: !4198)
!4201 = !DILocation(line: 0, scope: !4158)
!4202 = !DILocation(line: 57, column: 30, scope: !4158)
!4203 = !DILocalVariable(name: "__stream", arg: 1, scope: !4204, file: !793, line: 135, type: !4161)
!4204 = distinct !DISubprogram(name: "ferror_unlocked", scope: !793, file: !793, line: 135, type: !4159, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !4205)
!4205 = !{!4203}
!4206 = !DILocation(line: 0, scope: !4204, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 58, column: 27, scope: !4158)
!4208 = !DILocation(line: 137, column: 10, scope: !4204, inlinedAt: !4207)
!4209 = !DILocation(line: 58, column: 43, scope: !4158)
!4210 = !DILocation(line: 59, column: 29, scope: !4158)
!4211 = !DILocation(line: 59, column: 45, scope: !4158)
!4212 = !DILocation(line: 69, column: 17, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4158, file: !454, line: 69, column: 7)
!4214 = !DILocation(line: 57, column: 50, scope: !4158)
!4215 = !DILocation(line: 69, column: 33, scope: !4213)
!4216 = !DILocation(line: 69, column: 53, scope: !4213)
!4217 = !DILocation(line: 69, column: 59, scope: !4213)
!4218 = !DILocation(line: 69, column: 7, scope: !4158)
!4219 = !DILocation(line: 71, column: 11, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4213, file: !454, line: 70, column: 5)
!4221 = !DILocation(line: 72, column: 9, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4220, file: !454, line: 71, column: 11)
!4223 = !DILocation(line: 72, column: 15, scope: !4222)
!4224 = !DILocation(line: 77, column: 1, scope: !4158)
!4225 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !376, file: !376, line: 100, type: !4226, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !4229)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!54, !2001, !57, !54, !4228}
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!4229 = !{!4230, !4231, !4232, !4233, !4234}
!4230 = !DILocalVariable(name: "pwc", arg: 1, scope: !4225, file: !376, line: 100, type: !2001)
!4231 = !DILocalVariable(name: "s", arg: 2, scope: !4225, file: !376, line: 100, type: !57)
!4232 = !DILocalVariable(name: "n", arg: 3, scope: !4225, file: !376, line: 100, type: !54)
!4233 = !DILocalVariable(name: "ps", arg: 4, scope: !4225, file: !376, line: 100, type: !4228)
!4234 = !DILocalVariable(name: "ret", scope: !4225, file: !376, line: 130, type: !54)
!4235 = !DILocation(line: 0, scope: !4225)
!4236 = !DILocation(line: 105, column: 9, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4225, file: !376, line: 105, column: 7)
!4238 = !DILocation(line: 105, column: 7, scope: !4225)
!4239 = !DILocation(line: 117, column: 10, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4225, file: !376, line: 117, column: 7)
!4241 = !DILocation(line: 117, column: 7, scope: !4225)
!4242 = !DILocation(line: 130, column: 16, scope: !4225)
!4243 = !DILocation(line: 135, column: 11, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4225, file: !376, line: 135, column: 7)
!4245 = !DILocation(line: 135, column: 25, scope: !4244)
!4246 = !DILocation(line: 135, column: 30, scope: !4244)
!4247 = !DILocation(line: 135, column: 7, scope: !4225)
!4248 = !DILocalVariable(name: "ps", arg: 1, scope: !4249, file: !1974, line: 1135, type: !4228)
!4249 = distinct !DISubprogram(name: "mbszero", scope: !1974, file: !1974, line: 1135, type: !4250, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !4228}
!4252 = !{!4248}
!4253 = !DILocation(line: 0, scope: !4249, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 137, column: 5, scope: !4244)
!4255 = !DILocalVariable(name: "__dest", arg: 1, scope: !4256, file: !1983, line: 57, type: !52)
!4256 = distinct !DISubprogram(name: "memset", scope: !1983, file: !1983, line: 57, type: !1984, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !4257)
!4257 = !{!4255, !4258, !4259}
!4258 = !DILocalVariable(name: "__ch", arg: 2, scope: !4256, file: !1983, line: 57, type: !6)
!4259 = !DILocalVariable(name: "__len", arg: 3, scope: !4256, file: !1983, line: 57, type: !54)
!4260 = !DILocation(line: 0, scope: !4256, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 1137, column: 3, scope: !4249, inlinedAt: !4254)
!4262 = !DILocation(line: 59, column: 10, scope: !4256, inlinedAt: !4261)
!4263 = !DILocation(line: 137, column: 5, scope: !4244)
!4264 = !DILocation(line: 138, column: 11, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4225, file: !376, line: 138, column: 7)
!4266 = !DILocation(line: 138, column: 7, scope: !4225)
!4267 = !DILocation(line: 139, column: 5, scope: !4265)
!4268 = !DILocation(line: 143, column: 26, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4225, file: !376, line: 143, column: 7)
!4270 = !DILocation(line: 143, column: 41, scope: !4269)
!4271 = !DILocation(line: 143, column: 7, scope: !4225)
!4272 = !DILocation(line: 145, column: 15, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !376, line: 145, column: 11)
!4274 = distinct !DILexicalBlock(scope: !4269, file: !376, line: 144, column: 5)
!4275 = !DILocation(line: 145, column: 11, scope: !4274)
!4276 = !DILocation(line: 146, column: 32, scope: !4273)
!4277 = !DILocation(line: 146, column: 16, scope: !4273)
!4278 = !DILocation(line: 146, column: 14, scope: !4273)
!4279 = !DILocation(line: 146, column: 9, scope: !4273)
!4280 = !DILocation(line: 286, column: 1, scope: !4225)
!4281 = !DISubprogram(name: "mbsinit", scope: !4282, file: !4282, line: 293, type: !4283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!4282 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!6, !4285}
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!4287 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !456, file: !456, line: 27, type: !3721, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !4288)
!4288 = !{!4289, !4290, !4291, !4292}
!4289 = !DILocalVariable(name: "ptr", arg: 1, scope: !4287, file: !456, line: 27, type: !52)
!4290 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4287, file: !456, line: 27, type: !54)
!4291 = !DILocalVariable(name: "size", arg: 3, scope: !4287, file: !456, line: 27, type: !54)
!4292 = !DILocalVariable(name: "nbytes", scope: !4287, file: !456, line: 29, type: !54)
!4293 = !DILocation(line: 0, scope: !4287)
!4294 = !DILocation(line: 30, column: 7, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4287, file: !456, line: 30, column: 7)
!4296 = !DILocalVariable(name: "ptr", arg: 1, scope: !4297, file: !3812, line: 2057, type: !52)
!4297 = distinct !DISubprogram(name: "rpl_realloc", scope: !3812, file: !3812, line: 2057, type: !3804, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !4298)
!4298 = !{!4296, !4299}
!4299 = !DILocalVariable(name: "size", arg: 2, scope: !4297, file: !3812, line: 2057, type: !54)
!4300 = !DILocation(line: 0, scope: !4297, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 37, column: 10, scope: !4287)
!4302 = !DILocation(line: 2059, column: 24, scope: !4297, inlinedAt: !4301)
!4303 = !DILocation(line: 2059, column: 10, scope: !4297, inlinedAt: !4301)
!4304 = !DILocation(line: 37, column: 3, scope: !4287)
!4305 = !DILocation(line: 32, column: 7, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4295, file: !456, line: 31, column: 5)
!4307 = !DILocation(line: 32, column: 13, scope: !4306)
!4308 = !DILocation(line: 33, column: 7, scope: !4306)
!4309 = !DILocation(line: 38, column: 1, scope: !4287)
!4310 = distinct !DISubprogram(name: "hard_locale", scope: !459, file: !459, line: 28, type: !1779, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !4311)
!4311 = !{!4312, !4313}
!4312 = !DILocalVariable(name: "category", arg: 1, scope: !4310, file: !459, line: 28, type: !6)
!4313 = !DILocalVariable(name: "locale", scope: !4310, file: !459, line: 30, type: !4314)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2056, elements: !4315)
!4315 = !{!4316}
!4316 = !DISubrange(count: 257)
!4317 = !DILocation(line: 0, scope: !4310)
!4318 = !DILocation(line: 30, column: 3, scope: !4310)
!4319 = !DILocation(line: 30, column: 8, scope: !4310)
!4320 = !DILocation(line: 32, column: 7, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4310, file: !459, line: 32, column: 7)
!4322 = !DILocation(line: 32, column: 7, scope: !4310)
!4323 = !DILocalVariable(name: "__s1", arg: 1, scope: !4324, file: !527, line: 1359, type: !57)
!4324 = distinct !DISubprogram(name: "streq", scope: !527, file: !527, line: 1359, type: !528, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !4325)
!4325 = !{!4323, !4326}
!4326 = !DILocalVariable(name: "__s2", arg: 2, scope: !4324, file: !527, line: 1359, type: !57)
!4327 = !DILocation(line: 0, scope: !4324, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 35, column: 9, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4310, file: !459, line: 35, column: 7)
!4330 = !DILocation(line: 1361, column: 11, scope: !4324, inlinedAt: !4328)
!4331 = !DILocation(line: 1361, column: 10, scope: !4324, inlinedAt: !4328)
!4332 = !DILocation(line: 35, column: 29, scope: !4329)
!4333 = !DILocation(line: 0, scope: !4324, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 35, column: 32, scope: !4329)
!4335 = !DILocation(line: 1361, column: 11, scope: !4324, inlinedAt: !4334)
!4336 = !DILocation(line: 1361, column: 10, scope: !4324, inlinedAt: !4334)
!4337 = !DILocation(line: 35, column: 7, scope: !4310)
!4338 = !DILocation(line: 46, column: 3, scope: !4310)
!4339 = !DILocation(line: 47, column: 1, scope: !4310)
!4340 = distinct !DISubprogram(name: "setlocale_null_r", scope: !461, file: !461, line: 154, type: !4341, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!6, !6, !8, !54}
!4343 = !{!4344, !4345, !4346}
!4344 = !DILocalVariable(name: "category", arg: 1, scope: !4340, file: !461, line: 154, type: !6)
!4345 = !DILocalVariable(name: "buf", arg: 2, scope: !4340, file: !461, line: 154, type: !8)
!4346 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4340, file: !461, line: 154, type: !54)
!4347 = !DILocation(line: 0, scope: !4340)
!4348 = !DILocation(line: 159, column: 10, scope: !4340)
!4349 = !DILocation(line: 159, column: 3, scope: !4340)
!4350 = distinct !DISubprogram(name: "setlocale_null", scope: !461, file: !461, line: 186, type: !4351, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!57, !6}
!4353 = !{!4354}
!4354 = !DILocalVariable(name: "category", arg: 1, scope: !4350, file: !461, line: 186, type: !6)
!4355 = !DILocation(line: 0, scope: !4350)
!4356 = !DILocation(line: 189, column: 10, scope: !4350)
!4357 = !DILocation(line: 189, column: 3, scope: !4350)
!4358 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !463, file: !463, line: 35, type: !4351, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !4359)
!4359 = !{!4360, !4361}
!4360 = !DILocalVariable(name: "category", arg: 1, scope: !4358, file: !463, line: 35, type: !6)
!4361 = !DILocalVariable(name: "result", scope: !4358, file: !463, line: 37, type: !57)
!4362 = !DILocation(line: 0, scope: !4358)
!4363 = !DILocation(line: 37, column: 24, scope: !4358)
!4364 = !DILocation(line: 62, column: 3, scope: !4358)
!4365 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !463, file: !463, line: 66, type: !4341, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !4366)
!4366 = !{!4367, !4368, !4369, !4370, !4371}
!4367 = !DILocalVariable(name: "category", arg: 1, scope: !4365, file: !463, line: 66, type: !6)
!4368 = !DILocalVariable(name: "buf", arg: 2, scope: !4365, file: !463, line: 66, type: !8)
!4369 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4365, file: !463, line: 66, type: !54)
!4370 = !DILocalVariable(name: "result", scope: !4365, file: !463, line: 111, type: !57)
!4371 = !DILocalVariable(name: "length", scope: !4372, file: !463, line: 125, type: !54)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !463, line: 124, column: 5)
!4373 = distinct !DILexicalBlock(scope: !4365, file: !463, line: 113, column: 7)
!4374 = !DILocation(line: 0, scope: !4365)
!4375 = !DILocation(line: 0, scope: !4358, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 111, column: 24, scope: !4365)
!4377 = !DILocation(line: 37, column: 24, scope: !4358, inlinedAt: !4376)
!4378 = !DILocation(line: 113, column: 14, scope: !4373)
!4379 = !DILocation(line: 113, column: 7, scope: !4365)
!4380 = !DILocation(line: 116, column: 19, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4382, file: !463, line: 116, column: 11)
!4382 = distinct !DILexicalBlock(scope: !4373, file: !463, line: 114, column: 5)
!4383 = !DILocation(line: 116, column: 11, scope: !4382)
!4384 = !DILocation(line: 120, column: 16, scope: !4381)
!4385 = !DILocation(line: 120, column: 9, scope: !4381)
!4386 = !DILocation(line: 125, column: 23, scope: !4372)
!4387 = !DILocation(line: 0, scope: !4372)
!4388 = !DILocation(line: 126, column: 18, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4372, file: !463, line: 126, column: 11)
!4390 = !DILocation(line: 126, column: 11, scope: !4372)
!4391 = !DILocation(line: 128, column: 39, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4389, file: !463, line: 127, column: 9)
!4393 = !DILocalVariable(name: "__dest", arg: 1, scope: !4394, file: !1983, line: 26, type: !3533)
!4394 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 26, type: !3531, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !4395)
!4395 = !{!4393, !4396, !4397}
!4396 = !DILocalVariable(name: "__src", arg: 2, scope: !4394, file: !1983, line: 26, type: !693)
!4397 = !DILocalVariable(name: "__len", arg: 3, scope: !4394, file: !1983, line: 26, type: !54)
!4398 = !DILocation(line: 0, scope: !4394, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 128, column: 11, scope: !4392)
!4400 = !DILocation(line: 29, column: 10, scope: !4394, inlinedAt: !4399)
!4401 = !DILocation(line: 129, column: 11, scope: !4392)
!4402 = !DILocation(line: 133, column: 23, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !463, line: 133, column: 15)
!4404 = distinct !DILexicalBlock(scope: !4389, file: !463, line: 132, column: 9)
!4405 = !DILocation(line: 133, column: 15, scope: !4404)
!4406 = !DILocation(line: 138, column: 44, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4403, file: !463, line: 134, column: 13)
!4408 = !DILocation(line: 0, scope: !4394, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 138, column: 15, scope: !4407)
!4410 = !DILocation(line: 29, column: 10, scope: !4394, inlinedAt: !4409)
!4411 = !DILocation(line: 139, column: 15, scope: !4407)
!4412 = !DILocation(line: 139, column: 32, scope: !4407)
!4413 = !DILocation(line: 140, column: 13, scope: !4407)
!4414 = !DILocation(line: 0, scope: !4373)
!4415 = !DILocation(line: 145, column: 1, scope: !4365)
