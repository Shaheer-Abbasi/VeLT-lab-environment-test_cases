; ModuleID = 'src/echo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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

@.str = private unnamed_addr constant [12 x i8] c"status == 0\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"src/echo.c\00", align 1
@__PRETTY_FUNCTION__.usage = private unnamed_addr constant [16 x i8] c"void usage(int)\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Echo the STRING(s) to standard output.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"  -n     do not output the trailing newline\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"  -e     enable interpretation of backslash escapes\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"  -E     disable interpretation of backslash escapes (default)\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [229 x i8] c"  \\\\      backslash\0A  \\a      alert (BEL)\0A  \\b      backspace\0A  \\c      produce no further output\0A  \\e      escape\0A  \\f      form feed\0A  \\n      new line\0A  \\r      carriage return\0A  \\t      horizontal tab\0A  \\v      vertical tab\0A\00", align 1
@.str.12 = private unnamed_addr constant [110 x i8] c"  \\0NNN   byte with octal value NNN (1 to 3 digits)\0A  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1
@.str.13 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.14 = private unnamed_addr constant [107 x i8] c"\0AConsider using the printf(1) command instead,\0Aas it avoids problems when outputting option-like strings.\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !0
@.str.25 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.53 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.54 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), align 8, !dbg !122
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !127
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !132
@.str.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !134
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !170
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !140
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !166
@.str.1.43 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.45 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.44 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !168
@.str.4.38 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.39 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.40 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !175
@.str.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !181
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 8, !dbg !217
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !243
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !261
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !291
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !298
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !263
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !300
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !249
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !268
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !306
@exit_failure = dso_local global i32 1, align 4, !dbg !314
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !320
@.str.134 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !410 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !414, metadata !DIExpression()), !dbg !415
  %2 = icmp eq i32 %0, 0, !dbg !416
  br i1 %2, label %4, label %3, !dbg !419

3:                                                ; preds = %1
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.usage, i64 0, i64 0)) #32, !dbg !416
  unreachable, !dbg !416

4:                                                ; preds = %1
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !420
  %6 = load i8*, i8** @program_name, align 8, !dbg !420, !tbaa !421
  %7 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef %6, i8* noundef %6) #33, !dbg !420
  %8 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5) #33, !dbg !425
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !425, !tbaa !421
  %10 = tail call i32 @fputs_unlocked(i8* noundef %8, %struct._IO_FILE* noundef %9), !dbg !425
  %11 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !426
  tail call fastcc void @oputs_(i8* noundef %11), !dbg !426
  %12 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !427
  tail call fastcc void @oputs_(i8* noundef %12), !dbg !427
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !428
  tail call fastcc void @oputs_(i8* noundef %13), !dbg !428
  %14 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !429
  tail call fastcc void @oputs_(i8* noundef %14), !dbg !429
  %15 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #33, !dbg !430
  tail call fastcc void @oputs_(i8* noundef %15), !dbg !430
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #33, !dbg !431
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !431, !tbaa !421
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !431
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([229 x i8], [229 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #33, !dbg !432
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !432, !tbaa !421
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20), !dbg !432
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #33, !dbg !433
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !433, !tbaa !421
  %24 = tail call i32 @fputs_unlocked(i8* noundef %22, %struct._IO_FILE* noundef %23), !dbg !433
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #33, !dbg !434
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #33, !dbg !434
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #33, !dbg !435
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !435, !tbaa !421
  %29 = tail call i32 @fputs_unlocked(i8* noundef %27, %struct._IO_FILE* noundef %28), !dbg !435
  tail call fastcc void @emit_ancillary_info(), !dbg !436
  tail call void @exit(i32 noundef 0) #32, !dbg !437
  unreachable, !dbg !437
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !438 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !443 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #6 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !42, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i8* %0, metadata !43, metadata !DIExpression()), !dbg !448
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !449, !tbaa !450
  %3 = icmp eq i32 %2, -1, !dbg !452
  br i1 %3, label %4, label %16, !dbg !453

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #33, !dbg !454
  call void @llvm.dbg.value(metadata i8* %5, metadata !44, metadata !DIExpression()), !dbg !455
  %6 = icmp eq i8* %5, null, !dbg !456
  br i1 %6, label %14, label %7, !dbg !457

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !458, !tbaa !459
  %9 = icmp eq i8 %8, 0, !dbg !458
  br i1 %9, label %14, label %10, !dbg !460

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !461, metadata !DIExpression()) #33, !dbg !468
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), metadata !467, metadata !DIExpression()) #33, !dbg !468
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)) #34, !dbg !470
  %12 = icmp eq i32 %11, 0, !dbg !471
  %13 = zext i1 %12 to i32, !dbg !460
  br label %14, !dbg !460

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !472, !tbaa !450
  br label %16, !dbg !473

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !474
  %18 = icmp eq i32 %17, 0, !dbg !474
  br i1 %18, label %22, label %19, !dbg !476

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !477, !tbaa !421
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !477
  br label %121, !dbg !479

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !47, metadata !DIExpression()), !dbg !448
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)) #34, !dbg !480
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !481
  call void @llvm.dbg.value(metadata i8* %24, metadata !49, metadata !DIExpression()), !dbg !448
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !482
  call void @llvm.dbg.value(metadata i8* %25, metadata !50, metadata !DIExpression()), !dbg !448
  %26 = icmp eq i8* %25, null, !dbg !483
  br i1 %26, label %53, label %27, !dbg !484

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !485
  br i1 %28, label %53, label %29, !dbg !486

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !51, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()), !dbg !487
  %30 = icmp ult i8* %24, %25, !dbg !488
  br i1 %30, label %31, label %53, !dbg !489

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !448
  %33 = load i16*, i16** %32, align 8, !tbaa !421
  br label %34, !dbg !489

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !51, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %36, metadata !55, metadata !DIExpression()), !dbg !487
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !490
  call void @llvm.dbg.value(metadata i8* %37, metadata !51, metadata !DIExpression()), !dbg !487
  %38 = load i8, i8* %35, align 1, !dbg !490, !tbaa !459
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !490
  %41 = load i16, i16* %40, align 2, !dbg !490, !tbaa !491
  %42 = lshr i16 %41, 13, !dbg !493
  %43 = and i16 %42, 1, !dbg !493
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !494
  call void @llvm.dbg.value(metadata i64 %45, metadata !55, metadata !DIExpression()), !dbg !487
  %46 = icmp ult i8* %37, %25, !dbg !488
  %47 = icmp ult i64 %45, 2, !dbg !495
  %48 = select i1 %46, i1 %47, i1 false, !dbg !495
  br i1 %48, label %34, label %49, !dbg !489, !llvm.loop !496

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !498
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !500
  %52 = xor i1 %50, true, !dbg !500
  br label %53, !dbg !500

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !448
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i8* %54, metadata !50, metadata !DIExpression()), !dbg !448
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)) #34, !dbg !501
  call void @llvm.dbg.value(metadata i64 %56, metadata !56, metadata !DIExpression()), !dbg !448
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !502
  call void @llvm.dbg.value(metadata i8* %57, metadata !57, metadata !DIExpression()), !dbg !448
  br label %58, !dbg !503

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !448
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i8* %59, metadata !57, metadata !DIExpression()), !dbg !448
  %61 = load i8, i8* %59, align 1, !dbg !504, !tbaa !459
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !505

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !506
  %64 = load i8, i8* %63, align 1, !dbg !509, !tbaa !459
  %65 = icmp ne i8 %64, 45, !dbg !510
  %66 = select i1 %65, i1 %60, i1 false, !dbg !511
  br label %67, !dbg !511

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !448
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !512
  %70 = load i16*, i16** %69, align 8, !dbg !512, !tbaa !421
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !512
  %73 = load i16, i16* %72, align 2, !dbg !512, !tbaa !491
  %74 = and i16 %73, 8192, !dbg !512
  %75 = icmp eq i16 %74, 0, !dbg !512
  br i1 %75, label %89, label %76, !dbg !514

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !515
  br i1 %77, label %91, label %78, !dbg !518

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !519
  %80 = load i8, i8* %79, align 1, !dbg !519, !tbaa !459
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !519
  %83 = load i16, i16* %82, align 2, !dbg !519, !tbaa !491
  %84 = and i16 %83, 8192, !dbg !519
  %85 = icmp eq i16 %84, 0, !dbg !519
  br i1 %85, label %86, label %91, !dbg !520

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !521
  br i1 %88, label %89, label %91, !dbg !521

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !523
  call void @llvm.dbg.value(metadata i8* %90, metadata !57, metadata !DIExpression()), !dbg !448
  br label %58, !dbg !503, !llvm.loop !524

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !526
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !526, !tbaa !421
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !526
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !527
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), metadata !467, metadata !DIExpression()) #33, !dbg !527
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !529
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !531
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !533
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !535
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !537
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !539
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !541
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !543
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !545
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !117, metadata !DIExpression()), !dbg !448
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i64 noundef 6) #34, !dbg !547
  %96 = icmp eq i32 %95, 0, !dbg !547
  br i1 %96, label %100, label %97, !dbg !549

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 noundef 9) #34, !dbg !550
  %99 = icmp eq i32 %98, 0, !dbg !550
  br i1 %99, label %100, label %103, !dbg !551

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !552
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !552
  br label %106, !dbg !554

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !555
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !555
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !557, !tbaa !421
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !557
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !558, !tbaa !421
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !558
  %111 = ptrtoint i8* %59 to i64, !dbg !559
  %112 = sub i64 %111, %92, !dbg !559
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !559, !tbaa !421
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !559
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !560, !tbaa !421
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !560
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !561, !tbaa !421
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !561
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !562, !tbaa !421
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !562
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !563
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #6 !dbg !564 {
  %1 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !568, metadata !DIExpression()), !dbg !583
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !584
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #33, !dbg !584
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !569, metadata !DIExpression()), !dbg !585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %2, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !585
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !578, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %1, metadata !579, metadata !DIExpression()), !dbg !583
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !586
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !579, metadata !DIExpression()), !dbg !583
  br label %4, !dbg !587

4:                                                ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !579, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !588
  call void @llvm.dbg.value(metadata i8* %5, metadata !467, metadata !DIExpression()) #33, !dbg !588
  %7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %5) #34, !dbg !590
  %8 = icmp eq i32 %7, 0, !dbg !591
  br i1 %8, label %14, label %9, !dbg !587

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !592
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !579, metadata !DIExpression()), !dbg !583
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !593
  %12 = load i8*, i8** %11, align 8, !dbg !593, !tbaa !594
  %13 = icmp eq i8* %12, null, !dbg !596
  br i1 %13, label %14, label %4, !dbg !597, !llvm.loop !598

14:                                               ; preds = %4, %9
  %15 = phi %struct.infomap* [ %6, %4 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !599
  %17 = load i8*, i8** %16, align 8, !dbg !599, !tbaa !601
  %18 = icmp eq i8* %17, null, !dbg !602
  %19 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %17, !dbg !603
  call void @llvm.dbg.value(metadata i8* %19, metadata !578, metadata !DIExpression()), !dbg !583
  tail call void @emit_bug_reporting_address() #33, !dbg !604
  %20 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !605
  call void @llvm.dbg.value(metadata i8* %20, metadata !581, metadata !DIExpression()), !dbg !583
  %21 = icmp eq i8* %20, null, !dbg !606
  br i1 %21, label %29, label %22, !dbg !608

22:                                               ; preds = %14
  %23 = tail call i32 @strncmp(i8* noundef nonnull %20, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i64 noundef 3) #34, !dbg !609
  %24 = icmp eq i32 %23, 0, !dbg !609
  br i1 %24, label %29, label %25, !dbg !610

25:                                               ; preds = %22
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #33, !dbg !611
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !421
  %28 = tail call i32 @fputs_unlocked(i8* noundef %26, %struct._IO_FILE* noundef %27), !dbg !611
  br label %29, !dbg !613

29:                                               ; preds = %25, %22, %14
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !461, metadata !DIExpression()) #33, !dbg !614
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), metadata !467, metadata !DIExpression()) #33, !dbg !614
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), metadata !582, metadata !DIExpression()), !dbg !583
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #33, !dbg !616
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %30, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #33, !dbg !616
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.56, i64 0, i64 0), i32 noundef 5) #33, !dbg !617
  %33 = icmp eq i8* %19, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !617
  %34 = select i1 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), !dbg !617
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %32, i8* noundef %19, i8* noundef %34) #33, !dbg !617
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #33, !dbg !618
  ret void, !dbg !618
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !619 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nounwind readonly
declare !dbg !623 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !627 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #12 !dbg !633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %1, metadata !639, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8 1, metadata !640, metadata !DIExpression()), !dbg !661
  %3 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #33, !dbg !662
  %4 = icmp eq i8* %3, null, !dbg !663
  call void @llvm.dbg.value(metadata i1 %4, metadata !641, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !661
  br i1 %4, label %12, label %5, !dbg !664

5:                                                ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !665
  br i1 %6, label %7, label %12, !dbg !666

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !667
  %9 = load i8*, i8** %8, align 8, !dbg !667, !tbaa !421
  call void @llvm.dbg.value(metadata i8* %9, metadata !461, metadata !DIExpression()) #33, !dbg !668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), metadata !467, metadata !DIExpression()) #33, !dbg !668
  %10 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #34, !dbg !670
  %11 = icmp eq i32 %10, 0, !dbg !671
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i1 [ true, %2 ], [ false, %5 ], [ %11, %7 ]
  call void @llvm.dbg.value(metadata i1 %13, metadata !642, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !661
  call void @llvm.dbg.value(metadata i8 0, metadata !643, metadata !DIExpression()), !dbg !661
  %14 = load i8*, i8** %1, align 8, !dbg !672, !tbaa !421
  tail call void @set_program_name(i8* noundef %14) #33, !dbg !673
  %15 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #33, !dbg !674
  %16 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !675
  %17 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !676
  %18 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !677
  %19 = icmp eq i32 %0, 2
  %20 = and i1 %19, %13, !dbg !678
  br i1 %20, label %21, label %35, !dbg !678

21:                                               ; preds = %12
  %22 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !680
  %23 = load i8*, i8** %22, align 8, !dbg !680, !tbaa !421
  call void @llvm.dbg.value(metadata i8* %23, metadata !461, metadata !DIExpression()) #33, !dbg !683
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), metadata !467, metadata !DIExpression()) #33, !dbg !683
  %24 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %23, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #34, !dbg !685
  %25 = icmp eq i32 %24, 0, !dbg !686
  br i1 %25, label %26, label %27, !dbg !687

26:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #36, !dbg !688
  unreachable, !dbg !688

27:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %23, metadata !461, metadata !DIExpression()) #33, !dbg !689
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), metadata !467, metadata !DIExpression()) #33, !dbg !689
  %28 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %23, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !692
  %29 = icmp eq i32 %28, 0, !dbg !693
  br i1 %29, label %30, label %35, !dbg !694

30:                                               ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !695, !tbaa !421
  %32 = load i8*, i8** @Version, align 8, !dbg !697, !tbaa !421
  %33 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0)) #33, !dbg !698
  %34 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0)) #33, !dbg !698
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef null) #33, !dbg !699
  br label %264, !dbg !700

35:                                               ; preds = %27, %12
  %36 = add nsw i32 %0, -1, !dbg !701
  call void @llvm.dbg.value(metadata i32 %36, metadata !638, metadata !DIExpression()), !dbg !661
  %37 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !702
  call void @llvm.dbg.value(metadata i8** %37, metadata !639, metadata !DIExpression()), !dbg !661
  %38 = icmp sgt i32 %0, 1
  %39 = and i1 %38, %13, !dbg !703
  br i1 %39, label %46, label %91, !dbg !703

40:                                               ; preds = %76, %64
  %41 = phi i8 [ %48, %64 ], [ %77, %76 ], !dbg !704
  %42 = phi i8 [ %50, %64 ], [ %78, %76 ], !dbg !705
  %43 = add nsw i32 %49, -1, !dbg !706
  call void @llvm.dbg.value(metadata i32 %43, metadata !638, metadata !DIExpression()), !dbg !661
  %44 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !707
  call void @llvm.dbg.value(metadata i8 %42, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8 %41, metadata !640, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %44, metadata !639, metadata !DIExpression()), !dbg !661
  %45 = icmp sgt i32 %49, 1, !dbg !708
  br i1 %45, label %46, label %99, !dbg !709

46:                                               ; preds = %35, %40
  %47 = phi i8** [ %44, %40 ], [ %37, %35 ], !dbg !702
  %48 = phi i8 [ %41, %40 ], [ 1, %35 ], !dbg !704
  %49 = phi i32 [ %43, %40 ], [ %36, %35 ], !dbg !701
  %50 = phi i8 [ %42, %40 ], [ 0, %35 ], !dbg !705
  call void @llvm.dbg.value(metadata i8 %50, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 %49, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8 %48, metadata !640, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %47, metadata !639, metadata !DIExpression()), !dbg !661
  %51 = load i8*, i8** %47, align 8, !dbg !710, !tbaa !421
  %52 = load i8, i8* %51, align 1, !dbg !711, !tbaa !459
  %53 = icmp eq i8 %52, 45, !dbg !712
  br i1 %53, label %54, label %86, !dbg !713

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !714
  call void @llvm.dbg.value(metadata i8* %55, metadata !644, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i64 0, metadata !647, metadata !DIExpression()), !dbg !715
  br label %56, !dbg !716

56:                                               ; preds = %60, %54
  %57 = phi i64 [ 0, %54 ], [ %61, %60 ], !dbg !718
  call void @llvm.dbg.value(metadata i64 %57, metadata !647, metadata !DIExpression()), !dbg !715
  %58 = getelementptr inbounds i8, i8* %55, i64 %57, !dbg !719
  %59 = load i8, i8* %58, align 1, !dbg !719, !tbaa !459
  switch i8 %59, label %81 [
    i8 0, label %62
    i8 101, label %60
    i8 69, label %60
    i8 110, label %60
  ], !dbg !721

60:                                               ; preds = %56, %56, %56
  %61 = add i64 %57, 1, !dbg !722
  call void @llvm.dbg.value(metadata i64 %61, metadata !647, metadata !DIExpression()), !dbg !715
  br label %56, !dbg !723, !llvm.loop !724

62:                                               ; preds = %56
  %63 = icmp eq i64 %57, 0, !dbg !726
  br i1 %63, label %81, label %64, !dbg !728

64:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i8* %55, metadata !644, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8 %50, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8 %48, metadata !640, metadata !DIExpression()), !dbg !661
  %65 = load i8, i8* %55, align 1, !dbg !729, !tbaa !459
  %66 = icmp eq i8 %65, 0, !dbg !730
  br i1 %66, label %40, label %67, !dbg !730

67:                                               ; preds = %64, %76
  %68 = phi i8 [ %79, %76 ], [ %65, %64 ]
  %69 = phi i8* [ %72, %76 ], [ %55, %64 ]
  %70 = phi i8 [ %78, %76 ], [ %50, %64 ]
  %71 = phi i8 [ %77, %76 ], [ %48, %64 ]
  call void @llvm.dbg.value(metadata i8* %69, metadata !644, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8 %70, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8 %71, metadata !640, metadata !DIExpression()), !dbg !661
  %72 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !731
  call void @llvm.dbg.value(metadata i8* %72, metadata !644, metadata !DIExpression()), !dbg !715
  switch i8 %68, label %76 [
    i8 101, label %73
    i8 69, label %74
    i8 110, label %75
  ], !dbg !732

73:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8 1, metadata !643, metadata !DIExpression()), !dbg !661
  br label %76, !dbg !733

74:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8 0, metadata !643, metadata !DIExpression()), !dbg !661
  br label %76, !dbg !735

75:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8 0, metadata !640, metadata !DIExpression()), !dbg !661
  br label %76, !dbg !736

76:                                               ; preds = %67, %75, %74, %73
  %77 = phi i8 [ %71, %67 ], [ 0, %75 ], [ %71, %74 ], [ %71, %73 ], !dbg !661
  %78 = phi i8 [ %70, %67 ], [ %70, %75 ], [ 0, %74 ], [ 1, %73 ], !dbg !661
  call void @llvm.dbg.value(metadata i8* %72, metadata !644, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8 %78, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8 %77, metadata !640, metadata !DIExpression()), !dbg !661
  %79 = load i8, i8* %72, align 1, !dbg !729, !tbaa !459
  %80 = icmp eq i8 %79, 0, !dbg !730
  br i1 %80, label %40, label %67, !dbg !730, !llvm.loop !737

81:                                               ; preds = %62, %56
  call void @llvm.dbg.value(metadata i8 undef, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 %43, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8 %41, metadata !640, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata !DIArgList(i8** %1, i32 %0), metadata !639, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 2, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !661
  %82 = and i8 %48, 1
  %83 = icmp ne i8 %82, 0
  %84 = and i8 %50, 1
  %85 = icmp ne i8 %84, 0
  br label %91

86:                                               ; preds = %46
  %87 = and i8 %48, 1, !dbg !713
  %88 = icmp ne i8 %87, 0, !dbg !713
  %89 = and i8 %50, 1, !dbg !713
  %90 = icmp ne i8 %89, 0, !dbg !713
  br label %91, !dbg !739

91:                                               ; preds = %86, %81, %35
  %92 = phi i8** [ %37, %35 ], [ %47, %81 ], [ %47, %86 ], !dbg !702
  %93 = phi i1 [ true, %35 ], [ %83, %81 ], [ %88, %86 ]
  %94 = phi i32 [ %36, %35 ], [ %49, %81 ], [ %49, %86 ], !dbg !701
  %95 = phi i1 [ false, %35 ], [ %85, %81 ], [ %90, %86 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 %94, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8 poison, metadata !640, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %92, metadata !639, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.label(metadata !659), !dbg !740
  %96 = xor i1 %4, true, !dbg !739
  %97 = or i1 %95, %96, !dbg !739
  call void @llvm.dbg.value(metadata i32 %94, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 %94, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %92, metadata !639, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %92, metadata !639, metadata !DIExpression()), !dbg !661
  %98 = icmp sgt i32 %94, 0, !dbg !741
  br i1 %97, label %108, label %102, !dbg !739

99:                                               ; preds = %40
  %100 = and i8 %41, 1
  %101 = icmp eq i8 %100, 0
  call void @llvm.dbg.value(metadata i8 poison, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 %94, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8 poison, metadata !640, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %92, metadata !639, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.label(metadata !659), !dbg !740
  call void @llvm.dbg.value(metadata i32 %94, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 %94, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %92, metadata !639, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %92, metadata !639, metadata !DIExpression()), !dbg !661
  br i1 %101, label %264, label %253, !dbg !742

102:                                              ; preds = %91
  br i1 %98, label %103, label %252, !dbg !743

103:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i32 %94, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %92, metadata !639, metadata !DIExpression()), !dbg !661
  %104 = load i8*, i8** %92, align 8, !dbg !745, !tbaa !421
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !421
  %106 = tail call i32 @fputs_unlocked(i8* noundef %104, %struct._IO_FILE* noundef %105), !dbg !745
  call void @llvm.dbg.value(metadata i32 %94, metadata !638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !661
  call void @llvm.dbg.value(metadata i8** %92, metadata !639, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !661
  %107 = icmp eq i32 %94, 1, !dbg !747
  br i1 %107, label %252, label %232, !dbg !749

108:                                              ; preds = %91
  br i1 %98, label %109, label %252, !dbg !750

109:                                              ; preds = %108, %231
  %110 = phi i32 [ %217, %231 ], [ %94, %108 ]
  %111 = phi i8** [ %218, %231 ], [ %92, %108 ]
  call void @llvm.dbg.value(metadata i32 %110, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %111, metadata !639, metadata !DIExpression()), !dbg !661
  %112 = load i8*, i8** %111, align 8, !dbg !751, !tbaa !421
  call void @llvm.dbg.value(metadata i8* %112, metadata !648, metadata !DIExpression()), !dbg !752
  br label %113, !dbg !753

113:                                              ; preds = %213, %109
  %114 = phi i8* [ %112, %109 ], [ %202, %213 ], !dbg !752
  call void @llvm.dbg.value(metadata i8* %114, metadata !648, metadata !DIExpression()), !dbg !752
  %115 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !754
  call void @llvm.dbg.value(metadata i8* %115, metadata !648, metadata !DIExpression()), !dbg !752
  %116 = load i8, i8* %114, align 1, !dbg !755, !tbaa !459
  call void @llvm.dbg.value(metadata i8 %116, metadata !652, metadata !DIExpression()), !dbg !752
  switch i8 %116, label %201 [
    i8 0, label %216
    i8 92, label %117
  ], !dbg !753

117:                                              ; preds = %113
  %118 = load i8, i8* %115, align 1, !dbg !756, !tbaa !459
  %119 = icmp eq i8 %118, 0, !dbg !756
  br i1 %119, label %201, label %120, !dbg !757

120:                                              ; preds = %117
  %121 = getelementptr inbounds i8, i8* %114, i64 2, !dbg !758
  call void @llvm.dbg.value(metadata i8* %121, metadata !648, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8 %118, metadata !652, metadata !DIExpression()), !dbg !752
  switch i8 %118, label %190 [
    i8 97, label %122
    i8 98, label %123
    i8 99, label %264
    i8 101, label %124
    i8 102, label %125
    i8 110, label %126
    i8 114, label %127
    i8 116, label %128
    i8 118, label %129
    i8 120, label %130
    i8 48, label %163
    i8 49, label %169
    i8 50, label %169
    i8 51, label %169
    i8 52, label %169
    i8 53, label %169
    i8 54, label %169
    i8 55, label %169
    i8 92, label %201
  ], !dbg !759

122:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 7, metadata !652, metadata !DIExpression()), !dbg !752
  br label %201, !dbg !760

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 8, metadata !652, metadata !DIExpression()), !dbg !752
  br label %201, !dbg !761

124:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 27, metadata !652, metadata !DIExpression()), !dbg !752
  br label %201, !dbg !762

125:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 12, metadata !652, metadata !DIExpression()), !dbg !752
  br label %201, !dbg !763

126:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 10, metadata !652, metadata !DIExpression()), !dbg !752
  br label %201, !dbg !764

127:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 13, metadata !652, metadata !DIExpression()), !dbg !752
  br label %201, !dbg !765

128:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 9, metadata !652, metadata !DIExpression()), !dbg !752
  br label %201, !dbg !766

129:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 11, metadata !652, metadata !DIExpression()), !dbg !752
  br label %201, !dbg !767

130:                                              ; preds = %120
  %131 = load i8, i8* %121, align 1, !dbg !768, !tbaa !459
  call void @llvm.dbg.value(metadata i8 %131, metadata !653, metadata !DIExpression()), !dbg !769
  %132 = zext i8 %131 to i32, !dbg !770
  call void @llvm.dbg.value(metadata i32 %132, metadata !772, metadata !DIExpression()), !dbg !778
  switch i8 %131, label %190 [
    i8 48, label %133
    i8 49, label %133
    i8 50, label %133
    i8 51, label %133
    i8 52, label %133
    i8 53, label %133
    i8 54, label %133
    i8 55, label %133
    i8 56, label %133
    i8 57, label %133
    i8 97, label %133
    i8 98, label %133
    i8 99, label %133
    i8 100, label %133
    i8 101, label %133
    i8 102, label %133
    i8 65, label %133
    i8 66, label %133
    i8 67, label %133
    i8 68, label %133
    i8 69, label %133
    i8 70, label %133
  ], !dbg !780

133:                                              ; preds = %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130, %130
  %134 = getelementptr inbounds i8, i8* %114, i64 3, !dbg !781
  call void @llvm.dbg.value(metadata i8* %134, metadata !648, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8 %131, metadata !782, metadata !DIExpression()), !dbg !787
  switch i8 %131, label %135 [
    i8 97, label %142
    i8 65, label %142
    i8 98, label %137
    i8 66, label %137
    i8 99, label %138
    i8 67, label %138
    i8 100, label %139
    i8 68, label %139
    i8 101, label %140
    i8 69, label %140
    i8 102, label %141
    i8 70, label %141
  ], !dbg !789

135:                                              ; preds = %133
  %136 = add nsw i32 %132, -48, !dbg !790
  br label %142, !dbg !792

137:                                              ; preds = %133, %133
  br label %142, !dbg !793

138:                                              ; preds = %133, %133
  br label %142, !dbg !794

139:                                              ; preds = %133, %133
  br label %142, !dbg !795

140:                                              ; preds = %133, %133
  br label %142, !dbg !796

141:                                              ; preds = %133, %133
  br label %142, !dbg !797

142:                                              ; preds = %133, %133, %135, %137, %138, %139, %140, %141
  %143 = phi i32 [ %136, %135 ], [ 15, %141 ], [ 14, %140 ], [ 13, %139 ], [ 12, %138 ], [ 11, %137 ], [ 10, %133 ], [ 10, %133 ], !dbg !798
  call void @llvm.dbg.value(metadata i32 %143, metadata !652, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !752
  %144 = load i8, i8* %134, align 1, !dbg !799, !tbaa !459
  call void @llvm.dbg.value(metadata i8 %144, metadata !653, metadata !DIExpression()), !dbg !769
  %145 = zext i8 %144 to i32, !dbg !800
  call void @llvm.dbg.value(metadata i32 %145, metadata !772, metadata !DIExpression()), !dbg !802
  switch i8 %144, label %159 [
    i8 48, label %146
    i8 49, label %146
    i8 50, label %146
    i8 51, label %146
    i8 52, label %146
    i8 53, label %146
    i8 54, label %146
    i8 55, label %146
    i8 56, label %146
    i8 57, label %146
    i8 97, label %146
    i8 98, label %146
    i8 99, label %146
    i8 100, label %146
    i8 101, label %146
    i8 102, label %146
    i8 65, label %146
    i8 66, label %146
    i8 67, label %146
    i8 68, label %146
    i8 69, label %146
    i8 70, label %146
  ], !dbg !804

146:                                              ; preds = %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142
  %147 = getelementptr inbounds i8, i8* %114, i64 4, !dbg !805
  call void @llvm.dbg.value(metadata i8* %147, metadata !648, metadata !DIExpression()), !dbg !752
  %148 = shl nuw nsw i32 %143, 4, !dbg !807
  call void @llvm.dbg.value(metadata i8 %144, metadata !782, metadata !DIExpression()), !dbg !808
  switch i8 %144, label %149 [
    i8 97, label %156
    i8 65, label %156
    i8 98, label %151
    i8 66, label %151
    i8 99, label %152
    i8 67, label %152
    i8 100, label %153
    i8 68, label %153
    i8 101, label %154
    i8 69, label %154
    i8 102, label %155
    i8 70, label %155
  ], !dbg !810

149:                                              ; preds = %146
  %150 = add nsw i32 %145, -48, !dbg !811
  br label %156, !dbg !812

151:                                              ; preds = %146, %146
  br label %156, !dbg !813

152:                                              ; preds = %146, %146
  br label %156, !dbg !814

153:                                              ; preds = %146, %146
  br label %156, !dbg !815

154:                                              ; preds = %146, %146
  br label %156, !dbg !816

155:                                              ; preds = %146, %146
  br label %156, !dbg !817

156:                                              ; preds = %146, %146, %149, %151, %152, %153, %154, %155
  %157 = phi i32 [ %150, %149 ], [ 15, %155 ], [ 14, %154 ], [ 13, %153 ], [ 12, %152 ], [ 11, %151 ], [ 10, %146 ], [ 10, %146 ], !dbg !818
  %158 = add nuw nsw i32 %157, %148, !dbg !819
  call void @llvm.dbg.value(metadata i32 %158, metadata !652, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !752
  br label %159, !dbg !820

159:                                              ; preds = %156, %142
  %160 = phi i8* [ %147, %156 ], [ %134, %142 ], !dbg !769
  %161 = phi i32 [ %158, %156 ], [ %143, %142 ]
  %162 = trunc i32 %161 to i8, !dbg !769
  call void @llvm.dbg.value(metadata i8 undef, metadata !652, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8* undef, metadata !648, metadata !DIExpression()), !dbg !752
  br label %201

163:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 0, metadata !652, metadata !DIExpression()), !dbg !752
  %164 = load i8, i8* %121, align 1, !dbg !821, !tbaa !459
  %165 = and i8 %164, -8, !dbg !823
  %166 = icmp eq i8 %165, 48, !dbg !823
  br i1 %166, label %167, label %201, !dbg !823

167:                                              ; preds = %163
  %168 = getelementptr inbounds i8, i8* %114, i64 3, !dbg !824
  call void @llvm.dbg.value(metadata i8* %168, metadata !648, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8 %164, metadata !652, metadata !DIExpression()), !dbg !752
  br label %169, !dbg !825

169:                                              ; preds = %120, %120, %120, %120, %120, %120, %120, %167
  %170 = phi i8* [ %121, %120 ], [ %121, %120 ], [ %121, %120 ], [ %121, %120 ], [ %121, %120 ], [ %121, %120 ], [ %121, %120 ], [ %168, %167 ], !dbg !826
  %171 = phi i8 [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %118, %120 ], [ %164, %167 ], !dbg !826
  call void @llvm.dbg.value(metadata i8 %171, metadata !652, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8* %170, metadata !648, metadata !DIExpression()), !dbg !752
  %172 = add nsw i8 %171, -48, !dbg !827
  call void @llvm.dbg.value(metadata i8 %172, metadata !652, metadata !DIExpression()), !dbg !752
  %173 = load i8, i8* %170, align 1, !dbg !828, !tbaa !459
  %174 = and i8 %173, -8, !dbg !830
  %175 = icmp eq i8 %174, 48, !dbg !830
  %176 = shl nuw nsw i8 %172, 3, !dbg !830
  %177 = add i8 %173, -48, !dbg !830
  %178 = add i8 %177, %176, !dbg !830
  %179 = zext i1 %175 to i64, !dbg !830
  %180 = getelementptr i8, i8* %170, i64 %179, !dbg !830
  %181 = select i1 %175, i8 %178, i8 %172, !dbg !830
  call void @llvm.dbg.value(metadata i8 %181, metadata !652, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8* %180, metadata !648, metadata !DIExpression()), !dbg !752
  %182 = load i8, i8* %180, align 1, !dbg !831, !tbaa !459
  %183 = and i8 %182, -8, !dbg !833
  %184 = icmp eq i8 %183, 48, !dbg !833
  br i1 %184, label %185, label %201, !dbg !833

185:                                              ; preds = %169
  %186 = shl i8 %181, 3, !dbg !834
  %187 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !835
  call void @llvm.dbg.value(metadata i8* %187, metadata !648, metadata !DIExpression()), !dbg !752
  %188 = add nsw i8 %182, -48, !dbg !836
  %189 = add nuw i8 %188, %186, !dbg !837
  call void @llvm.dbg.value(metadata i8 %189, metadata !652, metadata !DIExpression()), !dbg !752
  br label %201, !dbg !838

190:                                              ; preds = %130, %120
  call void @llvm.dbg.value(metadata i8 %118, metadata !652, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8* %121, metadata !648, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i32 92, metadata !839, metadata !DIExpression()) #33, !dbg !845
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !847, !tbaa !421
  %192 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %191, i64 0, i32 5, !dbg !847
  %193 = load i8*, i8** %192, align 8, !dbg !847, !tbaa !848
  %194 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %191, i64 0, i32 6, !dbg !847
  %195 = load i8*, i8** %194, align 8, !dbg !847, !tbaa !851
  %196 = icmp ult i8* %193, %195, !dbg !847
  br i1 %196, label %199, label %197, !dbg !847, !prof !852

197:                                              ; preds = %190
  %198 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %191, i32 noundef 92) #33, !dbg !847
  br label %201, !dbg !847

199:                                              ; preds = %190
  %200 = getelementptr inbounds i8, i8* %193, i64 1, !dbg !847
  store i8* %200, i8** %192, align 8, !dbg !847, !tbaa !848
  store i8 92, i8* %193, align 1, !dbg !847, !tbaa !459
  br label %201, !dbg !847

201:                                              ; preds = %199, %197, %159, %113, %122, %123, %124, %125, %126, %127, %128, %129, %120, %163, %185, %169, %117
  %202 = phi i8* [ %121, %120 ], [ %187, %185 ], [ %180, %169 ], [ %121, %163 ], [ %121, %129 ], [ %121, %128 ], [ %121, %127 ], [ %121, %126 ], [ %121, %125 ], [ %121, %124 ], [ %121, %123 ], [ %121, %122 ], [ %115, %117 ], [ %115, %113 ], [ %160, %159 ], [ %121, %197 ], [ %121, %199 ], !dbg !752
  %203 = phi i8 [ %118, %120 ], [ %189, %185 ], [ %181, %169 ], [ 0, %163 ], [ 11, %129 ], [ 9, %128 ], [ 13, %127 ], [ 10, %126 ], [ 12, %125 ], [ 27, %124 ], [ 8, %123 ], [ 7, %122 ], [ 92, %117 ], [ %116, %113 ], [ %162, %159 ], [ %118, %197 ], [ %118, %199 ], !dbg !752
  call void @llvm.dbg.value(metadata i8 %203, metadata !652, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8* %202, metadata !648, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i8 %203, metadata !839, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !853
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !855, !tbaa !421
  %205 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %204, i64 0, i32 5, !dbg !855
  %206 = load i8*, i8** %205, align 8, !dbg !855, !tbaa !848
  %207 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %204, i64 0, i32 6, !dbg !855
  %208 = load i8*, i8** %207, align 8, !dbg !855, !tbaa !851
  %209 = icmp ult i8* %206, %208, !dbg !855
  br i1 %209, label %214, label %210, !dbg !855, !prof !852

210:                                              ; preds = %201
  %211 = zext i8 %203 to i32, !dbg !856
  call void @llvm.dbg.value(metadata i32 %211, metadata !839, metadata !DIExpression()) #33, !dbg !853
  %212 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %204, i32 noundef %211) #33, !dbg !855
  br label %213, !dbg !855

213:                                              ; preds = %210, %214
  br label %113, !dbg !752, !llvm.loop !857

214:                                              ; preds = %201
  %215 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !855
  store i8* %215, i8** %205, align 8, !dbg !855, !tbaa !848
  store i8 %203, i8* %206, align 1, !dbg !855, !tbaa !459
  br label %213, !dbg !855

216:                                              ; preds = %113
  %217 = add nsw i32 %110, -1, !dbg !859
  call void @llvm.dbg.value(metadata i32 %217, metadata !638, metadata !DIExpression()), !dbg !661
  %218 = getelementptr inbounds i8*, i8** %111, i64 1, !dbg !860
  call void @llvm.dbg.value(metadata i8** %218, metadata !639, metadata !DIExpression()), !dbg !661
  %219 = icmp sgt i32 %110, 1, !dbg !861
  br i1 %219, label %220, label %252, !dbg !863

220:                                              ; preds = %216
  call void @llvm.dbg.value(metadata i32 32, metadata !839, metadata !DIExpression()) #33, !dbg !864
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !866, !tbaa !421
  %222 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 5, !dbg !866
  %223 = load i8*, i8** %222, align 8, !dbg !866, !tbaa !848
  %224 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 6, !dbg !866
  %225 = load i8*, i8** %224, align 8, !dbg !866, !tbaa !851
  %226 = icmp ult i8* %223, %225, !dbg !866
  br i1 %226, label %229, label %227, !dbg !866, !prof !852

227:                                              ; preds = %220
  %228 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %221, i32 noundef 32) #33, !dbg !866
  br label %231, !dbg !866

229:                                              ; preds = %220
  %230 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !866
  store i8* %230, i8** %222, align 8, !dbg !866, !tbaa !848
  store i8 32, i8* %223, align 1, !dbg !866, !tbaa !459
  br label %231, !dbg !866

231:                                              ; preds = %229, %227
  br label %109, !dbg !661

232:                                              ; preds = %103, %247
  %233 = phi i8** [ %236, %247 ], [ %92, %103 ]
  %234 = phi i32 [ %235, %247 ], [ %94, %103 ]
  %235 = add nsw i32 %234, -1, !dbg !867
  %236 = getelementptr inbounds i8*, i8** %233, i64 1, !dbg !868
  call void @llvm.dbg.value(metadata i32 32, metadata !839, metadata !DIExpression()) #33, !dbg !869
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !871, !tbaa !421
  %238 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %237, i64 0, i32 5, !dbg !871
  %239 = load i8*, i8** %238, align 8, !dbg !871, !tbaa !848
  %240 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %237, i64 0, i32 6, !dbg !871
  %241 = load i8*, i8** %240, align 8, !dbg !871, !tbaa !851
  %242 = icmp ult i8* %239, %241, !dbg !871
  br i1 %242, label %245, label %243, !dbg !871, !prof !852

243:                                              ; preds = %232
  %244 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %237, i32 noundef 32) #33, !dbg !871
  br label %247, !dbg !871

245:                                              ; preds = %232
  %246 = getelementptr inbounds i8, i8* %239, i64 1, !dbg !871
  store i8* %246, i8** %238, align 8, !dbg !871, !tbaa !848
  store i8 32, i8* %239, align 1, !dbg !871, !tbaa !459
  br label %247, !dbg !871

247:                                              ; preds = %245, %243
  call void @llvm.dbg.value(metadata i32 %235, metadata !638, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** %236, metadata !639, metadata !DIExpression()), !dbg !661
  %248 = load i8*, i8** %236, align 8, !dbg !745, !tbaa !421
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !421
  %250 = tail call i32 @fputs_unlocked(i8* noundef %248, %struct._IO_FILE* noundef %249), !dbg !745
  call void @llvm.dbg.value(metadata i32 %235, metadata !638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !661
  call void @llvm.dbg.value(metadata i8** %236, metadata !639, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !661
  %251 = icmp eq i32 %235, 1, !dbg !747
  br i1 %251, label %252, label %232, !dbg !749

252:                                              ; preds = %247, %216, %103, %102, %108
  br i1 %93, label %253, label %264, !dbg !742

253:                                              ; preds = %99, %252
  call void @llvm.dbg.value(metadata i32 10, metadata !839, metadata !DIExpression()) #33, !dbg !872
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !875, !tbaa !421
  %255 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %254, i64 0, i32 5, !dbg !875
  %256 = load i8*, i8** %255, align 8, !dbg !875, !tbaa !848
  %257 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %254, i64 0, i32 6, !dbg !875
  %258 = load i8*, i8** %257, align 8, !dbg !875, !tbaa !851
  %259 = icmp ult i8* %256, %258, !dbg !875
  br i1 %259, label %262, label %260, !dbg !875, !prof !852

260:                                              ; preds = %253
  %261 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %254, i32 noundef 10) #33, !dbg !875
  br label %264, !dbg !875

262:                                              ; preds = %253
  %263 = getelementptr inbounds i8, i8* %256, i64 1, !dbg !875
  store i8* %263, i8** %255, align 8, !dbg !875, !tbaa !848
  store i8 10, i8* %256, align 1, !dbg !875, !tbaa !459
  br label %264, !dbg !875

264:                                              ; preds = %120, %99, %262, %260, %252, %30
  ret i32 0, !dbg !876
}

; Function Attrs: nounwind
declare !dbg !877 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !880 i8* @textdomain(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !881 i32 @atexit(void ()* noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !884 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !886, metadata !DIExpression()), !dbg !887
  store i8* %0, i8** @file_name, align 8, !dbg !888, !tbaa !421
  ret void, !dbg !889
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !890 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !894, metadata !DIExpression()), !dbg !895
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !896, !tbaa !897
  ret void, !dbg !899
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !900 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !905, !tbaa !421
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !906
  %3 = icmp eq i32 %2, 0, !dbg !907
  br i1 %3, label %22, label %4, !dbg !908

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !909, !tbaa !897, !range !910
  %6 = icmp eq i8 %5, 0, !dbg !909
  br i1 %6, label %11, label %7, !dbg !911

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !912
  %9 = load i32, i32* %8, align 4, !dbg !912, !tbaa !450
  %10 = icmp eq i32 %9, 32, !dbg !913
  br i1 %10, label %22, label %11, !dbg !914

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.34, i64 0, i64 0), i32 noundef 5) #33, !dbg !915
  call void @llvm.dbg.value(metadata i8* %12, metadata !902, metadata !DIExpression()), !dbg !916
  %13 = load i8*, i8** @file_name, align 8, !dbg !917, !tbaa !421
  %14 = icmp eq i8* %13, null, !dbg !917
  %15 = tail call i32* @__errno_location() #35, !dbg !919
  %16 = load i32, i32* %15, align 4, !dbg !919, !tbaa !450
  br i1 %14, label %19, label %17, !dbg !920

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !921
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.35, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !921
  br label %20, !dbg !921

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.36, i64 0, i64 0), i8* noundef %12) #33, !dbg !922
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !923, !tbaa !450
  tail call void @_exit(i32 noundef %21) #32, !dbg !924
  unreachable, !dbg !924

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !925, !tbaa !421
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !927
  %25 = icmp eq i32 %24, 0, !dbg !928
  br i1 %25, label %28, label %26, !dbg !929

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !930, !tbaa !450
  tail call void @_exit(i32 noundef %27) #32, !dbg !931
  unreachable, !dbg !931

28:                                               ; preds = %22
  ret void, !dbg !932
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !933 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !937, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i32 %1, metadata !938, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i8* %2, metadata !939, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !940, metadata !DIExpression()), !dbg !942
  tail call fastcc void @flush_stdout(), !dbg !943
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !944, !tbaa !421
  %7 = icmp eq void ()* %6, null, !dbg !944
  br i1 %7, label %9, label %8, !dbg !946

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !947
  br label %13, !dbg !947

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !948, !tbaa !421
  %11 = tail call i8* @getprogname() #34, !dbg !948
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* noundef %11) #33, !dbg !948
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !950
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !950
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !950, !tbaa.struct !951
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !950
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !950
  ret void, !dbg !952
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !953 {
  call void @llvm.dbg.value(metadata i32 1, metadata !955, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 1, metadata !957, metadata !DIExpression()) #33, !dbg !960
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !963
  %2 = icmp slt i32 %1, 0, !dbg !964
  br i1 %2, label %6, label %3, !dbg !965

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !966, !tbaa !421
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !966
  br label %6, !dbg !966

6:                                                ; preds = %3, %0
  ret void, !dbg !967
}

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !968 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !970, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i32 %1, metadata !971, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i8* %2, metadata !972, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !973, metadata !DIExpression()), !dbg !975
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !976, !tbaa !421
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !977
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !978, metadata !DIExpression()) #33, !dbg !1021
  call void @llvm.dbg.value(metadata i8* %2, metadata !1019, metadata !DIExpression()) #33, !dbg !1021
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1023, !noalias !1024
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1023
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !1023
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1023, !noalias !1024
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1028, !tbaa !450
  %12 = add i32 %11, 1, !dbg !1028
  store i32 %12, i32* @error_message_count, align 4, !dbg !1028, !tbaa !450
  %13 = icmp eq i32 %1, 0, !dbg !1029
  br i1 %13, label %24, label %14, !dbg !1031

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1032, metadata !DIExpression()) #33, !dbg !1040
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1042
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1042
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1036, metadata !DIExpression()) #33, !dbg !1043
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1044
  call void @llvm.dbg.value(metadata i8* %16, metadata !1035, metadata !DIExpression()) #33, !dbg !1040
  %17 = icmp eq i8* %16, null, !dbg !1045
  br i1 %17, label %18, label %20, !dbg !1047

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.39, i64 0, i64 0), i32 noundef 5) #33, !dbg !1048
  call void @llvm.dbg.value(metadata i8* %19, metadata !1035, metadata !DIExpression()) #33, !dbg !1040
  br label %20, !dbg !1049

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1040
  call void @llvm.dbg.value(metadata i8* %21, metadata !1035, metadata !DIExpression()) #33, !dbg !1040
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1050, !tbaa !421
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.40, i64 0, i64 0), i8* noundef %21) #33, !dbg !1050
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1051
  br label %24, !dbg !1052

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1053, !tbaa !421
  call void @llvm.dbg.value(metadata i32 10, metadata !1054, metadata !DIExpression()) #33, !dbg !1060
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1059, metadata !DIExpression()) #33, !dbg !1060
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1062
  %27 = load i8*, i8** %26, align 8, !dbg !1062, !tbaa !848
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1062
  %29 = load i8*, i8** %28, align 8, !dbg !1062, !tbaa !851
  %30 = icmp ult i8* %27, %29, !dbg !1062
  br i1 %30, label %33, label %31, !dbg !1062, !prof !852

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1062
  br label %35, !dbg !1062

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1062
  store i8* %34, i8** %26, align 8, !dbg !1062, !tbaa !848
  store i8 10, i8* %27, align 1, !dbg !1062, !tbaa !459
  br label %35, !dbg !1062

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1063, !tbaa !421
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1063
  %38 = icmp eq i32 %0, 0, !dbg !1064
  br i1 %38, label %40, label %39, !dbg !1066

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #32, !dbg !1067
  unreachable, !dbg !1067

40:                                               ; preds = %35
  ret void, !dbg !1068
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1069 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1073 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #4

declare !dbg !1076 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1080 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1084, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 %1, metadata !1085, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %2, metadata !1086, metadata !DIExpression()), !dbg !1088
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1089
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1087, metadata !DIExpression()), !dbg !1090
  call void @llvm.va_start(i8* nonnull %6), !dbg !1091
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1092
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1092, !tbaa.struct !951
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !1092
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1092
  call void @llvm.va_end(i8* nonnull %6), !dbg !1093
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1094
  ret void, !dbg !1094
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !142 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 %1, metadata !161, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %2, metadata !162, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 %3, metadata !163, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %4, metadata !164, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !165, metadata !DIExpression()), !dbg !1096
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1097, !tbaa !450
  %9 = icmp eq i32 %8, 0, !dbg !1097
  br i1 %9, label %24, label %10, !dbg !1099

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1100, !tbaa !450
  %12 = icmp eq i32 %11, %3, !dbg !1103
  br i1 %12, label %13, label %23, !dbg !1104

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1105, !tbaa !421
  %15 = icmp eq i8* %14, %2, !dbg !1106
  br i1 %15, label %39, label %16, !dbg !1107

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1108
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1109
  br i1 %19, label %20, label %23, !dbg !1109

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !1110
  %22 = icmp eq i32 %21, 0, !dbg !1111
  br i1 %22, label %39, label %23, !dbg !1112

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1113, !tbaa !421
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1114, !tbaa !450
  br label %24, !dbg !1115

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1116
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1117, !tbaa !421
  %26 = icmp eq void ()* %25, null, !dbg !1117
  br i1 %26, label %28, label %27, !dbg !1119

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !1120
  br label %32, !dbg !1120

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1121, !tbaa !421
  %30 = tail call i8* @getprogname() #34, !dbg !1121
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.43, i64 0, i64 0), i8* noundef %30) #33, !dbg !1121
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1123, !tbaa !421
  %34 = icmp eq i8* %2, null, !dbg !1123
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.44, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.45, i64 0, i64 0), !dbg !1123
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !1123
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1124
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1124
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1124, !tbaa.struct !951
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1124
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1124
  br label %39, !dbg !1125

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1125
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1126 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1130, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i32 %1, metadata !1131, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i8* %2, metadata !1132, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i32 %3, metadata !1133, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i8* %4, metadata !1134, metadata !DIExpression()), !dbg !1136
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1137
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1137
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1135, metadata !DIExpression()), !dbg !1138
  call void @llvm.va_start(i8* nonnull %8), !dbg !1139
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1140
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1140, !tbaa.struct !951
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !1140
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1140
  call void @llvm.va_end(i8* nonnull %8), !dbg !1141
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1142
  ret void, !dbg !1142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !1143 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1146, !tbaa !421
  ret i8* %1, !dbg !1147
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !1148 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1150, metadata !DIExpression()), !dbg !1153
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %2, metadata !1151, metadata !DIExpression()), !dbg !1153
  %3 = icmp eq i8* %2, null, !dbg !1155
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1155
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1155
  call void @llvm.dbg.value(metadata i8* %5, metadata !1152, metadata !DIExpression()), !dbg !1153
  %6 = ptrtoint i8* %5 to i64, !dbg !1156
  %7 = ptrtoint i8* %0 to i64, !dbg !1156
  %8 = sub i64 %6, %7, !dbg !1156
  %9 = icmp sgt i64 %8, 6, !dbg !1158
  br i1 %9, label %10, label %19, !dbg !1159

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %11, metadata !1161, metadata !DIExpression()) #33, !dbg !1168
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), metadata !1166, metadata !DIExpression()) #33, !dbg !1168
  call void @llvm.dbg.value(metadata i64 7, metadata !1167, metadata !DIExpression()) #33, !dbg !1168
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i64 7) #33, !dbg !1170
  %13 = icmp eq i32 %12, 0, !dbg !1171
  br i1 %13, label %14, label %19, !dbg !1172

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1150, metadata !DIExpression()), !dbg !1153
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.59, i64 0, i64 0), i64 noundef 3) #34, !dbg !1173
  %16 = icmp eq i32 %15, 0, !dbg !1176
  %17 = select i1 %16, i64 3, i64 0, !dbg !1177
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1177
  br label %19, !dbg !1177

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1153
  call void @llvm.dbg.value(metadata i8* %21, metadata !1152, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %20, metadata !1150, metadata !DIExpression()), !dbg !1153
  store i8* %20, i8** @program_name, align 8, !dbg !1178, !tbaa !421
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1179, !tbaa !421
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1180, !tbaa !421
  ret void, !dbg !1181
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !183 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !190, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %1, metadata !191, metadata !DIExpression()), !dbg !1182
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %5, metadata !192, metadata !DIExpression()), !dbg !1182
  %6 = icmp eq i8* %5, %0, !dbg !1184
  br i1 %6, label %7, label %17, !dbg !1186

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1187
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1187
  %10 = bitcast i64* %4 to i8*, !dbg !1188
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1188
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !198, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1190, metadata !DIExpression()) #33, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %10, metadata !1199, metadata !DIExpression()) #33, !dbg !1207
  call void @llvm.dbg.value(metadata i32 0, metadata !1205, metadata !DIExpression()) #33, !dbg !1207
  call void @llvm.dbg.value(metadata i64 8, metadata !1206, metadata !DIExpression()) #33, !dbg !1207
  store i64 0, i64* %4, align 8, !dbg !1209
  call void @llvm.dbg.value(metadata i32* %3, metadata !193, metadata !DIExpression(DW_OP_deref)), !dbg !1182
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !1210
  %12 = icmp eq i64 %11, 2, !dbg !1212
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !193, metadata !DIExpression()), !dbg !1182
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1213
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1182
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1214
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1214
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1182
  ret i8* %18, !dbg !1214
}

; Function Attrs: nounwind
declare !dbg !1215 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1221 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1226, metadata !DIExpression()), !dbg !1229
  %2 = tail call i32* @__errno_location() #35, !dbg !1230
  %3 = load i32, i32* %2, align 4, !dbg !1230, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %3, metadata !1227, metadata !DIExpression()), !dbg !1229
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1231
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1231
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1231
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1232
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1228, metadata !DIExpression()), !dbg !1229
  store i32 %3, i32* %2, align 4, !dbg !1233, !tbaa !450
  ret %struct.quoting_options* %8, !dbg !1234
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1235 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1241, metadata !DIExpression()), !dbg !1242
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1243
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1243
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1244
  %5 = load i32, i32* %4, align 8, !dbg !1244, !tbaa !1245
  ret i32 %5, !dbg !1247
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1248 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1252, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 %1, metadata !1253, metadata !DIExpression()), !dbg !1254
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1255
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1255
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1256
  store i32 %1, i32* %5, align 8, !dbg !1257, !tbaa !1245
  ret void, !dbg !1258
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1259 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1263, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %1, metadata !1264, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 %2, metadata !1265, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %1, metadata !1266, metadata !DIExpression()), !dbg !1271
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1272
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1272
  %6 = lshr i8 %1, 5, !dbg !1273
  %7 = zext i8 %6 to i64, !dbg !1273
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1274
  call void @llvm.dbg.value(metadata i32* %8, metadata !1267, metadata !DIExpression()), !dbg !1271
  %9 = and i8 %1, 31, !dbg !1275
  %10 = zext i8 %9 to i32, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %10, metadata !1269, metadata !DIExpression()), !dbg !1271
  %11 = load i32, i32* %8, align 4, !dbg !1276, !tbaa !450
  %12 = lshr i32 %11, %10, !dbg !1277
  %13 = and i32 %12, 1, !dbg !1278
  call void @llvm.dbg.value(metadata i32 %13, metadata !1270, metadata !DIExpression()), !dbg !1271
  %14 = and i32 %2, 1, !dbg !1279
  %15 = xor i32 %13, %14, !dbg !1280
  %16 = shl i32 %15, %10, !dbg !1281
  %17 = xor i32 %16, %11, !dbg !1282
  store i32 %17, i32* %8, align 4, !dbg !1282, !tbaa !450
  ret i32 %13, !dbg !1283
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1284 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1288, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i32 %1, metadata !1289, metadata !DIExpression()), !dbg !1291
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1292
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1288, metadata !DIExpression()), !dbg !1291
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1295
  %6 = load i32, i32* %5, align 4, !dbg !1295, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %6, metadata !1290, metadata !DIExpression()), !dbg !1291
  store i32 %1, i32* %5, align 4, !dbg !1297, !tbaa !1296
  ret i32 %6, !dbg !1298
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1299 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1303, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8* %1, metadata !1304, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8* %2, metadata !1305, metadata !DIExpression()), !dbg !1306
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1307
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1303, metadata !DIExpression()), !dbg !1306
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1310
  store i32 10, i32* %6, align 8, !dbg !1311, !tbaa !1245
  %7 = icmp ne i8* %1, null, !dbg !1312
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1314
  br i1 %9, label %11, label %10, !dbg !1314

10:                                               ; preds = %3
  tail call void @abort() #32, !dbg !1315
  unreachable, !dbg !1315

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1316
  store i8* %1, i8** %12, align 8, !dbg !1317, !tbaa !1318
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1319
  store i8* %2, i8** %13, align 8, !dbg !1320, !tbaa !1321
  ret void, !dbg !1322
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1323 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1327, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %1, metadata !1328, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %2, metadata !1329, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %3, metadata !1330, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1331, metadata !DIExpression()), !dbg !1335
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1336
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1332, metadata !DIExpression()), !dbg !1335
  %8 = tail call i32* @__errno_location() #35, !dbg !1337
  %9 = load i32, i32* %8, align 4, !dbg !1337, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %9, metadata !1333, metadata !DIExpression()), !dbg !1335
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1338
  %11 = load i32, i32* %10, align 8, !dbg !1338, !tbaa !1245
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1339
  %13 = load i32, i32* %12, align 4, !dbg !1339, !tbaa !1296
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1340
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1341
  %16 = load i8*, i8** %15, align 8, !dbg !1341, !tbaa !1318
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1342
  %18 = load i8*, i8** %17, align 8, !dbg !1342, !tbaa !1321
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %19, metadata !1334, metadata !DIExpression()), !dbg !1335
  store i32 %9, i32* %8, align 4, !dbg !1344, !tbaa !450
  ret i64 %19, !dbg !1345
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1346 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1352, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %1, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %2, metadata !1354, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %3, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %4, metadata !1356, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %5, metadata !1357, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32* %6, metadata !1358, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %7, metadata !1359, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %8, metadata !1360, metadata !DIExpression()), !dbg !1414
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !1415
  %18 = icmp eq i64 %17, 1, !dbg !1416
  call void @llvm.dbg.value(metadata i1 %18, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1363, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* null, metadata !1364, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1365, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 0, metadata !1366, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %5, metadata !1367, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1414
  call void @llvm.dbg.value(metadata i8 0, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 1, metadata !1369, metadata !DIExpression()), !dbg !1414
  %19 = and i32 %5, 2, !dbg !1417
  %20 = icmp ne i32 %19, 0, !dbg !1417
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
  br label %36, !dbg !1417

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1418
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1419
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1420
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1367, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1366, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %43, metadata !1365, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %42, metadata !1364, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %41, metadata !1363, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %40, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %39, metadata !1360, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %38, metadata !1359, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %37, metadata !1356, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.label(metadata !1407), !dbg !1421
  call void @llvm.dbg.value(metadata i8 0, metadata !1370, metadata !DIExpression()), !dbg !1414
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
  ], !dbg !1422

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1367, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 5, metadata !1356, metadata !DIExpression()), !dbg !1414
  br label %111, !dbg !1423

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1367, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 5, metadata !1356, metadata !DIExpression()), !dbg !1414
  br i1 %45, label %111, label %51, !dbg !1423

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1424
  br i1 %52, label %111, label %53, !dbg !1428

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1424, !tbaa !459
  br label %111, !dbg !1424

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), metadata !274, metadata !DIExpression()) #33, !dbg !1429
  call void @llvm.dbg.value(metadata i32 %37, metadata !275, metadata !DIExpression()) #33, !dbg !1429
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 noundef 5) #33, !dbg !1433
  call void @llvm.dbg.value(metadata i8* %55, metadata !276, metadata !DIExpression()) #33, !dbg !1429
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), !dbg !1434
  br i1 %56, label %57, label %66, !dbg !1436

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1437
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1438
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !278, metadata !DIExpression()) #33, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1440, metadata !DIExpression()) #33, !dbg !1446
  call void @llvm.dbg.value(metadata i8* %23, metadata !1448, metadata !DIExpression()) #33, !dbg !1453
  call void @llvm.dbg.value(metadata i32 0, metadata !1451, metadata !DIExpression()) #33, !dbg !1453
  call void @llvm.dbg.value(metadata i64 8, metadata !1452, metadata !DIExpression()) #33, !dbg !1453
  store i64 0, i64* %13, align 8, !dbg !1455
  call void @llvm.dbg.value(metadata i32* %12, metadata !277, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1429
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !1456
  %59 = icmp eq i64 %58, 3, !dbg !1458
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !277, metadata !DIExpression()) #33, !dbg !1429
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1459
  %63 = icmp eq i32 %37, 9, !dbg !1459
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !1459
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1459
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1460
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1460
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1429
  call void @llvm.dbg.value(metadata i8* %67, metadata !1359, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), metadata !274, metadata !DIExpression()) #33, !dbg !1461
  call void @llvm.dbg.value(metadata i32 %37, metadata !275, metadata !DIExpression()) #33, !dbg !1461
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 noundef 5) #33, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %68, metadata !276, metadata !DIExpression()) #33, !dbg !1461
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !1464
  br i1 %69, label %70, label %79, !dbg !1465

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1466
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1467
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !278, metadata !DIExpression()) #33, !dbg !1468
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1440, metadata !DIExpression()) #33, !dbg !1469
  call void @llvm.dbg.value(metadata i8* %26, metadata !1448, metadata !DIExpression()) #33, !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1451, metadata !DIExpression()) #33, !dbg !1471
  call void @llvm.dbg.value(metadata i64 8, metadata !1452, metadata !DIExpression()) #33, !dbg !1471
  store i64 0, i64* %11, align 8, !dbg !1473
  call void @llvm.dbg.value(metadata i32* %10, metadata !277, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1461
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !1474
  %72 = icmp eq i64 %71, 3, !dbg !1475
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !277, metadata !DIExpression()) #33, !dbg !1461
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1476
  %76 = icmp eq i32 %37, 9, !dbg !1476
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !1476
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1476
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1477
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1360, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %80, metadata !1359, metadata !DIExpression()), !dbg !1414
  br i1 %45, label %97, label %82, !dbg !1478

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1371, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, metadata !1362, metadata !DIExpression()), !dbg !1414
  %83 = load i8, i8* %80, align 1, !dbg !1480, !tbaa !459
  %84 = icmp eq i8 %83, 0, !dbg !1482
  br i1 %84, label %97, label %85, !dbg !1482

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1371, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %88, metadata !1362, metadata !DIExpression()), !dbg !1414
  %89 = icmp ult i64 %88, %48, !dbg !1483
  br i1 %89, label %90, label %92, !dbg !1486

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1483
  store i8 %86, i8* %91, align 1, !dbg !1483, !tbaa !459
  br label %92, !dbg !1483

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %93, metadata !1362, metadata !DIExpression()), !dbg !1414
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1487
  call void @llvm.dbg.value(metadata i8* %94, metadata !1371, metadata !DIExpression()), !dbg !1479
  %95 = load i8, i8* %94, align 1, !dbg !1480, !tbaa !459
  %96 = icmp eq i8 %95, 0, !dbg !1482
  br i1 %96, label %97, label %85, !dbg !1482, !llvm.loop !1488

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1490
  call void @llvm.dbg.value(metadata i64 %98, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 1, metadata !1366, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %81, metadata !1364, metadata !DIExpression()), !dbg !1414
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %99, metadata !1365, metadata !DIExpression()), !dbg !1414
  br label %111, !dbg !1492

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1366, metadata !DIExpression()), !dbg !1414
  br label %102, !dbg !1493

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1367, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1366, metadata !DIExpression()), !dbg !1414
  br i1 %45, label %102, label %105, !dbg !1494

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1367, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1366, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 2, metadata !1356, metadata !DIExpression()), !dbg !1414
  br label %111, !dbg !1495

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1367, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1366, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 2, metadata !1356, metadata !DIExpression()), !dbg !1414
  br i1 %45, label %111, label %105, !dbg !1495

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1496
  br i1 %107, label %111, label %108, !dbg !1500

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1496, !tbaa !459
  br label %111, !dbg !1496

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1367, metadata !DIExpression()), !dbg !1414
  br label %111, !dbg !1501

110:                                              ; preds = %36
  call void @abort() #32, !dbg !1502
  unreachable, !dbg !1502

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1490
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %102 ], !dbg !1414
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1414
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1367, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1366, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %117, metadata !1365, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %116, metadata !1364, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %115, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %114, metadata !1360, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %113, metadata !1359, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %112, metadata !1356, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1376, metadata !DIExpression()), !dbg !1503
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
  br label %132, !dbg !1504

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1490
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1418
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1503
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %139, metadata !1376, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %135, metadata !1363, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %134, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %133, metadata !1355, metadata !DIExpression()), !dbg !1414
  %141 = icmp eq i64 %133, -1, !dbg !1505
  br i1 %141, label %142, label %146, !dbg !1506

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1507
  %144 = load i8, i8* %143, align 1, !dbg !1507, !tbaa !459
  %145 = icmp eq i8 %144, 0, !dbg !1508
  br i1 %145, label %596, label %148, !dbg !1509

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1510
  br i1 %147, label %596, label %148, !dbg !1509

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1378, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 0, metadata !1381, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 0, metadata !1382, metadata !DIExpression()), !dbg !1511
  br i1 %123, label %149, label %163, !dbg !1512

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1514
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1515
  br i1 %151, label %152, label %154, !dbg !1515

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %153, metadata !1355, metadata !DIExpression()), !dbg !1414
  br label %154, !dbg !1517

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1517
  call void @llvm.dbg.value(metadata i64 %155, metadata !1355, metadata !DIExpression()), !dbg !1414
  %156 = icmp ugt i64 %150, %155, !dbg !1518
  br i1 %156, label %163, label %157, !dbg !1519

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1520
  call void @llvm.dbg.value(metadata i8* %158, metadata !1521, metadata !DIExpression()) #33, !dbg !1526
  call void @llvm.dbg.value(metadata i8* %116, metadata !1524, metadata !DIExpression()) #33, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %117, metadata !1525, metadata !DIExpression()) #33, !dbg !1526
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !1528
  %160 = icmp ne i32 %159, 0, !dbg !1529
  %161 = or i1 %160, %125, !dbg !1530
  %162 = xor i1 %160, true, !dbg !1530
  br i1 %161, label %163, label %647, !dbg !1530

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1378, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %164, metadata !1355, metadata !DIExpression()), !dbg !1414
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1531
  %167 = load i8, i8* %166, align 1, !dbg !1531, !tbaa !459
  call void @llvm.dbg.value(metadata i8 %167, metadata !1383, metadata !DIExpression()), !dbg !1511
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
  ], !dbg !1532

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1533

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1534

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1381, metadata !DIExpression()), !dbg !1511
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1538
  br i1 %171, label %188, label %172, !dbg !1538

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1540
  br i1 %173, label %174, label %176, !dbg !1544

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1540
  store i8 39, i8* %175, align 1, !dbg !1540, !tbaa !459
  br label %176, !dbg !1540

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %177, metadata !1362, metadata !DIExpression()), !dbg !1414
  %178 = icmp ult i64 %177, %140, !dbg !1545
  br i1 %178, label %179, label %181, !dbg !1548

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1545
  store i8 36, i8* %180, align 1, !dbg !1545, !tbaa !459
  br label %181, !dbg !1545

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %182, metadata !1362, metadata !DIExpression()), !dbg !1414
  %183 = icmp ult i64 %182, %140, !dbg !1549
  br i1 %183, label %184, label %186, !dbg !1552

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1549
  store i8 39, i8* %185, align 1, !dbg !1549, !tbaa !459
  br label %186, !dbg !1549

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %187, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 1, metadata !1370, metadata !DIExpression()), !dbg !1414
  br label %188, !dbg !1553

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1414
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %189, metadata !1362, metadata !DIExpression()), !dbg !1414
  %191 = icmp ult i64 %189, %140, !dbg !1554
  br i1 %191, label %192, label %194, !dbg !1557

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1554
  store i8 92, i8* %193, align 1, !dbg !1554, !tbaa !459
  br label %194, !dbg !1554

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %195, metadata !1362, metadata !DIExpression()), !dbg !1414
  br i1 %120, label %196, label %499, !dbg !1558

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1560
  %198 = icmp ult i64 %197, %164, !dbg !1561
  br i1 %198, label %199, label %456, !dbg !1562

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1563
  %201 = load i8, i8* %200, align 1, !dbg !1563, !tbaa !459
  %202 = add i8 %201, -48, !dbg !1564
  %203 = icmp ult i8 %202, 10, !dbg !1564
  br i1 %203, label %204, label %456, !dbg !1564

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1565
  br i1 %205, label %206, label %208, !dbg !1569

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1565
  store i8 48, i8* %207, align 1, !dbg !1565, !tbaa !459
  br label %208, !dbg !1565

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %209, metadata !1362, metadata !DIExpression()), !dbg !1414
  %210 = icmp ult i64 %209, %140, !dbg !1570
  br i1 %210, label %211, label %213, !dbg !1573

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1570
  store i8 48, i8* %212, align 1, !dbg !1570, !tbaa !459
  br label %213, !dbg !1570

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %214, metadata !1362, metadata !DIExpression()), !dbg !1414
  br label %456, !dbg !1574

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1575

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1576

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1577

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1579

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1581
  %221 = icmp ult i64 %220, %164, !dbg !1582
  br i1 %221, label %222, label %456, !dbg !1583

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1584
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1585
  %225 = load i8, i8* %224, align 1, !dbg !1585, !tbaa !459
  %226 = icmp eq i8 %225, 63, !dbg !1586
  br i1 %226, label %227, label %456, !dbg !1587

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1588
  %229 = load i8, i8* %228, align 1, !dbg !1588, !tbaa !459
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
  ], !dbg !1589

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1590

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1383, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %220, metadata !1376, metadata !DIExpression()), !dbg !1503
  %232 = icmp ult i64 %134, %140, !dbg !1592
  br i1 %232, label %233, label %235, !dbg !1595

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1592
  store i8 63, i8* %234, align 1, !dbg !1592, !tbaa !459
  br label %235, !dbg !1592

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %236, metadata !1362, metadata !DIExpression()), !dbg !1414
  %237 = icmp ult i64 %236, %140, !dbg !1596
  br i1 %237, label %238, label %240, !dbg !1599

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1596
  store i8 34, i8* %239, align 1, !dbg !1596, !tbaa !459
  br label %240, !dbg !1596

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %241, metadata !1362, metadata !DIExpression()), !dbg !1414
  %242 = icmp ult i64 %241, %140, !dbg !1600
  br i1 %242, label %243, label %245, !dbg !1603

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1600
  store i8 34, i8* %244, align 1, !dbg !1600, !tbaa !459
  br label %245, !dbg !1600

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %246, metadata !1362, metadata !DIExpression()), !dbg !1414
  %247 = icmp ult i64 %246, %140, !dbg !1604
  br i1 %247, label %248, label %250, !dbg !1607

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1604
  store i8 63, i8* %249, align 1, !dbg !1604, !tbaa !459
  br label %250, !dbg !1604

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %251, metadata !1362, metadata !DIExpression()), !dbg !1414
  br label %456, !dbg !1608

252:                                              ; preds = %163
  br label %263, !dbg !1609

253:                                              ; preds = %163
  br label %263, !dbg !1610

254:                                              ; preds = %163
  br label %261, !dbg !1611

255:                                              ; preds = %163
  br label %261, !dbg !1612

256:                                              ; preds = %163
  br label %263, !dbg !1613

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1614

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1615

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1618

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1620

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1621
  call void @llvm.dbg.label(metadata !1408), !dbg !1622
  br i1 %128, label %263, label %638, !dbg !1623

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1621
  call void @llvm.dbg.label(metadata !1410), !dbg !1625
  br i1 %118, label %510, label %467, !dbg !1626

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1627

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1628, !tbaa !459
  %268 = icmp eq i8 %267, 0, !dbg !1630
  br i1 %268, label %269, label %456, !dbg !1631

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1632
  br i1 %270, label %271, label %456, !dbg !1634

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1382, metadata !DIExpression()), !dbg !1511
  br label %272, !dbg !1635

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1382, metadata !DIExpression()), !dbg !1511
  br i1 %126, label %274, label %456, !dbg !1636

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1638

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 1, metadata !1382, metadata !DIExpression()), !dbg !1511
  br i1 %126, label %276, label %456, !dbg !1639

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1640

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1643
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1645
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1645
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %282, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %281, metadata !1363, metadata !DIExpression()), !dbg !1414
  %283 = icmp ult i64 %134, %282, !dbg !1646
  br i1 %283, label %284, label %286, !dbg !1649

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1646
  store i8 39, i8* %285, align 1, !dbg !1646, !tbaa !459
  br label %286, !dbg !1646

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %287, metadata !1362, metadata !DIExpression()), !dbg !1414
  %288 = icmp ult i64 %287, %282, !dbg !1650
  br i1 %288, label %289, label %291, !dbg !1653

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1650
  store i8 92, i8* %290, align 1, !dbg !1650, !tbaa !459
  br label %291, !dbg !1650

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %292, metadata !1362, metadata !DIExpression()), !dbg !1414
  %293 = icmp ult i64 %292, %282, !dbg !1654
  br i1 %293, label %294, label %296, !dbg !1657

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1654
  store i8 39, i8* %295, align 1, !dbg !1654, !tbaa !459
  br label %296, !dbg !1654

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %297, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 0, metadata !1370, metadata !DIExpression()), !dbg !1414
  br label %456, !dbg !1658

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1659

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1384, metadata !DIExpression()), !dbg !1660
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1661
  %301 = load i16*, i16** %300, align 8, !dbg !1661, !tbaa !421
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1661
  %304 = load i16, i16* %303, align 2, !dbg !1661, !tbaa !491
  %305 = and i16 %304, 16384, !dbg !1661
  %306 = icmp ne i16 %305, 0, !dbg !1663
  call void @llvm.dbg.value(metadata i8 poison, metadata !1387, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %349, metadata !1384, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %312, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i1 %350, metadata !1382, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  br label %352, !dbg !1664

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1665
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1388, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1440, metadata !DIExpression()) #33, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %32, metadata !1448, metadata !DIExpression()) #33, !dbg !1669
  call void @llvm.dbg.value(metadata i32 0, metadata !1451, metadata !DIExpression()) #33, !dbg !1669
  call void @llvm.dbg.value(metadata i64 8, metadata !1452, metadata !DIExpression()) #33, !dbg !1669
  store i64 0, i64* %14, align 8, !dbg !1671
  call void @llvm.dbg.value(metadata i64 0, metadata !1384, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 1, metadata !1387, metadata !DIExpression()), !dbg !1660
  %308 = icmp eq i64 %164, -1, !dbg !1672
  br i1 %308, label %309, label %311, !dbg !1674

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %310, metadata !1355, metadata !DIExpression()), !dbg !1414
  br label %311, !dbg !1676

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1511
  call void @llvm.dbg.value(metadata i64 %312, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1677
  %313 = sub i64 %312, %139, !dbg !1678
  call void @llvm.dbg.value(metadata i32* %16, metadata !1391, metadata !DIExpression(DW_OP_deref)), !dbg !1679
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %314, metadata !1395, metadata !DIExpression()), !dbg !1679
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1681

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1384, metadata !DIExpression()), !dbg !1660
  %316 = icmp ugt i64 %312, %139, !dbg !1682
  br i1 %316, label %319, label %317, !dbg !1684

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1387, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1384, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1685
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %349, metadata !1384, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %312, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i1 %350, metadata !1382, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  br label %352, !dbg !1664

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1387, metadata !DIExpression()), !dbg !1660
  br label %346, !dbg !1687

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1384, metadata !DIExpression()), !dbg !1660
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1689
  %323 = load i8, i8* %322, align 1, !dbg !1689, !tbaa !459
  %324 = icmp eq i8 %323, 0, !dbg !1684
  br i1 %324, label %348, label %325, !dbg !1690

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %326, metadata !1384, metadata !DIExpression()), !dbg !1660
  %327 = add i64 %326, %139, !dbg !1692
  %328 = icmp eq i64 %326, %313, !dbg !1682
  br i1 %328, label %348, label %319, !dbg !1684, !llvm.loop !1693

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1694
  call void @llvm.dbg.value(metadata i64 1, metadata !1396, metadata !DIExpression()), !dbg !1695
  br i1 %331, label %332, label %340, !dbg !1694

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1396, metadata !DIExpression()), !dbg !1695
  %334 = add i64 %333, %139, !dbg !1696
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1698
  %336 = load i8, i8* %335, align 1, !dbg !1698, !tbaa !459
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1699

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %338, metadata !1396, metadata !DIExpression()), !dbg !1695
  %339 = icmp eq i64 %338, %314, !dbg !1701
  br i1 %339, label %340, label %332, !dbg !1702, !llvm.loop !1703

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1705, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %341, metadata !1391, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %341, metadata !1707, metadata !DIExpression()) #33, !dbg !1715
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !1717
  %343 = icmp ne i32 %342, 0, !dbg !1718
  call void @llvm.dbg.value(metadata i8 poison, metadata !1387, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %314, metadata !1384, metadata !DIExpression()), !dbg !1660
  br label %348, !dbg !1719

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1387, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1384, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1685
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1686
  call void @llvm.dbg.label(metadata !1413), !dbg !1720
  %345 = select i1 %118, i32 4, i32 2, !dbg !1721
  br label %643, !dbg !1721

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1387, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1384, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1685
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %349, metadata !1384, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %312, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i1 %350, metadata !1382, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  br label %352, !dbg !1664

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1387, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1384, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1685
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %349, metadata !1384, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %312, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i1 %350, metadata !1382, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  %351 = icmp ugt i64 %349, 1, !dbg !1723
  br i1 %351, label %357, label %352, !dbg !1664

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1724
  br i1 %356, label %456, label %357, !dbg !1724

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %361, metadata !1404, metadata !DIExpression()), !dbg !1726
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1727

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1414
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1503
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1728
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1511
  call void @llvm.dbg.value(metadata i8 %369, metadata !1383, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %368, metadata !1381, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1378, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %366, metadata !1376, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %364, metadata !1362, metadata !DIExpression()), !dbg !1414
  br i1 %362, label %414, label %370, !dbg !1729

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1734

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1381, metadata !DIExpression()), !dbg !1511
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1737
  br i1 %372, label %389, label %373, !dbg !1737

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1739
  br i1 %374, label %375, label %377, !dbg !1743

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1739
  store i8 39, i8* %376, align 1, !dbg !1739, !tbaa !459
  br label %377, !dbg !1739

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %378, metadata !1362, metadata !DIExpression()), !dbg !1414
  %379 = icmp ult i64 %378, %140, !dbg !1744
  br i1 %379, label %380, label %382, !dbg !1747

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1744
  store i8 36, i8* %381, align 1, !dbg !1744, !tbaa !459
  br label %382, !dbg !1744

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %383, metadata !1362, metadata !DIExpression()), !dbg !1414
  %384 = icmp ult i64 %383, %140, !dbg !1748
  br i1 %384, label %385, label %387, !dbg !1751

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1748
  store i8 39, i8* %386, align 1, !dbg !1748, !tbaa !459
  br label %387, !dbg !1748

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %388, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 1, metadata !1370, metadata !DIExpression()), !dbg !1414
  br label %389, !dbg !1752

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1414
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %390, metadata !1362, metadata !DIExpression()), !dbg !1414
  %392 = icmp ult i64 %390, %140, !dbg !1753
  br i1 %392, label %393, label %395, !dbg !1756

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1753
  store i8 92, i8* %394, align 1, !dbg !1753, !tbaa !459
  br label %395, !dbg !1753

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %396, metadata !1362, metadata !DIExpression()), !dbg !1414
  %397 = icmp ult i64 %396, %140, !dbg !1757
  br i1 %397, label %398, label %402, !dbg !1760

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1757
  %400 = or i8 %399, 48, !dbg !1757
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1757
  store i8 %400, i8* %401, align 1, !dbg !1757, !tbaa !459
  br label %402, !dbg !1757

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %403, metadata !1362, metadata !DIExpression()), !dbg !1414
  %404 = icmp ult i64 %403, %140, !dbg !1761
  br i1 %404, label %405, label %410, !dbg !1764

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1761
  %407 = and i8 %406, 7, !dbg !1761
  %408 = or i8 %407, 48, !dbg !1761
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1761
  store i8 %408, i8* %409, align 1, !dbg !1761, !tbaa !459
  br label %410, !dbg !1761

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %411, metadata !1362, metadata !DIExpression()), !dbg !1414
  %412 = and i8 %369, 7, !dbg !1765
  %413 = or i8 %412, 48, !dbg !1766
  call void @llvm.dbg.value(metadata i8 %413, metadata !1383, metadata !DIExpression()), !dbg !1511
  br label %421, !dbg !1767

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1768

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1769
  br i1 %416, label %417, label %419, !dbg !1774

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1769
  store i8 92, i8* %418, align 1, !dbg !1769, !tbaa !459
  br label %419, !dbg !1769

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %420, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 0, metadata !1378, metadata !DIExpression()), !dbg !1511
  br label %421, !dbg !1775

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1414
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1511
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1511
  call void @llvm.dbg.value(metadata i8 %426, metadata !1383, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %425, metadata !1381, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1378, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %422, metadata !1362, metadata !DIExpression()), !dbg !1414
  %427 = add i64 %366, 1, !dbg !1776
  %428 = icmp ugt i64 %361, %427, !dbg !1778
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1779

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1780
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1780
  br i1 %432, label %433, label %444, !dbg !1780

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1783
  br i1 %434, label %435, label %437, !dbg !1787

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1783
  store i8 39, i8* %436, align 1, !dbg !1783, !tbaa !459
  br label %437, !dbg !1783

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %438, metadata !1362, metadata !DIExpression()), !dbg !1414
  %439 = icmp ult i64 %438, %140, !dbg !1788
  br i1 %439, label %440, label %442, !dbg !1791

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1788
  store i8 39, i8* %441, align 1, !dbg !1788, !tbaa !459
  br label %442, !dbg !1788

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %443, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 0, metadata !1370, metadata !DIExpression()), !dbg !1414
  br label %444, !dbg !1792

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1793
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %445, metadata !1362, metadata !DIExpression()), !dbg !1414
  %447 = icmp ult i64 %445, %140, !dbg !1794
  br i1 %447, label %448, label %450, !dbg !1797

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1794
  store i8 %426, i8* %449, align 1, !dbg !1794, !tbaa !459
  br label %450, !dbg !1794

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %451, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %427, metadata !1376, metadata !DIExpression()), !dbg !1503
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1798
  %453 = load i8, i8* %452, align 1, !dbg !1798, !tbaa !459
  call void @llvm.dbg.value(metadata i8 %453, metadata !1383, metadata !DIExpression()), !dbg !1511
  br label %363, !dbg !1799, !llvm.loop !1800

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1383, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i1 %358, metadata !1382, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %425, metadata !1381, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1378, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %366, metadata !1376, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %422, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %360, metadata !1355, metadata !DIExpression()), !dbg !1414
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1803
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1414
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1418
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1503
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1511
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 %465, metadata !1383, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1382, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1381, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1378, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %462, metadata !1376, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %459, metadata !1363, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %458, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %457, metadata !1355, metadata !DIExpression()), !dbg !1414
  br i1 %121, label %478, label %467, !dbg !1804

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
  br i1 %131, label %479, label %499, !dbg !1806

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1807

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
  %490 = lshr i8 %481, 5, !dbg !1808
  %491 = zext i8 %490 to i64, !dbg !1808
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1809
  %493 = load i32, i32* %492, align 4, !dbg !1809, !tbaa !450
  %494 = and i8 %481, 31, !dbg !1810
  %495 = zext i8 %494 to i32, !dbg !1810
  %496 = shl nuw i32 1, %495, !dbg !1811
  %497 = and i32 %493, %496, !dbg !1811
  %498 = icmp eq i32 %497, 0, !dbg !1811
  br i1 %498, label %499, label %510, !dbg !1812

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
  br i1 %165, label %510, label %546, !dbg !1813

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1803
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1414
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1418
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1814
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1511
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 %518, metadata !1383, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1382, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %516, metadata !1376, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %513, metadata !1363, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %512, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %511, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.label(metadata !1411), !dbg !1815
  br i1 %119, label %638, label %520, !dbg !1816

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1381, metadata !DIExpression()), !dbg !1511
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1818
  br i1 %521, label %538, label %522, !dbg !1818

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1820
  br i1 %523, label %524, label %526, !dbg !1824

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1820
  store i8 39, i8* %525, align 1, !dbg !1820, !tbaa !459
  br label %526, !dbg !1820

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %527, metadata !1362, metadata !DIExpression()), !dbg !1414
  %528 = icmp ult i64 %527, %519, !dbg !1825
  br i1 %528, label %529, label %531, !dbg !1828

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1825
  store i8 36, i8* %530, align 1, !dbg !1825, !tbaa !459
  br label %531, !dbg !1825

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %532, metadata !1362, metadata !DIExpression()), !dbg !1414
  %533 = icmp ult i64 %532, %519, !dbg !1829
  br i1 %533, label %534, label %536, !dbg !1832

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1829
  store i8 39, i8* %535, align 1, !dbg !1829, !tbaa !459
  br label %536, !dbg !1829

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %537, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 1, metadata !1370, metadata !DIExpression()), !dbg !1414
  br label %538, !dbg !1833

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1511
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %539, metadata !1362, metadata !DIExpression()), !dbg !1414
  %541 = icmp ult i64 %539, %519, !dbg !1834
  br i1 %541, label %542, label %544, !dbg !1837

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1834
  store i8 92, i8* %543, align 1, !dbg !1834, !tbaa !459
  br label %544, !dbg !1834

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %556, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 %555, metadata !1383, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1382, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1381, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %552, metadata !1376, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %549, metadata !1363, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %548, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %547, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.label(metadata !1412), !dbg !1838
  br label %570, !dbg !1839

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1803
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1414
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1418
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1814
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1842
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 %555, metadata !1383, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1382, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 poison, metadata !1381, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %552, metadata !1376, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %549, metadata !1363, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %548, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %547, metadata !1355, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.label(metadata !1412), !dbg !1838
  %557 = xor i1 %551, true, !dbg !1839
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1839
  br i1 %558, label %570, label %559, !dbg !1839

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1843
  br i1 %560, label %561, label %563, !dbg !1847

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1843
  store i8 39, i8* %562, align 1, !dbg !1843, !tbaa !459
  br label %563, !dbg !1843

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %564, metadata !1362, metadata !DIExpression()), !dbg !1414
  %565 = icmp ult i64 %564, %556, !dbg !1848
  br i1 %565, label %566, label %568, !dbg !1851

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1848
  store i8 39, i8* %567, align 1, !dbg !1848, !tbaa !459
  br label %568, !dbg !1848

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %569, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 0, metadata !1370, metadata !DIExpression()), !dbg !1414
  br label %570, !dbg !1852

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1511
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %578, metadata !1362, metadata !DIExpression()), !dbg !1414
  %580 = icmp ult i64 %578, %571, !dbg !1853
  br i1 %580, label %581, label %583, !dbg !1856

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1853
  store i8 %572, i8* %582, align 1, !dbg !1853, !tbaa !459
  br label %583, !dbg !1853

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %584, metadata !1362, metadata !DIExpression()), !dbg !1414
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1857
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1414
  br label %586, !dbg !1858

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1803
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1414
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1418
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1814
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %593, metadata !1376, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 poison, metadata !1370, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %589, metadata !1363, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %588, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %587, metadata !1355, metadata !DIExpression()), !dbg !1414
  %595 = add i64 %593, 1, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %595, metadata !1376, metadata !DIExpression()), !dbg !1503
  br label %132, !dbg !1860, !llvm.loop !1861

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1353, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 undef, metadata !1363, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 undef, metadata !1362, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 undef, metadata !1355, metadata !DIExpression()), !dbg !1414
  %597 = icmp eq i64 %134, 0, !dbg !1863
  %598 = and i1 %126, %597, !dbg !1865
  %599 = and i1 %598, %119, !dbg !1865
  br i1 %599, label %638, label %600, !dbg !1865

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1866
  %602 = or i1 %119, %601, !dbg !1866
  %603 = xor i1 %136, true, !dbg !1866
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1866
  br i1 %604, label %612, label %605, !dbg !1866

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1868

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1870
  br label %653, !dbg !1872

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1873
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1875
  br i1 %611, label %36, label %612, !dbg !1875

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1876
  %615 = or i1 %614, %613, !dbg !1878
  br i1 %615, label %631, label %616, !dbg !1878

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1364, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %134, metadata !1362, metadata !DIExpression()), !dbg !1414
  %617 = load i8, i8* %116, align 1, !dbg !1879, !tbaa !459
  %618 = icmp eq i8 %617, 0, !dbg !1882
  br i1 %618, label %631, label %619, !dbg !1882

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1364, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %622, metadata !1362, metadata !DIExpression()), !dbg !1414
  %623 = icmp ult i64 %622, %140, !dbg !1883
  br i1 %623, label %624, label %626, !dbg !1886

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1883
  store i8 %620, i8* %625, align 1, !dbg !1883, !tbaa !459
  br label %626, !dbg !1883

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %627, metadata !1362, metadata !DIExpression()), !dbg !1414
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1887
  call void @llvm.dbg.value(metadata i8* %628, metadata !1364, metadata !DIExpression()), !dbg !1414
  %629 = load i8, i8* %628, align 1, !dbg !1879, !tbaa !459
  %630 = icmp eq i8 %629, 0, !dbg !1882
  br i1 %630, label %631, label %619, !dbg !1882, !llvm.loop !1888

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1490
  call void @llvm.dbg.value(metadata i64 %632, metadata !1362, metadata !DIExpression()), !dbg !1414
  %633 = icmp ult i64 %632, %140, !dbg !1890
  br i1 %633, label %634, label %653, !dbg !1892

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1893
  store i8 0, i8* %635, align 1, !dbg !1894, !tbaa !459
  br label %653, !dbg !1893

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1413), !dbg !1720
  %637 = icmp eq i32 %112, 2, !dbg !1895
  br i1 %637, label %643, label %647, !dbg !1721

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1413), !dbg !1720
  %641 = icmp eq i32 %112, 2, !dbg !1895
  %642 = select i1 %118, i32 4, i32 2, !dbg !1721
  br i1 %641, label %643, label %647, !dbg !1721

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1721

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1356, metadata !DIExpression()), !dbg !1414
  %651 = and i32 %5, -3, !dbg !1896
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1897
  br label %653, !dbg !1898

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1899
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1900 i32 @iswprint(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1902 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1906, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %1, metadata !1907, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1908, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8* %0, metadata !1910, metadata !DIExpression()) #33, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %1, metadata !1915, metadata !DIExpression()) #33, !dbg !1923
  call void @llvm.dbg.value(metadata i64* null, metadata !1916, metadata !DIExpression()) #33, !dbg !1923
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1917, metadata !DIExpression()) #33, !dbg !1923
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1925
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1925
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1918, metadata !DIExpression()) #33, !dbg !1923
  %6 = tail call i32* @__errno_location() #35, !dbg !1926
  %7 = load i32, i32* %6, align 4, !dbg !1926, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %7, metadata !1919, metadata !DIExpression()) #33, !dbg !1923
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1927
  %9 = load i32, i32* %8, align 4, !dbg !1927, !tbaa !1296
  %10 = or i32 %9, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %10, metadata !1920, metadata !DIExpression()) #33, !dbg !1923
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1929
  %12 = load i32, i32* %11, align 8, !dbg !1929, !tbaa !1245
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1930
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1931
  %15 = load i8*, i8** %14, align 8, !dbg !1931, !tbaa !1318
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1932
  %17 = load i8*, i8** %16, align 8, !dbg !1932, !tbaa !1321
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !1933
  %19 = add i64 %18, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %19, metadata !1921, metadata !DIExpression()) #33, !dbg !1923
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1935
  call void @llvm.dbg.value(metadata i8* %20, metadata !1922, metadata !DIExpression()) #33, !dbg !1923
  %21 = load i32, i32* %11, align 8, !dbg !1936, !tbaa !1245
  %22 = load i8*, i8** %14, align 8, !dbg !1937, !tbaa !1318
  %23 = load i8*, i8** %16, align 8, !dbg !1938, !tbaa !1321
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !1939
  store i32 %7, i32* %6, align 4, !dbg !1940, !tbaa !450
  ret i8* %20, !dbg !1941
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1910, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %1, metadata !1915, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64* %2, metadata !1916, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1917, metadata !DIExpression()), !dbg !1942
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1943
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1918, metadata !DIExpression()), !dbg !1942
  %7 = tail call i32* @__errno_location() #35, !dbg !1944
  %8 = load i32, i32* %7, align 4, !dbg !1944, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %8, metadata !1919, metadata !DIExpression()), !dbg !1942
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1945
  %10 = load i32, i32* %9, align 4, !dbg !1945, !tbaa !1296
  %11 = icmp eq i64* %2, null, !dbg !1946
  %12 = zext i1 %11 to i32, !dbg !1946
  %13 = or i32 %10, %12, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %13, metadata !1920, metadata !DIExpression()), !dbg !1942
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1948
  %15 = load i32, i32* %14, align 8, !dbg !1948, !tbaa !1245
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1949
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1950
  %18 = load i8*, i8** %17, align 8, !dbg !1950, !tbaa !1318
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1951
  %20 = load i8*, i8** %19, align 8, !dbg !1951, !tbaa !1321
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1952
  %22 = add i64 %21, 1, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %22, metadata !1921, metadata !DIExpression()), !dbg !1942
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1954
  call void @llvm.dbg.value(metadata i8* %23, metadata !1922, metadata !DIExpression()), !dbg !1942
  %24 = load i32, i32* %14, align 8, !dbg !1955, !tbaa !1245
  %25 = load i8*, i8** %17, align 8, !dbg !1956, !tbaa !1318
  %26 = load i8*, i8** %19, align 8, !dbg !1957, !tbaa !1321
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1958
  store i32 %8, i32* %7, align 4, !dbg !1959, !tbaa !450
  br i1 %11, label %29, label %28, !dbg !1960

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1961, !tbaa !1963
  br label %29, !dbg !1964

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1965
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1966 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1971, !tbaa !421
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1968, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i32 1, metadata !1969, metadata !DIExpression()), !dbg !1973
  %2 = load i32, i32* @nslots, align 4, !tbaa !450
  call void @llvm.dbg.value(metadata i32 1, metadata !1969, metadata !DIExpression()), !dbg !1973
  %3 = icmp sgt i32 %2, 1, !dbg !1974
  br i1 %3, label %4, label %6, !dbg !1976

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1974
  br label %10, !dbg !1976

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1977
  %8 = load i8*, i8** %7, align 8, !dbg !1977, !tbaa !1979
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1981
  br i1 %9, label %17, label %16, !dbg !1982

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1969, metadata !DIExpression()), !dbg !1973
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1983
  %13 = load i8*, i8** %12, align 8, !dbg !1983, !tbaa !1979
  tail call void @free(i8* noundef %13) #33, !dbg !1984
  %14 = add nuw nsw i64 %11, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %14, metadata !1969, metadata !DIExpression()), !dbg !1973
  %15 = icmp eq i64 %14, %5, !dbg !1974
  br i1 %15, label %6, label %10, !dbg !1976, !llvm.loop !1986

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !1988
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1990, !tbaa !1991
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1992, !tbaa !1979
  br label %17, !dbg !1993

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1994
  br i1 %18, label %21, label %19, !dbg !1996

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1997
  tail call void @free(i8* noundef %20) #33, !dbg !1999
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2000, !tbaa !421
  br label %21, !dbg !2001

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2002, !tbaa !450
  ret void, !dbg !2003
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2004 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %1, metadata !2007, metadata !DIExpression()), !dbg !2008
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2009
  ret i8* %3, !dbg !2010
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2011 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2015, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8* %1, metadata !2016, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i64 %2, metadata !2017, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2018, metadata !DIExpression()), !dbg !2031
  %6 = tail call i32* @__errno_location() #35, !dbg !2032
  %7 = load i32, i32* %6, align 4, !dbg !2032, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %7, metadata !2019, metadata !DIExpression()), !dbg !2031
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2033, !tbaa !421
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2020, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2021, metadata !DIExpression()), !dbg !2031
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2034
  br i1 %9, label %10, label %11, !dbg !2034

10:                                               ; preds = %4
  tail call void @abort() #32, !dbg !2036
  unreachable, !dbg !2036

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2037, !tbaa !450
  %13 = icmp sgt i32 %12, %0, !dbg !2038
  br i1 %13, label %36, label %14, !dbg !2039

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2040
  call void @llvm.dbg.value(metadata i1 %15, metadata !2022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2041
  %16 = bitcast i64* %5 to i8*, !dbg !2042
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2042
  %17 = sext i32 %12 to i64, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %17, metadata !2025, metadata !DIExpression()), !dbg !2041
  store i64 %17, i64* %5, align 8, !dbg !2044, !tbaa !1963
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2045
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2045
  %20 = add nuw nsw i32 %0, 1, !dbg !2046
  %21 = sub i32 %20, %12, !dbg !2047
  %22 = sext i32 %21 to i64, !dbg !2048
  call void @llvm.dbg.value(metadata i64* %5, metadata !2025, metadata !DIExpression(DW_OP_deref)), !dbg !2041
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !2049
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2049
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2020, metadata !DIExpression()), !dbg !2031
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2050, !tbaa !421
  br i1 %15, label %25, label %26, !dbg !2051

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2052, !tbaa.struct !2054
  br label %26, !dbg !2055

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2056, !tbaa !450
  %28 = sext i32 %27 to i64, !dbg !2057
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2057
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2058
  %31 = load i64, i64* %5, align 8, !dbg !2059, !tbaa !1963
  call void @llvm.dbg.value(metadata i64 %31, metadata !2025, metadata !DIExpression()), !dbg !2041
  %32 = sub nsw i64 %31, %28, !dbg !2060
  %33 = shl i64 %32, 4, !dbg !2061
  call void @llvm.dbg.value(metadata i8* %30, metadata !1448, metadata !DIExpression()) #33, !dbg !2062
  call void @llvm.dbg.value(metadata i32 0, metadata !1451, metadata !DIExpression()) #33, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %33, metadata !1452, metadata !DIExpression()) #33, !dbg !2062
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !2064
  %34 = load i64, i64* %5, align 8, !dbg !2065, !tbaa !1963
  call void @llvm.dbg.value(metadata i64 %34, metadata !2025, metadata !DIExpression()), !dbg !2041
  %35 = trunc i64 %34 to i32, !dbg !2065
  store i32 %35, i32* @nslots, align 4, !dbg !2066, !tbaa !450
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2067
  br label %36, !dbg !2068

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2031
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2020, metadata !DIExpression()), !dbg !2031
  %38 = zext i32 %0 to i64, !dbg !2069
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2070
  %40 = load i64, i64* %39, align 8, !dbg !2070, !tbaa !1991
  call void @llvm.dbg.value(metadata i64 %40, metadata !2026, metadata !DIExpression()), !dbg !2071
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2072
  %42 = load i8*, i8** %41, align 8, !dbg !2072, !tbaa !1979
  call void @llvm.dbg.value(metadata i8* %42, metadata !2028, metadata !DIExpression()), !dbg !2071
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2073
  %44 = load i32, i32* %43, align 4, !dbg !2073, !tbaa !1296
  %45 = or i32 %44, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %45, metadata !2029, metadata !DIExpression()), !dbg !2071
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2075
  %47 = load i32, i32* %46, align 8, !dbg !2075, !tbaa !1245
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2076
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2077
  %50 = load i8*, i8** %49, align 8, !dbg !2077, !tbaa !1318
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2078
  %52 = load i8*, i8** %51, align 8, !dbg !2078, !tbaa !1321
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %53, metadata !2030, metadata !DIExpression()), !dbg !2071
  %54 = icmp ugt i64 %40, %53, !dbg !2080
  br i1 %54, label %65, label %55, !dbg !2082

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %56, metadata !2026, metadata !DIExpression()), !dbg !2071
  store i64 %56, i64* %39, align 8, !dbg !2085, !tbaa !1991
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2086
  br i1 %57, label %59, label %58, !dbg !2088

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !2089
  br label %59, !dbg !2089

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !2090
  call void @llvm.dbg.value(metadata i8* %60, metadata !2028, metadata !DIExpression()), !dbg !2071
  store i8* %60, i8** %41, align 8, !dbg !2091, !tbaa !1979
  %61 = load i32, i32* %46, align 8, !dbg !2092, !tbaa !1245
  %62 = load i8*, i8** %49, align 8, !dbg !2093, !tbaa !1318
  %63 = load i8*, i8** %51, align 8, !dbg !2094, !tbaa !1321
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2095
  br label %65, !dbg !2096

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2071
  call void @llvm.dbg.value(metadata i8* %66, metadata !2028, metadata !DIExpression()), !dbg !2071
  store i32 %7, i32* %6, align 4, !dbg !2097, !tbaa !450
  ret i8* %66, !dbg !2098
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2099 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %1, metadata !2104, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %2, metadata !2105, metadata !DIExpression()), !dbg !2106
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2107
  ret i8* %4, !dbg !2108
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2109 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i32 0, metadata !2006, metadata !DIExpression()) #33, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %0, metadata !2007, metadata !DIExpression()) #33, !dbg !2113
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2115
  ret i8* %2, !dbg !2116
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2117 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2121, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %1, metadata !2122, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 0, metadata !2103, metadata !DIExpression()) #33, !dbg !2124
  call void @llvm.dbg.value(metadata i8* %0, metadata !2104, metadata !DIExpression()) #33, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %1, metadata !2105, metadata !DIExpression()) #33, !dbg !2124
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2126
  ret i8* %3, !dbg !2127
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2128 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2132, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 %1, metadata !2133, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8* %2, metadata !2134, metadata !DIExpression()), !dbg !2136
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2137
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2135, metadata !DIExpression()), !dbg !2138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139), !dbg !2142
  call void @llvm.dbg.value(metadata i32 %1, metadata !2143, metadata !DIExpression()) #33, !dbg !2149
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2148, metadata !DIExpression()) #33, !dbg !2151
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2151, !alias.scope !2139
  %6 = icmp eq i32 %1, 10, !dbg !2152
  br i1 %6, label %7, label %8, !dbg !2154

7:                                                ; preds = %3
  tail call void @abort() #32, !dbg !2155, !noalias !2139
  unreachable, !dbg !2155

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2156
  store i32 %1, i32* %9, align 8, !dbg !2157, !tbaa !1245, !alias.scope !2139
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2158
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2159
  ret i8* %10, !dbg !2160
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2161 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 %1, metadata !2166, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8* %2, metadata !2167, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %3, metadata !2168, metadata !DIExpression()), !dbg !2170
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2171
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2171
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2169, metadata !DIExpression()), !dbg !2172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %1, metadata !2143, metadata !DIExpression()) #33, !dbg !2177
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2148, metadata !DIExpression()) #33, !dbg !2179
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !2179, !alias.scope !2173
  %7 = icmp eq i32 %1, 10, !dbg !2180
  br i1 %7, label %8, label %9, !dbg !2181

8:                                                ; preds = %4
  tail call void @abort() #32, !dbg !2182, !noalias !2173
  unreachable, !dbg !2182

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2183
  store i32 %1, i32* %10, align 8, !dbg !2184, !tbaa !1245, !alias.scope !2173
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2185
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2186
  ret i8* %11, !dbg !2187
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2188 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8* %1, metadata !2193, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 0, metadata !2132, metadata !DIExpression()) #33, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %0, metadata !2133, metadata !DIExpression()) #33, !dbg !2195
  call void @llvm.dbg.value(metadata i8* %1, metadata !2134, metadata !DIExpression()) #33, !dbg !2195
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2197
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2197
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2135, metadata !DIExpression()) #33, !dbg !2198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199) #33, !dbg !2202
  call void @llvm.dbg.value(metadata i32 %0, metadata !2143, metadata !DIExpression()) #33, !dbg !2203
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2148, metadata !DIExpression()) #33, !dbg !2205
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !2205, !alias.scope !2199
  %5 = icmp eq i32 %0, 10, !dbg !2206
  br i1 %5, label %6, label %7, !dbg !2207

6:                                                ; preds = %2
  tail call void @abort() #32, !dbg !2208, !noalias !2199
  unreachable, !dbg !2208

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2209
  store i32 %0, i32* %8, align 8, !dbg !2210, !tbaa !1245, !alias.scope !2199
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2211
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2212
  ret i8* %9, !dbg !2213
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2214 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2218, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i8* %1, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i64 %2, metadata !2220, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i32 0, metadata !2165, metadata !DIExpression()) #33, !dbg !2222
  call void @llvm.dbg.value(metadata i32 %0, metadata !2166, metadata !DIExpression()) #33, !dbg !2222
  call void @llvm.dbg.value(metadata i8* %1, metadata !2167, metadata !DIExpression()) #33, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %2, metadata !2168, metadata !DIExpression()) #33, !dbg !2222
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2224
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2169, metadata !DIExpression()) #33, !dbg !2225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226) #33, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %0, metadata !2143, metadata !DIExpression()) #33, !dbg !2230
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2148, metadata !DIExpression()) #33, !dbg !2232
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2232, !alias.scope !2226
  %6 = icmp eq i32 %0, 10, !dbg !2233
  br i1 %6, label %7, label %8, !dbg !2234

7:                                                ; preds = %3
  tail call void @abort() #32, !dbg !2235, !noalias !2226
  unreachable, !dbg !2235

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2236
  store i32 %0, i32* %9, align 8, !dbg !2237, !tbaa !1245, !alias.scope !2226
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2238
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2239
  ret i8* %10, !dbg !2240
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2241 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2245, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %1, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 %2, metadata !2247, metadata !DIExpression()), !dbg !2249
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2250
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2250
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2248, metadata !DIExpression()), !dbg !2251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2252, !tbaa.struct !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1263, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 %2, metadata !1264, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 1, metadata !1265, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 %2, metadata !1266, metadata !DIExpression()), !dbg !2254
  %6 = lshr i8 %2, 5, !dbg !2256
  %7 = zext i8 %6 to i64, !dbg !2256
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2257
  call void @llvm.dbg.value(metadata i32* %8, metadata !1267, metadata !DIExpression()), !dbg !2254
  %9 = and i8 %2, 31, !dbg !2258
  %10 = zext i8 %9 to i32, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %10, metadata !1269, metadata !DIExpression()), !dbg !2254
  %11 = load i32, i32* %8, align 4, !dbg !2259, !tbaa !450
  %12 = lshr i32 %11, %10, !dbg !2260
  %13 = and i32 %12, 1, !dbg !2261
  call void @llvm.dbg.value(metadata i32 %13, metadata !1270, metadata !DIExpression()), !dbg !2254
  %14 = xor i32 %13, 1, !dbg !2262
  %15 = shl i32 %14, %10, !dbg !2263
  %16 = xor i32 %15, %11, !dbg !2264
  store i32 %16, i32* %8, align 4, !dbg !2264, !tbaa !450
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2266
  ret i8* %17, !dbg !2267
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2268 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %1, metadata !2273, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* %0, metadata !2245, metadata !DIExpression()) #33, !dbg !2275
  call void @llvm.dbg.value(metadata i64 -1, metadata !2246, metadata !DIExpression()) #33, !dbg !2275
  call void @llvm.dbg.value(metadata i8 %1, metadata !2247, metadata !DIExpression()) #33, !dbg !2275
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2277
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2248, metadata !DIExpression()) #33, !dbg !2278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2279, !tbaa.struct !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1263, metadata !DIExpression()) #33, !dbg !2280
  call void @llvm.dbg.value(metadata i8 %1, metadata !1264, metadata !DIExpression()) #33, !dbg !2280
  call void @llvm.dbg.value(metadata i32 1, metadata !1265, metadata !DIExpression()) #33, !dbg !2280
  call void @llvm.dbg.value(metadata i8 %1, metadata !1266, metadata !DIExpression()) #33, !dbg !2280
  %5 = lshr i8 %1, 5, !dbg !2282
  %6 = zext i8 %5 to i64, !dbg !2282
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2283
  call void @llvm.dbg.value(metadata i32* %7, metadata !1267, metadata !DIExpression()) #33, !dbg !2280
  %8 = and i8 %1, 31, !dbg !2284
  %9 = zext i8 %8 to i32, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %9, metadata !1269, metadata !DIExpression()) #33, !dbg !2280
  %10 = load i32, i32* %7, align 4, !dbg !2285, !tbaa !450
  %11 = lshr i32 %10, %9, !dbg !2286
  %12 = and i32 %11, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %12, metadata !1270, metadata !DIExpression()) #33, !dbg !2280
  %13 = xor i32 %12, 1, !dbg !2288
  %14 = shl i32 %13, %9, !dbg !2289
  %15 = xor i32 %14, %10, !dbg !2290
  store i32 %15, i32* %7, align 4, !dbg !2290, !tbaa !450
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2291
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2292
  ret i8* %16, !dbg !2293
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2294 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()) #33, !dbg !2298
  call void @llvm.dbg.value(metadata i8 58, metadata !2273, metadata !DIExpression()) #33, !dbg !2298
  call void @llvm.dbg.value(metadata i8* %0, metadata !2245, metadata !DIExpression()) #33, !dbg !2300
  call void @llvm.dbg.value(metadata i64 -1, metadata !2246, metadata !DIExpression()) #33, !dbg !2300
  call void @llvm.dbg.value(metadata i8 58, metadata !2247, metadata !DIExpression()) #33, !dbg !2300
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2302
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2302
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2248, metadata !DIExpression()) #33, !dbg !2303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2304, !tbaa.struct !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1263, metadata !DIExpression()) #33, !dbg !2305
  call void @llvm.dbg.value(metadata i8 58, metadata !1264, metadata !DIExpression()) #33, !dbg !2305
  call void @llvm.dbg.value(metadata i32 1, metadata !1265, metadata !DIExpression()) #33, !dbg !2305
  call void @llvm.dbg.value(metadata i8 58, metadata !1266, metadata !DIExpression()) #33, !dbg !2305
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2307
  call void @llvm.dbg.value(metadata i32* %4, metadata !1267, metadata !DIExpression()) #33, !dbg !2305
  call void @llvm.dbg.value(metadata i32 26, metadata !1269, metadata !DIExpression()) #33, !dbg !2305
  %5 = load i32, i32* %4, align 4, !dbg !2308, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %5, metadata !1270, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2305
  %6 = or i32 %5, 67108864, !dbg !2309
  store i32 %6, i32* %4, align 4, !dbg !2309, !tbaa !450
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !2310
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2311
  ret i8* %7, !dbg !2312
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2313 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i64 %1, metadata !2316, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i8* %0, metadata !2245, metadata !DIExpression()) #33, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %1, metadata !2246, metadata !DIExpression()) #33, !dbg !2318
  call void @llvm.dbg.value(metadata i8 58, metadata !2247, metadata !DIExpression()) #33, !dbg !2318
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2320
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2320
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2248, metadata !DIExpression()) #33, !dbg !2321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2322, !tbaa.struct !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1263, metadata !DIExpression()) #33, !dbg !2323
  call void @llvm.dbg.value(metadata i8 58, metadata !1264, metadata !DIExpression()) #33, !dbg !2323
  call void @llvm.dbg.value(metadata i32 1, metadata !1265, metadata !DIExpression()) #33, !dbg !2323
  call void @llvm.dbg.value(metadata i8 58, metadata !1266, metadata !DIExpression()) #33, !dbg !2323
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2325
  call void @llvm.dbg.value(metadata i32* %5, metadata !1267, metadata !DIExpression()) #33, !dbg !2323
  call void @llvm.dbg.value(metadata i32 26, metadata !1269, metadata !DIExpression()) #33, !dbg !2323
  %6 = load i32, i32* %5, align 4, !dbg !2326, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %6, metadata !1270, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2323
  %7 = or i32 %6, 67108864, !dbg !2327
  store i32 %7, i32* %5, align 4, !dbg !2327, !tbaa !450
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2328
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2329
  ret i8* %8, !dbg !2330
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2331 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2333, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32 %1, metadata !2334, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8* %2, metadata !2335, metadata !DIExpression()), !dbg !2337
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2338
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2338
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2336, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 %1, metadata !2143, metadata !DIExpression()) #33, !dbg !2340
  call void @llvm.dbg.value(metadata i32 0, metadata !2148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2340
  %6 = icmp eq i32 %1, 10, !dbg !2342
  br i1 %6, label %7, label %8, !dbg !2343

7:                                                ; preds = %3
  tail call void @abort() #32, !dbg !2344, !noalias !2345
  unreachable, !dbg !2344

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2340
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2348
  store i32 %1, i32* %9, align 8, !dbg !2348, !tbaa.struct !2253
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2348
  %11 = bitcast i32* %10 to i8*, !dbg !2348
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2348
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1263, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 58, metadata !1264, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 1, metadata !1265, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8 58, metadata !1266, metadata !DIExpression()), !dbg !2349
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2351
  call void @llvm.dbg.value(metadata i32* %12, metadata !1267, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 26, metadata !1269, metadata !DIExpression()), !dbg !2349
  %13 = load i32, i32* %12, align 4, !dbg !2352, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %13, metadata !1270, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2349
  %14 = or i32 %13, 67108864, !dbg !2353
  store i32 %14, i32* %12, align 4, !dbg !2353, !tbaa !450
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2354
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2355
  ret i8* %15, !dbg !2356
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2357 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2361, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8* %1, metadata !2362, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8* %2, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8* %3, metadata !2364, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %0, metadata !2366, metadata !DIExpression()) #33, !dbg !2376
  call void @llvm.dbg.value(metadata i8* %1, metadata !2371, metadata !DIExpression()) #33, !dbg !2376
  call void @llvm.dbg.value(metadata i8* %2, metadata !2372, metadata !DIExpression()) #33, !dbg !2376
  call void @llvm.dbg.value(metadata i8* %3, metadata !2373, metadata !DIExpression()) #33, !dbg !2376
  call void @llvm.dbg.value(metadata i64 -1, metadata !2374, metadata !DIExpression()) #33, !dbg !2376
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2378
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2378
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2375, metadata !DIExpression()) #33, !dbg !2379
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2380, !tbaa.struct !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1303, metadata !DIExpression()) #33, !dbg !2381
  call void @llvm.dbg.value(metadata i8* %1, metadata !1304, metadata !DIExpression()) #33, !dbg !2381
  call void @llvm.dbg.value(metadata i8* %2, metadata !1305, metadata !DIExpression()) #33, !dbg !2381
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1303, metadata !DIExpression()) #33, !dbg !2381
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2383
  store i32 10, i32* %7, align 8, !dbg !2384, !tbaa !1245
  %8 = icmp ne i8* %1, null, !dbg !2385
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2386
  br i1 %10, label %12, label %11, !dbg !2386

11:                                               ; preds = %4
  tail call void @abort() #32, !dbg !2387
  unreachable, !dbg !2387

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2388
  store i8* %1, i8** %13, align 8, !dbg !2389, !tbaa !1318
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2390
  store i8* %2, i8** %14, align 8, !dbg !2391, !tbaa !1321
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2392
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2393
  ret i8* %15, !dbg !2394
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2367 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2366, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %1, metadata !2371, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %2, metadata !2372, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %3, metadata !2373, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %4, metadata !2374, metadata !DIExpression()), !dbg !2395
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2396
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2396
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2375, metadata !DIExpression()), !dbg !2397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2398, !tbaa.struct !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1303, metadata !DIExpression()) #33, !dbg !2399
  call void @llvm.dbg.value(metadata i8* %1, metadata !1304, metadata !DIExpression()) #33, !dbg !2399
  call void @llvm.dbg.value(metadata i8* %2, metadata !1305, metadata !DIExpression()) #33, !dbg !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1303, metadata !DIExpression()) #33, !dbg !2399
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2401
  store i32 10, i32* %8, align 8, !dbg !2402, !tbaa !1245
  %9 = icmp ne i8* %1, null, !dbg !2403
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2404
  br i1 %11, label %13, label %12, !dbg !2404

12:                                               ; preds = %5
  tail call void @abort() #32, !dbg !2405
  unreachable, !dbg !2405

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2406
  store i8* %1, i8** %14, align 8, !dbg !2407, !tbaa !1318
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2408
  store i8* %2, i8** %15, align 8, !dbg !2409, !tbaa !1321
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2410
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2411
  ret i8* %16, !dbg !2412
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2413 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2417, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* %1, metadata !2418, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* %2, metadata !2419, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 0, metadata !2361, metadata !DIExpression()) #33, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %0, metadata !2362, metadata !DIExpression()) #33, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %1, metadata !2363, metadata !DIExpression()) #33, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %2, metadata !2364, metadata !DIExpression()) #33, !dbg !2421
  call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression()) #33, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %0, metadata !2371, metadata !DIExpression()) #33, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %1, metadata !2372, metadata !DIExpression()) #33, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %2, metadata !2373, metadata !DIExpression()) #33, !dbg !2423
  call void @llvm.dbg.value(metadata i64 -1, metadata !2374, metadata !DIExpression()) #33, !dbg !2423
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2425
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2425
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2375, metadata !DIExpression()) #33, !dbg !2426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2427, !tbaa.struct !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1303, metadata !DIExpression()) #33, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %0, metadata !1304, metadata !DIExpression()) #33, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %1, metadata !1305, metadata !DIExpression()) #33, !dbg !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1303, metadata !DIExpression()) #33, !dbg !2428
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2430
  store i32 10, i32* %6, align 8, !dbg !2431, !tbaa !1245
  %7 = icmp ne i8* %0, null, !dbg !2432
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2433
  br i1 %9, label %11, label %10, !dbg !2433

10:                                               ; preds = %3
  tail call void @abort() #32, !dbg !2434
  unreachable, !dbg !2434

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2435
  store i8* %0, i8** %12, align 8, !dbg !2436, !tbaa !1318
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2437
  store i8* %1, i8** %13, align 8, !dbg !2438, !tbaa !1321
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2439
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2440
  ret i8* %14, !dbg !2441
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2442 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2446, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8* %1, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8* %2, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i64 %3, metadata !2449, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression()) #33, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %0, metadata !2371, metadata !DIExpression()) #33, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %1, metadata !2372, metadata !DIExpression()) #33, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %2, metadata !2373, metadata !DIExpression()) #33, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %3, metadata !2374, metadata !DIExpression()) #33, !dbg !2451
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2453
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2453
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2375, metadata !DIExpression()) #33, !dbg !2454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2455, !tbaa.struct !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1303, metadata !DIExpression()) #33, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %0, metadata !1304, metadata !DIExpression()) #33, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %1, metadata !1305, metadata !DIExpression()) #33, !dbg !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1303, metadata !DIExpression()) #33, !dbg !2456
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2458
  store i32 10, i32* %7, align 8, !dbg !2459, !tbaa !1245
  %8 = icmp ne i8* %0, null, !dbg !2460
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2461
  br i1 %10, label %12, label %11, !dbg !2461

11:                                               ; preds = %4
  tail call void @abort() #32, !dbg !2462
  unreachable, !dbg !2462

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2463
  store i8* %0, i8** %13, align 8, !dbg !2464, !tbaa !1318
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2465
  store i8* %1, i8** %14, align 8, !dbg !2466, !tbaa !1321
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2467
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2468
  ret i8* %15, !dbg !2469
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %1, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %2, metadata !2476, metadata !DIExpression()), !dbg !2477
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2478
  ret i8* %4, !dbg !2479
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2480 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2484, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %1, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 0, metadata !2474, metadata !DIExpression()) #33, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()) #33, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %1, metadata !2476, metadata !DIExpression()) #33, !dbg !2487
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2489
  ret i8* %3, !dbg !2490
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2491 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2495, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* %1, metadata !2496, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %0, metadata !2474, metadata !DIExpression()) #33, !dbg !2498
  call void @llvm.dbg.value(metadata i8* %1, metadata !2475, metadata !DIExpression()) #33, !dbg !2498
  call void @llvm.dbg.value(metadata i64 -1, metadata !2476, metadata !DIExpression()) #33, !dbg !2498
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2500
  ret i8* %3, !dbg !2501
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2502 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 0, metadata !2495, metadata !DIExpression()) #33, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %0, metadata !2496, metadata !DIExpression()) #33, !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !2474, metadata !DIExpression()) #33, !dbg !2510
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()) #33, !dbg !2510
  call void @llvm.dbg.value(metadata i64 -1, metadata !2476, metadata !DIExpression()) #33, !dbg !2510
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2512
  ret i8* %2, !dbg !2513
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2514 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2553, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8* %1, metadata !2554, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8* %2, metadata !2555, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8* %3, metadata !2556, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8** %4, metadata !2557, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i64 %5, metadata !2558, metadata !DIExpression()), !dbg !2559
  %7 = icmp eq i8* %1, null, !dbg !2560
  br i1 %7, label %10, label %8, !dbg !2562

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !2563
  br label %12, !dbg !2563

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !2564
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.81, i64 0, i64 0), i32 noundef 5) #33, !dbg !2565
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !2565
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.82, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2566
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.83, i64 0, i64 0), i32 noundef 5) #33, !dbg !2567
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.84, i64 0, i64 0)) #33, !dbg !2567
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.82, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2568
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
  ], !dbg !2569

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.85, i64 0, i64 0), i32 noundef 5) #33, !dbg !2570
  %21 = load i8*, i8** %4, align 8, !dbg !2570, !tbaa !421
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !2570
  br label %147, !dbg !2572

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.86, i64 0, i64 0), i32 noundef 5) #33, !dbg !2573
  %25 = load i8*, i8** %4, align 8, !dbg !2573, !tbaa !421
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2573
  %27 = load i8*, i8** %26, align 8, !dbg !2573, !tbaa !421
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !2573
  br label %147, !dbg !2574

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.87, i64 0, i64 0), i32 noundef 5) #33, !dbg !2575
  %31 = load i8*, i8** %4, align 8, !dbg !2575, !tbaa !421
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2575
  %33 = load i8*, i8** %32, align 8, !dbg !2575, !tbaa !421
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2575
  %35 = load i8*, i8** %34, align 8, !dbg !2575, !tbaa !421
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !2575
  br label %147, !dbg !2576

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.88, i64 0, i64 0), i32 noundef 5) #33, !dbg !2577
  %39 = load i8*, i8** %4, align 8, !dbg !2577, !tbaa !421
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2577
  %41 = load i8*, i8** %40, align 8, !dbg !2577, !tbaa !421
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2577
  %43 = load i8*, i8** %42, align 8, !dbg !2577, !tbaa !421
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2577
  %45 = load i8*, i8** %44, align 8, !dbg !2577, !tbaa !421
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !2577
  br label %147, !dbg !2578

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.89, i64 0, i64 0), i32 noundef 5) #33, !dbg !2579
  %49 = load i8*, i8** %4, align 8, !dbg !2579, !tbaa !421
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2579
  %51 = load i8*, i8** %50, align 8, !dbg !2579, !tbaa !421
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2579
  %53 = load i8*, i8** %52, align 8, !dbg !2579, !tbaa !421
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2579
  %55 = load i8*, i8** %54, align 8, !dbg !2579, !tbaa !421
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2579
  %57 = load i8*, i8** %56, align 8, !dbg !2579, !tbaa !421
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !2579
  br label %147, !dbg !2580

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.90, i64 0, i64 0), i32 noundef 5) #33, !dbg !2581
  %61 = load i8*, i8** %4, align 8, !dbg !2581, !tbaa !421
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2581
  %63 = load i8*, i8** %62, align 8, !dbg !2581, !tbaa !421
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2581
  %65 = load i8*, i8** %64, align 8, !dbg !2581, !tbaa !421
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2581
  %67 = load i8*, i8** %66, align 8, !dbg !2581, !tbaa !421
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2581
  %69 = load i8*, i8** %68, align 8, !dbg !2581, !tbaa !421
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2581
  %71 = load i8*, i8** %70, align 8, !dbg !2581, !tbaa !421
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !2581
  br label %147, !dbg !2582

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.91, i64 0, i64 0), i32 noundef 5) #33, !dbg !2583
  %75 = load i8*, i8** %4, align 8, !dbg !2583, !tbaa !421
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2583
  %77 = load i8*, i8** %76, align 8, !dbg !2583, !tbaa !421
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2583
  %79 = load i8*, i8** %78, align 8, !dbg !2583, !tbaa !421
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2583
  %81 = load i8*, i8** %80, align 8, !dbg !2583, !tbaa !421
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2583
  %83 = load i8*, i8** %82, align 8, !dbg !2583, !tbaa !421
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2583
  %85 = load i8*, i8** %84, align 8, !dbg !2583, !tbaa !421
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2583
  %87 = load i8*, i8** %86, align 8, !dbg !2583, !tbaa !421
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !2583
  br label %147, !dbg !2584

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.92, i64 0, i64 0), i32 noundef 5) #33, !dbg !2585
  %91 = load i8*, i8** %4, align 8, !dbg !2585, !tbaa !421
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2585
  %93 = load i8*, i8** %92, align 8, !dbg !2585, !tbaa !421
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2585
  %95 = load i8*, i8** %94, align 8, !dbg !2585, !tbaa !421
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2585
  %97 = load i8*, i8** %96, align 8, !dbg !2585, !tbaa !421
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2585
  %99 = load i8*, i8** %98, align 8, !dbg !2585, !tbaa !421
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2585
  %101 = load i8*, i8** %100, align 8, !dbg !2585, !tbaa !421
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2585
  %103 = load i8*, i8** %102, align 8, !dbg !2585, !tbaa !421
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2585
  %105 = load i8*, i8** %104, align 8, !dbg !2585, !tbaa !421
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !2585
  br label %147, !dbg !2586

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.93, i64 0, i64 0), i32 noundef 5) #33, !dbg !2587
  %109 = load i8*, i8** %4, align 8, !dbg !2587, !tbaa !421
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2587
  %111 = load i8*, i8** %110, align 8, !dbg !2587, !tbaa !421
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2587
  %113 = load i8*, i8** %112, align 8, !dbg !2587, !tbaa !421
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2587
  %115 = load i8*, i8** %114, align 8, !dbg !2587, !tbaa !421
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2587
  %117 = load i8*, i8** %116, align 8, !dbg !2587, !tbaa !421
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2587
  %119 = load i8*, i8** %118, align 8, !dbg !2587, !tbaa !421
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2587
  %121 = load i8*, i8** %120, align 8, !dbg !2587, !tbaa !421
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2587
  %123 = load i8*, i8** %122, align 8, !dbg !2587, !tbaa !421
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2587
  %125 = load i8*, i8** %124, align 8, !dbg !2587, !tbaa !421
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !2587
  br label %147, !dbg !2588

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.94, i64 0, i64 0), i32 noundef 5) #33, !dbg !2589
  %129 = load i8*, i8** %4, align 8, !dbg !2589, !tbaa !421
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2589
  %131 = load i8*, i8** %130, align 8, !dbg !2589, !tbaa !421
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2589
  %133 = load i8*, i8** %132, align 8, !dbg !2589, !tbaa !421
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2589
  %135 = load i8*, i8** %134, align 8, !dbg !2589, !tbaa !421
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2589
  %137 = load i8*, i8** %136, align 8, !dbg !2589, !tbaa !421
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2589
  %139 = load i8*, i8** %138, align 8, !dbg !2589, !tbaa !421
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2589
  %141 = load i8*, i8** %140, align 8, !dbg !2589, !tbaa !421
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2589
  %143 = load i8*, i8** %142, align 8, !dbg !2589, !tbaa !421
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2589
  %145 = load i8*, i8** %144, align 8, !dbg !2589, !tbaa !421
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !2589
  br label %147, !dbg !2590

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2591
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2592 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2596, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %1, metadata !2597, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %2, metadata !2598, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %3, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8** %4, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i64 0, metadata !2601, metadata !DIExpression()), !dbg !2602
  br label %6, !dbg !2603

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2605
  call void @llvm.dbg.value(metadata i64 %7, metadata !2601, metadata !DIExpression()), !dbg !2602
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2606
  %9 = load i8*, i8** %8, align 8, !dbg !2606, !tbaa !421
  %10 = icmp eq i8* %9, null, !dbg !2608
  %11 = add i64 %7, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %11, metadata !2601, metadata !DIExpression()), !dbg !2602
  br i1 %10, label %12, label %6, !dbg !2608, !llvm.loop !2610

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2612
  ret void, !dbg !2613
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2614 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2629, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %1, metadata !2630, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %2, metadata !2631, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %3, metadata !2632, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2633, metadata !DIExpression()), !dbg !2638
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2639
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2639
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2635, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2637
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2637
  %11 = load i32, i32* %8, align 8, !dbg !2641
  %12 = icmp sgt i32 %11, -1, !dbg !2641
  br i1 %12, label %20, label %13, !dbg !2641

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2641
  store i32 %14, i32* %8, align 8, !dbg !2641
  %15 = icmp ult i32 %11, -7, !dbg !2641
  br i1 %15, label %16, label %20, !dbg !2641

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2641
  %18 = sext i32 %11 to i64, !dbg !2641
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2641
  br label %24, !dbg !2641

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2641
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2641
  store i8* %23, i8** %10, align 8, !dbg !2641
  br label %24, !dbg !2641

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2641
  %28 = load i8*, i8** %27, align 8, !dbg !2641
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2644
  store i8* %28, i8** %29, align 8, !dbg !2645, !tbaa !421
  %30 = icmp eq i8* %28, null, !dbg !2646
  br i1 %30, label %210, label %31, !dbg !2647

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 1, metadata !2634, metadata !DIExpression()), !dbg !2637
  %32 = icmp sgt i32 %25, -1, !dbg !2641
  br i1 %32, label %40, label %33, !dbg !2641

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2641
  store i32 %34, i32* %8, align 8, !dbg !2641
  %35 = icmp ult i32 %25, -7, !dbg !2641
  br i1 %35, label %36, label %40, !dbg !2641

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2641
  %38 = sext i32 %25 to i64, !dbg !2641
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2641
  br label %44, !dbg !2641

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2641
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2641
  store i8* %43, i8** %10, align 8, !dbg !2641
  br label %44, !dbg !2641

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2641
  %48 = load i8*, i8** %47, align 8, !dbg !2641
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2644
  store i8* %48, i8** %49, align 8, !dbg !2645, !tbaa !421
  %50 = icmp eq i8* %48, null, !dbg !2646
  br i1 %50, label %210, label %51, !dbg !2647

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 2, metadata !2634, metadata !DIExpression()), !dbg !2637
  %52 = icmp sgt i32 %45, -1, !dbg !2641
  br i1 %52, label %60, label %53, !dbg !2641

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2641
  store i32 %54, i32* %8, align 8, !dbg !2641
  %55 = icmp ult i32 %45, -7, !dbg !2641
  br i1 %55, label %56, label %60, !dbg !2641

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2641
  %58 = sext i32 %45 to i64, !dbg !2641
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2641
  br label %64, !dbg !2641

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2641
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2641
  store i8* %63, i8** %10, align 8, !dbg !2641
  br label %64, !dbg !2641

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2641
  %68 = load i8*, i8** %67, align 8, !dbg !2641
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2644
  store i8* %68, i8** %69, align 8, !dbg !2645, !tbaa !421
  %70 = icmp eq i8* %68, null, !dbg !2646
  br i1 %70, label %210, label %71, !dbg !2647

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 3, metadata !2634, metadata !DIExpression()), !dbg !2637
  %72 = icmp sgt i32 %65, -1, !dbg !2641
  br i1 %72, label %80, label %73, !dbg !2641

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2641
  store i32 %74, i32* %8, align 8, !dbg !2641
  %75 = icmp ult i32 %65, -7, !dbg !2641
  br i1 %75, label %76, label %80, !dbg !2641

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2641
  %78 = sext i32 %65 to i64, !dbg !2641
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2641
  br label %84, !dbg !2641

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2641
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2641
  store i8* %83, i8** %10, align 8, !dbg !2641
  br label %84, !dbg !2641

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2641
  %88 = load i8*, i8** %87, align 8, !dbg !2641
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2644
  store i8* %88, i8** %89, align 8, !dbg !2645, !tbaa !421
  %90 = icmp eq i8* %88, null, !dbg !2646
  br i1 %90, label %210, label %91, !dbg !2647

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 4, metadata !2634, metadata !DIExpression()), !dbg !2637
  %92 = icmp sgt i32 %85, -1, !dbg !2641
  br i1 %92, label %100, label %93, !dbg !2641

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2641
  store i32 %94, i32* %8, align 8, !dbg !2641
  %95 = icmp ult i32 %85, -7, !dbg !2641
  br i1 %95, label %96, label %100, !dbg !2641

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2641
  %98 = sext i32 %85 to i64, !dbg !2641
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2641
  br label %104, !dbg !2641

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2641
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2641
  store i8* %103, i8** %10, align 8, !dbg !2641
  br label %104, !dbg !2641

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2641
  %108 = load i8*, i8** %107, align 8, !dbg !2641
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2644
  store i8* %108, i8** %109, align 8, !dbg !2645, !tbaa !421
  %110 = icmp eq i8* %108, null, !dbg !2646
  br i1 %110, label %210, label %111, !dbg !2647

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 5, metadata !2634, metadata !DIExpression()), !dbg !2637
  %112 = icmp sgt i32 %105, -1, !dbg !2641
  br i1 %112, label %120, label %113, !dbg !2641

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2641
  store i32 %114, i32* %8, align 8, !dbg !2641
  %115 = icmp ult i32 %105, -7, !dbg !2641
  br i1 %115, label %116, label %120, !dbg !2641

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2641
  %118 = sext i32 %105 to i64, !dbg !2641
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2641
  br label %124, !dbg !2641

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2641
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2641
  store i8* %123, i8** %10, align 8, !dbg !2641
  br label %124, !dbg !2641

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2641
  %128 = load i8*, i8** %127, align 8, !dbg !2641
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2644
  store i8* %128, i8** %129, align 8, !dbg !2645, !tbaa !421
  %130 = icmp eq i8* %128, null, !dbg !2646
  br i1 %130, label %210, label %131, !dbg !2647

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 6, metadata !2634, metadata !DIExpression()), !dbg !2637
  %132 = icmp sgt i32 %125, -1, !dbg !2641
  br i1 %132, label %140, label %133, !dbg !2641

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2641
  store i32 %134, i32* %8, align 8, !dbg !2641
  %135 = icmp ult i32 %125, -7, !dbg !2641
  br i1 %135, label %136, label %140, !dbg !2641

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2641
  %138 = sext i32 %125 to i64, !dbg !2641
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2641
  br label %144, !dbg !2641

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2641
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2641
  store i8* %143, i8** %10, align 8, !dbg !2641
  br label %144, !dbg !2641

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2641
  %148 = load i8*, i8** %147, align 8, !dbg !2641
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2644
  store i8* %148, i8** %149, align 8, !dbg !2645, !tbaa !421
  %150 = icmp eq i8* %148, null, !dbg !2646
  br i1 %150, label %210, label %151, !dbg !2647

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 7, metadata !2634, metadata !DIExpression()), !dbg !2637
  %152 = icmp sgt i32 %145, -1, !dbg !2641
  br i1 %152, label %160, label %153, !dbg !2641

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2641
  store i32 %154, i32* %8, align 8, !dbg !2641
  %155 = icmp ult i32 %145, -7, !dbg !2641
  br i1 %155, label %156, label %160, !dbg !2641

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2641
  %158 = sext i32 %145 to i64, !dbg !2641
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2641
  br label %164, !dbg !2641

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2641
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2641
  store i8* %163, i8** %10, align 8, !dbg !2641
  br label %164, !dbg !2641

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2641
  %168 = load i8*, i8** %167, align 8, !dbg !2641
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2644
  store i8* %168, i8** %169, align 8, !dbg !2645, !tbaa !421
  %170 = icmp eq i8* %168, null, !dbg !2646
  br i1 %170, label %210, label %171, !dbg !2647

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 8, metadata !2634, metadata !DIExpression()), !dbg !2637
  %172 = icmp sgt i32 %165, -1, !dbg !2641
  br i1 %172, label %180, label %173, !dbg !2641

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2641
  store i32 %174, i32* %8, align 8, !dbg !2641
  %175 = icmp ult i32 %165, -7, !dbg !2641
  br i1 %175, label %176, label %180, !dbg !2641

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2641
  %178 = sext i32 %165 to i64, !dbg !2641
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2641
  br label %184, !dbg !2641

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2641
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2641
  store i8* %183, i8** %10, align 8, !dbg !2641
  br label %184, !dbg !2641

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2641
  %188 = load i8*, i8** %187, align 8, !dbg !2641
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2644
  store i8* %188, i8** %189, align 8, !dbg !2645, !tbaa !421
  %190 = icmp eq i8* %188, null, !dbg !2646
  br i1 %190, label %210, label %191, !dbg !2647

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 9, metadata !2634, metadata !DIExpression()), !dbg !2637
  %192 = icmp sgt i32 %185, -1, !dbg !2641
  br i1 %192, label %200, label %193, !dbg !2641

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2641
  store i32 %194, i32* %8, align 8, !dbg !2641
  %195 = icmp ult i32 %185, -7, !dbg !2641
  br i1 %195, label %196, label %200, !dbg !2641

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2641
  %198 = sext i32 %185 to i64, !dbg !2641
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2641
  br label %203, !dbg !2641

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2641
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2641
  store i8* %202, i8** %10, align 8, !dbg !2641
  br label %203, !dbg !2641

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2641
  %206 = load i8*, i8** %205, align 8, !dbg !2641
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2644
  store i8* %206, i8** %207, align 8, !dbg !2645, !tbaa !421
  %208 = icmp eq i8* %206, null, !dbg !2646
  %209 = select i1 %208, i64 9, i64 10, !dbg !2647
  br label %210, !dbg !2647

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2648
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2649
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2650
  ret void, !dbg !2650
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2651 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2655, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !2656, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %2, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %3, metadata !2658, metadata !DIExpression()), !dbg !2660
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2661
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2661
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2659, metadata !DIExpression()), !dbg !2662
  call void @llvm.va_start(i8* nonnull %7), !dbg !2663
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2664
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2664, !tbaa.struct !951
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2664
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2664
  call void @llvm.va_end(i8* nonnull %7), !dbg !2665
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2666
  ret void, !dbg !2666
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2667 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2668, !tbaa !421
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.82, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2668
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.99, i64 0, i64 0), i32 noundef 5) #33, !dbg !2669
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.100, i64 0, i64 0)) #33, !dbg !2669
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.101, i64 0, i64 0), i32 noundef 5) #33, !dbg !2670
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.103, i64 0, i64 0)) #33, !dbg !2670
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.104, i64 0, i64 0), i32 noundef 5) #33, !dbg !2671
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.105, i64 0, i64 0)) #33, !dbg !2671
  ret void, !dbg !2672
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2673 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %1, metadata !2679, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %2, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8* %0, metadata !2682, metadata !DIExpression()) #33, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %1, metadata !2685, metadata !DIExpression()) #33, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %2, metadata !2686, metadata !DIExpression()) #33, !dbg !2687
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %4, metadata !2690, metadata !DIExpression()) #33, !dbg !2695
  %5 = icmp eq i8* %4, null, !dbg !2697
  br i1 %5, label %6, label %7, !dbg !2699

6:                                                ; preds = %3
  tail call void @xalloc_die() #32, !dbg !2700
  unreachable, !dbg !2700

7:                                                ; preds = %3
  ret i8* %4, !dbg !2701
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2682, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %1, metadata !2685, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %2, metadata !2686, metadata !DIExpression()), !dbg !2702
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2703
  call void @llvm.dbg.value(metadata i8* %4, metadata !2690, metadata !DIExpression()) #33, !dbg !2704
  %5 = icmp eq i8* %4, null, !dbg !2706
  br i1 %5, label %6, label %7, !dbg !2707

6:                                                ; preds = %3
  tail call void @xalloc_die() #32, !dbg !2708
  unreachable, !dbg !2708

7:                                                ; preds = %3
  ret i8* %4, !dbg !2709
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2710 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2714, metadata !DIExpression()), !dbg !2715
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2716
  call void @llvm.dbg.value(metadata i8* %2, metadata !2690, metadata !DIExpression()) #33, !dbg !2717
  %3 = icmp eq i8* %2, null, !dbg !2719
  br i1 %3, label %4, label %5, !dbg !2720

4:                                                ; preds = %1
  tail call void @xalloc_die() #32, !dbg !2721
  unreachable, !dbg !2721

5:                                                ; preds = %1
  ret i8* %2, !dbg !2722
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2723 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2727, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %0, metadata !2729, metadata !DIExpression()) #33, !dbg !2733
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %2, metadata !2690, metadata !DIExpression()) #33, !dbg !2736
  %3 = icmp eq i8* %2, null, !dbg !2738
  br i1 %3, label %4, label %5, !dbg !2739

4:                                                ; preds = %1
  tail call void @xalloc_die() #32, !dbg !2740
  unreachable, !dbg !2740

5:                                                ; preds = %1
  ret i8* %2, !dbg !2741
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2742 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %0, metadata !2714, metadata !DIExpression()) #33, !dbg !2748
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2750
  call void @llvm.dbg.value(metadata i8* %2, metadata !2690, metadata !DIExpression()) #33, !dbg !2751
  %3 = icmp eq i8* %2, null, !dbg !2753
  br i1 %3, label %4, label %5, !dbg !2754

4:                                                ; preds = %1
  tail call void @xalloc_die() #32, !dbg !2755
  unreachable, !dbg !2755

5:                                                ; preds = %1
  ret i8* %2, !dbg !2756
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i64 %1, metadata !2762, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8* %0, metadata !2764, metadata !DIExpression()) #33, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %1, metadata !2768, metadata !DIExpression()) #33, !dbg !2769
  %3 = icmp eq i64 %1, 0, !dbg !2771
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2771
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !2772
  call void @llvm.dbg.value(metadata i8* %5, metadata !2690, metadata !DIExpression()) #33, !dbg !2773
  %6 = icmp eq i8* %5, null, !dbg !2775
  br i1 %6, label %7, label %8, !dbg !2776

7:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !2777
  unreachable, !dbg !2777

8:                                                ; preds = %2
  ret i8* %5, !dbg !2778
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2779 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2783, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i64 %1, metadata !2784, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %0, metadata !2786, metadata !DIExpression()) #33, !dbg !2790
  call void @llvm.dbg.value(metadata i64 %1, metadata !2789, metadata !DIExpression()) #33, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %0, metadata !2764, metadata !DIExpression()) #33, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %1, metadata !2768, metadata !DIExpression()) #33, !dbg !2792
  %3 = icmp eq i64 %1, 0, !dbg !2794
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2794
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !2795
  call void @llvm.dbg.value(metadata i8* %5, metadata !2690, metadata !DIExpression()) #33, !dbg !2796
  %6 = icmp eq i8* %5, null, !dbg !2798
  br i1 %6, label %7, label %8, !dbg !2799

7:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !2800
  unreachable, !dbg !2800

8:                                                ; preds = %2
  ret i8* %5, !dbg !2801
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2802 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %1, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %2, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()) #33, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %1, metadata !2813, metadata !DIExpression()) #33, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %2, metadata !2814, metadata !DIExpression()) #33, !dbg !2815
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %4, metadata !2690, metadata !DIExpression()) #33, !dbg !2818
  %5 = icmp eq i8* %4, null, !dbg !2820
  br i1 %5, label %6, label %7, !dbg !2821

6:                                                ; preds = %3
  tail call void @xalloc_die() #32, !dbg !2822
  unreachable, !dbg !2822

7:                                                ; preds = %3
  ret i8* %4, !dbg !2823
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2824 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i64 %1, metadata !2829, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8* null, metadata !2682, metadata !DIExpression()) #33, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %0, metadata !2685, metadata !DIExpression()) #33, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %1, metadata !2686, metadata !DIExpression()) #33, !dbg !2831
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %3, metadata !2690, metadata !DIExpression()) #33, !dbg !2834
  %4 = icmp eq i8* %3, null, !dbg !2836
  br i1 %4, label %5, label %6, !dbg !2837

5:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !2838
  unreachable, !dbg !2838

6:                                                ; preds = %2
  ret i8* %3, !dbg !2839
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2840 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2844, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %1, metadata !2845, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* null, metadata !2806, metadata !DIExpression()) #33, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %0, metadata !2807, metadata !DIExpression()) #33, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %1, metadata !2808, metadata !DIExpression()) #33, !dbg !2847
  call void @llvm.dbg.value(metadata i8* null, metadata !2810, metadata !DIExpression()) #33, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %0, metadata !2813, metadata !DIExpression()) #33, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %1, metadata !2814, metadata !DIExpression()) #33, !dbg !2849
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !2851
  call void @llvm.dbg.value(metadata i8* %3, metadata !2690, metadata !DIExpression()) #33, !dbg !2852
  %4 = icmp eq i8* %3, null, !dbg !2854
  br i1 %4, label %5, label %6, !dbg !2855

5:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !2856
  unreachable, !dbg !2856

6:                                                ; preds = %2
  ret i8* %3, !dbg !2857
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64* %1, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %0, metadata !354, metadata !DIExpression()) #33, !dbg !2865
  call void @llvm.dbg.value(metadata i64* %1, metadata !355, metadata !DIExpression()) #33, !dbg !2865
  call void @llvm.dbg.value(metadata i64 1, metadata !356, metadata !DIExpression()) #33, !dbg !2865
  %3 = load i64, i64* %1, align 8, !dbg !2867, !tbaa !1963
  call void @llvm.dbg.value(metadata i64 %3, metadata !357, metadata !DIExpression()) #33, !dbg !2865
  %4 = icmp eq i8* %0, null, !dbg !2868
  br i1 %4, label %5, label %8, !dbg !2870

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2871
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2874
  br label %15, !dbg !2874

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2875
  %10 = add nuw i64 %9, 1, !dbg !2875
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !2875
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2875
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %13, metadata !357, metadata !DIExpression()) #33, !dbg !2865
  br i1 %12, label %14, label %15, !dbg !2878

14:                                               ; preds = %8
  tail call void @xalloc_die() #32, !dbg !2879
  unreachable, !dbg !2879

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2865
  call void @llvm.dbg.value(metadata i64 %16, metadata !357, metadata !DIExpression()) #33, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %0, metadata !2682, metadata !DIExpression()) #33, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %16, metadata !2685, metadata !DIExpression()) #33, !dbg !2880
  call void @llvm.dbg.value(metadata i64 1, metadata !2686, metadata !DIExpression()) #33, !dbg !2880
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !2882
  call void @llvm.dbg.value(metadata i8* %17, metadata !2690, metadata !DIExpression()) #33, !dbg !2883
  %18 = icmp eq i8* %17, null, !dbg !2885
  br i1 %18, label %19, label %20, !dbg !2886

19:                                               ; preds = %15
  tail call void @xalloc_die() #32, !dbg !2887
  unreachable, !dbg !2887

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !354, metadata !DIExpression()) #33, !dbg !2865
  store i64 %16, i64* %1, align 8, !dbg !2888, !tbaa !1963
  ret i8* %17, !dbg !2889
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !349 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !354, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64* %1, metadata !355, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %2, metadata !356, metadata !DIExpression()), !dbg !2890
  %4 = load i64, i64* %1, align 8, !dbg !2891, !tbaa !1963
  call void @llvm.dbg.value(metadata i64 %4, metadata !357, metadata !DIExpression()), !dbg !2890
  %5 = icmp eq i8* %0, null, !dbg !2892
  br i1 %5, label %6, label %13, !dbg !2893

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2894
  br i1 %7, label %8, label %20, !dbg !2895

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %9, metadata !357, metadata !DIExpression()), !dbg !2890
  %10 = icmp ugt i64 %2, 128, !dbg !2898
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %12, metadata !357, metadata !DIExpression()), !dbg !2890
  br label %20, !dbg !2900

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2901
  %15 = add nuw i64 %14, 1, !dbg !2901
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2901
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2901
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %18, metadata !357, metadata !DIExpression()), !dbg !2890
  br i1 %17, label %19, label %20, !dbg !2902

19:                                               ; preds = %13
  tail call void @xalloc_die() #32, !dbg !2903
  unreachable, !dbg !2903

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2890
  call void @llvm.dbg.value(metadata i64 %21, metadata !357, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %0, metadata !2682, metadata !DIExpression()) #33, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %21, metadata !2685, metadata !DIExpression()) #33, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %2, metadata !2686, metadata !DIExpression()) #33, !dbg !2904
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !2906
  call void @llvm.dbg.value(metadata i8* %22, metadata !2690, metadata !DIExpression()) #33, !dbg !2907
  %23 = icmp eq i8* %22, null, !dbg !2909
  br i1 %23, label %24, label %25, !dbg !2910

24:                                               ; preds = %20
  tail call void @xalloc_die() #32, !dbg !2911
  unreachable, !dbg !2911

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !354, metadata !DIExpression()), !dbg !2890
  store i64 %21, i64* %1, align 8, !dbg !2912, !tbaa !1963
  ret i8* %22, !dbg !2913
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64* %1, metadata !370, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %2, metadata !371, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %3, metadata !372, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %4, metadata !373, metadata !DIExpression()), !dbg !2914
  %6 = load i64, i64* %1, align 8, !dbg !2915, !tbaa !1963
  call void @llvm.dbg.value(metadata i64 %6, metadata !374, metadata !DIExpression()), !dbg !2914
  %7 = ashr i64 %6, 1, !dbg !2916
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2916
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2916
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %10, metadata !375, metadata !DIExpression()), !dbg !2914
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %11, metadata !375, metadata !DIExpression()), !dbg !2914
  %12 = icmp sgt i64 %3, -1, !dbg !2919
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2921
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %15, metadata !375, metadata !DIExpression()), !dbg !2914
  %16 = icmp slt i64 %4, 0, !dbg !2922
  br i1 %16, label %17, label %30, !dbg !2922

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2922
  br i1 %18, label %19, label %24, !dbg !2922

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2922
  %21 = udiv i64 9223372036854775807, %20, !dbg !2922
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2922
  br i1 %23, label %46, label %43, !dbg !2922

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2922
  br i1 %25, label %43, label %26, !dbg !2922

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2922
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2922
  %29 = icmp ult i64 %28, %15, !dbg !2922
  br i1 %29, label %46, label %43, !dbg !2922

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2922
  br i1 %31, label %43, label %32, !dbg !2922

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2922
  br i1 %33, label %34, label %40, !dbg !2922

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2922
  br i1 %35, label %43, label %36, !dbg !2922

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2922
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2922
  %39 = icmp ult i64 %38, %4, !dbg !2922
  br i1 %39, label %46, label %43, !dbg !2922

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2922
  %42 = icmp ult i64 %41, %15, !dbg !2922
  br i1 %42, label %46, label %43, !dbg !2922

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !376, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2914
  %44 = mul i64 %15, %4, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %44, metadata !376, metadata !DIExpression()), !dbg !2914
  %45 = icmp slt i64 %44, 128, !dbg !2922
  br i1 %45, label %46, label %52, !dbg !2922

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !377, metadata !DIExpression()), !dbg !2914
  %48 = sdiv i64 %47, %4, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %48, metadata !375, metadata !DIExpression()), !dbg !2914
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %51, metadata !376, metadata !DIExpression()), !dbg !2914
  br label %52, !dbg !2927

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2914
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2914
  call void @llvm.dbg.value(metadata i64 %54, metadata !376, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %53, metadata !375, metadata !DIExpression()), !dbg !2914
  %55 = icmp eq i8* %0, null, !dbg !2928
  br i1 %55, label %56, label %57, !dbg !2930

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2931, !tbaa !1963
  br label %57, !dbg !2932

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2933
  %59 = icmp slt i64 %58, %2, !dbg !2935
  br i1 %59, label %60, label %97, !dbg !2936

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2937
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2937
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %63, metadata !375, metadata !DIExpression()), !dbg !2914
  br i1 %62, label %96, label %64, !dbg !2938

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2939
  br i1 %66, label %96, label %67, !dbg !2939

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2940

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2940
  br i1 %69, label %70, label %75, !dbg !2940

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2940
  %72 = udiv i64 9223372036854775807, %71, !dbg !2940
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2940
  br i1 %74, label %96, label %94, !dbg !2940

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2940
  br i1 %76, label %94, label %77, !dbg !2940

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2940
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2940
  %80 = icmp ult i64 %79, %63, !dbg !2940
  br i1 %80, label %96, label %94, !dbg !2940

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2940
  br i1 %82, label %94, label %83, !dbg !2940

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2940
  br i1 %84, label %85, label %91, !dbg !2940

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2940
  br i1 %86, label %94, label %87, !dbg !2940

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2940
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2940
  %90 = icmp ult i64 %89, %4, !dbg !2940
  br i1 %90, label %96, label %94, !dbg !2940

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2940
  %93 = icmp ult i64 %92, %63, !dbg !2940
  br i1 %93, label %96, label %94, !dbg !2940

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !376, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2914
  %95 = mul i64 %63, %4, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %95, metadata !376, metadata !DIExpression()), !dbg !2914
  br label %97, !dbg !2941

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #32, !dbg !2942
  unreachable, !dbg !2942

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2914
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2914
  call void @llvm.dbg.value(metadata i64 %99, metadata !376, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %98, metadata !375, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8* %0, metadata !2761, metadata !DIExpression()) #33, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %99, metadata !2762, metadata !DIExpression()) #33, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %0, metadata !2764, metadata !DIExpression()) #33, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %99, metadata !2768, metadata !DIExpression()) #33, !dbg !2945
  %100 = icmp eq i64 %99, 0, !dbg !2947
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2947
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %102, metadata !2690, metadata !DIExpression()) #33, !dbg !2949
  %103 = icmp eq i8* %102, null, !dbg !2951
  br i1 %103, label %104, label %105, !dbg !2952

104:                                              ; preds = %97
  tail call void @xalloc_die() #32, !dbg !2953
  unreachable, !dbg !2953

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !369, metadata !DIExpression()), !dbg !2914
  store i64 %98, i64* %1, align 8, !dbg !2954, !tbaa !1963
  ret i8* %102, !dbg !2955
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2956 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2958, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %0, metadata !2960, metadata !DIExpression()) #33, !dbg !2964
  call void @llvm.dbg.value(metadata i64 1, metadata !2963, metadata !DIExpression()) #33, !dbg !2964
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %2, metadata !2690, metadata !DIExpression()) #33, !dbg !2967
  %3 = icmp eq i8* %2, null, !dbg !2969
  br i1 %3, label %4, label %5, !dbg !2970

4:                                                ; preds = %1
  tail call void @xalloc_die() #32, !dbg !2971
  unreachable, !dbg !2971

5:                                                ; preds = %1
  ret i8* %2, !dbg !2972
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2961 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2960, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %1, metadata !2963, metadata !DIExpression()), !dbg !2973
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !2974
  call void @llvm.dbg.value(metadata i8* %3, metadata !2690, metadata !DIExpression()) #33, !dbg !2975
  %4 = icmp eq i8* %3, null, !dbg !2977
  br i1 %4, label %5, label %6, !dbg !2978

5:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !2979
  unreachable, !dbg !2979

6:                                                ; preds = %2
  ret i8* %3, !dbg !2980
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2981 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2983, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()) #33, !dbg !2989
  call void @llvm.dbg.value(metadata i64 1, metadata !2988, metadata !DIExpression()) #33, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %0, metadata !2991, metadata !DIExpression()) #33, !dbg !2995
  call void @llvm.dbg.value(metadata i64 1, metadata !2994, metadata !DIExpression()) #33, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %0, metadata !2991, metadata !DIExpression()) #33, !dbg !2995
  call void @llvm.dbg.value(metadata i64 1, metadata !2994, metadata !DIExpression()) #33, !dbg !2995
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %2, metadata !2690, metadata !DIExpression()) #33, !dbg !2998
  %3 = icmp eq i8* %2, null, !dbg !3000
  br i1 %3, label %4, label %5, !dbg !3001

4:                                                ; preds = %1
  tail call void @xalloc_die() #32, !dbg !3002
  unreachable, !dbg !3002

5:                                                ; preds = %1
  ret i8* %2, !dbg !3003
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2986 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %1, metadata !2988, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %0, metadata !2991, metadata !DIExpression()) #33, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %1, metadata !2994, metadata !DIExpression()) #33, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %0, metadata !2991, metadata !DIExpression()) #33, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %1, metadata !2994, metadata !DIExpression()) #33, !dbg !3005
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %3, metadata !2690, metadata !DIExpression()) #33, !dbg !3008
  %4 = icmp eq i8* %3, null, !dbg !3010
  br i1 %4, label %5, label %6, !dbg !3011

5:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !3012
  unreachable, !dbg !3012

6:                                                ; preds = %2
  ret i8* %3, !dbg !3013
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3014 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %1, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %1, metadata !2714, metadata !DIExpression()) #33, !dbg !3021
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %3, metadata !2690, metadata !DIExpression()) #33, !dbg !3024
  %4 = icmp eq i8* %3, null, !dbg !3026
  br i1 %4, label %5, label %6, !dbg !3027

5:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !3028
  unreachable, !dbg !3028

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3029, metadata !DIExpression()) #33, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()) #33, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()) #33, !dbg !3037
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3039
  ret i8* %3, !dbg !3040
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3045, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %1, metadata !3046, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %1, metadata !2727, metadata !DIExpression()) #33, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %1, metadata !2729, metadata !DIExpression()) #33, !dbg !3050
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %3, metadata !2690, metadata !DIExpression()) #33, !dbg !3053
  %4 = icmp eq i8* %3, null, !dbg !3055
  br i1 %4, label %5, label %6, !dbg !3056

5:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !3057
  unreachable, !dbg !3057

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3029, metadata !DIExpression()) #33, !dbg !3058
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()) #33, !dbg !3058
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()) #33, !dbg !3058
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3060
  ret i8* %3, !dbg !3061
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3062 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3066, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %1, metadata !3067, metadata !DIExpression()), !dbg !3069
  %3 = add nsw i64 %1, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %3, metadata !2727, metadata !DIExpression()) #33, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %3, metadata !2729, metadata !DIExpression()) #33, !dbg !3073
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %4, metadata !2690, metadata !DIExpression()) #33, !dbg !3076
  %5 = icmp eq i8* %4, null, !dbg !3078
  br i1 %5, label %6, label %7, !dbg !3079

6:                                                ; preds = %2
  tail call void @xalloc_die() #32, !dbg !3080
  unreachable, !dbg !3080

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3068, metadata !DIExpression()), !dbg !3069
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3081
  store i8 0, i8* %8, align 1, !dbg !3082, !tbaa !459
  call void @llvm.dbg.value(metadata i8* %4, metadata !3029, metadata !DIExpression()) #33, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()) #33, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()) #33, !dbg !3083
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3085
  ret i8* %4, !dbg !3086
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3087 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3089, metadata !DIExpression()), !dbg !3090
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3091
  %3 = add i64 %2, 1, !dbg !3092
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()) #33, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %3, metadata !3019, metadata !DIExpression()) #33, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %3, metadata !2714, metadata !DIExpression()) #33, !dbg !3095
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %4, metadata !2690, metadata !DIExpression()) #33, !dbg !3098
  %5 = icmp eq i8* %4, null, !dbg !3100
  br i1 %5, label %6, label %7, !dbg !3101

6:                                                ; preds = %1
  tail call void @xalloc_die() #32, !dbg !3102
  unreachable, !dbg !3102

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3029, metadata !DIExpression()) #33, !dbg !3103
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()) #33, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %3, metadata !3036, metadata !DIExpression()) #33, !dbg !3103
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !3105
  ret i8* %4, !dbg !3106
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3107 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3112, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %1, metadata !3109, metadata !DIExpression()), !dbg !3113
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.117, i64 0, i64 0), i32 noundef 5) #33, !dbg !3112
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i64 0, i64 0), i8* noundef %2) #33, !dbg !3112
  %3 = icmp eq i32 %1, 0, !dbg !3112
  tail call void @llvm.assume(i1 %3), !dbg !3112
  tail call void @abort() #32, !dbg !3114
  unreachable, !dbg !3114
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3115 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3153, metadata !DIExpression()), !dbg !3158
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !3159
  call void @llvm.dbg.value(metadata i1 undef, metadata !3154, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3158
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3160, metadata !DIExpression()), !dbg !3163
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3165
  %4 = load i32, i32* %3, align 8, !dbg !3165, !tbaa !3166
  %5 = and i32 %4, 32, !dbg !3167
  %6 = icmp eq i32 %5, 0, !dbg !3167
  call void @llvm.dbg.value(metadata i1 %6, metadata !3156, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3158
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !3168
  %8 = icmp eq i32 %7, 0, !dbg !3169
  call void @llvm.dbg.value(metadata i1 %8, metadata !3157, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3158
  br i1 %6, label %9, label %19, !dbg !3170

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3172
  call void @llvm.dbg.value(metadata i1 %10, metadata !3154, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3158
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3173
  %12 = xor i1 %8, true, !dbg !3173
  %13 = sext i1 %12 to i32, !dbg !3173
  br i1 %11, label %22, label %14, !dbg !3173

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3174
  %16 = load i32, i32* %15, align 4, !dbg !3174, !tbaa !450
  %17 = icmp ne i32 %16, 9, !dbg !3175
  %18 = sext i1 %17 to i32, !dbg !3176
  br label %22, !dbg !3176

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3177

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3179
  store i32 0, i32* %21, align 4, !dbg !3181, !tbaa !450
  br label %22, !dbg !3179

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3158
  ret i32 %23, !dbg !3182
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3183 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3221, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 0, metadata !3222, metadata !DIExpression()), !dbg !3225
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3226
  call void @llvm.dbg.value(metadata i32 %2, metadata !3223, metadata !DIExpression()), !dbg !3225
  %3 = icmp slt i32 %2, 0, !dbg !3227
  br i1 %3, label %4, label %6, !dbg !3229

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3230
  br label %24, !dbg !3231

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3232
  %8 = icmp eq i32 %7, 0, !dbg !3232
  br i1 %8, label %13, label %9, !dbg !3234

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3235
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !3236
  %12 = icmp eq i64 %11, -1, !dbg !3237
  br i1 %12, label %16, label %13, !dbg !3238

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3239
  %15 = icmp eq i32 %14, 0, !dbg !3239
  br i1 %15, label %16, label %18, !dbg !3240

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3222, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 0, metadata !3224, metadata !DIExpression()), !dbg !3225
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %21, metadata !3224, metadata !DIExpression()), !dbg !3225
  br label %24, !dbg !3242

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3243
  %20 = load i32, i32* %19, align 4, !dbg !3243, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %20, metadata !3222, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 0, metadata !3224, metadata !DIExpression()), !dbg !3225
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %21, metadata !3224, metadata !DIExpression()), !dbg !3225
  %22 = icmp eq i32 %20, 0, !dbg !3244
  br i1 %22, label %24, label %23, !dbg !3242

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3246, !tbaa !450
  call void @llvm.dbg.value(metadata i32 -1, metadata !3224, metadata !DIExpression()), !dbg !3225
  br label %24, !dbg !3248

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3225
  ret i32 %25, !dbg !3249
}

; Function Attrs: nofree nounwind
declare !dbg !3250 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !3251 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3252 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3256 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3294, metadata !DIExpression()), !dbg !3295
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3296
  br i1 %2, label %6, label %3, !dbg !3298

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3299
  %5 = icmp eq i32 %4, 0, !dbg !3299
  br i1 %5, label %6, label %8, !dbg !3300

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3301
  br label %17, !dbg !3302

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3303, metadata !DIExpression()) #33, !dbg !3308
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3310
  %10 = load i32, i32* %9, align 8, !dbg !3310, !tbaa !3166
  %11 = and i32 %10, 256, !dbg !3312
  %12 = icmp eq i32 %11, 0, !dbg !3312
  br i1 %12, label %15, label %13, !dbg !3313

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !3314
  br label %15, !dbg !3314

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3315
  br label %17, !dbg !3316

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3295
  ret i32 %18, !dbg !3317
}

; Function Attrs: nofree nounwind
declare !dbg !3318 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3319 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3358, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 %2, metadata !3360, metadata !DIExpression()), !dbg !3364
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3365
  %5 = load i8*, i8** %4, align 8, !dbg !3365, !tbaa !3366
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3367
  %7 = load i8*, i8** %6, align 8, !dbg !3367, !tbaa !3368
  %8 = icmp eq i8* %5, %7, !dbg !3369
  br i1 %8, label %9, label %28, !dbg !3370

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3371
  %11 = load i8*, i8** %10, align 8, !dbg !3371, !tbaa !848
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3372
  %13 = load i8*, i8** %12, align 8, !dbg !3372, !tbaa !3373
  %14 = icmp eq i8* %11, %13, !dbg !3374
  br i1 %14, label %15, label %28, !dbg !3375

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3376
  %17 = load i8*, i8** %16, align 8, !dbg !3376, !tbaa !3377
  %18 = icmp eq i8* %17, null, !dbg !3378
  br i1 %18, label %19, label %28, !dbg !3379

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3380
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !3381
  call void @llvm.dbg.value(metadata i64 %21, metadata !3361, metadata !DIExpression()), !dbg !3382
  %22 = icmp eq i64 %21, -1, !dbg !3383
  br i1 %22, label %30, label %23, !dbg !3385

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3386
  %25 = load i32, i32* %24, align 8, !dbg !3387, !tbaa !3166
  %26 = and i32 %25, -17, !dbg !3387
  store i32 %26, i32* %24, align 8, !dbg !3387, !tbaa !3166
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3388
  store i64 %21, i64* %27, align 8, !dbg !3389, !tbaa !3390
  br label %30, !dbg !3391

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3392
  br label %30, !dbg !3393

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3364
  ret i32 %31, !dbg !3394
}

; Function Attrs: nofree nounwind
declare !dbg !3395 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3398 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3403, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* %1, metadata !3404, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %2, metadata !3405, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3406, metadata !DIExpression()), !dbg !3408
  %5 = icmp eq i8* %1, null, !dbg !3409
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3411
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), i8* %1, !dbg !3411
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %8, metadata !3405, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* %7, metadata !3404, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32* %6, metadata !3403, metadata !DIExpression()), !dbg !3408
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3412
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3414
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3406, metadata !DIExpression()), !dbg !3408
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %11, metadata !3407, metadata !DIExpression()), !dbg !3408
  %12 = icmp ult i64 %11, -3, !dbg !3416
  br i1 %12, label %13, label %18, !dbg !3418

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !3419
  %15 = icmp eq i32 %14, 0, !dbg !3419
  br i1 %15, label %16, label %30, !dbg !3420

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3421, metadata !DIExpression()) #33, !dbg !3426
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3428, metadata !DIExpression()) #33, !dbg !3433
  call void @llvm.dbg.value(metadata i32 0, metadata !3431, metadata !DIExpression()) #33, !dbg !3433
  call void @llvm.dbg.value(metadata i64 8, metadata !3432, metadata !DIExpression()) #33, !dbg !3433
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3435
  store i64 0, i64* %17, align 1, !dbg !3435
  br label %30, !dbg !3436

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3437
  br i1 %19, label %20, label %21, !dbg !3439

20:                                               ; preds = %18
  tail call void @abort() #32, !dbg !3440
  unreachable, !dbg !3440

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3441

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !3443
  br i1 %24, label %30, label %25, !dbg !3444

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3445
  br i1 %26, label %30, label %27, !dbg !3448

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3449, !tbaa !459
  %29 = zext i8 %28 to i32, !dbg !3450
  store i32 %29, i32* %6, align 4, !dbg !3451, !tbaa !450
  br label %30, !dbg !3452

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3408
  ret i64 %31, !dbg !3453
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3454 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3463, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %2, metadata !3464, metadata !DIExpression()), !dbg !3466
  %4 = icmp eq i64 %2, 0, !dbg !3467
  br i1 %4, label %8, label %5, !dbg !3467

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3467
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3467
  br i1 %7, label %13, label %8, !dbg !3467

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3466
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3466
  %9 = mul i64 %2, %1, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %9, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %0, metadata !3469, metadata !DIExpression()) #33, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %9, metadata !3472, metadata !DIExpression()) #33, !dbg !3473
  %10 = icmp eq i64 %9, 0, !dbg !3475
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3475
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !3476
  br label %15, !dbg !3477

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3466
  %14 = tail call i32* @__errno_location() #35, !dbg !3478
  store i32 12, i32* %14, align 4, !dbg !3480, !tbaa !450
  br label %15, !dbg !3481

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3466
  ret i8* %16, !dbg !3482
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3483 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3485, metadata !DIExpression()), !dbg !3490
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3491
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3491
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3486, metadata !DIExpression()), !dbg !3492
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !3493
  %5 = icmp eq i32 %4, 0, !dbg !3493
  br i1 %5, label %6, label %13, !dbg !3495

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3496, metadata !DIExpression()) #33, !dbg !3500
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i64 0, i64 0), metadata !3499, metadata !DIExpression()) #33, !dbg !3500
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i64 0, i64 0), i64 2), !dbg !3503
  %8 = icmp eq i32 %7, 0, !dbg !3504
  br i1 %8, label %12, label %9, !dbg !3505

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3496, metadata !DIExpression()) #33, !dbg !3506
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), metadata !3499, metadata !DIExpression()) #33, !dbg !3506
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i64 6), !dbg !3508
  %11 = icmp eq i32 %10, 0, !dbg !3509
  br i1 %11, label %12, label %13, !dbg !3510

12:                                               ; preds = %9, %6
  br label %13, !dbg !3511

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3490
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3512
  ret i1 %14, !dbg !3512
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3513 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3517, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8* %1, metadata !3518, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %2, metadata !3519, metadata !DIExpression()), !dbg !3520
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !3521
  ret i32 %4, !dbg !3522
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3523 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3527, metadata !DIExpression()), !dbg !3528
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !3529
  ret i8* %2, !dbg !3530
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3533, metadata !DIExpression()), !dbg !3535
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %2, metadata !3534, metadata !DIExpression()), !dbg !3535
  ret i8* %2, !dbg !3537
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3538 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3540, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8* %1, metadata !3541, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64 %2, metadata !3542, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 %0, metadata !3533, metadata !DIExpression()) #33, !dbg !3548
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3550
  call void @llvm.dbg.value(metadata i8* %4, metadata !3534, metadata !DIExpression()) #33, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %4, metadata !3543, metadata !DIExpression()), !dbg !3547
  %5 = icmp eq i8* %4, null, !dbg !3551
  br i1 %5, label %6, label %9, !dbg !3552

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3553
  br i1 %7, label %19, label %8, !dbg !3556

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3557, !tbaa !459
  br label %19, !dbg !3558

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !3559
  call void @llvm.dbg.value(metadata i64 %10, metadata !3544, metadata !DIExpression()), !dbg !3560
  %11 = icmp ult i64 %10, %2, !dbg !3561
  br i1 %11, label %12, label %14, !dbg !3563

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %1, metadata !3566, metadata !DIExpression()) #33, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %4, metadata !3569, metadata !DIExpression()) #33, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %13, metadata !3570, metadata !DIExpression()) #33, !dbg !3571
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !3573
  br label %19, !dbg !3574

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3575
  br i1 %15, label %19, label %16, !dbg !3578

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %1, metadata !3566, metadata !DIExpression()) #33, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %4, metadata !3569, metadata !DIExpression()) #33, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %17, metadata !3570, metadata !DIExpression()) #33, !dbg !3581
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !3583
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3584
  store i8 0, i8* %18, align 1, !dbg !3585, !tbaa !459
  br label %19, !dbg !3586

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3587
  ret i32 %20, !dbg !3588
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #6 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind }
attributes #34 = { nounwind readonly willreturn }
attributes #35 = { nounwind readnone willreturn }
attributes #36 = { noreturn }
attributes #37 = { cold }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!9, !124, !129, !136, !316, !336, !177, !187, !219, !338, !308, !345, !379, !381, !383, !385, !387, !322, !389, !392, !394, !396}
!llvm.ident = !{!398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398, !398}
!llvm.module.flags = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !41)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !31, globals: !40, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/echo.c", directory: "/src", checksumkind: CSK_MD5, checksum: "35cdcf3349b867ec9786bdb5dc592ba7")
!11 = !{!12, !16}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 33, baseType: !13, size: 32, elements: !14)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 46, baseType: !13, size: 32, elements: !18)
!17 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!19 = !DIEnumerator(name: "_ISupper", value: 256)
!20 = !DIEnumerator(name: "_ISlower", value: 512)
!21 = !DIEnumerator(name: "_ISalpha", value: 1024)
!22 = !DIEnumerator(name: "_ISdigit", value: 2048)
!23 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!24 = !DIEnumerator(name: "_ISspace", value: 8192)
!25 = !DIEnumerator(name: "_ISprint", value: 16384)
!26 = !DIEnumerator(name: "_ISgraph", value: 32768)
!27 = !DIEnumerator(name: "_ISblank", value: 1)
!28 = !DIEnumerator(name: "_IScntrl", value: 2)
!29 = !DIEnumerator(name: "_ISpunct", value: 4)
!30 = !DIEnumerator(name: "_ISalnum", value: 8)
!31 = !{!32, !33, !34, !35, !36, !6, !39}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
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
!55 = !DILocalVariable(name: "spaces", scope: !52, file: !3, line: 609, type: !36)
!56 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !36)
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
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 51, baseType: !34, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 54, baseType: !32, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 55, baseType: !32, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 56, baseType: !32, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 57, baseType: !32, size: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 58, baseType: !32, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 59, baseType: !32, size: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 60, baseType: !32, size: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 61, baseType: !32, size: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 64, baseType: !32, size: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 65, baseType: !32, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 66, baseType: !32, size: 64, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 36, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 70, baseType: !83, size: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 72, baseType: !34, size: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 73, baseType: !34, size: 32, offset: 928)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !88, line: 152, baseType: !89)
!88 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!89 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 77, baseType: !35, size: 16, offset: 1024)
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
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !64, file: !65, line: 94, baseType: !33, size: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 95, baseType: !36, size: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 96, baseType: !34, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DILocalVariable(name: "__cnt", scope: !59, file: !3, line: 644, type: !36)
!117 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!118 = !DILocalVariable(name: "__ptr", scope: !119, file: !3, line: 686, type: !6)
!119 = distinct !DILexicalBlock(scope: !2, file: !3, line: 686, column: 3)
!120 = !DILocalVariable(name: "__stream", scope: !119, file: !3, line: 686, type: !61)
!121 = !DILocalVariable(name: "__cnt", scope: !119, file: !3, line: 686, type: !36)
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
!138 = !{!33, !39}
!139 = !{!140, !166, !134, !168, !170}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "old_file_name", scope: !142, file: !137, line: 304, type: !6, isLocal: true, isDefinition: true)
!142 = distinct !DISubprogram(name: "verror_at_line", scope: !137, file: !137, line: 298, type: !143, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !159)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !34, !34, !6, !13, !6, !145}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !147)
!146 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !150, baseType: !151)
!150 = !DIFile(filename: "lib/error.c", directory: "/src")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !153)
!152 = !DINamespace(name: "std", scope: null)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !151, file: !150, baseType: !33, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !151, file: !150, baseType: !33, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !151, file: !150, baseType: !33, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !151, file: !150, baseType: !34, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !151, file: !150, baseType: !34, size: 32, offset: 224)
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DILocalVariable(name: "status", arg: 1, scope: !142, file: !137, line: 298, type: !34)
!161 = !DILocalVariable(name: "errnum", arg: 2, scope: !142, file: !137, line: 298, type: !34)
!162 = !DILocalVariable(name: "file_name", arg: 3, scope: !142, file: !137, line: 298, type: !6)
!163 = !DILocalVariable(name: "line_number", arg: 4, scope: !142, file: !137, line: 298, type: !13)
!164 = !DILocalVariable(name: "message", arg: 5, scope: !142, file: !137, line: 298, type: !6)
!165 = !DILocalVariable(name: "args", arg: 6, scope: !142, file: !137, line: 298, type: !145)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "old_line_number", scope: !142, file: !137, line: 305, type: !13, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "error_message_count", scope: !136, file: !137, line: 69, type: !13, isLocal: false, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !136, file: !137, line: 295, type: !34, isLocal: false, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "program_name", scope: !177, file: !178, line: 31, type: !6, isLocal: false, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !179, globals: !180, splitDebugInlining: false, nameTableKind: None)
!178 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!179 = !{!32}
!180 = !{!175}
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "utf07FF", scope: !183, file: !184, line: 46, type: !214, isLocal: true, isDefinition: true)
!183 = distinct !DISubprogram(name: "proper_name_lite", scope: !184, file: !184, line: 38, type: !185, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !189)
!184 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!185 = !DISubroutineType(types: !186)
!186 = !{!6, !6, !6}
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !188, splitDebugInlining: false, nameTableKind: None)
!188 = !{!181}
!189 = !{!190, !191, !192, !193, !198}
!190 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !183, file: !184, line: 38, type: !6)
!191 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !183, file: !184, line: 38, type: !6)
!192 = !DILocalVariable(name: "translation", scope: !183, file: !184, line: 40, type: !6)
!193 = !DILocalVariable(name: "w", scope: !183, file: !184, line: 47, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !195, line: 37, baseType: !196)
!195 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !88, line: 57, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !88, line: 42, baseType: !13)
!198 = !DILocalVariable(name: "mbs", scope: !183, file: !184, line: 48, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !200, line: 6, baseType: !201)
!200 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !202, line: 21, baseType: !203)
!202 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 13, size: 64, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !203, file: !202, line: 15, baseType: !34, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !203, file: !202, line: 20, baseType: !207, size: 32, offset: 32)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !202, line: 16, size: 32, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !207, file: !202, line: 18, baseType: !13, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !207, file: !202, line: 19, baseType: !211, size: 32)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 4)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 2)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !219, file: !220, line: 76, type: !302, isLocal: false, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !241, globals: !242, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!221 = !{!222, !236, !16}
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !223, line: 42, baseType: !13, size: 32, elements: !224)
!223 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!225 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!226 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!227 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!228 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!229 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!230 = !DIEnumerator(name: "c_quoting_style", value: 5)
!231 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!232 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!233 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!234 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!235 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !223, line: 254, baseType: !13, size: 32, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!239 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!240 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!241 = !{!34, !35, !36}
!242 = !{!217, !243, !249, !261, !263, !268, !291, !298, !300}
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !219, file: !220, line: 92, type: !245, isLocal: false, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 320, elements: !247)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!247 = !{!248}
!248 = !DISubrange(count: 10)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !219, file: !220, line: 1040, type: !251, isLocal: false, isDefinition: true)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !220, line: 56, size: 448, elements: !252)
!252 = !{!253, !254, !255, !259, !260}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !251, file: !220, line: 59, baseType: !222, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !220, line: 62, baseType: !34, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !251, file: !220, line: 66, baseType: !256, size: 256, offset: 64)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !251, file: !220, line: 69, baseType: !6, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !251, file: !220, line: 72, baseType: !6, size: 64, offset: 384)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !219, file: !220, line: 107, type: !251, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "slot0", scope: !219, file: !220, line: 831, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 256)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "quote", scope: !270, file: !220, line: 228, type: !289, isLocal: true, isDefinition: true)
!270 = distinct !DISubprogram(name: "gettext_quote", scope: !220, file: !220, line: 197, type: !271, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!6, !6, !222}
!273 = !{!274, !275, !276, !277, !278}
!274 = !DILocalVariable(name: "msgid", arg: 1, scope: !270, file: !220, line: 197, type: !6)
!275 = !DILocalVariable(name: "s", arg: 2, scope: !270, file: !220, line: 197, type: !222)
!276 = !DILocalVariable(name: "translation", scope: !270, file: !220, line: 199, type: !6)
!277 = !DILocalVariable(name: "w", scope: !270, file: !220, line: 229, type: !194)
!278 = !DILocalVariable(name: "mbs", scope: !270, file: !220, line: 230, type: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !200, line: 6, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !202, line: 21, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 13, size: 64, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !281, file: !202, line: 15, baseType: !34, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !281, file: !202, line: 20, baseType: !285, size: 32, offset: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !202, line: 16, size: 32, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !285, file: !202, line: 18, baseType: !13, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !285, file: !202, line: 19, baseType: !211, size: 32)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !290)
!290 = !{!216, !213}
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "slotvec", scope: !219, file: !220, line: 834, type: !293, isLocal: true, isDefinition: true)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !220, line: 823, size: 128, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !294, file: !220, line: 825, baseType: !36, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !294, file: !220, line: 826, baseType: !32, size: 64, offset: 64)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "nslots", scope: !219, file: !220, line: 832, type: !34, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "slotvec0", scope: !219, file: !220, line: 833, type: !294, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 704, elements: !304)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!304 = !{!305}
!305 = !DISubrange(count: 11)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !308, file: !309, line: 26, type: !311, isLocal: false, isDefinition: true)
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !310, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!310 = !{!306}
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 47)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "exit_failure", scope: !316, file: !317, line: 24, type: !319, isLocal: false, isDefinition: true)
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !318, splitDebugInlining: false, nameTableKind: None)
!317 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!318 = !{!314}
!319 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "internal_state", scope: !322, file: !323, line: 97, type: !326, isLocal: true, isDefinition: true)
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !324, globals: !325, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!324 = !{!33, !36, !39}
!325 = !{!320}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !200, line: 6, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !202, line: 21, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 13, size: 64, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !328, file: !202, line: 15, baseType: !34, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !328, file: !202, line: 20, baseType: !332, size: 32, offset: 32)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !202, line: 16, size: 32, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !332, file: !202, line: 18, baseType: !13, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !332, file: !202, line: 19, baseType: !211, size: 32)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !340, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!339 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!340 = !{!341}
!341 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !339, line: 40, baseType: !13, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!344 = !{!33}
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !347, retainedTypes: !378, splitDebugInlining: false, nameTableKind: None)
!346 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!347 = !{!348, !360}
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !349, file: !346, line: 188, baseType: !13, size: 32, elements: !358)
!349 = distinct !DISubprogram(name: "x2nrealloc", scope: !346, file: !346, line: 176, type: !350, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !353)
!350 = !DISubroutineType(types: !351)
!351 = !{!33, !33, !352, !36}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!353 = !{!354, !355, !356, !357}
!354 = !DILocalVariable(name: "p", arg: 1, scope: !349, file: !346, line: 176, type: !33)
!355 = !DILocalVariable(name: "pn", arg: 2, scope: !349, file: !346, line: 176, type: !352)
!356 = !DILocalVariable(name: "s", arg: 3, scope: !349, file: !346, line: 176, type: !36)
!357 = !DILocalVariable(name: "n", scope: !349, file: !346, line: 178, type: !36)
!358 = !{!359}
!359 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!360 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !361, file: !346, line: 228, baseType: !13, size: 32, elements: !358)
!361 = distinct !DISubprogram(name: "xpalloc", scope: !346, file: !346, line: 223, type: !362, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !368)
!362 = !DISubroutineType(types: !363)
!363 = !{!33, !33, !364, !365, !367, !365}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !366, line: 130, baseType: !367)
!366 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !37, line: 35, baseType: !89)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377}
!369 = !DILocalVariable(name: "pa", arg: 1, scope: !361, file: !346, line: 223, type: !33)
!370 = !DILocalVariable(name: "pn", arg: 2, scope: !361, file: !346, line: 223, type: !364)
!371 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !361, file: !346, line: 223, type: !365)
!372 = !DILocalVariable(name: "n_max", arg: 4, scope: !361, file: !346, line: 223, type: !367)
!373 = !DILocalVariable(name: "s", arg: 5, scope: !361, file: !346, line: 223, type: !365)
!374 = !DILocalVariable(name: "n0", scope: !361, file: !346, line: 230, type: !365)
!375 = !DILocalVariable(name: "n", scope: !361, file: !346, line: 237, type: !365)
!376 = !DILocalVariable(name: "nbytes", scope: !361, file: !346, line: 248, type: !365)
!377 = !DILocalVariable(name: "adjusted_nbytes", scope: !361, file: !346, line: 252, type: !365)
!378 = !{!32, !33, !48, !89, !38}
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!380 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!381 = distinct !DICompileUnit(language: DW_LANG_C99, file: !382, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!382 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!383 = distinct !DICompileUnit(language: DW_LANG_C99, file: !384, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!384 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!386 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !391, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!391 = !{!48, !38, !33}
!392 = distinct !DICompileUnit(language: DW_LANG_C99, file: !393, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!393 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!398 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!399 = !{i32 7, !"Dwarf Version", i32 5}
!400 = !{i32 2, !"Debug Info Version", i32 3}
!401 = !{i32 1, !"wchar_size", i32 4}
!402 = !{i32 1, !"branch-target-enforcement", i32 0}
!403 = !{i32 1, !"sign-return-address", i32 0}
!404 = !{i32 1, !"sign-return-address-all", i32 0}
!405 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!406 = !{i32 7, !"PIC Level", i32 2}
!407 = !{i32 7, !"PIE Level", i32 2}
!408 = !{i32 7, !"uwtable", i32 1}
!409 = !{i32 7, !"frame-pointer", i32 1}
!410 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 37, type: !411, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !34}
!413 = !{!414}
!414 = !DILocalVariable(name: "status", arg: 1, scope: !410, file: !10, line: 37, type: !34)
!415 = !DILocation(line: 0, scope: !410)
!416 = !DILocation(line: 41, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !10, line: 41, column: 3)
!418 = distinct !DILexicalBlock(scope: !410, file: !10, line: 41, column: 3)
!419 = !DILocation(line: 41, column: 3, scope: !418)
!420 = !DILocation(line: 43, column: 3, scope: !410)
!421 = !{!422, !422, i64 0}
!422 = !{!"any pointer", !423, i64 0}
!423 = !{!"omnipotent char", !424, i64 0}
!424 = !{!"Simple C/C++ TBAA"}
!425 = !DILocation(line: 47, column: 3, scope: !410)
!426 = !DILocation(line: 51, column: 3, scope: !410)
!427 = !DILocation(line: 54, column: 3, scope: !410)
!428 = !DILocation(line: 61, column: 3, scope: !410)
!429 = !DILocation(line: 68, column: 3, scope: !410)
!430 = !DILocation(line: 69, column: 3, scope: !410)
!431 = !DILocation(line: 70, column: 3, scope: !410)
!432 = !DILocation(line: 75, column: 3, scope: !410)
!433 = !DILocation(line: 87, column: 3, scope: !410)
!434 = !DILocation(line: 91, column: 3, scope: !410)
!435 = !DILocation(line: 92, column: 3, scope: !410)
!436 = !DILocation(line: 96, column: 3, scope: !410)
!437 = !DILocation(line: 97, column: 3, scope: !410)
!438 = !DISubprogram(name: "dcgettext", scope: !439, file: !439, line: 51, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!439 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!440 = !DISubroutineType(types: !441)
!441 = !{!32, !6, !6, !34}
!442 = !{}
!443 = !DISubprogram(name: "fputs_unlocked", scope: !146, file: !146, line: 691, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!444 = !DISubroutineType(types: !445)
!445 = !{!34, !446, !447}
!446 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!447 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!448 = !DILocation(line: 0, scope: !2)
!449 = !DILocation(line: 581, column: 7, scope: !46)
!450 = !{!451, !451, i64 0}
!451 = !{!"int", !423, i64 0}
!452 = !DILocation(line: 581, column: 19, scope: !46)
!453 = !DILocation(line: 581, column: 7, scope: !2)
!454 = !DILocation(line: 585, column: 26, scope: !45)
!455 = !DILocation(line: 0, scope: !45)
!456 = !DILocation(line: 586, column: 23, scope: !45)
!457 = !DILocation(line: 586, column: 28, scope: !45)
!458 = !DILocation(line: 586, column: 32, scope: !45)
!459 = !{!423, !423, i64 0}
!460 = !DILocation(line: 586, column: 38, scope: !45)
!461 = !DILocalVariable(name: "__s1", arg: 1, scope: !462, file: !463, line: 1359, type: !6)
!462 = distinct !DISubprogram(name: "streq", scope: !463, file: !463, line: 1359, type: !464, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !466)
!463 = !DIFile(filename: "./lib/string.h", directory: "/src")
!464 = !DISubroutineType(types: !465)
!465 = !{!48, !6, !6}
!466 = !{!461, !467}
!467 = !DILocalVariable(name: "__s2", arg: 2, scope: !462, file: !463, line: 1359, type: !6)
!468 = !DILocation(line: 0, scope: !462, inlinedAt: !469)
!469 = distinct !DILocation(line: 586, column: 41, scope: !45)
!470 = !DILocation(line: 1361, column: 11, scope: !462, inlinedAt: !469)
!471 = !DILocation(line: 1361, column: 10, scope: !462, inlinedAt: !469)
!472 = !DILocation(line: 586, column: 19, scope: !45)
!473 = !DILocation(line: 587, column: 5, scope: !45)
!474 = !DILocation(line: 588, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!476 = !DILocation(line: 588, column: 7, scope: !2)
!477 = !DILocation(line: 590, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !3, line: 589, column: 5)
!479 = !DILocation(line: 591, column: 7, scope: !478)
!480 = !DILocation(line: 595, column: 37, scope: !2)
!481 = !DILocation(line: 595, column: 35, scope: !2)
!482 = !DILocation(line: 596, column: 29, scope: !2)
!483 = !DILocation(line: 597, column: 8, scope: !54)
!484 = !DILocation(line: 597, column: 7, scope: !2)
!485 = !DILocation(line: 604, column: 24, scope: !53)
!486 = !DILocation(line: 604, column: 12, scope: !54)
!487 = !DILocation(line: 0, scope: !52)
!488 = !DILocation(line: 610, column: 16, scope: !52)
!489 = !DILocation(line: 610, column: 7, scope: !52)
!490 = !DILocation(line: 611, column: 21, scope: !52)
!491 = !{!492, !492, i64 0}
!492 = !{!"short", !423, i64 0}
!493 = !DILocation(line: 611, column: 19, scope: !52)
!494 = !DILocation(line: 611, column: 16, scope: !52)
!495 = !DILocation(line: 610, column: 30, scope: !52)
!496 = distinct !{!496, !489, !490, !497}
!497 = !{!"llvm.loop.mustprogress"}
!498 = !DILocation(line: 612, column: 18, scope: !499)
!499 = distinct !DILexicalBlock(scope: !52, file: !3, line: 612, column: 11)
!500 = !DILocation(line: 612, column: 11, scope: !52)
!501 = !DILocation(line: 620, column: 23, scope: !2)
!502 = !DILocation(line: 625, column: 39, scope: !2)
!503 = !DILocation(line: 626, column: 3, scope: !2)
!504 = !DILocation(line: 626, column: 10, scope: !2)
!505 = !DILocation(line: 626, column: 21, scope: !2)
!506 = !DILocation(line: 628, column: 44, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 628, column: 11)
!508 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!509 = !DILocation(line: 628, column: 32, scope: !507)
!510 = !DILocation(line: 628, column: 49, scope: !507)
!511 = !DILocation(line: 628, column: 11, scope: !508)
!512 = !DILocation(line: 630, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !508, file: !3, line: 630, column: 11)
!514 = !DILocation(line: 630, column: 11, scope: !508)
!515 = !DILocation(line: 632, column: 26, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 632, column: 15)
!517 = distinct !DILexicalBlock(scope: !513, file: !3, line: 631, column: 9)
!518 = !DILocation(line: 632, column: 34, scope: !516)
!519 = !DILocation(line: 632, column: 37, scope: !516)
!520 = !DILocation(line: 632, column: 15, scope: !517)
!521 = !DILocation(line: 636, column: 29, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !3, line: 636, column: 15)
!523 = !DILocation(line: 640, column: 16, scope: !508)
!524 = distinct !{!524, !503, !525, !497}
!525 = !DILocation(line: 641, column: 5, scope: !2)
!526 = !DILocation(line: 644, column: 3, scope: !2)
!527 = !DILocation(line: 0, scope: !462, inlinedAt: !528)
!528 = distinct !DILocation(line: 648, column: 31, scope: !2)
!529 = !DILocation(line: 0, scope: !462, inlinedAt: !530)
!530 = distinct !DILocation(line: 649, column: 31, scope: !2)
!531 = !DILocation(line: 0, scope: !462, inlinedAt: !532)
!532 = distinct !DILocation(line: 650, column: 31, scope: !2)
!533 = !DILocation(line: 0, scope: !462, inlinedAt: !534)
!534 = distinct !DILocation(line: 651, column: 31, scope: !2)
!535 = !DILocation(line: 0, scope: !462, inlinedAt: !536)
!536 = distinct !DILocation(line: 652, column: 31, scope: !2)
!537 = !DILocation(line: 0, scope: !462, inlinedAt: !538)
!538 = distinct !DILocation(line: 653, column: 31, scope: !2)
!539 = !DILocation(line: 0, scope: !462, inlinedAt: !540)
!540 = distinct !DILocation(line: 654, column: 31, scope: !2)
!541 = !DILocation(line: 0, scope: !462, inlinedAt: !542)
!542 = distinct !DILocation(line: 655, column: 31, scope: !2)
!543 = !DILocation(line: 0, scope: !462, inlinedAt: !544)
!544 = distinct !DILocation(line: 656, column: 31, scope: !2)
!545 = !DILocation(line: 0, scope: !462, inlinedAt: !546)
!546 = distinct !DILocation(line: 657, column: 31, scope: !2)
!547 = !DILocation(line: 663, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!549 = !DILocation(line: 664, column: 7, scope: !548)
!550 = !DILocation(line: 664, column: 10, scope: !548)
!551 = !DILocation(line: 663, column: 7, scope: !2)
!552 = !DILocation(line: 669, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !3, line: 665, column: 5)
!554 = !DILocation(line: 671, column: 5, scope: !553)
!555 = !DILocation(line: 676, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !548, file: !3, line: 673, column: 5)
!557 = !DILocation(line: 679, column: 3, scope: !2)
!558 = !DILocation(line: 683, column: 3, scope: !2)
!559 = !DILocation(line: 686, column: 3, scope: !2)
!560 = !DILocation(line: 688, column: 3, scope: !2)
!561 = !DILocation(line: 691, column: 3, scope: !2)
!562 = !DILocation(line: 695, column: 3, scope: !2)
!563 = !DILocation(line: 696, column: 1, scope: !2)
!564 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !565, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !6}
!567 = !{!568, !569, !578, !579, !581, !582}
!568 = !DILocalVariable(name: "program", arg: 1, scope: !564, file: !3, line: 836, type: !6)
!569 = !DILocalVariable(name: "infomap", scope: !564, file: !3, line: 838, type: !570)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 896, elements: !576)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !564, file: !3, line: 838, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !572, file: !3, line: 838, baseType: !6, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !572, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!576 = !{!577}
!577 = !DISubrange(count: 7)
!578 = !DILocalVariable(name: "node", scope: !564, file: !3, line: 848, type: !6)
!579 = !DILocalVariable(name: "map_prog", scope: !564, file: !3, line: 849, type: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!581 = !DILocalVariable(name: "lc_messages", scope: !564, file: !3, line: 861, type: !6)
!582 = !DILocalVariable(name: "url_program", scope: !564, file: !3, line: 874, type: !6)
!583 = !DILocation(line: 0, scope: !564)
!584 = !DILocation(line: 838, column: 3, scope: !564)
!585 = !DILocation(line: 838, column: 67, scope: !564)
!586 = !DILocation(line: 849, column: 36, scope: !564)
!587 = !DILocation(line: 851, column: 3, scope: !564)
!588 = !DILocation(line: 0, scope: !462, inlinedAt: !589)
!589 = distinct !DILocation(line: 851, column: 33, scope: !564)
!590 = !DILocation(line: 1361, column: 11, scope: !462, inlinedAt: !589)
!591 = !DILocation(line: 1361, column: 10, scope: !462, inlinedAt: !589)
!592 = !DILocation(line: 852, column: 13, scope: !564)
!593 = !DILocation(line: 851, column: 20, scope: !564)
!594 = !{!595, !422, i64 0}
!595 = !{!"infomap", !422, i64 0, !422, i64 8}
!596 = !DILocation(line: 851, column: 10, scope: !564)
!597 = !DILocation(line: 851, column: 28, scope: !564)
!598 = distinct !{!598, !587, !592, !497}
!599 = !DILocation(line: 854, column: 17, scope: !600)
!600 = distinct !DILexicalBlock(scope: !564, file: !3, line: 854, column: 7)
!601 = !{!595, !422, i64 8}
!602 = !DILocation(line: 854, column: 7, scope: !600)
!603 = !DILocation(line: 854, column: 7, scope: !564)
!604 = !DILocation(line: 857, column: 3, scope: !564)
!605 = !DILocation(line: 861, column: 29, scope: !564)
!606 = !DILocation(line: 862, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !564, file: !3, line: 862, column: 7)
!608 = !DILocation(line: 862, column: 19, scope: !607)
!609 = !DILocation(line: 862, column: 22, scope: !607)
!610 = !DILocation(line: 862, column: 7, scope: !564)
!611 = !DILocation(line: 868, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !607, file: !3, line: 863, column: 5)
!613 = !DILocation(line: 870, column: 5, scope: !612)
!614 = !DILocation(line: 0, scope: !462, inlinedAt: !615)
!615 = distinct !DILocation(line: 874, column: 29, scope: !564)
!616 = !DILocation(line: 875, column: 3, scope: !564)
!617 = !DILocation(line: 877, column: 3, scope: !564)
!618 = !DILocation(line: 879, column: 1, scope: !564)
!619 = !DISubprogram(name: "setlocale", scope: !620, file: !620, line: 122, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!620 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!621 = !DISubroutineType(types: !622)
!622 = !{!32, !34, !6}
!623 = !DISubprogram(name: "getenv", scope: !624, file: !624, line: 641, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!624 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!625 = !DISubroutineType(types: !626)
!626 = !{!32, !6}
!627 = !DISubprogram(name: "fwrite_unlocked", scope: !146, file: !146, line: 704, type: !628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!628 = !DISubroutineType(types: !629)
!629 = !{!36, !630, !36, !36, !447}
!630 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!633 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 121, type: !634, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !637)
!634 = !DISubroutineType(types: !635)
!635 = !{!34, !34, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !647, !648, !652, !653, !659, !660}
!638 = !DILocalVariable(name: "argc", arg: 1, scope: !633, file: !10, line: 121, type: !34)
!639 = !DILocalVariable(name: "argv", arg: 2, scope: !633, file: !10, line: 121, type: !636)
!640 = !DILocalVariable(name: "display_return", scope: !633, file: !10, line: 123, type: !48)
!641 = !DILocalVariable(name: "posixly_correct", scope: !633, file: !10, line: 124, type: !48)
!642 = !DILocalVariable(name: "allow_options", scope: !633, file: !10, line: 125, type: !48)
!643 = !DILocalVariable(name: "do_v9", scope: !633, file: !10, line: 132, type: !48)
!644 = !DILocalVariable(name: "temp", scope: !645, file: !10, line: 163, type: !6)
!645 = distinct !DILexicalBlock(scope: !646, file: !10, line: 162, column: 7)
!646 = distinct !DILexicalBlock(scope: !633, file: !10, line: 160, column: 7)
!647 = !DILocalVariable(name: "i", scope: !645, file: !10, line: 164, type: !36)
!648 = !DILocalVariable(name: "s", scope: !649, file: !10, line: 210, type: !6)
!649 = distinct !DILexicalBlock(scope: !650, file: !10, line: 209, column: 9)
!650 = distinct !DILexicalBlock(scope: !651, file: !10, line: 207, column: 5)
!651 = distinct !DILexicalBlock(scope: !633, file: !10, line: 206, column: 7)
!652 = !DILocalVariable(name: "c", scope: !649, file: !10, line: 211, type: !39)
!653 = !DILocalVariable(name: "ch", scope: !654, file: !10, line: 230, type: !39)
!654 = distinct !DILexicalBlock(scope: !655, file: !10, line: 229, column: 23)
!655 = distinct !DILexicalBlock(scope: !656, file: !10, line: 218, column: 21)
!656 = distinct !DILexicalBlock(scope: !657, file: !10, line: 216, column: 17)
!657 = distinct !DILexicalBlock(scope: !658, file: !10, line: 215, column: 19)
!658 = distinct !DILexicalBlock(scope: !649, file: !10, line: 214, column: 13)
!659 = !DILabel(scope: !633, name: "just_echo", file: !10, line: 204)
!660 = !DILabel(scope: !655, name: "not_an_escape", file: !10, line: 259)
!661 = !DILocation(line: 0, scope: !633)
!662 = !DILocation(line: 124, column: 28, scope: !633)
!663 = !DILocation(line: 124, column: 27, scope: !633)
!664 = !DILocation(line: 127, column: 6, scope: !633)
!665 = !DILocation(line: 127, column: 37, scope: !633)
!666 = !DILocation(line: 127, column: 44, scope: !633)
!667 = !DILocation(line: 127, column: 54, scope: !633)
!668 = !DILocation(line: 0, scope: !462, inlinedAt: !669)
!669 = distinct !DILocation(line: 127, column: 47, scope: !633)
!670 = !DILocation(line: 1361, column: 11, scope: !462, inlinedAt: !669)
!671 = !DILocation(line: 1361, column: 10, scope: !462, inlinedAt: !669)
!672 = !DILocation(line: 135, column: 21, scope: !633)
!673 = !DILocation(line: 135, column: 3, scope: !633)
!674 = !DILocation(line: 136, column: 3, scope: !633)
!675 = !DILocation(line: 137, column: 3, scope: !633)
!676 = !DILocation(line: 138, column: 3, scope: !633)
!677 = !DILocation(line: 140, column: 3, scope: !633)
!678 = !DILocation(line: 144, column: 21, scope: !679)
!679 = distinct !DILexicalBlock(scope: !633, file: !10, line: 144, column: 7)
!680 = !DILocation(line: 146, column: 18, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !10, line: 146, column: 11)
!682 = distinct !DILexicalBlock(scope: !679, file: !10, line: 145, column: 5)
!683 = !DILocation(line: 0, scope: !462, inlinedAt: !684)
!684 = distinct !DILocation(line: 146, column: 11, scope: !681)
!685 = !DILocation(line: 1361, column: 11, scope: !462, inlinedAt: !684)
!686 = !DILocation(line: 1361, column: 10, scope: !462, inlinedAt: !684)
!687 = !DILocation(line: 146, column: 11, scope: !682)
!688 = !DILocation(line: 147, column: 9, scope: !681)
!689 = !DILocation(line: 0, scope: !462, inlinedAt: !690)
!690 = distinct !DILocation(line: 149, column: 11, scope: !691)
!691 = distinct !DILexicalBlock(scope: !682, file: !10, line: 149, column: 11)
!692 = !DILocation(line: 1361, column: 11, scope: !462, inlinedAt: !690)
!693 = !DILocation(line: 1361, column: 10, scope: !462, inlinedAt: !690)
!694 = !DILocation(line: 149, column: 11, scope: !682)
!695 = !DILocation(line: 151, column: 24, scope: !696)
!696 = distinct !DILexicalBlock(scope: !691, file: !10, line: 150, column: 9)
!697 = !DILocation(line: 151, column: 60, scope: !696)
!698 = !DILocation(line: 151, column: 69, scope: !696)
!699 = !DILocation(line: 151, column: 11, scope: !696)
!700 = !DILocation(line: 153, column: 11, scope: !696)
!701 = !DILocation(line: 157, column: 3, scope: !633)
!702 = !DILocation(line: 158, column: 3, scope: !633)
!703 = !DILocation(line: 160, column: 7, scope: !633)
!704 = !DILocation(line: 123, column: 8, scope: !633)
!705 = !DILocation(line: 132, column: 8, scope: !633)
!706 = !DILocation(line: 200, column: 13, scope: !645)
!707 = !DILocation(line: 201, column: 13, scope: !645)
!708 = !DILocation(line: 161, column: 17, scope: !646)
!709 = !DILocation(line: 161, column: 21, scope: !646)
!710 = !DILocation(line: 161, column: 25, scope: !646)
!711 = !DILocation(line: 161, column: 24, scope: !646)
!712 = !DILocation(line: 161, column: 33, scope: !646)
!713 = !DILocation(line: 161, column: 5, scope: !646)
!714 = !DILocation(line: 163, column: 36, scope: !645)
!715 = !DILocation(line: 0, scope: !645)
!716 = !DILocation(line: 170, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !645, file: !10, line: 170, column: 9)
!718 = !DILocation(line: 0, scope: !717)
!719 = !DILocation(line: 170, column: 21, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !10, line: 170, column: 9)
!721 = !DILocation(line: 170, column: 9, scope: !717)
!722 = !DILocation(line: 170, column: 31, scope: !720)
!723 = !DILocation(line: 170, column: 9, scope: !720)
!724 = distinct !{!724, !721, !725, !497}
!725 = !DILocation(line: 177, column: 13, scope: !717)
!726 = !DILocation(line: 179, column: 15, scope: !727)
!727 = distinct !DILexicalBlock(scope: !645, file: !10, line: 179, column: 13)
!728 = !DILocation(line: 179, column: 13, scope: !645)
!729 = !DILocation(line: 184, column: 16, scope: !645)
!730 = !DILocation(line: 184, column: 9, scope: !645)
!731 = !DILocation(line: 185, column: 24, scope: !645)
!732 = !DILocation(line: 185, column: 11, scope: !645)
!733 = !DILocation(line: 189, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !645, file: !10, line: 186, column: 13)
!735 = !DILocation(line: 193, column: 15, scope: !734)
!736 = !DILocation(line: 197, column: 15, scope: !734)
!737 = distinct !{!737, !730, !738, !497}
!738 = !DILocation(line: 198, column: 13, scope: !645)
!739 = !DILocation(line: 206, column: 13, scope: !651)
!740 = !DILocation(line: 204, column: 1, scope: !633)
!741 = !DILocation(line: 0, scope: !651)
!742 = !DILocation(line: 283, column: 7, scope: !633)
!743 = !DILocation(line: 273, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !651, file: !10, line: 272, column: 5)
!745 = !DILocation(line: 275, column: 11, scope: !746)
!746 = distinct !DILexicalBlock(scope: !744, file: !10, line: 274, column: 9)
!747 = !DILocation(line: 278, column: 20, scope: !748)
!748 = distinct !DILexicalBlock(scope: !746, file: !10, line: 278, column: 15)
!749 = !DILocation(line: 278, column: 15, scope: !746)
!750 = !DILocation(line: 208, column: 7, scope: !650)
!751 = !DILocation(line: 210, column: 27, scope: !649)
!752 = !DILocation(line: 0, scope: !649)
!753 = !DILocation(line: 213, column: 11, scope: !649)
!754 = !DILocation(line: 213, column: 25, scope: !649)
!755 = !DILocation(line: 213, column: 23, scope: !649)
!756 = !DILocation(line: 215, column: 32, scope: !657)
!757 = !DILocation(line: 215, column: 19, scope: !658)
!758 = !DILocation(line: 217, column: 33, scope: !656)
!759 = !DILocation(line: 217, column: 19, scope: !656)
!760 = !DILocation(line: 219, column: 41, scope: !655)
!761 = !DILocation(line: 220, column: 41, scope: !655)
!762 = !DILocation(line: 222, column: 43, scope: !655)
!763 = !DILocation(line: 223, column: 41, scope: !655)
!764 = !DILocation(line: 224, column: 41, scope: !655)
!765 = !DILocation(line: 225, column: 41, scope: !655)
!766 = !DILocation(line: 226, column: 41, scope: !655)
!767 = !DILocation(line: 227, column: 41, scope: !655)
!768 = !DILocation(line: 230, column: 44, scope: !654)
!769 = !DILocation(line: 0, scope: !654)
!770 = !DILocation(line: 231, column: 43, scope: !771)
!771 = distinct !DILexicalBlock(scope: !654, file: !10, line: 231, column: 29)
!772 = !DILocalVariable(name: "c", arg: 1, scope: !773, file: !774, line: 324, type: !34)
!773 = distinct !DISubprogram(name: "c_isxdigit", scope: !774, file: !774, line: 324, type: !775, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !777)
!774 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!775 = !DISubroutineType(types: !776)
!776 = !{!48, !34}
!777 = !{!772}
!778 = !DILocation(line: 0, scope: !773, inlinedAt: !779)
!779 = distinct !DILocation(line: 231, column: 31, scope: !771)
!780 = !DILocation(line: 326, column: 3, scope: !773, inlinedAt: !779)
!781 = !DILocation(line: 233, column: 26, scope: !654)
!782 = !DILocalVariable(name: "c", arg: 1, scope: !783, file: !10, line: 102, type: !39)
!783 = distinct !DISubprogram(name: "hextobin", scope: !10, file: !10, line: 102, type: !784, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!34, !39}
!786 = !{!782}
!787 = !DILocation(line: 0, scope: !783, inlinedAt: !788)
!788 = distinct !DILocation(line: 234, column: 29, scope: !654)
!789 = !DILocation(line: 104, column: 3, scope: !783, inlinedAt: !788)
!790 = !DILocation(line: 106, column: 23, scope: !791, inlinedAt: !788)
!791 = distinct !DILexicalBlock(scope: !783, file: !10, line: 105, column: 5)
!792 = !DILocation(line: 106, column: 14, scope: !791, inlinedAt: !788)
!793 = !DILocation(line: 108, column: 25, scope: !791, inlinedAt: !788)
!794 = !DILocation(line: 109, column: 25, scope: !791, inlinedAt: !788)
!795 = !DILocation(line: 110, column: 25, scope: !791, inlinedAt: !788)
!796 = !DILocation(line: 111, column: 25, scope: !791, inlinedAt: !788)
!797 = !DILocation(line: 112, column: 25, scope: !791, inlinedAt: !788)
!798 = !DILocation(line: 0, scope: !791, inlinedAt: !788)
!799 = !DILocation(line: 235, column: 30, scope: !654)
!800 = !DILocation(line: 236, column: 41, scope: !801)
!801 = distinct !DILexicalBlock(scope: !654, file: !10, line: 236, column: 29)
!802 = !DILocation(line: 0, scope: !773, inlinedAt: !803)
!803 = distinct !DILocation(line: 236, column: 29, scope: !801)
!804 = !DILocation(line: 326, column: 3, scope: !773, inlinedAt: !803)
!805 = !DILocation(line: 238, column: 30, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !10, line: 237, column: 27)
!807 = !DILocation(line: 239, column: 35, scope: !806)
!808 = !DILocation(line: 0, scope: !783, inlinedAt: !809)
!809 = distinct !DILocation(line: 239, column: 42, scope: !806)
!810 = !DILocation(line: 104, column: 3, scope: !783, inlinedAt: !809)
!811 = !DILocation(line: 106, column: 23, scope: !791, inlinedAt: !809)
!812 = !DILocation(line: 106, column: 14, scope: !791, inlinedAt: !809)
!813 = !DILocation(line: 108, column: 25, scope: !791, inlinedAt: !809)
!814 = !DILocation(line: 109, column: 25, scope: !791, inlinedAt: !809)
!815 = !DILocation(line: 110, column: 25, scope: !791, inlinedAt: !809)
!816 = !DILocation(line: 111, column: 25, scope: !791, inlinedAt: !809)
!817 = !DILocation(line: 112, column: 25, scope: !791, inlinedAt: !809)
!818 = !DILocation(line: 0, scope: !791, inlinedAt: !809)
!819 = !DILocation(line: 239, column: 40, scope: !806)
!820 = !DILocation(line: 240, column: 27, scope: !806)
!821 = !DILocation(line: 245, column: 37, scope: !822)
!822 = distinct !DILexicalBlock(scope: !655, file: !10, line: 245, column: 27)
!823 = !DILocation(line: 245, column: 40, scope: !822)
!824 = !DILocation(line: 247, column: 29, scope: !655)
!825 = !DILocation(line: 247, column: 23, scope: !655)
!826 = !DILocation(line: 0, scope: !656)
!827 = !DILocation(line: 251, column: 25, scope: !655)
!828 = !DILocation(line: 252, column: 34, scope: !829)
!829 = distinct !DILexicalBlock(scope: !655, file: !10, line: 252, column: 27)
!830 = !DILocation(line: 252, column: 37, scope: !829)
!831 = !DILocation(line: 254, column: 34, scope: !832)
!832 = distinct !DILexicalBlock(scope: !655, file: !10, line: 254, column: 27)
!833 = !DILocation(line: 254, column: 37, scope: !832)
!834 = !DILocation(line: 255, column: 31, scope: !832)
!835 = !DILocation(line: 255, column: 40, scope: !832)
!836 = !DILocation(line: 255, column: 43, scope: !832)
!837 = !DILocation(line: 255, column: 35, scope: !832)
!838 = !DILocation(line: 255, column: 25, scope: !832)
!839 = !DILocalVariable(name: "__c", arg: 1, scope: !840, file: !841, line: 108, type: !34)
!840 = distinct !DISubprogram(name: "putchar_unlocked", scope: !841, file: !841, line: 108, type: !842, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !844)
!841 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!842 = !DISubroutineType(types: !843)
!843 = !{!34, !34}
!844 = !{!839}
!845 = !DILocation(line: 0, scope: !840, inlinedAt: !846)
!846 = distinct !DILocation(line: 260, column: 31, scope: !655)
!847 = !DILocation(line: 110, column: 10, scope: !840, inlinedAt: !846)
!848 = !{!849, !422, i64 40}
!849 = !{!"_IO_FILE", !451, i64 0, !422, i64 8, !422, i64 16, !422, i64 24, !422, i64 32, !422, i64 40, !422, i64 48, !422, i64 56, !422, i64 64, !422, i64 72, !422, i64 80, !422, i64 88, !422, i64 96, !422, i64 104, !451, i64 112, !451, i64 116, !850, i64 120, !492, i64 128, !423, i64 130, !423, i64 131, !422, i64 136, !850, i64 144, !422, i64 152, !422, i64 160, !422, i64 168, !422, i64 176, !850, i64 184, !451, i64 192, !423, i64 196}
!850 = !{!"long", !423, i64 0}
!851 = !{!849, !422, i64 48}
!852 = !{!"branch_weights", i32 2000, i32 1}
!853 = !DILocation(line: 0, scope: !840, inlinedAt: !854)
!854 = distinct !DILocation(line: 263, column: 15, scope: !658)
!855 = !DILocation(line: 110, column: 10, scope: !840, inlinedAt: !854)
!856 = !DILocation(line: 263, column: 15, scope: !658)
!857 = distinct !{!857, !753, !858, !497}
!858 = !DILocation(line: 264, column: 13, scope: !649)
!859 = !DILocation(line: 265, column: 15, scope: !649)
!860 = !DILocation(line: 266, column: 15, scope: !649)
!861 = !DILocation(line: 267, column: 20, scope: !862)
!862 = distinct !DILexicalBlock(scope: !649, file: !10, line: 267, column: 15)
!863 = !DILocation(line: 267, column: 15, scope: !649)
!864 = !DILocation(line: 0, scope: !840, inlinedAt: !865)
!865 = distinct !DILocation(line: 268, column: 13, scope: !862)
!866 = !DILocation(line: 110, column: 10, scope: !840, inlinedAt: !865)
!867 = !DILocation(line: 276, column: 15, scope: !746)
!868 = !DILocation(line: 277, column: 15, scope: !746)
!869 = !DILocation(line: 0, scope: !840, inlinedAt: !870)
!870 = distinct !DILocation(line: 279, column: 13, scope: !748)
!871 = !DILocation(line: 110, column: 10, scope: !840, inlinedAt: !870)
!872 = !DILocation(line: 0, scope: !840, inlinedAt: !873)
!873 = distinct !DILocation(line: 284, column: 5, scope: !874)
!874 = distinct !DILexicalBlock(scope: !633, file: !10, line: 283, column: 7)
!875 = !DILocation(line: 110, column: 10, scope: !840, inlinedAt: !873)
!876 = !DILocation(line: 286, column: 1, scope: !633)
!877 = !DISubprogram(name: "bindtextdomain", scope: !439, file: !439, line: 86, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!878 = !DISubroutineType(types: !879)
!879 = !{!32, !6, !6}
!880 = !DISubprogram(name: "textdomain", scope: !439, file: !439, line: 82, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!881 = !DISubprogram(name: "atexit", scope: !624, file: !624, line: 602, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!882 = !DISubroutineType(types: !883)
!883 = !{!34, !172}
!884 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !130, file: !130, line: 50, type: !565, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !885)
!885 = !{!886}
!886 = !DILocalVariable(name: "file", arg: 1, scope: !884, file: !130, line: 50, type: !6)
!887 = !DILocation(line: 0, scope: !884)
!888 = !DILocation(line: 52, column: 13, scope: !884)
!889 = !DILocation(line: 53, column: 1, scope: !884)
!890 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !130, file: !130, line: 87, type: !891, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !48}
!893 = !{!894}
!894 = !DILocalVariable(name: "ignore", arg: 1, scope: !890, file: !130, line: 87, type: !48)
!895 = !DILocation(line: 0, scope: !890)
!896 = !DILocation(line: 89, column: 16, scope: !890)
!897 = !{!898, !898, i64 0}
!898 = !{!"_Bool", !423, i64 0}
!899 = !DILocation(line: 90, column: 1, scope: !890)
!900 = distinct !DISubprogram(name: "close_stdout", scope: !130, file: !130, line: 116, type: !173, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !901)
!901 = !{!902}
!902 = !DILocalVariable(name: "write_error", scope: !903, file: !130, line: 121, type: !6)
!903 = distinct !DILexicalBlock(scope: !904, file: !130, line: 120, column: 5)
!904 = distinct !DILexicalBlock(scope: !900, file: !130, line: 118, column: 7)
!905 = !DILocation(line: 118, column: 21, scope: !904)
!906 = !DILocation(line: 118, column: 7, scope: !904)
!907 = !DILocation(line: 118, column: 29, scope: !904)
!908 = !DILocation(line: 119, column: 7, scope: !904)
!909 = !DILocation(line: 119, column: 12, scope: !904)
!910 = !{i8 0, i8 2}
!911 = !DILocation(line: 119, column: 25, scope: !904)
!912 = !DILocation(line: 119, column: 28, scope: !904)
!913 = !DILocation(line: 119, column: 34, scope: !904)
!914 = !DILocation(line: 118, column: 7, scope: !900)
!915 = !DILocation(line: 121, column: 33, scope: !903)
!916 = !DILocation(line: 0, scope: !903)
!917 = !DILocation(line: 122, column: 11, scope: !918)
!918 = distinct !DILexicalBlock(scope: !903, file: !130, line: 122, column: 11)
!919 = !DILocation(line: 0, scope: !918)
!920 = !DILocation(line: 122, column: 11, scope: !903)
!921 = !DILocation(line: 123, column: 9, scope: !918)
!922 = !DILocation(line: 126, column: 9, scope: !918)
!923 = !DILocation(line: 128, column: 14, scope: !903)
!924 = !DILocation(line: 128, column: 7, scope: !903)
!925 = !DILocation(line: 133, column: 42, scope: !926)
!926 = distinct !DILexicalBlock(scope: !900, file: !130, line: 133, column: 7)
!927 = !DILocation(line: 133, column: 28, scope: !926)
!928 = !DILocation(line: 133, column: 50, scope: !926)
!929 = !DILocation(line: 133, column: 7, scope: !900)
!930 = !DILocation(line: 134, column: 12, scope: !926)
!931 = !DILocation(line: 134, column: 5, scope: !926)
!932 = !DILocation(line: 135, column: 1, scope: !900)
!933 = distinct !DISubprogram(name: "verror", scope: !137, file: !137, line: 251, type: !934, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !34, !34, !6, !145}
!936 = !{!937, !938, !939, !940}
!937 = !DILocalVariable(name: "status", arg: 1, scope: !933, file: !137, line: 251, type: !34)
!938 = !DILocalVariable(name: "errnum", arg: 2, scope: !933, file: !137, line: 251, type: !34)
!939 = !DILocalVariable(name: "message", arg: 3, scope: !933, file: !137, line: 251, type: !6)
!940 = !DILocalVariable(name: "args", arg: 4, scope: !933, file: !137, line: 251, type: !145)
!941 = !DILocation(line: 0, scope: !933)
!942 = !DILocation(line: 251, column: 1, scope: !933)
!943 = !DILocation(line: 261, column: 3, scope: !933)
!944 = !DILocation(line: 265, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !933, file: !137, line: 265, column: 7)
!946 = !DILocation(line: 265, column: 7, scope: !933)
!947 = !DILocation(line: 266, column: 5, scope: !945)
!948 = !DILocation(line: 272, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !137, line: 268, column: 5)
!950 = !DILocation(line: 276, column: 3, scope: !933)
!951 = !{i64 0, i64 8, !421, i64 8, i64 8, !421, i64 16, i64 8, !421, i64 24, i64 4, !450, i64 28, i64 4, !450}
!952 = !DILocation(line: 282, column: 1, scope: !933)
!953 = distinct !DISubprogram(name: "flush_stdout", scope: !137, file: !137, line: 163, type: !173, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !954)
!954 = !{!955}
!955 = !DILocalVariable(name: "stdout_fd", scope: !953, file: !137, line: 166, type: !34)
!956 = !DILocation(line: 0, scope: !953)
!957 = !DILocalVariable(name: "fd", arg: 1, scope: !958, file: !137, line: 145, type: !34)
!958 = distinct !DISubprogram(name: "is_open", scope: !137, file: !137, line: 145, type: !842, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !959)
!959 = !{!957}
!960 = !DILocation(line: 0, scope: !958, inlinedAt: !961)
!961 = distinct !DILocation(line: 182, column: 25, scope: !962)
!962 = distinct !DILexicalBlock(scope: !953, file: !137, line: 182, column: 7)
!963 = !DILocation(line: 157, column: 15, scope: !958, inlinedAt: !961)
!964 = !DILocation(line: 182, column: 25, scope: !962)
!965 = !DILocation(line: 182, column: 7, scope: !953)
!966 = !DILocation(line: 184, column: 5, scope: !962)
!967 = !DILocation(line: 185, column: 1, scope: !953)
!968 = distinct !DISubprogram(name: "error_tail", scope: !137, file: !137, line: 219, type: !934, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !969)
!969 = !{!970, !971, !972, !973}
!970 = !DILocalVariable(name: "status", arg: 1, scope: !968, file: !137, line: 219, type: !34)
!971 = !DILocalVariable(name: "errnum", arg: 2, scope: !968, file: !137, line: 219, type: !34)
!972 = !DILocalVariable(name: "message", arg: 3, scope: !968, file: !137, line: 219, type: !6)
!973 = !DILocalVariable(name: "args", arg: 4, scope: !968, file: !137, line: 219, type: !145)
!974 = !DILocation(line: 0, scope: !968)
!975 = !DILocation(line: 219, column: 1, scope: !968)
!976 = !DILocation(line: 229, column: 13, scope: !968)
!977 = !DILocation(line: 229, column: 3, scope: !968)
!978 = !DILocalVariable(name: "__stream", arg: 1, scope: !979, file: !980, line: 132, type: !983)
!979 = distinct !DISubprogram(name: "vfprintf", scope: !980, file: !980, line: 132, type: !981, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1018)
!980 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!981 = !DISubroutineType(types: !982)
!982 = !{!34, !983, !446, !147}
!983 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !984)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !986, file: !65, line: 51, baseType: !34, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !986, file: !65, line: 54, baseType: !32, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !986, file: !65, line: 55, baseType: !32, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !986, file: !65, line: 56, baseType: !32, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !986, file: !65, line: 57, baseType: !32, size: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !986, file: !65, line: 58, baseType: !32, size: 64, offset: 320)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !986, file: !65, line: 59, baseType: !32, size: 64, offset: 384)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !986, file: !65, line: 60, baseType: !32, size: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !986, file: !65, line: 61, baseType: !32, size: 64, offset: 512)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !986, file: !65, line: 64, baseType: !32, size: 64, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !986, file: !65, line: 65, baseType: !32, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !986, file: !65, line: 66, baseType: !32, size: 64, offset: 704)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !986, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !986, file: !65, line: 70, baseType: !1002, size: 64, offset: 832)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !986, file: !65, line: 72, baseType: !34, size: 32, offset: 896)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !986, file: !65, line: 73, baseType: !34, size: 32, offset: 928)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !986, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !986, file: !65, line: 77, baseType: !35, size: 16, offset: 1024)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !986, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !986, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !986, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !986, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !986, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !986, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !986, file: !65, line: 93, baseType: !1002, size: 64, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !986, file: !65, line: 94, baseType: !33, size: 64, offset: 1408)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !986, file: !65, line: 95, baseType: !36, size: 64, offset: 1472)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !986, file: !65, line: 96, baseType: !34, size: 32, offset: 1536)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !986, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!1018 = !{!978, !1019, !1020}
!1019 = !DILocalVariable(name: "__fmt", arg: 2, scope: !979, file: !980, line: 133, type: !446)
!1020 = !DILocalVariable(name: "__ap", arg: 3, scope: !979, file: !980, line: 133, type: !147)
!1021 = !DILocation(line: 0, scope: !979, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 229, column: 3, scope: !968)
!1023 = !DILocation(line: 135, column: 10, scope: !979, inlinedAt: !1022)
!1024 = !{!1025, !1027}
!1025 = distinct !{!1025, !1026, !"vfprintf.inline: argument 0"}
!1026 = distinct !{!1026, !"vfprintf.inline"}
!1027 = distinct !{!1027, !1026, !"vfprintf.inline: argument 1"}
!1028 = !DILocation(line: 232, column: 3, scope: !968)
!1029 = !DILocation(line: 233, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !968, file: !137, line: 233, column: 7)
!1031 = !DILocation(line: 233, column: 7, scope: !968)
!1032 = !DILocalVariable(name: "errnum", arg: 1, scope: !1033, file: !137, line: 188, type: !34)
!1033 = distinct !DISubprogram(name: "print_errno_message", scope: !137, file: !137, line: 188, type: !411, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1034)
!1034 = !{!1032, !1035, !1036}
!1035 = !DILocalVariable(name: "s", scope: !1033, file: !137, line: 190, type: !6)
!1036 = !DILocalVariable(name: "errbuf", scope: !1033, file: !137, line: 193, type: !1037)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1038)
!1038 = !{!1039}
!1039 = !DISubrange(count: 1024)
!1040 = !DILocation(line: 0, scope: !1033, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 234, column: 5, scope: !1030)
!1042 = !DILocation(line: 193, column: 3, scope: !1033, inlinedAt: !1041)
!1043 = !DILocation(line: 193, column: 8, scope: !1033, inlinedAt: !1041)
!1044 = !DILocation(line: 195, column: 7, scope: !1033, inlinedAt: !1041)
!1045 = !DILocation(line: 207, column: 9, scope: !1046, inlinedAt: !1041)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !137, line: 207, column: 7)
!1047 = !DILocation(line: 207, column: 7, scope: !1033, inlinedAt: !1041)
!1048 = !DILocation(line: 208, column: 9, scope: !1046, inlinedAt: !1041)
!1049 = !DILocation(line: 208, column: 5, scope: !1046, inlinedAt: !1041)
!1050 = !DILocation(line: 214, column: 3, scope: !1033, inlinedAt: !1041)
!1051 = !DILocation(line: 216, column: 1, scope: !1033, inlinedAt: !1041)
!1052 = !DILocation(line: 234, column: 5, scope: !1030)
!1053 = !DILocation(line: 238, column: 3, scope: !968)
!1054 = !DILocalVariable(name: "__c", arg: 1, scope: !1055, file: !841, line: 101, type: !34)
!1055 = distinct !DISubprogram(name: "putc_unlocked", scope: !841, file: !841, line: 101, type: !1056, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!34, !34, !984}
!1058 = !{!1054, !1059}
!1059 = !DILocalVariable(name: "__stream", arg: 2, scope: !1055, file: !841, line: 101, type: !984)
!1060 = !DILocation(line: 0, scope: !1055, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 238, column: 3, scope: !968)
!1062 = !DILocation(line: 103, column: 10, scope: !1055, inlinedAt: !1061)
!1063 = !DILocation(line: 240, column: 3, scope: !968)
!1064 = !DILocation(line: 241, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !968, file: !137, line: 241, column: 7)
!1066 = !DILocation(line: 241, column: 7, scope: !968)
!1067 = !DILocation(line: 242, column: 5, scope: !1065)
!1068 = !DILocation(line: 243, column: 1, scope: !968)
!1069 = !DISubprogram(name: "strerror_r", scope: !1070, file: !1070, line: 444, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!1070 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!32, !34, !32, !36}
!1073 = !DISubprogram(name: "fflush_unlocked", scope: !146, file: !146, line: 239, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!34, !984}
!1076 = !DISubprogram(name: "fcntl", scope: !1077, file: !1077, line: 149, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!1077 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!34, !34, !34, null}
!1080 = distinct !DISubprogram(name: "error", scope: !137, file: !137, line: 285, type: !1081, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !34, !34, !6, null}
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DILocalVariable(name: "status", arg: 1, scope: !1080, file: !137, line: 285, type: !34)
!1085 = !DILocalVariable(name: "errnum", arg: 2, scope: !1080, file: !137, line: 285, type: !34)
!1086 = !DILocalVariable(name: "message", arg: 3, scope: !1080, file: !137, line: 285, type: !6)
!1087 = !DILocalVariable(name: "ap", scope: !1080, file: !137, line: 287, type: !145)
!1088 = !DILocation(line: 0, scope: !1080)
!1089 = !DILocation(line: 287, column: 3, scope: !1080)
!1090 = !DILocation(line: 287, column: 11, scope: !1080)
!1091 = !DILocation(line: 288, column: 3, scope: !1080)
!1092 = !DILocation(line: 289, column: 3, scope: !1080)
!1093 = !DILocation(line: 290, column: 3, scope: !1080)
!1094 = !DILocation(line: 291, column: 1, scope: !1080)
!1095 = !DILocation(line: 0, scope: !142)
!1096 = !DILocation(line: 298, column: 1, scope: !142)
!1097 = !DILocation(line: 302, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !142, file: !137, line: 302, column: 7)
!1099 = !DILocation(line: 302, column: 7, scope: !142)
!1100 = !DILocation(line: 307, column: 11, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !137, line: 307, column: 11)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !137, line: 303, column: 5)
!1103 = !DILocation(line: 307, column: 27, scope: !1101)
!1104 = !DILocation(line: 308, column: 11, scope: !1101)
!1105 = !DILocation(line: 308, column: 28, scope: !1101)
!1106 = !DILocation(line: 308, column: 25, scope: !1101)
!1107 = !DILocation(line: 309, column: 15, scope: !1101)
!1108 = !DILocation(line: 309, column: 33, scope: !1101)
!1109 = !DILocation(line: 310, column: 19, scope: !1101)
!1110 = !DILocation(line: 311, column: 22, scope: !1101)
!1111 = !DILocation(line: 311, column: 56, scope: !1101)
!1112 = !DILocation(line: 307, column: 11, scope: !1102)
!1113 = !DILocation(line: 316, column: 21, scope: !1102)
!1114 = !DILocation(line: 317, column: 23, scope: !1102)
!1115 = !DILocation(line: 318, column: 5, scope: !1102)
!1116 = !DILocation(line: 327, column: 3, scope: !142)
!1117 = !DILocation(line: 331, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !142, file: !137, line: 331, column: 7)
!1119 = !DILocation(line: 331, column: 7, scope: !142)
!1120 = !DILocation(line: 332, column: 5, scope: !1118)
!1121 = !DILocation(line: 338, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !137, line: 334, column: 5)
!1123 = !DILocation(line: 346, column: 3, scope: !142)
!1124 = !DILocation(line: 350, column: 3, scope: !142)
!1125 = !DILocation(line: 356, column: 1, scope: !142)
!1126 = distinct !DISubprogram(name: "error_at_line", scope: !137, file: !137, line: 359, type: !1127, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !34, !34, !6, !13, !6, null}
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135}
!1130 = !DILocalVariable(name: "status", arg: 1, scope: !1126, file: !137, line: 359, type: !34)
!1131 = !DILocalVariable(name: "errnum", arg: 2, scope: !1126, file: !137, line: 359, type: !34)
!1132 = !DILocalVariable(name: "file_name", arg: 3, scope: !1126, file: !137, line: 359, type: !6)
!1133 = !DILocalVariable(name: "line_number", arg: 4, scope: !1126, file: !137, line: 360, type: !13)
!1134 = !DILocalVariable(name: "message", arg: 5, scope: !1126, file: !137, line: 360, type: !6)
!1135 = !DILocalVariable(name: "ap", scope: !1126, file: !137, line: 362, type: !145)
!1136 = !DILocation(line: 0, scope: !1126)
!1137 = !DILocation(line: 362, column: 3, scope: !1126)
!1138 = !DILocation(line: 362, column: 11, scope: !1126)
!1139 = !DILocation(line: 363, column: 3, scope: !1126)
!1140 = !DILocation(line: 364, column: 3, scope: !1126)
!1141 = !DILocation(line: 366, column: 3, scope: !1126)
!1142 = !DILocation(line: 367, column: 1, scope: !1126)
!1143 = distinct !DISubprogram(name: "getprogname", scope: !337, file: !337, line: 54, type: !1144, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !442)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!6}
!1146 = !DILocation(line: 58, column: 10, scope: !1143)
!1147 = !DILocation(line: 58, column: 3, scope: !1143)
!1148 = distinct !DISubprogram(name: "set_program_name", scope: !178, file: !178, line: 37, type: !565, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !1149)
!1149 = !{!1150, !1151, !1152}
!1150 = !DILocalVariable(name: "argv0", arg: 1, scope: !1148, file: !178, line: 37, type: !6)
!1151 = !DILocalVariable(name: "slash", scope: !1148, file: !178, line: 44, type: !6)
!1152 = !DILocalVariable(name: "base", scope: !1148, file: !178, line: 45, type: !6)
!1153 = !DILocation(line: 0, scope: !1148)
!1154 = !DILocation(line: 44, column: 23, scope: !1148)
!1155 = !DILocation(line: 45, column: 22, scope: !1148)
!1156 = !DILocation(line: 46, column: 17, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1148, file: !178, line: 46, column: 7)
!1158 = !DILocation(line: 46, column: 9, scope: !1157)
!1159 = !DILocation(line: 46, column: 25, scope: !1157)
!1160 = !DILocation(line: 46, column: 40, scope: !1157)
!1161 = !DILocalVariable(name: "__s1", arg: 1, scope: !1162, file: !463, line: 974, type: !631)
!1162 = distinct !DISubprogram(name: "memeq", scope: !463, file: !463, line: 974, type: !1163, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !1165)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!48, !631, !631, !36}
!1165 = !{!1161, !1166, !1167}
!1166 = !DILocalVariable(name: "__s2", arg: 2, scope: !1162, file: !463, line: 974, type: !631)
!1167 = !DILocalVariable(name: "__n", arg: 3, scope: !1162, file: !463, line: 974, type: !36)
!1168 = !DILocation(line: 0, scope: !1162, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 46, column: 28, scope: !1157)
!1170 = !DILocation(line: 976, column: 11, scope: !1162, inlinedAt: !1169)
!1171 = !DILocation(line: 976, column: 10, scope: !1162, inlinedAt: !1169)
!1172 = !DILocation(line: 46, column: 7, scope: !1148)
!1173 = !DILocation(line: 49, column: 11, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !178, line: 49, column: 11)
!1175 = distinct !DILexicalBlock(scope: !1157, file: !178, line: 47, column: 5)
!1176 = !DILocation(line: 49, column: 36, scope: !1174)
!1177 = !DILocation(line: 49, column: 11, scope: !1175)
!1178 = !DILocation(line: 65, column: 16, scope: !1148)
!1179 = !DILocation(line: 71, column: 27, scope: !1148)
!1180 = !DILocation(line: 74, column: 33, scope: !1148)
!1181 = !DILocation(line: 76, column: 1, scope: !1148)
!1182 = !DILocation(line: 0, scope: !183)
!1183 = !DILocation(line: 40, column: 29, scope: !183)
!1184 = !DILocation(line: 41, column: 19, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !183, file: !184, line: 41, column: 7)
!1186 = !DILocation(line: 41, column: 7, scope: !183)
!1187 = !DILocation(line: 47, column: 3, scope: !183)
!1188 = !DILocation(line: 48, column: 3, scope: !183)
!1189 = !DILocation(line: 48, column: 13, scope: !183)
!1190 = !DILocalVariable(name: "ps", arg: 1, scope: !1191, file: !1192, line: 1135, type: !1195)
!1191 = distinct !DISubprogram(name: "mbszero", scope: !1192, file: !1192, line: 1135, type: !1193, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !1196)
!1192 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1196 = !{!1190}
!1197 = !DILocation(line: 0, scope: !1191, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 48, column: 18, scope: !183)
!1199 = !DILocalVariable(name: "__dest", arg: 1, scope: !1200, file: !1201, line: 57, type: !33)
!1200 = distinct !DISubprogram(name: "memset", scope: !1201, file: !1201, line: 57, type: !1202, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !1204)
!1201 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!33, !33, !34, !36}
!1204 = !{!1199, !1205, !1206}
!1205 = !DILocalVariable(name: "__ch", arg: 2, scope: !1200, file: !1201, line: 57, type: !34)
!1206 = !DILocalVariable(name: "__len", arg: 3, scope: !1200, file: !1201, line: 57, type: !36)
!1207 = !DILocation(line: 0, scope: !1200, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 1137, column: 3, scope: !1191, inlinedAt: !1198)
!1209 = !DILocation(line: 59, column: 10, scope: !1200, inlinedAt: !1208)
!1210 = !DILocation(line: 49, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !183, file: !184, line: 49, column: 7)
!1212 = !DILocation(line: 49, column: 39, scope: !1211)
!1213 = !DILocation(line: 49, column: 44, scope: !1211)
!1214 = !DILocation(line: 54, column: 1, scope: !183)
!1215 = !DISubprogram(name: "mbrtoc32", scope: !195, file: !195, line: 57, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!36, !1218, !446, !36, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1219)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1195)
!1221 = distinct !DISubprogram(name: "clone_quoting_options", scope: !220, file: !220, line: 113, type: !1222, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1225)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1224, !1224}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!1225 = !{!1226, !1227, !1228}
!1226 = !DILocalVariable(name: "o", arg: 1, scope: !1221, file: !220, line: 113, type: !1224)
!1227 = !DILocalVariable(name: "saved_errno", scope: !1221, file: !220, line: 115, type: !34)
!1228 = !DILocalVariable(name: "p", scope: !1221, file: !220, line: 116, type: !1224)
!1229 = !DILocation(line: 0, scope: !1221)
!1230 = !DILocation(line: 115, column: 21, scope: !1221)
!1231 = !DILocation(line: 116, column: 40, scope: !1221)
!1232 = !DILocation(line: 116, column: 31, scope: !1221)
!1233 = !DILocation(line: 118, column: 9, scope: !1221)
!1234 = !DILocation(line: 119, column: 3, scope: !1221)
!1235 = distinct !DISubprogram(name: "get_quoting_style", scope: !220, file: !220, line: 124, type: !1236, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1240)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!222, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!1240 = !{!1241}
!1241 = !DILocalVariable(name: "o", arg: 1, scope: !1235, file: !220, line: 124, type: !1238)
!1242 = !DILocation(line: 0, scope: !1235)
!1243 = !DILocation(line: 126, column: 11, scope: !1235)
!1244 = !DILocation(line: 126, column: 46, scope: !1235)
!1245 = !{!1246, !423, i64 0}
!1246 = !{!"quoting_options", !423, i64 0, !451, i64 4, !423, i64 8, !422, i64 40, !422, i64 48}
!1247 = !DILocation(line: 126, column: 3, scope: !1235)
!1248 = distinct !DISubprogram(name: "set_quoting_style", scope: !220, file: !220, line: 132, type: !1249, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !1224, !222}
!1251 = !{!1252, !1253}
!1252 = !DILocalVariable(name: "o", arg: 1, scope: !1248, file: !220, line: 132, type: !1224)
!1253 = !DILocalVariable(name: "s", arg: 2, scope: !1248, file: !220, line: 132, type: !222)
!1254 = !DILocation(line: 0, scope: !1248)
!1255 = !DILocation(line: 134, column: 4, scope: !1248)
!1256 = !DILocation(line: 134, column: 39, scope: !1248)
!1257 = !DILocation(line: 134, column: 45, scope: !1248)
!1258 = !DILocation(line: 135, column: 1, scope: !1248)
!1259 = distinct !DISubprogram(name: "set_char_quoting", scope: !220, file: !220, line: 143, type: !1260, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!34, !1224, !8, !34}
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1269, !1270}
!1263 = !DILocalVariable(name: "o", arg: 1, scope: !1259, file: !220, line: 143, type: !1224)
!1264 = !DILocalVariable(name: "c", arg: 2, scope: !1259, file: !220, line: 143, type: !8)
!1265 = !DILocalVariable(name: "i", arg: 3, scope: !1259, file: !220, line: 143, type: !34)
!1266 = !DILocalVariable(name: "uc", scope: !1259, file: !220, line: 145, type: !39)
!1267 = !DILocalVariable(name: "p", scope: !1259, file: !220, line: 146, type: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1269 = !DILocalVariable(name: "shift", scope: !1259, file: !220, line: 148, type: !34)
!1270 = !DILocalVariable(name: "r", scope: !1259, file: !220, line: 149, type: !13)
!1271 = !DILocation(line: 0, scope: !1259)
!1272 = !DILocation(line: 147, column: 6, scope: !1259)
!1273 = !DILocation(line: 147, column: 62, scope: !1259)
!1274 = !DILocation(line: 147, column: 57, scope: !1259)
!1275 = !DILocation(line: 148, column: 15, scope: !1259)
!1276 = !DILocation(line: 149, column: 21, scope: !1259)
!1277 = !DILocation(line: 149, column: 24, scope: !1259)
!1278 = !DILocation(line: 149, column: 34, scope: !1259)
!1279 = !DILocation(line: 150, column: 13, scope: !1259)
!1280 = !DILocation(line: 150, column: 19, scope: !1259)
!1281 = !DILocation(line: 150, column: 24, scope: !1259)
!1282 = !DILocation(line: 150, column: 6, scope: !1259)
!1283 = !DILocation(line: 151, column: 3, scope: !1259)
!1284 = distinct !DISubprogram(name: "set_quoting_flags", scope: !220, file: !220, line: 159, type: !1285, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!34, !1224, !34}
!1287 = !{!1288, !1289, !1290}
!1288 = !DILocalVariable(name: "o", arg: 1, scope: !1284, file: !220, line: 159, type: !1224)
!1289 = !DILocalVariable(name: "i", arg: 2, scope: !1284, file: !220, line: 159, type: !34)
!1290 = !DILocalVariable(name: "r", scope: !1284, file: !220, line: 163, type: !34)
!1291 = !DILocation(line: 0, scope: !1284)
!1292 = !DILocation(line: 161, column: 8, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1284, file: !220, line: 161, column: 7)
!1294 = !DILocation(line: 161, column: 7, scope: !1284)
!1295 = !DILocation(line: 163, column: 14, scope: !1284)
!1296 = !{!1246, !451, i64 4}
!1297 = !DILocation(line: 164, column: 12, scope: !1284)
!1298 = !DILocation(line: 165, column: 3, scope: !1284)
!1299 = distinct !DISubprogram(name: "set_custom_quoting", scope: !220, file: !220, line: 169, type: !1300, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1224, !6, !6}
!1302 = !{!1303, !1304, !1305}
!1303 = !DILocalVariable(name: "o", arg: 1, scope: !1299, file: !220, line: 169, type: !1224)
!1304 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1299, file: !220, line: 170, type: !6)
!1305 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1299, file: !220, line: 170, type: !6)
!1306 = !DILocation(line: 0, scope: !1299)
!1307 = !DILocation(line: 172, column: 8, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1299, file: !220, line: 172, column: 7)
!1309 = !DILocation(line: 172, column: 7, scope: !1299)
!1310 = !DILocation(line: 174, column: 6, scope: !1299)
!1311 = !DILocation(line: 174, column: 12, scope: !1299)
!1312 = !DILocation(line: 175, column: 8, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1299, file: !220, line: 175, column: 7)
!1314 = !DILocation(line: 175, column: 19, scope: !1313)
!1315 = !DILocation(line: 176, column: 5, scope: !1313)
!1316 = !DILocation(line: 177, column: 6, scope: !1299)
!1317 = !DILocation(line: 177, column: 17, scope: !1299)
!1318 = !{!1246, !422, i64 40}
!1319 = !DILocation(line: 178, column: 6, scope: !1299)
!1320 = !DILocation(line: 178, column: 18, scope: !1299)
!1321 = !{!1246, !422, i64 48}
!1322 = !DILocation(line: 179, column: 1, scope: !1299)
!1323 = distinct !DISubprogram(name: "quotearg_buffer", scope: !220, file: !220, line: 774, type: !1324, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!36, !32, !36, !6, !36, !1238}
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1327 = !DILocalVariable(name: "buffer", arg: 1, scope: !1323, file: !220, line: 774, type: !32)
!1328 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1323, file: !220, line: 774, type: !36)
!1329 = !DILocalVariable(name: "arg", arg: 3, scope: !1323, file: !220, line: 775, type: !6)
!1330 = !DILocalVariable(name: "argsize", arg: 4, scope: !1323, file: !220, line: 775, type: !36)
!1331 = !DILocalVariable(name: "o", arg: 5, scope: !1323, file: !220, line: 776, type: !1238)
!1332 = !DILocalVariable(name: "p", scope: !1323, file: !220, line: 778, type: !1238)
!1333 = !DILocalVariable(name: "saved_errno", scope: !1323, file: !220, line: 779, type: !34)
!1334 = !DILocalVariable(name: "r", scope: !1323, file: !220, line: 780, type: !36)
!1335 = !DILocation(line: 0, scope: !1323)
!1336 = !DILocation(line: 778, column: 37, scope: !1323)
!1337 = !DILocation(line: 779, column: 21, scope: !1323)
!1338 = !DILocation(line: 781, column: 43, scope: !1323)
!1339 = !DILocation(line: 781, column: 53, scope: !1323)
!1340 = !DILocation(line: 781, column: 60, scope: !1323)
!1341 = !DILocation(line: 782, column: 43, scope: !1323)
!1342 = !DILocation(line: 782, column: 58, scope: !1323)
!1343 = !DILocation(line: 780, column: 14, scope: !1323)
!1344 = !DILocation(line: 783, column: 9, scope: !1323)
!1345 = !DILocation(line: 784, column: 3, scope: !1323)
!1346 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !220, file: !220, line: 251, type: !1347, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1351)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!36, !32, !36, !6, !36, !222, !34, !1349, !6, !6}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1376, !1378, !1381, !1382, !1383, !1384, !1387, !1388, !1391, !1395, !1396, !1404, !1407, !1408, !1410, !1411, !1412, !1413}
!1352 = !DILocalVariable(name: "buffer", arg: 1, scope: !1346, file: !220, line: 251, type: !32)
!1353 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1346, file: !220, line: 251, type: !36)
!1354 = !DILocalVariable(name: "arg", arg: 3, scope: !1346, file: !220, line: 252, type: !6)
!1355 = !DILocalVariable(name: "argsize", arg: 4, scope: !1346, file: !220, line: 252, type: !36)
!1356 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1346, file: !220, line: 253, type: !222)
!1357 = !DILocalVariable(name: "flags", arg: 6, scope: !1346, file: !220, line: 253, type: !34)
!1358 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1346, file: !220, line: 254, type: !1349)
!1359 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1346, file: !220, line: 255, type: !6)
!1360 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1346, file: !220, line: 256, type: !6)
!1361 = !DILocalVariable(name: "unibyte_locale", scope: !1346, file: !220, line: 258, type: !48)
!1362 = !DILocalVariable(name: "len", scope: !1346, file: !220, line: 260, type: !36)
!1363 = !DILocalVariable(name: "orig_buffersize", scope: !1346, file: !220, line: 261, type: !36)
!1364 = !DILocalVariable(name: "quote_string", scope: !1346, file: !220, line: 262, type: !6)
!1365 = !DILocalVariable(name: "quote_string_len", scope: !1346, file: !220, line: 263, type: !36)
!1366 = !DILocalVariable(name: "backslash_escapes", scope: !1346, file: !220, line: 264, type: !48)
!1367 = !DILocalVariable(name: "elide_outer_quotes", scope: !1346, file: !220, line: 265, type: !48)
!1368 = !DILocalVariable(name: "encountered_single_quote", scope: !1346, file: !220, line: 266, type: !48)
!1369 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1346, file: !220, line: 267, type: !48)
!1370 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1346, file: !220, line: 309, type: !48)
!1371 = !DILocalVariable(name: "lq", scope: !1372, file: !220, line: 361, type: !6)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !220, line: 361, column: 11)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !220, line: 360, column: 13)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !220, line: 333, column: 7)
!1375 = distinct !DILexicalBlock(scope: !1346, file: !220, line: 312, column: 5)
!1376 = !DILocalVariable(name: "i", scope: !1377, file: !220, line: 395, type: !36)
!1377 = distinct !DILexicalBlock(scope: !1346, file: !220, line: 395, column: 3)
!1378 = !DILocalVariable(name: "is_right_quote", scope: !1379, file: !220, line: 397, type: !48)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !220, line: 396, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !220, line: 395, column: 3)
!1381 = !DILocalVariable(name: "escaping", scope: !1379, file: !220, line: 398, type: !48)
!1382 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1379, file: !220, line: 399, type: !48)
!1383 = !DILocalVariable(name: "c", scope: !1379, file: !220, line: 417, type: !39)
!1384 = !DILocalVariable(name: "m", scope: !1385, file: !220, line: 598, type: !36)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !220, line: 596, column: 11)
!1386 = distinct !DILexicalBlock(scope: !1379, file: !220, line: 419, column: 9)
!1387 = !DILocalVariable(name: "printable", scope: !1385, file: !220, line: 600, type: !48)
!1388 = !DILocalVariable(name: "mbs", scope: !1389, file: !220, line: 609, type: !279)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !220, line: 608, column: 15)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !220, line: 602, column: 17)
!1391 = !DILocalVariable(name: "w", scope: !1392, file: !220, line: 618, type: !194)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !220, line: 617, column: 19)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !220, line: 616, column: 17)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !220, line: 616, column: 17)
!1395 = !DILocalVariable(name: "bytes", scope: !1392, file: !220, line: 619, type: !36)
!1396 = !DILocalVariable(name: "j", scope: !1397, file: !220, line: 648, type: !36)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !220, line: 648, column: 29)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !220, line: 647, column: 27)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !220, line: 645, column: 29)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !220, line: 636, column: 23)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !220, line: 628, column: 30)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !220, line: 623, column: 30)
!1403 = distinct !DILexicalBlock(scope: !1392, file: !220, line: 621, column: 25)
!1404 = !DILocalVariable(name: "ilim", scope: !1405, file: !220, line: 674, type: !36)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !220, line: 671, column: 15)
!1406 = distinct !DILexicalBlock(scope: !1385, file: !220, line: 670, column: 17)
!1407 = !DILabel(scope: !1346, name: "process_input", file: !220, line: 308)
!1408 = !DILabel(scope: !1409, name: "c_and_shell_escape", file: !220, line: 502)
!1409 = distinct !DILexicalBlock(scope: !1386, file: !220, line: 478, column: 9)
!1410 = !DILabel(scope: !1409, name: "c_escape", file: !220, line: 507)
!1411 = !DILabel(scope: !1379, name: "store_escape", file: !220, line: 709)
!1412 = !DILabel(scope: !1379, name: "store_c", file: !220, line: 712)
!1413 = !DILabel(scope: !1346, name: "force_outer_quoting_style", file: !220, line: 753)
!1414 = !DILocation(line: 0, scope: !1346)
!1415 = !DILocation(line: 258, column: 25, scope: !1346)
!1416 = !DILocation(line: 258, column: 36, scope: !1346)
!1417 = !DILocation(line: 267, column: 3, scope: !1346)
!1418 = !DILocation(line: 261, column: 10, scope: !1346)
!1419 = !DILocation(line: 262, column: 15, scope: !1346)
!1420 = !DILocation(line: 263, column: 10, scope: !1346)
!1421 = !DILocation(line: 308, column: 2, scope: !1346)
!1422 = !DILocation(line: 311, column: 3, scope: !1346)
!1423 = !DILocation(line: 318, column: 11, scope: !1375)
!1424 = !DILocation(line: 319, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !220, line: 319, column: 9)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !220, line: 319, column: 9)
!1427 = distinct !DILexicalBlock(scope: !1375, file: !220, line: 318, column: 11)
!1428 = !DILocation(line: 319, column: 9, scope: !1426)
!1429 = !DILocation(line: 0, scope: !270, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 357, column: 26, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !220, line: 335, column: 11)
!1432 = distinct !DILexicalBlock(scope: !1374, file: !220, line: 334, column: 13)
!1433 = !DILocation(line: 199, column: 29, scope: !270, inlinedAt: !1430)
!1434 = !DILocation(line: 201, column: 19, scope: !1435, inlinedAt: !1430)
!1435 = distinct !DILexicalBlock(scope: !270, file: !220, line: 201, column: 7)
!1436 = !DILocation(line: 201, column: 7, scope: !270, inlinedAt: !1430)
!1437 = !DILocation(line: 229, column: 3, scope: !270, inlinedAt: !1430)
!1438 = !DILocation(line: 230, column: 3, scope: !270, inlinedAt: !1430)
!1439 = !DILocation(line: 230, column: 13, scope: !270, inlinedAt: !1430)
!1440 = !DILocalVariable(name: "ps", arg: 1, scope: !1441, file: !1192, line: 1135, type: !1444)
!1441 = distinct !DISubprogram(name: "mbszero", scope: !1192, file: !1192, line: 1135, type: !1442, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1445)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !1444}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!1445 = !{!1440}
!1446 = !DILocation(line: 0, scope: !1441, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 230, column: 18, scope: !270, inlinedAt: !1430)
!1448 = !DILocalVariable(name: "__dest", arg: 1, scope: !1449, file: !1201, line: 57, type: !33)
!1449 = distinct !DISubprogram(name: "memset", scope: !1201, file: !1201, line: 57, type: !1202, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1450)
!1450 = !{!1448, !1451, !1452}
!1451 = !DILocalVariable(name: "__ch", arg: 2, scope: !1449, file: !1201, line: 57, type: !34)
!1452 = !DILocalVariable(name: "__len", arg: 3, scope: !1449, file: !1201, line: 57, type: !36)
!1453 = !DILocation(line: 0, scope: !1449, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 1137, column: 3, scope: !1441, inlinedAt: !1447)
!1455 = !DILocation(line: 59, column: 10, scope: !1449, inlinedAt: !1454)
!1456 = !DILocation(line: 231, column: 7, scope: !1457, inlinedAt: !1430)
!1457 = distinct !DILexicalBlock(scope: !270, file: !220, line: 231, column: 7)
!1458 = !DILocation(line: 231, column: 40, scope: !1457, inlinedAt: !1430)
!1459 = !DILocation(line: 231, column: 45, scope: !1457, inlinedAt: !1430)
!1460 = !DILocation(line: 235, column: 1, scope: !270, inlinedAt: !1430)
!1461 = !DILocation(line: 0, scope: !270, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 358, column: 27, scope: !1431)
!1463 = !DILocation(line: 199, column: 29, scope: !270, inlinedAt: !1462)
!1464 = !DILocation(line: 201, column: 19, scope: !1435, inlinedAt: !1462)
!1465 = !DILocation(line: 201, column: 7, scope: !270, inlinedAt: !1462)
!1466 = !DILocation(line: 229, column: 3, scope: !270, inlinedAt: !1462)
!1467 = !DILocation(line: 230, column: 3, scope: !270, inlinedAt: !1462)
!1468 = !DILocation(line: 230, column: 13, scope: !270, inlinedAt: !1462)
!1469 = !DILocation(line: 0, scope: !1441, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 230, column: 18, scope: !270, inlinedAt: !1462)
!1471 = !DILocation(line: 0, scope: !1449, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 1137, column: 3, scope: !1441, inlinedAt: !1470)
!1473 = !DILocation(line: 59, column: 10, scope: !1449, inlinedAt: !1472)
!1474 = !DILocation(line: 231, column: 7, scope: !1457, inlinedAt: !1462)
!1475 = !DILocation(line: 231, column: 40, scope: !1457, inlinedAt: !1462)
!1476 = !DILocation(line: 231, column: 45, scope: !1457, inlinedAt: !1462)
!1477 = !DILocation(line: 235, column: 1, scope: !270, inlinedAt: !1462)
!1478 = !DILocation(line: 360, column: 13, scope: !1374)
!1479 = !DILocation(line: 0, scope: !1372)
!1480 = !DILocation(line: 361, column: 45, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1372, file: !220, line: 361, column: 11)
!1482 = !DILocation(line: 361, column: 11, scope: !1372)
!1483 = !DILocation(line: 362, column: 13, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !220, line: 362, column: 13)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !220, line: 362, column: 13)
!1486 = !DILocation(line: 362, column: 13, scope: !1485)
!1487 = !DILocation(line: 361, column: 52, scope: !1481)
!1488 = distinct !{!1488, !1482, !1489, !497}
!1489 = !DILocation(line: 362, column: 13, scope: !1372)
!1490 = !DILocation(line: 260, column: 10, scope: !1346)
!1491 = !DILocation(line: 365, column: 28, scope: !1374)
!1492 = !DILocation(line: 367, column: 7, scope: !1375)
!1493 = !DILocation(line: 370, column: 7, scope: !1375)
!1494 = !DILocation(line: 376, column: 11, scope: !1375)
!1495 = !DILocation(line: 381, column: 11, scope: !1375)
!1496 = !DILocation(line: 382, column: 9, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !220, line: 382, column: 9)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !220, line: 382, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1375, file: !220, line: 381, column: 11)
!1500 = !DILocation(line: 382, column: 9, scope: !1498)
!1501 = !DILocation(line: 389, column: 7, scope: !1375)
!1502 = !DILocation(line: 392, column: 7, scope: !1375)
!1503 = !DILocation(line: 0, scope: !1377)
!1504 = !DILocation(line: 395, column: 8, scope: !1377)
!1505 = !DILocation(line: 395, column: 34, scope: !1380)
!1506 = !DILocation(line: 395, column: 26, scope: !1380)
!1507 = !DILocation(line: 395, column: 48, scope: !1380)
!1508 = !DILocation(line: 395, column: 55, scope: !1380)
!1509 = !DILocation(line: 395, column: 3, scope: !1377)
!1510 = !DILocation(line: 395, column: 67, scope: !1380)
!1511 = !DILocation(line: 0, scope: !1379)
!1512 = !DILocation(line: 402, column: 11, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1379, file: !220, line: 401, column: 11)
!1514 = !DILocation(line: 404, column: 17, scope: !1513)
!1515 = !DILocation(line: 405, column: 39, scope: !1513)
!1516 = !DILocation(line: 409, column: 32, scope: !1513)
!1517 = !DILocation(line: 405, column: 19, scope: !1513)
!1518 = !DILocation(line: 405, column: 15, scope: !1513)
!1519 = !DILocation(line: 410, column: 11, scope: !1513)
!1520 = !DILocation(line: 410, column: 25, scope: !1513)
!1521 = !DILocalVariable(name: "__s1", arg: 1, scope: !1522, file: !463, line: 974, type: !631)
!1522 = distinct !DISubprogram(name: "memeq", scope: !463, file: !463, line: 974, type: !1163, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1523)
!1523 = !{!1521, !1524, !1525}
!1524 = !DILocalVariable(name: "__s2", arg: 2, scope: !1522, file: !463, line: 974, type: !631)
!1525 = !DILocalVariable(name: "__n", arg: 3, scope: !1522, file: !463, line: 974, type: !36)
!1526 = !DILocation(line: 0, scope: !1522, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 410, column: 14, scope: !1513)
!1528 = !DILocation(line: 976, column: 11, scope: !1522, inlinedAt: !1527)
!1529 = !DILocation(line: 976, column: 10, scope: !1522, inlinedAt: !1527)
!1530 = !DILocation(line: 401, column: 11, scope: !1379)
!1531 = !DILocation(line: 417, column: 25, scope: !1379)
!1532 = !DILocation(line: 418, column: 7, scope: !1379)
!1533 = !DILocation(line: 421, column: 15, scope: !1386)
!1534 = !DILocation(line: 423, column: 15, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !220, line: 423, column: 15)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !220, line: 422, column: 13)
!1537 = distinct !DILexicalBlock(scope: !1386, file: !220, line: 421, column: 15)
!1538 = !DILocation(line: 423, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !220, line: 423, column: 15)
!1540 = !DILocation(line: 423, column: 15, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !220, line: 423, column: 15)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !220, line: 423, column: 15)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !220, line: 423, column: 15)
!1544 = !DILocation(line: 423, column: 15, scope: !1542)
!1545 = !DILocation(line: 423, column: 15, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !220, line: 423, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !220, line: 423, column: 15)
!1548 = !DILocation(line: 423, column: 15, scope: !1547)
!1549 = !DILocation(line: 423, column: 15, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !220, line: 423, column: 15)
!1551 = distinct !DILexicalBlock(scope: !1543, file: !220, line: 423, column: 15)
!1552 = !DILocation(line: 423, column: 15, scope: !1551)
!1553 = !DILocation(line: 423, column: 15, scope: !1543)
!1554 = !DILocation(line: 423, column: 15, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !220, line: 423, column: 15)
!1556 = distinct !DILexicalBlock(scope: !1535, file: !220, line: 423, column: 15)
!1557 = !DILocation(line: 423, column: 15, scope: !1556)
!1558 = !DILocation(line: 431, column: 19, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1536, file: !220, line: 430, column: 19)
!1560 = !DILocation(line: 431, column: 24, scope: !1559)
!1561 = !DILocation(line: 431, column: 28, scope: !1559)
!1562 = !DILocation(line: 431, column: 38, scope: !1559)
!1563 = !DILocation(line: 431, column: 48, scope: !1559)
!1564 = !DILocation(line: 431, column: 59, scope: !1559)
!1565 = !DILocation(line: 433, column: 19, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !220, line: 433, column: 19)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !220, line: 433, column: 19)
!1568 = distinct !DILexicalBlock(scope: !1559, file: !220, line: 432, column: 17)
!1569 = !DILocation(line: 433, column: 19, scope: !1567)
!1570 = !DILocation(line: 434, column: 19, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !220, line: 434, column: 19)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !220, line: 434, column: 19)
!1573 = !DILocation(line: 434, column: 19, scope: !1572)
!1574 = !DILocation(line: 435, column: 17, scope: !1568)
!1575 = !DILocation(line: 442, column: 20, scope: !1537)
!1576 = !DILocation(line: 447, column: 11, scope: !1386)
!1577 = !DILocation(line: 450, column: 19, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1386, file: !220, line: 448, column: 13)
!1579 = !DILocation(line: 456, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1578, file: !220, line: 455, column: 19)
!1581 = !DILocation(line: 456, column: 24, scope: !1580)
!1582 = !DILocation(line: 456, column: 28, scope: !1580)
!1583 = !DILocation(line: 456, column: 38, scope: !1580)
!1584 = !DILocation(line: 456, column: 47, scope: !1580)
!1585 = !DILocation(line: 456, column: 41, scope: !1580)
!1586 = !DILocation(line: 456, column: 52, scope: !1580)
!1587 = !DILocation(line: 455, column: 19, scope: !1578)
!1588 = !DILocation(line: 457, column: 25, scope: !1580)
!1589 = !DILocation(line: 457, column: 17, scope: !1580)
!1590 = !DILocation(line: 464, column: 25, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1580, file: !220, line: 458, column: 19)
!1592 = !DILocation(line: 468, column: 21, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !220, line: 468, column: 21)
!1594 = distinct !DILexicalBlock(scope: !1591, file: !220, line: 468, column: 21)
!1595 = !DILocation(line: 468, column: 21, scope: !1594)
!1596 = !DILocation(line: 469, column: 21, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !220, line: 469, column: 21)
!1598 = distinct !DILexicalBlock(scope: !1591, file: !220, line: 469, column: 21)
!1599 = !DILocation(line: 469, column: 21, scope: !1598)
!1600 = !DILocation(line: 470, column: 21, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !220, line: 470, column: 21)
!1602 = distinct !DILexicalBlock(scope: !1591, file: !220, line: 470, column: 21)
!1603 = !DILocation(line: 470, column: 21, scope: !1602)
!1604 = !DILocation(line: 471, column: 21, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !220, line: 471, column: 21)
!1606 = distinct !DILexicalBlock(scope: !1591, file: !220, line: 471, column: 21)
!1607 = !DILocation(line: 471, column: 21, scope: !1606)
!1608 = !DILocation(line: 472, column: 21, scope: !1591)
!1609 = !DILocation(line: 482, column: 33, scope: !1409)
!1610 = !DILocation(line: 483, column: 33, scope: !1409)
!1611 = !DILocation(line: 485, column: 33, scope: !1409)
!1612 = !DILocation(line: 486, column: 33, scope: !1409)
!1613 = !DILocation(line: 487, column: 33, scope: !1409)
!1614 = !DILocation(line: 490, column: 17, scope: !1409)
!1615 = !DILocation(line: 492, column: 21, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !220, line: 491, column: 15)
!1617 = distinct !DILexicalBlock(scope: !1409, file: !220, line: 490, column: 17)
!1618 = !DILocation(line: 499, column: 35, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1409, file: !220, line: 499, column: 17)
!1620 = !DILocation(line: 499, column: 57, scope: !1619)
!1621 = !DILocation(line: 0, scope: !1409)
!1622 = !DILocation(line: 502, column: 11, scope: !1409)
!1623 = !DILocation(line: 504, column: 17, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1409, file: !220, line: 503, column: 17)
!1625 = !DILocation(line: 507, column: 11, scope: !1409)
!1626 = !DILocation(line: 508, column: 17, scope: !1409)
!1627 = !DILocation(line: 517, column: 15, scope: !1386)
!1628 = !DILocation(line: 517, column: 40, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1386, file: !220, line: 517, column: 15)
!1630 = !DILocation(line: 517, column: 47, scope: !1629)
!1631 = !DILocation(line: 517, column: 18, scope: !1629)
!1632 = !DILocation(line: 521, column: 17, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1386, file: !220, line: 521, column: 15)
!1634 = !DILocation(line: 521, column: 15, scope: !1386)
!1635 = !DILocation(line: 525, column: 11, scope: !1386)
!1636 = !DILocation(line: 537, column: 15, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1386, file: !220, line: 536, column: 15)
!1638 = !DILocation(line: 536, column: 15, scope: !1386)
!1639 = !DILocation(line: 544, column: 15, scope: !1386)
!1640 = !DILocation(line: 546, column: 19, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !220, line: 545, column: 13)
!1642 = distinct !DILexicalBlock(scope: !1386, file: !220, line: 544, column: 15)
!1643 = !DILocation(line: 549, column: 19, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !220, line: 549, column: 19)
!1645 = !DILocation(line: 549, column: 30, scope: !1644)
!1646 = !DILocation(line: 558, column: 15, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !220, line: 558, column: 15)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !220, line: 558, column: 15)
!1649 = !DILocation(line: 558, column: 15, scope: !1648)
!1650 = !DILocation(line: 559, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !220, line: 559, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1641, file: !220, line: 559, column: 15)
!1653 = !DILocation(line: 559, column: 15, scope: !1652)
!1654 = !DILocation(line: 560, column: 15, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !220, line: 560, column: 15)
!1656 = distinct !DILexicalBlock(scope: !1641, file: !220, line: 560, column: 15)
!1657 = !DILocation(line: 560, column: 15, scope: !1656)
!1658 = !DILocation(line: 562, column: 13, scope: !1641)
!1659 = !DILocation(line: 602, column: 17, scope: !1385)
!1660 = !DILocation(line: 0, scope: !1385)
!1661 = !DILocation(line: 605, column: 29, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1390, file: !220, line: 603, column: 15)
!1663 = !DILocation(line: 605, column: 41, scope: !1662)
!1664 = !DILocation(line: 670, column: 23, scope: !1406)
!1665 = !DILocation(line: 609, column: 17, scope: !1389)
!1666 = !DILocation(line: 609, column: 27, scope: !1389)
!1667 = !DILocation(line: 0, scope: !1441, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 609, column: 32, scope: !1389)
!1669 = !DILocation(line: 0, scope: !1449, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 1137, column: 3, scope: !1441, inlinedAt: !1668)
!1671 = !DILocation(line: 59, column: 10, scope: !1449, inlinedAt: !1670)
!1672 = !DILocation(line: 613, column: 29, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1389, file: !220, line: 613, column: 21)
!1674 = !DILocation(line: 613, column: 21, scope: !1389)
!1675 = !DILocation(line: 614, column: 29, scope: !1673)
!1676 = !DILocation(line: 614, column: 19, scope: !1673)
!1677 = !DILocation(line: 618, column: 21, scope: !1392)
!1678 = !DILocation(line: 620, column: 54, scope: !1392)
!1679 = !DILocation(line: 0, scope: !1392)
!1680 = !DILocation(line: 619, column: 36, scope: !1392)
!1681 = !DILocation(line: 621, column: 25, scope: !1392)
!1682 = !DILocation(line: 631, column: 38, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1401, file: !220, line: 629, column: 23)
!1684 = !DILocation(line: 631, column: 48, scope: !1683)
!1685 = !DILocation(line: 665, column: 19, scope: !1393)
!1686 = !DILocation(line: 666, column: 15, scope: !1390)
!1687 = !DILocation(line: 626, column: 25, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1402, file: !220, line: 624, column: 23)
!1689 = !DILocation(line: 631, column: 51, scope: !1683)
!1690 = !DILocation(line: 631, column: 25, scope: !1683)
!1691 = !DILocation(line: 632, column: 28, scope: !1683)
!1692 = !DILocation(line: 631, column: 34, scope: !1683)
!1693 = distinct !{!1693, !1690, !1691, !497}
!1694 = !DILocation(line: 646, column: 29, scope: !1399)
!1695 = !DILocation(line: 0, scope: !1397)
!1696 = !DILocation(line: 649, column: 49, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1397, file: !220, line: 648, column: 29)
!1698 = !DILocation(line: 649, column: 39, scope: !1697)
!1699 = !DILocation(line: 649, column: 31, scope: !1697)
!1700 = !DILocation(line: 648, column: 60, scope: !1697)
!1701 = !DILocation(line: 648, column: 50, scope: !1697)
!1702 = !DILocation(line: 648, column: 29, scope: !1397)
!1703 = distinct !{!1703, !1702, !1704, !497}
!1704 = !DILocation(line: 654, column: 33, scope: !1397)
!1705 = !DILocation(line: 657, column: 43, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1400, file: !220, line: 657, column: 29)
!1707 = !DILocalVariable(name: "wc", arg: 1, scope: !1708, file: !1709, line: 865, type: !1712)
!1708 = distinct !DISubprogram(name: "c32isprint", scope: !1709, file: !1709, line: 865, type: !1710, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1714)
!1709 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!34, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1713, line: 20, baseType: !13)
!1713 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1714 = !{!1707}
!1715 = !DILocation(line: 0, scope: !1708, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 657, column: 31, scope: !1706)
!1717 = !DILocation(line: 871, column: 10, scope: !1708, inlinedAt: !1716)
!1718 = !DILocation(line: 657, column: 31, scope: !1706)
!1719 = !DILocation(line: 664, column: 23, scope: !1392)
!1720 = !DILocation(line: 753, column: 2, scope: !1346)
!1721 = !DILocation(line: 756, column: 51, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1346, file: !220, line: 756, column: 7)
!1723 = !DILocation(line: 670, column: 19, scope: !1406)
!1724 = !DILocation(line: 670, column: 45, scope: !1406)
!1725 = !DILocation(line: 674, column: 33, scope: !1405)
!1726 = !DILocation(line: 0, scope: !1405)
!1727 = !DILocation(line: 676, column: 17, scope: !1405)
!1728 = !DILocation(line: 398, column: 12, scope: !1379)
!1729 = !DILocation(line: 678, column: 43, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !220, line: 678, column: 25)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !220, line: 677, column: 19)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !220, line: 676, column: 17)
!1733 = distinct !DILexicalBlock(scope: !1405, file: !220, line: 676, column: 17)
!1734 = !DILocation(line: 680, column: 25, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !220, line: 680, column: 25)
!1736 = distinct !DILexicalBlock(scope: !1730, file: !220, line: 679, column: 23)
!1737 = !DILocation(line: 680, column: 25, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1735, file: !220, line: 680, column: 25)
!1739 = !DILocation(line: 680, column: 25, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !220, line: 680, column: 25)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !220, line: 680, column: 25)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !220, line: 680, column: 25)
!1743 = !DILocation(line: 680, column: 25, scope: !1741)
!1744 = !DILocation(line: 680, column: 25, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !220, line: 680, column: 25)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !220, line: 680, column: 25)
!1747 = !DILocation(line: 680, column: 25, scope: !1746)
!1748 = !DILocation(line: 680, column: 25, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !220, line: 680, column: 25)
!1750 = distinct !DILexicalBlock(scope: !1742, file: !220, line: 680, column: 25)
!1751 = !DILocation(line: 680, column: 25, scope: !1750)
!1752 = !DILocation(line: 680, column: 25, scope: !1742)
!1753 = !DILocation(line: 680, column: 25, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !220, line: 680, column: 25)
!1755 = distinct !DILexicalBlock(scope: !1735, file: !220, line: 680, column: 25)
!1756 = !DILocation(line: 680, column: 25, scope: !1755)
!1757 = !DILocation(line: 681, column: 25, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !220, line: 681, column: 25)
!1759 = distinct !DILexicalBlock(scope: !1736, file: !220, line: 681, column: 25)
!1760 = !DILocation(line: 681, column: 25, scope: !1759)
!1761 = !DILocation(line: 682, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !220, line: 682, column: 25)
!1763 = distinct !DILexicalBlock(scope: !1736, file: !220, line: 682, column: 25)
!1764 = !DILocation(line: 682, column: 25, scope: !1763)
!1765 = !DILocation(line: 683, column: 38, scope: !1736)
!1766 = !DILocation(line: 683, column: 33, scope: !1736)
!1767 = !DILocation(line: 684, column: 23, scope: !1736)
!1768 = !DILocation(line: 685, column: 30, scope: !1730)
!1769 = !DILocation(line: 687, column: 25, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !220, line: 687, column: 25)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !220, line: 687, column: 25)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !220, line: 686, column: 23)
!1773 = distinct !DILexicalBlock(scope: !1730, file: !220, line: 685, column: 30)
!1774 = !DILocation(line: 687, column: 25, scope: !1771)
!1775 = !DILocation(line: 689, column: 23, scope: !1772)
!1776 = !DILocation(line: 690, column: 35, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1731, file: !220, line: 690, column: 25)
!1778 = !DILocation(line: 690, column: 30, scope: !1777)
!1779 = !DILocation(line: 690, column: 25, scope: !1731)
!1780 = !DILocation(line: 692, column: 21, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !220, line: 692, column: 21)
!1782 = distinct !DILexicalBlock(scope: !1731, file: !220, line: 692, column: 21)
!1783 = !DILocation(line: 692, column: 21, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !220, line: 692, column: 21)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !220, line: 692, column: 21)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !220, line: 692, column: 21)
!1787 = !DILocation(line: 692, column: 21, scope: !1785)
!1788 = !DILocation(line: 692, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !220, line: 692, column: 21)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !220, line: 692, column: 21)
!1791 = !DILocation(line: 692, column: 21, scope: !1790)
!1792 = !DILocation(line: 692, column: 21, scope: !1786)
!1793 = !DILocation(line: 0, scope: !1731)
!1794 = !DILocation(line: 693, column: 21, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !220, line: 693, column: 21)
!1796 = distinct !DILexicalBlock(scope: !1731, file: !220, line: 693, column: 21)
!1797 = !DILocation(line: 693, column: 21, scope: !1796)
!1798 = !DILocation(line: 694, column: 25, scope: !1731)
!1799 = !DILocation(line: 676, column: 17, scope: !1732)
!1800 = distinct !{!1800, !1801, !1802}
!1801 = !DILocation(line: 676, column: 17, scope: !1733)
!1802 = !DILocation(line: 695, column: 19, scope: !1733)
!1803 = !DILocation(line: 409, column: 30, scope: !1513)
!1804 = !DILocation(line: 702, column: 34, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1379, file: !220, line: 702, column: 11)
!1806 = !DILocation(line: 704, column: 14, scope: !1805)
!1807 = !DILocation(line: 705, column: 14, scope: !1805)
!1808 = !DILocation(line: 705, column: 35, scope: !1805)
!1809 = !DILocation(line: 705, column: 17, scope: !1805)
!1810 = !DILocation(line: 705, column: 47, scope: !1805)
!1811 = !DILocation(line: 705, column: 65, scope: !1805)
!1812 = !DILocation(line: 706, column: 11, scope: !1805)
!1813 = !DILocation(line: 702, column: 11, scope: !1379)
!1814 = !DILocation(line: 395, column: 15, scope: !1377)
!1815 = !DILocation(line: 709, column: 5, scope: !1379)
!1816 = !DILocation(line: 710, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1379, file: !220, line: 710, column: 7)
!1818 = !DILocation(line: 710, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1817, file: !220, line: 710, column: 7)
!1820 = !DILocation(line: 710, column: 7, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !220, line: 710, column: 7)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !220, line: 710, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !220, line: 710, column: 7)
!1824 = !DILocation(line: 710, column: 7, scope: !1822)
!1825 = !DILocation(line: 710, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !220, line: 710, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !220, line: 710, column: 7)
!1828 = !DILocation(line: 710, column: 7, scope: !1827)
!1829 = !DILocation(line: 710, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !220, line: 710, column: 7)
!1831 = distinct !DILexicalBlock(scope: !1823, file: !220, line: 710, column: 7)
!1832 = !DILocation(line: 710, column: 7, scope: !1831)
!1833 = !DILocation(line: 710, column: 7, scope: !1823)
!1834 = !DILocation(line: 710, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !220, line: 710, column: 7)
!1836 = distinct !DILexicalBlock(scope: !1817, file: !220, line: 710, column: 7)
!1837 = !DILocation(line: 710, column: 7, scope: !1836)
!1838 = !DILocation(line: 712, column: 5, scope: !1379)
!1839 = !DILocation(line: 713, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !220, line: 713, column: 7)
!1841 = distinct !DILexicalBlock(scope: !1379, file: !220, line: 713, column: 7)
!1842 = !DILocation(line: 417, column: 21, scope: !1379)
!1843 = !DILocation(line: 713, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !220, line: 713, column: 7)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !220, line: 713, column: 7)
!1846 = distinct !DILexicalBlock(scope: !1840, file: !220, line: 713, column: 7)
!1847 = !DILocation(line: 713, column: 7, scope: !1845)
!1848 = !DILocation(line: 713, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !220, line: 713, column: 7)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !220, line: 713, column: 7)
!1851 = !DILocation(line: 713, column: 7, scope: !1850)
!1852 = !DILocation(line: 713, column: 7, scope: !1846)
!1853 = !DILocation(line: 714, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !220, line: 714, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1379, file: !220, line: 714, column: 7)
!1856 = !DILocation(line: 714, column: 7, scope: !1855)
!1857 = !DILocation(line: 716, column: 11, scope: !1379)
!1858 = !DILocation(line: 718, column: 5, scope: !1380)
!1859 = !DILocation(line: 395, column: 82, scope: !1380)
!1860 = !DILocation(line: 395, column: 3, scope: !1380)
!1861 = distinct !{!1861, !1509, !1862, !497}
!1862 = !DILocation(line: 718, column: 5, scope: !1377)
!1863 = !DILocation(line: 720, column: 11, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1346, file: !220, line: 720, column: 7)
!1865 = !DILocation(line: 720, column: 16, scope: !1864)
!1866 = !DILocation(line: 728, column: 51, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1346, file: !220, line: 728, column: 7)
!1868 = !DILocation(line: 731, column: 11, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1867, file: !220, line: 730, column: 5)
!1870 = !DILocation(line: 732, column: 16, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1869, file: !220, line: 731, column: 11)
!1872 = !DILocation(line: 732, column: 9, scope: !1871)
!1873 = !DILocation(line: 736, column: 18, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !220, line: 736, column: 16)
!1875 = !DILocation(line: 736, column: 29, scope: !1874)
!1876 = !DILocation(line: 745, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1346, file: !220, line: 745, column: 7)
!1878 = !DILocation(line: 745, column: 20, scope: !1877)
!1879 = !DILocation(line: 746, column: 12, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !220, line: 746, column: 5)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !220, line: 746, column: 5)
!1882 = !DILocation(line: 746, column: 5, scope: !1881)
!1883 = !DILocation(line: 747, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !220, line: 747, column: 7)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !220, line: 747, column: 7)
!1886 = !DILocation(line: 747, column: 7, scope: !1885)
!1887 = !DILocation(line: 746, column: 39, scope: !1880)
!1888 = distinct !{!1888, !1882, !1889, !497}
!1889 = !DILocation(line: 747, column: 7, scope: !1881)
!1890 = !DILocation(line: 749, column: 11, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1346, file: !220, line: 749, column: 7)
!1892 = !DILocation(line: 749, column: 7, scope: !1346)
!1893 = !DILocation(line: 750, column: 5, scope: !1891)
!1894 = !DILocation(line: 750, column: 17, scope: !1891)
!1895 = !DILocation(line: 756, column: 21, scope: !1722)
!1896 = !DILocation(line: 760, column: 42, scope: !1346)
!1897 = !DILocation(line: 758, column: 10, scope: !1346)
!1898 = !DILocation(line: 758, column: 3, scope: !1346)
!1899 = !DILocation(line: 762, column: 1, scope: !1346)
!1900 = !DISubprogram(name: "iswprint", scope: !1901, file: !1901, line: 120, type: !1710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!1901 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1902 = distinct !DISubprogram(name: "quotearg_alloc", scope: !220, file: !220, line: 788, type: !1903, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1905)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!32, !6, !36, !1238}
!1905 = !{!1906, !1907, !1908}
!1906 = !DILocalVariable(name: "arg", arg: 1, scope: !1902, file: !220, line: 788, type: !6)
!1907 = !DILocalVariable(name: "argsize", arg: 2, scope: !1902, file: !220, line: 788, type: !36)
!1908 = !DILocalVariable(name: "o", arg: 3, scope: !1902, file: !220, line: 789, type: !1238)
!1909 = !DILocation(line: 0, scope: !1902)
!1910 = !DILocalVariable(name: "arg", arg: 1, scope: !1911, file: !220, line: 801, type: !6)
!1911 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !220, file: !220, line: 801, type: !1912, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!32, !6, !36, !352, !1238}
!1914 = !{!1910, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1915 = !DILocalVariable(name: "argsize", arg: 2, scope: !1911, file: !220, line: 801, type: !36)
!1916 = !DILocalVariable(name: "size", arg: 3, scope: !1911, file: !220, line: 801, type: !352)
!1917 = !DILocalVariable(name: "o", arg: 4, scope: !1911, file: !220, line: 802, type: !1238)
!1918 = !DILocalVariable(name: "p", scope: !1911, file: !220, line: 804, type: !1238)
!1919 = !DILocalVariable(name: "saved_errno", scope: !1911, file: !220, line: 805, type: !34)
!1920 = !DILocalVariable(name: "flags", scope: !1911, file: !220, line: 807, type: !34)
!1921 = !DILocalVariable(name: "bufsize", scope: !1911, file: !220, line: 808, type: !36)
!1922 = !DILocalVariable(name: "buf", scope: !1911, file: !220, line: 812, type: !32)
!1923 = !DILocation(line: 0, scope: !1911, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 791, column: 10, scope: !1902)
!1925 = !DILocation(line: 804, column: 37, scope: !1911, inlinedAt: !1924)
!1926 = !DILocation(line: 805, column: 21, scope: !1911, inlinedAt: !1924)
!1927 = !DILocation(line: 807, column: 18, scope: !1911, inlinedAt: !1924)
!1928 = !DILocation(line: 807, column: 24, scope: !1911, inlinedAt: !1924)
!1929 = !DILocation(line: 808, column: 72, scope: !1911, inlinedAt: !1924)
!1930 = !DILocation(line: 809, column: 53, scope: !1911, inlinedAt: !1924)
!1931 = !DILocation(line: 810, column: 49, scope: !1911, inlinedAt: !1924)
!1932 = !DILocation(line: 811, column: 49, scope: !1911, inlinedAt: !1924)
!1933 = !DILocation(line: 808, column: 20, scope: !1911, inlinedAt: !1924)
!1934 = !DILocation(line: 811, column: 62, scope: !1911, inlinedAt: !1924)
!1935 = !DILocation(line: 812, column: 15, scope: !1911, inlinedAt: !1924)
!1936 = !DILocation(line: 813, column: 60, scope: !1911, inlinedAt: !1924)
!1937 = !DILocation(line: 815, column: 32, scope: !1911, inlinedAt: !1924)
!1938 = !DILocation(line: 815, column: 47, scope: !1911, inlinedAt: !1924)
!1939 = !DILocation(line: 813, column: 3, scope: !1911, inlinedAt: !1924)
!1940 = !DILocation(line: 816, column: 9, scope: !1911, inlinedAt: !1924)
!1941 = !DILocation(line: 791, column: 3, scope: !1902)
!1942 = !DILocation(line: 0, scope: !1911)
!1943 = !DILocation(line: 804, column: 37, scope: !1911)
!1944 = !DILocation(line: 805, column: 21, scope: !1911)
!1945 = !DILocation(line: 807, column: 18, scope: !1911)
!1946 = !DILocation(line: 807, column: 27, scope: !1911)
!1947 = !DILocation(line: 807, column: 24, scope: !1911)
!1948 = !DILocation(line: 808, column: 72, scope: !1911)
!1949 = !DILocation(line: 809, column: 53, scope: !1911)
!1950 = !DILocation(line: 810, column: 49, scope: !1911)
!1951 = !DILocation(line: 811, column: 49, scope: !1911)
!1952 = !DILocation(line: 808, column: 20, scope: !1911)
!1953 = !DILocation(line: 811, column: 62, scope: !1911)
!1954 = !DILocation(line: 812, column: 15, scope: !1911)
!1955 = !DILocation(line: 813, column: 60, scope: !1911)
!1956 = !DILocation(line: 815, column: 32, scope: !1911)
!1957 = !DILocation(line: 815, column: 47, scope: !1911)
!1958 = !DILocation(line: 813, column: 3, scope: !1911)
!1959 = !DILocation(line: 816, column: 9, scope: !1911)
!1960 = !DILocation(line: 817, column: 7, scope: !1911)
!1961 = !DILocation(line: 818, column: 11, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1911, file: !220, line: 817, column: 7)
!1963 = !{!850, !850, i64 0}
!1964 = !DILocation(line: 818, column: 5, scope: !1962)
!1965 = !DILocation(line: 819, column: 3, scope: !1911)
!1966 = distinct !DISubprogram(name: "quotearg_free", scope: !220, file: !220, line: 837, type: !173, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !1967)
!1967 = !{!1968, !1969}
!1968 = !DILocalVariable(name: "sv", scope: !1966, file: !220, line: 839, type: !293)
!1969 = !DILocalVariable(name: "i", scope: !1970, file: !220, line: 840, type: !34)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !220, line: 840, column: 3)
!1971 = !DILocation(line: 839, column: 24, scope: !1966)
!1972 = !DILocation(line: 0, scope: !1966)
!1973 = !DILocation(line: 0, scope: !1970)
!1974 = !DILocation(line: 840, column: 21, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !220, line: 840, column: 3)
!1976 = !DILocation(line: 840, column: 3, scope: !1970)
!1977 = !DILocation(line: 842, column: 13, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1966, file: !220, line: 842, column: 7)
!1979 = !{!1980, !422, i64 8}
!1980 = !{!"slotvec", !850, i64 0, !422, i64 8}
!1981 = !DILocation(line: 842, column: 17, scope: !1978)
!1982 = !DILocation(line: 842, column: 7, scope: !1966)
!1983 = !DILocation(line: 841, column: 17, scope: !1975)
!1984 = !DILocation(line: 841, column: 5, scope: !1975)
!1985 = !DILocation(line: 840, column: 32, scope: !1975)
!1986 = distinct !{!1986, !1976, !1987, !497}
!1987 = !DILocation(line: 841, column: 20, scope: !1970)
!1988 = !DILocation(line: 844, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1978, file: !220, line: 843, column: 5)
!1990 = !DILocation(line: 845, column: 21, scope: !1989)
!1991 = !{!1980, !850, i64 0}
!1992 = !DILocation(line: 846, column: 20, scope: !1989)
!1993 = !DILocation(line: 847, column: 5, scope: !1989)
!1994 = !DILocation(line: 848, column: 10, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1966, file: !220, line: 848, column: 7)
!1996 = !DILocation(line: 848, column: 7, scope: !1966)
!1997 = !DILocation(line: 850, column: 13, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !220, line: 849, column: 5)
!1999 = !DILocation(line: 850, column: 7, scope: !1998)
!2000 = !DILocation(line: 851, column: 15, scope: !1998)
!2001 = !DILocation(line: 852, column: 5, scope: !1998)
!2002 = !DILocation(line: 853, column: 10, scope: !1966)
!2003 = !DILocation(line: 854, column: 1, scope: !1966)
!2004 = distinct !DISubprogram(name: "quotearg_n", scope: !220, file: !220, line: 919, type: !621, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2005)
!2005 = !{!2006, !2007}
!2006 = !DILocalVariable(name: "n", arg: 1, scope: !2004, file: !220, line: 919, type: !34)
!2007 = !DILocalVariable(name: "arg", arg: 2, scope: !2004, file: !220, line: 919, type: !6)
!2008 = !DILocation(line: 0, scope: !2004)
!2009 = !DILocation(line: 921, column: 10, scope: !2004)
!2010 = !DILocation(line: 921, column: 3, scope: !2004)
!2011 = distinct !DISubprogram(name: "quotearg_n_options", scope: !220, file: !220, line: 866, type: !2012, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!32, !34, !6, !36, !1238}
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2025, !2026, !2028, !2029, !2030}
!2015 = !DILocalVariable(name: "n", arg: 1, scope: !2011, file: !220, line: 866, type: !34)
!2016 = !DILocalVariable(name: "arg", arg: 2, scope: !2011, file: !220, line: 866, type: !6)
!2017 = !DILocalVariable(name: "argsize", arg: 3, scope: !2011, file: !220, line: 866, type: !36)
!2018 = !DILocalVariable(name: "options", arg: 4, scope: !2011, file: !220, line: 867, type: !1238)
!2019 = !DILocalVariable(name: "saved_errno", scope: !2011, file: !220, line: 869, type: !34)
!2020 = !DILocalVariable(name: "sv", scope: !2011, file: !220, line: 871, type: !293)
!2021 = !DILocalVariable(name: "nslots_max", scope: !2011, file: !220, line: 873, type: !34)
!2022 = !DILocalVariable(name: "preallocated", scope: !2023, file: !220, line: 879, type: !48)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !220, line: 878, column: 5)
!2024 = distinct !DILexicalBlock(scope: !2011, file: !220, line: 877, column: 7)
!2025 = !DILocalVariable(name: "new_nslots", scope: !2023, file: !220, line: 880, type: !365)
!2026 = !DILocalVariable(name: "size", scope: !2027, file: !220, line: 891, type: !36)
!2027 = distinct !DILexicalBlock(scope: !2011, file: !220, line: 890, column: 3)
!2028 = !DILocalVariable(name: "val", scope: !2027, file: !220, line: 892, type: !32)
!2029 = !DILocalVariable(name: "flags", scope: !2027, file: !220, line: 894, type: !34)
!2030 = !DILocalVariable(name: "qsize", scope: !2027, file: !220, line: 895, type: !36)
!2031 = !DILocation(line: 0, scope: !2011)
!2032 = !DILocation(line: 869, column: 21, scope: !2011)
!2033 = !DILocation(line: 871, column: 24, scope: !2011)
!2034 = !DILocation(line: 874, column: 17, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2011, file: !220, line: 874, column: 7)
!2036 = !DILocation(line: 875, column: 5, scope: !2035)
!2037 = !DILocation(line: 877, column: 7, scope: !2024)
!2038 = !DILocation(line: 877, column: 14, scope: !2024)
!2039 = !DILocation(line: 877, column: 7, scope: !2011)
!2040 = !DILocation(line: 879, column: 31, scope: !2023)
!2041 = !DILocation(line: 0, scope: !2023)
!2042 = !DILocation(line: 880, column: 7, scope: !2023)
!2043 = !DILocation(line: 880, column: 26, scope: !2023)
!2044 = !DILocation(line: 880, column: 13, scope: !2023)
!2045 = !DILocation(line: 882, column: 31, scope: !2023)
!2046 = !DILocation(line: 883, column: 33, scope: !2023)
!2047 = !DILocation(line: 883, column: 42, scope: !2023)
!2048 = !DILocation(line: 883, column: 31, scope: !2023)
!2049 = !DILocation(line: 882, column: 22, scope: !2023)
!2050 = !DILocation(line: 882, column: 15, scope: !2023)
!2051 = !DILocation(line: 884, column: 11, scope: !2023)
!2052 = !DILocation(line: 885, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2023, file: !220, line: 884, column: 11)
!2054 = !{i64 0, i64 8, !1963, i64 8, i64 8, !421}
!2055 = !DILocation(line: 885, column: 9, scope: !2053)
!2056 = !DILocation(line: 886, column: 20, scope: !2023)
!2057 = !DILocation(line: 886, column: 18, scope: !2023)
!2058 = !DILocation(line: 886, column: 15, scope: !2023)
!2059 = !DILocation(line: 886, column: 32, scope: !2023)
!2060 = !DILocation(line: 886, column: 43, scope: !2023)
!2061 = !DILocation(line: 886, column: 53, scope: !2023)
!2062 = !DILocation(line: 0, scope: !1449, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 886, column: 7, scope: !2023)
!2064 = !DILocation(line: 59, column: 10, scope: !1449, inlinedAt: !2063)
!2065 = !DILocation(line: 887, column: 16, scope: !2023)
!2066 = !DILocation(line: 887, column: 14, scope: !2023)
!2067 = !DILocation(line: 888, column: 5, scope: !2024)
!2068 = !DILocation(line: 888, column: 5, scope: !2023)
!2069 = !DILocation(line: 891, column: 19, scope: !2027)
!2070 = !DILocation(line: 891, column: 25, scope: !2027)
!2071 = !DILocation(line: 0, scope: !2027)
!2072 = !DILocation(line: 892, column: 23, scope: !2027)
!2073 = !DILocation(line: 894, column: 26, scope: !2027)
!2074 = !DILocation(line: 894, column: 32, scope: !2027)
!2075 = !DILocation(line: 896, column: 55, scope: !2027)
!2076 = !DILocation(line: 897, column: 46, scope: !2027)
!2077 = !DILocation(line: 898, column: 55, scope: !2027)
!2078 = !DILocation(line: 899, column: 55, scope: !2027)
!2079 = !DILocation(line: 895, column: 20, scope: !2027)
!2080 = !DILocation(line: 901, column: 14, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2027, file: !220, line: 901, column: 9)
!2082 = !DILocation(line: 901, column: 9, scope: !2027)
!2083 = !DILocation(line: 903, column: 35, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2081, file: !220, line: 902, column: 7)
!2085 = !DILocation(line: 903, column: 20, scope: !2084)
!2086 = !DILocation(line: 904, column: 17, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2084, file: !220, line: 904, column: 13)
!2088 = !DILocation(line: 904, column: 13, scope: !2084)
!2089 = !DILocation(line: 905, column: 11, scope: !2087)
!2090 = !DILocation(line: 906, column: 27, scope: !2084)
!2091 = !DILocation(line: 906, column: 19, scope: !2084)
!2092 = !DILocation(line: 907, column: 69, scope: !2084)
!2093 = !DILocation(line: 909, column: 44, scope: !2084)
!2094 = !DILocation(line: 910, column: 44, scope: !2084)
!2095 = !DILocation(line: 907, column: 9, scope: !2084)
!2096 = !DILocation(line: 911, column: 7, scope: !2084)
!2097 = !DILocation(line: 913, column: 11, scope: !2027)
!2098 = !DILocation(line: 914, column: 5, scope: !2027)
!2099 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !220, file: !220, line: 925, type: !2100, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!32, !34, !6, !36}
!2102 = !{!2103, !2104, !2105}
!2103 = !DILocalVariable(name: "n", arg: 1, scope: !2099, file: !220, line: 925, type: !34)
!2104 = !DILocalVariable(name: "arg", arg: 2, scope: !2099, file: !220, line: 925, type: !6)
!2105 = !DILocalVariable(name: "argsize", arg: 3, scope: !2099, file: !220, line: 925, type: !36)
!2106 = !DILocation(line: 0, scope: !2099)
!2107 = !DILocation(line: 927, column: 10, scope: !2099)
!2108 = !DILocation(line: 927, column: 3, scope: !2099)
!2109 = distinct !DISubprogram(name: "quotearg", scope: !220, file: !220, line: 931, type: !625, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2110)
!2110 = !{!2111}
!2111 = !DILocalVariable(name: "arg", arg: 1, scope: !2109, file: !220, line: 931, type: !6)
!2112 = !DILocation(line: 0, scope: !2109)
!2113 = !DILocation(line: 0, scope: !2004, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 933, column: 10, scope: !2109)
!2115 = !DILocation(line: 921, column: 10, scope: !2004, inlinedAt: !2114)
!2116 = !DILocation(line: 933, column: 3, scope: !2109)
!2117 = distinct !DISubprogram(name: "quotearg_mem", scope: !220, file: !220, line: 937, type: !2118, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!32, !6, !36}
!2120 = !{!2121, !2122}
!2121 = !DILocalVariable(name: "arg", arg: 1, scope: !2117, file: !220, line: 937, type: !6)
!2122 = !DILocalVariable(name: "argsize", arg: 2, scope: !2117, file: !220, line: 937, type: !36)
!2123 = !DILocation(line: 0, scope: !2117)
!2124 = !DILocation(line: 0, scope: !2099, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 939, column: 10, scope: !2117)
!2126 = !DILocation(line: 927, column: 10, scope: !2099, inlinedAt: !2125)
!2127 = !DILocation(line: 939, column: 3, scope: !2117)
!2128 = distinct !DISubprogram(name: "quotearg_n_style", scope: !220, file: !220, line: 943, type: !2129, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!32, !34, !222, !6}
!2131 = !{!2132, !2133, !2134, !2135}
!2132 = !DILocalVariable(name: "n", arg: 1, scope: !2128, file: !220, line: 943, type: !34)
!2133 = !DILocalVariable(name: "s", arg: 2, scope: !2128, file: !220, line: 943, type: !222)
!2134 = !DILocalVariable(name: "arg", arg: 3, scope: !2128, file: !220, line: 943, type: !6)
!2135 = !DILocalVariable(name: "o", scope: !2128, file: !220, line: 945, type: !1239)
!2136 = !DILocation(line: 0, scope: !2128)
!2137 = !DILocation(line: 945, column: 3, scope: !2128)
!2138 = !DILocation(line: 945, column: 32, scope: !2128)
!2139 = !{!2140}
!2140 = distinct !{!2140, !2141, !"quoting_options_from_style: argument 0"}
!2141 = distinct !{!2141, !"quoting_options_from_style"}
!2142 = !DILocation(line: 945, column: 36, scope: !2128)
!2143 = !DILocalVariable(name: "style", arg: 1, scope: !2144, file: !220, line: 183, type: !222)
!2144 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !220, file: !220, line: 183, type: !2145, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!251, !222}
!2147 = !{!2143, !2148}
!2148 = !DILocalVariable(name: "o", scope: !2144, file: !220, line: 185, type: !251)
!2149 = !DILocation(line: 0, scope: !2144, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 945, column: 36, scope: !2128)
!2151 = !DILocation(line: 185, column: 26, scope: !2144, inlinedAt: !2150)
!2152 = !DILocation(line: 186, column: 13, scope: !2153, inlinedAt: !2150)
!2153 = distinct !DILexicalBlock(scope: !2144, file: !220, line: 186, column: 7)
!2154 = !DILocation(line: 186, column: 7, scope: !2144, inlinedAt: !2150)
!2155 = !DILocation(line: 187, column: 5, scope: !2153, inlinedAt: !2150)
!2156 = !DILocation(line: 188, column: 5, scope: !2144, inlinedAt: !2150)
!2157 = !DILocation(line: 188, column: 11, scope: !2144, inlinedAt: !2150)
!2158 = !DILocation(line: 946, column: 10, scope: !2128)
!2159 = !DILocation(line: 947, column: 1, scope: !2128)
!2160 = !DILocation(line: 946, column: 3, scope: !2128)
!2161 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !220, file: !220, line: 950, type: !2162, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!32, !34, !222, !6, !36}
!2164 = !{!2165, !2166, !2167, !2168, !2169}
!2165 = !DILocalVariable(name: "n", arg: 1, scope: !2161, file: !220, line: 950, type: !34)
!2166 = !DILocalVariable(name: "s", arg: 2, scope: !2161, file: !220, line: 950, type: !222)
!2167 = !DILocalVariable(name: "arg", arg: 3, scope: !2161, file: !220, line: 951, type: !6)
!2168 = !DILocalVariable(name: "argsize", arg: 4, scope: !2161, file: !220, line: 951, type: !36)
!2169 = !DILocalVariable(name: "o", scope: !2161, file: !220, line: 953, type: !1239)
!2170 = !DILocation(line: 0, scope: !2161)
!2171 = !DILocation(line: 953, column: 3, scope: !2161)
!2172 = !DILocation(line: 953, column: 32, scope: !2161)
!2173 = !{!2174}
!2174 = distinct !{!2174, !2175, !"quoting_options_from_style: argument 0"}
!2175 = distinct !{!2175, !"quoting_options_from_style"}
!2176 = !DILocation(line: 953, column: 36, scope: !2161)
!2177 = !DILocation(line: 0, scope: !2144, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 953, column: 36, scope: !2161)
!2179 = !DILocation(line: 185, column: 26, scope: !2144, inlinedAt: !2178)
!2180 = !DILocation(line: 186, column: 13, scope: !2153, inlinedAt: !2178)
!2181 = !DILocation(line: 186, column: 7, scope: !2144, inlinedAt: !2178)
!2182 = !DILocation(line: 187, column: 5, scope: !2153, inlinedAt: !2178)
!2183 = !DILocation(line: 188, column: 5, scope: !2144, inlinedAt: !2178)
!2184 = !DILocation(line: 188, column: 11, scope: !2144, inlinedAt: !2178)
!2185 = !DILocation(line: 954, column: 10, scope: !2161)
!2186 = !DILocation(line: 955, column: 1, scope: !2161)
!2187 = !DILocation(line: 954, column: 3, scope: !2161)
!2188 = distinct !DISubprogram(name: "quotearg_style", scope: !220, file: !220, line: 958, type: !2189, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!32, !222, !6}
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "s", arg: 1, scope: !2188, file: !220, line: 958, type: !222)
!2193 = !DILocalVariable(name: "arg", arg: 2, scope: !2188, file: !220, line: 958, type: !6)
!2194 = !DILocation(line: 0, scope: !2188)
!2195 = !DILocation(line: 0, scope: !2128, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 960, column: 10, scope: !2188)
!2197 = !DILocation(line: 945, column: 3, scope: !2128, inlinedAt: !2196)
!2198 = !DILocation(line: 945, column: 32, scope: !2128, inlinedAt: !2196)
!2199 = !{!2200}
!2200 = distinct !{!2200, !2201, !"quoting_options_from_style: argument 0"}
!2201 = distinct !{!2201, !"quoting_options_from_style"}
!2202 = !DILocation(line: 945, column: 36, scope: !2128, inlinedAt: !2196)
!2203 = !DILocation(line: 0, scope: !2144, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 945, column: 36, scope: !2128, inlinedAt: !2196)
!2205 = !DILocation(line: 185, column: 26, scope: !2144, inlinedAt: !2204)
!2206 = !DILocation(line: 186, column: 13, scope: !2153, inlinedAt: !2204)
!2207 = !DILocation(line: 186, column: 7, scope: !2144, inlinedAt: !2204)
!2208 = !DILocation(line: 187, column: 5, scope: !2153, inlinedAt: !2204)
!2209 = !DILocation(line: 188, column: 5, scope: !2144, inlinedAt: !2204)
!2210 = !DILocation(line: 188, column: 11, scope: !2144, inlinedAt: !2204)
!2211 = !DILocation(line: 946, column: 10, scope: !2128, inlinedAt: !2196)
!2212 = !DILocation(line: 947, column: 1, scope: !2128, inlinedAt: !2196)
!2213 = !DILocation(line: 960, column: 3, scope: !2188)
!2214 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !220, file: !220, line: 964, type: !2215, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2217)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!32, !222, !6, !36}
!2217 = !{!2218, !2219, !2220}
!2218 = !DILocalVariable(name: "s", arg: 1, scope: !2214, file: !220, line: 964, type: !222)
!2219 = !DILocalVariable(name: "arg", arg: 2, scope: !2214, file: !220, line: 964, type: !6)
!2220 = !DILocalVariable(name: "argsize", arg: 3, scope: !2214, file: !220, line: 964, type: !36)
!2221 = !DILocation(line: 0, scope: !2214)
!2222 = !DILocation(line: 0, scope: !2161, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 966, column: 10, scope: !2214)
!2224 = !DILocation(line: 953, column: 3, scope: !2161, inlinedAt: !2223)
!2225 = !DILocation(line: 953, column: 32, scope: !2161, inlinedAt: !2223)
!2226 = !{!2227}
!2227 = distinct !{!2227, !2228, !"quoting_options_from_style: argument 0"}
!2228 = distinct !{!2228, !"quoting_options_from_style"}
!2229 = !DILocation(line: 953, column: 36, scope: !2161, inlinedAt: !2223)
!2230 = !DILocation(line: 0, scope: !2144, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 953, column: 36, scope: !2161, inlinedAt: !2223)
!2232 = !DILocation(line: 185, column: 26, scope: !2144, inlinedAt: !2231)
!2233 = !DILocation(line: 186, column: 13, scope: !2153, inlinedAt: !2231)
!2234 = !DILocation(line: 186, column: 7, scope: !2144, inlinedAt: !2231)
!2235 = !DILocation(line: 187, column: 5, scope: !2153, inlinedAt: !2231)
!2236 = !DILocation(line: 188, column: 5, scope: !2144, inlinedAt: !2231)
!2237 = !DILocation(line: 188, column: 11, scope: !2144, inlinedAt: !2231)
!2238 = !DILocation(line: 954, column: 10, scope: !2161, inlinedAt: !2223)
!2239 = !DILocation(line: 955, column: 1, scope: !2161, inlinedAt: !2223)
!2240 = !DILocation(line: 966, column: 3, scope: !2214)
!2241 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !220, file: !220, line: 970, type: !2242, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!32, !6, !36, !8}
!2244 = !{!2245, !2246, !2247, !2248}
!2245 = !DILocalVariable(name: "arg", arg: 1, scope: !2241, file: !220, line: 970, type: !6)
!2246 = !DILocalVariable(name: "argsize", arg: 2, scope: !2241, file: !220, line: 970, type: !36)
!2247 = !DILocalVariable(name: "ch", arg: 3, scope: !2241, file: !220, line: 970, type: !8)
!2248 = !DILocalVariable(name: "options", scope: !2241, file: !220, line: 972, type: !251)
!2249 = !DILocation(line: 0, scope: !2241)
!2250 = !DILocation(line: 972, column: 3, scope: !2241)
!2251 = !DILocation(line: 972, column: 26, scope: !2241)
!2252 = !DILocation(line: 973, column: 13, scope: !2241)
!2253 = !{i64 0, i64 4, !459, i64 4, i64 4, !450, i64 8, i64 32, !459, i64 40, i64 8, !421, i64 48, i64 8, !421}
!2254 = !DILocation(line: 0, scope: !1259, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 974, column: 3, scope: !2241)
!2256 = !DILocation(line: 147, column: 62, scope: !1259, inlinedAt: !2255)
!2257 = !DILocation(line: 147, column: 57, scope: !1259, inlinedAt: !2255)
!2258 = !DILocation(line: 148, column: 15, scope: !1259, inlinedAt: !2255)
!2259 = !DILocation(line: 149, column: 21, scope: !1259, inlinedAt: !2255)
!2260 = !DILocation(line: 149, column: 24, scope: !1259, inlinedAt: !2255)
!2261 = !DILocation(line: 149, column: 34, scope: !1259, inlinedAt: !2255)
!2262 = !DILocation(line: 150, column: 19, scope: !1259, inlinedAt: !2255)
!2263 = !DILocation(line: 150, column: 24, scope: !1259, inlinedAt: !2255)
!2264 = !DILocation(line: 150, column: 6, scope: !1259, inlinedAt: !2255)
!2265 = !DILocation(line: 975, column: 10, scope: !2241)
!2266 = !DILocation(line: 976, column: 1, scope: !2241)
!2267 = !DILocation(line: 975, column: 3, scope: !2241)
!2268 = distinct !DISubprogram(name: "quotearg_char", scope: !220, file: !220, line: 979, type: !2269, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!32, !6, !8}
!2271 = !{!2272, !2273}
!2272 = !DILocalVariable(name: "arg", arg: 1, scope: !2268, file: !220, line: 979, type: !6)
!2273 = !DILocalVariable(name: "ch", arg: 2, scope: !2268, file: !220, line: 979, type: !8)
!2274 = !DILocation(line: 0, scope: !2268)
!2275 = !DILocation(line: 0, scope: !2241, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 981, column: 10, scope: !2268)
!2277 = !DILocation(line: 972, column: 3, scope: !2241, inlinedAt: !2276)
!2278 = !DILocation(line: 972, column: 26, scope: !2241, inlinedAt: !2276)
!2279 = !DILocation(line: 973, column: 13, scope: !2241, inlinedAt: !2276)
!2280 = !DILocation(line: 0, scope: !1259, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 974, column: 3, scope: !2241, inlinedAt: !2276)
!2282 = !DILocation(line: 147, column: 62, scope: !1259, inlinedAt: !2281)
!2283 = !DILocation(line: 147, column: 57, scope: !1259, inlinedAt: !2281)
!2284 = !DILocation(line: 148, column: 15, scope: !1259, inlinedAt: !2281)
!2285 = !DILocation(line: 149, column: 21, scope: !1259, inlinedAt: !2281)
!2286 = !DILocation(line: 149, column: 24, scope: !1259, inlinedAt: !2281)
!2287 = !DILocation(line: 149, column: 34, scope: !1259, inlinedAt: !2281)
!2288 = !DILocation(line: 150, column: 19, scope: !1259, inlinedAt: !2281)
!2289 = !DILocation(line: 150, column: 24, scope: !1259, inlinedAt: !2281)
!2290 = !DILocation(line: 150, column: 6, scope: !1259, inlinedAt: !2281)
!2291 = !DILocation(line: 975, column: 10, scope: !2241, inlinedAt: !2276)
!2292 = !DILocation(line: 976, column: 1, scope: !2241, inlinedAt: !2276)
!2293 = !DILocation(line: 981, column: 3, scope: !2268)
!2294 = distinct !DISubprogram(name: "quotearg_colon", scope: !220, file: !220, line: 985, type: !625, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2295)
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "arg", arg: 1, scope: !2294, file: !220, line: 985, type: !6)
!2297 = !DILocation(line: 0, scope: !2294)
!2298 = !DILocation(line: 0, scope: !2268, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 987, column: 10, scope: !2294)
!2300 = !DILocation(line: 0, scope: !2241, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 981, column: 10, scope: !2268, inlinedAt: !2299)
!2302 = !DILocation(line: 972, column: 3, scope: !2241, inlinedAt: !2301)
!2303 = !DILocation(line: 972, column: 26, scope: !2241, inlinedAt: !2301)
!2304 = !DILocation(line: 973, column: 13, scope: !2241, inlinedAt: !2301)
!2305 = !DILocation(line: 0, scope: !1259, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 974, column: 3, scope: !2241, inlinedAt: !2301)
!2307 = !DILocation(line: 147, column: 57, scope: !1259, inlinedAt: !2306)
!2308 = !DILocation(line: 149, column: 21, scope: !1259, inlinedAt: !2306)
!2309 = !DILocation(line: 150, column: 6, scope: !1259, inlinedAt: !2306)
!2310 = !DILocation(line: 975, column: 10, scope: !2241, inlinedAt: !2301)
!2311 = !DILocation(line: 976, column: 1, scope: !2241, inlinedAt: !2301)
!2312 = !DILocation(line: 987, column: 3, scope: !2294)
!2313 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !220, file: !220, line: 991, type: !2118, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2314)
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "arg", arg: 1, scope: !2313, file: !220, line: 991, type: !6)
!2316 = !DILocalVariable(name: "argsize", arg: 2, scope: !2313, file: !220, line: 991, type: !36)
!2317 = !DILocation(line: 0, scope: !2313)
!2318 = !DILocation(line: 0, scope: !2241, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 993, column: 10, scope: !2313)
!2320 = !DILocation(line: 972, column: 3, scope: !2241, inlinedAt: !2319)
!2321 = !DILocation(line: 972, column: 26, scope: !2241, inlinedAt: !2319)
!2322 = !DILocation(line: 973, column: 13, scope: !2241, inlinedAt: !2319)
!2323 = !DILocation(line: 0, scope: !1259, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 974, column: 3, scope: !2241, inlinedAt: !2319)
!2325 = !DILocation(line: 147, column: 57, scope: !1259, inlinedAt: !2324)
!2326 = !DILocation(line: 149, column: 21, scope: !1259, inlinedAt: !2324)
!2327 = !DILocation(line: 150, column: 6, scope: !1259, inlinedAt: !2324)
!2328 = !DILocation(line: 975, column: 10, scope: !2241, inlinedAt: !2319)
!2329 = !DILocation(line: 976, column: 1, scope: !2241, inlinedAt: !2319)
!2330 = !DILocation(line: 993, column: 3, scope: !2313)
!2331 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !220, file: !220, line: 997, type: !2129, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2332)
!2332 = !{!2333, !2334, !2335, !2336}
!2333 = !DILocalVariable(name: "n", arg: 1, scope: !2331, file: !220, line: 997, type: !34)
!2334 = !DILocalVariable(name: "s", arg: 2, scope: !2331, file: !220, line: 997, type: !222)
!2335 = !DILocalVariable(name: "arg", arg: 3, scope: !2331, file: !220, line: 997, type: !6)
!2336 = !DILocalVariable(name: "options", scope: !2331, file: !220, line: 999, type: !251)
!2337 = !DILocation(line: 0, scope: !2331)
!2338 = !DILocation(line: 999, column: 3, scope: !2331)
!2339 = !DILocation(line: 999, column: 26, scope: !2331)
!2340 = !DILocation(line: 0, scope: !2144, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 1000, column: 13, scope: !2331)
!2342 = !DILocation(line: 186, column: 13, scope: !2153, inlinedAt: !2341)
!2343 = !DILocation(line: 186, column: 7, scope: !2144, inlinedAt: !2341)
!2344 = !DILocation(line: 187, column: 5, scope: !2153, inlinedAt: !2341)
!2345 = !{!2346}
!2346 = distinct !{!2346, !2347, !"quoting_options_from_style: argument 0"}
!2347 = distinct !{!2347, !"quoting_options_from_style"}
!2348 = !DILocation(line: 1000, column: 13, scope: !2331)
!2349 = !DILocation(line: 0, scope: !1259, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 1001, column: 3, scope: !2331)
!2351 = !DILocation(line: 147, column: 57, scope: !1259, inlinedAt: !2350)
!2352 = !DILocation(line: 149, column: 21, scope: !1259, inlinedAt: !2350)
!2353 = !DILocation(line: 150, column: 6, scope: !1259, inlinedAt: !2350)
!2354 = !DILocation(line: 1002, column: 10, scope: !2331)
!2355 = !DILocation(line: 1003, column: 1, scope: !2331)
!2356 = !DILocation(line: 1002, column: 3, scope: !2331)
!2357 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !220, file: !220, line: 1006, type: !2358, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!32, !34, !6, !6, !6}
!2360 = !{!2361, !2362, !2363, !2364}
!2361 = !DILocalVariable(name: "n", arg: 1, scope: !2357, file: !220, line: 1006, type: !34)
!2362 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2357, file: !220, line: 1006, type: !6)
!2363 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2357, file: !220, line: 1007, type: !6)
!2364 = !DILocalVariable(name: "arg", arg: 4, scope: !2357, file: !220, line: 1007, type: !6)
!2365 = !DILocation(line: 0, scope: !2357)
!2366 = !DILocalVariable(name: "n", arg: 1, scope: !2367, file: !220, line: 1014, type: !34)
!2367 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !220, file: !220, line: 1014, type: !2368, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!32, !34, !6, !6, !6, !36}
!2370 = !{!2366, !2371, !2372, !2373, !2374, !2375}
!2371 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2367, file: !220, line: 1014, type: !6)
!2372 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2367, file: !220, line: 1015, type: !6)
!2373 = !DILocalVariable(name: "arg", arg: 4, scope: !2367, file: !220, line: 1016, type: !6)
!2374 = !DILocalVariable(name: "argsize", arg: 5, scope: !2367, file: !220, line: 1016, type: !36)
!2375 = !DILocalVariable(name: "o", scope: !2367, file: !220, line: 1018, type: !251)
!2376 = !DILocation(line: 0, scope: !2367, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 1009, column: 10, scope: !2357)
!2378 = !DILocation(line: 1018, column: 3, scope: !2367, inlinedAt: !2377)
!2379 = !DILocation(line: 1018, column: 26, scope: !2367, inlinedAt: !2377)
!2380 = !DILocation(line: 1018, column: 30, scope: !2367, inlinedAt: !2377)
!2381 = !DILocation(line: 0, scope: !1299, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 1019, column: 3, scope: !2367, inlinedAt: !2377)
!2383 = !DILocation(line: 174, column: 6, scope: !1299, inlinedAt: !2382)
!2384 = !DILocation(line: 174, column: 12, scope: !1299, inlinedAt: !2382)
!2385 = !DILocation(line: 175, column: 8, scope: !1313, inlinedAt: !2382)
!2386 = !DILocation(line: 175, column: 19, scope: !1313, inlinedAt: !2382)
!2387 = !DILocation(line: 176, column: 5, scope: !1313, inlinedAt: !2382)
!2388 = !DILocation(line: 177, column: 6, scope: !1299, inlinedAt: !2382)
!2389 = !DILocation(line: 177, column: 17, scope: !1299, inlinedAt: !2382)
!2390 = !DILocation(line: 178, column: 6, scope: !1299, inlinedAt: !2382)
!2391 = !DILocation(line: 178, column: 18, scope: !1299, inlinedAt: !2382)
!2392 = !DILocation(line: 1020, column: 10, scope: !2367, inlinedAt: !2377)
!2393 = !DILocation(line: 1021, column: 1, scope: !2367, inlinedAt: !2377)
!2394 = !DILocation(line: 1009, column: 3, scope: !2357)
!2395 = !DILocation(line: 0, scope: !2367)
!2396 = !DILocation(line: 1018, column: 3, scope: !2367)
!2397 = !DILocation(line: 1018, column: 26, scope: !2367)
!2398 = !DILocation(line: 1018, column: 30, scope: !2367)
!2399 = !DILocation(line: 0, scope: !1299, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 1019, column: 3, scope: !2367)
!2401 = !DILocation(line: 174, column: 6, scope: !1299, inlinedAt: !2400)
!2402 = !DILocation(line: 174, column: 12, scope: !1299, inlinedAt: !2400)
!2403 = !DILocation(line: 175, column: 8, scope: !1313, inlinedAt: !2400)
!2404 = !DILocation(line: 175, column: 19, scope: !1313, inlinedAt: !2400)
!2405 = !DILocation(line: 176, column: 5, scope: !1313, inlinedAt: !2400)
!2406 = !DILocation(line: 177, column: 6, scope: !1299, inlinedAt: !2400)
!2407 = !DILocation(line: 177, column: 17, scope: !1299, inlinedAt: !2400)
!2408 = !DILocation(line: 178, column: 6, scope: !1299, inlinedAt: !2400)
!2409 = !DILocation(line: 178, column: 18, scope: !1299, inlinedAt: !2400)
!2410 = !DILocation(line: 1020, column: 10, scope: !2367)
!2411 = !DILocation(line: 1021, column: 1, scope: !2367)
!2412 = !DILocation(line: 1020, column: 3, scope: !2367)
!2413 = distinct !DISubprogram(name: "quotearg_custom", scope: !220, file: !220, line: 1024, type: !2414, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!32, !6, !6, !6}
!2416 = !{!2417, !2418, !2419}
!2417 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2413, file: !220, line: 1024, type: !6)
!2418 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2413, file: !220, line: 1024, type: !6)
!2419 = !DILocalVariable(name: "arg", arg: 3, scope: !2413, file: !220, line: 1025, type: !6)
!2420 = !DILocation(line: 0, scope: !2413)
!2421 = !DILocation(line: 0, scope: !2357, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1027, column: 10, scope: !2413)
!2423 = !DILocation(line: 0, scope: !2367, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 1009, column: 10, scope: !2357, inlinedAt: !2422)
!2425 = !DILocation(line: 1018, column: 3, scope: !2367, inlinedAt: !2424)
!2426 = !DILocation(line: 1018, column: 26, scope: !2367, inlinedAt: !2424)
!2427 = !DILocation(line: 1018, column: 30, scope: !2367, inlinedAt: !2424)
!2428 = !DILocation(line: 0, scope: !1299, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 1019, column: 3, scope: !2367, inlinedAt: !2424)
!2430 = !DILocation(line: 174, column: 6, scope: !1299, inlinedAt: !2429)
!2431 = !DILocation(line: 174, column: 12, scope: !1299, inlinedAt: !2429)
!2432 = !DILocation(line: 175, column: 8, scope: !1313, inlinedAt: !2429)
!2433 = !DILocation(line: 175, column: 19, scope: !1313, inlinedAt: !2429)
!2434 = !DILocation(line: 176, column: 5, scope: !1313, inlinedAt: !2429)
!2435 = !DILocation(line: 177, column: 6, scope: !1299, inlinedAt: !2429)
!2436 = !DILocation(line: 177, column: 17, scope: !1299, inlinedAt: !2429)
!2437 = !DILocation(line: 178, column: 6, scope: !1299, inlinedAt: !2429)
!2438 = !DILocation(line: 178, column: 18, scope: !1299, inlinedAt: !2429)
!2439 = !DILocation(line: 1020, column: 10, scope: !2367, inlinedAt: !2424)
!2440 = !DILocation(line: 1021, column: 1, scope: !2367, inlinedAt: !2424)
!2441 = !DILocation(line: 1027, column: 3, scope: !2413)
!2442 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !220, file: !220, line: 1031, type: !2443, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!32, !6, !6, !6, !36}
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2442, file: !220, line: 1031, type: !6)
!2447 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2442, file: !220, line: 1031, type: !6)
!2448 = !DILocalVariable(name: "arg", arg: 3, scope: !2442, file: !220, line: 1032, type: !6)
!2449 = !DILocalVariable(name: "argsize", arg: 4, scope: !2442, file: !220, line: 1032, type: !36)
!2450 = !DILocation(line: 0, scope: !2442)
!2451 = !DILocation(line: 0, scope: !2367, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 1034, column: 10, scope: !2442)
!2453 = !DILocation(line: 1018, column: 3, scope: !2367, inlinedAt: !2452)
!2454 = !DILocation(line: 1018, column: 26, scope: !2367, inlinedAt: !2452)
!2455 = !DILocation(line: 1018, column: 30, scope: !2367, inlinedAt: !2452)
!2456 = !DILocation(line: 0, scope: !1299, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 1019, column: 3, scope: !2367, inlinedAt: !2452)
!2458 = !DILocation(line: 174, column: 6, scope: !1299, inlinedAt: !2457)
!2459 = !DILocation(line: 174, column: 12, scope: !1299, inlinedAt: !2457)
!2460 = !DILocation(line: 175, column: 8, scope: !1313, inlinedAt: !2457)
!2461 = !DILocation(line: 175, column: 19, scope: !1313, inlinedAt: !2457)
!2462 = !DILocation(line: 176, column: 5, scope: !1313, inlinedAt: !2457)
!2463 = !DILocation(line: 177, column: 6, scope: !1299, inlinedAt: !2457)
!2464 = !DILocation(line: 177, column: 17, scope: !1299, inlinedAt: !2457)
!2465 = !DILocation(line: 178, column: 6, scope: !1299, inlinedAt: !2457)
!2466 = !DILocation(line: 178, column: 18, scope: !1299, inlinedAt: !2457)
!2467 = !DILocation(line: 1020, column: 10, scope: !2367, inlinedAt: !2452)
!2468 = !DILocation(line: 1021, column: 1, scope: !2367, inlinedAt: !2452)
!2469 = !DILocation(line: 1034, column: 3, scope: !2442)
!2470 = distinct !DISubprogram(name: "quote_n_mem", scope: !220, file: !220, line: 1049, type: !2471, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!6, !34, !6, !36}
!2473 = !{!2474, !2475, !2476}
!2474 = !DILocalVariable(name: "n", arg: 1, scope: !2470, file: !220, line: 1049, type: !34)
!2475 = !DILocalVariable(name: "arg", arg: 2, scope: !2470, file: !220, line: 1049, type: !6)
!2476 = !DILocalVariable(name: "argsize", arg: 3, scope: !2470, file: !220, line: 1049, type: !36)
!2477 = !DILocation(line: 0, scope: !2470)
!2478 = !DILocation(line: 1051, column: 10, scope: !2470)
!2479 = !DILocation(line: 1051, column: 3, scope: !2470)
!2480 = distinct !DISubprogram(name: "quote_mem", scope: !220, file: !220, line: 1055, type: !2481, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!6, !6, !36}
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "arg", arg: 1, scope: !2480, file: !220, line: 1055, type: !6)
!2485 = !DILocalVariable(name: "argsize", arg: 2, scope: !2480, file: !220, line: 1055, type: !36)
!2486 = !DILocation(line: 0, scope: !2480)
!2487 = !DILocation(line: 0, scope: !2470, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 1057, column: 10, scope: !2480)
!2489 = !DILocation(line: 1051, column: 10, scope: !2470, inlinedAt: !2488)
!2490 = !DILocation(line: 1057, column: 3, scope: !2480)
!2491 = distinct !DISubprogram(name: "quote_n", scope: !220, file: !220, line: 1061, type: !2492, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!6, !34, !6}
!2494 = !{!2495, !2496}
!2495 = !DILocalVariable(name: "n", arg: 1, scope: !2491, file: !220, line: 1061, type: !34)
!2496 = !DILocalVariable(name: "arg", arg: 2, scope: !2491, file: !220, line: 1061, type: !6)
!2497 = !DILocation(line: 0, scope: !2491)
!2498 = !DILocation(line: 0, scope: !2470, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 1063, column: 10, scope: !2491)
!2500 = !DILocation(line: 1051, column: 10, scope: !2470, inlinedAt: !2499)
!2501 = !DILocation(line: 1063, column: 3, scope: !2491)
!2502 = distinct !DISubprogram(name: "quote", scope: !220, file: !220, line: 1067, type: !2503, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!6, !6}
!2505 = !{!2506}
!2506 = !DILocalVariable(name: "arg", arg: 1, scope: !2502, file: !220, line: 1067, type: !6)
!2507 = !DILocation(line: 0, scope: !2502)
!2508 = !DILocation(line: 0, scope: !2491, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 1069, column: 10, scope: !2502)
!2510 = !DILocation(line: 0, scope: !2470, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 1063, column: 10, scope: !2491, inlinedAt: !2509)
!2512 = !DILocation(line: 1051, column: 10, scope: !2470, inlinedAt: !2511)
!2513 = !DILocation(line: 1069, column: 3, scope: !2502)
!2514 = distinct !DISubprogram(name: "version_etc_arn", scope: !339, file: !339, line: 61, type: !2515, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2552)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{null, !2517, !6, !6, !6, !2551, !36}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !2519)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !2520)
!2520 = !{!2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2519, file: !65, line: 51, baseType: !34, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2519, file: !65, line: 54, baseType: !32, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2519, file: !65, line: 55, baseType: !32, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2519, file: !65, line: 56, baseType: !32, size: 64, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2519, file: !65, line: 57, baseType: !32, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2519, file: !65, line: 58, baseType: !32, size: 64, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2519, file: !65, line: 59, baseType: !32, size: 64, offset: 384)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2519, file: !65, line: 60, baseType: !32, size: 64, offset: 448)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2519, file: !65, line: 61, baseType: !32, size: 64, offset: 512)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2519, file: !65, line: 64, baseType: !32, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2519, file: !65, line: 65, baseType: !32, size: 64, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2519, file: !65, line: 66, baseType: !32, size: 64, offset: 704)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2519, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2519, file: !65, line: 70, baseType: !2535, size: 64, offset: 832)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2519, file: !65, line: 72, baseType: !34, size: 32, offset: 896)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2519, file: !65, line: 73, baseType: !34, size: 32, offset: 928)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2519, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2519, file: !65, line: 77, baseType: !35, size: 16, offset: 1024)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2519, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2519, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2519, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2519, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2519, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2519, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2519, file: !65, line: 93, baseType: !2535, size: 64, offset: 1344)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2519, file: !65, line: 94, baseType: !33, size: 64, offset: 1408)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2519, file: !65, line: 95, baseType: !36, size: 64, offset: 1472)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2519, file: !65, line: 96, baseType: !34, size: 32, offset: 1536)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2519, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558}
!2553 = !DILocalVariable(name: "stream", arg: 1, scope: !2514, file: !339, line: 61, type: !2517)
!2554 = !DILocalVariable(name: "command_name", arg: 2, scope: !2514, file: !339, line: 62, type: !6)
!2555 = !DILocalVariable(name: "package", arg: 3, scope: !2514, file: !339, line: 62, type: !6)
!2556 = !DILocalVariable(name: "version", arg: 4, scope: !2514, file: !339, line: 63, type: !6)
!2557 = !DILocalVariable(name: "authors", arg: 5, scope: !2514, file: !339, line: 64, type: !2551)
!2558 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2514, file: !339, line: 64, type: !36)
!2559 = !DILocation(line: 0, scope: !2514)
!2560 = !DILocation(line: 66, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2514, file: !339, line: 66, column: 7)
!2562 = !DILocation(line: 66, column: 7, scope: !2514)
!2563 = !DILocation(line: 67, column: 5, scope: !2561)
!2564 = !DILocation(line: 69, column: 5, scope: !2561)
!2565 = !DILocation(line: 83, column: 3, scope: !2514)
!2566 = !DILocation(line: 85, column: 3, scope: !2514)
!2567 = !DILocation(line: 88, column: 3, scope: !2514)
!2568 = !DILocation(line: 95, column: 3, scope: !2514)
!2569 = !DILocation(line: 97, column: 3, scope: !2514)
!2570 = !DILocation(line: 105, column: 7, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2514, file: !339, line: 98, column: 5)
!2572 = !DILocation(line: 106, column: 7, scope: !2571)
!2573 = !DILocation(line: 109, column: 7, scope: !2571)
!2574 = !DILocation(line: 110, column: 7, scope: !2571)
!2575 = !DILocation(line: 113, column: 7, scope: !2571)
!2576 = !DILocation(line: 115, column: 7, scope: !2571)
!2577 = !DILocation(line: 120, column: 7, scope: !2571)
!2578 = !DILocation(line: 122, column: 7, scope: !2571)
!2579 = !DILocation(line: 127, column: 7, scope: !2571)
!2580 = !DILocation(line: 129, column: 7, scope: !2571)
!2581 = !DILocation(line: 134, column: 7, scope: !2571)
!2582 = !DILocation(line: 137, column: 7, scope: !2571)
!2583 = !DILocation(line: 142, column: 7, scope: !2571)
!2584 = !DILocation(line: 145, column: 7, scope: !2571)
!2585 = !DILocation(line: 150, column: 7, scope: !2571)
!2586 = !DILocation(line: 154, column: 7, scope: !2571)
!2587 = !DILocation(line: 159, column: 7, scope: !2571)
!2588 = !DILocation(line: 163, column: 7, scope: !2571)
!2589 = !DILocation(line: 170, column: 7, scope: !2571)
!2590 = !DILocation(line: 174, column: 7, scope: !2571)
!2591 = !DILocation(line: 176, column: 1, scope: !2514)
!2592 = distinct !DISubprogram(name: "version_etc_ar", scope: !339, file: !339, line: 183, type: !2593, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !2517, !6, !6, !6, !2551}
!2595 = !{!2596, !2597, !2598, !2599, !2600, !2601}
!2596 = !DILocalVariable(name: "stream", arg: 1, scope: !2592, file: !339, line: 183, type: !2517)
!2597 = !DILocalVariable(name: "command_name", arg: 2, scope: !2592, file: !339, line: 184, type: !6)
!2598 = !DILocalVariable(name: "package", arg: 3, scope: !2592, file: !339, line: 184, type: !6)
!2599 = !DILocalVariable(name: "version", arg: 4, scope: !2592, file: !339, line: 185, type: !6)
!2600 = !DILocalVariable(name: "authors", arg: 5, scope: !2592, file: !339, line: 185, type: !2551)
!2601 = !DILocalVariable(name: "n_authors", scope: !2592, file: !339, line: 187, type: !36)
!2602 = !DILocation(line: 0, scope: !2592)
!2603 = !DILocation(line: 189, column: 8, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2592, file: !339, line: 189, column: 3)
!2605 = !DILocation(line: 0, scope: !2604)
!2606 = !DILocation(line: 189, column: 23, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2604, file: !339, line: 189, column: 3)
!2608 = !DILocation(line: 189, column: 3, scope: !2604)
!2609 = !DILocation(line: 189, column: 52, scope: !2607)
!2610 = distinct !{!2610, !2608, !2611, !497}
!2611 = !DILocation(line: 190, column: 5, scope: !2604)
!2612 = !DILocation(line: 191, column: 3, scope: !2592)
!2613 = !DILocation(line: 192, column: 1, scope: !2592)
!2614 = distinct !DISubprogram(name: "version_etc_va", scope: !339, file: !339, line: 199, type: !2615, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2628)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !2517, !6, !6, !6, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !2618)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !2619)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2620, baseType: !2621)
!2620 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2626, !2627}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2621, file: !2620, line: 192, baseType: !33, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2621, file: !2620, line: 192, baseType: !33, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2621, file: !2620, line: 192, baseType: !33, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2621, file: !2620, line: 192, baseType: !34, size: 32, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2621, file: !2620, line: 192, baseType: !34, size: 32, offset: 224)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634, !2635}
!2629 = !DILocalVariable(name: "stream", arg: 1, scope: !2614, file: !339, line: 199, type: !2517)
!2630 = !DILocalVariable(name: "command_name", arg: 2, scope: !2614, file: !339, line: 200, type: !6)
!2631 = !DILocalVariable(name: "package", arg: 3, scope: !2614, file: !339, line: 200, type: !6)
!2632 = !DILocalVariable(name: "version", arg: 4, scope: !2614, file: !339, line: 201, type: !6)
!2633 = !DILocalVariable(name: "authors", arg: 5, scope: !2614, file: !339, line: 201, type: !2617)
!2634 = !DILocalVariable(name: "n_authors", scope: !2614, file: !339, line: 203, type: !36)
!2635 = !DILocalVariable(name: "authtab", scope: !2614, file: !339, line: 204, type: !2636)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !247)
!2637 = !DILocation(line: 0, scope: !2614)
!2638 = !DILocation(line: 201, column: 46, scope: !2614)
!2639 = !DILocation(line: 204, column: 3, scope: !2614)
!2640 = !DILocation(line: 204, column: 15, scope: !2614)
!2641 = !DILocation(line: 208, column: 35, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !339, line: 206, column: 3)
!2643 = distinct !DILexicalBlock(scope: !2614, file: !339, line: 206, column: 3)
!2644 = !DILocation(line: 208, column: 14, scope: !2642)
!2645 = !DILocation(line: 208, column: 33, scope: !2642)
!2646 = !DILocation(line: 208, column: 67, scope: !2642)
!2647 = !DILocation(line: 206, column: 3, scope: !2643)
!2648 = !DILocation(line: 0, scope: !2643)
!2649 = !DILocation(line: 211, column: 3, scope: !2614)
!2650 = !DILocation(line: 213, column: 1, scope: !2614)
!2651 = distinct !DISubprogram(name: "version_etc", scope: !339, file: !339, line: 230, type: !2652, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{null, !2517, !6, !6, !6, null}
!2654 = !{!2655, !2656, !2657, !2658, !2659}
!2655 = !DILocalVariable(name: "stream", arg: 1, scope: !2651, file: !339, line: 230, type: !2517)
!2656 = !DILocalVariable(name: "command_name", arg: 2, scope: !2651, file: !339, line: 231, type: !6)
!2657 = !DILocalVariable(name: "package", arg: 3, scope: !2651, file: !339, line: 231, type: !6)
!2658 = !DILocalVariable(name: "version", arg: 4, scope: !2651, file: !339, line: 232, type: !6)
!2659 = !DILocalVariable(name: "authors", scope: !2651, file: !339, line: 234, type: !2617)
!2660 = !DILocation(line: 0, scope: !2651)
!2661 = !DILocation(line: 234, column: 3, scope: !2651)
!2662 = !DILocation(line: 234, column: 11, scope: !2651)
!2663 = !DILocation(line: 235, column: 3, scope: !2651)
!2664 = !DILocation(line: 236, column: 3, scope: !2651)
!2665 = !DILocation(line: 237, column: 3, scope: !2651)
!2666 = !DILocation(line: 238, column: 1, scope: !2651)
!2667 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !339, file: !339, line: 241, type: !173, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !442)
!2668 = !DILocation(line: 243, column: 3, scope: !2667)
!2669 = !DILocation(line: 248, column: 3, scope: !2667)
!2670 = !DILocation(line: 254, column: 3, scope: !2667)
!2671 = !DILocation(line: 259, column: 3, scope: !2667)
!2672 = !DILocation(line: 261, column: 1, scope: !2667)
!2673 = distinct !DISubprogram(name: "xnrealloc", scope: !2674, file: !2674, line: 147, type: !2675, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2677)
!2674 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!33, !33, !36, !36}
!2677 = !{!2678, !2679, !2680}
!2678 = !DILocalVariable(name: "p", arg: 1, scope: !2673, file: !2674, line: 147, type: !33)
!2679 = !DILocalVariable(name: "n", arg: 2, scope: !2673, file: !2674, line: 147, type: !36)
!2680 = !DILocalVariable(name: "s", arg: 3, scope: !2673, file: !2674, line: 147, type: !36)
!2681 = !DILocation(line: 0, scope: !2673)
!2682 = !DILocalVariable(name: "p", arg: 1, scope: !2683, file: !346, line: 83, type: !33)
!2683 = distinct !DISubprogram(name: "xreallocarray", scope: !346, file: !346, line: 83, type: !2675, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2684)
!2684 = !{!2682, !2685, !2686}
!2685 = !DILocalVariable(name: "n", arg: 2, scope: !2683, file: !346, line: 83, type: !36)
!2686 = !DILocalVariable(name: "s", arg: 3, scope: !2683, file: !346, line: 83, type: !36)
!2687 = !DILocation(line: 0, scope: !2683, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 149, column: 10, scope: !2673)
!2689 = !DILocation(line: 85, column: 25, scope: !2683, inlinedAt: !2688)
!2690 = !DILocalVariable(name: "p", arg: 1, scope: !2691, file: !346, line: 37, type: !33)
!2691 = distinct !DISubprogram(name: "check_nonnull", scope: !346, file: !346, line: 37, type: !2692, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!33, !33}
!2694 = !{!2690}
!2695 = !DILocation(line: 0, scope: !2691, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 85, column: 10, scope: !2683, inlinedAt: !2688)
!2697 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2696)
!2698 = distinct !DILexicalBlock(scope: !2691, file: !346, line: 39, column: 7)
!2699 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2696)
!2700 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2696)
!2701 = !DILocation(line: 149, column: 3, scope: !2673)
!2702 = !DILocation(line: 0, scope: !2683)
!2703 = !DILocation(line: 85, column: 25, scope: !2683)
!2704 = !DILocation(line: 0, scope: !2691, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 85, column: 10, scope: !2683)
!2706 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2705)
!2707 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2705)
!2708 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2705)
!2709 = !DILocation(line: 85, column: 3, scope: !2683)
!2710 = distinct !DISubprogram(name: "xmalloc", scope: !346, file: !346, line: 47, type: !2711, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!33, !36}
!2713 = !{!2714}
!2714 = !DILocalVariable(name: "s", arg: 1, scope: !2710, file: !346, line: 47, type: !36)
!2715 = !DILocation(line: 0, scope: !2710)
!2716 = !DILocation(line: 49, column: 25, scope: !2710)
!2717 = !DILocation(line: 0, scope: !2691, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 49, column: 10, scope: !2710)
!2719 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2718)
!2720 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2718)
!2721 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2718)
!2722 = !DILocation(line: 49, column: 3, scope: !2710)
!2723 = distinct !DISubprogram(name: "ximalloc", scope: !346, file: !346, line: 53, type: !2724, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!33, !365}
!2726 = !{!2727}
!2727 = !DILocalVariable(name: "s", arg: 1, scope: !2723, file: !346, line: 53, type: !365)
!2728 = !DILocation(line: 0, scope: !2723)
!2729 = !DILocalVariable(name: "s", arg: 1, scope: !2730, file: !2731, line: 55, type: !365)
!2730 = distinct !DISubprogram(name: "imalloc", scope: !2731, file: !2731, line: 55, type: !2724, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2732)
!2731 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2732 = !{!2729}
!2733 = !DILocation(line: 0, scope: !2730, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 55, column: 25, scope: !2723)
!2735 = !DILocation(line: 57, column: 26, scope: !2730, inlinedAt: !2734)
!2736 = !DILocation(line: 0, scope: !2691, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 55, column: 10, scope: !2723)
!2738 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2737)
!2739 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2737)
!2740 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2737)
!2741 = !DILocation(line: 55, column: 3, scope: !2723)
!2742 = distinct !DISubprogram(name: "xcharalloc", scope: !346, file: !346, line: 59, type: !2743, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!32, !36}
!2745 = !{!2746}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !346, line: 59, type: !36)
!2747 = !DILocation(line: 0, scope: !2742)
!2748 = !DILocation(line: 0, scope: !2710, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 61, column: 10, scope: !2742)
!2750 = !DILocation(line: 49, column: 25, scope: !2710, inlinedAt: !2749)
!2751 = !DILocation(line: 0, scope: !2691, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 49, column: 10, scope: !2710, inlinedAt: !2749)
!2753 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2752)
!2754 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2752)
!2755 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2752)
!2756 = !DILocation(line: 61, column: 3, scope: !2742)
!2757 = distinct !DISubprogram(name: "xrealloc", scope: !346, file: !346, line: 68, type: !2758, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!33, !33, !36}
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "p", arg: 1, scope: !2757, file: !346, line: 68, type: !33)
!2762 = !DILocalVariable(name: "s", arg: 2, scope: !2757, file: !346, line: 68, type: !36)
!2763 = !DILocation(line: 0, scope: !2757)
!2764 = !DILocalVariable(name: "ptr", arg: 1, scope: !2765, file: !2766, line: 2057, type: !33)
!2765 = distinct !DISubprogram(name: "rpl_realloc", scope: !2766, file: !2766, line: 2057, type: !2758, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2767)
!2766 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2767 = !{!2764, !2768}
!2768 = !DILocalVariable(name: "size", arg: 2, scope: !2765, file: !2766, line: 2057, type: !36)
!2769 = !DILocation(line: 0, scope: !2765, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 70, column: 25, scope: !2757)
!2771 = !DILocation(line: 2059, column: 24, scope: !2765, inlinedAt: !2770)
!2772 = !DILocation(line: 2059, column: 10, scope: !2765, inlinedAt: !2770)
!2773 = !DILocation(line: 0, scope: !2691, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 70, column: 10, scope: !2757)
!2775 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2774)
!2776 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2774)
!2777 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2774)
!2778 = !DILocation(line: 70, column: 3, scope: !2757)
!2779 = distinct !DISubprogram(name: "xirealloc", scope: !346, file: !346, line: 74, type: !2780, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!33, !33, !365}
!2782 = !{!2783, !2784}
!2783 = !DILocalVariable(name: "p", arg: 1, scope: !2779, file: !346, line: 74, type: !33)
!2784 = !DILocalVariable(name: "s", arg: 2, scope: !2779, file: !346, line: 74, type: !365)
!2785 = !DILocation(line: 0, scope: !2779)
!2786 = !DILocalVariable(name: "p", arg: 1, scope: !2787, file: !2731, line: 66, type: !33)
!2787 = distinct !DISubprogram(name: "irealloc", scope: !2731, file: !2731, line: 66, type: !2780, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2788)
!2788 = !{!2786, !2789}
!2789 = !DILocalVariable(name: "s", arg: 2, scope: !2787, file: !2731, line: 66, type: !365)
!2790 = !DILocation(line: 0, scope: !2787, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 76, column: 25, scope: !2779)
!2792 = !DILocation(line: 0, scope: !2765, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 68, column: 26, scope: !2787, inlinedAt: !2791)
!2794 = !DILocation(line: 2059, column: 24, scope: !2765, inlinedAt: !2793)
!2795 = !DILocation(line: 2059, column: 10, scope: !2765, inlinedAt: !2793)
!2796 = !DILocation(line: 0, scope: !2691, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 76, column: 10, scope: !2779)
!2798 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2797)
!2799 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2797)
!2800 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2797)
!2801 = !DILocation(line: 76, column: 3, scope: !2779)
!2802 = distinct !DISubprogram(name: "xireallocarray", scope: !346, file: !346, line: 89, type: !2803, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!33, !33, !365, !365}
!2805 = !{!2806, !2807, !2808}
!2806 = !DILocalVariable(name: "p", arg: 1, scope: !2802, file: !346, line: 89, type: !33)
!2807 = !DILocalVariable(name: "n", arg: 2, scope: !2802, file: !346, line: 89, type: !365)
!2808 = !DILocalVariable(name: "s", arg: 3, scope: !2802, file: !346, line: 89, type: !365)
!2809 = !DILocation(line: 0, scope: !2802)
!2810 = !DILocalVariable(name: "p", arg: 1, scope: !2811, file: !2731, line: 98, type: !33)
!2811 = distinct !DISubprogram(name: "ireallocarray", scope: !2731, file: !2731, line: 98, type: !2803, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2812)
!2812 = !{!2810, !2813, !2814}
!2813 = !DILocalVariable(name: "n", arg: 2, scope: !2811, file: !2731, line: 98, type: !365)
!2814 = !DILocalVariable(name: "s", arg: 3, scope: !2811, file: !2731, line: 98, type: !365)
!2815 = !DILocation(line: 0, scope: !2811, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 91, column: 25, scope: !2802)
!2817 = !DILocation(line: 101, column: 13, scope: !2811, inlinedAt: !2816)
!2818 = !DILocation(line: 0, scope: !2691, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 91, column: 10, scope: !2802)
!2820 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2819)
!2821 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2819)
!2822 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2819)
!2823 = !DILocation(line: 91, column: 3, scope: !2802)
!2824 = distinct !DISubprogram(name: "xnmalloc", scope: !346, file: !346, line: 98, type: !2825, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!33, !36, !36}
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "n", arg: 1, scope: !2824, file: !346, line: 98, type: !36)
!2829 = !DILocalVariable(name: "s", arg: 2, scope: !2824, file: !346, line: 98, type: !36)
!2830 = !DILocation(line: 0, scope: !2824)
!2831 = !DILocation(line: 0, scope: !2683, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 100, column: 10, scope: !2824)
!2833 = !DILocation(line: 85, column: 25, scope: !2683, inlinedAt: !2832)
!2834 = !DILocation(line: 0, scope: !2691, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 85, column: 10, scope: !2683, inlinedAt: !2832)
!2836 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2835)
!2837 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2835)
!2838 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2835)
!2839 = !DILocation(line: 100, column: 3, scope: !2824)
!2840 = distinct !DISubprogram(name: "xinmalloc", scope: !346, file: !346, line: 104, type: !2841, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!33, !365, !365}
!2843 = !{!2844, !2845}
!2844 = !DILocalVariable(name: "n", arg: 1, scope: !2840, file: !346, line: 104, type: !365)
!2845 = !DILocalVariable(name: "s", arg: 2, scope: !2840, file: !346, line: 104, type: !365)
!2846 = !DILocation(line: 0, scope: !2840)
!2847 = !DILocation(line: 0, scope: !2802, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 106, column: 10, scope: !2840)
!2849 = !DILocation(line: 0, scope: !2811, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 91, column: 25, scope: !2802, inlinedAt: !2848)
!2851 = !DILocation(line: 101, column: 13, scope: !2811, inlinedAt: !2850)
!2852 = !DILocation(line: 0, scope: !2691, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 91, column: 10, scope: !2802, inlinedAt: !2848)
!2854 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2853)
!2855 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2853)
!2856 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2853)
!2857 = !DILocation(line: 106, column: 3, scope: !2840)
!2858 = distinct !DISubprogram(name: "x2realloc", scope: !346, file: !346, line: 116, type: !2859, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!33, !33, !352}
!2861 = !{!2862, !2863}
!2862 = !DILocalVariable(name: "p", arg: 1, scope: !2858, file: !346, line: 116, type: !33)
!2863 = !DILocalVariable(name: "ps", arg: 2, scope: !2858, file: !346, line: 116, type: !352)
!2864 = !DILocation(line: 0, scope: !2858)
!2865 = !DILocation(line: 0, scope: !349, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 118, column: 10, scope: !2858)
!2867 = !DILocation(line: 178, column: 14, scope: !349, inlinedAt: !2866)
!2868 = !DILocation(line: 180, column: 9, scope: !2869, inlinedAt: !2866)
!2869 = distinct !DILexicalBlock(scope: !349, file: !346, line: 180, column: 7)
!2870 = !DILocation(line: 180, column: 7, scope: !349, inlinedAt: !2866)
!2871 = !DILocation(line: 182, column: 13, scope: !2872, inlinedAt: !2866)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !346, line: 182, column: 11)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !346, line: 181, column: 5)
!2874 = !DILocation(line: 182, column: 11, scope: !2873, inlinedAt: !2866)
!2875 = !DILocation(line: 197, column: 11, scope: !2876, inlinedAt: !2866)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !346, line: 197, column: 11)
!2877 = distinct !DILexicalBlock(scope: !2869, file: !346, line: 195, column: 5)
!2878 = !DILocation(line: 197, column: 11, scope: !2877, inlinedAt: !2866)
!2879 = !DILocation(line: 198, column: 9, scope: !2876, inlinedAt: !2866)
!2880 = !DILocation(line: 0, scope: !2683, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 201, column: 7, scope: !349, inlinedAt: !2866)
!2882 = !DILocation(line: 85, column: 25, scope: !2683, inlinedAt: !2881)
!2883 = !DILocation(line: 0, scope: !2691, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 85, column: 10, scope: !2683, inlinedAt: !2881)
!2885 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2884)
!2886 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2884)
!2887 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2884)
!2888 = !DILocation(line: 202, column: 7, scope: !349, inlinedAt: !2866)
!2889 = !DILocation(line: 118, column: 3, scope: !2858)
!2890 = !DILocation(line: 0, scope: !349)
!2891 = !DILocation(line: 178, column: 14, scope: !349)
!2892 = !DILocation(line: 180, column: 9, scope: !2869)
!2893 = !DILocation(line: 180, column: 7, scope: !349)
!2894 = !DILocation(line: 182, column: 13, scope: !2872)
!2895 = !DILocation(line: 182, column: 11, scope: !2873)
!2896 = !DILocation(line: 190, column: 30, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2872, file: !346, line: 183, column: 9)
!2898 = !DILocation(line: 191, column: 16, scope: !2897)
!2899 = !DILocation(line: 191, column: 13, scope: !2897)
!2900 = !DILocation(line: 192, column: 9, scope: !2897)
!2901 = !DILocation(line: 197, column: 11, scope: !2876)
!2902 = !DILocation(line: 197, column: 11, scope: !2877)
!2903 = !DILocation(line: 198, column: 9, scope: !2876)
!2904 = !DILocation(line: 0, scope: !2683, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 201, column: 7, scope: !349)
!2906 = !DILocation(line: 85, column: 25, scope: !2683, inlinedAt: !2905)
!2907 = !DILocation(line: 0, scope: !2691, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 85, column: 10, scope: !2683, inlinedAt: !2905)
!2909 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2908)
!2910 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2908)
!2911 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2908)
!2912 = !DILocation(line: 202, column: 7, scope: !349)
!2913 = !DILocation(line: 203, column: 3, scope: !349)
!2914 = !DILocation(line: 0, scope: !361)
!2915 = !DILocation(line: 230, column: 14, scope: !361)
!2916 = !DILocation(line: 238, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !361, file: !346, line: 238, column: 7)
!2918 = !DILocation(line: 238, column: 7, scope: !361)
!2919 = !DILocation(line: 240, column: 9, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !361, file: !346, line: 240, column: 7)
!2921 = !DILocation(line: 240, column: 18, scope: !2920)
!2922 = !DILocation(line: 253, column: 8, scope: !361)
!2923 = !DILocation(line: 258, column: 27, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !346, line: 257, column: 5)
!2925 = distinct !DILexicalBlock(scope: !361, file: !346, line: 256, column: 7)
!2926 = !DILocation(line: 259, column: 32, scope: !2924)
!2927 = !DILocation(line: 260, column: 5, scope: !2924)
!2928 = !DILocation(line: 262, column: 9, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !361, file: !346, line: 262, column: 7)
!2930 = !DILocation(line: 262, column: 7, scope: !361)
!2931 = !DILocation(line: 263, column: 9, scope: !2929)
!2932 = !DILocation(line: 263, column: 5, scope: !2929)
!2933 = !DILocation(line: 264, column: 9, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !361, file: !346, line: 264, column: 7)
!2935 = !DILocation(line: 264, column: 14, scope: !2934)
!2936 = !DILocation(line: 265, column: 7, scope: !2934)
!2937 = !DILocation(line: 265, column: 11, scope: !2934)
!2938 = !DILocation(line: 266, column: 11, scope: !2934)
!2939 = !DILocation(line: 266, column: 26, scope: !2934)
!2940 = !DILocation(line: 267, column: 14, scope: !2934)
!2941 = !DILocation(line: 264, column: 7, scope: !361)
!2942 = !DILocation(line: 268, column: 5, scope: !2934)
!2943 = !DILocation(line: 0, scope: !2757, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 269, column: 8, scope: !361)
!2945 = !DILocation(line: 0, scope: !2765, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 70, column: 25, scope: !2757, inlinedAt: !2944)
!2947 = !DILocation(line: 2059, column: 24, scope: !2765, inlinedAt: !2946)
!2948 = !DILocation(line: 2059, column: 10, scope: !2765, inlinedAt: !2946)
!2949 = !DILocation(line: 0, scope: !2691, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 70, column: 10, scope: !2757, inlinedAt: !2944)
!2951 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2950)
!2952 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2950)
!2953 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2950)
!2954 = !DILocation(line: 270, column: 7, scope: !361)
!2955 = !DILocation(line: 271, column: 3, scope: !361)
!2956 = distinct !DISubprogram(name: "xzalloc", scope: !346, file: !346, line: 279, type: !2711, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2957)
!2957 = !{!2958}
!2958 = !DILocalVariable(name: "s", arg: 1, scope: !2956, file: !346, line: 279, type: !36)
!2959 = !DILocation(line: 0, scope: !2956)
!2960 = !DILocalVariable(name: "n", arg: 1, scope: !2961, file: !346, line: 294, type: !36)
!2961 = distinct !DISubprogram(name: "xcalloc", scope: !346, file: !346, line: 294, type: !2825, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2962)
!2962 = !{!2960, !2963}
!2963 = !DILocalVariable(name: "s", arg: 2, scope: !2961, file: !346, line: 294, type: !36)
!2964 = !DILocation(line: 0, scope: !2961, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 281, column: 10, scope: !2956)
!2966 = !DILocation(line: 296, column: 25, scope: !2961, inlinedAt: !2965)
!2967 = !DILocation(line: 0, scope: !2691, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 296, column: 10, scope: !2961, inlinedAt: !2965)
!2969 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2968)
!2970 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2968)
!2971 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2968)
!2972 = !DILocation(line: 281, column: 3, scope: !2956)
!2973 = !DILocation(line: 0, scope: !2961)
!2974 = !DILocation(line: 296, column: 25, scope: !2961)
!2975 = !DILocation(line: 0, scope: !2691, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 296, column: 10, scope: !2961)
!2977 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2976)
!2978 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2976)
!2979 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2976)
!2980 = !DILocation(line: 296, column: 3, scope: !2961)
!2981 = distinct !DISubprogram(name: "xizalloc", scope: !346, file: !346, line: 285, type: !2724, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2982)
!2982 = !{!2983}
!2983 = !DILocalVariable(name: "s", arg: 1, scope: !2981, file: !346, line: 285, type: !365)
!2984 = !DILocation(line: 0, scope: !2981)
!2985 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !346, line: 300, type: !365)
!2986 = distinct !DISubprogram(name: "xicalloc", scope: !346, file: !346, line: 300, type: !2841, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2987)
!2987 = !{!2985, !2988}
!2988 = !DILocalVariable(name: "s", arg: 2, scope: !2986, file: !346, line: 300, type: !365)
!2989 = !DILocation(line: 0, scope: !2986, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 287, column: 10, scope: !2981)
!2991 = !DILocalVariable(name: "n", arg: 1, scope: !2992, file: !2731, line: 77, type: !365)
!2992 = distinct !DISubprogram(name: "icalloc", scope: !2731, file: !2731, line: 77, type: !2841, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !2993)
!2993 = !{!2991, !2994}
!2994 = !DILocalVariable(name: "s", arg: 2, scope: !2992, file: !2731, line: 77, type: !365)
!2995 = !DILocation(line: 0, scope: !2992, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 302, column: 25, scope: !2986, inlinedAt: !2990)
!2997 = !DILocation(line: 91, column: 10, scope: !2992, inlinedAt: !2996)
!2998 = !DILocation(line: 0, scope: !2691, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 302, column: 10, scope: !2986, inlinedAt: !2990)
!3000 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !2999)
!3001 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !2999)
!3002 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !2999)
!3003 = !DILocation(line: 287, column: 3, scope: !2981)
!3004 = !DILocation(line: 0, scope: !2986)
!3005 = !DILocation(line: 0, scope: !2992, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 302, column: 25, scope: !2986)
!3007 = !DILocation(line: 91, column: 10, scope: !2992, inlinedAt: !3006)
!3008 = !DILocation(line: 0, scope: !2691, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 302, column: 10, scope: !2986)
!3010 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !3009)
!3011 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !3009)
!3012 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !3009)
!3013 = !DILocation(line: 302, column: 3, scope: !2986)
!3014 = distinct !DISubprogram(name: "xmemdup", scope: !346, file: !346, line: 310, type: !3015, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!33, !631, !36}
!3017 = !{!3018, !3019}
!3018 = !DILocalVariable(name: "p", arg: 1, scope: !3014, file: !346, line: 310, type: !631)
!3019 = !DILocalVariable(name: "s", arg: 2, scope: !3014, file: !346, line: 310, type: !36)
!3020 = !DILocation(line: 0, scope: !3014)
!3021 = !DILocation(line: 0, scope: !2710, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 312, column: 18, scope: !3014)
!3023 = !DILocation(line: 49, column: 25, scope: !2710, inlinedAt: !3022)
!3024 = !DILocation(line: 0, scope: !2691, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 49, column: 10, scope: !2710, inlinedAt: !3022)
!3026 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !3025)
!3027 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !3025)
!3028 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !3025)
!3029 = !DILocalVariable(name: "__dest", arg: 1, scope: !3030, file: !1201, line: 26, type: !3033)
!3030 = distinct !DISubprogram(name: "memcpy", scope: !1201, file: !1201, line: 26, type: !3031, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3034)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!33, !3033, !630, !36}
!3033 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!3034 = !{!3029, !3035, !3036}
!3035 = !DILocalVariable(name: "__src", arg: 2, scope: !3030, file: !1201, line: 26, type: !630)
!3036 = !DILocalVariable(name: "__len", arg: 3, scope: !3030, file: !1201, line: 26, type: !36)
!3037 = !DILocation(line: 0, scope: !3030, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 312, column: 10, scope: !3014)
!3039 = !DILocation(line: 29, column: 10, scope: !3030, inlinedAt: !3038)
!3040 = !DILocation(line: 312, column: 3, scope: !3014)
!3041 = distinct !DISubprogram(name: "ximemdup", scope: !346, file: !346, line: 316, type: !3042, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!33, !631, !365}
!3044 = !{!3045, !3046}
!3045 = !DILocalVariable(name: "p", arg: 1, scope: !3041, file: !346, line: 316, type: !631)
!3046 = !DILocalVariable(name: "s", arg: 2, scope: !3041, file: !346, line: 316, type: !365)
!3047 = !DILocation(line: 0, scope: !3041)
!3048 = !DILocation(line: 0, scope: !2723, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 318, column: 18, scope: !3041)
!3050 = !DILocation(line: 0, scope: !2730, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 55, column: 25, scope: !2723, inlinedAt: !3049)
!3052 = !DILocation(line: 57, column: 26, scope: !2730, inlinedAt: !3051)
!3053 = !DILocation(line: 0, scope: !2691, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 55, column: 10, scope: !2723, inlinedAt: !3049)
!3055 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !3054)
!3056 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !3054)
!3057 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !3054)
!3058 = !DILocation(line: 0, scope: !3030, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 318, column: 10, scope: !3041)
!3060 = !DILocation(line: 29, column: 10, scope: !3030, inlinedAt: !3059)
!3061 = !DILocation(line: 318, column: 3, scope: !3041)
!3062 = distinct !DISubprogram(name: "ximemdup0", scope: !346, file: !346, line: 325, type: !3063, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!32, !631, !365}
!3065 = !{!3066, !3067, !3068}
!3066 = !DILocalVariable(name: "p", arg: 1, scope: !3062, file: !346, line: 325, type: !631)
!3067 = !DILocalVariable(name: "s", arg: 2, scope: !3062, file: !346, line: 325, type: !365)
!3068 = !DILocalVariable(name: "result", scope: !3062, file: !346, line: 327, type: !32)
!3069 = !DILocation(line: 0, scope: !3062)
!3070 = !DILocation(line: 327, column: 30, scope: !3062)
!3071 = !DILocation(line: 0, scope: !2723, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 327, column: 18, scope: !3062)
!3073 = !DILocation(line: 0, scope: !2730, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 55, column: 25, scope: !2723, inlinedAt: !3072)
!3075 = !DILocation(line: 57, column: 26, scope: !2730, inlinedAt: !3074)
!3076 = !DILocation(line: 0, scope: !2691, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 55, column: 10, scope: !2723, inlinedAt: !3072)
!3078 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !3077)
!3079 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !3077)
!3080 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !3077)
!3081 = !DILocation(line: 328, column: 3, scope: !3062)
!3082 = !DILocation(line: 328, column: 13, scope: !3062)
!3083 = !DILocation(line: 0, scope: !3030, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 329, column: 10, scope: !3062)
!3085 = !DILocation(line: 29, column: 10, scope: !3030, inlinedAt: !3084)
!3086 = !DILocation(line: 329, column: 3, scope: !3062)
!3087 = distinct !DISubprogram(name: "xstrdup", scope: !346, file: !346, line: 335, type: !625, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !3088)
!3088 = !{!3089}
!3089 = !DILocalVariable(name: "string", arg: 1, scope: !3087, file: !346, line: 335, type: !6)
!3090 = !DILocation(line: 0, scope: !3087)
!3091 = !DILocation(line: 337, column: 27, scope: !3087)
!3092 = !DILocation(line: 337, column: 43, scope: !3087)
!3093 = !DILocation(line: 0, scope: !3014, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 337, column: 10, scope: !3087)
!3095 = !DILocation(line: 0, scope: !2710, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 312, column: 18, scope: !3014, inlinedAt: !3094)
!3097 = !DILocation(line: 49, column: 25, scope: !2710, inlinedAt: !3096)
!3098 = !DILocation(line: 0, scope: !2691, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 49, column: 10, scope: !2710, inlinedAt: !3096)
!3100 = !DILocation(line: 39, column: 8, scope: !2698, inlinedAt: !3099)
!3101 = !DILocation(line: 39, column: 7, scope: !2691, inlinedAt: !3099)
!3102 = !DILocation(line: 40, column: 5, scope: !2698, inlinedAt: !3099)
!3103 = !DILocation(line: 0, scope: !3030, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 312, column: 10, scope: !3014, inlinedAt: !3094)
!3105 = !DILocation(line: 29, column: 10, scope: !3030, inlinedAt: !3104)
!3106 = !DILocation(line: 337, column: 3, scope: !3087)
!3107 = distinct !DISubprogram(name: "xalloc_die", scope: !380, file: !380, line: 32, type: !173, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3108)
!3108 = !{!3109}
!3109 = !DILocalVariable(name: "__errstatus", scope: !3110, file: !380, line: 34, type: !3111)
!3110 = distinct !DILexicalBlock(scope: !3107, file: !380, line: 34, column: 3)
!3111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!3112 = !DILocation(line: 34, column: 3, scope: !3110)
!3113 = !DILocation(line: 0, scope: !3110)
!3114 = !DILocation(line: 40, column: 3, scope: !3107)
!3115 = distinct !DISubprogram(name: "close_stream", scope: !382, file: !382, line: 55, type: !3116, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !3152)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!34, !3118}
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3120)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3120, file: !65, line: 51, baseType: !34, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3120, file: !65, line: 54, baseType: !32, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3120, file: !65, line: 55, baseType: !32, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3120, file: !65, line: 56, baseType: !32, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3120, file: !65, line: 57, baseType: !32, size: 64, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3120, file: !65, line: 58, baseType: !32, size: 64, offset: 320)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3120, file: !65, line: 59, baseType: !32, size: 64, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3120, file: !65, line: 60, baseType: !32, size: 64, offset: 448)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3120, file: !65, line: 61, baseType: !32, size: 64, offset: 512)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3120, file: !65, line: 64, baseType: !32, size: 64, offset: 576)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3120, file: !65, line: 65, baseType: !32, size: 64, offset: 640)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3120, file: !65, line: 66, baseType: !32, size: 64, offset: 704)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3120, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3120, file: !65, line: 70, baseType: !3136, size: 64, offset: 832)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3120, file: !65, line: 72, baseType: !34, size: 32, offset: 896)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3120, file: !65, line: 73, baseType: !34, size: 32, offset: 928)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3120, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3120, file: !65, line: 77, baseType: !35, size: 16, offset: 1024)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3120, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3120, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3120, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3120, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3120, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3120, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3120, file: !65, line: 93, baseType: !3136, size: 64, offset: 1344)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3120, file: !65, line: 94, baseType: !33, size: 64, offset: 1408)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3120, file: !65, line: 95, baseType: !36, size: 64, offset: 1472)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3120, file: !65, line: 96, baseType: !34, size: 32, offset: 1536)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3120, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3152 = !{!3153, !3154, !3156, !3157}
!3153 = !DILocalVariable(name: "stream", arg: 1, scope: !3115, file: !382, line: 55, type: !3118)
!3154 = !DILocalVariable(name: "some_pending", scope: !3115, file: !382, line: 57, type: !3155)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!3156 = !DILocalVariable(name: "prev_fail", scope: !3115, file: !382, line: 58, type: !3155)
!3157 = !DILocalVariable(name: "fclose_fail", scope: !3115, file: !382, line: 59, type: !3155)
!3158 = !DILocation(line: 0, scope: !3115)
!3159 = !DILocation(line: 57, column: 30, scope: !3115)
!3160 = !DILocalVariable(name: "__stream", arg: 1, scope: !3161, file: !841, line: 135, type: !3118)
!3161 = distinct !DISubprogram(name: "ferror_unlocked", scope: !841, file: !841, line: 135, type: !3116, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !3162)
!3162 = !{!3160}
!3163 = !DILocation(line: 0, scope: !3161, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 58, column: 27, scope: !3115)
!3165 = !DILocation(line: 137, column: 10, scope: !3161, inlinedAt: !3164)
!3166 = !{!849, !451, i64 0}
!3167 = !DILocation(line: 58, column: 43, scope: !3115)
!3168 = !DILocation(line: 59, column: 29, scope: !3115)
!3169 = !DILocation(line: 59, column: 45, scope: !3115)
!3170 = !DILocation(line: 69, column: 17, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3115, file: !382, line: 69, column: 7)
!3172 = !DILocation(line: 57, column: 50, scope: !3115)
!3173 = !DILocation(line: 69, column: 33, scope: !3171)
!3174 = !DILocation(line: 69, column: 53, scope: !3171)
!3175 = !DILocation(line: 69, column: 59, scope: !3171)
!3176 = !DILocation(line: 69, column: 7, scope: !3115)
!3177 = !DILocation(line: 71, column: 11, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3171, file: !382, line: 70, column: 5)
!3179 = !DILocation(line: 72, column: 9, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3178, file: !382, line: 71, column: 11)
!3181 = !DILocation(line: 72, column: 15, scope: !3180)
!3182 = !DILocation(line: 77, column: 1, scope: !3115)
!3183 = distinct !DISubprogram(name: "rpl_fclose", scope: !384, file: !384, line: 58, type: !3184, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !3220)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!34, !3186}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3188)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3188, file: !65, line: 51, baseType: !34, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3188, file: !65, line: 54, baseType: !32, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3188, file: !65, line: 55, baseType: !32, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3188, file: !65, line: 56, baseType: !32, size: 64, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3188, file: !65, line: 57, baseType: !32, size: 64, offset: 256)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3188, file: !65, line: 58, baseType: !32, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3188, file: !65, line: 59, baseType: !32, size: 64, offset: 384)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3188, file: !65, line: 60, baseType: !32, size: 64, offset: 448)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3188, file: !65, line: 61, baseType: !32, size: 64, offset: 512)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3188, file: !65, line: 64, baseType: !32, size: 64, offset: 576)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3188, file: !65, line: 65, baseType: !32, size: 64, offset: 640)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3188, file: !65, line: 66, baseType: !32, size: 64, offset: 704)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3188, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3188, file: !65, line: 70, baseType: !3204, size: 64, offset: 832)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3188, file: !65, line: 72, baseType: !34, size: 32, offset: 896)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3188, file: !65, line: 73, baseType: !34, size: 32, offset: 928)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3188, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3188, file: !65, line: 77, baseType: !35, size: 16, offset: 1024)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3188, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3188, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3188, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3188, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3188, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3188, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3188, file: !65, line: 93, baseType: !3204, size: 64, offset: 1344)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3188, file: !65, line: 94, baseType: !33, size: 64, offset: 1408)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3188, file: !65, line: 95, baseType: !36, size: 64, offset: 1472)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3188, file: !65, line: 96, baseType: !34, size: 32, offset: 1536)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3188, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3220 = !{!3221, !3222, !3223, !3224}
!3221 = !DILocalVariable(name: "fp", arg: 1, scope: !3183, file: !384, line: 58, type: !3186)
!3222 = !DILocalVariable(name: "saved_errno", scope: !3183, file: !384, line: 60, type: !34)
!3223 = !DILocalVariable(name: "fd", scope: !3183, file: !384, line: 63, type: !34)
!3224 = !DILocalVariable(name: "result", scope: !3183, file: !384, line: 74, type: !34)
!3225 = !DILocation(line: 0, scope: !3183)
!3226 = !DILocation(line: 63, column: 12, scope: !3183)
!3227 = !DILocation(line: 64, column: 10, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3183, file: !384, line: 64, column: 7)
!3229 = !DILocation(line: 64, column: 7, scope: !3183)
!3230 = !DILocation(line: 65, column: 12, scope: !3228)
!3231 = !DILocation(line: 65, column: 5, scope: !3228)
!3232 = !DILocation(line: 70, column: 9, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3183, file: !384, line: 70, column: 7)
!3234 = !DILocation(line: 70, column: 23, scope: !3233)
!3235 = !DILocation(line: 70, column: 33, scope: !3233)
!3236 = !DILocation(line: 70, column: 26, scope: !3233)
!3237 = !DILocation(line: 70, column: 59, scope: !3233)
!3238 = !DILocation(line: 71, column: 7, scope: !3233)
!3239 = !DILocation(line: 71, column: 10, scope: !3233)
!3240 = !DILocation(line: 70, column: 7, scope: !3183)
!3241 = !DILocation(line: 100, column: 12, scope: !3183)
!3242 = !DILocation(line: 105, column: 7, scope: !3183)
!3243 = !DILocation(line: 72, column: 19, scope: !3233)
!3244 = !DILocation(line: 105, column: 19, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3183, file: !384, line: 105, column: 7)
!3246 = !DILocation(line: 107, column: 13, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3245, file: !384, line: 106, column: 5)
!3248 = !DILocation(line: 109, column: 5, scope: !3247)
!3249 = !DILocation(line: 112, column: 1, scope: !3183)
!3250 = !DISubprogram(name: "fileno", scope: !146, file: !146, line: 809, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!3251 = !DISubprogram(name: "fclose", scope: !146, file: !146, line: 178, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!3252 = !DISubprogram(name: "lseek", scope: !3253, file: !3253, line: 339, type: !3254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!3253 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!87, !34, !87, !34}
!3256 = distinct !DISubprogram(name: "rpl_fflush", scope: !386, file: !386, line: 130, type: !3257, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !3293)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!34, !3259}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3261, file: !65, line: 51, baseType: !34, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3261, file: !65, line: 54, baseType: !32, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3261, file: !65, line: 55, baseType: !32, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3261, file: !65, line: 56, baseType: !32, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3261, file: !65, line: 57, baseType: !32, size: 64, offset: 256)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3261, file: !65, line: 58, baseType: !32, size: 64, offset: 320)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3261, file: !65, line: 59, baseType: !32, size: 64, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3261, file: !65, line: 60, baseType: !32, size: 64, offset: 448)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3261, file: !65, line: 61, baseType: !32, size: 64, offset: 512)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3261, file: !65, line: 64, baseType: !32, size: 64, offset: 576)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3261, file: !65, line: 65, baseType: !32, size: 64, offset: 640)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3261, file: !65, line: 66, baseType: !32, size: 64, offset: 704)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3261, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3261, file: !65, line: 70, baseType: !3277, size: 64, offset: 832)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3261, file: !65, line: 72, baseType: !34, size: 32, offset: 896)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3261, file: !65, line: 73, baseType: !34, size: 32, offset: 928)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3261, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3261, file: !65, line: 77, baseType: !35, size: 16, offset: 1024)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3261, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3261, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3261, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3261, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3261, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3261, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3261, file: !65, line: 93, baseType: !3277, size: 64, offset: 1344)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3261, file: !65, line: 94, baseType: !33, size: 64, offset: 1408)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3261, file: !65, line: 95, baseType: !36, size: 64, offset: 1472)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3261, file: !65, line: 96, baseType: !34, size: 32, offset: 1536)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3261, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3293 = !{!3294}
!3294 = !DILocalVariable(name: "stream", arg: 1, scope: !3256, file: !386, line: 130, type: !3259)
!3295 = !DILocation(line: 0, scope: !3256)
!3296 = !DILocation(line: 151, column: 14, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3256, file: !386, line: 151, column: 7)
!3298 = !DILocation(line: 151, column: 22, scope: !3297)
!3299 = !DILocation(line: 151, column: 27, scope: !3297)
!3300 = !DILocation(line: 151, column: 7, scope: !3256)
!3301 = !DILocation(line: 152, column: 12, scope: !3297)
!3302 = !DILocation(line: 152, column: 5, scope: !3297)
!3303 = !DILocalVariable(name: "fp", arg: 1, scope: !3304, file: !386, line: 42, type: !3259)
!3304 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !386, file: !386, line: 42, type: !3305, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{null, !3259}
!3307 = !{!3303}
!3308 = !DILocation(line: 0, scope: !3304, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 157, column: 3, scope: !3256)
!3310 = !DILocation(line: 44, column: 12, scope: !3311, inlinedAt: !3309)
!3311 = distinct !DILexicalBlock(scope: !3304, file: !386, line: 44, column: 7)
!3312 = !DILocation(line: 44, column: 19, scope: !3311, inlinedAt: !3309)
!3313 = !DILocation(line: 44, column: 7, scope: !3304, inlinedAt: !3309)
!3314 = !DILocation(line: 46, column: 5, scope: !3311, inlinedAt: !3309)
!3315 = !DILocation(line: 159, column: 10, scope: !3256)
!3316 = !DILocation(line: 159, column: 3, scope: !3256)
!3317 = !DILocation(line: 236, column: 1, scope: !3256)
!3318 = !DISubprogram(name: "fflush", scope: !146, file: !146, line: 230, type: !3257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!3319 = distinct !DISubprogram(name: "rpl_fseeko", scope: !388, file: !388, line: 28, type: !3320, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !3357)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!34, !3322, !3356, !34}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3324)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3324, file: !65, line: 51, baseType: !34, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3324, file: !65, line: 54, baseType: !32, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3324, file: !65, line: 55, baseType: !32, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3324, file: !65, line: 56, baseType: !32, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3324, file: !65, line: 57, baseType: !32, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3324, file: !65, line: 58, baseType: !32, size: 64, offset: 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3324, file: !65, line: 59, baseType: !32, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3324, file: !65, line: 60, baseType: !32, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3324, file: !65, line: 61, baseType: !32, size: 64, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3324, file: !65, line: 64, baseType: !32, size: 64, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3324, file: !65, line: 65, baseType: !32, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3324, file: !65, line: 66, baseType: !32, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3324, file: !65, line: 68, baseType: !80, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3324, file: !65, line: 70, baseType: !3340, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3324, file: !65, line: 72, baseType: !34, size: 32, offset: 896)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3324, file: !65, line: 73, baseType: !34, size: 32, offset: 928)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3324, file: !65, line: 74, baseType: !87, size: 64, offset: 960)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3324, file: !65, line: 77, baseType: !35, size: 16, offset: 1024)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3324, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3324, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3324, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3324, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3324, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3324, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3324, file: !65, line: 93, baseType: !3340, size: 64, offset: 1344)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3324, file: !65, line: 94, baseType: !33, size: 64, offset: 1408)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3324, file: !65, line: 95, baseType: !36, size: 64, offset: 1472)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3324, file: !65, line: 96, baseType: !34, size: 32, offset: 1536)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3324, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !146, line: 63, baseType: !87)
!3357 = !{!3358, !3359, !3360, !3361}
!3358 = !DILocalVariable(name: "fp", arg: 1, scope: !3319, file: !388, line: 28, type: !3322)
!3359 = !DILocalVariable(name: "offset", arg: 2, scope: !3319, file: !388, line: 28, type: !3356)
!3360 = !DILocalVariable(name: "whence", arg: 3, scope: !3319, file: !388, line: 28, type: !34)
!3361 = !DILocalVariable(name: "pos", scope: !3362, file: !388, line: 123, type: !3356)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !388, line: 119, column: 5)
!3363 = distinct !DILexicalBlock(scope: !3319, file: !388, line: 55, column: 7)
!3364 = !DILocation(line: 0, scope: !3319)
!3365 = !DILocation(line: 55, column: 12, scope: !3363)
!3366 = !{!849, !422, i64 16}
!3367 = !DILocation(line: 55, column: 33, scope: !3363)
!3368 = !{!849, !422, i64 8}
!3369 = !DILocation(line: 55, column: 25, scope: !3363)
!3370 = !DILocation(line: 56, column: 7, scope: !3363)
!3371 = !DILocation(line: 56, column: 15, scope: !3363)
!3372 = !DILocation(line: 56, column: 37, scope: !3363)
!3373 = !{!849, !422, i64 32}
!3374 = !DILocation(line: 56, column: 29, scope: !3363)
!3375 = !DILocation(line: 57, column: 7, scope: !3363)
!3376 = !DILocation(line: 57, column: 15, scope: !3363)
!3377 = !{!849, !422, i64 72}
!3378 = !DILocation(line: 57, column: 29, scope: !3363)
!3379 = !DILocation(line: 55, column: 7, scope: !3319)
!3380 = !DILocation(line: 123, column: 26, scope: !3362)
!3381 = !DILocation(line: 123, column: 19, scope: !3362)
!3382 = !DILocation(line: 0, scope: !3362)
!3383 = !DILocation(line: 124, column: 15, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3362, file: !388, line: 124, column: 11)
!3385 = !DILocation(line: 124, column: 11, scope: !3362)
!3386 = !DILocation(line: 135, column: 12, scope: !3362)
!3387 = !DILocation(line: 135, column: 19, scope: !3362)
!3388 = !DILocation(line: 136, column: 12, scope: !3362)
!3389 = !DILocation(line: 136, column: 20, scope: !3362)
!3390 = !{!849, !850, i64 144}
!3391 = !DILocation(line: 167, column: 7, scope: !3362)
!3392 = !DILocation(line: 169, column: 10, scope: !3319)
!3393 = !DILocation(line: 169, column: 3, scope: !3319)
!3394 = !DILocation(line: 170, column: 1, scope: !3319)
!3395 = !DISubprogram(name: "fseeko", scope: !146, file: !146, line: 736, type: !3396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!34, !3322, !87, !34}
!3398 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !323, file: !323, line: 100, type: !3399, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3402)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!36, !1219, !6, !36, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!3402 = !{!3403, !3404, !3405, !3406, !3407}
!3403 = !DILocalVariable(name: "pwc", arg: 1, scope: !3398, file: !323, line: 100, type: !1219)
!3404 = !DILocalVariable(name: "s", arg: 2, scope: !3398, file: !323, line: 100, type: !6)
!3405 = !DILocalVariable(name: "n", arg: 3, scope: !3398, file: !323, line: 100, type: !36)
!3406 = !DILocalVariable(name: "ps", arg: 4, scope: !3398, file: !323, line: 100, type: !3401)
!3407 = !DILocalVariable(name: "ret", scope: !3398, file: !323, line: 130, type: !36)
!3408 = !DILocation(line: 0, scope: !3398)
!3409 = !DILocation(line: 105, column: 9, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3398, file: !323, line: 105, column: 7)
!3411 = !DILocation(line: 105, column: 7, scope: !3398)
!3412 = !DILocation(line: 117, column: 10, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3398, file: !323, line: 117, column: 7)
!3414 = !DILocation(line: 117, column: 7, scope: !3398)
!3415 = !DILocation(line: 130, column: 16, scope: !3398)
!3416 = !DILocation(line: 135, column: 11, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3398, file: !323, line: 135, column: 7)
!3418 = !DILocation(line: 135, column: 25, scope: !3417)
!3419 = !DILocation(line: 135, column: 30, scope: !3417)
!3420 = !DILocation(line: 135, column: 7, scope: !3398)
!3421 = !DILocalVariable(name: "ps", arg: 1, scope: !3422, file: !1192, line: 1135, type: !3401)
!3422 = distinct !DISubprogram(name: "mbszero", scope: !1192, file: !1192, line: 1135, type: !3423, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{null, !3401}
!3425 = !{!3421}
!3426 = !DILocation(line: 0, scope: !3422, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 137, column: 5, scope: !3417)
!3428 = !DILocalVariable(name: "__dest", arg: 1, scope: !3429, file: !1201, line: 57, type: !33)
!3429 = distinct !DISubprogram(name: "memset", scope: !1201, file: !1201, line: 57, type: !1202, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3430)
!3430 = !{!3428, !3431, !3432}
!3431 = !DILocalVariable(name: "__ch", arg: 2, scope: !3429, file: !1201, line: 57, type: !34)
!3432 = !DILocalVariable(name: "__len", arg: 3, scope: !3429, file: !1201, line: 57, type: !36)
!3433 = !DILocation(line: 0, scope: !3429, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 1137, column: 3, scope: !3422, inlinedAt: !3427)
!3435 = !DILocation(line: 59, column: 10, scope: !3429, inlinedAt: !3434)
!3436 = !DILocation(line: 137, column: 5, scope: !3417)
!3437 = !DILocation(line: 138, column: 11, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3398, file: !323, line: 138, column: 7)
!3439 = !DILocation(line: 138, column: 7, scope: !3398)
!3440 = !DILocation(line: 139, column: 5, scope: !3438)
!3441 = !DILocation(line: 143, column: 26, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3398, file: !323, line: 143, column: 7)
!3443 = !DILocation(line: 143, column: 41, scope: !3442)
!3444 = !DILocation(line: 143, column: 7, scope: !3398)
!3445 = !DILocation(line: 145, column: 15, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !323, line: 145, column: 11)
!3447 = distinct !DILexicalBlock(scope: !3442, file: !323, line: 144, column: 5)
!3448 = !DILocation(line: 145, column: 11, scope: !3447)
!3449 = !DILocation(line: 146, column: 32, scope: !3446)
!3450 = !DILocation(line: 146, column: 16, scope: !3446)
!3451 = !DILocation(line: 146, column: 14, scope: !3446)
!3452 = !DILocation(line: 146, column: 9, scope: !3446)
!3453 = !DILocation(line: 286, column: 1, scope: !3398)
!3454 = !DISubprogram(name: "mbsinit", scope: !3455, file: !3455, line: 293, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !442)
!3455 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!34, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!3460 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !390, file: !390, line: 27, type: !2675, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !3461)
!3461 = !{!3462, !3463, !3464, !3465}
!3462 = !DILocalVariable(name: "ptr", arg: 1, scope: !3460, file: !390, line: 27, type: !33)
!3463 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3460, file: !390, line: 27, type: !36)
!3464 = !DILocalVariable(name: "size", arg: 3, scope: !3460, file: !390, line: 27, type: !36)
!3465 = !DILocalVariable(name: "nbytes", scope: !3460, file: !390, line: 29, type: !36)
!3466 = !DILocation(line: 0, scope: !3460)
!3467 = !DILocation(line: 30, column: 7, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3460, file: !390, line: 30, column: 7)
!3469 = !DILocalVariable(name: "ptr", arg: 1, scope: !3470, file: !2766, line: 2057, type: !33)
!3470 = distinct !DISubprogram(name: "rpl_realloc", scope: !2766, file: !2766, line: 2057, type: !2758, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !3471)
!3471 = !{!3469, !3472}
!3472 = !DILocalVariable(name: "size", arg: 2, scope: !3470, file: !2766, line: 2057, type: !36)
!3473 = !DILocation(line: 0, scope: !3470, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 37, column: 10, scope: !3460)
!3475 = !DILocation(line: 2059, column: 24, scope: !3470, inlinedAt: !3474)
!3476 = !DILocation(line: 2059, column: 10, scope: !3470, inlinedAt: !3474)
!3477 = !DILocation(line: 37, column: 3, scope: !3460)
!3478 = !DILocation(line: 32, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3468, file: !390, line: 31, column: 5)
!3480 = !DILocation(line: 32, column: 13, scope: !3479)
!3481 = !DILocation(line: 33, column: 7, scope: !3479)
!3482 = !DILocation(line: 38, column: 1, scope: !3460)
!3483 = distinct !DISubprogram(name: "hard_locale", scope: !393, file: !393, line: 28, type: !775, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !3484)
!3484 = !{!3485, !3486}
!3485 = !DILocalVariable(name: "category", arg: 1, scope: !3483, file: !393, line: 28, type: !34)
!3486 = !DILocalVariable(name: "locale", scope: !3483, file: !393, line: 30, type: !3487)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3488)
!3488 = !{!3489}
!3489 = !DISubrange(count: 257)
!3490 = !DILocation(line: 0, scope: !3483)
!3491 = !DILocation(line: 30, column: 3, scope: !3483)
!3492 = !DILocation(line: 30, column: 8, scope: !3483)
!3493 = !DILocation(line: 32, column: 7, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3483, file: !393, line: 32, column: 7)
!3495 = !DILocation(line: 32, column: 7, scope: !3483)
!3496 = !DILocalVariable(name: "__s1", arg: 1, scope: !3497, file: !463, line: 1359, type: !6)
!3497 = distinct !DISubprogram(name: "streq", scope: !463, file: !463, line: 1359, type: !464, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !3498)
!3498 = !{!3496, !3499}
!3499 = !DILocalVariable(name: "__s2", arg: 2, scope: !3497, file: !463, line: 1359, type: !6)
!3500 = !DILocation(line: 0, scope: !3497, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 35, column: 9, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3483, file: !393, line: 35, column: 7)
!3503 = !DILocation(line: 1361, column: 11, scope: !3497, inlinedAt: !3501)
!3504 = !DILocation(line: 1361, column: 10, scope: !3497, inlinedAt: !3501)
!3505 = !DILocation(line: 35, column: 29, scope: !3502)
!3506 = !DILocation(line: 0, scope: !3497, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 35, column: 32, scope: !3502)
!3508 = !DILocation(line: 1361, column: 11, scope: !3497, inlinedAt: !3507)
!3509 = !DILocation(line: 1361, column: 10, scope: !3497, inlinedAt: !3507)
!3510 = !DILocation(line: 35, column: 7, scope: !3483)
!3511 = !DILocation(line: 46, column: 3, scope: !3483)
!3512 = !DILocation(line: 47, column: 1, scope: !3483)
!3513 = distinct !DISubprogram(name: "setlocale_null_r", scope: !395, file: !395, line: 154, type: !3514, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!34, !34, !32, !36}
!3516 = !{!3517, !3518, !3519}
!3517 = !DILocalVariable(name: "category", arg: 1, scope: !3513, file: !395, line: 154, type: !34)
!3518 = !DILocalVariable(name: "buf", arg: 2, scope: !3513, file: !395, line: 154, type: !32)
!3519 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3513, file: !395, line: 154, type: !36)
!3520 = !DILocation(line: 0, scope: !3513)
!3521 = !DILocation(line: 159, column: 10, scope: !3513)
!3522 = !DILocation(line: 159, column: 3, scope: !3513)
!3523 = distinct !DISubprogram(name: "setlocale_null", scope: !395, file: !395, line: 186, type: !3524, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!6, !34}
!3526 = !{!3527}
!3527 = !DILocalVariable(name: "category", arg: 1, scope: !3523, file: !395, line: 186, type: !34)
!3528 = !DILocation(line: 0, scope: !3523)
!3529 = !DILocation(line: 189, column: 10, scope: !3523)
!3530 = !DILocation(line: 189, column: 3, scope: !3523)
!3531 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !397, file: !397, line: 35, type: !3524, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3532)
!3532 = !{!3533, !3534}
!3533 = !DILocalVariable(name: "category", arg: 1, scope: !3531, file: !397, line: 35, type: !34)
!3534 = !DILocalVariable(name: "result", scope: !3531, file: !397, line: 37, type: !6)
!3535 = !DILocation(line: 0, scope: !3531)
!3536 = !DILocation(line: 37, column: 24, scope: !3531)
!3537 = !DILocation(line: 62, column: 3, scope: !3531)
!3538 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !397, file: !397, line: 66, type: !3514, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3539)
!3539 = !{!3540, !3541, !3542, !3543, !3544}
!3540 = !DILocalVariable(name: "category", arg: 1, scope: !3538, file: !397, line: 66, type: !34)
!3541 = !DILocalVariable(name: "buf", arg: 2, scope: !3538, file: !397, line: 66, type: !32)
!3542 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3538, file: !397, line: 66, type: !36)
!3543 = !DILocalVariable(name: "result", scope: !3538, file: !397, line: 111, type: !6)
!3544 = !DILocalVariable(name: "length", scope: !3545, file: !397, line: 125, type: !36)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !397, line: 124, column: 5)
!3546 = distinct !DILexicalBlock(scope: !3538, file: !397, line: 113, column: 7)
!3547 = !DILocation(line: 0, scope: !3538)
!3548 = !DILocation(line: 0, scope: !3531, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 111, column: 24, scope: !3538)
!3550 = !DILocation(line: 37, column: 24, scope: !3531, inlinedAt: !3549)
!3551 = !DILocation(line: 113, column: 14, scope: !3546)
!3552 = !DILocation(line: 113, column: 7, scope: !3538)
!3553 = !DILocation(line: 116, column: 19, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !397, line: 116, column: 11)
!3555 = distinct !DILexicalBlock(scope: !3546, file: !397, line: 114, column: 5)
!3556 = !DILocation(line: 116, column: 11, scope: !3555)
!3557 = !DILocation(line: 120, column: 16, scope: !3554)
!3558 = !DILocation(line: 120, column: 9, scope: !3554)
!3559 = !DILocation(line: 125, column: 23, scope: !3545)
!3560 = !DILocation(line: 0, scope: !3545)
!3561 = !DILocation(line: 126, column: 18, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3545, file: !397, line: 126, column: 11)
!3563 = !DILocation(line: 126, column: 11, scope: !3545)
!3564 = !DILocation(line: 128, column: 39, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !397, line: 127, column: 9)
!3566 = !DILocalVariable(name: "__dest", arg: 1, scope: !3567, file: !1201, line: 26, type: !3033)
!3567 = distinct !DISubprogram(name: "memcpy", scope: !1201, file: !1201, line: 26, type: !3031, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3568)
!3568 = !{!3566, !3569, !3570}
!3569 = !DILocalVariable(name: "__src", arg: 2, scope: !3567, file: !1201, line: 26, type: !630)
!3570 = !DILocalVariable(name: "__len", arg: 3, scope: !3567, file: !1201, line: 26, type: !36)
!3571 = !DILocation(line: 0, scope: !3567, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 128, column: 11, scope: !3565)
!3573 = !DILocation(line: 29, column: 10, scope: !3567, inlinedAt: !3572)
!3574 = !DILocation(line: 129, column: 11, scope: !3565)
!3575 = !DILocation(line: 133, column: 23, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !397, line: 133, column: 15)
!3577 = distinct !DILexicalBlock(scope: !3562, file: !397, line: 132, column: 9)
!3578 = !DILocation(line: 133, column: 15, scope: !3577)
!3579 = !DILocation(line: 138, column: 44, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3576, file: !397, line: 134, column: 13)
!3581 = !DILocation(line: 0, scope: !3567, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 138, column: 15, scope: !3580)
!3583 = !DILocation(line: 29, column: 10, scope: !3567, inlinedAt: !3582)
!3584 = !DILocation(line: 139, column: 15, scope: !3580)
!3585 = !DILocation(line: 139, column: 32, scope: !3580)
!3586 = !DILocation(line: 140, column: 13, scope: !3580)
!3587 = !DILocation(line: 0, scope: !3546)
!3588 = !DILocation(line: 145, column: 1, scope: !3538)
