; ModuleID = 'src/comm.bc'
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
%struct.linebuffer = type { i64, i64, i8* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Compare sorted files FILE1 and FILE2 line by line.\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"\0AWhen FILE1 or FILE2 (not both) is -, read standard input.\0A\00", align 1
@.str.4 = private unnamed_addr constant [189 x i8] c"\0AWith no options, produce three-column output.  Column one contains\0Alines unique to FILE1, column two contains lines unique to FILE2,\0Aand column three contains lines common to both files.\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"  -1     suppress column 1 (lines unique to FILE1)\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"  -2     suppress column 2 (lines unique to FILE2)\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"  -3     suppress column 3 (lines that appear in both files)\0A\00", align 1
@.str.9 = private unnamed_addr constant [118 x i8] c"      --check-order\0A         check that the input is correctly sorted,\0A         even if all input lines are pairable\0A\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"      --nocheck-order\0A         do not check that the input is correctly sorted\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"      --output-delimiter=STR\0A         separate columns with STR\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"      --total\0A         output a summary\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"  -z, --zero-terminated\0A         line delimiter is NUL, not newline\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"\0AComparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@.str.17 = private unnamed_addr constant [156 x i8] c"\0AExamples:\0A  %s -12 file1 file2  Print only lines present in both file1 and file2.\0A  %s -3 file1 file2  Print lines in file1 not in file2, and vice versa.\0A\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 4, !dbg !0
@.str.21 = private unnamed_addr constant [5 x i8] c"123z\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i32 0, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i32 1, i32* null, i32 258 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 259 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !153
@only_file_1 = internal unnamed_addr global i1 false, align 1, !dbg !186
@only_file_2 = internal unnamed_addr global i1 false, align 1, !dbg !187
@both = internal unnamed_addr global i1 false, align 1, !dbg !188
@delim = internal unnamed_addr global i1 false, align 1, !dbg !189
@check_input_order = internal unnamed_addr global i32 0, align 4, !dbg !65
@col_sep_len = internal unnamed_addr global i64 0, align 8, !dbg !175
@col_sep = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), align 8, !dbg !177
@optarg = external local_unnamed_addr global i8*, align 8
@.str.22 = private unnamed_addr constant [37 x i8] c"multiple output delimiters specified\00", align 1
@total_option = internal unnamed_addr global i1 false, align 1, !dbg !190
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !67
@.str.29 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.51 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.59 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.60 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.73 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@seen_unpairable = internal unnamed_addr global i1 false, align 1, !dbg !191
@.str.75 = private unnamed_addr constant [20 x i8] c"%ju%c%ju%c%ju%c%s%c\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"%ju%s%ju%s%ju%s%s%c\00", align 1
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 4, !dbg !181
@.str.77 = private unnamed_addr constant [29 x i8] c"input is not in sorted order\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !192
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !197
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !202
@.str.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !204
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !240
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !210
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !236
@.str.1.47 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.49 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.48 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !238
@.str.4.42 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.43 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.44 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.81 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !245
@.str.92 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.93 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !251
@.str.96 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.97 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.98 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.99 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.100 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.101 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.102 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.103 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.104 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.105 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.99, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.100, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.101, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.105, i32 0, i32 0), i8* null], align 8, !dbg !285
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !297
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !313
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !343
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !350
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !315
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !352
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !303
@.str.10.108 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.106 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.109 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !320
@.str.124 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.125 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.127 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.128 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.129 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.130 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.145 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.149 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.150 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.151 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !358
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.168 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.2.169 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !366
@.str.3.170 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !372
@.str.179 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !390

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !502 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !506, metadata !DIExpression()), !dbg !507
  %3 = icmp eq i32 %0, 0, !dbg !508
  br i1 %3, label %9, label %4, !dbg !510

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !511, !tbaa !513
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !511
  %7 = load i8*, i8** @program_name, align 8, !dbg !511, !tbaa !513
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !511
  br label %72, !dbg !511

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !517
  %11 = load i8*, i8** @program_name, align 8, !dbg !517, !tbaa !513
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !517
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !519
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !519, !tbaa !513
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !519
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5) #35, !dbg !520
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !520, !tbaa !513
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !520
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([189 x i8], [189 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !521
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !521, !tbaa !513
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20), !dbg !521
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !522
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !522
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !523
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !523
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !524
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !524
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([118 x i8], [118 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !525
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !525
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !526
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !526
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #35, !dbg !527
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !527
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #35, !dbg !528
  tail call fastcc void @oputs_(i8* noundef %28), !dbg !528
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #35, !dbg !529
  tail call fastcc void @oputs_(i8* noundef %29), !dbg !529
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #35, !dbg !530
  tail call fastcc void @oputs_(i8* noundef %30), !dbg !530
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #35, !dbg !531
  tail call fastcc void @oputs_(i8* noundef %31), !dbg !531
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #35, !dbg !532
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !532, !tbaa !513
  %34 = tail call i32 @fputs_unlocked(i8* noundef %32, %struct._IO_FILE* noundef %33), !dbg !532
  %35 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([156 x i8], [156 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #35, !dbg !533
  %36 = load i8*, i8** @program_name, align 8, !dbg !533, !tbaa !513
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %35, i8* noundef %36, i8* noundef %36) #35, !dbg !533
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !534, metadata !DIExpression()) #35, !dbg !553
  %38 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !555
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %38) #35, !dbg !555
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !539, metadata !DIExpression()) #35, !dbg !556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %38, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !556
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !548, metadata !DIExpression()) #35, !dbg !553
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !549, metadata !DIExpression()) #35, !dbg !553
  %39 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !557
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !549, metadata !DIExpression()) #35, !dbg !553
  br label %40, !dbg !558

40:                                               ; preds = %45, %9
  %41 = phi i8* [ %48, %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), %9 ]
  %42 = phi %struct.infomap* [ %46, %45 ], [ %39, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !549, metadata !DIExpression()) #35, !dbg !553
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !566
  call void @llvm.dbg.value(metadata i8* %41, metadata !565, metadata !DIExpression()) #35, !dbg !566
  %43 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %41) #36, !dbg !568
  %44 = icmp eq i32 %43, 0, !dbg !569
  br i1 %44, label %50, label %45, !dbg !558

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 1, !dbg !570
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !549, metadata !DIExpression()) #35, !dbg !553
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 0, !dbg !571
  %48 = load i8*, i8** %47, align 8, !dbg !571, !tbaa !572
  %49 = icmp eq i8* %48, null, !dbg !574
  br i1 %49, label %50, label %40, !dbg !575, !llvm.loop !576

50:                                               ; preds = %45, %40
  %51 = phi %struct.infomap* [ %42, %40 ], [ %46, %45 ]
  %52 = getelementptr inbounds %struct.infomap, %struct.infomap* %51, i64 0, i32 1, !dbg !578
  %53 = load i8*, i8** %52, align 8, !dbg !578, !tbaa !580
  %54 = icmp eq i8* %53, null, !dbg !581
  %55 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %53, !dbg !582
  call void @llvm.dbg.value(metadata i8* %55, metadata !548, metadata !DIExpression()) #35, !dbg !553
  tail call void @emit_bug_reporting_address() #35, !dbg !583
  %56 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !584
  call void @llvm.dbg.value(metadata i8* %56, metadata !551, metadata !DIExpression()) #35, !dbg !553
  %57 = icmp eq i8* %56, null, !dbg !585
  br i1 %57, label %65, label %58, !dbg !587

58:                                               ; preds = %50
  %59 = tail call i32 @strncmp(i8* noundef nonnull %56, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i64 noundef 3) #36, !dbg !588
  %60 = icmp eq i32 %59, 0, !dbg !588
  br i1 %60, label %65, label %61, !dbg !589

61:                                               ; preds = %58
  %62 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.60, i64 0, i64 0), i32 noundef 5) #35, !dbg !590
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590, !tbaa !513
  %64 = tail call i32 @fputs_unlocked(i8* noundef %62, %struct._IO_FILE* noundef %63) #35, !dbg !590
  br label %65, !dbg !592

65:                                               ; preds = %50, %58, %61
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !593
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), metadata !565, metadata !DIExpression()) #35, !dbg !593
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !552, metadata !DIExpression()) #35, !dbg !553
  %66 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i64 0, i64 0), i32 noundef 5) #35, !dbg !595
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %66, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #35, !dbg !595
  %68 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #35, !dbg !596
  %69 = icmp eq i8* %55, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), !dbg !596
  %70 = select i1 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), !dbg !596
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %68, i8* noundef %55, i8* noundef %70) #35, !dbg !596
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %38) #35, !dbg !597
  br label %72

72:                                               ; preds = %65, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !598
  unreachable, !dbg !598
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !599 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !604 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !69 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !74, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i8* %0, metadata !75, metadata !DIExpression()), !dbg !609
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !610, !tbaa !611
  %3 = icmp eq i32 %2, -1, !dbg !613
  br i1 %3, label %4, label %16, !dbg !614

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #35, !dbg !615
  call void @llvm.dbg.value(metadata i8* %5, metadata !76, metadata !DIExpression()), !dbg !616
  %6 = icmp eq i8* %5, null, !dbg !617
  br i1 %6, label %14, label %7, !dbg !618

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !619, !tbaa !620
  %9 = icmp eq i8 %8, 0, !dbg !619
  br i1 %9, label %14, label %10, !dbg !621

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !559, metadata !DIExpression()) #35, !dbg !622
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), metadata !565, metadata !DIExpression()) #35, !dbg !622
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)) #36, !dbg !624
  %12 = icmp eq i32 %11, 0, !dbg !625
  %13 = zext i1 %12 to i32, !dbg !621
  br label %14, !dbg !621

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !626, !tbaa !611
  br label %16, !dbg !627

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !628
  %18 = icmp eq i32 %17, 0, !dbg !628
  br i1 %18, label %22, label %19, !dbg !630

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !513
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !631
  br label %121, !dbg !633

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !79, metadata !DIExpression()), !dbg !609
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)) #36, !dbg !634
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !635
  call void @llvm.dbg.value(metadata i8* %24, metadata !80, metadata !DIExpression()), !dbg !609
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !636
  call void @llvm.dbg.value(metadata i8* %25, metadata !81, metadata !DIExpression()), !dbg !609
  %26 = icmp eq i8* %25, null, !dbg !637
  br i1 %26, label %53, label %27, !dbg !638

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !639
  br i1 %28, label %53, label %29, !dbg !640

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !82, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i64 0, metadata !86, metadata !DIExpression()), !dbg !641
  %30 = icmp ult i8* %24, %25, !dbg !642
  br i1 %30, label %31, label %53, !dbg !643

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !609
  %33 = load i16*, i16** %32, align 8, !tbaa !513
  br label %34, !dbg !643

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !82, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i64 %36, metadata !86, metadata !DIExpression()), !dbg !641
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !644
  call void @llvm.dbg.value(metadata i8* %37, metadata !82, metadata !DIExpression()), !dbg !641
  %38 = load i8, i8* %35, align 1, !dbg !644, !tbaa !620
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !644
  %41 = load i16, i16* %40, align 2, !dbg !644, !tbaa !645
  %42 = lshr i16 %41, 13, !dbg !647
  %43 = and i16 %42, 1, !dbg !647
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !648
  call void @llvm.dbg.value(metadata i64 %45, metadata !86, metadata !DIExpression()), !dbg !641
  %46 = icmp ult i8* %37, %25, !dbg !642
  %47 = icmp ult i64 %45, 2, !dbg !649
  %48 = select i1 %46, i1 %47, i1 false, !dbg !649
  br i1 %48, label %34, label %49, !dbg !643, !llvm.loop !650

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !651
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !653
  %52 = xor i1 %50, true, !dbg !653
  br label %53, !dbg !653

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !609
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !79, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i8* %54, metadata !81, metadata !DIExpression()), !dbg !609
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)) #36, !dbg !654
  call void @llvm.dbg.value(metadata i64 %56, metadata !87, metadata !DIExpression()), !dbg !609
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !655
  call void @llvm.dbg.value(metadata i8* %57, metadata !88, metadata !DIExpression()), !dbg !609
  br label %58, !dbg !656

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !609
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !79, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i8* %59, metadata !88, metadata !DIExpression()), !dbg !609
  %61 = load i8, i8* %59, align 1, !dbg !657, !tbaa !620
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !658

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !659
  %64 = load i8, i8* %63, align 1, !dbg !662, !tbaa !620
  %65 = icmp ne i8 %64, 45, !dbg !663
  %66 = select i1 %65, i1 %60, i1 false, !dbg !664
  br label %67, !dbg !664

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !79, metadata !DIExpression()), !dbg !609
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !665
  %70 = load i16*, i16** %69, align 8, !dbg !665, !tbaa !513
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !665
  %73 = load i16, i16* %72, align 2, !dbg !665, !tbaa !645
  %74 = and i16 %73, 8192, !dbg !665
  %75 = icmp eq i16 %74, 0, !dbg !665
  br i1 %75, label %89, label %76, !dbg !667

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !668
  br i1 %77, label %91, label %78, !dbg !671

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !672
  %80 = load i8, i8* %79, align 1, !dbg !672, !tbaa !620
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !672
  %83 = load i16, i16* %82, align 2, !dbg !672, !tbaa !645
  %84 = and i16 %83, 8192, !dbg !672
  %85 = icmp eq i16 %84, 0, !dbg !672
  br i1 %85, label %86, label %91, !dbg !673

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !674
  br i1 %88, label %89, label %91, !dbg !674

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !676
  call void @llvm.dbg.value(metadata i8* %90, metadata !88, metadata !DIExpression()), !dbg !609
  br label %58, !dbg !656, !llvm.loop !677

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !679
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !513
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !679
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !680
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), metadata !565, metadata !DIExpression()) #35, !dbg !680
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !682
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !684
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !686
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !688
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !690
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !692
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !694
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !696
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !559, metadata !DIExpression()) #35, !dbg !698
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !148, metadata !DIExpression()), !dbg !609
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i64 noundef 6) #36, !dbg !700
  %96 = icmp eq i32 %95, 0, !dbg !700
  br i1 %96, label %100, label %97, !dbg !702

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i64 noundef 9) #36, !dbg !703
  %99 = icmp eq i32 %98, 0, !dbg !703
  br i1 %99, label %100, label %103, !dbg !704

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !705
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !705
  br label %106, !dbg !707

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !708
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !708
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !513
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !710
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !513
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !711
  %111 = ptrtoint i8* %59 to i64, !dbg !712
  %112 = sub i64 %111, %92, !dbg !712
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !513
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !712
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !513
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !713
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !513
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !714
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !513
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !715
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !716
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
declare !dbg !717 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !721 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !725 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #0 !dbg !731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !736, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8** %1, metadata !737, metadata !DIExpression()), !dbg !739
  %3 = load i8*, i8** %1, align 8, !dbg !740, !tbaa !513
  tail call void @set_program_name(i8* noundef %3) #35, !dbg !741
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)) #35, !dbg !742
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0)) #35, !dbg !743
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #35, !dbg !744
  %7 = tail call i1 @hard_locale(i32 noundef 3) #35, !dbg !745
  %8 = zext i1 %7 to i8, !dbg !746
  store i8 %8, i8* @hard_LC_COLLATE, align 4, !dbg !746, !tbaa !747
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !749
  br label %10, !dbg !750

10:                                               ; preds = %39, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #35, !dbg !751
  call void @llvm.dbg.value(metadata i32 %11, metadata !738, metadata !DIExpression()), !dbg !739
  switch i32 %11, label %46 [
    i32 -1, label %47
    i32 49, label %12
    i32 50, label %13
    i32 51, label %14
    i32 122, label %15
    i32 257, label %16
    i32 256, label %17
    i32 258, label %18
    i32 259, label %38
    i32 -2, label %40
    i32 -3, label %41
  ], !dbg !750

12:                                               ; preds = %10
  store i1 true, i1* @only_file_1, align 1, !dbg !752
  br label %39, !dbg !754

13:                                               ; preds = %10
  store i1 true, i1* @only_file_2, align 1, !dbg !755
  br label %39, !dbg !756

14:                                               ; preds = %10
  store i1 true, i1* @both, align 1, !dbg !757
  br label %39, !dbg !758

15:                                               ; preds = %10
  store i1 true, i1* @delim, align 1, !dbg !759
  br label %39, !dbg !760

16:                                               ; preds = %10
  store i32 2, i32* @check_input_order, align 4, !dbg !761, !tbaa !620
  br label %39, !dbg !762

17:                                               ; preds = %10
  store i32 1, i32* @check_input_order, align 4, !dbg !763, !tbaa !620
  br label %39, !dbg !764

18:                                               ; preds = %10
  %19 = load i64, i64* @col_sep_len, align 8, !dbg !765, !tbaa !767
  %20 = icmp eq i64 %19, 0, !dbg !765
  br i1 %20, label %21, label %23, !dbg !769

21:                                               ; preds = %18
  %22 = load i8*, i8** @optarg, align 8, !dbg !770, !tbaa !513
  br label %30, !dbg !769

23:                                               ; preds = %18
  %24 = load i8*, i8** @col_sep, align 8, !dbg !771, !tbaa !513
  %25 = load i8*, i8** @optarg, align 8, !dbg !772, !tbaa !513
  call void @llvm.dbg.value(metadata i8* %24, metadata !559, metadata !DIExpression()) #35, !dbg !773
  call void @llvm.dbg.value(metadata i8* %25, metadata !565, metadata !DIExpression()) #35, !dbg !773
  %26 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %24, i8* noundef nonnull dereferenceable(1) %25) #36, !dbg !775
  %27 = icmp eq i32 %26, 0, !dbg !776
  br i1 %27, label %30, label %28, !dbg !777

28:                                               ; preds = %23
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #35, !dbg !778
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %29) #35, !dbg !778
  unreachable, !dbg !778

30:                                               ; preds = %21, %23
  %31 = phi i8* [ %22, %21 ], [ %25, %23 ], !dbg !770
  store i8* %31, i8** @col_sep, align 8, !dbg !779, !tbaa !513
  %32 = load i8, i8* %31, align 1, !dbg !780, !tbaa !620
  %33 = icmp eq i8 %32, 0, !dbg !780
  br i1 %33, label %36, label %34, !dbg !780

34:                                               ; preds = %30
  %35 = tail call i64 @strlen(i8* noundef nonnull %31) #36, !dbg !781
  br label %36, !dbg !780

36:                                               ; preds = %30, %34
  %37 = phi i64 [ %35, %34 ], [ 1, %30 ], !dbg !780
  store i64 %37, i64* @col_sep_len, align 8, !dbg !782, !tbaa !767
  br label %39, !dbg !783

38:                                               ; preds = %10
  store i1 true, i1* @total_option, align 1, !dbg !784
  br label %39, !dbg !785

39:                                               ; preds = %38, %36, %17, %16, %15, %14, %13, %12
  br label %10, !dbg !751, !llvm.loop !786

40:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #39, !dbg !788
  unreachable, !dbg !788

41:                                               ; preds = %10
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !789, !tbaa !513
  %43 = load i8*, i8** @Version, align 8, !dbg !789, !tbaa !513
  %44 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0)) #35, !dbg !789
  %45 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0)) #35, !dbg !789
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* noundef %43, i8* noundef %44, i8* noundef %45, i8* noundef null) #35, !dbg !789
  tail call void @exit(i32 noundef 0) #37, !dbg !789
  unreachable, !dbg !789

46:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #39, !dbg !790
  unreachable, !dbg !790

47:                                               ; preds = %10
  %48 = load i64, i64* @col_sep_len, align 8, !dbg !791, !tbaa !767
  %49 = icmp eq i64 %48, 0, !dbg !791
  br i1 %49, label %50, label %51, !dbg !793

50:                                               ; preds = %47
  store i64 1, i64* @col_sep_len, align 8, !dbg !794, !tbaa !767
  br label %51, !dbg !795

51:                                               ; preds = %50, %47
  %52 = load i32, i32* @optind, align 4, !dbg !796, !tbaa !611
  %53 = sub nsw i32 %0, %52, !dbg !798
  %54 = icmp slt i32 %53, 2, !dbg !799
  br i1 %54, label %55, label %67, !dbg !800

55:                                               ; preds = %51
  %56 = icmp slt i32 %52, %0, !dbg !801
  br i1 %56, label %59, label %57, !dbg !804

57:                                               ; preds = %55
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #35, !dbg !805
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %58) #35, !dbg !805
  br label %66, !dbg !805

59:                                               ; preds = %55
  %60 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #35, !dbg !806
  %61 = add nsw i32 %0, -1, !dbg !806
  %62 = sext i32 %61 to i64, !dbg !806
  %63 = getelementptr inbounds i8*, i8** %1, i64 %62, !dbg !806
  %64 = load i8*, i8** %63, align 8, !dbg !806, !tbaa !513
  %65 = tail call i8* @quote(i8* noundef %64) #35, !dbg !806
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %60, i8* noundef %65) #35, !dbg !806
  br label %66

66:                                               ; preds = %59, %57
  tail call void @usage(i32 noundef 1) #39, !dbg !807
  unreachable, !dbg !807

67:                                               ; preds = %51
  %68 = icmp eq i32 %53, 2, !dbg !808
  br i1 %68, label %77, label %69, !dbg !810

69:                                               ; preds = %67
  %70 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #35, !dbg !811
  %71 = load i32, i32* @optind, align 4, !dbg !811, !tbaa !611
  %72 = add nsw i32 %71, 2, !dbg !811
  %73 = sext i32 %72 to i64, !dbg !811
  %74 = getelementptr inbounds i8*, i8** %1, i64 %73, !dbg !811
  %75 = load i8*, i8** %74, align 8, !dbg !811, !tbaa !513
  %76 = tail call i8* @quote(i8* noundef %75) #35, !dbg !811
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %70, i8* noundef %76) #35, !dbg !811
  tail call void @usage(i32 noundef 1) #39, !dbg !813
  unreachable, !dbg !813

77:                                               ; preds = %67
  %78 = sext i32 %52 to i64, !dbg !814
  %79 = getelementptr inbounds i8*, i8** %1, i64 %78, !dbg !814
  tail call fastcc void @compare_files(i8** noundef nonnull %79) #39, !dbg !815
  unreachable, !dbg !815
}

; Function Attrs: nounwind
declare !dbg !816 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !819 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !820 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !823 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @compare_files(i8** nocapture noundef readonly %0) unnamed_addr #0 !dbg !829 {
  %2 = alloca [2 x [4 x %struct.linebuffer]], align 8
  %3 = alloca [2 x [4 x %struct.linebuffer*]], align 8
  call void @llvm.dbg.value(metadata i8** %0, metadata !833, metadata !DIExpression()), !dbg !878
  %4 = bitcast [2 x [4 x %struct.linebuffer]]* %2 to i8*, !dbg !879
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %4) #35, !dbg !879
  call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer]]* %2, metadata !834, metadata !DIExpression()), !dbg !880
  %5 = bitcast [2 x [4 x %struct.linebuffer*]]* %3 to i8*, !dbg !881
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #35, !dbg !881
  call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer*]]* %3, metadata !845, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i64 0, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 0, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 0, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i32 0, metadata !859, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 0, metadata !859, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i32 0, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 0, metadata !861, metadata !DIExpression()), !dbg !884
  %6 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %2, i64 0, i64 0, i64 0, !dbg !885
  call void @initbuffer(%struct.linebuffer* noundef nonnull %6) #35, !dbg !888
  %7 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 0, i64 0, !dbg !889
  store %struct.linebuffer* %6, %struct.linebuffer** %7, align 8, !dbg !890, !tbaa !513
  call void @llvm.dbg.value(metadata i64 1, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 1, metadata !861, metadata !DIExpression()), !dbg !884
  %8 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %2, i64 0, i64 0, i64 1, !dbg !885
  call void @initbuffer(%struct.linebuffer* noundef nonnull %8) #35, !dbg !888
  %9 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 0, i64 1, !dbg !889
  store %struct.linebuffer* %8, %struct.linebuffer** %9, align 8, !dbg !890, !tbaa !513
  call void @llvm.dbg.value(metadata i64 2, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 2, metadata !861, metadata !DIExpression()), !dbg !884
  %10 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %2, i64 0, i64 0, i64 2, !dbg !885
  call void @initbuffer(%struct.linebuffer* noundef nonnull %10) #35, !dbg !888
  %11 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 0, i64 2, !dbg !889
  store %struct.linebuffer* %10, %struct.linebuffer** %11, align 8, !dbg !890, !tbaa !513
  call void @llvm.dbg.value(metadata i64 3, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 3, metadata !861, metadata !DIExpression()), !dbg !884
  %12 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %2, i64 0, i64 0, i64 3, !dbg !885
  call void @initbuffer(%struct.linebuffer* noundef nonnull %12) #35, !dbg !888
  %13 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 0, i64 3, !dbg !889
  store %struct.linebuffer* %12, %struct.linebuffer** %13, align 8, !dbg !890, !tbaa !513
  call void @llvm.dbg.value(metadata i64 4, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i32 0, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 0, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 0, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !878
  %14 = load i8*, i8** %0, align 8, !dbg !891, !tbaa !513
  call void @llvm.dbg.value(metadata i8* %14, metadata !559, metadata !DIExpression()) #35, !dbg !892
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), metadata !565, metadata !DIExpression()) #35, !dbg !892
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0)) #36, !dbg !894
  %16 = icmp eq i32 %15, 0, !dbg !895
  br i1 %16, label %17, label %19, !dbg !896

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !897, !tbaa !513
  br label %21, !dbg !896

19:                                               ; preds = %1
  %20 = call %struct._IO_FILE* @fopen_safer(i8* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0)) #35, !dbg !898
  br label %21, !dbg !896

21:                                               ; preds = %19, %17
  %22 = phi %struct._IO_FILE* [ %18, %17 ], [ %20, %19 ], !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !851, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  %23 = icmp eq %struct._IO_FILE* %22, null, !dbg !899
  br i1 %23, label %24, label %31, !dbg !901

24:                                               ; preds = %63, %21
  %25 = phi i64 [ 0, %21 ], [ 1, %63 ]
  %26 = getelementptr inbounds i8*, i8** %0, i64 %25, !dbg !891
  %27 = tail call i32* @__errno_location() #38, !dbg !902
  %28 = load i32, i32* %27, align 4, !dbg !902, !tbaa !611
  %29 = load i8*, i8** %26, align 8, !dbg !902, !tbaa !513
  %30 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %29) #35, !dbg !902
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %28, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i8* noundef %30) #35, !dbg !902
  unreachable, !dbg !902

31:                                               ; preds = %21
  call void @fadvise(%struct._IO_FILE* noundef nonnull %22, i32 noundef 2) #35, !dbg !903
  %32 = load i1, i1* @delim, align 1, !dbg !904
  %33 = select i1 %32, i8 0, i8 10, !dbg !904
  %34 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* noundef nonnull %6, %struct._IO_FILE* noundef nonnull %22, i8 noundef %33) #35, !dbg !905
  call void @llvm.dbg.value(metadata %struct.linebuffer* %34, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !906, metadata !DIExpression()), !dbg !912
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %22, i64 0, i32 0, !dbg !915
  %36 = load i32, i32* %35, align 8, !dbg !915, !tbaa !916
  %37 = and i32 %36, 32, !dbg !918
  %38 = icmp eq i32 %37, 0, !dbg !918
  br i1 %38, label %46, label %39, !dbg !919

39:                                               ; preds = %66, %31
  %40 = phi i64 [ 0, %31 ], [ 1, %66 ]
  %41 = getelementptr inbounds i8*, i8** %0, i64 %40, !dbg !891
  %42 = tail call i32* @__errno_location() #38, !dbg !920
  %43 = load i32, i32* %42, align 4, !dbg !920, !tbaa !611
  %44 = load i8*, i8** %41, align 8, !dbg !920, !tbaa !513
  %45 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %44) #35, !dbg !920
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %43, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i8* noundef %45) #35, !dbg !920
  unreachable, !dbg !920

46:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 1, metadata !859, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 1, metadata !859, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i32 0, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 0, metadata !861, metadata !DIExpression()), !dbg !884
  %47 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %2, i64 0, i64 1, i64 0, !dbg !885
  call void @initbuffer(%struct.linebuffer* noundef nonnull %47) #35, !dbg !888
  %48 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 1, i64 0, !dbg !889
  store %struct.linebuffer* %47, %struct.linebuffer** %48, align 8, !dbg !890, !tbaa !513
  call void @llvm.dbg.value(metadata i64 1, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 1, metadata !861, metadata !DIExpression()), !dbg !884
  %49 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %2, i64 0, i64 1, i64 1, !dbg !885
  call void @initbuffer(%struct.linebuffer* noundef nonnull %49) #35, !dbg !888
  %50 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 1, i64 1, !dbg !889
  store %struct.linebuffer* %49, %struct.linebuffer** %50, align 8, !dbg !890, !tbaa !513
  call void @llvm.dbg.value(metadata i64 2, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 2, metadata !861, metadata !DIExpression()), !dbg !884
  %51 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %2, i64 0, i64 1, i64 2, !dbg !885
  call void @initbuffer(%struct.linebuffer* noundef nonnull %51) #35, !dbg !888
  %52 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 1, i64 2, !dbg !889
  store %struct.linebuffer* %51, %struct.linebuffer** %52, align 8, !dbg !890, !tbaa !513
  call void @llvm.dbg.value(metadata i64 3, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 3, metadata !861, metadata !DIExpression()), !dbg !884
  %53 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %2, i64 0, i64 1, i64 3, !dbg !885
  call void @initbuffer(%struct.linebuffer* noundef nonnull %53) #35, !dbg !888
  %54 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 1, i64 3, !dbg !889
  store %struct.linebuffer* %53, %struct.linebuffer** %54, align 8, !dbg !890, !tbaa !513
  call void @llvm.dbg.value(metadata i64 4, metadata !861, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i32 0, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 0, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 0, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !878
  %55 = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !891
  %56 = load i8*, i8** %55, align 8, !dbg !891, !tbaa !513
  call void @llvm.dbg.value(metadata i8* %56, metadata !559, metadata !DIExpression()) #35, !dbg !892
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), metadata !565, metadata !DIExpression()) #35, !dbg !892
  %57 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %56, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0)) #36, !dbg !894
  %58 = icmp eq i32 %57, 0, !dbg !895
  br i1 %58, label %61, label %59, !dbg !896

59:                                               ; preds = %46
  %60 = call %struct._IO_FILE* @fopen_safer(i8* noundef %56, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0)) #35, !dbg !898
  br label %63, !dbg !896

61:                                               ; preds = %46
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !897, !tbaa !513
  br label %63, !dbg !896

63:                                               ; preds = %61, %59
  %64 = phi %struct._IO_FILE* [ %62, %61 ], [ %60, %59 ], !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !851, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  %65 = icmp eq %struct._IO_FILE* %64, null, !dbg !899
  br i1 %65, label %24, label %66, !dbg !901

66:                                               ; preds = %63
  call void @fadvise(%struct._IO_FILE* noundef nonnull %64, i32 noundef 2) #35, !dbg !903
  %67 = load i1, i1* @delim, align 1, !dbg !904
  %68 = select i1 %67, i8 0, i8 10, !dbg !904
  %69 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* noundef nonnull %47, %struct._IO_FILE* noundef nonnull %64, i8 noundef %68) #35, !dbg !905
  call void @llvm.dbg.value(metadata %struct.linebuffer* %69, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !906, metadata !DIExpression()), !dbg !912
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %64, i64 0, i32 0, !dbg !915
  %71 = load i32, i32* %70, align 8, !dbg !915, !tbaa !916
  %72 = and i32 %71, 32, !dbg !918
  %73 = icmp eq i32 %72, 0, !dbg !918
  br i1 %73, label %74, label %39, !dbg !919

74:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 2, metadata !859, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 0, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 0, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 0, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  %75 = icmp ne %struct.linebuffer* %34, null, !dbg !921
  %76 = icmp ne %struct.linebuffer* %69, null, !dbg !922
  %77 = select i1 %75, i1 true, i1 %76, !dbg !922
  br i1 %77, label %84, label %78, !dbg !923

78:                                               ; preds = %220, %74
  %79 = phi i64 [ 0, %74 ], [ %224, %220 ], !dbg !924
  %80 = phi i64 [ 0, %74 ], [ %225, %220 ], !dbg !878
  %81 = phi i64 [ 0, %74 ], [ %226, %220 ], !dbg !924
  call void @llvm.dbg.value(metadata i64 0, metadata !876, metadata !DIExpression()), !dbg !925
  %82 = call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %22) #35, !dbg !926
  %83 = icmp eq i32 %82, 0, !dbg !929
  br i1 %83, label %240, label %233, !dbg !930

84:                                               ; preds = %74, %220
  %85 = phi i32 [ %227, %220 ], [ 0, %74 ], !dbg !931
  %86 = phi i32 [ %228, %220 ], [ 0, %74 ], !dbg !932
  %87 = phi i32 [ %223, %220 ], [ 0, %74 ], !dbg !931
  %88 = phi i32 [ %222, %220 ], [ 0, %74 ], !dbg !932
  %89 = phi %struct.linebuffer* [ %221, %220 ], [ %34, %74 ], !dbg !933
  %90 = phi %struct.linebuffer* [ %229, %220 ], [ %69, %74 ], !dbg !933
  %91 = phi i64 [ %226, %220 ], [ 0, %74 ]
  %92 = phi i64 [ %225, %220 ], [ 0, %74 ]
  %93 = phi i64 [ %224, %220 ], [ 0, %74 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %90, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  call void @llvm.dbg.value(metadata %struct.linebuffer* %89, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %88, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %87, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %86, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %85, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %91, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %92, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %93, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  call void @llvm.dbg.declare(metadata [2 x i8]* undef, metadata !867, metadata !DIExpression()), !dbg !934
  %94 = icmp eq %struct.linebuffer* %89, null, !dbg !935
  br i1 %94, label %95, label %96, !dbg !936

95:                                               ; preds = %84
  store i1 true, i1* @seen_unpairable, align 1, !dbg !937
  br label %143, !dbg !940

96:                                               ; preds = %84
  %97 = icmp eq %struct.linebuffer* %90, null, !dbg !941
  br i1 %97, label %98, label %99, !dbg !942

98:                                               ; preds = %96
  store i1 true, i1* @seen_unpairable, align 1, !dbg !937
  br label %141, !dbg !940

99:                                               ; preds = %96
  %100 = load i8, i8* @hard_LC_COLLATE, align 4, !dbg !943, !tbaa !747, !range !944
  %101 = icmp eq i8 %100, 0, !dbg !943
  br i1 %101, label %114, label %102, !dbg !945

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %89, i64 0, i32 2, !dbg !946
  %104 = load i8*, i8** %103, align 8, !dbg !946, !tbaa !947
  %105 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %89, i64 0, i32 1, !dbg !949
  %106 = load i64, i64* %105, align 8, !dbg !949, !tbaa !950
  %107 = add nsw i64 %106, -1, !dbg !951
  %108 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %90, i64 0, i32 2, !dbg !952
  %109 = load i8*, i8** %108, align 8, !dbg !952, !tbaa !947
  %110 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %90, i64 0, i32 1, !dbg !953
  %111 = load i64, i64* %110, align 8, !dbg !953, !tbaa !950
  %112 = add nsw i64 %111, -1, !dbg !954
  %113 = call i32 @xmemcoll(i8* noundef %104, i64 noundef %107, i8* noundef %109, i64 noundef %112) #35, !dbg !955
  call void @llvm.dbg.value(metadata i32 %113, metadata !865, metadata !DIExpression()), !dbg !956
  br label %133, !dbg !957

114:                                              ; preds = %99
  %115 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %89, i64 0, i32 1, !dbg !958
  %116 = load i64, i64* %115, align 8, !dbg !958, !tbaa !950
  %117 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %90, i64 0, i32 1, !dbg !958
  %118 = load i64, i64* %117, align 8, !dbg !958, !tbaa !950
  %119 = icmp slt i64 %116, %118, !dbg !958
  %120 = select i1 %119, i64 %116, i64 %118, !dbg !958
  %121 = add nsw i64 %120, -1, !dbg !959
  call void @llvm.dbg.value(metadata i64 %121, metadata !868, metadata !DIExpression()), !dbg !960
  %122 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %89, i64 0, i32 2, !dbg !961
  %123 = load i8*, i8** %122, align 8, !dbg !961, !tbaa !947
  %124 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %90, i64 0, i32 2, !dbg !962
  %125 = load i8*, i8** %124, align 8, !dbg !962, !tbaa !947
  %126 = call i32 @memcmp(i8* noundef %123, i8* noundef %125, i64 noundef %121) #36, !dbg !963
  call void @llvm.dbg.value(metadata i32 %126, metadata !865, metadata !DIExpression()), !dbg !956
  %127 = icmp eq i32 %126, 0, !dbg !964
  br i1 %127, label %128, label %138, !dbg !966

128:                                              ; preds = %114
  %129 = icmp sgt i64 %116, %118, !dbg !967
  %130 = zext i1 %129 to i32, !dbg !967
  %131 = sext i1 %119 to i32, !dbg !967
  %132 = add nsw i32 %131, %130, !dbg !967
  call void @llvm.dbg.value(metadata i32 %132, metadata !865, metadata !DIExpression()), !dbg !956
  br label %133, !dbg !968

133:                                              ; preds = %128, %102
  %134 = phi i32 [ %113, %102 ], [ %132, %128 ], !dbg !969
  call void @llvm.dbg.value(metadata i32 %134, metadata !865, metadata !DIExpression()), !dbg !956
  %135 = icmp eq i32 %134, 0, !dbg !970
  br i1 %135, label %136, label %138, !dbg !971

136:                                              ; preds = %133
  %137 = add i64 %92, 1, !dbg !972
  call void @llvm.dbg.value(metadata i64 %137, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !878
  call fastcc void @writeline(%struct.linebuffer* noundef nonnull %90, i32 noundef 3), !dbg !974
  call void @llvm.dbg.value(metadata i64 %142, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %92, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %93, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  br label %145, !dbg !975

138:                                              ; preds = %114, %133
  %139 = phi i32 [ %134, %133 ], [ %126, %114 ]
  store i1 true, i1* @seen_unpairable, align 1, !dbg !937
  %140 = icmp slt i32 %139, 1, !dbg !976
  br i1 %140, label %141, label %143, !dbg !940

141:                                              ; preds = %138, %98
  %142 = add i64 %91, 1, !dbg !978
  call void @llvm.dbg.value(metadata i64 %142, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call fastcc void @writeline(%struct.linebuffer* noundef nonnull %89, i32 noundef 1), !dbg !980
  call void @llvm.dbg.value(metadata i64 %92, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %93, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  br label %145, !dbg !975

143:                                              ; preds = %95, %138
  %144 = add i64 %93, 1, !dbg !981
  call void @llvm.dbg.value(metadata i64 %144, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  call fastcc void @writeline(%struct.linebuffer* noundef %90, i32 noundef 2), !dbg !983
  call void @llvm.dbg.value(metadata i64 %142, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %92, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %93, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  call void @llvm.dbg.value(metadata %struct.linebuffer* %156, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %150, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %88, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i64 1, metadata !874, metadata !DIExpression()), !dbg !984
  br label %185, !dbg !985

145:                                              ; preds = %136, %141
  %146 = phi i1 [ false, %136 ], [ true, %141 ]
  %147 = phi i64 [ %137, %136 ], [ %92, %141 ]
  %148 = phi i64 [ %91, %136 ], [ %142, %141 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !874, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %87, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %88, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !878
  %149 = add nsw i32 %88, 1, !dbg !987
  %150 = and i32 %149, 3, !dbg !990
  call void @llvm.dbg.value(metadata i32 %150, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !878
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 0, i64 %151, !dbg !991
  %153 = load %struct.linebuffer*, %struct.linebuffer** %152, align 8, !dbg !991, !tbaa !513
  %154 = load i1, i1* @delim, align 1, !dbg !992
  %155 = select i1 %154, i8 0, i8 10, !dbg !992
  %156 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* noundef %153, %struct._IO_FILE* noundef nonnull %22, i8 noundef %155) #35, !dbg !993
  call void @llvm.dbg.value(metadata %struct.linebuffer* %156, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  %157 = icmp eq %struct.linebuffer* %156, null, !dbg !994
  br i1 %157, label %162, label %158, !dbg !996

158:                                              ; preds = %145
  %159 = sext i32 %88 to i64, !dbg !997
  %160 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 0, i64 %159, !dbg !997
  %161 = load %struct.linebuffer*, %struct.linebuffer** %160, align 8, !dbg !997, !tbaa !513
  call fastcc void @check_order(%struct.linebuffer* noundef %161, %struct.linebuffer* noundef nonnull %156, i32 noundef 1), !dbg !998
  br label %173, !dbg !998

162:                                              ; preds = %145
  %163 = sext i32 %87 to i64, !dbg !999
  %164 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 0, i64 %163, !dbg !999
  %165 = load %struct.linebuffer*, %struct.linebuffer** %164, align 8, !dbg !999, !tbaa !513
  %166 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %165, i64 0, i32 2, !dbg !1001
  %167 = load i8*, i8** %166, align 8, !dbg !1001, !tbaa !947
  %168 = icmp eq i8* %167, null, !dbg !999
  br i1 %168, label %173, label %169, !dbg !1002

169:                                              ; preds = %162
  %170 = sext i32 %88 to i64, !dbg !1003
  %171 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 0, i64 %170, !dbg !1003
  %172 = load %struct.linebuffer*, %struct.linebuffer** %171, align 8, !dbg !1003, !tbaa !513
  call fastcc void @check_order(%struct.linebuffer* noundef nonnull %165, %struct.linebuffer* noundef %172, i32 noundef 1), !dbg !1004
  br label %173, !dbg !1004

173:                                              ; preds = %162, %169, %158
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !906, metadata !DIExpression()), !dbg !1005
  %174 = load i32, i32* %35, align 8, !dbg !1008, !tbaa !916
  %175 = and i32 %174, 32, !dbg !1009
  %176 = icmp eq i32 %175, 0, !dbg !1009
  br i1 %176, label %184, label %177, !dbg !1010

177:                                              ; preds = %216, %173
  %178 = phi i64 [ 0, %173 ], [ 1, %216 ]
  %179 = tail call i32* @__errno_location() #38, !dbg !1011
  %180 = load i32, i32* %179, align 4, !dbg !1011, !tbaa !611
  %181 = getelementptr inbounds i8*, i8** %0, i64 %178, !dbg !1011
  %182 = load i8*, i8** %181, align 8, !dbg !1011, !tbaa !513
  %183 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %182) #35, !dbg !1011
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %180, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i8* noundef %183) #35, !dbg !1011
  unreachable, !dbg !1011

184:                                              ; preds = %173
  call void @llvm.dbg.value(metadata %struct.linebuffer* %156, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %150, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %88, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i64 1, metadata !874, metadata !DIExpression()), !dbg !984
  br i1 %146, label %220, label %185, !dbg !985

185:                                              ; preds = %143, %184
  %186 = phi %struct.linebuffer* [ %89, %143 ], [ %156, %184 ]
  %187 = phi i32 [ %88, %143 ], [ %150, %184 ]
  %188 = phi i32 [ %87, %143 ], [ %88, %184 ]
  %189 = phi i64 [ %144, %143 ], [ %93, %184 ]
  %190 = phi i64 [ %92, %143 ], [ %147, %184 ]
  %191 = phi i64 [ %91, %143 ], [ %148, %184 ]
  call void @llvm.dbg.value(metadata i32 %85, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %86, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !878
  %192 = add nsw i32 %86, 1, !dbg !987
  %193 = and i32 %192, 3, !dbg !990
  call void @llvm.dbg.value(metadata i32 %193, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !878
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 1, i64 %194, !dbg !991
  %196 = load %struct.linebuffer*, %struct.linebuffer** %195, align 8, !dbg !991, !tbaa !513
  %197 = load i1, i1* @delim, align 1, !dbg !992
  %198 = select i1 %197, i8 0, i8 10, !dbg !992
  %199 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* noundef %196, %struct._IO_FILE* noundef nonnull %64, i8 noundef %198) #35, !dbg !993
  call void @llvm.dbg.value(metadata %struct.linebuffer* %199, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  %200 = icmp eq %struct.linebuffer* %199, null, !dbg !994
  br i1 %200, label %205, label %201, !dbg !996

201:                                              ; preds = %185
  %202 = sext i32 %86 to i64, !dbg !997
  %203 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 1, i64 %202, !dbg !997
  %204 = load %struct.linebuffer*, %struct.linebuffer** %203, align 8, !dbg !997, !tbaa !513
  call fastcc void @check_order(%struct.linebuffer* noundef %204, %struct.linebuffer* noundef nonnull %199, i32 noundef 2), !dbg !998
  br label %216, !dbg !998

205:                                              ; preds = %185
  %206 = sext i32 %85 to i64, !dbg !999
  %207 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 1, i64 %206, !dbg !999
  %208 = load %struct.linebuffer*, %struct.linebuffer** %207, align 8, !dbg !999, !tbaa !513
  %209 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %208, i64 0, i32 2, !dbg !1001
  %210 = load i8*, i8** %209, align 8, !dbg !1001, !tbaa !947
  %211 = icmp eq i8* %210, null, !dbg !999
  br i1 %211, label %216, label %212, !dbg !1002

212:                                              ; preds = %205
  %213 = sext i32 %86 to i64, !dbg !1003
  %214 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %3, i64 0, i64 1, i64 %213, !dbg !1003
  %215 = load %struct.linebuffer*, %struct.linebuffer** %214, align 8, !dbg !1003, !tbaa !513
  call fastcc void @check_order(%struct.linebuffer* noundef nonnull %208, %struct.linebuffer* noundef %215, i32 noundef 2), !dbg !1004
  br label %216, !dbg !1004

216:                                              ; preds = %212, %205, %201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !906, metadata !DIExpression()), !dbg !1005
  %217 = load i32, i32* %70, align 8, !dbg !1008, !tbaa !916
  %218 = and i32 %217, 32, !dbg !1009
  %219 = icmp eq i32 %218, 0, !dbg !1009
  br i1 %219, label %220, label %177, !dbg !1010

220:                                              ; preds = %216, %184
  %221 = phi %struct.linebuffer* [ %156, %184 ], [ %186, %216 ]
  %222 = phi i32 [ %150, %184 ], [ %187, %216 ]
  %223 = phi i32 [ %88, %184 ], [ %188, %216 ]
  %224 = phi i64 [ %93, %184 ], [ %189, %216 ]
  %225 = phi i64 [ %147, %184 ], [ %190, %216 ]
  %226 = phi i64 [ %148, %184 ], [ %191, %216 ]
  %227 = phi i32 [ %85, %184 ], [ %86, %216 ], !dbg !878
  %228 = phi i32 [ %86, %184 ], [ %193, %216 ], !dbg !878
  %229 = phi %struct.linebuffer* [ %90, %184 ], [ %199, %216 ], !dbg !878
  call void @llvm.dbg.value(metadata %struct.linebuffer* %229, metadata !842, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %228, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i32 %227, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !878
  call void @llvm.dbg.value(metadata i64 2, metadata !874, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %91, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %92, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !878
  call void @llvm.dbg.value(metadata i64 %144, metadata !853, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !878
  %230 = icmp ne %struct.linebuffer* %221, null, !dbg !921
  %231 = icmp ne %struct.linebuffer* %229, null, !dbg !922
  %232 = select i1 %230, i1 true, i1 %231, !dbg !922
  br i1 %232, label %84, label %78, !dbg !923, !llvm.loop !1012

233:                                              ; preds = %240, %78
  %234 = phi i64 [ 0, %78 ], [ 1, %240 ]
  %235 = tail call i32* @__errno_location() #38, !dbg !1014
  %236 = load i32, i32* %235, align 4, !dbg !1014, !tbaa !611
  %237 = getelementptr inbounds i8*, i8** %0, i64 %234, !dbg !1014
  %238 = load i8*, i8** %237, align 8, !dbg !1014, !tbaa !513
  %239 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %238) #35, !dbg !1014
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %236, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i8* noundef %239) #35, !dbg !1014
  unreachable, !dbg !1014

240:                                              ; preds = %78
  call void @llvm.dbg.value(metadata i64 1, metadata !876, metadata !DIExpression()), !dbg !925
  %241 = call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %64) #35, !dbg !926
  %242 = icmp eq i32 %241, 0, !dbg !929
  br i1 %242, label %243, label %233, !dbg !930

243:                                              ; preds = %240
  call void @llvm.dbg.value(metadata i64 2, metadata !876, metadata !DIExpression()), !dbg !925
  %244 = load i1, i1* @total_option, align 1, !dbg !1015
  br i1 %244, label %245, label %261, !dbg !1017

245:                                              ; preds = %243
  %246 = load i64, i64* @col_sep_len, align 8, !dbg !1018, !tbaa !767
  %247 = icmp eq i64 %246, 1, !dbg !1021
  %248 = load i8*, i8** @col_sep, align 8, !dbg !1022, !tbaa !513
  br i1 %247, label %249, label %256, !dbg !1023

249:                                              ; preds = %245
  %250 = load i8, i8* %248, align 1, !dbg !1024, !tbaa !620
  %251 = zext i8 %250 to i32, !dbg !1024
  %252 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #35, !dbg !1024
  %253 = load i1, i1* @delim, align 1, !dbg !1024
  %254 = select i1 %253, i32 0, i32 10, !dbg !1024
  %255 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0), i64 noundef %81, i32 noundef %251, i64 noundef %79, i32 noundef %251, i64 noundef %80, i32 noundef %251, i8* noundef %252, i32 noundef %254) #35, !dbg !1024
  br label %261, !dbg !1026

256:                                              ; preds = %245
  %257 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #35, !dbg !1027
  %258 = load i1, i1* @delim, align 1, !dbg !1027
  %259 = select i1 %258, i32 0, i32 10, !dbg !1027
  %260 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i64 0, i64 0), i64 noundef %81, i8* noundef %248, i64 noundef %79, i8* noundef %248, i64 noundef %80, i8* noundef %248, i8* noundef %257, i32 noundef %259) #35, !dbg !1027
  br label %261

261:                                              ; preds = %249, %256, %243
  %262 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 4, !dbg !1029, !tbaa !747, !range !944
  %263 = icmp eq i8 %262, 0, !dbg !1029
  %264 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  %265 = icmp eq i8 %264, 0
  %266 = select i1 %263, i1 %265, i1 false, !dbg !1031
  br i1 %266, label %269, label %267, !dbg !1031

267:                                              ; preds = %261
  %268 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i64 0, i64 0), i32 noundef 5) #35, !dbg !1032
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %268) #35, !dbg !1032
  unreachable, !dbg !1032

269:                                              ; preds = %261
  call void @exit(i32 noundef 0) #37, !dbg !1033
  unreachable, !dbg !1033
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @writeline(%struct.linebuffer* nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 !dbg !1034 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1040, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 %1, metadata !1041, metadata !DIExpression()), !dbg !1062
  switch i32 %1, label %25 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %9
  ], !dbg !1063

3:                                                ; preds = %2
  %4 = load i1, i1* @only_file_1, align 1, !dbg !1064
  br i1 %4, label %45, label %25, !dbg !1066

5:                                                ; preds = %2
  %6 = load i1, i1* @only_file_2, align 1, !dbg !1067
  br i1 %6, label %45, label %7, !dbg !1069

7:                                                ; preds = %5
  %8 = load i1, i1* @only_file_1, align 1, !dbg !1070
  br i1 %8, label %25, label %20, !dbg !1071

9:                                                ; preds = %2
  %10 = load i1, i1* @both, align 1, !dbg !1072
  br i1 %10, label %45, label %11, !dbg !1074

11:                                               ; preds = %9
  %12 = load i1, i1* @only_file_1, align 1, !dbg !1075
  br i1 %12, label %18, label %13, !dbg !1076

13:                                               ; preds = %11
  %14 = load i64, i64* @col_sep_len, align 8, !dbg !1077, !tbaa !767
  %15 = load i8*, i8** @col_sep, align 8, !dbg !1077, !tbaa !513
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1077, !tbaa !513
  %17 = tail call i64 @fwrite_unlocked(i8* noundef %15, i64 noundef 1, i64 noundef %14, %struct._IO_FILE* noundef %16), !dbg !1077
  br label %18, !dbg !1077

18:                                               ; preds = %13, %11
  %19 = load i1, i1* @only_file_2, align 1, !dbg !1078
  br i1 %19, label %25, label %20, !dbg !1079

20:                                               ; preds = %18, %7
  %21 = load i64, i64* @col_sep_len, align 8, !dbg !1080, !tbaa !767
  %22 = load i8*, i8** @col_sep, align 8, !dbg !1080, !tbaa !513
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1080, !tbaa !513
  %24 = tail call i64 @fwrite_unlocked(i8* noundef %22, i64 noundef 1, i64 noundef %21, %struct._IO_FILE* noundef %23), !dbg !1080
  br label %25, !dbg !1081

25:                                               ; preds = %20, %18, %7, %3, %2
  %26 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1081
  %27 = load i64, i64* %26, align 8, !dbg !1081, !tbaa !950
  %28 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1081
  %29 = load i8*, i8** %28, align 8, !dbg !1081, !tbaa !947
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1081, !tbaa !513
  %31 = tail call i64 @fwrite_unlocked(i8* noundef %29, i64 noundef 1, i64 noundef %27, %struct._IO_FILE* noundef %30), !dbg !1081
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1082, !tbaa !513
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %32, metadata !906, metadata !DIExpression()), !dbg !1084
  %33 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %32, i64 0, i32 0, !dbg !1086
  %34 = load i32, i32* %33, align 8, !dbg !1086, !tbaa !916
  %35 = and i32 %34, 32, !dbg !1082
  %36 = icmp eq i32 %35, 0, !dbg !1082
  br i1 %36, label %45, label %37, !dbg !1087

37:                                               ; preds = %25
  %38 = tail call i32* @__errno_location() #38, !dbg !1088
  %39 = load i32, i32* %38, align 4, !dbg !1088, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %39, metadata !1091, metadata !DIExpression()) #35, !dbg !1093
  %40 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef nonnull %32) #35, !dbg !1094
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1095, !tbaa !513
  %42 = tail call i32 @fpurge(%struct._IO_FILE* noundef %41) #35, !dbg !1096
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1097, !tbaa !513
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %43) #35, !dbg !1097
  %44 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1098
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %39, i8* noundef %44) #35, !dbg !1098
  unreachable, !dbg !1098

45:                                               ; preds = %9, %5, %3, %25
  ret void, !dbg !1099
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_order(%struct.linebuffer* nocapture noundef readonly %0, %struct.linebuffer* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #12 !dbg !1100 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1104, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata %struct.linebuffer* %1, metadata !1105, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i32 %2, metadata !1106, metadata !DIExpression()), !dbg !1117
  %4 = load i32, i32* @check_input_order, align 4, !dbg !1118, !tbaa !620
  switch i32 %4, label %5 [
    i32 2, label %39
    i32 1, label %7
  ], !dbg !1119

5:                                                ; preds = %3
  %6 = load i1, i1* @seen_unpairable, align 1, !dbg !1120
  br i1 %6, label %7, label %39, !dbg !1121

7:                                                ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1122
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %9, !dbg !1123
  %11 = load i8, i8* %10, align 1, !dbg !1123, !tbaa !747, !range !944
  %12 = icmp eq i8 %11, 0, !dbg !1123
  br i1 %12, label %13, label %39, !dbg !1124

13:                                               ; preds = %7
  %14 = load i8, i8* @hard_LC_COLLATE, align 4, !dbg !1125, !tbaa !747, !range !944
  %15 = icmp eq i8 %14, 0, !dbg !1125
  %16 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1127
  %17 = load i8*, i8** %16, align 8, !dbg !1127, !tbaa !947
  %18 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1127
  %19 = load i64, i64* %18, align 8, !dbg !1127, !tbaa !950
  %20 = add nsw i64 %19, -1, !dbg !1127
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 2, !dbg !1127
  %22 = load i8*, i8** %21, align 8, !dbg !1127, !tbaa !947
  %23 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 1, !dbg !1127
  %24 = load i64, i64* %23, align 8, !dbg !1127, !tbaa !950
  %25 = add nsw i64 %24, -1, !dbg !1127
  br i1 %15, label %28, label %26, !dbg !1128

26:                                               ; preds = %13
  %27 = tail call i32 @xmemcoll(i8* noundef %17, i64 noundef %20, i8* noundef %22, i64 noundef %25) #35, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %27, metadata !1107, metadata !DIExpression()), !dbg !1130
  br label %30, !dbg !1131

28:                                               ; preds = %13
  %29 = tail call i32 @memcmp2(i8* noundef %17, i64 noundef %20, i8* noundef %22, i64 noundef %25) #36, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %29, metadata !1107, metadata !DIExpression()), !dbg !1130
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1127
  call void @llvm.dbg.value(metadata i32 %31, metadata !1107, metadata !DIExpression()), !dbg !1130
  %32 = icmp sgt i32 %31, 0, !dbg !1133
  br i1 %32, label %33, label %39, !dbg !1134

33:                                               ; preds = %30
  %34 = load i32, i32* @check_input_order, align 4, !dbg !1135, !tbaa !620
  %35 = icmp eq i32 %34, 1, !dbg !1135
  %36 = zext i1 %35 to i32, !dbg !1135
  %37 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i64 0, i64 0), i32 noundef 5) #35, !dbg !1136
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %36, i32 noundef 0, i8* noundef %37, i32 noundef %2) #35, !dbg !1136
  call void @llvm.dbg.value(metadata i32 %36, metadata !1112, metadata !DIExpression()), !dbg !1137
  %38 = xor i1 %35, true, !dbg !1138
  tail call void @llvm.assume(i1 %38), !dbg !1136
  store i8 1, i8* %10, align 1, !dbg !1139, !tbaa !747
  br label %39, !dbg !1140

39:                                               ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1141
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

declare !dbg !1142 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1143 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !1146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1148, metadata !DIExpression()), !dbg !1149
  store i8* %0, i8** @file_name, align 8, !dbg !1150, !tbaa !513
  ret void, !dbg !1151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1152 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1156, metadata !DIExpression()), !dbg !1157
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1158, !tbaa !747
  ret void, !dbg !1159
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1160 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1165, !tbaa !513
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1166
  %3 = icmp eq i32 %2, 0, !dbg !1167
  br i1 %3, label %22, label %4, !dbg !1168

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1169, !tbaa !747, !range !944
  %6 = icmp eq i8 %5, 0, !dbg !1169
  br i1 %6, label %11, label %7, !dbg !1170

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1171
  %9 = load i32, i32* %8, align 4, !dbg !1171, !tbaa !611
  %10 = icmp eq i32 %9, 32, !dbg !1172
  br i1 %10, label %22, label %11, !dbg !1173

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.38, i64 0, i64 0), i32 noundef 5) #35, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %12, metadata !1162, metadata !DIExpression()), !dbg !1175
  %13 = load i8*, i8** @file_name, align 8, !dbg !1176, !tbaa !513
  %14 = icmp eq i8* %13, null, !dbg !1176
  %15 = tail call i32* @__errno_location() #38, !dbg !1178
  %16 = load i32, i32* %15, align 4, !dbg !1178, !tbaa !611
  br i1 %14, label %19, label %17, !dbg !1179

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1180
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.39, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1180
  br label %20, !dbg !1180

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.40, i64 0, i64 0), i8* noundef %12) #35, !dbg !1181
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1182, !tbaa !611
  tail call void @_exit(i32 noundef %21) #37, !dbg !1183
  unreachable, !dbg !1183

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1184, !tbaa !513
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1186
  %25 = icmp eq i32 %24, 0, !dbg !1187
  br i1 %25, label %28, label %26, !dbg !1188

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1189, !tbaa !611
  tail call void @_exit(i32 noundef %27) #37, !dbg !1190
  unreachable, !dbg !1190

28:                                               ; preds = %22
  ret void, !dbg !1191
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1192 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1196, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i32 %1, metadata !1197, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i8* %2, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1199, metadata !DIExpression()), !dbg !1201
  tail call fastcc void @flush_stdout(), !dbg !1202
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1203, !tbaa !513
  %7 = icmp eq void ()* %6, null, !dbg !1203
  br i1 %7, label %9, label %8, !dbg !1205

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1206
  br label %13, !dbg !1206

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1207, !tbaa !513
  %11 = tail call i8* @getprogname() #36, !dbg !1207
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8* noundef %11) #35, !dbg !1207
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1209
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1209
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1209, !tbaa.struct !1210
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1209
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1209
  ret void, !dbg !1211
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1212 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1214, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i32 1, metadata !1216, metadata !DIExpression()) #35, !dbg !1221
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1224
  %2 = icmp slt i32 %1, 0, !dbg !1225
  br i1 %2, label %6, label %3, !dbg !1226

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1227, !tbaa !513
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1227
  br label %6, !dbg !1227

6:                                                ; preds = %3, %0
  ret void, !dbg !1228
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1229 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1231, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %1, metadata !1232, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %2, metadata !1233, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1234, metadata !DIExpression()), !dbg !1236
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1237, !tbaa !513
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1238
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1239, metadata !DIExpression()) #35, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %2, metadata !1280, metadata !DIExpression()) #35, !dbg !1282
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1284
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1284, !noalias !1285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1284
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1284
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1284, !noalias !1285
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1289, !tbaa !611
  %12 = add i32 %11, 1, !dbg !1289
  store i32 %12, i32* @error_message_count, align 4, !dbg !1289, !tbaa !611
  %13 = icmp eq i32 %1, 0, !dbg !1290
  br i1 %13, label %24, label %14, !dbg !1292

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1293, metadata !DIExpression()) #35, !dbg !1301
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1303
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1303
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1297, metadata !DIExpression()) #35, !dbg !1304
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1305
  call void @llvm.dbg.value(metadata i8* %16, metadata !1296, metadata !DIExpression()) #35, !dbg !1301
  %17 = icmp eq i8* %16, null, !dbg !1306
  br i1 %17, label %18, label %20, !dbg !1308

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.43, i64 0, i64 0), i32 noundef 5) #35, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %19, metadata !1296, metadata !DIExpression()) #35, !dbg !1301
  br label %20, !dbg !1310

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1301
  call void @llvm.dbg.value(metadata i8* %21, metadata !1296, metadata !DIExpression()) #35, !dbg !1301
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1311, !tbaa !513
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.44, i64 0, i64 0), i8* noundef %21) #35, !dbg !1311
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1312
  br label %24, !dbg !1313

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1314, !tbaa !513
  call void @llvm.dbg.value(metadata i32 10, metadata !1315, metadata !DIExpression()) #35, !dbg !1321
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1320, metadata !DIExpression()) #35, !dbg !1321
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1323
  %27 = load i8*, i8** %26, align 8, !dbg !1323, !tbaa !1324
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1323
  %29 = load i8*, i8** %28, align 8, !dbg !1323, !tbaa !1325
  %30 = icmp ult i8* %27, %29, !dbg !1323
  br i1 %30, label %33, label %31, !dbg !1323, !prof !1326

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1323
  br label %35, !dbg !1323

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1323
  store i8* %34, i8** %26, align 8, !dbg !1323, !tbaa !1324
  store i8 10, i8* %27, align 1, !dbg !1323, !tbaa !620
  br label %35, !dbg !1323

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1327, !tbaa !513
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1327
  %38 = icmp eq i32 %0, 0, !dbg !1328
  br i1 %38, label %40, label %39, !dbg !1330

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1331
  unreachable, !dbg !1331

40:                                               ; preds = %35
  ret void, !dbg !1332
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1333 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1337 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1341 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1345, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i32 %1, metadata !1346, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8* %2, metadata !1347, metadata !DIExpression()), !dbg !1349
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1350
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1350
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1348, metadata !DIExpression()), !dbg !1351
  call void @llvm.va_start(i8* nonnull %6), !dbg !1352
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1353
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1353, !tbaa.struct !1210
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1353
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1353
  call void @llvm.va_end(i8* nonnull %6), !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1355
  ret void, !dbg !1355
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !212 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !230, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %1, metadata !231, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %2, metadata !232, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %3, metadata !233, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %4, metadata !234, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !235, metadata !DIExpression()), !dbg !1357
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1358, !tbaa !611
  %9 = icmp eq i32 %8, 0, !dbg !1358
  br i1 %9, label %24, label %10, !dbg !1360

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1361, !tbaa !611
  %12 = icmp eq i32 %11, %3, !dbg !1364
  br i1 %12, label %13, label %23, !dbg !1365

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1366, !tbaa !513
  %15 = icmp eq i8* %14, %2, !dbg !1367
  br i1 %15, label %39, label %16, !dbg !1368

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1369
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1370
  br i1 %19, label %20, label %23, !dbg !1370

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1371
  %22 = icmp eq i32 %21, 0, !dbg !1372
  br i1 %22, label %39, label %23, !dbg !1373

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1374, !tbaa !513
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1375, !tbaa !611
  br label %24, !dbg !1376

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1377
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1378, !tbaa !513
  %26 = icmp eq void ()* %25, null, !dbg !1378
  br i1 %26, label %28, label %27, !dbg !1380

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1381
  br label %32, !dbg !1381

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1382, !tbaa !513
  %30 = tail call i8* @getprogname() #36, !dbg !1382
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.47, i64 0, i64 0), i8* noundef %30) #35, !dbg !1382
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1384, !tbaa !513
  %34 = icmp eq i8* %2, null, !dbg !1384
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.48, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.49, i64 0, i64 0), !dbg !1384
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1384
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1385
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1385
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1385, !tbaa.struct !1210
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1385
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1385
  br label %39, !dbg !1386

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1386
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1387 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1391, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %1, metadata !1392, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %2, metadata !1393, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %3, metadata !1394, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %4, metadata !1395, metadata !DIExpression()), !dbg !1397
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1398
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1398
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1396, metadata !DIExpression()), !dbg !1399
  call void @llvm.va_start(i8* nonnull %8), !dbg !1400
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1401
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1401, !tbaa.struct !1210
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1401
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1401
  call void @llvm.va_end(i8* nonnull %8), !dbg !1402
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1403
  ret void, !dbg !1403
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1404 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1410, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %1, metadata !1411, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %2, metadata !1412, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %3, metadata !1413, metadata !DIExpression()), !dbg !1414
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #35, !dbg !1415
  ret void, !dbg !1416
}

; Function Attrs: nounwind
declare !dbg !1417 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1420 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1458, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i32 %1, metadata !1459, metadata !DIExpression()), !dbg !1460
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1461
  br i1 %3, label %7, label %4, !dbg !1463

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %5, metadata !1410, metadata !DIExpression()) #35, !dbg !1465
  call void @llvm.dbg.value(metadata i64 0, metadata !1411, metadata !DIExpression()) #35, !dbg !1465
  call void @llvm.dbg.value(metadata i64 0, metadata !1412, metadata !DIExpression()) #35, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %1, metadata !1413, metadata !DIExpression()) #35, !dbg !1465
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #35, !dbg !1467
  br label %7, !dbg !1468

7:                                                ; preds = %4, %2
  ret void, !dbg !1469
}

; Function Attrs: nofree nounwind
declare !dbg !1470 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1473 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1511, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 0, metadata !1512, metadata !DIExpression()), !dbg !1515
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1516
  call void @llvm.dbg.value(metadata i32 %2, metadata !1513, metadata !DIExpression()), !dbg !1515
  %3 = icmp slt i32 %2, 0, !dbg !1517
  br i1 %3, label %4, label %6, !dbg !1519

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1520
  br label %24, !dbg !1521

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1522
  %8 = icmp eq i32 %7, 0, !dbg !1522
  br i1 %8, label %13, label %9, !dbg !1524

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1525
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !1526
  %12 = icmp eq i64 %11, -1, !dbg !1527
  br i1 %12, label %16, label %13, !dbg !1528

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1529
  %15 = icmp eq i32 %14, 0, !dbg !1529
  br i1 %15, label %16, label %18, !dbg !1530

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !1512, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 0, metadata !1514, metadata !DIExpression()), !dbg !1515
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %21, metadata !1514, metadata !DIExpression()), !dbg !1515
  br label %24, !dbg !1532

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !1533
  %20 = load i32, i32* %19, align 4, !dbg !1533, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %20, metadata !1512, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 0, metadata !1514, metadata !DIExpression()), !dbg !1515
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %21, metadata !1514, metadata !DIExpression()), !dbg !1515
  %22 = icmp eq i32 %20, 0, !dbg !1534
  br i1 %22, label %24, label %23, !dbg !1532

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !1536, !tbaa !611
  call void @llvm.dbg.value(metadata i32 -1, metadata !1514, metadata !DIExpression()), !dbg !1515
  br label %24, !dbg !1538

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1515
  ret i32 %25, !dbg !1539
}

; Function Attrs: nofree nounwind
declare !dbg !1540 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1541 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !1545 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1583, metadata !DIExpression()), !dbg !1584
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1585
  br i1 %2, label %6, label %3, !dbg !1587

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1588
  %5 = icmp eq i32 %4, 0, !dbg !1588
  br i1 %5, label %6, label %8, !dbg !1589

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !1590
  br label %17, !dbg !1591

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1592, metadata !DIExpression()) #35, !dbg !1597
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1599
  %10 = load i32, i32* %9, align 8, !dbg !1599, !tbaa !916
  %11 = and i32 %10, 256, !dbg !1601
  %12 = icmp eq i32 %11, 0, !dbg !1601
  br i1 %12, label %15, label %13, !dbg !1602

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !1603
  br label %15, !dbg !1603

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !1604
  br label %17, !dbg !1605

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !1584
  ret i32 %18, !dbg !1606
}

; Function Attrs: nofree nounwind
declare !dbg !1607 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* noundef nonnull %0, i8* noundef nonnull %1) local_unnamed_addr #12 !dbg !1608 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1646, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %1, metadata !1647, metadata !DIExpression()), !dbg !1661
  %3 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #35, !dbg !1662
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !1648, metadata !DIExpression()), !dbg !1661
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1663
  br i1 %4, label %25, label %5, !dbg !1664

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %3) #35, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %6, metadata !1649, metadata !DIExpression()), !dbg !1666
  %7 = icmp ult i32 %6, 3, !dbg !1667
  br i1 %7, label %8, label %25, !dbg !1667

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 noundef %6) #35, !dbg !1668
  call void @llvm.dbg.value(metadata i32 %9, metadata !1652, metadata !DIExpression()), !dbg !1669
  %10 = icmp slt i32 %9, 0, !dbg !1670
  br i1 %10, label %11, label %15, !dbg !1671

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #38, !dbg !1672
  %13 = load i32, i32* %12, align 4, !dbg !1672, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %13, metadata !1655, metadata !DIExpression()), !dbg !1673
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %3) #35, !dbg !1674
  store i32 %13, i32* %12, align 4, !dbg !1675, !tbaa !611
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %3) #35, !dbg !1676
  %17 = icmp eq i32 %16, 0, !dbg !1677
  br i1 %17, label %18, label %21, !dbg !1678

18:                                               ; preds = %15
  %19 = tail call noalias %struct._IO_FILE* @fdopen(i32 noundef %9, i8* noundef nonnull %1) #35, !dbg !1679
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1648, metadata !DIExpression()), !dbg !1661
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1680
  br i1 %20, label %21, label %25, !dbg !1681

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1648, metadata !DIExpression()), !dbg !1661
  %22 = tail call i32* @__errno_location() #38, !dbg !1682
  %23 = load i32, i32* %22, align 4, !dbg !1682, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %23, metadata !1658, metadata !DIExpression()), !dbg !1683
  %24 = tail call i32 @close(i32 noundef %9) #35, !dbg !1684
  store i32 %23, i32* %22, align 4, !dbg !1685, !tbaa !611
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !1661
  ret %struct._IO_FILE* %26, !dbg !1686
}

; Function Attrs: nofree nounwind
declare !dbg !1687 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1690 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1691 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1729, metadata !DIExpression()), !dbg !1730
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1731
  ret i32 0, !dbg !1732
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !1733 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1771, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %1, metadata !1772, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i32 %2, metadata !1773, metadata !DIExpression()), !dbg !1777
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1778
  %5 = load i8*, i8** %4, align 8, !dbg !1778, !tbaa !1779
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1780
  %7 = load i8*, i8** %6, align 8, !dbg !1780, !tbaa !1781
  %8 = icmp eq i8* %5, %7, !dbg !1782
  br i1 %8, label %9, label %28, !dbg !1783

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1784
  %11 = load i8*, i8** %10, align 8, !dbg !1784, !tbaa !1324
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !1785
  %13 = load i8*, i8** %12, align 8, !dbg !1785, !tbaa !1786
  %14 = icmp eq i8* %11, %13, !dbg !1787
  br i1 %14, label %15, label %28, !dbg !1788

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !1789
  %17 = load i8*, i8** %16, align 8, !dbg !1789, !tbaa !1790
  %18 = icmp eq i8* %17, null, !dbg !1791
  br i1 %18, label %19, label %28, !dbg !1792

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1793
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %21, metadata !1774, metadata !DIExpression()), !dbg !1795
  %22 = icmp eq i64 %21, -1, !dbg !1796
  br i1 %22, label %30, label %23, !dbg !1798

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1799
  %25 = load i32, i32* %24, align 8, !dbg !1800, !tbaa !916
  %26 = and i32 %25, -17, !dbg !1800
  store i32 %26, i32* %24, align 8, !dbg !1800, !tbaa !916
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !1801
  store i64 %21, i64* %27, align 8, !dbg !1802, !tbaa !1803
  br label %30, !dbg !1804

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !1805
  br label %30, !dbg !1806

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !1777
  ret i32 %31, !dbg !1807
}

; Function Attrs: nofree nounwind
declare !dbg !1808 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1811 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1814, !tbaa !513
  ret i8* %1, !dbg !1815
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !1816 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1820, metadata !DIExpression()), !dbg !1825
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !1826
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !1826
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !1821, metadata !DIExpression()), !dbg !1827
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !1828
  %5 = icmp eq i32 %4, 0, !dbg !1828
  br i1 %5, label %6, label %13, !dbg !1830

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !1831, metadata !DIExpression()) #35, !dbg !1835
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0), metadata !1834, metadata !DIExpression()) #35, !dbg !1835
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0), i64 2), !dbg !1838
  %8 = icmp eq i32 %7, 0, !dbg !1839
  br i1 %8, label %12, label %9, !dbg !1840

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !1831, metadata !DIExpression()) #35, !dbg !1841
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.81, i64 0, i64 0), metadata !1834, metadata !DIExpression()) #35, !dbg !1841
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.81, i64 0, i64 0), i64 6), !dbg !1843
  %11 = icmp eq i32 %10, 0, !dbg !1844
  br i1 %11, label %12, label %13, !dbg !1845

12:                                               ; preds = %9, %6
  br label %13, !dbg !1846

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !1847
  ret i1 %14, !dbg !1847
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nofree nounwind uwtable
define dso_local void @initbuffer(%struct.linebuffer* noundef %0) local_unnamed_addr #20 !dbg !1848 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1858, metadata !DIExpression()), !dbg !1859
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1860
  call void @llvm.dbg.value(metadata i8* %2, metadata !1861, metadata !DIExpression()) #35, !dbg !1869
  call void @llvm.dbg.value(metadata i32 0, metadata !1867, metadata !DIExpression()) #35, !dbg !1869
  call void @llvm.dbg.value(metadata i64 24, metadata !1868, metadata !DIExpression()) #35, !dbg !1869
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(24) %2, i8 noundef 0, i64 noundef 24, i1 noundef false) #35, !dbg !1871
  ret void, !dbg !1872
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nounwind uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer* noundef %0, %struct._IO_FILE* noundef %1) local_unnamed_addr #12 !dbg !1873 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1911, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1912, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1914, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1919, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata i8 10, metadata !1920, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1931, metadata !DIExpression()) #35, !dbg !1936
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1939
  %4 = load i32, i32* %3, align 8, !dbg !1939, !tbaa !916
  %5 = and i32 %4, 16, !dbg !1940
  %6 = icmp eq i32 %5, 0, !dbg !1940
  br i1 %6, label %7, label %62, !dbg !1941

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1942
  %9 = load i8*, i8** %8, align 8, !dbg !1942, !tbaa !947
  call void @llvm.dbg.value(metadata i8* %9, metadata !1921, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %9, metadata !1922, metadata !DIExpression()) #35, !dbg !1929
  %10 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1943
  %11 = load i64, i64* %10, align 8, !dbg !1943, !tbaa !1944
  %12 = getelementptr inbounds i8, i8* %9, i64 %11, !dbg !1945
  call void @llvm.dbg.value(metadata i8* %12, metadata !1923, metadata !DIExpression()) #35, !dbg !1929
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !1946

15:                                               ; preds = %48, %7
  %16 = phi i8* [ %9, %7 ], [ %49, %48 ], !dbg !1929
  %17 = phi i8* [ %9, %7 ], [ %53, %48 ], !dbg !1929
  %18 = phi i8* [ %12, %7 ], [ %51, %48 ], !dbg !1929
  call void @llvm.dbg.value(metadata i8* %18, metadata !1923, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %17, metadata !1922, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %16, metadata !1921, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1947, metadata !DIExpression()) #35, !dbg !1950
  %19 = load i8*, i8** %13, align 8, !dbg !1952, !tbaa !1781
  %20 = load i8*, i8** %14, align 8, !dbg !1952, !tbaa !1779
  %21 = icmp ult i8* %19, %20, !dbg !1952
  br i1 %21, label %22, label %26, !dbg !1952, !prof !1326

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1952
  store i8* %23, i8** %13, align 8, !dbg !1952, !tbaa !1781
  %24 = load i8, i8* %19, align 1, !dbg !1952, !tbaa !620
  %25 = zext i8 %24 to i32, !dbg !1952
  call void @llvm.dbg.value(metadata i32 %27, metadata !1924, metadata !DIExpression()) #35, !dbg !1929
  br label %39, !dbg !1953

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %1) #35, !dbg !1952
  call void @llvm.dbg.value(metadata i32 %27, metadata !1924, metadata !DIExpression()) #35, !dbg !1929
  %28 = icmp eq i32 %27, -1, !dbg !1954
  br i1 %28, label %29, label %39, !dbg !1953

29:                                               ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !1956
  br i1 %30, label %62, label %31, !dbg !1959

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1960, metadata !DIExpression()) #35, !dbg !1963
  %32 = load i32, i32* %3, align 8, !dbg !1965, !tbaa !916
  %33 = and i32 %32, 32, !dbg !1966
  %34 = icmp eq i32 %33, 0, !dbg !1966
  br i1 %34, label %35, label %62, !dbg !1967

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1968
  %37 = load i8, i8* %36, align 1, !dbg !1968, !tbaa !620
  %38 = icmp eq i8 %37, 10, !dbg !1970
  br i1 %38, label %55, label %39, !dbg !1971

39:                                               ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ], !dbg !1972
  call void @llvm.dbg.value(metadata i32 %40, metadata !1924, metadata !DIExpression()) #35, !dbg !1929
  %41 = icmp eq i8* %17, %18, !dbg !1973
  br i1 %41, label %42, label %48, !dbg !1974

42:                                               ; preds = %39
  %43 = load i64, i64* %10, align 8, !dbg !1975, !tbaa !1944
  call void @llvm.dbg.value(metadata i64 %43, metadata !1925, metadata !DIExpression()) #35, !dbg !1976
  %44 = tail call nonnull i8* @xpalloc(i8* noundef %16, i64* noundef nonnull %10, i64 noundef 1, i64 noundef -1, i64 noundef 1) #35, !dbg !1977
  call void @llvm.dbg.value(metadata i8* %44, metadata !1921, metadata !DIExpression()) #35, !dbg !1929
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1978
  call void @llvm.dbg.value(metadata i8* %45, metadata !1922, metadata !DIExpression()) #35, !dbg !1929
  store i8* %44, i8** %8, align 8, !dbg !1979, !tbaa !947
  %46 = load i64, i64* %10, align 8, !dbg !1980, !tbaa !1944
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !1981
  call void @llvm.dbg.value(metadata i8* %47, metadata !1923, metadata !DIExpression()) #35, !dbg !1929
  br label %48, !dbg !1982

48:                                               ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ], !dbg !1929
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ], !dbg !1929
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ], !dbg !1929
  call void @llvm.dbg.value(metadata i8* %51, metadata !1923, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %50, metadata !1922, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %49, metadata !1921, metadata !DIExpression()) #35, !dbg !1929
  %52 = trunc i32 %40 to i8, !dbg !1983
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1984
  call void @llvm.dbg.value(metadata i8* %53, metadata !1922, metadata !DIExpression()) #35, !dbg !1929
  store i8 %52, i8* %50, align 1, !dbg !1985, !tbaa !620
  %54 = icmp eq i32 %40, 10, !dbg !1986
  br i1 %54, label %55, label %15, !dbg !1987, !llvm.loop !1988

55:                                               ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ], !dbg !1929
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ], !dbg !1929
  call void @llvm.dbg.value(metadata i8* %57, metadata !1922, metadata !DIExpression()) #35, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %56, metadata !1921, metadata !DIExpression()) #35, !dbg !1929
  %58 = ptrtoint i8* %57 to i64, !dbg !1990
  %59 = ptrtoint i8* %56 to i64, !dbg !1990
  %60 = sub i64 %58, %59, !dbg !1990
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1991
  store i64 %60, i64* %61, align 8, !dbg !1992, !tbaa !950
  br label %62, !dbg !1993

62:                                               ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ null, %2 ], [ %0, %55 ], [ null, %31 ], [ null, %29 ], !dbg !1929
  ret %struct.linebuffer* %63, !dbg !1994
}

declare i32 @__uflow(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* noundef %0, %struct._IO_FILE* noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !1915 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1914, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1919, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 %2, metadata !1920, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1931, metadata !DIExpression()), !dbg !1996
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1998
  %5 = load i32, i32* %4, align 8, !dbg !1998, !tbaa !916
  %6 = and i32 %5, 16, !dbg !1999
  %7 = icmp eq i32 %6, 0, !dbg !1999
  br i1 %7, label %8, label %64, !dbg !2000

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2001
  %10 = load i8*, i8** %9, align 8, !dbg !2001, !tbaa !947
  call void @llvm.dbg.value(metadata i8* %10, metadata !1921, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %10, metadata !1922, metadata !DIExpression()), !dbg !1995
  %11 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2002
  %12 = load i64, i64* %11, align 8, !dbg !2002, !tbaa !1944
  %13 = getelementptr inbounds i8, i8* %10, i64 %12, !dbg !2003
  call void @llvm.dbg.value(metadata i8* %13, metadata !1923, metadata !DIExpression()), !dbg !1995
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = zext i8 %2 to i32
  br label %17, !dbg !2004

17:                                               ; preds = %50, %8
  %18 = phi i8* [ %10, %8 ], [ %51, %50 ], !dbg !1995
  %19 = phi i8* [ %10, %8 ], [ %55, %50 ], !dbg !1995
  %20 = phi i8* [ %13, %8 ], [ %53, %50 ], !dbg !1995
  call void @llvm.dbg.value(metadata i8* %20, metadata !1923, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %19, metadata !1922, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %18, metadata !1921, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1947, metadata !DIExpression()) #35, !dbg !2005
  %21 = load i8*, i8** %14, align 8, !dbg !2007, !tbaa !1781
  %22 = load i8*, i8** %15, align 8, !dbg !2007, !tbaa !1779
  %23 = icmp ult i8* %21, %22, !dbg !2007
  br i1 %23, label %24, label %28, !dbg !2007, !prof !1326

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2007
  store i8* %25, i8** %14, align 8, !dbg !2007, !tbaa !1781
  %26 = load i8, i8* %21, align 1, !dbg !2007, !tbaa !620
  %27 = zext i8 %26 to i32, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %29, metadata !1924, metadata !DIExpression()), !dbg !1995
  br label %41, !dbg !2008

28:                                               ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %1) #35, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %29, metadata !1924, metadata !DIExpression()), !dbg !1995
  %30 = icmp eq i32 %29, -1, !dbg !2009
  br i1 %30, label %31, label %41, !dbg !2008

31:                                               ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !2010
  br i1 %32, label %64, label %33, !dbg !2011

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1960, metadata !DIExpression()), !dbg !2012
  %34 = load i32, i32* %4, align 8, !dbg !2014, !tbaa !916
  %35 = and i32 %34, 32, !dbg !2015
  %36 = icmp eq i32 %35, 0, !dbg !2015
  br i1 %36, label %37, label %64, !dbg !2016

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2017
  %39 = load i8, i8* %38, align 1, !dbg !2017, !tbaa !620
  %40 = icmp eq i8 %39, %2, !dbg !2018
  br i1 %40, label %57, label %41, !dbg !2019

41:                                               ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ], !dbg !2020
  call void @llvm.dbg.value(metadata i32 %42, metadata !1924, metadata !DIExpression()), !dbg !1995
  %43 = icmp eq i8* %19, %20, !dbg !2021
  br i1 %43, label %44, label %50, !dbg !2022

44:                                               ; preds = %41
  %45 = load i64, i64* %11, align 8, !dbg !2023, !tbaa !1944
  call void @llvm.dbg.value(metadata i64 %45, metadata !1925, metadata !DIExpression()), !dbg !2024
  %46 = tail call nonnull i8* @xpalloc(i8* noundef %18, i64* noundef nonnull %11, i64 noundef 1, i64 noundef -1, i64 noundef 1) #35, !dbg !2025
  call void @llvm.dbg.value(metadata i8* %46, metadata !1921, metadata !DIExpression()), !dbg !1995
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !2026
  call void @llvm.dbg.value(metadata i8* %47, metadata !1922, metadata !DIExpression()), !dbg !1995
  store i8* %46, i8** %9, align 8, !dbg !2027, !tbaa !947
  %48 = load i64, i64* %11, align 8, !dbg !2028, !tbaa !1944
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !2029
  call void @llvm.dbg.value(metadata i8* %49, metadata !1923, metadata !DIExpression()), !dbg !1995
  br label %50, !dbg !2030

50:                                               ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ], !dbg !1995
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ], !dbg !1995
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ], !dbg !1995
  call void @llvm.dbg.value(metadata i8* %53, metadata !1923, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %52, metadata !1922, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %51, metadata !1921, metadata !DIExpression()), !dbg !1995
  %54 = trunc i32 %42 to i8, !dbg !2031
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !2032
  call void @llvm.dbg.value(metadata i8* %55, metadata !1922, metadata !DIExpression()), !dbg !1995
  store i8 %54, i8* %52, align 1, !dbg !2033, !tbaa !620
  %56 = icmp eq i32 %42, %16, !dbg !2034
  br i1 %56, label %57, label %17, !dbg !2035, !llvm.loop !2036

57:                                               ; preds = %37, %50
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ], !dbg !1995
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ], !dbg !1995
  call void @llvm.dbg.value(metadata i8* %59, metadata !1922, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %58, metadata !1921, metadata !DIExpression()), !dbg !1995
  %60 = ptrtoint i8* %59 to i64, !dbg !2038
  %61 = ptrtoint i8* %58 to i64, !dbg !2038
  %62 = sub i64 %60, %61, !dbg !2038
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2039
  store i64 %62, i64* %63, align 8, !dbg !2040, !tbaa !950
  br label %64, !dbg !2041

64:                                               ; preds = %33, %31, %57, %3
  %65 = phi %struct.linebuffer* [ null, %3 ], [ %0, %57 ], [ null, %31 ], [ null, %33 ], !dbg !1995
  ret %struct.linebuffer* %65, !dbg !2042
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @freebuffer(%struct.linebuffer* nocapture noundef readonly %0) local_unnamed_addr #22 !dbg !2043 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2045, metadata !DIExpression()), !dbg !2046
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2047
  %3 = load i8*, i8** %2, align 8, !dbg !2047, !tbaa !947
  tail call void @free(i8* noundef %3) #35, !dbg !2048
  ret void, !dbg !2049
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i32 @memcmp2(i8* nocapture noundef readonly %0, i64 noundef %1, i8* nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #24 !dbg !2050 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2054, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %1, metadata !2055, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8* %2, metadata !2056, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %3, metadata !2057, metadata !DIExpression()), !dbg !2059
  %5 = icmp ugt i64 %1, %3, !dbg !2060
  %6 = select i1 %5, i64 %3, i64 %1, !dbg !2061
  %7 = tail call i32 @memcmp(i8* noundef %0, i8* noundef %2, i64 noundef %6) #36, !dbg !2062
  call void @llvm.dbg.value(metadata i32 %7, metadata !2058, metadata !DIExpression()), !dbg !2059
  %8 = icmp eq i32 %7, 0, !dbg !2063
  %9 = zext i1 %5 to i32, !dbg !2065
  %10 = icmp ult i64 %1, %3, !dbg !2065
  %11 = sext i1 %10 to i32, !dbg !2065
  %12 = add nsw i32 %11, %9, !dbg !2065
  %13 = select i1 %8, i32 %12, i32 %7, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %13, metadata !2058, metadata !DIExpression()), !dbg !2059
  ret i32 %13, !dbg !2066
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #25 !dbg !2067 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2069, metadata !DIExpression()), !dbg !2072
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !2073
  call void @llvm.dbg.value(metadata i8* %2, metadata !2070, metadata !DIExpression()), !dbg !2072
  %3 = icmp eq i8* %2, null, !dbg !2074
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2074
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2074
  call void @llvm.dbg.value(metadata i8* %5, metadata !2071, metadata !DIExpression()), !dbg !2072
  %6 = ptrtoint i8* %5 to i64, !dbg !2075
  %7 = ptrtoint i8* %0 to i64, !dbg !2075
  %8 = sub i64 %6, %7, !dbg !2075
  %9 = icmp sgt i64 %8, 6, !dbg !2077
  br i1 %9, label %10, label %19, !dbg !2078

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2079
  call void @llvm.dbg.value(metadata i8* %11, metadata !2080, metadata !DIExpression()) #35, !dbg !2087
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i64 0, i64 0), metadata !2085, metadata !DIExpression()) #35, !dbg !2087
  call void @llvm.dbg.value(metadata i64 7, metadata !2086, metadata !DIExpression()) #35, !dbg !2087
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i64 0, i64 0), i64 7) #35, !dbg !2089
  %13 = icmp eq i32 %12, 0, !dbg !2090
  br i1 %13, label %14, label %19, !dbg !2091

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2069, metadata !DIExpression()), !dbg !2072
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.93, i64 0, i64 0), i64 noundef 3) #36, !dbg !2092
  %16 = icmp eq i32 %15, 0, !dbg !2095
  %17 = select i1 %16, i64 3, i64 0, !dbg !2096
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2096
  br label %19, !dbg !2096

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2072
  call void @llvm.dbg.value(metadata i8* %21, metadata !2071, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %20, metadata !2069, metadata !DIExpression()), !dbg !2072
  store i8* %20, i8** @program_name, align 8, !dbg !2097, !tbaa !513
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2098, !tbaa !513
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2099, !tbaa !513
  ret void, !dbg !2100
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !253 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !260, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %1, metadata !261, metadata !DIExpression()), !dbg !2101
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !2102
  call void @llvm.dbg.value(metadata i8* %5, metadata !262, metadata !DIExpression()), !dbg !2101
  %6 = icmp eq i8* %5, %0, !dbg !2103
  br i1 %6, label %7, label %17, !dbg !2105

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2106
  %10 = bitcast i64* %4 to i8*, !dbg !2107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2107
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !268, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2109, metadata !DIExpression()) #35, !dbg !2116
  call void @llvm.dbg.value(metadata i8* %10, metadata !2118, metadata !DIExpression()) #35, !dbg !2123
  call void @llvm.dbg.value(metadata i32 0, metadata !2121, metadata !DIExpression()) #35, !dbg !2123
  call void @llvm.dbg.value(metadata i64 8, metadata !2122, metadata !DIExpression()) #35, !dbg !2123
  store i64 0, i64* %4, align 8, !dbg !2125
  call void @llvm.dbg.value(metadata i32* %3, metadata !263, metadata !DIExpression(DW_OP_deref)), !dbg !2101
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !2126
  %12 = icmp eq i64 %11, 2, !dbg !2128
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !263, metadata !DIExpression()), !dbg !2101
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2129
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2101
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2130
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2101
  ret i8* %18, !dbg !2130
}

; Function Attrs: nounwind
declare !dbg !2131 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2137 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2142, metadata !DIExpression()), !dbg !2145
  %2 = tail call i32* @__errno_location() #38, !dbg !2146
  %3 = load i32, i32* %2, align 4, !dbg !2146, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %3, metadata !2143, metadata !DIExpression()), !dbg !2145
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2147
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2147
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2147
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !2148
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2144, metadata !DIExpression()), !dbg !2145
  store i32 %3, i32* %2, align 4, !dbg !2149, !tbaa !611
  ret %struct.quoting_options* %8, !dbg !2150
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !2151 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2157, metadata !DIExpression()), !dbg !2158
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2159
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2159
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2160
  %5 = load i32, i32* %4, align 8, !dbg !2160, !tbaa !2161
  ret i32 %5, !dbg !2163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !2164 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2168, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 %1, metadata !2169, metadata !DIExpression()), !dbg !2170
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2171
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2171
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2172
  store i32 %1, i32* %5, align 8, !dbg !2173, !tbaa !2161
  ret void, !dbg !2174
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2175 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2179, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %1, metadata !2180, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %2, metadata !2181, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %1, metadata !2182, metadata !DIExpression()), !dbg !2187
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2188
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2188
  %6 = lshr i8 %1, 5, !dbg !2189
  %7 = zext i8 %6 to i64, !dbg !2189
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2190
  call void @llvm.dbg.value(metadata i32* %8, metadata !2183, metadata !DIExpression()), !dbg !2187
  %9 = and i8 %1, 31, !dbg !2191
  %10 = zext i8 %9 to i32, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %10, metadata !2185, metadata !DIExpression()), !dbg !2187
  %11 = load i32, i32* %8, align 4, !dbg !2192, !tbaa !611
  %12 = lshr i32 %11, %10, !dbg !2193
  %13 = and i32 %12, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %13, metadata !2186, metadata !DIExpression()), !dbg !2187
  %14 = and i32 %2, 1, !dbg !2195
  %15 = xor i32 %13, %14, !dbg !2196
  %16 = shl i32 %15, %10, !dbg !2197
  %17 = xor i32 %16, %11, !dbg !2198
  store i32 %17, i32* %8, align 4, !dbg !2198, !tbaa !611
  ret i32 %13, !dbg !2199
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2200 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2207
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2208
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2210
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2204, metadata !DIExpression()), !dbg !2207
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2211
  %6 = load i32, i32* %5, align 4, !dbg !2211, !tbaa !2212
  call void @llvm.dbg.value(metadata i32 %6, metadata !2206, metadata !DIExpression()), !dbg !2207
  store i32 %1, i32* %5, align 4, !dbg !2213, !tbaa !2212
  ret i32 %6, !dbg !2214
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2215 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2219, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8* %1, metadata !2220, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8* %2, metadata !2221, metadata !DIExpression()), !dbg !2222
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2223
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2225
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2219, metadata !DIExpression()), !dbg !2222
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2226
  store i32 10, i32* %6, align 8, !dbg !2227, !tbaa !2161
  %7 = icmp ne i8* %1, null, !dbg !2228
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2230
  br i1 %9, label %11, label %10, !dbg !2230

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2231
  unreachable, !dbg !2231

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2232
  store i8* %1, i8** %12, align 8, !dbg !2233, !tbaa !2234
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2235
  store i8* %2, i8** %13, align 8, !dbg !2236, !tbaa !2237
  ret void, !dbg !2238
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2239 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2243, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %1, metadata !2244, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* %2, metadata !2245, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %3, metadata !2246, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2247, metadata !DIExpression()), !dbg !2251
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2252
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2248, metadata !DIExpression()), !dbg !2251
  %8 = tail call i32* @__errno_location() #38, !dbg !2253
  %9 = load i32, i32* %8, align 4, !dbg !2253, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %9, metadata !2249, metadata !DIExpression()), !dbg !2251
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2254
  %11 = load i32, i32* %10, align 8, !dbg !2254, !tbaa !2161
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2255
  %13 = load i32, i32* %12, align 4, !dbg !2255, !tbaa !2212
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2256
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2257
  %16 = load i8*, i8** %15, align 8, !dbg !2257, !tbaa !2234
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2258
  %18 = load i8*, i8** %17, align 8, !dbg !2258, !tbaa !2237
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %19, metadata !2250, metadata !DIExpression()), !dbg !2251
  store i32 %9, i32* %8, align 4, !dbg !2260, !tbaa !611
  ret i64 %19, !dbg !2261
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2262 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2268, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %1, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %2, metadata !2270, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %3, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %4, metadata !2272, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %5, metadata !2273, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32* %6, metadata !2274, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %7, metadata !2275, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %8, metadata !2276, metadata !DIExpression()), !dbg !2330
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2331
  %18 = icmp eq i64 %17, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i1 %18, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2330
  call void @llvm.dbg.value(metadata i64 0, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 0, metadata !2279, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* null, metadata !2280, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 0, metadata !2281, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2282, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %5, metadata !2283, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 1, metadata !2285, metadata !DIExpression()), !dbg !2330
  %19 = and i32 %5, 2, !dbg !2333
  %20 = icmp ne i32 %19, 0, !dbg !2333
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
  br label %36, !dbg !2333

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2334
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2335
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2336
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2285, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2283, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %43, metadata !2281, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %42, metadata !2280, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %41, metadata !2279, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 0, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %40, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %39, metadata !2276, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %38, metadata !2275, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %37, metadata !2272, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.label(metadata !2323), !dbg !2337
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2330
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
  ], !dbg !2338

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2283, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 5, metadata !2272, metadata !DIExpression()), !dbg !2330
  br label %111, !dbg !2339

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2283, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 5, metadata !2272, metadata !DIExpression()), !dbg !2330
  br i1 %45, label %111, label %51, !dbg !2339

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2340
  br i1 %52, label %111, label %53, !dbg !2344

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2340, !tbaa !620
  br label %111, !dbg !2340

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.106, i64 0, i64 0), metadata !326, metadata !DIExpression()) #35, !dbg !2345
  call void @llvm.dbg.value(metadata i32 %37, metadata !327, metadata !DIExpression()) #35, !dbg !2345
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.106, i64 0, i64 0), i32 noundef 5) #35, !dbg !2349
  call void @llvm.dbg.value(metadata i8* %55, metadata !328, metadata !DIExpression()) #35, !dbg !2345
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.106, i64 0, i64 0), !dbg !2350
  br i1 %56, label %57, label %66, !dbg !2352

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2353
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2354
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !330, metadata !DIExpression()) #35, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2356, metadata !DIExpression()) #35, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %23, metadata !2364, metadata !DIExpression()) #35, !dbg !2369
  call void @llvm.dbg.value(metadata i32 0, metadata !2367, metadata !DIExpression()) #35, !dbg !2369
  call void @llvm.dbg.value(metadata i64 8, metadata !2368, metadata !DIExpression()) #35, !dbg !2369
  store i64 0, i64* %13, align 8, !dbg !2371
  call void @llvm.dbg.value(metadata i32* %12, metadata !329, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2345
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !2372
  %59 = icmp eq i64 %58, 3, !dbg !2374
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !329, metadata !DIExpression()) #35, !dbg !2345
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2375
  %63 = icmp eq i32 %37, 9, !dbg !2375
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), !dbg !2375
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2375
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2376
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2376
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2345
  call void @llvm.dbg.value(metadata i8* %67, metadata !2275, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), metadata !326, metadata !DIExpression()) #35, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %37, metadata !327, metadata !DIExpression()) #35, !dbg !2377
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), i32 noundef 5) #35, !dbg !2379
  call void @llvm.dbg.value(metadata i8* %68, metadata !328, metadata !DIExpression()) #35, !dbg !2377
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), !dbg !2380
  br i1 %69, label %70, label %79, !dbg !2381

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2382
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2383
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !330, metadata !DIExpression()) #35, !dbg !2384
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2356, metadata !DIExpression()) #35, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %26, metadata !2364, metadata !DIExpression()) #35, !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !2367, metadata !DIExpression()) #35, !dbg !2387
  call void @llvm.dbg.value(metadata i64 8, metadata !2368, metadata !DIExpression()) #35, !dbg !2387
  store i64 0, i64* %11, align 8, !dbg !2389
  call void @llvm.dbg.value(metadata i32* %10, metadata !329, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2377
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2390
  %72 = icmp eq i64 %71, 3, !dbg !2391
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !329, metadata !DIExpression()) #35, !dbg !2377
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2392
  %76 = icmp eq i32 %37, 9, !dbg !2392
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), !dbg !2392
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2392
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2393
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2393
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2276, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %80, metadata !2275, metadata !DIExpression()), !dbg !2330
  br i1 %45, label %97, label %82, !dbg !2394

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2287, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 0, metadata !2278, metadata !DIExpression()), !dbg !2330
  %83 = load i8, i8* %80, align 1, !dbg !2396, !tbaa !620
  %84 = icmp eq i8 %83, 0, !dbg !2398
  br i1 %84, label %97, label %85, !dbg !2398

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2287, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %88, metadata !2278, metadata !DIExpression()), !dbg !2330
  %89 = icmp ult i64 %88, %48, !dbg !2399
  br i1 %89, label %90, label %92, !dbg !2402

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2399
  store i8 %86, i8* %91, align 1, !dbg !2399, !tbaa !620
  br label %92, !dbg !2399

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %93, metadata !2278, metadata !DIExpression()), !dbg !2330
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %94, metadata !2287, metadata !DIExpression()), !dbg !2395
  %95 = load i8, i8* %94, align 1, !dbg !2396, !tbaa !620
  %96 = icmp eq i8 %95, 0, !dbg !2398
  br i1 %96, label %97, label %85, !dbg !2398, !llvm.loop !2404

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2406
  call void @llvm.dbg.value(metadata i64 %98, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 1, metadata !2282, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %81, metadata !2280, metadata !DIExpression()), !dbg !2330
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %99, metadata !2281, metadata !DIExpression()), !dbg !2330
  br label %111, !dbg !2408

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2282, metadata !DIExpression()), !dbg !2330
  br label %102, !dbg !2409

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2283, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2330
  br i1 %45, label %102, label %105, !dbg !2410

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2283, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 2, metadata !2272, metadata !DIExpression()), !dbg !2330
  br label %111, !dbg !2411

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2283, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 2, metadata !2272, metadata !DIExpression()), !dbg !2330
  br i1 %45, label %111, label %105, !dbg !2411

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2412
  br i1 %107, label %111, label %108, !dbg !2416

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2412, !tbaa !620
  br label %111, !dbg !2412

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2283, metadata !DIExpression()), !dbg !2330
  br label %111, !dbg !2417

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2418
  unreachable, !dbg !2418

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2406
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.108, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %102 ], !dbg !2330
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2330
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2283, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %117, metadata !2281, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %116, metadata !2280, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %115, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %114, metadata !2276, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %113, metadata !2275, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %112, metadata !2272, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 0, metadata !2292, metadata !DIExpression()), !dbg !2419
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
  br label %132, !dbg !2420

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2406
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2334
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2419
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %139, metadata !2292, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2285, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %135, metadata !2279, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %134, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %133, metadata !2271, metadata !DIExpression()), !dbg !2330
  %141 = icmp eq i64 %133, -1, !dbg !2421
  br i1 %141, label %142, label %146, !dbg !2422

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2423
  %144 = load i8, i8* %143, align 1, !dbg !2423, !tbaa !620
  %145 = icmp eq i8 %144, 0, !dbg !2424
  br i1 %145, label %596, label %148, !dbg !2425

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2426
  br i1 %147, label %596, label %148, !dbg !2425

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2294, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 0, metadata !2297, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 0, metadata !2298, metadata !DIExpression()), !dbg !2427
  br i1 %123, label %149, label %163, !dbg !2428

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2430
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2431
  br i1 %151, label %152, label %154, !dbg !2431

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %153, metadata !2271, metadata !DIExpression()), !dbg !2330
  br label %154, !dbg !2433

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2433
  call void @llvm.dbg.value(metadata i64 %155, metadata !2271, metadata !DIExpression()), !dbg !2330
  %156 = icmp ugt i64 %150, %155, !dbg !2434
  br i1 %156, label %163, label %157, !dbg !2435

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %158, metadata !2437, metadata !DIExpression()) #35, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %116, metadata !2440, metadata !DIExpression()) #35, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %117, metadata !2441, metadata !DIExpression()) #35, !dbg !2442
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2444
  %160 = icmp ne i32 %159, 0, !dbg !2445
  %161 = or i1 %160, %125, !dbg !2446
  %162 = xor i1 %160, true, !dbg !2446
  br i1 %161, label %163, label %647, !dbg !2446

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %164, metadata !2271, metadata !DIExpression()), !dbg !2330
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2447
  %167 = load i8, i8* %166, align 1, !dbg !2447, !tbaa !620
  call void @llvm.dbg.value(metadata i8 %167, metadata !2299, metadata !DIExpression()), !dbg !2427
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
  ], !dbg !2448

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2449

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2450

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2297, metadata !DIExpression()), !dbg !2427
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2454
  br i1 %171, label %188, label %172, !dbg !2454

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2456
  br i1 %173, label %174, label %176, !dbg !2460

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2456
  store i8 39, i8* %175, align 1, !dbg !2456, !tbaa !620
  br label %176, !dbg !2456

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %177, metadata !2278, metadata !DIExpression()), !dbg !2330
  %178 = icmp ult i64 %177, %140, !dbg !2461
  br i1 %178, label %179, label %181, !dbg !2464

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2461
  store i8 36, i8* %180, align 1, !dbg !2461, !tbaa !620
  br label %181, !dbg !2461

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %182, metadata !2278, metadata !DIExpression()), !dbg !2330
  %183 = icmp ult i64 %182, %140, !dbg !2465
  br i1 %183, label %184, label %186, !dbg !2468

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2465
  store i8 39, i8* %185, align 1, !dbg !2465, !tbaa !620
  br label %186, !dbg !2465

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %187, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 1, metadata !2286, metadata !DIExpression()), !dbg !2330
  br label %188, !dbg !2469

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2330
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %189, metadata !2278, metadata !DIExpression()), !dbg !2330
  %191 = icmp ult i64 %189, %140, !dbg !2470
  br i1 %191, label %192, label %194, !dbg !2473

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2470
  store i8 92, i8* %193, align 1, !dbg !2470, !tbaa !620
  br label %194, !dbg !2470

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %195, metadata !2278, metadata !DIExpression()), !dbg !2330
  br i1 %120, label %196, label %499, !dbg !2474

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2476
  %198 = icmp ult i64 %197, %164, !dbg !2477
  br i1 %198, label %199, label %456, !dbg !2478

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2479
  %201 = load i8, i8* %200, align 1, !dbg !2479, !tbaa !620
  %202 = add i8 %201, -48, !dbg !2480
  %203 = icmp ult i8 %202, 10, !dbg !2480
  br i1 %203, label %204, label %456, !dbg !2480

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2481
  br i1 %205, label %206, label %208, !dbg !2485

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2481
  store i8 48, i8* %207, align 1, !dbg !2481, !tbaa !620
  br label %208, !dbg !2481

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %209, metadata !2278, metadata !DIExpression()), !dbg !2330
  %210 = icmp ult i64 %209, %140, !dbg !2486
  br i1 %210, label %211, label %213, !dbg !2489

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2486
  store i8 48, i8* %212, align 1, !dbg !2486, !tbaa !620
  br label %213, !dbg !2486

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %214, metadata !2278, metadata !DIExpression()), !dbg !2330
  br label %456, !dbg !2490

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2491

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2492

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2493

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2495

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2497
  %221 = icmp ult i64 %220, %164, !dbg !2498
  br i1 %221, label %222, label %456, !dbg !2499

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2500
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2501
  %225 = load i8, i8* %224, align 1, !dbg !2501, !tbaa !620
  %226 = icmp eq i8 %225, 63, !dbg !2502
  br i1 %226, label %227, label %456, !dbg !2503

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2504
  %229 = load i8, i8* %228, align 1, !dbg !2504, !tbaa !620
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
  ], !dbg !2505

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2506

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2299, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %220, metadata !2292, metadata !DIExpression()), !dbg !2419
  %232 = icmp ult i64 %134, %140, !dbg !2508
  br i1 %232, label %233, label %235, !dbg !2511

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2508
  store i8 63, i8* %234, align 1, !dbg !2508, !tbaa !620
  br label %235, !dbg !2508

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %236, metadata !2278, metadata !DIExpression()), !dbg !2330
  %237 = icmp ult i64 %236, %140, !dbg !2512
  br i1 %237, label %238, label %240, !dbg !2515

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2512
  store i8 34, i8* %239, align 1, !dbg !2512, !tbaa !620
  br label %240, !dbg !2512

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %241, metadata !2278, metadata !DIExpression()), !dbg !2330
  %242 = icmp ult i64 %241, %140, !dbg !2516
  br i1 %242, label %243, label %245, !dbg !2519

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2516
  store i8 34, i8* %244, align 1, !dbg !2516, !tbaa !620
  br label %245, !dbg !2516

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %246, metadata !2278, metadata !DIExpression()), !dbg !2330
  %247 = icmp ult i64 %246, %140, !dbg !2520
  br i1 %247, label %248, label %250, !dbg !2523

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2520
  store i8 63, i8* %249, align 1, !dbg !2520, !tbaa !620
  br label %250, !dbg !2520

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %251, metadata !2278, metadata !DIExpression()), !dbg !2330
  br label %456, !dbg !2524

252:                                              ; preds = %163
  br label %263, !dbg !2525

253:                                              ; preds = %163
  br label %263, !dbg !2526

254:                                              ; preds = %163
  br label %261, !dbg !2527

255:                                              ; preds = %163
  br label %261, !dbg !2528

256:                                              ; preds = %163
  br label %263, !dbg !2529

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2530

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2531

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2534

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2536

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2537
  call void @llvm.dbg.label(metadata !2324), !dbg !2538
  br i1 %128, label %263, label %638, !dbg !2539

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2537
  call void @llvm.dbg.label(metadata !2326), !dbg !2541
  br i1 %118, label %510, label %467, !dbg !2542

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2543

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2544, !tbaa !620
  %268 = icmp eq i8 %267, 0, !dbg !2546
  br i1 %268, label %269, label %456, !dbg !2547

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2548
  br i1 %270, label %271, label %456, !dbg !2550

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2298, metadata !DIExpression()), !dbg !2427
  br label %272, !dbg !2551

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2298, metadata !DIExpression()), !dbg !2427
  br i1 %126, label %274, label %456, !dbg !2552

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2554

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 1, metadata !2298, metadata !DIExpression()), !dbg !2427
  br i1 %126, label %276, label %456, !dbg !2555

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2556

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2559
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2561
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2561
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %282, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %281, metadata !2279, metadata !DIExpression()), !dbg !2330
  %283 = icmp ult i64 %134, %282, !dbg !2562
  br i1 %283, label %284, label %286, !dbg !2565

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2562
  store i8 39, i8* %285, align 1, !dbg !2562, !tbaa !620
  br label %286, !dbg !2562

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %287, metadata !2278, metadata !DIExpression()), !dbg !2330
  %288 = icmp ult i64 %287, %282, !dbg !2566
  br i1 %288, label %289, label %291, !dbg !2569

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2566
  store i8 92, i8* %290, align 1, !dbg !2566, !tbaa !620
  br label %291, !dbg !2566

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %292, metadata !2278, metadata !DIExpression()), !dbg !2330
  %293 = icmp ult i64 %292, %282, !dbg !2570
  br i1 %293, label %294, label %296, !dbg !2573

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2570
  store i8 39, i8* %295, align 1, !dbg !2570, !tbaa !620
  br label %296, !dbg !2570

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %297, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2330
  br label %456, !dbg !2574

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2575

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2300, metadata !DIExpression()), !dbg !2576
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2577
  %301 = load i16*, i16** %300, align 8, !dbg !2577, !tbaa !513
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2577
  %304 = load i16, i16* %303, align 2, !dbg !2577, !tbaa !645
  %305 = and i16 %304, 16384, !dbg !2577
  %306 = icmp ne i16 %305, 0, !dbg !2579
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %349, metadata !2300, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %312, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i1 %350, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2427
  br label %352, !dbg !2580

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2581
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2304, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2356, metadata !DIExpression()) #35, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %32, metadata !2364, metadata !DIExpression()) #35, !dbg !2585
  call void @llvm.dbg.value(metadata i32 0, metadata !2367, metadata !DIExpression()) #35, !dbg !2585
  call void @llvm.dbg.value(metadata i64 8, metadata !2368, metadata !DIExpression()) #35, !dbg !2585
  store i64 0, i64* %14, align 8, !dbg !2587
  call void @llvm.dbg.value(metadata i64 0, metadata !2300, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 1, metadata !2303, metadata !DIExpression()), !dbg !2576
  %308 = icmp eq i64 %164, -1, !dbg !2588
  br i1 %308, label %309, label %311, !dbg !2590

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %310, metadata !2271, metadata !DIExpression()), !dbg !2330
  br label %311, !dbg !2592

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2427
  call void @llvm.dbg.value(metadata i64 %312, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2593
  %313 = sub i64 %312, %139, !dbg !2594
  call void @llvm.dbg.value(metadata i32* %16, metadata !2307, metadata !DIExpression(DW_OP_deref)), !dbg !2595
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %314, metadata !2311, metadata !DIExpression()), !dbg !2595
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2597

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2300, metadata !DIExpression()), !dbg !2576
  %316 = icmp ugt i64 %312, %139, !dbg !2598
  br i1 %316, label %319, label %317, !dbg !2600

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 0, metadata !2300, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %349, metadata !2300, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %312, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i1 %350, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2427
  br label %352, !dbg !2580

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2303, metadata !DIExpression()), !dbg !2576
  br label %346, !dbg !2603

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2300, metadata !DIExpression()), !dbg !2576
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2605
  %323 = load i8, i8* %322, align 1, !dbg !2605, !tbaa !620
  %324 = icmp eq i8 %323, 0, !dbg !2600
  br i1 %324, label %348, label %325, !dbg !2606

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %326, metadata !2300, metadata !DIExpression()), !dbg !2576
  %327 = add i64 %326, %139, !dbg !2608
  %328 = icmp eq i64 %326, %313, !dbg !2598
  br i1 %328, label %348, label %319, !dbg !2600, !llvm.loop !2609

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2610
  call void @llvm.dbg.value(metadata i64 1, metadata !2312, metadata !DIExpression()), !dbg !2611
  br i1 %331, label %332, label %340, !dbg !2610

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2312, metadata !DIExpression()), !dbg !2611
  %334 = add i64 %333, %139, !dbg !2612
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2614
  %336 = load i8, i8* %335, align 1, !dbg !2614, !tbaa !620
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2615

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %338, metadata !2312, metadata !DIExpression()), !dbg !2611
  %339 = icmp eq i64 %338, %314, !dbg !2617
  br i1 %339, label %340, label %332, !dbg !2618, !llvm.loop !2619

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2621, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %341, metadata !2307, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 %341, metadata !2623, metadata !DIExpression()) #35, !dbg !2631
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2633
  %343 = icmp ne i32 %342, 0, !dbg !2634
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %314, metadata !2300, metadata !DIExpression()), !dbg !2576
  br label %348, !dbg !2635

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 0, metadata !2300, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2602
  call void @llvm.dbg.label(metadata !2329), !dbg !2636
  %345 = select i1 %118, i32 4, i32 2, !dbg !2637
  br label %643, !dbg !2637

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 0, metadata !2300, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %349, metadata !2300, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %312, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i1 %350, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2427
  br label %352, !dbg !2580

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2303, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 0, metadata !2300, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %349, metadata !2300, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %312, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i1 %350, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2427
  %351 = icmp ugt i64 %349, 1, !dbg !2639
  br i1 %351, label %357, label %352, !dbg !2580

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2640
  br i1 %356, label %456, label %357, !dbg !2640

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %361, metadata !2320, metadata !DIExpression()), !dbg !2642
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2643

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2330
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2419
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2644
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2427
  call void @llvm.dbg.value(metadata i8 %369, metadata !2299, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 %368, metadata !2297, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %366, metadata !2292, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %364, metadata !2278, metadata !DIExpression()), !dbg !2330
  br i1 %362, label %414, label %370, !dbg !2645

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2650

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2297, metadata !DIExpression()), !dbg !2427
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2653
  br i1 %372, label %389, label %373, !dbg !2653

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2655
  br i1 %374, label %375, label %377, !dbg !2659

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2655
  store i8 39, i8* %376, align 1, !dbg !2655, !tbaa !620
  br label %377, !dbg !2655

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %378, metadata !2278, metadata !DIExpression()), !dbg !2330
  %379 = icmp ult i64 %378, %140, !dbg !2660
  br i1 %379, label %380, label %382, !dbg !2663

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2660
  store i8 36, i8* %381, align 1, !dbg !2660, !tbaa !620
  br label %382, !dbg !2660

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %383, metadata !2278, metadata !DIExpression()), !dbg !2330
  %384 = icmp ult i64 %383, %140, !dbg !2664
  br i1 %384, label %385, label %387, !dbg !2667

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2664
  store i8 39, i8* %386, align 1, !dbg !2664, !tbaa !620
  br label %387, !dbg !2664

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %388, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 1, metadata !2286, metadata !DIExpression()), !dbg !2330
  br label %389, !dbg !2668

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2330
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %390, metadata !2278, metadata !DIExpression()), !dbg !2330
  %392 = icmp ult i64 %390, %140, !dbg !2669
  br i1 %392, label %393, label %395, !dbg !2672

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2669
  store i8 92, i8* %394, align 1, !dbg !2669, !tbaa !620
  br label %395, !dbg !2669

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2672
  call void @llvm.dbg.value(metadata i64 %396, metadata !2278, metadata !DIExpression()), !dbg !2330
  %397 = icmp ult i64 %396, %140, !dbg !2673
  br i1 %397, label %398, label %402, !dbg !2676

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2673
  %400 = or i8 %399, 48, !dbg !2673
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2673
  store i8 %400, i8* %401, align 1, !dbg !2673, !tbaa !620
  br label %402, !dbg !2673

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %403, metadata !2278, metadata !DIExpression()), !dbg !2330
  %404 = icmp ult i64 %403, %140, !dbg !2677
  br i1 %404, label %405, label %410, !dbg !2680

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2677
  %407 = and i8 %406, 7, !dbg !2677
  %408 = or i8 %407, 48, !dbg !2677
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2677
  store i8 %408, i8* %409, align 1, !dbg !2677, !tbaa !620
  br label %410, !dbg !2677

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %411, metadata !2278, metadata !DIExpression()), !dbg !2330
  %412 = and i8 %369, 7, !dbg !2681
  %413 = or i8 %412, 48, !dbg !2682
  call void @llvm.dbg.value(metadata i8 %413, metadata !2299, metadata !DIExpression()), !dbg !2427
  br label %421, !dbg !2683

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2684

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2685
  br i1 %416, label %417, label %419, !dbg !2690

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2685
  store i8 92, i8* %418, align 1, !dbg !2685, !tbaa !620
  br label %419, !dbg !2685

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %420, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2294, metadata !DIExpression()), !dbg !2427
  br label %421, !dbg !2691

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2330
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2427
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2427
  call void @llvm.dbg.value(metadata i8 %426, metadata !2299, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 %425, metadata !2297, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %422, metadata !2278, metadata !DIExpression()), !dbg !2330
  %427 = add i64 %366, 1, !dbg !2692
  %428 = icmp ugt i64 %361, %427, !dbg !2694
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2695

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2696
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2696
  br i1 %432, label %433, label %444, !dbg !2696

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2699
  br i1 %434, label %435, label %437, !dbg !2703

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2699
  store i8 39, i8* %436, align 1, !dbg !2699, !tbaa !620
  br label %437, !dbg !2699

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %438, metadata !2278, metadata !DIExpression()), !dbg !2330
  %439 = icmp ult i64 %438, %140, !dbg !2704
  br i1 %439, label %440, label %442, !dbg !2707

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2704
  store i8 39, i8* %441, align 1, !dbg !2704, !tbaa !620
  br label %442, !dbg !2704

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2707
  call void @llvm.dbg.value(metadata i64 %443, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2330
  br label %444, !dbg !2708

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2709
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %445, metadata !2278, metadata !DIExpression()), !dbg !2330
  %447 = icmp ult i64 %445, %140, !dbg !2710
  br i1 %447, label %448, label %450, !dbg !2713

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2710
  store i8 %426, i8* %449, align 1, !dbg !2710, !tbaa !620
  br label %450, !dbg !2710

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %451, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %427, metadata !2292, metadata !DIExpression()), !dbg !2419
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2714
  %453 = load i8, i8* %452, align 1, !dbg !2714, !tbaa !620
  call void @llvm.dbg.value(metadata i8 %453, metadata !2299, metadata !DIExpression()), !dbg !2427
  br label %363, !dbg !2715, !llvm.loop !2716

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2299, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i1 %358, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2427
  call void @llvm.dbg.value(metadata i8 %425, metadata !2297, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %366, metadata !2292, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %422, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %360, metadata !2271, metadata !DIExpression()), !dbg !2330
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2719
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2330
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2334
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2419
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2427
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 %465, metadata !2299, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2298, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2297, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %462, metadata !2292, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %459, metadata !2279, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %458, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %457, metadata !2271, metadata !DIExpression()), !dbg !2330
  br i1 %121, label %478, label %467, !dbg !2720

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
  br i1 %131, label %479, label %499, !dbg !2722

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2723

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
  %490 = lshr i8 %481, 5, !dbg !2724
  %491 = zext i8 %490 to i64, !dbg !2724
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2725
  %493 = load i32, i32* %492, align 4, !dbg !2725, !tbaa !611
  %494 = and i8 %481, 31, !dbg !2726
  %495 = zext i8 %494 to i32, !dbg !2726
  %496 = shl nuw i32 1, %495, !dbg !2727
  %497 = and i32 %493, %496, !dbg !2727
  %498 = icmp eq i32 %497, 0, !dbg !2727
  br i1 %498, label %499, label %510, !dbg !2728

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
  br i1 %165, label %510, label %546, !dbg !2729

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2719
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2330
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2334
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2730
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2427
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 %518, metadata !2299, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2298, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %516, metadata !2292, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %513, metadata !2279, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %512, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %511, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.label(metadata !2327), !dbg !2731
  br i1 %119, label %638, label %520, !dbg !2732

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2297, metadata !DIExpression()), !dbg !2427
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2734
  br i1 %521, label %538, label %522, !dbg !2734

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2736
  br i1 %523, label %524, label %526, !dbg !2740

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2736
  store i8 39, i8* %525, align 1, !dbg !2736, !tbaa !620
  br label %526, !dbg !2736

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2740
  call void @llvm.dbg.value(metadata i64 %527, metadata !2278, metadata !DIExpression()), !dbg !2330
  %528 = icmp ult i64 %527, %519, !dbg !2741
  br i1 %528, label %529, label %531, !dbg !2744

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2741
  store i8 36, i8* %530, align 1, !dbg !2741, !tbaa !620
  br label %531, !dbg !2741

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %532, metadata !2278, metadata !DIExpression()), !dbg !2330
  %533 = icmp ult i64 %532, %519, !dbg !2745
  br i1 %533, label %534, label %536, !dbg !2748

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2745
  store i8 39, i8* %535, align 1, !dbg !2745, !tbaa !620
  br label %536, !dbg !2745

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %537, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 1, metadata !2286, metadata !DIExpression()), !dbg !2330
  br label %538, !dbg !2749

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2427
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %539, metadata !2278, metadata !DIExpression()), !dbg !2330
  %541 = icmp ult i64 %539, %519, !dbg !2750
  br i1 %541, label %542, label %544, !dbg !2753

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2750
  store i8 92, i8* %543, align 1, !dbg !2750, !tbaa !620
  br label %544, !dbg !2750

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %556, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 %555, metadata !2299, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2298, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2297, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %552, metadata !2292, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %549, metadata !2279, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %548, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %547, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.label(metadata !2328), !dbg !2754
  br label %570, !dbg !2755

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2719
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2330
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2334
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2730
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2758
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 %555, metadata !2299, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2298, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2297, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %552, metadata !2292, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %549, metadata !2279, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %548, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %547, metadata !2271, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.label(metadata !2328), !dbg !2754
  %557 = xor i1 %551, true, !dbg !2755
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2755
  br i1 %558, label %570, label %559, !dbg !2755

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2759
  br i1 %560, label %561, label %563, !dbg !2763

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2759
  store i8 39, i8* %562, align 1, !dbg !2759, !tbaa !620
  br label %563, !dbg !2759

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2763
  call void @llvm.dbg.value(metadata i64 %564, metadata !2278, metadata !DIExpression()), !dbg !2330
  %565 = icmp ult i64 %564, %556, !dbg !2764
  br i1 %565, label %566, label %568, !dbg !2767

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2764
  store i8 39, i8* %567, align 1, !dbg !2764, !tbaa !620
  br label %568, !dbg !2764

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2767
  call void @llvm.dbg.value(metadata i64 %569, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2330
  br label %570, !dbg !2768

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2427
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %578, metadata !2278, metadata !DIExpression()), !dbg !2330
  %580 = icmp ult i64 %578, %571, !dbg !2769
  br i1 %580, label %581, label %583, !dbg !2772

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2769
  store i8 %572, i8* %582, align 1, !dbg !2769, !tbaa !620
  br label %583, !dbg !2769

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %584, metadata !2278, metadata !DIExpression()), !dbg !2330
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2773
  call void @llvm.dbg.value(metadata i8 poison, metadata !2285, metadata !DIExpression()), !dbg !2330
  br label %586, !dbg !2774

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2719
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2330
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2334
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2730
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %593, metadata !2292, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 poison, metadata !2286, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2285, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %589, metadata !2279, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %588, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %587, metadata !2271, metadata !DIExpression()), !dbg !2330
  %595 = add i64 %593, 1, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %595, metadata !2292, metadata !DIExpression()), !dbg !2419
  br label %132, !dbg !2776, !llvm.loop !2777

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2269, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2285, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 poison, metadata !2284, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 undef, metadata !2279, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 undef, metadata !2278, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 undef, metadata !2271, metadata !DIExpression()), !dbg !2330
  %597 = icmp eq i64 %134, 0, !dbg !2779
  %598 = and i1 %126, %597, !dbg !2781
  %599 = and i1 %598, %119, !dbg !2781
  br i1 %599, label %638, label %600, !dbg !2781

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2782
  %602 = or i1 %119, %601, !dbg !2782
  %603 = xor i1 %136, true, !dbg !2782
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2782
  br i1 %604, label %612, label %605, !dbg !2782

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2784

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2786
  br label %653, !dbg !2788

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2789
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2791
  br i1 %611, label %36, label %612, !dbg !2791

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2792
  %615 = or i1 %614, %613, !dbg !2794
  br i1 %615, label %631, label %616, !dbg !2794

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2280, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %134, metadata !2278, metadata !DIExpression()), !dbg !2330
  %617 = load i8, i8* %116, align 1, !dbg !2795, !tbaa !620
  %618 = icmp eq i8 %617, 0, !dbg !2798
  br i1 %618, label %631, label %619, !dbg !2798

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2280, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i64 %622, metadata !2278, metadata !DIExpression()), !dbg !2330
  %623 = icmp ult i64 %622, %140, !dbg !2799
  br i1 %623, label %624, label %626, !dbg !2802

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2799
  store i8 %620, i8* %625, align 1, !dbg !2799, !tbaa !620
  br label %626, !dbg !2799

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %627, metadata !2278, metadata !DIExpression()), !dbg !2330
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %628, metadata !2280, metadata !DIExpression()), !dbg !2330
  %629 = load i8, i8* %628, align 1, !dbg !2795, !tbaa !620
  %630 = icmp eq i8 %629, 0, !dbg !2798
  br i1 %630, label %631, label %619, !dbg !2798, !llvm.loop !2804

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2406
  call void @llvm.dbg.value(metadata i64 %632, metadata !2278, metadata !DIExpression()), !dbg !2330
  %633 = icmp ult i64 %632, %140, !dbg !2806
  br i1 %633, label %634, label %653, !dbg !2808

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2809
  store i8 0, i8* %635, align 1, !dbg !2810, !tbaa !620
  br label %653, !dbg !2809

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2329), !dbg !2636
  %637 = icmp eq i32 %112, 2, !dbg !2811
  br i1 %637, label %643, label %647, !dbg !2637

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2329), !dbg !2636
  %641 = icmp eq i32 %112, 2, !dbg !2811
  %642 = select i1 %118, i32 4, i32 2, !dbg !2637
  br i1 %641, label %643, label %647, !dbg !2637

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2637

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2272, metadata !DIExpression()), !dbg !2330
  %651 = and i32 %5, -3, !dbg !2812
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2813
  br label %653, !dbg !2814

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2815
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2816 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2818 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %1, metadata !2823, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2824, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8* %0, metadata !2826, metadata !DIExpression()) #35, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()) #35, !dbg !2839
  call void @llvm.dbg.value(metadata i64* null, metadata !2832, metadata !DIExpression()) #35, !dbg !2839
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2833, metadata !DIExpression()) #35, !dbg !2839
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2841
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2841
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2834, metadata !DIExpression()) #35, !dbg !2839
  %6 = tail call i32* @__errno_location() #38, !dbg !2842
  %7 = load i32, i32* %6, align 4, !dbg !2842, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %7, metadata !2835, metadata !DIExpression()) #35, !dbg !2839
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2843
  %9 = load i32, i32* %8, align 4, !dbg !2843, !tbaa !2212
  %10 = or i32 %9, 1, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %10, metadata !2836, metadata !DIExpression()) #35, !dbg !2839
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2845
  %12 = load i32, i32* %11, align 8, !dbg !2845, !tbaa !2161
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2846
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2847
  %15 = load i8*, i8** %14, align 8, !dbg !2847, !tbaa !2234
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2848
  %17 = load i8*, i8** %16, align 8, !dbg !2848, !tbaa !2237
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2849
  %19 = add i64 %18, 1, !dbg !2850
  call void @llvm.dbg.value(metadata i64 %19, metadata !2837, metadata !DIExpression()) #35, !dbg !2839
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42, !dbg !2851
  call void @llvm.dbg.value(metadata i8* %20, metadata !2838, metadata !DIExpression()) #35, !dbg !2839
  %21 = load i32, i32* %11, align 8, !dbg !2852, !tbaa !2161
  %22 = load i8*, i8** %14, align 8, !dbg !2853, !tbaa !2234
  %23 = load i8*, i8** %16, align 8, !dbg !2854, !tbaa !2237
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2855
  store i32 %7, i32* %6, align 4, !dbg !2856, !tbaa !611
  ret i8* %20, !dbg !2857
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2827 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2826, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64* %2, metadata !2832, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2833, metadata !DIExpression()), !dbg !2858
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2859
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2834, metadata !DIExpression()), !dbg !2858
  %7 = tail call i32* @__errno_location() #38, !dbg !2860
  %8 = load i32, i32* %7, align 4, !dbg !2860, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %8, metadata !2835, metadata !DIExpression()), !dbg !2858
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2861
  %10 = load i32, i32* %9, align 4, !dbg !2861, !tbaa !2212
  %11 = icmp eq i64* %2, null, !dbg !2862
  %12 = zext i1 %11 to i32, !dbg !2862
  %13 = or i32 %10, %12, !dbg !2863
  call void @llvm.dbg.value(metadata i32 %13, metadata !2836, metadata !DIExpression()), !dbg !2858
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2864
  %15 = load i32, i32* %14, align 8, !dbg !2864, !tbaa !2161
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2865
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2866
  %18 = load i8*, i8** %17, align 8, !dbg !2866, !tbaa !2234
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2867
  %20 = load i8*, i8** %19, align 8, !dbg !2867, !tbaa !2237
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2868
  %22 = add i64 %21, 1, !dbg !2869
  call void @llvm.dbg.value(metadata i64 %22, metadata !2837, metadata !DIExpression()), !dbg !2858
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %23, metadata !2838, metadata !DIExpression()), !dbg !2858
  %24 = load i32, i32* %14, align 8, !dbg !2871, !tbaa !2161
  %25 = load i8*, i8** %17, align 8, !dbg !2872, !tbaa !2234
  %26 = load i8*, i8** %19, align 8, !dbg !2873, !tbaa !2237
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2874
  store i32 %8, i32* %7, align 4, !dbg !2875, !tbaa !611
  br i1 %11, label %29, label %28, !dbg !2876

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2877, !tbaa !767
  br label %29, !dbg !2879

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2881 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2886, !tbaa !513
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2883, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !2888
  %2 = load i32, i32* @nslots, align 4, !tbaa !611
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !2888
  %3 = icmp sgt i32 %2, 1, !dbg !2889
  br i1 %3, label %4, label %6, !dbg !2891

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2889
  br label %10, !dbg !2891

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2892
  %8 = load i8*, i8** %7, align 8, !dbg !2892, !tbaa !2894
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2896
  br i1 %9, label %17, label %16, !dbg !2897

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2884, metadata !DIExpression()), !dbg !2888
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2898
  %13 = load i8*, i8** %12, align 8, !dbg !2898, !tbaa !2894
  tail call void @free(i8* noundef %13) #35, !dbg !2899
  %14 = add nuw nsw i64 %11, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %14, metadata !2884, metadata !DIExpression()), !dbg !2888
  %15 = icmp eq i64 %14, %5, !dbg !2889
  br i1 %15, label %6, label %10, !dbg !2891, !llvm.loop !2901

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2903
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2905, !tbaa !2906
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2907, !tbaa !2894
  br label %17, !dbg !2908

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2909
  br i1 %18, label %21, label %19, !dbg !2911

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2912
  tail call void @free(i8* noundef %20) #35, !dbg !2914
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2915, !tbaa !513
  br label %21, !dbg !2916

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2917, !tbaa !611
  ret void, !dbg !2918
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2921, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8* %1, metadata !2922, metadata !DIExpression()), !dbg !2923
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2924
  ret i8* %3, !dbg !2925
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2926 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2930, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8* %1, metadata !2931, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 %2, metadata !2932, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2933, metadata !DIExpression()), !dbg !2946
  %6 = tail call i32* @__errno_location() #38, !dbg !2947
  %7 = load i32, i32* %6, align 4, !dbg !2947, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %7, metadata !2934, metadata !DIExpression()), !dbg !2946
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2948, !tbaa !513
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2935, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2936, metadata !DIExpression()), !dbg !2946
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2949
  br i1 %9, label %10, label %11, !dbg !2949

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2951
  unreachable, !dbg !2951

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2952, !tbaa !611
  %13 = icmp sgt i32 %12, %0, !dbg !2953
  br i1 %13, label %36, label %14, !dbg !2954

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2955
  call void @llvm.dbg.value(metadata i1 %15, metadata !2937, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2956
  %16 = bitcast i64* %5 to i8*, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2957
  %17 = sext i32 %12 to i64, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %17, metadata !2940, metadata !DIExpression()), !dbg !2956
  store i64 %17, i64* %5, align 8, !dbg !2959, !tbaa !767
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2960
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2960
  %20 = add nuw nsw i32 %0, 1, !dbg !2961
  %21 = sub i32 %20, %12, !dbg !2962
  %22 = sext i32 %21 to i64, !dbg !2963
  call void @llvm.dbg.value(metadata i64* %5, metadata !2940, metadata !DIExpression(DW_OP_deref)), !dbg !2956
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2964
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2964
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2935, metadata !DIExpression()), !dbg !2946
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2965, !tbaa !513
  br i1 %15, label %25, label %26, !dbg !2966

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2967, !tbaa.struct !2969
  br label %26, !dbg !2970

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2971, !tbaa !611
  %28 = sext i32 %27 to i64, !dbg !2972
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2972
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2973
  %31 = load i64, i64* %5, align 8, !dbg !2974, !tbaa !767
  call void @llvm.dbg.value(metadata i64 %31, metadata !2940, metadata !DIExpression()), !dbg !2956
  %32 = sub nsw i64 %31, %28, !dbg !2975
  %33 = shl i64 %32, 4, !dbg !2976
  call void @llvm.dbg.value(metadata i8* %30, metadata !2364, metadata !DIExpression()) #35, !dbg !2977
  call void @llvm.dbg.value(metadata i32 0, metadata !2367, metadata !DIExpression()) #35, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %33, metadata !2368, metadata !DIExpression()) #35, !dbg !2977
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2979
  %34 = load i64, i64* %5, align 8, !dbg !2980, !tbaa !767
  call void @llvm.dbg.value(metadata i64 %34, metadata !2940, metadata !DIExpression()), !dbg !2956
  %35 = trunc i64 %34 to i32, !dbg !2980
  store i32 %35, i32* @nslots, align 4, !dbg !2981, !tbaa !611
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2982
  br label %36, !dbg !2983

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2946
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2935, metadata !DIExpression()), !dbg !2946
  %38 = zext i32 %0 to i64, !dbg !2984
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2985
  %40 = load i64, i64* %39, align 8, !dbg !2985, !tbaa !2906
  call void @llvm.dbg.value(metadata i64 %40, metadata !2941, metadata !DIExpression()), !dbg !2986
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2987
  %42 = load i8*, i8** %41, align 8, !dbg !2987, !tbaa !2894
  call void @llvm.dbg.value(metadata i8* %42, metadata !2943, metadata !DIExpression()), !dbg !2986
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2988
  %44 = load i32, i32* %43, align 4, !dbg !2988, !tbaa !2212
  %45 = or i32 %44, 1, !dbg !2989
  call void @llvm.dbg.value(metadata i32 %45, metadata !2944, metadata !DIExpression()), !dbg !2986
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2990
  %47 = load i32, i32* %46, align 8, !dbg !2990, !tbaa !2161
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2991
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2992
  %50 = load i8*, i8** %49, align 8, !dbg !2992, !tbaa !2234
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2993
  %52 = load i8*, i8** %51, align 8, !dbg !2993, !tbaa !2237
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2994
  call void @llvm.dbg.value(metadata i64 %53, metadata !2945, metadata !DIExpression()), !dbg !2986
  %54 = icmp ugt i64 %40, %53, !dbg !2995
  br i1 %54, label %65, label %55, !dbg !2997

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %56, metadata !2941, metadata !DIExpression()), !dbg !2986
  store i64 %56, i64* %39, align 8, !dbg !3000, !tbaa !2906
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3001
  br i1 %57, label %59, label %58, !dbg !3003

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !3004
  br label %59, !dbg !3004

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %60, metadata !2943, metadata !DIExpression()), !dbg !2986
  store i8* %60, i8** %41, align 8, !dbg !3006, !tbaa !2894
  %61 = load i32, i32* %46, align 8, !dbg !3007, !tbaa !2161
  %62 = load i8*, i8** %49, align 8, !dbg !3008, !tbaa !2234
  %63 = load i8*, i8** %51, align 8, !dbg !3009, !tbaa !2237
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3010
  br label %65, !dbg !3011

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2986
  call void @llvm.dbg.value(metadata i8* %66, metadata !2943, metadata !DIExpression()), !dbg !2986
  store i32 %7, i32* %6, align 4, !dbg !3012, !tbaa !611
  ret i8* %66, !dbg !3013
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* %1, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %2, metadata !3020, metadata !DIExpression()), !dbg !3021
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3022
  ret i8* %4, !dbg !3023
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3024 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 0, metadata !2921, metadata !DIExpression()) #35, !dbg !3028
  call void @llvm.dbg.value(metadata i8* %0, metadata !2922, metadata !DIExpression()) #35, !dbg !3028
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3030
  ret i8* %2, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3032 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 0, metadata !3018, metadata !DIExpression()) #35, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %0, metadata !3019, metadata !DIExpression()) #35, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()) #35, !dbg !3039
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3041
  ret i8* %3, !dbg !3042
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3043 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3047, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 %1, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8* %2, metadata !3049, metadata !DIExpression()), !dbg !3051
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3052
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3052
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3050, metadata !DIExpression()), !dbg !3053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054), !dbg !3057
  call void @llvm.dbg.value(metadata i32 %1, metadata !3058, metadata !DIExpression()) #35, !dbg !3064
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3063, metadata !DIExpression()) #35, !dbg !3066
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3066, !alias.scope !3054
  %6 = icmp eq i32 %1, 10, !dbg !3067
  br i1 %6, label %7, label %8, !dbg !3069

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3070, !noalias !3054
  unreachable, !dbg !3070

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3071
  store i32 %1, i32* %9, align 8, !dbg !3072, !tbaa !2161, !alias.scope !3054
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3073
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3074
  ret i8* %10, !dbg !3075
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3076 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3080, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 %1, metadata !3081, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8* %2, metadata !3082, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %3, metadata !3083, metadata !DIExpression()), !dbg !3085
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3086
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3086
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3084, metadata !DIExpression()), !dbg !3087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3088), !dbg !3091
  call void @llvm.dbg.value(metadata i32 %1, metadata !3058, metadata !DIExpression()) #35, !dbg !3092
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3063, metadata !DIExpression()) #35, !dbg !3094
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !3094, !alias.scope !3088
  %7 = icmp eq i32 %1, 10, !dbg !3095
  br i1 %7, label %8, label %9, !dbg !3096

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !3097, !noalias !3088
  unreachable, !dbg !3097

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3098
  store i32 %1, i32* %10, align 8, !dbg !3099, !tbaa !2161, !alias.scope !3088
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3100
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3101
  ret i8* %11, !dbg !3102
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3103 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %1, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 0, metadata !3047, metadata !DIExpression()) #35, !dbg !3110
  call void @llvm.dbg.value(metadata i32 %0, metadata !3048, metadata !DIExpression()) #35, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %1, metadata !3049, metadata !DIExpression()) #35, !dbg !3110
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3112
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3112
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3050, metadata !DIExpression()) #35, !dbg !3113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3114) #35, !dbg !3117
  call void @llvm.dbg.value(metadata i32 %0, metadata !3058, metadata !DIExpression()) #35, !dbg !3118
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3063, metadata !DIExpression()) #35, !dbg !3120
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !3120, !alias.scope !3114
  %5 = icmp eq i32 %0, 10, !dbg !3121
  br i1 %5, label %6, label %7, !dbg !3122

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !3123, !noalias !3114
  unreachable, !dbg !3123

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3124
  store i32 %0, i32* %8, align 8, !dbg !3125, !tbaa !2161, !alias.scope !3114
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3126
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3127
  ret i8* %9, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3129 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3133, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8* %1, metadata !3134, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %2, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 0, metadata !3080, metadata !DIExpression()) #35, !dbg !3137
  call void @llvm.dbg.value(metadata i32 %0, metadata !3081, metadata !DIExpression()) #35, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %1, metadata !3082, metadata !DIExpression()) #35, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %2, metadata !3083, metadata !DIExpression()) #35, !dbg !3137
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3139
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3139
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3084, metadata !DIExpression()) #35, !dbg !3140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3141) #35, !dbg !3144
  call void @llvm.dbg.value(metadata i32 %0, metadata !3058, metadata !DIExpression()) #35, !dbg !3145
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3063, metadata !DIExpression()) #35, !dbg !3147
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3147, !alias.scope !3141
  %6 = icmp eq i32 %0, 10, !dbg !3148
  br i1 %6, label %7, label %8, !dbg !3149

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3150, !noalias !3141
  unreachable, !dbg !3150

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3151
  store i32 %0, i32* %9, align 8, !dbg !3152, !tbaa !2161, !alias.scope !3141
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3154
  ret i8* %10, !dbg !3155
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3156 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %1, metadata !3161, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8 %2, metadata !3162, metadata !DIExpression()), !dbg !3164
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3165
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3165
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3163, metadata !DIExpression()), !dbg !3166
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3167, !tbaa.struct !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2179, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8 %2, metadata !2180, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 1, metadata !2181, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8 %2, metadata !2182, metadata !DIExpression()), !dbg !3169
  %6 = lshr i8 %2, 5, !dbg !3171
  %7 = zext i8 %6 to i64, !dbg !3171
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3172
  call void @llvm.dbg.value(metadata i32* %8, metadata !2183, metadata !DIExpression()), !dbg !3169
  %9 = and i8 %2, 31, !dbg !3173
  %10 = zext i8 %9 to i32, !dbg !3173
  call void @llvm.dbg.value(metadata i32 %10, metadata !2185, metadata !DIExpression()), !dbg !3169
  %11 = load i32, i32* %8, align 4, !dbg !3174, !tbaa !611
  %12 = lshr i32 %11, %10, !dbg !3175
  %13 = and i32 %12, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i32 %13, metadata !2186, metadata !DIExpression()), !dbg !3169
  %14 = xor i32 %13, 1, !dbg !3177
  %15 = shl i32 %14, %10, !dbg !3178
  %16 = xor i32 %15, %11, !dbg !3179
  store i32 %16, i32* %8, align 4, !dbg !3179, !tbaa !611
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3180
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3181
  ret i8* %17, !dbg !3182
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3183 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8 %1, metadata !3188, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()) #35, !dbg !3190
  call void @llvm.dbg.value(metadata i64 -1, metadata !3161, metadata !DIExpression()) #35, !dbg !3190
  call void @llvm.dbg.value(metadata i8 %1, metadata !3162, metadata !DIExpression()) #35, !dbg !3190
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3192
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3192
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3163, metadata !DIExpression()) #35, !dbg !3193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3194, !tbaa.struct !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2179, metadata !DIExpression()) #35, !dbg !3195
  call void @llvm.dbg.value(metadata i8 %1, metadata !2180, metadata !DIExpression()) #35, !dbg !3195
  call void @llvm.dbg.value(metadata i32 1, metadata !2181, metadata !DIExpression()) #35, !dbg !3195
  call void @llvm.dbg.value(metadata i8 %1, metadata !2182, metadata !DIExpression()) #35, !dbg !3195
  %5 = lshr i8 %1, 5, !dbg !3197
  %6 = zext i8 %5 to i64, !dbg !3197
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3198
  call void @llvm.dbg.value(metadata i32* %7, metadata !2183, metadata !DIExpression()) #35, !dbg !3195
  %8 = and i8 %1, 31, !dbg !3199
  %9 = zext i8 %8 to i32, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %9, metadata !2185, metadata !DIExpression()) #35, !dbg !3195
  %10 = load i32, i32* %7, align 4, !dbg !3200, !tbaa !611
  %11 = lshr i32 %10, %9, !dbg !3201
  %12 = and i32 %11, 1, !dbg !3202
  call void @llvm.dbg.value(metadata i32 %12, metadata !2186, metadata !DIExpression()) #35, !dbg !3195
  %13 = xor i32 %12, 1, !dbg !3203
  %14 = shl i32 %13, %9, !dbg !3204
  %15 = xor i32 %14, %10, !dbg !3205
  store i32 %15, i32* %7, align 4, !dbg !3205, !tbaa !611
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3206
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3207
  ret i8* %16, !dbg !3208
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3209 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %0, metadata !3187, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i8 58, metadata !3188, metadata !DIExpression()) #35, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()) #35, !dbg !3215
  call void @llvm.dbg.value(metadata i64 -1, metadata !3161, metadata !DIExpression()) #35, !dbg !3215
  call void @llvm.dbg.value(metadata i8 58, metadata !3162, metadata !DIExpression()) #35, !dbg !3215
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3217
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3217
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3163, metadata !DIExpression()) #35, !dbg !3218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3219, !tbaa.struct !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2179, metadata !DIExpression()) #35, !dbg !3220
  call void @llvm.dbg.value(metadata i8 58, metadata !2180, metadata !DIExpression()) #35, !dbg !3220
  call void @llvm.dbg.value(metadata i32 1, metadata !2181, metadata !DIExpression()) #35, !dbg !3220
  call void @llvm.dbg.value(metadata i8 58, metadata !2182, metadata !DIExpression()) #35, !dbg !3220
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3222
  call void @llvm.dbg.value(metadata i32* %4, metadata !2183, metadata !DIExpression()) #35, !dbg !3220
  call void @llvm.dbg.value(metadata i32 26, metadata !2185, metadata !DIExpression()) #35, !dbg !3220
  %5 = load i32, i32* %4, align 4, !dbg !3223, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %5, metadata !2186, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3220
  %6 = or i32 %5, 67108864, !dbg !3224
  store i32 %6, i32* %4, align 4, !dbg !3224, !tbaa !611
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3225
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3226
  ret i8* %7, !dbg !3227
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3228 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3230, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %1, metadata !3231, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()) #35, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %1, metadata !3161, metadata !DIExpression()) #35, !dbg !3233
  call void @llvm.dbg.value(metadata i8 58, metadata !3162, metadata !DIExpression()) #35, !dbg !3233
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3235
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3235
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3163, metadata !DIExpression()) #35, !dbg !3236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3237, !tbaa.struct !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2179, metadata !DIExpression()) #35, !dbg !3238
  call void @llvm.dbg.value(metadata i8 58, metadata !2180, metadata !DIExpression()) #35, !dbg !3238
  call void @llvm.dbg.value(metadata i32 1, metadata !2181, metadata !DIExpression()) #35, !dbg !3238
  call void @llvm.dbg.value(metadata i8 58, metadata !2182, metadata !DIExpression()) #35, !dbg !3238
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3240
  call void @llvm.dbg.value(metadata i32* %5, metadata !2183, metadata !DIExpression()) #35, !dbg !3238
  call void @llvm.dbg.value(metadata i32 26, metadata !2185, metadata !DIExpression()) #35, !dbg !3238
  %6 = load i32, i32* %5, align 4, !dbg !3241, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %6, metadata !2186, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3238
  %7 = or i32 %6, 67108864, !dbg !3242
  store i32 %7, i32* %5, align 4, !dbg !3242, !tbaa !611
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3243
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3244
  ret i8* %8, !dbg !3245
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3246 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3248, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 %1, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %2, metadata !3250, metadata !DIExpression()), !dbg !3252
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3253
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3253
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %1, metadata !3058, metadata !DIExpression()) #35, !dbg !3255
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3255
  %6 = icmp eq i32 %1, 10, !dbg !3257
  br i1 %6, label %7, label %8, !dbg !3258

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3259, !noalias !3260
  unreachable, !dbg !3259

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3063, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3255
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3263
  store i32 %1, i32* %9, align 8, !dbg !3263, !tbaa.struct !3168
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3263
  %11 = bitcast i32* %10 to i8*, !dbg !3263
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3263
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2179, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8 58, metadata !2180, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i32 1, metadata !2181, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8 58, metadata !2182, metadata !DIExpression()), !dbg !3264
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3266
  call void @llvm.dbg.value(metadata i32* %12, metadata !2183, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i32 26, metadata !2185, metadata !DIExpression()), !dbg !3264
  %13 = load i32, i32* %12, align 4, !dbg !3267, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %13, metadata !2186, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3264
  %14 = or i32 %13, 67108864, !dbg !3268
  store i32 %14, i32* %12, align 4, !dbg !3268, !tbaa !611
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3270
  ret i8* %15, !dbg !3271
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3272 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3276, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %1, metadata !3277, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %2, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %3, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 %0, metadata !3281, metadata !DIExpression()) #35, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %1, metadata !3286, metadata !DIExpression()) #35, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %2, metadata !3287, metadata !DIExpression()) #35, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %3, metadata !3288, metadata !DIExpression()) #35, !dbg !3291
  call void @llvm.dbg.value(metadata i64 -1, metadata !3289, metadata !DIExpression()) #35, !dbg !3291
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3293
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3293
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3290, metadata !DIExpression()) #35, !dbg !3294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3295, !tbaa.struct !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2219, metadata !DIExpression()) #35, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %1, metadata !2220, metadata !DIExpression()) #35, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %2, metadata !2221, metadata !DIExpression()) #35, !dbg !3296
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2219, metadata !DIExpression()) #35, !dbg !3296
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3298
  store i32 10, i32* %7, align 8, !dbg !3299, !tbaa !2161
  %8 = icmp ne i8* %1, null, !dbg !3300
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3301
  br i1 %10, label %12, label %11, !dbg !3301

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3302
  unreachable, !dbg !3302

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3303
  store i8* %1, i8** %13, align 8, !dbg !3304, !tbaa !2234
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3305
  store i8* %2, i8** %14, align 8, !dbg !3306, !tbaa !2237
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3307
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3308
  ret i8* %15, !dbg !3309
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3282 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3281, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %1, metadata !3286, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %2, metadata !3287, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %3, metadata !3288, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %4, metadata !3289, metadata !DIExpression()), !dbg !3310
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3311
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3311
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3290, metadata !DIExpression()), !dbg !3312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3313, !tbaa.struct !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2219, metadata !DIExpression()) #35, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %1, metadata !2220, metadata !DIExpression()) #35, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %2, metadata !2221, metadata !DIExpression()) #35, !dbg !3314
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2219, metadata !DIExpression()) #35, !dbg !3314
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3316
  store i32 10, i32* %8, align 8, !dbg !3317, !tbaa !2161
  %9 = icmp ne i8* %1, null, !dbg !3318
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3319
  br i1 %11, label %13, label %12, !dbg !3319

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3320
  unreachable, !dbg !3320

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3321
  store i8* %1, i8** %14, align 8, !dbg !3322, !tbaa !2234
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3323
  store i8* %2, i8** %15, align 8, !dbg !3324, !tbaa !2237
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3325
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3326
  ret i8* %16, !dbg !3327
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3328 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3332, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8* %1, metadata !3333, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8* %2, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i32 0, metadata !3276, metadata !DIExpression()) #35, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %0, metadata !3277, metadata !DIExpression()) #35, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %1, metadata !3278, metadata !DIExpression()) #35, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %2, metadata !3279, metadata !DIExpression()) #35, !dbg !3336
  call void @llvm.dbg.value(metadata i32 0, metadata !3281, metadata !DIExpression()) #35, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %0, metadata !3286, metadata !DIExpression()) #35, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()) #35, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %2, metadata !3288, metadata !DIExpression()) #35, !dbg !3338
  call void @llvm.dbg.value(metadata i64 -1, metadata !3289, metadata !DIExpression()) #35, !dbg !3338
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3340
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3340
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3290, metadata !DIExpression()) #35, !dbg !3341
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3342, !tbaa.struct !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2219, metadata !DIExpression()) #35, !dbg !3343
  call void @llvm.dbg.value(metadata i8* %0, metadata !2220, metadata !DIExpression()) #35, !dbg !3343
  call void @llvm.dbg.value(metadata i8* %1, metadata !2221, metadata !DIExpression()) #35, !dbg !3343
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2219, metadata !DIExpression()) #35, !dbg !3343
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3345
  store i32 10, i32* %6, align 8, !dbg !3346, !tbaa !2161
  %7 = icmp ne i8* %0, null, !dbg !3347
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3348
  br i1 %9, label %11, label %10, !dbg !3348

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3349
  unreachable, !dbg !3349

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3350
  store i8* %0, i8** %12, align 8, !dbg !3351, !tbaa !2234
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3352
  store i8* %1, i8** %13, align 8, !dbg !3353, !tbaa !2237
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3354
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3355
  ret i8* %14, !dbg !3356
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3357 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3361, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %1, metadata !3362, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %2, metadata !3363, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i64 %3, metadata !3364, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 0, metadata !3281, metadata !DIExpression()) #35, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %0, metadata !3286, metadata !DIExpression()) #35, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()) #35, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %2, metadata !3288, metadata !DIExpression()) #35, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %3, metadata !3289, metadata !DIExpression()) #35, !dbg !3366
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3368
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3368
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3290, metadata !DIExpression()) #35, !dbg !3369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3370, !tbaa.struct !3168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2219, metadata !DIExpression()) #35, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %0, metadata !2220, metadata !DIExpression()) #35, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %1, metadata !2221, metadata !DIExpression()) #35, !dbg !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2219, metadata !DIExpression()) #35, !dbg !3371
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3373
  store i32 10, i32* %7, align 8, !dbg !3374, !tbaa !2161
  %8 = icmp ne i8* %0, null, !dbg !3375
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3376
  br i1 %10, label %12, label %11, !dbg !3376

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3377
  unreachable, !dbg !3377

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3378
  store i8* %0, i8** %13, align 8, !dbg !3379, !tbaa !2234
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3380
  store i8* %1, i8** %14, align 8, !dbg !3381, !tbaa !2237
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3382
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3383
  ret i8* %15, !dbg !3384
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8* %1, metadata !3390, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %2, metadata !3391, metadata !DIExpression()), !dbg !3392
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3393
  ret i8* %4, !dbg !3394
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3395 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3399, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %1, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 0, metadata !3389, metadata !DIExpression()) #35, !dbg !3402
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()) #35, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %1, metadata !3391, metadata !DIExpression()) #35, !dbg !3402
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3404
  ret i8* %3, !dbg !3405
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3410, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* %1, metadata !3411, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()) #35, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %1, metadata !3390, metadata !DIExpression()) #35, !dbg !3413
  call void @llvm.dbg.value(metadata i64 -1, metadata !3391, metadata !DIExpression()) #35, !dbg !3413
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3415
  ret i8* %3, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3417 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3421, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i32 0, metadata !3410, metadata !DIExpression()) #35, !dbg !3423
  call void @llvm.dbg.value(metadata i8* %0, metadata !3411, metadata !DIExpression()) #35, !dbg !3423
  call void @llvm.dbg.value(metadata i32 0, metadata !3389, metadata !DIExpression()) #35, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()) #35, !dbg !3425
  call void @llvm.dbg.value(metadata i64 -1, metadata !3391, metadata !DIExpression()) #35, !dbg !3425
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3427
  ret i8* %2, !dbg !3428
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3429 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3433, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i8* %1, metadata !3434, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %2, metadata !3435, metadata !DIExpression()), !dbg !3436
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !3437
  ret i32 %4, !dbg !3438
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3443, metadata !DIExpression()), !dbg !3444
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !3445
  ret i8* %2, !dbg !3446
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()), !dbg !3451
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !3452
  call void @llvm.dbg.value(metadata i8* %2, metadata !3450, metadata !DIExpression()), !dbg !3451
  ret i8* %2, !dbg !3453
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3454 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3456, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %1, metadata !3457, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %2, metadata !3458, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()) #35, !dbg !3464
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !3466
  call void @llvm.dbg.value(metadata i8* %4, metadata !3450, metadata !DIExpression()) #35, !dbg !3464
  call void @llvm.dbg.value(metadata i8* %4, metadata !3459, metadata !DIExpression()), !dbg !3463
  %5 = icmp eq i8* %4, null, !dbg !3467
  br i1 %5, label %6, label %9, !dbg !3468

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3469
  br i1 %7, label %19, label %8, !dbg !3472

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3473, !tbaa !620
  br label %19, !dbg !3474

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !3475
  call void @llvm.dbg.value(metadata i64 %10, metadata !3460, metadata !DIExpression()), !dbg !3476
  %11 = icmp ult i64 %10, %2, !dbg !3477
  br i1 %11, label %12, label %14, !dbg !3479

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %1, metadata !3482, metadata !DIExpression()) #35, !dbg !3490
  call void @llvm.dbg.value(metadata i8* %4, metadata !3488, metadata !DIExpression()) #35, !dbg !3490
  call void @llvm.dbg.value(metadata i64 %13, metadata !3489, metadata !DIExpression()) #35, !dbg !3490
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !3492
  br label %19, !dbg !3493

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3494
  br i1 %15, label %19, label %16, !dbg !3497

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %1, metadata !3482, metadata !DIExpression()) #35, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %4, metadata !3488, metadata !DIExpression()) #35, !dbg !3500
  call void @llvm.dbg.value(metadata i64 %17, metadata !3489, metadata !DIExpression()) #35, !dbg !3500
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !3502
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3503
  store i8 0, i8* %18, align 1, !dbg !3504, !tbaa !620
  br label %19, !dbg !3505

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3506
  ret i32 %20, !dbg !3507
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #12 !dbg !3508 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3510, metadata !DIExpression()), !dbg !3511
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #35, !dbg !3512
  ret i32 %2, !dbg !3513
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3514 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3553, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8* %1, metadata !3554, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8* %2, metadata !3555, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8* %3, metadata !3556, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8** %4, metadata !3557, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %5, metadata !3558, metadata !DIExpression()), !dbg !3559
  %7 = icmp eq i8* %1, null, !dbg !3560
  br i1 %7, label %10, label %8, !dbg !3562

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3563
  br label %12, !dbg !3563

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.125, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3564
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.127, i64 0, i64 0), i32 noundef 5) #35, !dbg !3565
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3565
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.128, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3566
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.129, i64 0, i64 0), i32 noundef 5) #35, !dbg !3567
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.130, i64 0, i64 0)) #35, !dbg !3567
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.128, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3568
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
  ], !dbg !3569

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.131, i64 0, i64 0), i32 noundef 5) #35, !dbg !3570
  %21 = load i8*, i8** %4, align 8, !dbg !3570, !tbaa !513
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3570
  br label %147, !dbg !3572

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.132, i64 0, i64 0), i32 noundef 5) #35, !dbg !3573
  %25 = load i8*, i8** %4, align 8, !dbg !3573, !tbaa !513
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3573
  %27 = load i8*, i8** %26, align 8, !dbg !3573, !tbaa !513
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3573
  br label %147, !dbg !3574

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.133, i64 0, i64 0), i32 noundef 5) #35, !dbg !3575
  %31 = load i8*, i8** %4, align 8, !dbg !3575, !tbaa !513
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3575
  %33 = load i8*, i8** %32, align 8, !dbg !3575, !tbaa !513
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3575
  %35 = load i8*, i8** %34, align 8, !dbg !3575, !tbaa !513
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3575
  br label %147, !dbg !3576

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.134, i64 0, i64 0), i32 noundef 5) #35, !dbg !3577
  %39 = load i8*, i8** %4, align 8, !dbg !3577, !tbaa !513
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3577
  %41 = load i8*, i8** %40, align 8, !dbg !3577, !tbaa !513
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3577
  %43 = load i8*, i8** %42, align 8, !dbg !3577, !tbaa !513
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3577
  %45 = load i8*, i8** %44, align 8, !dbg !3577, !tbaa !513
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3577
  br label %147, !dbg !3578

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.135, i64 0, i64 0), i32 noundef 5) #35, !dbg !3579
  %49 = load i8*, i8** %4, align 8, !dbg !3579, !tbaa !513
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3579
  %51 = load i8*, i8** %50, align 8, !dbg !3579, !tbaa !513
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3579
  %53 = load i8*, i8** %52, align 8, !dbg !3579, !tbaa !513
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3579
  %55 = load i8*, i8** %54, align 8, !dbg !3579, !tbaa !513
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3579
  %57 = load i8*, i8** %56, align 8, !dbg !3579, !tbaa !513
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3579
  br label %147, !dbg !3580

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.136, i64 0, i64 0), i32 noundef 5) #35, !dbg !3581
  %61 = load i8*, i8** %4, align 8, !dbg !3581, !tbaa !513
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3581
  %63 = load i8*, i8** %62, align 8, !dbg !3581, !tbaa !513
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3581
  %65 = load i8*, i8** %64, align 8, !dbg !3581, !tbaa !513
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3581
  %67 = load i8*, i8** %66, align 8, !dbg !3581, !tbaa !513
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3581
  %69 = load i8*, i8** %68, align 8, !dbg !3581, !tbaa !513
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3581
  %71 = load i8*, i8** %70, align 8, !dbg !3581, !tbaa !513
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3581
  br label %147, !dbg !3582

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.137, i64 0, i64 0), i32 noundef 5) #35, !dbg !3583
  %75 = load i8*, i8** %4, align 8, !dbg !3583, !tbaa !513
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3583
  %77 = load i8*, i8** %76, align 8, !dbg !3583, !tbaa !513
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3583
  %79 = load i8*, i8** %78, align 8, !dbg !3583, !tbaa !513
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3583
  %81 = load i8*, i8** %80, align 8, !dbg !3583, !tbaa !513
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3583
  %83 = load i8*, i8** %82, align 8, !dbg !3583, !tbaa !513
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3583
  %85 = load i8*, i8** %84, align 8, !dbg !3583, !tbaa !513
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3583
  %87 = load i8*, i8** %86, align 8, !dbg !3583, !tbaa !513
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3583
  br label %147, !dbg !3584

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.138, i64 0, i64 0), i32 noundef 5) #35, !dbg !3585
  %91 = load i8*, i8** %4, align 8, !dbg !3585, !tbaa !513
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3585
  %93 = load i8*, i8** %92, align 8, !dbg !3585, !tbaa !513
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3585
  %95 = load i8*, i8** %94, align 8, !dbg !3585, !tbaa !513
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3585
  %97 = load i8*, i8** %96, align 8, !dbg !3585, !tbaa !513
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3585
  %99 = load i8*, i8** %98, align 8, !dbg !3585, !tbaa !513
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3585
  %101 = load i8*, i8** %100, align 8, !dbg !3585, !tbaa !513
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3585
  %103 = load i8*, i8** %102, align 8, !dbg !3585, !tbaa !513
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3585
  %105 = load i8*, i8** %104, align 8, !dbg !3585, !tbaa !513
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3585
  br label %147, !dbg !3586

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.139, i64 0, i64 0), i32 noundef 5) #35, !dbg !3587
  %109 = load i8*, i8** %4, align 8, !dbg !3587, !tbaa !513
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3587
  %111 = load i8*, i8** %110, align 8, !dbg !3587, !tbaa !513
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3587
  %113 = load i8*, i8** %112, align 8, !dbg !3587, !tbaa !513
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3587
  %115 = load i8*, i8** %114, align 8, !dbg !3587, !tbaa !513
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3587
  %117 = load i8*, i8** %116, align 8, !dbg !3587, !tbaa !513
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3587
  %119 = load i8*, i8** %118, align 8, !dbg !3587, !tbaa !513
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3587
  %121 = load i8*, i8** %120, align 8, !dbg !3587, !tbaa !513
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3587
  %123 = load i8*, i8** %122, align 8, !dbg !3587, !tbaa !513
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3587
  %125 = load i8*, i8** %124, align 8, !dbg !3587, !tbaa !513
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3587
  br label %147, !dbg !3588

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.140, i64 0, i64 0), i32 noundef 5) #35, !dbg !3589
  %129 = load i8*, i8** %4, align 8, !dbg !3589, !tbaa !513
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3589
  %131 = load i8*, i8** %130, align 8, !dbg !3589, !tbaa !513
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3589
  %133 = load i8*, i8** %132, align 8, !dbg !3589, !tbaa !513
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3589
  %135 = load i8*, i8** %134, align 8, !dbg !3589, !tbaa !513
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3589
  %137 = load i8*, i8** %136, align 8, !dbg !3589, !tbaa !513
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3589
  %139 = load i8*, i8** %138, align 8, !dbg !3589, !tbaa !513
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3589
  %141 = load i8*, i8** %140, align 8, !dbg !3589, !tbaa !513
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3589
  %143 = load i8*, i8** %142, align 8, !dbg !3589, !tbaa !513
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3589
  %145 = load i8*, i8** %144, align 8, !dbg !3589, !tbaa !513
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3589
  br label %147, !dbg !3590

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3591
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3592 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3596, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8* %1, metadata !3597, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8* %2, metadata !3598, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8* %3, metadata !3599, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8** %4, metadata !3600, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 0, metadata !3601, metadata !DIExpression()), !dbg !3602
  br label %6, !dbg !3603

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3605
  call void @llvm.dbg.value(metadata i64 %7, metadata !3601, metadata !DIExpression()), !dbg !3602
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3606
  %9 = load i8*, i8** %8, align 8, !dbg !3606, !tbaa !513
  %10 = icmp eq i8* %9, null, !dbg !3608
  %11 = add i64 %7, 1, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %11, metadata !3601, metadata !DIExpression()), !dbg !3602
  br i1 %10, label %12, label %6, !dbg !3608, !llvm.loop !3610

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3612
  ret void, !dbg !3613
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3614 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3629, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8* %1, metadata !3630, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8* %2, metadata !3631, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8* %3, metadata !3632, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3633, metadata !DIExpression()), !dbg !3638
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3639
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3639
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3635, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 0, metadata !3634, metadata !DIExpression()), !dbg !3637
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3634, metadata !DIExpression()), !dbg !3637
  %11 = load i32, i32* %8, align 8, !dbg !3641
  %12 = icmp sgt i32 %11, -1, !dbg !3641
  br i1 %12, label %20, label %13, !dbg !3641

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3641
  store i32 %14, i32* %8, align 8, !dbg !3641
  %15 = icmp ult i32 %11, -7, !dbg !3641
  br i1 %15, label %16, label %20, !dbg !3641

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3641
  %18 = sext i32 %11 to i64, !dbg !3641
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3641
  br label %24, !dbg !3641

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3641
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3641
  store i8* %23, i8** %10, align 8, !dbg !3641
  br label %24, !dbg !3641

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3641
  %28 = load i8*, i8** %27, align 8, !dbg !3641
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3644
  store i8* %28, i8** %29, align 8, !dbg !3645, !tbaa !513
  %30 = icmp eq i8* %28, null, !dbg !3646
  br i1 %30, label %210, label %31, !dbg !3647

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 1, metadata !3634, metadata !DIExpression()), !dbg !3637
  %32 = icmp sgt i32 %25, -1, !dbg !3641
  br i1 %32, label %40, label %33, !dbg !3641

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3641
  store i32 %34, i32* %8, align 8, !dbg !3641
  %35 = icmp ult i32 %25, -7, !dbg !3641
  br i1 %35, label %36, label %40, !dbg !3641

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3641
  %38 = sext i32 %25 to i64, !dbg !3641
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3641
  br label %44, !dbg !3641

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3641
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3641
  store i8* %43, i8** %10, align 8, !dbg !3641
  br label %44, !dbg !3641

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3641
  %48 = load i8*, i8** %47, align 8, !dbg !3641
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3644
  store i8* %48, i8** %49, align 8, !dbg !3645, !tbaa !513
  %50 = icmp eq i8* %48, null, !dbg !3646
  br i1 %50, label %210, label %51, !dbg !3647

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 2, metadata !3634, metadata !DIExpression()), !dbg !3637
  %52 = icmp sgt i32 %45, -1, !dbg !3641
  br i1 %52, label %60, label %53, !dbg !3641

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3641
  store i32 %54, i32* %8, align 8, !dbg !3641
  %55 = icmp ult i32 %45, -7, !dbg !3641
  br i1 %55, label %56, label %60, !dbg !3641

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3641
  %58 = sext i32 %45 to i64, !dbg !3641
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3641
  br label %64, !dbg !3641

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3641
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3641
  store i8* %63, i8** %10, align 8, !dbg !3641
  br label %64, !dbg !3641

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3641
  %68 = load i8*, i8** %67, align 8, !dbg !3641
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3644
  store i8* %68, i8** %69, align 8, !dbg !3645, !tbaa !513
  %70 = icmp eq i8* %68, null, !dbg !3646
  br i1 %70, label %210, label %71, !dbg !3647

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 3, metadata !3634, metadata !DIExpression()), !dbg !3637
  %72 = icmp sgt i32 %65, -1, !dbg !3641
  br i1 %72, label %80, label %73, !dbg !3641

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3641
  store i32 %74, i32* %8, align 8, !dbg !3641
  %75 = icmp ult i32 %65, -7, !dbg !3641
  br i1 %75, label %76, label %80, !dbg !3641

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3641
  %78 = sext i32 %65 to i64, !dbg !3641
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3641
  br label %84, !dbg !3641

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3641
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3641
  store i8* %83, i8** %10, align 8, !dbg !3641
  br label %84, !dbg !3641

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3641
  %88 = load i8*, i8** %87, align 8, !dbg !3641
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3644
  store i8* %88, i8** %89, align 8, !dbg !3645, !tbaa !513
  %90 = icmp eq i8* %88, null, !dbg !3646
  br i1 %90, label %210, label %91, !dbg !3647

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 4, metadata !3634, metadata !DIExpression()), !dbg !3637
  %92 = icmp sgt i32 %85, -1, !dbg !3641
  br i1 %92, label %100, label %93, !dbg !3641

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3641
  store i32 %94, i32* %8, align 8, !dbg !3641
  %95 = icmp ult i32 %85, -7, !dbg !3641
  br i1 %95, label %96, label %100, !dbg !3641

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3641
  %98 = sext i32 %85 to i64, !dbg !3641
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3641
  br label %104, !dbg !3641

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3641
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3641
  store i8* %103, i8** %10, align 8, !dbg !3641
  br label %104, !dbg !3641

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3641
  %108 = load i8*, i8** %107, align 8, !dbg !3641
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3644
  store i8* %108, i8** %109, align 8, !dbg !3645, !tbaa !513
  %110 = icmp eq i8* %108, null, !dbg !3646
  br i1 %110, label %210, label %111, !dbg !3647

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 5, metadata !3634, metadata !DIExpression()), !dbg !3637
  %112 = icmp sgt i32 %105, -1, !dbg !3641
  br i1 %112, label %120, label %113, !dbg !3641

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3641
  store i32 %114, i32* %8, align 8, !dbg !3641
  %115 = icmp ult i32 %105, -7, !dbg !3641
  br i1 %115, label %116, label %120, !dbg !3641

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3641
  %118 = sext i32 %105 to i64, !dbg !3641
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3641
  br label %124, !dbg !3641

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3641
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3641
  store i8* %123, i8** %10, align 8, !dbg !3641
  br label %124, !dbg !3641

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3641
  %128 = load i8*, i8** %127, align 8, !dbg !3641
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3644
  store i8* %128, i8** %129, align 8, !dbg !3645, !tbaa !513
  %130 = icmp eq i8* %128, null, !dbg !3646
  br i1 %130, label %210, label %131, !dbg !3647

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 6, metadata !3634, metadata !DIExpression()), !dbg !3637
  %132 = icmp sgt i32 %125, -1, !dbg !3641
  br i1 %132, label %140, label %133, !dbg !3641

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3641
  store i32 %134, i32* %8, align 8, !dbg !3641
  %135 = icmp ult i32 %125, -7, !dbg !3641
  br i1 %135, label %136, label %140, !dbg !3641

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3641
  %138 = sext i32 %125 to i64, !dbg !3641
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3641
  br label %144, !dbg !3641

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3641
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3641
  store i8* %143, i8** %10, align 8, !dbg !3641
  br label %144, !dbg !3641

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3641
  %148 = load i8*, i8** %147, align 8, !dbg !3641
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3644
  store i8* %148, i8** %149, align 8, !dbg !3645, !tbaa !513
  %150 = icmp eq i8* %148, null, !dbg !3646
  br i1 %150, label %210, label %151, !dbg !3647

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 7, metadata !3634, metadata !DIExpression()), !dbg !3637
  %152 = icmp sgt i32 %145, -1, !dbg !3641
  br i1 %152, label %160, label %153, !dbg !3641

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3641
  store i32 %154, i32* %8, align 8, !dbg !3641
  %155 = icmp ult i32 %145, -7, !dbg !3641
  br i1 %155, label %156, label %160, !dbg !3641

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3641
  %158 = sext i32 %145 to i64, !dbg !3641
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3641
  br label %164, !dbg !3641

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3641
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3641
  store i8* %163, i8** %10, align 8, !dbg !3641
  br label %164, !dbg !3641

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3641
  %168 = load i8*, i8** %167, align 8, !dbg !3641
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3644
  store i8* %168, i8** %169, align 8, !dbg !3645, !tbaa !513
  %170 = icmp eq i8* %168, null, !dbg !3646
  br i1 %170, label %210, label %171, !dbg !3647

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 8, metadata !3634, metadata !DIExpression()), !dbg !3637
  %172 = icmp sgt i32 %165, -1, !dbg !3641
  br i1 %172, label %180, label %173, !dbg !3641

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3641
  store i32 %174, i32* %8, align 8, !dbg !3641
  %175 = icmp ult i32 %165, -7, !dbg !3641
  br i1 %175, label %176, label %180, !dbg !3641

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3641
  %178 = sext i32 %165 to i64, !dbg !3641
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3641
  br label %184, !dbg !3641

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3641
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3641
  store i8* %183, i8** %10, align 8, !dbg !3641
  br label %184, !dbg !3641

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3641
  %188 = load i8*, i8** %187, align 8, !dbg !3641
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3644
  store i8* %188, i8** %189, align 8, !dbg !3645, !tbaa !513
  %190 = icmp eq i8* %188, null, !dbg !3646
  br i1 %190, label %210, label %191, !dbg !3647

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 9, metadata !3634, metadata !DIExpression()), !dbg !3637
  %192 = icmp sgt i32 %185, -1, !dbg !3641
  br i1 %192, label %200, label %193, !dbg !3641

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3641
  store i32 %194, i32* %8, align 8, !dbg !3641
  %195 = icmp ult i32 %185, -7, !dbg !3641
  br i1 %195, label %196, label %200, !dbg !3641

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3641
  %198 = sext i32 %185 to i64, !dbg !3641
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3641
  br label %203, !dbg !3641

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3641
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3641
  store i8* %202, i8** %10, align 8, !dbg !3641
  br label %203, !dbg !3641

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3641
  %206 = load i8*, i8** %205, align 8, !dbg !3641
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3644
  store i8* %206, i8** %207, align 8, !dbg !3645, !tbaa !513
  %208 = icmp eq i8* %206, null, !dbg !3646
  %209 = select i1 %208, i64 9, i64 10, !dbg !3647
  br label %210, !dbg !3647

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3648
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3649
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3650
  ret void, !dbg !3650
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3651 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3655, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %1, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %2, metadata !3657, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %3, metadata !3658, metadata !DIExpression()), !dbg !3660
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3661
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3661
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3659, metadata !DIExpression()), !dbg !3662
  call void @llvm.va_start(i8* nonnull %7), !dbg !3663
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3664
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3664
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3664, !tbaa.struct !1210
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3664
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3664
  call void @llvm.va_end(i8* nonnull %7), !dbg !3665
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3666
  ret void, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3667 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3668, !tbaa !513
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.128, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3668
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.145, i64 0, i64 0), i32 noundef 5) #35, !dbg !3669
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.146, i64 0, i64 0)) #35, !dbg !3669
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.147, i64 0, i64 0), i32 noundef 5) #35, !dbg !3670
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.149, i64 0, i64 0)) #35, !dbg !3670
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.150, i64 0, i64 0), i32 noundef 5) #35, !dbg !3671
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.151, i64 0, i64 0)) #35, !dbg !3671
  ret void, !dbg !3672
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3673 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3678, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %1, metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %2, metadata !3680, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i8* %0, metadata !3682, metadata !DIExpression()) #35, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %1, metadata !3685, metadata !DIExpression()) #35, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %2, metadata !3686, metadata !DIExpression()) #35, !dbg !3687
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3689
  call void @llvm.dbg.value(metadata i8* %4, metadata !3690, metadata !DIExpression()) #35, !dbg !3695
  %5 = icmp eq i8* %4, null, !dbg !3697
  br i1 %5, label %6, label %7, !dbg !3699

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3700
  unreachable, !dbg !3700

7:                                                ; preds = %3
  ret i8* %4, !dbg !3701
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3682, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %1, metadata !3685, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %2, metadata !3686, metadata !DIExpression()), !dbg !3702
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %4, metadata !3690, metadata !DIExpression()) #35, !dbg !3704
  %5 = icmp eq i8* %4, null, !dbg !3706
  br i1 %5, label %6, label %7, !dbg !3707

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3708
  unreachable, !dbg !3708

7:                                                ; preds = %3
  ret i8* %4, !dbg !3709
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3710 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3714, metadata !DIExpression()), !dbg !3715
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3716
  call void @llvm.dbg.value(metadata i8* %2, metadata !3690, metadata !DIExpression()) #35, !dbg !3717
  %3 = icmp eq i8* %2, null, !dbg !3719
  br i1 %3, label %4, label %5, !dbg !3720

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3721
  unreachable, !dbg !3721

5:                                                ; preds = %1
  ret i8* %2, !dbg !3722
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3723 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3727, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i64 %0, metadata !3729, metadata !DIExpression()) #35, !dbg !3733
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %2, metadata !3690, metadata !DIExpression()) #35, !dbg !3736
  %3 = icmp eq i8* %2, null, !dbg !3738
  br i1 %3, label %4, label %5, !dbg !3739

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3740
  unreachable, !dbg !3740

5:                                                ; preds = %1
  ret i8* %2, !dbg !3741
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3742 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3746, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %0, metadata !3714, metadata !DIExpression()) #35, !dbg !3748
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3750
  call void @llvm.dbg.value(metadata i8* %2, metadata !3690, metadata !DIExpression()) #35, !dbg !3751
  %3 = icmp eq i8* %2, null, !dbg !3753
  br i1 %3, label %4, label %5, !dbg !3754

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3755
  unreachable, !dbg !3755

5:                                                ; preds = %1
  ret i8* %2, !dbg !3756
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i8* %0, metadata !3764, metadata !DIExpression()) #35, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %1, metadata !3768, metadata !DIExpression()) #35, !dbg !3769
  %3 = icmp eq i64 %1, 0, !dbg !3771
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3771
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3772
  call void @llvm.dbg.value(metadata i8* %5, metadata !3690, metadata !DIExpression()) #35, !dbg !3773
  %6 = icmp eq i8* %5, null, !dbg !3775
  br i1 %6, label %7, label %8, !dbg !3776

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3777
  unreachable, !dbg !3777

8:                                                ; preds = %2
  ret i8* %5, !dbg !3778
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3779 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3783, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 %1, metadata !3784, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i8* %0, metadata !3786, metadata !DIExpression()) #35, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %1, metadata !3789, metadata !DIExpression()) #35, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %0, metadata !3764, metadata !DIExpression()) #35, !dbg !3792
  call void @llvm.dbg.value(metadata i64 %1, metadata !3768, metadata !DIExpression()) #35, !dbg !3792
  %3 = icmp eq i64 %1, 0, !dbg !3794
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3794
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3795
  call void @llvm.dbg.value(metadata i8* %5, metadata !3690, metadata !DIExpression()) #35, !dbg !3796
  %6 = icmp eq i8* %5, null, !dbg !3798
  br i1 %6, label %7, label %8, !dbg !3799

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3800
  unreachable, !dbg !3800

8:                                                ; preds = %2
  ret i8* %5, !dbg !3801
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3802 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3806, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %1, metadata !3807, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %2, metadata !3808, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i8* %0, metadata !3810, metadata !DIExpression()) #35, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %1, metadata !3813, metadata !DIExpression()) #35, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %2, metadata !3814, metadata !DIExpression()) #35, !dbg !3815
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3817
  call void @llvm.dbg.value(metadata i8* %4, metadata !3690, metadata !DIExpression()) #35, !dbg !3818
  %5 = icmp eq i8* %4, null, !dbg !3820
  br i1 %5, label %6, label %7, !dbg !3821

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3822
  unreachable, !dbg !3822

7:                                                ; preds = %3
  ret i8* %4, !dbg !3823
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3824 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3828, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %1, metadata !3829, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8* null, metadata !3682, metadata !DIExpression()) #35, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %0, metadata !3685, metadata !DIExpression()) #35, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %1, metadata !3686, metadata !DIExpression()) #35, !dbg !3831
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3833
  call void @llvm.dbg.value(metadata i8* %3, metadata !3690, metadata !DIExpression()) #35, !dbg !3834
  %4 = icmp eq i8* %3, null, !dbg !3836
  br i1 %4, label %5, label %6, !dbg !3837

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3838
  unreachable, !dbg !3838

6:                                                ; preds = %2
  ret i8* %3, !dbg !3839
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3840 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3844, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %1, metadata !3845, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i8* null, metadata !3806, metadata !DIExpression()) #35, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %0, metadata !3807, metadata !DIExpression()) #35, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %1, metadata !3808, metadata !DIExpression()) #35, !dbg !3847
  call void @llvm.dbg.value(metadata i8* null, metadata !3810, metadata !DIExpression()) #35, !dbg !3849
  call void @llvm.dbg.value(metadata i64 %0, metadata !3813, metadata !DIExpression()) #35, !dbg !3849
  call void @llvm.dbg.value(metadata i64 %1, metadata !3814, metadata !DIExpression()) #35, !dbg !3849
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3851
  call void @llvm.dbg.value(metadata i8* %3, metadata !3690, metadata !DIExpression()) #35, !dbg !3852
  %4 = icmp eq i8* %3, null, !dbg !3854
  br i1 %4, label %5, label %6, !dbg !3855

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3856
  unreachable, !dbg !3856

6:                                                ; preds = %2
  ret i8* %3, !dbg !3857
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3862, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64* %1, metadata !3863, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8* %0, metadata !451, metadata !DIExpression()) #35, !dbg !3865
  call void @llvm.dbg.value(metadata i64* %1, metadata !452, metadata !DIExpression()) #35, !dbg !3865
  call void @llvm.dbg.value(metadata i64 1, metadata !453, metadata !DIExpression()) #35, !dbg !3865
  %3 = load i64, i64* %1, align 8, !dbg !3867, !tbaa !767
  call void @llvm.dbg.value(metadata i64 %3, metadata !454, metadata !DIExpression()) #35, !dbg !3865
  %4 = icmp eq i8* %0, null, !dbg !3868
  br i1 %4, label %5, label %8, !dbg !3870

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3871
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3874
  br label %15, !dbg !3874

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3875
  %10 = add nuw i64 %9, 1, !dbg !3875
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3875
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3875
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %13, metadata !454, metadata !DIExpression()) #35, !dbg !3865
  br i1 %12, label %14, label %15, !dbg !3878

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3879
  unreachable, !dbg !3879

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3865
  call void @llvm.dbg.value(metadata i64 %16, metadata !454, metadata !DIExpression()) #35, !dbg !3865
  call void @llvm.dbg.value(metadata i8* %0, metadata !3682, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i64 %16, metadata !3685, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i64 1, metadata !3686, metadata !DIExpression()) #35, !dbg !3880
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !3882
  call void @llvm.dbg.value(metadata i8* %17, metadata !3690, metadata !DIExpression()) #35, !dbg !3883
  %18 = icmp eq i8* %17, null, !dbg !3885
  br i1 %18, label %19, label %20, !dbg !3886

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3887
  unreachable, !dbg !3887

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !451, metadata !DIExpression()) #35, !dbg !3865
  store i64 %16, i64* %1, align 8, !dbg !3888, !tbaa !767
  ret i8* %17, !dbg !3889
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !446 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !451, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64* %1, metadata !452, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %2, metadata !453, metadata !DIExpression()), !dbg !3890
  %4 = load i64, i64* %1, align 8, !dbg !3891, !tbaa !767
  call void @llvm.dbg.value(metadata i64 %4, metadata !454, metadata !DIExpression()), !dbg !3890
  %5 = icmp eq i8* %0, null, !dbg !3892
  br i1 %5, label %6, label %13, !dbg !3893

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3894
  br i1 %7, label %8, label %20, !dbg !3895

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %9, metadata !454, metadata !DIExpression()), !dbg !3890
  %10 = icmp ugt i64 %2, 128, !dbg !3898
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %12, metadata !454, metadata !DIExpression()), !dbg !3890
  br label %20, !dbg !3900

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3901
  %15 = add nuw i64 %14, 1, !dbg !3901
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3901
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3901
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %18, metadata !454, metadata !DIExpression()), !dbg !3890
  br i1 %17, label %19, label %20, !dbg !3902

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3903
  unreachable, !dbg !3903

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3890
  call void @llvm.dbg.value(metadata i64 %21, metadata !454, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i8* %0, metadata !3682, metadata !DIExpression()) #35, !dbg !3904
  call void @llvm.dbg.value(metadata i64 %21, metadata !3685, metadata !DIExpression()) #35, !dbg !3904
  call void @llvm.dbg.value(metadata i64 %2, metadata !3686, metadata !DIExpression()) #35, !dbg !3904
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i8* %22, metadata !3690, metadata !DIExpression()) #35, !dbg !3907
  %23 = icmp eq i8* %22, null, !dbg !3909
  br i1 %23, label %24, label %25, !dbg !3910

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3911
  unreachable, !dbg !3911

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !451, metadata !DIExpression()), !dbg !3890
  store i64 %21, i64* %1, align 8, !dbg !3912, !tbaa !767
  ret i8* %22, !dbg !3913
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !458 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !466, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64* %1, metadata !467, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %2, metadata !468, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %3, metadata !469, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %4, metadata !470, metadata !DIExpression()), !dbg !3914
  %6 = load i64, i64* %1, align 8, !dbg !3915, !tbaa !767
  call void @llvm.dbg.value(metadata i64 %6, metadata !471, metadata !DIExpression()), !dbg !3914
  %7 = ashr i64 %6, 1, !dbg !3916
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3916
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3916
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3916
  call void @llvm.dbg.value(metadata i64 %10, metadata !472, metadata !DIExpression()), !dbg !3914
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3918
  call void @llvm.dbg.value(metadata i64 %11, metadata !472, metadata !DIExpression()), !dbg !3914
  %12 = icmp sgt i64 %3, -1, !dbg !3919
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3921
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %15, metadata !472, metadata !DIExpression()), !dbg !3914
  %16 = icmp slt i64 %4, 0, !dbg !3922
  br i1 %16, label %17, label %30, !dbg !3922

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3922
  br i1 %18, label %19, label %24, !dbg !3922

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3922
  %21 = udiv i64 9223372036854775807, %20, !dbg !3922
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3922
  br i1 %23, label %46, label %43, !dbg !3922

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3922
  br i1 %25, label %43, label %26, !dbg !3922

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3922
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3922
  %29 = icmp ult i64 %28, %15, !dbg !3922
  br i1 %29, label %46, label %43, !dbg !3922

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3922
  br i1 %31, label %43, label %32, !dbg !3922

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3922
  br i1 %33, label %34, label %40, !dbg !3922

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3922
  br i1 %35, label %43, label %36, !dbg !3922

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3922
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3922
  %39 = icmp ult i64 %38, %4, !dbg !3922
  br i1 %39, label %46, label %43, !dbg !3922

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3922
  %42 = icmp ult i64 %41, %15, !dbg !3922
  br i1 %42, label %46, label %43, !dbg !3922

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !473, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3914
  %44 = mul i64 %15, %4, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %44, metadata !473, metadata !DIExpression()), !dbg !3914
  %45 = icmp slt i64 %44, 128, !dbg !3922
  br i1 %45, label %46, label %52, !dbg !3922

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !474, metadata !DIExpression()), !dbg !3914
  %48 = sdiv i64 %47, %4, !dbg !3923
  call void @llvm.dbg.value(metadata i64 %48, metadata !472, metadata !DIExpression()), !dbg !3914
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3926
  call void @llvm.dbg.value(metadata i64 %51, metadata !473, metadata !DIExpression()), !dbg !3914
  br label %52, !dbg !3927

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3914
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3914
  call void @llvm.dbg.value(metadata i64 %54, metadata !473, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %53, metadata !472, metadata !DIExpression()), !dbg !3914
  %55 = icmp eq i8* %0, null, !dbg !3928
  br i1 %55, label %56, label %57, !dbg !3930

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3931, !tbaa !767
  br label %57, !dbg !3932

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3933
  %59 = icmp slt i64 %58, %2, !dbg !3935
  br i1 %59, label %60, label %97, !dbg !3936

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3937
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3937
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3937
  call void @llvm.dbg.value(metadata i64 %63, metadata !472, metadata !DIExpression()), !dbg !3914
  br i1 %62, label %96, label %64, !dbg !3938

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3939
  br i1 %66, label %96, label %67, !dbg !3939

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3940

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3940
  br i1 %69, label %70, label %75, !dbg !3940

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3940
  %72 = udiv i64 9223372036854775807, %71, !dbg !3940
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3940
  br i1 %74, label %96, label %94, !dbg !3940

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3940
  br i1 %76, label %94, label %77, !dbg !3940

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3940
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3940
  %80 = icmp ult i64 %79, %63, !dbg !3940
  br i1 %80, label %96, label %94, !dbg !3940

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3940
  br i1 %82, label %94, label %83, !dbg !3940

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3940
  br i1 %84, label %85, label %91, !dbg !3940

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3940
  br i1 %86, label %94, label %87, !dbg !3940

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3940
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3940
  %90 = icmp ult i64 %89, %4, !dbg !3940
  br i1 %90, label %96, label %94, !dbg !3940

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3940
  %93 = icmp ult i64 %92, %63, !dbg !3940
  br i1 %93, label %96, label %94, !dbg !3940

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !473, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3914
  %95 = mul i64 %63, %4, !dbg !3940
  call void @llvm.dbg.value(metadata i64 %95, metadata !473, metadata !DIExpression()), !dbg !3914
  br label %97, !dbg !3941

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !3942
  unreachable, !dbg !3942

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3914
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3914
  call void @llvm.dbg.value(metadata i64 %99, metadata !473, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %98, metadata !472, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8* %0, metadata !3761, metadata !DIExpression()) #35, !dbg !3943
  call void @llvm.dbg.value(metadata i64 %99, metadata !3762, metadata !DIExpression()) #35, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %0, metadata !3764, metadata !DIExpression()) #35, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %99, metadata !3768, metadata !DIExpression()) #35, !dbg !3945
  %100 = icmp eq i64 %99, 0, !dbg !3947
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3947
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %102, metadata !3690, metadata !DIExpression()) #35, !dbg !3949
  %103 = icmp eq i8* %102, null, !dbg !3951
  br i1 %103, label %104, label %105, !dbg !3952

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3953
  unreachable, !dbg !3953

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !466, metadata !DIExpression()), !dbg !3914
  store i64 %98, i64* %1, align 8, !dbg !3954, !tbaa !767
  ret i8* %102, !dbg !3955
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3956 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3958, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i64 %0, metadata !3960, metadata !DIExpression()) #35, !dbg !3964
  call void @llvm.dbg.value(metadata i64 1, metadata !3963, metadata !DIExpression()) #35, !dbg !3964
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3966
  call void @llvm.dbg.value(metadata i8* %2, metadata !3690, metadata !DIExpression()) #35, !dbg !3967
  %3 = icmp eq i8* %2, null, !dbg !3969
  br i1 %3, label %4, label %5, !dbg !3970

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3971
  unreachable, !dbg !3971

5:                                                ; preds = %1
  ret i8* %2, !dbg !3972
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3961 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3960, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i64 %1, metadata !3963, metadata !DIExpression()), !dbg !3973
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3974
  call void @llvm.dbg.value(metadata i8* %3, metadata !3690, metadata !DIExpression()) #35, !dbg !3975
  %4 = icmp eq i8* %3, null, !dbg !3977
  br i1 %4, label %5, label %6, !dbg !3978

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3979
  unreachable, !dbg !3979

6:                                                ; preds = %2
  ret i8* %3, !dbg !3980
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3981 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3983, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 %0, metadata !3985, metadata !DIExpression()) #35, !dbg !3989
  call void @llvm.dbg.value(metadata i64 1, metadata !3988, metadata !DIExpression()) #35, !dbg !3989
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i64 1, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i64 1, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3997
  call void @llvm.dbg.value(metadata i8* %2, metadata !3690, metadata !DIExpression()) #35, !dbg !3998
  %3 = icmp eq i8* %2, null, !dbg !4000
  br i1 %3, label %4, label %5, !dbg !4001

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4002
  unreachable, !dbg !4002

5:                                                ; preds = %1
  ret i8* %2, !dbg !4003
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3986 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3985, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i64 %1, metadata !3988, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()) #35, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()) #35, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()) #35, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()) #35, !dbg !4005
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i8* %3, metadata !3690, metadata !DIExpression()) #35, !dbg !4008
  %4 = icmp eq i8* %3, null, !dbg !4010
  br i1 %4, label %5, label %6, !dbg !4011

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4012
  unreachable, !dbg !4012

6:                                                ; preds = %2
  ret i8* %3, !dbg !4013
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4014 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4018, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %1, metadata !4019, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %1, metadata !3714, metadata !DIExpression()) #35, !dbg !4021
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4023
  call void @llvm.dbg.value(metadata i8* %3, metadata !3690, metadata !DIExpression()) #35, !dbg !4024
  %4 = icmp eq i8* %3, null, !dbg !4026
  br i1 %4, label %5, label %6, !dbg !4027

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4028
  unreachable, !dbg !4028

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4029, metadata !DIExpression()) #35, !dbg !4034
  call void @llvm.dbg.value(metadata i8* %0, metadata !4032, metadata !DIExpression()) #35, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %1, metadata !4033, metadata !DIExpression()) #35, !dbg !4034
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4036
  ret i8* %3, !dbg !4037
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4042, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %1, metadata !4043, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3727, metadata !DIExpression()) #35, !dbg !4045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3729, metadata !DIExpression()) #35, !dbg !4047
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4049
  call void @llvm.dbg.value(metadata i8* %3, metadata !3690, metadata !DIExpression()) #35, !dbg !4050
  %4 = icmp eq i8* %3, null, !dbg !4052
  br i1 %4, label %5, label %6, !dbg !4053

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4054
  unreachable, !dbg !4054

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4029, metadata !DIExpression()) #35, !dbg !4055
  call void @llvm.dbg.value(metadata i8* %0, metadata !4032, metadata !DIExpression()) #35, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %1, metadata !4033, metadata !DIExpression()) #35, !dbg !4055
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4057
  ret i8* %3, !dbg !4058
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4059 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %1, metadata !4064, metadata !DIExpression()), !dbg !4066
  %3 = add nsw i64 %1, 1, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %3, metadata !3727, metadata !DIExpression()) #35, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %3, metadata !3729, metadata !DIExpression()) #35, !dbg !4070
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4072
  call void @llvm.dbg.value(metadata i8* %4, metadata !3690, metadata !DIExpression()) #35, !dbg !4073
  %5 = icmp eq i8* %4, null, !dbg !4075
  br i1 %5, label %6, label %7, !dbg !4076

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4077
  unreachable, !dbg !4077

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4065, metadata !DIExpression()), !dbg !4066
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4078
  store i8 0, i8* %8, align 1, !dbg !4079, !tbaa !620
  call void @llvm.dbg.value(metadata i8* %4, metadata !4029, metadata !DIExpression()) #35, !dbg !4080
  call void @llvm.dbg.value(metadata i8* %0, metadata !4032, metadata !DIExpression()) #35, !dbg !4080
  call void @llvm.dbg.value(metadata i64 %1, metadata !4033, metadata !DIExpression()) #35, !dbg !4080
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4082
  ret i8* %4, !dbg !4083
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4084 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4086, metadata !DIExpression()), !dbg !4087
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !4088
  %3 = add i64 %2, 1, !dbg !4089
  call void @llvm.dbg.value(metadata i8* %0, metadata !4018, metadata !DIExpression()) #35, !dbg !4090
  call void @llvm.dbg.value(metadata i64 %3, metadata !4019, metadata !DIExpression()) #35, !dbg !4090
  call void @llvm.dbg.value(metadata i64 %3, metadata !3714, metadata !DIExpression()) #35, !dbg !4092
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4094
  call void @llvm.dbg.value(metadata i8* %4, metadata !3690, metadata !DIExpression()) #35, !dbg !4095
  %5 = icmp eq i8* %4, null, !dbg !4097
  br i1 %5, label %6, label %7, !dbg !4098

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4099
  unreachable, !dbg !4099

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4029, metadata !DIExpression()) #35, !dbg !4100
  call void @llvm.dbg.value(metadata i8* %0, metadata !4032, metadata !DIExpression()) #35, !dbg !4100
  call void @llvm.dbg.value(metadata i64 %3, metadata !4033, metadata !DIExpression()) #35, !dbg !4100
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !4102
  ret i8* %4, !dbg !4103
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4104 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4108, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %1, metadata !4106, metadata !DIExpression()), !dbg !4109
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.162, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.163, i64 0, i64 0), i32 noundef 5) #35, !dbg !4108
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i64 0, i64 0), i8* noundef %2) #35, !dbg !4108
  %3 = icmp eq i32 %1, 0, !dbg !4108
  tail call void @llvm.assume(i1 %3), !dbg !4108
  tail call void @abort() #37, !dbg !4110
  unreachable, !dbg !4110
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !4111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4115, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %1, metadata !4116, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i8* %2, metadata !4117, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %3, metadata !4118, metadata !DIExpression()), !dbg !4121
  %5 = tail call i32 @memcoll(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) #35, !dbg !4122
  call void @llvm.dbg.value(metadata i32 %5, metadata !4119, metadata !DIExpression()), !dbg !4121
  %6 = tail call i32* @__errno_location() #38, !dbg !4123
  %7 = load i32, i32* %6, align 4, !dbg !4123, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %7, metadata !4120, metadata !DIExpression()), !dbg !4121
  %8 = icmp eq i32 %7, 0, !dbg !4124
  br i1 %8, label %17, label %9, !dbg !4126

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !4127, metadata !DIExpression()) #35, !dbg !4138
  call void @llvm.dbg.value(metadata i8* %0, metadata !4132, metadata !DIExpression()) #35, !dbg !4138
  call void @llvm.dbg.value(metadata i64 %1, metadata !4133, metadata !DIExpression()) #35, !dbg !4138
  call void @llvm.dbg.value(metadata i8* %2, metadata !4134, metadata !DIExpression()) #35, !dbg !4138
  call void @llvm.dbg.value(metadata i64 %3, metadata !4135, metadata !DIExpression()) #35, !dbg !4138
  %10 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1.168, i64 0, i64 0), i32 noundef 5) #35, !dbg !4140
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %7, i8* noundef %10) #35, !dbg !4140
  %11 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2.169, i64 0, i64 0), i32 noundef 5) #35, !dbg !4141
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %11) #35, !dbg !4141
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4142, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %12, metadata !4136, metadata !DIExpression()) #35, !dbg !4143
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3.170, i64 0, i64 0), i32 noundef 5) #35, !dbg !4142
  %14 = tail call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, i8* noundef %0, i64 noundef %1) #35, !dbg !4142
  %15 = tail call i8* @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, i8* noundef %2, i64 noundef %3) #35, !dbg !4142
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %12, i32 noundef 0, i8* noundef %13, i8* noundef %14, i8* noundef %15) #35, !dbg !4142
  %16 = icmp eq i32 %12, 0, !dbg !4142
  tail call void @llvm.assume(i1 %16) #35, !dbg !4142
  br label %17, !dbg !4144

17:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4145
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll0(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !4146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4148, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %1, metadata !4149, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i8* %2, metadata !4150, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %3, metadata !4151, metadata !DIExpression()), !dbg !4154
  %5 = tail call i32 @memcoll0(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3) #35, !dbg !4155
  call void @llvm.dbg.value(metadata i32 %5, metadata !4152, metadata !DIExpression()), !dbg !4154
  %6 = tail call i32* @__errno_location() #38, !dbg !4156
  %7 = load i32, i32* %6, align 4, !dbg !4156, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %7, metadata !4153, metadata !DIExpression()), !dbg !4154
  %8 = icmp eq i32 %7, 0, !dbg !4157
  br i1 %8, label %19, label %9, !dbg !4159

9:                                                ; preds = %4
  %10 = add i64 %1, -1, !dbg !4160
  %11 = add i64 %3, -1, !dbg !4161
  call void @llvm.dbg.value(metadata i32 %7, metadata !4127, metadata !DIExpression()) #35, !dbg !4162
  call void @llvm.dbg.value(metadata i8* %0, metadata !4132, metadata !DIExpression()) #35, !dbg !4162
  call void @llvm.dbg.value(metadata i64 %10, metadata !4133, metadata !DIExpression()) #35, !dbg !4162
  call void @llvm.dbg.value(metadata i8* %2, metadata !4134, metadata !DIExpression()) #35, !dbg !4162
  call void @llvm.dbg.value(metadata i64 %11, metadata !4135, metadata !DIExpression()) #35, !dbg !4162
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1.168, i64 0, i64 0), i32 noundef 5) #35, !dbg !4164
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %7, i8* noundef %12) #35, !dbg !4164
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2.169, i64 0, i64 0), i32 noundef 5) #35, !dbg !4165
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %13) #35, !dbg !4165
  %14 = load volatile i32, i32* @exit_failure, align 4, !dbg !4166, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %14, metadata !4136, metadata !DIExpression()) #35, !dbg !4167
  %15 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3.170, i64 0, i64 0), i32 noundef 5) #35, !dbg !4166
  %16 = tail call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, i8* noundef %0, i64 noundef %10) #35, !dbg !4166
  %17 = tail call i8* @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, i8* noundef %2, i64 noundef %11) #35, !dbg !4166
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %14, i32 noundef 0, i8* noundef %15, i8* noundef %16, i8* noundef %17) #35, !dbg !4166
  %18 = icmp eq i32 %14, 0, !dbg !4166
  tail call void @llvm.assume(i1 %18) #35, !dbg !4166
  br label %19, !dbg !4168

19:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4169
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !4170 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4208, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %1, metadata !4209, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i32 0, metadata !4210, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i32 0, metadata !4211, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8 0, metadata !4212, metadata !DIExpression()), !dbg !4232
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4233
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #35, !dbg !4233
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4213, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i8* %1, metadata !4217, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8* %4, metadata !4219, metadata !DIExpression()), !dbg !4235
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4236

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4235
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4237
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4232
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4238
  call void @llvm.dbg.value(metadata i32 %11, metadata !4210, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i32 %10, metadata !4211, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %9, metadata !4219, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8* %8, metadata !4217, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8 poison, metadata !4212, metadata !DIExpression()), !dbg !4232
  %12 = load i8, i8* %8, align 1, !dbg !4239, !tbaa !620
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4240

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4210, metadata !DIExpression()), !dbg !4232
  %14 = icmp ult i8* %9, %5, !dbg !4241
  br i1 %14, label %15, label %47, !dbg !4244

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4245
  call void @llvm.dbg.value(metadata i8* %16, metadata !4219, metadata !DIExpression()), !dbg !4235
  store i8 114, i8* %9, align 1, !dbg !4246, !tbaa !620
  br label %47, !dbg !4247

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4210, metadata !DIExpression()), !dbg !4232
  %18 = or i32 %10, 576, !dbg !4248
  call void @llvm.dbg.value(metadata i32 %18, metadata !4211, metadata !DIExpression()), !dbg !4232
  %19 = icmp ult i8* %9, %5, !dbg !4249
  br i1 %19, label %20, label %47, !dbg !4251

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4252
  call void @llvm.dbg.value(metadata i8* %21, metadata !4219, metadata !DIExpression()), !dbg !4235
  store i8 119, i8* %9, align 1, !dbg !4253, !tbaa !620
  br label %47, !dbg !4254

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4210, metadata !DIExpression()), !dbg !4232
  %23 = or i32 %10, 1088, !dbg !4255
  call void @llvm.dbg.value(metadata i32 %23, metadata !4211, metadata !DIExpression()), !dbg !4232
  %24 = icmp ult i8* %9, %5, !dbg !4256
  br i1 %24, label %25, label %47, !dbg !4258

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4259
  call void @llvm.dbg.value(metadata i8* %26, metadata !4219, metadata !DIExpression()), !dbg !4235
  store i8 97, i8* %9, align 1, !dbg !4260, !tbaa !620
  br label %47, !dbg !4261

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4211, metadata !DIExpression()), !dbg !4232
  %28 = icmp ult i8* %9, %5, !dbg !4262
  br i1 %28, label %29, label %47, !dbg !4264

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4265
  call void @llvm.dbg.value(metadata i8* %30, metadata !4219, metadata !DIExpression()), !dbg !4235
  store i8 98, i8* %9, align 1, !dbg !4266, !tbaa !620
  br label %47, !dbg !4267

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4210, metadata !DIExpression()), !dbg !4232
  %32 = icmp ult i8* %9, %5, !dbg !4268
  br i1 %32, label %33, label %47, !dbg !4270

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4271
  call void @llvm.dbg.value(metadata i8* %34, metadata !4219, metadata !DIExpression()), !dbg !4235
  store i8 43, i8* %9, align 1, !dbg !4272, !tbaa !620
  br label %47, !dbg !4273

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4274
  call void @llvm.dbg.value(metadata i32 %36, metadata !4211, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8 1, metadata !4212, metadata !DIExpression()), !dbg !4232
  br label %47, !dbg !4275

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4276
  call void @llvm.dbg.value(metadata i32 %38, metadata !4211, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8 1, metadata !4212, metadata !DIExpression()), !dbg !4232
  br label %47, !dbg !4277

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #36, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %40, metadata !4220, metadata !DIExpression()), !dbg !4279
  %41 = ptrtoint i8* %5 to i64, !dbg !4280
  %42 = ptrtoint i8* %9 to i64, !dbg !4280
  %43 = sub i64 %41, %42, !dbg !4280
  %44 = icmp ugt i64 %40, %43, !dbg !4282
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %45, metadata !4220, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i8* %9, metadata !4284, metadata !DIExpression()) #35, !dbg !4289
  call void @llvm.dbg.value(metadata i8* %8, metadata !4287, metadata !DIExpression()) #35, !dbg !4289
  call void @llvm.dbg.value(metadata i64 %45, metadata !4288, metadata !DIExpression()) #35, !dbg !4289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #35, !dbg !4291
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4292
  call void @llvm.dbg.value(metadata i8* %46, metadata !4219, metadata !DIExpression()), !dbg !4235
  br label %53, !dbg !4293

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4235
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4232
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4232
  call void @llvm.dbg.value(metadata i32 %51, metadata !4210, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i32 %50, metadata !4211, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %49, metadata !4219, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8 poison, metadata !4212, metadata !DIExpression()), !dbg !4232
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4294
  call void @llvm.dbg.value(metadata i8* %52, metadata !4217, metadata !DIExpression()), !dbg !4235
  br label %6, !dbg !4295, !llvm.loop !4296

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4235
  call void @llvm.dbg.value(metadata i8* %54, metadata !4219, metadata !DIExpression()), !dbg !4235
  store i8 0, i8* %54, align 1, !dbg !4298, !tbaa !620
  br i1 %7, label %55, label %66, !dbg !4299

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4300
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #35, !dbg !4301
  call void @llvm.dbg.value(metadata i32 %57, metadata !4225, metadata !DIExpression()), !dbg !4302
  %58 = icmp slt i32 %57, 0, !dbg !4303
  br i1 %58, label %68, label %59, !dbg !4305

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #35, !dbg !4306
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4228, metadata !DIExpression()), !dbg !4302
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4307
  br i1 %61, label %62, label %68, !dbg !4308

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #38, !dbg !4309
  %64 = load i32, i32* %63, align 4, !dbg !4309, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %64, metadata !4229, metadata !DIExpression()), !dbg !4310
  %65 = call i32 @close(i32 noundef %57) #35, !dbg !4311
  store i32 %64, i32* %63, align 4, !dbg !4312, !tbaa !611
  br label %68, !dbg !4313

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4314, metadata !DIExpression()) #35, !dbg !4318
  call void @llvm.dbg.value(metadata i8* %1, metadata !4317, metadata !DIExpression()) #35, !dbg !4318
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #35, !dbg !4320
  br label %68, !dbg !4321

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4232
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #35, !dbg !4322
  ret %struct._IO_FILE* %69, !dbg !4322
}

; Function Attrs: nofree
declare !dbg !4323 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #33

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4326 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4364, metadata !DIExpression()), !dbg !4369
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4370
  call void @llvm.dbg.value(metadata i1 undef, metadata !4365, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4369
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4371, metadata !DIExpression()), !dbg !4374
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4376
  %4 = load i32, i32* %3, align 8, !dbg !4376, !tbaa !916
  %5 = and i32 %4, 32, !dbg !4377
  %6 = icmp eq i32 %5, 0, !dbg !4377
  call void @llvm.dbg.value(metadata i1 %6, metadata !4367, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4369
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4378
  %8 = icmp eq i32 %7, 0, !dbg !4379
  call void @llvm.dbg.value(metadata i1 %8, metadata !4368, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4369
  br i1 %6, label %9, label %19, !dbg !4380

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4382
  call void @llvm.dbg.value(metadata i1 %10, metadata !4365, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4369
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4383
  %12 = xor i1 %8, true, !dbg !4383
  %13 = sext i1 %12 to i32, !dbg !4383
  br i1 %11, label %22, label %14, !dbg !4383

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4384
  %16 = load i32, i32* %15, align 4, !dbg !4384, !tbaa !611
  %17 = icmp ne i32 %16, 9, !dbg !4385
  %18 = sext i1 %17 to i32, !dbg !4386
  br label %22, !dbg !4386

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4387

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4389
  store i32 0, i32* %21, align 4, !dbg !4391, !tbaa !611
  br label %22, !dbg !4389

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4369
  ret i32 %23, !dbg !4392
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !4393 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4395, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i32 %1, metadata !4396, metadata !DIExpression()), !dbg !4420
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !4421
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #35, !dbg !4421
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !4397, metadata !DIExpression()), !dbg !4422
  call void @llvm.va_start(i8* nonnull %4), !dbg !4423
  call void @llvm.dbg.value(metadata i32 -1, metadata !4408, metadata !DIExpression()), !dbg !4420
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
  ], !dbg !4424

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4425
  %7 = load i32, i32* %6, align 8, !dbg !4425
  %8 = icmp sgt i32 %7, -1, !dbg !4425
  br i1 %8, label %17, label %9, !dbg !4425

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !4425
  store i32 %10, i32* %6, align 8, !dbg !4425
  %11 = icmp ult i32 %7, -7, !dbg !4425
  br i1 %11, label %12, label %17, !dbg !4425

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4425
  %14 = load i8*, i8** %13, align 8, !dbg !4425
  %15 = sext i32 %7 to i64, !dbg !4425
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !4425
  br label %21, !dbg !4425

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4425
  %19 = load i8*, i8** %18, align 8, !dbg !4425
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !4425
  store i8* %20, i8** %18, align 8, !dbg !4425
  br label %21, !dbg !4425

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !4425
  %24 = load i32, i32* %23, align 8, !dbg !4425
  call void @llvm.dbg.value(metadata i32 %24, metadata !4409, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 %0, metadata !4427, metadata !DIExpression()) #35, !dbg !4432
  call void @llvm.dbg.value(metadata i32 %24, metadata !4430, metadata !DIExpression()) #35, !dbg !4432
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #35, !dbg !4434
  call void @llvm.dbg.value(metadata i32 %25, metadata !4431, metadata !DIExpression()) #35, !dbg !4432
  call void @llvm.dbg.value(metadata i32 %25, metadata !4408, metadata !DIExpression()), !dbg !4420
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4435
  %28 = load i32, i32* %27, align 8, !dbg !4435
  %29 = icmp sgt i32 %28, -1, !dbg !4435
  br i1 %29, label %38, label %30, !dbg !4435

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !4435
  store i32 %31, i32* %27, align 8, !dbg !4435
  %32 = icmp ult i32 %28, -7, !dbg !4435
  br i1 %32, label %33, label %38, !dbg !4435

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4435
  %35 = load i8*, i8** %34, align 8, !dbg !4435
  %36 = sext i32 %28 to i64, !dbg !4435
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !4435
  br label %42, !dbg !4435

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4435
  %40 = load i8*, i8** %39, align 8, !dbg !4435
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !4435
  store i8* %41, i8** %39, align 8, !dbg !4435
  br label %42, !dbg !4435

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !4435
  %45 = load i32, i32* %44, align 8, !dbg !4435
  call void @llvm.dbg.value(metadata i32 %45, metadata !4412, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i32 %0, metadata !381, metadata !DIExpression()) #35, !dbg !4437
  call void @llvm.dbg.value(metadata i32 %45, metadata !382, metadata !DIExpression()) #35, !dbg !4437
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4439, !tbaa !611
  %47 = icmp sgt i32 %46, -1, !dbg !4441
  br i1 %47, label %48, label %60, !dbg !4442

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #35, !dbg !4443
  call void @llvm.dbg.value(metadata i32 %49, metadata !383, metadata !DIExpression()) #35, !dbg !4437
  %50 = icmp sgt i32 %49, -1, !dbg !4445
  br i1 %50, label %55, label %51, !dbg !4447

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #38, !dbg !4448
  %53 = load i32, i32* %52, align 4, !dbg !4448, !tbaa !611
  %54 = icmp eq i32 %53, 22, !dbg !4449
  br i1 %54, label %56, label %55, !dbg !4450

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4451, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %66, metadata !383, metadata !DIExpression()) #35, !dbg !4437
  br label %124, !dbg !4453

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !4427, metadata !DIExpression()) #35, !dbg !4454
  call void @llvm.dbg.value(metadata i32 %45, metadata !4430, metadata !DIExpression()) #35, !dbg !4454
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !4457
  call void @llvm.dbg.value(metadata i32 %57, metadata !4431, metadata !DIExpression()) #35, !dbg !4454
  call void @llvm.dbg.value(metadata i32 %57, metadata !383, metadata !DIExpression()) #35, !dbg !4437
  %58 = icmp sgt i32 %57, -1, !dbg !4458
  br i1 %58, label %59, label %124, !dbg !4460

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4461, !tbaa !611
  br label %64, !dbg !4462

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4427, metadata !DIExpression()) #35, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %45, metadata !4430, metadata !DIExpression()) #35, !dbg !4463
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !4465
  call void @llvm.dbg.value(metadata i32 %61, metadata !4431, metadata !DIExpression()) #35, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %61, metadata !383, metadata !DIExpression()) #35, !dbg !4437
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !4466
  call void @llvm.dbg.value(metadata i32 %66, metadata !383, metadata !DIExpression()) #35, !dbg !4437
  %67 = icmp sgt i32 %66, -1, !dbg !4467
  %68 = select i1 %67, i1 %65, i1 false, !dbg !4453
  br i1 %68, label %69, label %124, !dbg !4453

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #35, !dbg !4468
  call void @llvm.dbg.value(metadata i32 %70, metadata !384, metadata !DIExpression()) #35, !dbg !4469
  %71 = icmp slt i32 %70, 0, !dbg !4470
  br i1 %71, label %76, label %72, !dbg !4471

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !4472
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #35, !dbg !4473
  %75 = icmp eq i32 %74, -1, !dbg !4474
  br i1 %75, label %76, label %124, !dbg !4475

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #38, !dbg !4476
  %78 = load i32, i32* %77, align 4, !dbg !4476, !tbaa !611
  call void @llvm.dbg.value(metadata i32 %78, metadata !387, metadata !DIExpression()) #35, !dbg !4477
  %79 = call i32 @close(i32 noundef %66) #35, !dbg !4478
  store i32 %78, i32* %77, align 4, !dbg !4479, !tbaa !611
  call void @llvm.dbg.value(metadata i32 -1, metadata !383, metadata !DIExpression()) #35, !dbg !4437
  br label %124, !dbg !4480

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #35, !dbg !4481
  call void @llvm.dbg.value(metadata i32 %81, metadata !4408, metadata !DIExpression()), !dbg !4420
  br label %124, !dbg !4482

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4483
  %84 = load i32, i32* %83, align 8, !dbg !4483
  %85 = icmp sgt i32 %84, -1, !dbg !4483
  br i1 %85, label %94, label %86, !dbg !4483

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !4483
  store i32 %87, i32* %83, align 8, !dbg !4483
  %88 = icmp ult i32 %84, -7, !dbg !4483
  br i1 %88, label %89, label %94, !dbg !4483

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4483
  %91 = load i8*, i8** %90, align 8, !dbg !4483
  %92 = sext i32 %84 to i64, !dbg !4483
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !4483
  br label %98, !dbg !4483

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4483
  %96 = load i8*, i8** %95, align 8, !dbg !4483
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !4483
  store i8* %97, i8** %95, align 8, !dbg !4483
  br label %98, !dbg !4483

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !4483
  %101 = load i32, i32* %100, align 8, !dbg !4483
  call void @llvm.dbg.value(metadata i32 %101, metadata !4414, metadata !DIExpression()), !dbg !4484
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #35, !dbg !4485
  call void @llvm.dbg.value(metadata i32 %102, metadata !4408, metadata !DIExpression()), !dbg !4420
  br label %124, !dbg !4486

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4487
  %105 = load i32, i32* %104, align 8, !dbg !4487
  %106 = icmp sgt i32 %105, -1, !dbg !4487
  br i1 %106, label %115, label %107, !dbg !4487

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !4487
  store i32 %108, i32* %104, align 8, !dbg !4487
  %109 = icmp ult i32 %105, -7, !dbg !4487
  br i1 %109, label %110, label %115, !dbg !4487

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4487
  %112 = load i8*, i8** %111, align 8, !dbg !4487
  %113 = sext i32 %105 to i64, !dbg !4487
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !4487
  br label %119, !dbg !4487

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4487
  %117 = load i8*, i8** %116, align 8, !dbg !4487
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !4487
  store i8* %118, i8** %116, align 8, !dbg !4487
  br label %119, !dbg !4487

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !4487
  %122 = load i8*, i8** %121, align 8, !dbg !4487
  call void @llvm.dbg.value(metadata i8* %122, metadata !4418, metadata !DIExpression()), !dbg !4488
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #35, !dbg !4489
  call void @llvm.dbg.value(metadata i32 %123, metadata !4408, metadata !DIExpression()), !dbg !4420
  br label %124, !dbg !4490

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !4491
  call void @llvm.dbg.value(metadata i32 %125, metadata !4408, metadata !DIExpression()), !dbg !4420
  call void @llvm.va_end(i8* nonnull %4), !dbg !4492
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #35, !dbg !4493
  ret i32 %125, !dbg !4494
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4495 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4500, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i8* %1, metadata !4501, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i64 %2, metadata !4502, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4503, metadata !DIExpression()), !dbg !4505
  %5 = icmp eq i8* %1, null, !dbg !4506
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4508
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.179, i64 0, i64 0), i8* %1, !dbg !4508
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %8, metadata !4502, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i8* %7, metadata !4501, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32* %6, metadata !4500, metadata !DIExpression()), !dbg !4505
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4509
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4511
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4503, metadata !DIExpression()), !dbg !4505
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %11, metadata !4504, metadata !DIExpression()), !dbg !4505
  %12 = icmp ult i64 %11, -3, !dbg !4513
  br i1 %12, label %13, label %18, !dbg !4515

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4516
  %15 = icmp eq i32 %14, 0, !dbg !4516
  br i1 %15, label %16, label %30, !dbg !4517

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4518, metadata !DIExpression()) #35, !dbg !4523
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4525, metadata !DIExpression()) #35, !dbg !4530
  call void @llvm.dbg.value(metadata i32 0, metadata !4528, metadata !DIExpression()) #35, !dbg !4530
  call void @llvm.dbg.value(metadata i64 8, metadata !4529, metadata !DIExpression()) #35, !dbg !4530
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4532
  store i64 0, i64* %17, align 1, !dbg !4532
  br label %30, !dbg !4533

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4534
  br i1 %19, label %20, label %21, !dbg !4536

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4537
  unreachable, !dbg !4537

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4538

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4540
  br i1 %24, label %30, label %25, !dbg !4541

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4542
  br i1 %26, label %30, label %27, !dbg !4545

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4546, !tbaa !620
  %29 = zext i8 %28 to i32, !dbg !4547
  store i32 %29, i32* %6, align 4, !dbg !4548, !tbaa !611
  br label %30, !dbg !4549

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4505
  ret i64 %31, !dbg !4550
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4551 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #34

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @memcoll(i8* nocapture noundef %0, i64 noundef %1, i8* nocapture noundef %2, i64 noundef %3) local_unnamed_addr #20 !dbg !4557 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4559, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 %1, metadata !4560, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i8* %2, metadata !4561, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 %3, metadata !4562, metadata !DIExpression()), !dbg !4568
  %5 = icmp eq i64 %1, %3, !dbg !4569
  br i1 %5, label %6, label %11, !dbg !4570

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4571, metadata !DIExpression()) #35, !dbg !4576
  call void @llvm.dbg.value(metadata i8* %2, metadata !4574, metadata !DIExpression()) #35, !dbg !4576
  call void @llvm.dbg.value(metadata i64 %1, metadata !4575, metadata !DIExpression()) #35, !dbg !4576
  %7 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %1) #35, !dbg !4578
  %8 = icmp eq i32 %7, 0, !dbg !4579
  br i1 %8, label %9, label %11, !dbg !4580

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #38, !dbg !4581
  store i32 0, i32* %10, align 4, !dbg !4583, !tbaa !611
  call void @llvm.dbg.value(metadata i32 0, metadata !4563, metadata !DIExpression()), !dbg !4568
  br label %43, !dbg !4584

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !4585
  %13 = load i8, i8* %12, align 1, !dbg !4585, !tbaa !620
  call void @llvm.dbg.value(metadata i8 %13, metadata !4564, metadata !DIExpression()), !dbg !4586
  %14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !4587
  %15 = load i8, i8* %14, align 1, !dbg !4587, !tbaa !620
  call void @llvm.dbg.value(metadata i8 %15, metadata !4567, metadata !DIExpression()), !dbg !4586
  store i8 0, i8* %12, align 1, !dbg !4588, !tbaa !620
  store i8 0, i8* %14, align 1, !dbg !4589, !tbaa !620
  %16 = add i64 %1, 1, !dbg !4590
  %17 = add i64 %3, 1, !dbg !4591
  call void @llvm.dbg.value(metadata i8* %0, metadata !4592, metadata !DIExpression()) #35, !dbg !4602
  call void @llvm.dbg.value(metadata i64 %16, metadata !4595, metadata !DIExpression()) #35, !dbg !4602
  call void @llvm.dbg.value(metadata i8* %2, metadata !4596, metadata !DIExpression()) #35, !dbg !4602
  call void @llvm.dbg.value(metadata i64 %17, metadata !4597, metadata !DIExpression()) #35, !dbg !4602
  %18 = tail call i32* @__errno_location() #38, !dbg !4602
  br label %19, !dbg !4604

19:                                               ; preds = %37, %11
  %20 = phi i8* [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi i8* [ %0, %11 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata i8* %23, metadata !4592, metadata !DIExpression()) #35, !dbg !4602
  call void @llvm.dbg.value(metadata i64 %22, metadata !4595, metadata !DIExpression()) #35, !dbg !4602
  call void @llvm.dbg.value(metadata i64 %21, metadata !4597, metadata !DIExpression()) #35, !dbg !4602
  call void @llvm.dbg.value(metadata i8* %20, metadata !4596, metadata !DIExpression()) #35, !dbg !4602
  store i32 0, i32* %18, align 4, !dbg !4605, !tbaa !611
  %24 = tail call i32 @strcoll(i8* noundef %23, i8* noundef %20) #36, !dbg !4606
  call void @llvm.dbg.value(metadata i32 %24, metadata !4598, metadata !DIExpression()) #35, !dbg !4602
  %25 = icmp eq i32 %24, 0, !dbg !4607
  br i1 %25, label %26, label %41, !dbg !4604

26:                                               ; preds = %19
  %27 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %23) #36, !dbg !4608
  %28 = add i64 %27, 1, !dbg !4609
  call void @llvm.dbg.value(metadata i64 %28, metadata !4599, metadata !DIExpression()) #35, !dbg !4610
  %29 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %20) #36, !dbg !4611
  %30 = add i64 %29, 1, !dbg !4612
  call void @llvm.dbg.value(metadata i64 %30, metadata !4601, metadata !DIExpression()) #35, !dbg !4610
  call void @llvm.dbg.value(metadata !DIArgList(i8* %23, i64 %28), metadata !4592, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #35, !dbg !4602
  call void @llvm.dbg.value(metadata !DIArgList(i8* %20, i64 %30), metadata !4596, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #35, !dbg !4602
  %31 = sub i64 %22, %28, !dbg !4613
  call void @llvm.dbg.value(metadata i64 %31, metadata !4595, metadata !DIExpression()) #35, !dbg !4602
  %32 = sub i64 %21, %30, !dbg !4614
  call void @llvm.dbg.value(metadata i64 %32, metadata !4597, metadata !DIExpression()) #35, !dbg !4602
  %33 = icmp eq i64 %31, 0, !dbg !4615
  br i1 %33, label %34, label %37, !dbg !4617

34:                                               ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !4618
  %36 = sext i1 %35 to i32, !dbg !4618
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !4619
  call void @llvm.dbg.value(metadata i8* %38, metadata !4596, metadata !DIExpression()) #35, !dbg !4602
  %39 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !4620
  call void @llvm.dbg.value(metadata i8* %39, metadata !4592, metadata !DIExpression()) #35, !dbg !4602
  %40 = icmp eq i64 %32, 0, !dbg !4621
  br i1 %40, label %41, label %19, !llvm.loop !4623

41:                                               ; preds = %19, %37, %34
  %42 = phi i32 [ %36, %34 ], [ 1, %37 ], [ %24, %19 ], !dbg !4602
  call void @llvm.dbg.value(metadata i32 %42, metadata !4563, metadata !DIExpression()), !dbg !4568
  store i8 %13, i8* %12, align 1, !dbg !4625, !tbaa !620
  store i8 %15, i8* %14, align 1, !dbg !4626, !tbaa !620
  br label %43

43:                                               ; preds = %41, %9
  %44 = phi i32 [ 0, %9 ], [ %42, %41 ], !dbg !4627
  call void @llvm.dbg.value(metadata i32 %44, metadata !4563, metadata !DIExpression()), !dbg !4568
  ret i32 %44, !dbg !4628
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4629 i32 @strcoll(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #34

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @memcoll0(i8* nocapture noundef readonly %0, i64 noundef %1, i8* nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #20 !dbg !4632 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4634, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i64 %1, metadata !4635, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i8* %2, metadata !4636, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i64 %3, metadata !4637, metadata !DIExpression()), !dbg !4638
  %5 = icmp eq i64 %1, %3, !dbg !4639
  br i1 %5, label %6, label %11, !dbg !4641

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4571, metadata !DIExpression()) #35, !dbg !4642
  call void @llvm.dbg.value(metadata i8* %2, metadata !4574, metadata !DIExpression()) #35, !dbg !4642
  call void @llvm.dbg.value(metadata i64 %1, metadata !4575, metadata !DIExpression()) #35, !dbg !4642
  %7 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %1) #35, !dbg !4644
  %8 = icmp eq i32 %7, 0, !dbg !4645
  br i1 %8, label %9, label %11, !dbg !4646

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #38, !dbg !4647
  store i32 0, i32* %10, align 4, !dbg !4649, !tbaa !611
  br label %35, !dbg !4650

11:                                               ; preds = %6, %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4592, metadata !DIExpression()) #35, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %1, metadata !4595, metadata !DIExpression()) #35, !dbg !4651
  call void @llvm.dbg.value(metadata i8* %2, metadata !4596, metadata !DIExpression()) #35, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %3, metadata !4597, metadata !DIExpression()) #35, !dbg !4651
  %12 = tail call i32* @__errno_location() #38, !dbg !4651
  br label %13, !dbg !4653

13:                                               ; preds = %31, %11
  %14 = phi i8* [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi i8* [ %0, %11 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata i8* %17, metadata !4592, metadata !DIExpression()) #35, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %16, metadata !4595, metadata !DIExpression()) #35, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %15, metadata !4597, metadata !DIExpression()) #35, !dbg !4651
  call void @llvm.dbg.value(metadata i8* %14, metadata !4596, metadata !DIExpression()) #35, !dbg !4651
  store i32 0, i32* %12, align 4, !dbg !4654, !tbaa !611
  %18 = tail call i32 @strcoll(i8* noundef %17, i8* noundef %14) #36, !dbg !4655
  call void @llvm.dbg.value(metadata i32 %18, metadata !4598, metadata !DIExpression()) #35, !dbg !4651
  %19 = icmp eq i32 %18, 0, !dbg !4656
  br i1 %19, label %20, label %35, !dbg !4653

20:                                               ; preds = %13
  %21 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %17) #36, !dbg !4657
  %22 = add i64 %21, 1, !dbg !4658
  call void @llvm.dbg.value(metadata i64 %22, metadata !4599, metadata !DIExpression()) #35, !dbg !4659
  %23 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %14) #36, !dbg !4660
  %24 = add i64 %23, 1, !dbg !4661
  call void @llvm.dbg.value(metadata i64 %24, metadata !4601, metadata !DIExpression()) #35, !dbg !4659
  call void @llvm.dbg.value(metadata !DIArgList(i8* %17, i64 %22), metadata !4592, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #35, !dbg !4651
  call void @llvm.dbg.value(metadata !DIArgList(i8* %14, i64 %24), metadata !4596, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #35, !dbg !4651
  %25 = sub i64 %16, %22, !dbg !4662
  call void @llvm.dbg.value(metadata i64 %25, metadata !4595, metadata !DIExpression()) #35, !dbg !4651
  %26 = sub i64 %15, %24, !dbg !4663
  call void @llvm.dbg.value(metadata i64 %26, metadata !4597, metadata !DIExpression()) #35, !dbg !4651
  %27 = icmp eq i64 %25, 0, !dbg !4664
  br i1 %27, label %28, label %31, !dbg !4665

28:                                               ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !4666
  %30 = sext i1 %29 to i32, !dbg !4666
  br label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds i8, i8* %14, i64 %24, !dbg !4667
  call void @llvm.dbg.value(metadata i8* %32, metadata !4596, metadata !DIExpression()) #35, !dbg !4651
  %33 = getelementptr inbounds i8, i8* %17, i64 %22, !dbg !4668
  call void @llvm.dbg.value(metadata i8* %33, metadata !4592, metadata !DIExpression()) #35, !dbg !4651
  %34 = icmp eq i64 %26, 0, !dbg !4669
  br i1 %34, label %35, label %13, !llvm.loop !4670

35:                                               ; preds = %31, %13, %28, %9
  %36 = phi i32 [ 0, %9 ], [ %30, %28 ], [ 1, %31 ], [ %18, %13 ], !dbg !4672
  ret i32 %36, !dbg !4673
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #22 !dbg !4674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4676, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i64 %1, metadata !4677, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i64 %2, metadata !4678, metadata !DIExpression()), !dbg !4680
  %4 = icmp eq i64 %2, 0, !dbg !4681
  br i1 %4, label %8, label %5, !dbg !4681

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4681
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4681
  br i1 %7, label %13, label %8, !dbg !4681

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4679, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4680
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4679, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4680
  %9 = mul i64 %2, %1, !dbg !4681
  call void @llvm.dbg.value(metadata i64 %9, metadata !4679, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i8* %0, metadata !4683, metadata !DIExpression()) #35, !dbg !4687
  call void @llvm.dbg.value(metadata i64 %9, metadata !4686, metadata !DIExpression()) #35, !dbg !4687
  %10 = icmp eq i64 %9, 0, !dbg !4689
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4689
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4690
  br label %15, !dbg !4691

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4679, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4680
  %14 = tail call i32* @__errno_location() #38, !dbg !4692
  store i32 12, i32* %14, align 4, !dbg !4694, !tbaa !611
  br label %15, !dbg !4695

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4680
  ret i8* %16, !dbg !4696
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

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
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { argmemonly nofree nounwind willreturn writeonly }
attributes #22 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !194, !199, !206, !368, !406, !409, !411, !414, !416, !418, !420, !422, !424, !428, !247, !257, !287, !430, !432, !434, !436, !360, !442, !476, !478, !481, !483, !378, !392, !485, !487}
!llvm.ident = !{!490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490, !490}
!llvm.module.flags = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 40, type: !64, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !49, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/comm.c", directory: "/src", checksumkind: CSK_MD5, checksum: "38a1b8268c0573e3e950891e137bb09f")
!4 = !{!5, !11, !26, !40}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 64, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0)
!9 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1)
!10 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 46, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!14 = !DIEnumerator(name: "_ISupper", value: 256)
!15 = !DIEnumerator(name: "_ISlower", value: 512)
!16 = !DIEnumerator(name: "_ISalpha", value: 1024)
!17 = !DIEnumerator(name: "_ISdigit", value: 2048)
!18 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!19 = !DIEnumerator(name: "_ISspace", value: 8192)
!20 = !DIEnumerator(name: "_ISprint", value: 16384)
!21 = !DIEnumerator(name: "_ISgraph", value: 32768)
!22 = !DIEnumerator(name: "_ISblank", value: 1)
!23 = !DIEnumerator(name: "_IScntrl", value: 2)
!24 = !DIEnumerator(name: "_ISpunct", value: 4)
!25 = !DIEnumerator(name: "_ISalnum", value: 8)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !27, line: 42, baseType: !6, size: 32, elements: !28)
!27 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!29 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!30 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!31 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!32 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!33 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!34 = !DIEnumerator(name: "c_quoting_style", value: 5)
!35 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!36 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!37 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!38 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!39 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 44, baseType: !6, size: 32, elements: !42)
!41 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!42 = !{!43, !44, !45, !46, !47, !48}
!43 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!44 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!45 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!46 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!47 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!48 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!49 = !{!50, !52, !53, !54, !55, !58, !60}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !{!0, !62, !65, !67, !153, !167, !169, !171, !173, !175, !177, !179, !181}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "total_option", scope: !2, file: !3, line: 61, type: !64, isLocal: true, isDefinition: true)
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "check_input_order", scope: !2, file: !3, line: 69, type: !5, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !69, file: !70, line: 575, type: !53, isLocal: true, isDefinition: true)
!69 = distinct !DISubprogram(name: "oputs_", scope: !70, file: !70, line: 573, type: !71, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!70 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!71 = !DISubroutineType(types: !72)
!72 = !{null, !58, !58}
!73 = !{!74, !75, !76, !79, !80, !81, !82, !86, !87, !88, !89, !91, !147, !148, !149, !151, !152}
!74 = !DILocalVariable(name: "program", arg: 1, scope: !69, file: !70, line: 573, type: !58)
!75 = !DILocalVariable(name: "option", arg: 2, scope: !69, file: !70, line: 573, type: !58)
!76 = !DILocalVariable(name: "term", scope: !77, file: !70, line: 585, type: !58)
!77 = distinct !DILexicalBlock(scope: !78, file: !70, line: 582, column: 5)
!78 = distinct !DILexicalBlock(scope: !69, file: !70, line: 581, column: 7)
!79 = !DILocalVariable(name: "double_space", scope: !69, file: !70, line: 594, type: !64)
!80 = !DILocalVariable(name: "first_word", scope: !69, file: !70, line: 595, type: !58)
!81 = !DILocalVariable(name: "option_text", scope: !69, file: !70, line: 596, type: !58)
!82 = !DILocalVariable(name: "s", scope: !83, file: !70, line: 608, type: !58)
!83 = distinct !DILexicalBlock(scope: !84, file: !70, line: 605, column: 5)
!84 = distinct !DILexicalBlock(scope: !85, file: !70, line: 604, column: 12)
!85 = distinct !DILexicalBlock(scope: !69, file: !70, line: 597, column: 7)
!86 = !DILocalVariable(name: "spaces", scope: !83, file: !70, line: 609, type: !55)
!87 = !DILocalVariable(name: "anchor_len", scope: !69, file: !70, line: 620, type: !55)
!88 = !DILocalVariable(name: "desc_text", scope: !69, file: !70, line: 625, type: !58)
!89 = !DILocalVariable(name: "__ptr", scope: !90, file: !70, line: 644, type: !58)
!90 = distinct !DILexicalBlock(scope: !69, file: !70, line: 644, column: 3)
!91 = !DILocalVariable(name: "__stream", scope: !90, file: !70, line: 644, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !95)
!94 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !97)
!96 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !113, !115, !116, !117, !121, !122, !124, !128, !131, !133, !136, !139, !140, !141, !142, !143}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !95, file: !96, line: 51, baseType: !53, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !95, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !95, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !95, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !95, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !95, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !95, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !95, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !95, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !95, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !95, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !95, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !95, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !96, line: 36, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !95, file: !96, line: 70, baseType: !114, size: 64, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !95, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !95, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !95, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !119, line: 152, baseType: !120)
!119 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!120 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !95, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !95, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!123 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !95, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !95, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !96, line: 43, baseType: null)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !95, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !119, line: 153, baseType: !120)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !95, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !96, line: 37, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !95, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !96, line: 38, flags: DIFlagFwdDecl)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !95, file: !96, line: 93, baseType: !114, size: 64, offset: 1344)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !95, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !95, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !95, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !95, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 20)
!147 = !DILocalVariable(name: "__cnt", scope: !90, file: !70, line: 644, type: !55)
!148 = !DILocalVariable(name: "url_program", scope: !69, file: !70, line: 648, type: !58)
!149 = !DILocalVariable(name: "__ptr", scope: !150, file: !70, line: 686, type: !58)
!150 = distinct !DILexicalBlock(scope: !69, file: !70, line: 686, column: 3)
!151 = !DILocalVariable(name: "__stream", scope: !150, file: !70, line: 686, type: !92)
!152 = !DILocalVariable(name: "__cnt", scope: !150, file: !70, line: 686, type: !55)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 86, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 2048, elements: !165)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !158, line: 50, size: 256, elements: !159)
!158 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!159 = !{!160, !161, !162, !164}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !158, line: 52, baseType: !58, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !157, file: !158, line: 55, baseType: !53, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !157, file: !158, line: 56, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !157, file: !158, line: 57, baseType: !53, size: 32, offset: 192)
!165 = !{!166}
!166 = !DISubrange(count: 8)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "only_file_1", scope: !2, file: !3, line: 43, type: !64, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "only_file_2", scope: !2, file: !3, line: 46, type: !64, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "both", scope: !2, file: !3, line: 49, type: !64, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 58, type: !60, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "col_sep_len", scope: !2, file: !3, line: 74, type: !55, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "col_sep", scope: !2, file: !3, line: 73, type: !58, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !2, file: !3, line: 52, type: !64, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !2, file: !3, line: 55, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 16, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 2)
!186 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!187 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!188 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!189 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!190 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!191 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "Version", scope: !194, file: !195, line: 3, type: !58, isLocal: false, isDefinition: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !196, splitDebugInlining: false, nameTableKind: None)
!195 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!196 = !{!192}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "file_name", scope: !199, file: !200, line: 45, type: !58, isLocal: true, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !201, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!201 = !{!197, !202}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !199, file: !200, line: 55, type: !64, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !206, file: !207, line: 66, type: !242, isLocal: false, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !208, globals: !209, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!208 = !{!52, !60}
!209 = !{!210, !236, !204, !238, !240}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "old_file_name", scope: !212, file: !207, line: 304, type: !58, isLocal: true, isDefinition: true)
!212 = distinct !DISubprogram(name: "verror_at_line", scope: !207, file: !207, line: 298, type: !213, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !229)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !53, !53, !58, !6, !58, !215}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !216, line: 52, baseType: !217)
!216 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !218, line: 32, baseType: !219)
!218 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !220, baseType: !221)
!220 = !DIFile(filename: "lib/error.c", directory: "/src")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !222, size: 256, elements: !223)
!222 = !DINamespace(name: "std", scope: null)
!223 = !{!224, !225, !226, !227, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !221, file: !220, baseType: !52, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !221, file: !220, baseType: !52, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !221, file: !220, baseType: !52, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !221, file: !220, baseType: !53, size: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !221, file: !220, baseType: !53, size: 32, offset: 224)
!229 = !{!230, !231, !232, !233, !234, !235}
!230 = !DILocalVariable(name: "status", arg: 1, scope: !212, file: !207, line: 298, type: !53)
!231 = !DILocalVariable(name: "errnum", arg: 2, scope: !212, file: !207, line: 298, type: !53)
!232 = !DILocalVariable(name: "file_name", arg: 3, scope: !212, file: !207, line: 298, type: !58)
!233 = !DILocalVariable(name: "line_number", arg: 4, scope: !212, file: !207, line: 298, type: !6)
!234 = !DILocalVariable(name: "message", arg: 5, scope: !212, file: !207, line: 298, type: !58)
!235 = !DILocalVariable(name: "args", arg: 6, scope: !212, file: !207, line: 298, type: !215)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "old_line_number", scope: !212, file: !207, line: 305, type: !6, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "error_message_count", scope: !206, file: !207, line: 69, type: !6, isLocal: false, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !206, file: !207, line: 295, type: !53, isLocal: false, isDefinition: true)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null}
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "program_name", scope: !247, file: !248, line: 31, type: !58, isLocal: false, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !249, globals: !250, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!249 = !{!50}
!250 = !{!245}
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "utf07FF", scope: !253, file: !254, line: 46, type: !284, isLocal: true, isDefinition: true)
!253 = distinct !DISubprogram(name: "proper_name_lite", scope: !254, file: !254, line: 38, type: !255, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !259)
!254 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!255 = !DISubroutineType(types: !256)
!256 = !{!58, !58, !58}
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !258, splitDebugInlining: false, nameTableKind: None)
!258 = !{!251}
!259 = !{!260, !261, !262, !263, !268}
!260 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !253, file: !254, line: 38, type: !58)
!261 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !253, file: !254, line: 38, type: !58)
!262 = !DILocalVariable(name: "translation", scope: !253, file: !254, line: 40, type: !58)
!263 = !DILocalVariable(name: "w", scope: !253, file: !254, line: 47, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !265, line: 37, baseType: !266)
!265 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !119, line: 57, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !119, line: 42, baseType: !6)
!268 = !DILocalVariable(name: "mbs", scope: !253, file: !254, line: 48, type: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !270, line: 6, baseType: !271)
!270 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !272, line: 21, baseType: !273)
!272 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 13, size: 64, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !273, file: !272, line: 15, baseType: !53, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !273, file: !272, line: 20, baseType: !277, size: 32, offset: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !272, line: 16, size: 32, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !277, file: !272, line: 18, baseType: !6, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !277, file: !272, line: 19, baseType: !281, size: 32)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 4)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 16, elements: !184)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !287, file: !288, line: 76, type: !354, isLocal: false, isDefinition: true)
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !289, retainedTypes: !295, globals: !296, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!289 = !{!26, !290, !11}
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !27, line: 254, baseType: !6, size: 32, elements: !291)
!291 = !{!292, !293, !294}
!292 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!293 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!294 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!295 = !{!53, !54, !55}
!296 = !{!285, !297, !303, !313, !315, !320, !343, !350, !352}
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !287, file: !288, line: 92, type: !299, isLocal: false, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 320, elements: !301)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!301 = !{!302}
!302 = !DISubrange(count: 10)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !287, file: !288, line: 1040, type: !305, isLocal: false, isDefinition: true)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !288, line: 56, size: 448, elements: !306)
!306 = !{!307, !308, !309, !311, !312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !305, file: !288, line: 59, baseType: !26, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !288, line: 62, baseType: !53, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !305, file: !288, line: 66, baseType: !310, size: 256, offset: 64)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !165)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !305, file: !288, line: 69, baseType: !58, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !305, file: !288, line: 72, baseType: !58, size: 64, offset: 384)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !287, file: !288, line: 107, type: !305, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "slot0", scope: !287, file: !288, line: 831, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 256)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "quote", scope: !322, file: !288, line: 228, type: !341, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "gettext_quote", scope: !288, file: !288, line: 197, type: !323, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!58, !58, !26}
!325 = !{!326, !327, !328, !329, !330}
!326 = !DILocalVariable(name: "msgid", arg: 1, scope: !322, file: !288, line: 197, type: !58)
!327 = !DILocalVariable(name: "s", arg: 2, scope: !322, file: !288, line: 197, type: !26)
!328 = !DILocalVariable(name: "translation", scope: !322, file: !288, line: 199, type: !58)
!329 = !DILocalVariable(name: "w", scope: !322, file: !288, line: 229, type: !264)
!330 = !DILocalVariable(name: "mbs", scope: !322, file: !288, line: 230, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !270, line: 6, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !272, line: 21, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 13, size: 64, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !333, file: !272, line: 15, baseType: !53, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !333, file: !272, line: 20, baseType: !337, size: 32, offset: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !272, line: 16, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !337, file: !272, line: 18, baseType: !6, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !337, file: !272, line: 19, baseType: !281, size: 32)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !342)
!342 = !{!185, !283}
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "slotvec", scope: !287, file: !288, line: 834, type: !345, isLocal: true, isDefinition: true)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !288, line: 823, size: 128, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !346, file: !288, line: 825, baseType: !55, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !346, file: !288, line: 826, baseType: !50, size: 64, offset: 64)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "nslots", scope: !287, file: !288, line: 832, type: !53, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "slotvec0", scope: !287, file: !288, line: 833, type: !346, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 704, elements: !356)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!356 = !{!357}
!357 = !DISubrange(count: 11)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !360, file: !361, line: 26, type: !363, isLocal: false, isDefinition: true)
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !362, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!362 = !{!358}
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 376, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 47)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "exit_failure", scope: !368, file: !369, line: 24, type: !371, isLocal: false, isDefinition: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !370, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!370 = !{!366}
!371 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !374, file: !375, line: 506, type: !53, isLocal: true, isDefinition: true)
!374 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !375, file: !375, line: 485, type: !376, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !380)
!375 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!376 = !DISubroutineType(types: !377)
!377 = !{!53, !53, !53}
!378 = distinct !DICompileUnit(language: DW_LANG_C99, file: !375, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !379, splitDebugInlining: false, nameTableKind: None)
!379 = !{!372}
!380 = !{!381, !382, !383, !384, !387}
!381 = !DILocalVariable(name: "fd", arg: 1, scope: !374, file: !375, line: 485, type: !53)
!382 = !DILocalVariable(name: "target", arg: 2, scope: !374, file: !375, line: 485, type: !53)
!383 = !DILocalVariable(name: "result", scope: !374, file: !375, line: 487, type: !53)
!384 = !DILocalVariable(name: "flags", scope: !385, file: !375, line: 530, type: !53)
!385 = distinct !DILexicalBlock(scope: !386, file: !375, line: 529, column: 5)
!386 = distinct !DILexicalBlock(scope: !374, file: !375, line: 528, column: 7)
!387 = !DILocalVariable(name: "saved_errno", scope: !388, file: !375, line: 533, type: !53)
!388 = distinct !DILexicalBlock(scope: !389, file: !375, line: 532, column: 9)
!389 = distinct !DILexicalBlock(scope: !385, file: !375, line: 531, column: 11)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "internal_state", scope: !392, file: !393, line: 97, type: !396, isLocal: true, isDefinition: true)
!392 = distinct !DICompileUnit(language: DW_LANG_C99, file: !393, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !394, globals: !395, splitDebugInlining: false, nameTableKind: None)
!393 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!394 = !{!52, !55, !60}
!395 = !{!390}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !270, line: 6, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !272, line: 21, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 13, size: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !398, file: !272, line: 15, baseType: !53, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !398, file: !272, line: 20, baseType: !402, size: 32, offset: 32)
!402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !272, line: 16, size: 32, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !402, file: !272, line: 18, baseType: !6, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !402, file: !272, line: 19, baseType: !281, size: 32)
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !408, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!408 = !{!40}
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!413 = !{!52}
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/fopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc91097c7b0e7b372b0b37f4c608799b")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !421, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!422 = distinct !DICompileUnit(language: DW_LANG_C99, file: !423, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!424 = distinct !DICompileUnit(language: DW_LANG_C99, file: !425, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !426, splitDebugInlining: false, nameTableKind: None)
!425 = !DIFile(filename: "lib/linebuffer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d85d9b8947aefddab7f1bb42f1d43333")
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/memcmp2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e6bcc41ab98d01454beab912275e871e")
!430 = distinct !DICompileUnit(language: DW_LANG_C99, file: !431, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!432 = distinct !DICompileUnit(language: DW_LANG_C99, file: !433, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!433 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!436 = distinct !DICompileUnit(language: DW_LANG_C99, file: !437, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !438, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!437 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!438 = !{!439}
!439 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !437, line: 40, baseType: !6, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !444, retainedTypes: !475, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!444 = !{!445, !457}
!445 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !446, file: !443, line: 188, baseType: !6, size: 32, elements: !455)
!446 = distinct !DISubprogram(name: "x2nrealloc", scope: !443, file: !443, line: 176, type: !447, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !450)
!447 = !DISubroutineType(types: !448)
!448 = !{!52, !52, !449, !55}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!450 = !{!451, !452, !453, !454}
!451 = !DILocalVariable(name: "p", arg: 1, scope: !446, file: !443, line: 176, type: !52)
!452 = !DILocalVariable(name: "pn", arg: 2, scope: !446, file: !443, line: 176, type: !449)
!453 = !DILocalVariable(name: "s", arg: 3, scope: !446, file: !443, line: 176, type: !55)
!454 = !DILocalVariable(name: "n", scope: !446, file: !443, line: 178, type: !55)
!455 = !{!456}
!456 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!457 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !458, file: !443, line: 228, baseType: !6, size: 32, elements: !455)
!458 = distinct !DISubprogram(name: "xpalloc", scope: !443, file: !443, line: 223, type: !459, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !465)
!459 = !DISubroutineType(types: !460)
!460 = !{!52, !52, !461, !462, !464, !462}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !463, line: 130, baseType: !464)
!463 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !56, line: 35, baseType: !120)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474}
!466 = !DILocalVariable(name: "pa", arg: 1, scope: !458, file: !443, line: 223, type: !52)
!467 = !DILocalVariable(name: "pn", arg: 2, scope: !458, file: !443, line: 223, type: !461)
!468 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !458, file: !443, line: 223, type: !462)
!469 = !DILocalVariable(name: "n_max", arg: 4, scope: !458, file: !443, line: 223, type: !464)
!470 = !DILocalVariable(name: "s", arg: 5, scope: !458, file: !443, line: 223, type: !462)
!471 = !DILocalVariable(name: "n0", scope: !458, file: !443, line: 230, type: !462)
!472 = !DILocalVariable(name: "n", scope: !458, file: !443, line: 237, type: !462)
!473 = !DILocalVariable(name: "nbytes", scope: !458, file: !443, line: 248, type: !462)
!474 = !DILocalVariable(name: "adjusted_nbytes", scope: !458, file: !443, line: 252, type: !462)
!475 = !{!50, !52, !64, !120, !57}
!476 = distinct !DICompileUnit(language: DW_LANG_C99, file: !477, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!477 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!478 = distinct !DICompileUnit(language: DW_LANG_C99, file: !479, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !480, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "lib/xmemcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "77ad181911e918137a808414fb759bea")
!480 = !{!26}
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!483 = distinct !DICompileUnit(language: DW_LANG_C99, file: !484, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!484 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "lib/memcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f316fa5066b9311c53750cfc7e26d495")
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !488, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !489, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!489 = !{!64, !57, !52}
!490 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!491 = !{i32 7, !"Dwarf Version", i32 5}
!492 = !{i32 2, !"Debug Info Version", i32 3}
!493 = !{i32 1, !"wchar_size", i32 4}
!494 = !{i32 1, !"branch-target-enforcement", i32 0}
!495 = !{i32 1, !"sign-return-address", i32 0}
!496 = !{i32 1, !"sign-return-address-all", i32 0}
!497 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!498 = !{i32 7, !"PIC Level", i32 2}
!499 = !{i32 7, !"PIE Level", i32 2}
!500 = !{i32 7, !"uwtable", i32 1}
!501 = !{i32 7, !"frame-pointer", i32 1}
!502 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 100, type: !503, scopeLine: 101, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !53}
!505 = !{!506}
!506 = !DILocalVariable(name: "status", arg: 1, scope: !502, file: !3, line: 100, type: !53)
!507 = !DILocation(line: 0, scope: !502)
!508 = !DILocation(line: 102, column: 14, scope: !509)
!509 = distinct !DILexicalBlock(scope: !502, file: !3, line: 102, column: 7)
!510 = !DILocation(line: 102, column: 7, scope: !502)
!511 = !DILocation(line: 103, column: 5, scope: !512)
!512 = distinct !DILexicalBlock(scope: !509, file: !3, line: 103, column: 5)
!513 = !{!514, !514, i64 0}
!514 = !{!"any pointer", !515, i64 0}
!515 = !{!"omnipotent char", !516, i64 0}
!516 = !{!"Simple C/C++ TBAA"}
!517 = !DILocation(line: 106, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !509, file: !3, line: 105, column: 5)
!519 = !DILocation(line: 110, column: 7, scope: !518)
!520 = !DILocation(line: 113, column: 7, scope: !518)
!521 = !DILocation(line: 117, column: 7, scope: !518)
!522 = !DILocation(line: 123, column: 7, scope: !518)
!523 = !DILocation(line: 126, column: 7, scope: !518)
!524 = !DILocation(line: 129, column: 7, scope: !518)
!525 = !DILocation(line: 132, column: 7, scope: !518)
!526 = !DILocation(line: 137, column: 7, scope: !518)
!527 = !DILocation(line: 141, column: 7, scope: !518)
!528 = !DILocation(line: 145, column: 7, scope: !518)
!529 = !DILocation(line: 149, column: 7, scope: !518)
!530 = !DILocation(line: 153, column: 7, scope: !518)
!531 = !DILocation(line: 154, column: 7, scope: !518)
!532 = !DILocation(line: 155, column: 7, scope: !518)
!533 = !DILocation(line: 159, column: 7, scope: !518)
!534 = !DILocalVariable(name: "program", arg: 1, scope: !535, file: !70, line: 836, type: !58)
!535 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !70, file: !70, line: 836, type: !536, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !58}
!538 = !{!534, !539, !548, !549, !551, !552}
!539 = !DILocalVariable(name: "infomap", scope: !535, file: !70, line: 838, type: !540)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 896, elements: !546)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !535, file: !70, line: 838, size: 128, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !542, file: !70, line: 838, baseType: !58, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !542, file: !70, line: 838, baseType: !58, size: 64, offset: 64)
!546 = !{!547}
!547 = !DISubrange(count: 7)
!548 = !DILocalVariable(name: "node", scope: !535, file: !70, line: 848, type: !58)
!549 = !DILocalVariable(name: "map_prog", scope: !535, file: !70, line: 849, type: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!551 = !DILocalVariable(name: "lc_messages", scope: !535, file: !70, line: 861, type: !58)
!552 = !DILocalVariable(name: "url_program", scope: !535, file: !70, line: 874, type: !58)
!553 = !DILocation(line: 0, scope: !535, inlinedAt: !554)
!554 = distinct !DILocation(line: 166, column: 7, scope: !518)
!555 = !DILocation(line: 838, column: 3, scope: !535, inlinedAt: !554)
!556 = !DILocation(line: 838, column: 67, scope: !535, inlinedAt: !554)
!557 = !DILocation(line: 849, column: 36, scope: !535, inlinedAt: !554)
!558 = !DILocation(line: 851, column: 3, scope: !535, inlinedAt: !554)
!559 = !DILocalVariable(name: "__s1", arg: 1, scope: !560, file: !561, line: 1359, type: !58)
!560 = distinct !DISubprogram(name: "streq", scope: !561, file: !561, line: 1359, type: !562, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!561 = !DIFile(filename: "./lib/string.h", directory: "/src")
!562 = !DISubroutineType(types: !563)
!563 = !{!64, !58, !58}
!564 = !{!559, !565}
!565 = !DILocalVariable(name: "__s2", arg: 2, scope: !560, file: !561, line: 1359, type: !58)
!566 = !DILocation(line: 0, scope: !560, inlinedAt: !567)
!567 = distinct !DILocation(line: 851, column: 33, scope: !535, inlinedAt: !554)
!568 = !DILocation(line: 1361, column: 11, scope: !560, inlinedAt: !567)
!569 = !DILocation(line: 1361, column: 10, scope: !560, inlinedAt: !567)
!570 = !DILocation(line: 852, column: 13, scope: !535, inlinedAt: !554)
!571 = !DILocation(line: 851, column: 20, scope: !535, inlinedAt: !554)
!572 = !{!573, !514, i64 0}
!573 = !{!"infomap", !514, i64 0, !514, i64 8}
!574 = !DILocation(line: 851, column: 10, scope: !535, inlinedAt: !554)
!575 = !DILocation(line: 851, column: 28, scope: !535, inlinedAt: !554)
!576 = distinct !{!576, !558, !570, !577}
!577 = !{!"llvm.loop.mustprogress"}
!578 = !DILocation(line: 854, column: 17, scope: !579, inlinedAt: !554)
!579 = distinct !DILexicalBlock(scope: !535, file: !70, line: 854, column: 7)
!580 = !{!573, !514, i64 8}
!581 = !DILocation(line: 854, column: 7, scope: !579, inlinedAt: !554)
!582 = !DILocation(line: 854, column: 7, scope: !535, inlinedAt: !554)
!583 = !DILocation(line: 857, column: 3, scope: !535, inlinedAt: !554)
!584 = !DILocation(line: 861, column: 29, scope: !535, inlinedAt: !554)
!585 = !DILocation(line: 862, column: 7, scope: !586, inlinedAt: !554)
!586 = distinct !DILexicalBlock(scope: !535, file: !70, line: 862, column: 7)
!587 = !DILocation(line: 862, column: 19, scope: !586, inlinedAt: !554)
!588 = !DILocation(line: 862, column: 22, scope: !586, inlinedAt: !554)
!589 = !DILocation(line: 862, column: 7, scope: !535, inlinedAt: !554)
!590 = !DILocation(line: 868, column: 7, scope: !591, inlinedAt: !554)
!591 = distinct !DILexicalBlock(scope: !586, file: !70, line: 863, column: 5)
!592 = !DILocation(line: 870, column: 5, scope: !591, inlinedAt: !554)
!593 = !DILocation(line: 0, scope: !560, inlinedAt: !594)
!594 = distinct !DILocation(line: 874, column: 29, scope: !535, inlinedAt: !554)
!595 = !DILocation(line: 875, column: 3, scope: !535, inlinedAt: !554)
!596 = !DILocation(line: 877, column: 3, scope: !535, inlinedAt: !554)
!597 = !DILocation(line: 879, column: 1, scope: !535, inlinedAt: !554)
!598 = !DILocation(line: 168, column: 3, scope: !502)
!599 = !DISubprogram(name: "dcgettext", scope: !600, file: !600, line: 51, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!600 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!601 = !DISubroutineType(types: !602)
!602 = !{!50, !58, !58, !53}
!603 = !{}
!604 = !DISubprogram(name: "fputs_unlocked", scope: !216, file: !216, line: 691, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!605 = !DISubroutineType(types: !606)
!606 = !{!53, !607, !608}
!607 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!608 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !92)
!609 = !DILocation(line: 0, scope: !69)
!610 = !DILocation(line: 581, column: 7, scope: !78)
!611 = !{!612, !612, i64 0}
!612 = !{!"int", !515, i64 0}
!613 = !DILocation(line: 581, column: 19, scope: !78)
!614 = !DILocation(line: 581, column: 7, scope: !69)
!615 = !DILocation(line: 585, column: 26, scope: !77)
!616 = !DILocation(line: 0, scope: !77)
!617 = !DILocation(line: 586, column: 23, scope: !77)
!618 = !DILocation(line: 586, column: 28, scope: !77)
!619 = !DILocation(line: 586, column: 32, scope: !77)
!620 = !{!515, !515, i64 0}
!621 = !DILocation(line: 586, column: 38, scope: !77)
!622 = !DILocation(line: 0, scope: !560, inlinedAt: !623)
!623 = distinct !DILocation(line: 586, column: 41, scope: !77)
!624 = !DILocation(line: 1361, column: 11, scope: !560, inlinedAt: !623)
!625 = !DILocation(line: 1361, column: 10, scope: !560, inlinedAt: !623)
!626 = !DILocation(line: 586, column: 19, scope: !77)
!627 = !DILocation(line: 587, column: 5, scope: !77)
!628 = !DILocation(line: 588, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !69, file: !70, line: 588, column: 7)
!630 = !DILocation(line: 588, column: 7, scope: !69)
!631 = !DILocation(line: 590, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !70, line: 589, column: 5)
!633 = !DILocation(line: 591, column: 7, scope: !632)
!634 = !DILocation(line: 595, column: 37, scope: !69)
!635 = !DILocation(line: 595, column: 35, scope: !69)
!636 = !DILocation(line: 596, column: 29, scope: !69)
!637 = !DILocation(line: 597, column: 8, scope: !85)
!638 = !DILocation(line: 597, column: 7, scope: !69)
!639 = !DILocation(line: 604, column: 24, scope: !84)
!640 = !DILocation(line: 604, column: 12, scope: !85)
!641 = !DILocation(line: 0, scope: !83)
!642 = !DILocation(line: 610, column: 16, scope: !83)
!643 = !DILocation(line: 610, column: 7, scope: !83)
!644 = !DILocation(line: 611, column: 21, scope: !83)
!645 = !{!646, !646, i64 0}
!646 = !{!"short", !515, i64 0}
!647 = !DILocation(line: 611, column: 19, scope: !83)
!648 = !DILocation(line: 611, column: 16, scope: !83)
!649 = !DILocation(line: 610, column: 30, scope: !83)
!650 = distinct !{!650, !643, !644, !577}
!651 = !DILocation(line: 612, column: 18, scope: !652)
!652 = distinct !DILexicalBlock(scope: !83, file: !70, line: 612, column: 11)
!653 = !DILocation(line: 612, column: 11, scope: !83)
!654 = !DILocation(line: 620, column: 23, scope: !69)
!655 = !DILocation(line: 625, column: 39, scope: !69)
!656 = !DILocation(line: 626, column: 3, scope: !69)
!657 = !DILocation(line: 626, column: 10, scope: !69)
!658 = !DILocation(line: 626, column: 21, scope: !69)
!659 = !DILocation(line: 628, column: 44, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !70, line: 628, column: 11)
!661 = distinct !DILexicalBlock(scope: !69, file: !70, line: 627, column: 5)
!662 = !DILocation(line: 628, column: 32, scope: !660)
!663 = !DILocation(line: 628, column: 49, scope: !660)
!664 = !DILocation(line: 628, column: 11, scope: !661)
!665 = !DILocation(line: 630, column: 11, scope: !666)
!666 = distinct !DILexicalBlock(scope: !661, file: !70, line: 630, column: 11)
!667 = !DILocation(line: 630, column: 11, scope: !661)
!668 = !DILocation(line: 632, column: 26, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !70, line: 632, column: 15)
!670 = distinct !DILexicalBlock(scope: !666, file: !70, line: 631, column: 9)
!671 = !DILocation(line: 632, column: 34, scope: !669)
!672 = !DILocation(line: 632, column: 37, scope: !669)
!673 = !DILocation(line: 632, column: 15, scope: !670)
!674 = !DILocation(line: 636, column: 29, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !70, line: 636, column: 15)
!676 = !DILocation(line: 640, column: 16, scope: !661)
!677 = distinct !{!677, !656, !678, !577}
!678 = !DILocation(line: 641, column: 5, scope: !69)
!679 = !DILocation(line: 644, column: 3, scope: !69)
!680 = !DILocation(line: 0, scope: !560, inlinedAt: !681)
!681 = distinct !DILocation(line: 648, column: 31, scope: !69)
!682 = !DILocation(line: 0, scope: !560, inlinedAt: !683)
!683 = distinct !DILocation(line: 649, column: 31, scope: !69)
!684 = !DILocation(line: 0, scope: !560, inlinedAt: !685)
!685 = distinct !DILocation(line: 650, column: 31, scope: !69)
!686 = !DILocation(line: 0, scope: !560, inlinedAt: !687)
!687 = distinct !DILocation(line: 651, column: 31, scope: !69)
!688 = !DILocation(line: 0, scope: !560, inlinedAt: !689)
!689 = distinct !DILocation(line: 652, column: 31, scope: !69)
!690 = !DILocation(line: 0, scope: !560, inlinedAt: !691)
!691 = distinct !DILocation(line: 653, column: 31, scope: !69)
!692 = !DILocation(line: 0, scope: !560, inlinedAt: !693)
!693 = distinct !DILocation(line: 654, column: 31, scope: !69)
!694 = !DILocation(line: 0, scope: !560, inlinedAt: !695)
!695 = distinct !DILocation(line: 655, column: 31, scope: !69)
!696 = !DILocation(line: 0, scope: !560, inlinedAt: !697)
!697 = distinct !DILocation(line: 656, column: 31, scope: !69)
!698 = !DILocation(line: 0, scope: !560, inlinedAt: !699)
!699 = distinct !DILocation(line: 657, column: 31, scope: !69)
!700 = !DILocation(line: 663, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !69, file: !70, line: 663, column: 7)
!702 = !DILocation(line: 664, column: 7, scope: !701)
!703 = !DILocation(line: 664, column: 10, scope: !701)
!704 = !DILocation(line: 663, column: 7, scope: !69)
!705 = !DILocation(line: 669, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !70, line: 665, column: 5)
!707 = !DILocation(line: 671, column: 5, scope: !706)
!708 = !DILocation(line: 676, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !701, file: !70, line: 673, column: 5)
!710 = !DILocation(line: 679, column: 3, scope: !69)
!711 = !DILocation(line: 683, column: 3, scope: !69)
!712 = !DILocation(line: 686, column: 3, scope: !69)
!713 = !DILocation(line: 688, column: 3, scope: !69)
!714 = !DILocation(line: 691, column: 3, scope: !69)
!715 = !DILocation(line: 695, column: 3, scope: !69)
!716 = !DILocation(line: 696, column: 1, scope: !69)
!717 = !DISubprogram(name: "setlocale", scope: !718, file: !718, line: 122, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!718 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!719 = !DISubroutineType(types: !720)
!720 = !{!50, !53, !58}
!721 = !DISubprogram(name: "getenv", scope: !722, file: !722, line: 641, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!722 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!723 = !DISubroutineType(types: !724)
!724 = !{!50, !58}
!725 = !DISubprogram(name: "fwrite_unlocked", scope: !216, file: !216, line: 704, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!726 = !DISubroutineType(types: !727)
!727 = !{!55, !728, !55, !55, !608}
!728 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!731 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 424, type: !732, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !735)
!732 = !DISubroutineType(types: !733)
!733 = !{!53, !53, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!735 = !{!736, !737, !738}
!736 = !DILocalVariable(name: "argc", arg: 1, scope: !731, file: !3, line: 424, type: !53)
!737 = !DILocalVariable(name: "argv", arg: 2, scope: !731, file: !3, line: 424, type: !734)
!738 = !DILocalVariable(name: "c", scope: !731, file: !3, line: 426, type: !53)
!739 = !DILocation(line: 0, scope: !731)
!740 = !DILocation(line: 429, column: 21, scope: !731)
!741 = !DILocation(line: 429, column: 3, scope: !731)
!742 = !DILocation(line: 430, column: 3, scope: !731)
!743 = !DILocation(line: 431, column: 3, scope: !731)
!744 = !DILocation(line: 432, column: 3, scope: !731)
!745 = !DILocation(line: 433, column: 21, scope: !731)
!746 = !DILocation(line: 433, column: 19, scope: !731)
!747 = !{!748, !748, i64 0}
!748 = !{!"_Bool", !515, i64 0}
!749 = !DILocation(line: 435, column: 3, scope: !731)
!750 = !DILocation(line: 437, column: 3, scope: !731)
!751 = !DILocation(line: 437, column: 15, scope: !731)
!752 = !DILocation(line: 441, column: 21, scope: !753)
!753 = distinct !DILexicalBlock(scope: !731, file: !3, line: 439, column: 7)
!754 = !DILocation(line: 442, column: 9, scope: !753)
!755 = !DILocation(line: 445, column: 21, scope: !753)
!756 = !DILocation(line: 446, column: 9, scope: !753)
!757 = !DILocation(line: 449, column: 14, scope: !753)
!758 = !DILocation(line: 450, column: 9, scope: !753)
!759 = !DILocation(line: 453, column: 15, scope: !753)
!760 = !DILocation(line: 454, column: 9, scope: !753)
!761 = !DILocation(line: 457, column: 27, scope: !753)
!762 = !DILocation(line: 458, column: 9, scope: !753)
!763 = !DILocation(line: 461, column: 27, scope: !753)
!764 = !DILocation(line: 462, column: 9, scope: !753)
!765 = !DILocation(line: 465, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !753, file: !3, line: 465, column: 13)
!767 = !{!768, !768, i64 0}
!768 = !{!"long", !515, i64 0}
!769 = !DILocation(line: 465, column: 25, scope: !766)
!770 = !DILocation(line: 467, column: 19, scope: !753)
!771 = !DILocation(line: 465, column: 36, scope: !766)
!772 = !DILocation(line: 465, column: 45, scope: !766)
!773 = !DILocation(line: 0, scope: !560, inlinedAt: !774)
!774 = distinct !DILocation(line: 465, column: 29, scope: !766)
!775 = !DILocation(line: 1361, column: 11, scope: !560, inlinedAt: !774)
!776 = !DILocation(line: 1361, column: 10, scope: !560, inlinedAt: !774)
!777 = !DILocation(line: 465, column: 13, scope: !753)
!778 = !DILocation(line: 466, column: 11, scope: !766)
!779 = !DILocation(line: 467, column: 17, scope: !753)
!780 = !DILocation(line: 468, column: 23, scope: !753)
!781 = !DILocation(line: 468, column: 33, scope: !753)
!782 = !DILocation(line: 468, column: 21, scope: !753)
!783 = !DILocation(line: 469, column: 9, scope: !753)
!784 = !DILocation(line: 472, column: 22, scope: !753)
!785 = !DILocation(line: 473, column: 9, scope: !753)
!786 = distinct !{!786, !750, !787, !577}
!787 = !DILocation(line: 481, column: 7, scope: !731)
!788 = !DILocation(line: 475, column: 7, scope: !753)
!789 = !DILocation(line: 477, column: 7, scope: !753)
!790 = !DILocation(line: 480, column: 9, scope: !753)
!791 = !DILocation(line: 483, column: 9, scope: !792)
!792 = distinct !DILexicalBlock(scope: !731, file: !3, line: 483, column: 7)
!793 = !DILocation(line: 483, column: 7, scope: !731)
!794 = !DILocation(line: 484, column: 17, scope: !792)
!795 = !DILocation(line: 484, column: 5, scope: !792)
!796 = !DILocation(line: 486, column: 14, scope: !797)
!797 = distinct !DILexicalBlock(scope: !731, file: !3, line: 486, column: 7)
!798 = !DILocation(line: 486, column: 12, scope: !797)
!799 = !DILocation(line: 486, column: 21, scope: !797)
!800 = !DILocation(line: 486, column: 7, scope: !731)
!801 = !DILocation(line: 488, column: 16, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 488, column: 11)
!803 = distinct !DILexicalBlock(scope: !797, file: !3, line: 487, column: 5)
!804 = !DILocation(line: 488, column: 11, scope: !803)
!805 = !DILocation(line: 489, column: 9, scope: !802)
!806 = !DILocation(line: 491, column: 9, scope: !802)
!807 = !DILocation(line: 492, column: 7, scope: !803)
!808 = !DILocation(line: 495, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !731, file: !3, line: 495, column: 7)
!810 = !DILocation(line: 495, column: 7, scope: !731)
!811 = !DILocation(line: 497, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !3, line: 496, column: 5)
!813 = !DILocation(line: 498, column: 7, scope: !812)
!814 = !DILocation(line: 501, column: 23, scope: !731)
!815 = !DILocation(line: 501, column: 3, scope: !731)
!816 = !DISubprogram(name: "bindtextdomain", scope: !600, file: !600, line: 86, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!817 = !DISubroutineType(types: !818)
!818 = !{!50, !58, !58}
!819 = !DISubprogram(name: "textdomain", scope: !600, file: !600, line: 82, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!820 = !DISubprogram(name: "atexit", scope: !722, file: !722, line: 602, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!821 = !DISubroutineType(types: !822)
!822 = !{!53, !242}
!823 = !DISubprogram(name: "getopt_long", scope: !158, file: !158, line: 66, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!824 = !DISubroutineType(types: !825)
!825 = !{!53, !53, !826, !58, !828, !163}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!829 = distinct !DISubprogram(name: "compare_files", scope: !3, file: !3, line: 261, type: !830, scopeLine: 262, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !734}
!832 = !{!833, !834, !842, !845, !847, !851, !853, !859, !861, !865, !867, !868, !874, !876}
!833 = !DILocalVariable(name: "infiles", arg: 1, scope: !829, file: !3, line: 261, type: !734)
!834 = !DILocalVariable(name: "lba", scope: !829, file: !3, line: 264, type: !835)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 1536, elements: !342)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !837, line: 32, size: 192, elements: !838)
!837 = !DIFile(filename: "./lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!838 = !{!839, !840, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !836, file: !837, line: 34, baseType: !462, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !836, file: !837, line: 35, baseType: !462, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !836, file: !837, line: 36, baseType: !50, size: 64, offset: 128)
!842 = !DILocalVariable(name: "thisline", scope: !829, file: !3, line: 268, type: !843)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 128, elements: !184)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!845 = !DILocalVariable(name: "all_line", scope: !829, file: !3, line: 273, type: !846)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 512, elements: !342)
!847 = !DILocalVariable(name: "alt", scope: !829, file: !3, line: 276, type: !848)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !849)
!849 = !{!185, !850}
!850 = !DISubrange(count: 3)
!851 = !DILocalVariable(name: "streams", scope: !829, file: !3, line: 279, type: !852)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !184)
!853 = !DILocalVariable(name: "total", scope: !829, file: !3, line: 282, type: !854)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 192, elements: !858)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !856, line: 102, baseType: !857)
!856 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !119, line: 73, baseType: !57)
!858 = !{!850}
!859 = !DILocalVariable(name: "i", scope: !860, file: !3, line: 285, type: !53)
!860 = distinct !DILexicalBlock(scope: !829, file: !3, line: 285, column: 3)
!861 = !DILocalVariable(name: "j", scope: !862, file: !3, line: 287, type: !53)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 287, column: 7)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 286, column: 5)
!864 = distinct !DILexicalBlock(scope: !860, file: !3, line: 285, column: 3)
!865 = !DILocalVariable(name: "order", scope: !866, file: !3, line: 309, type: !53)
!866 = distinct !DILexicalBlock(scope: !829, file: !3, line: 308, column: 5)
!867 = !DILocalVariable(name: "fill_up", scope: !866, file: !3, line: 310, type: !183)
!868 = !DILocalVariable(name: "len", scope: !869, file: !3, line: 325, type: !55)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 324, column: 13)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 320, column: 15)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 319, column: 9)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 316, column: 16)
!873 = distinct !DILexicalBlock(scope: !866, file: !3, line: 314, column: 11)
!874 = !DILocalVariable(name: "i", scope: !875, file: !3, line: 363, type: !53)
!875 = distinct !DILexicalBlock(scope: !866, file: !3, line: 363, column: 7)
!876 = !DILocalVariable(name: "i", scope: !877, file: !3, line: 391, type: !53)
!877 = distinct !DILexicalBlock(scope: !829, file: !3, line: 391, column: 3)
!878 = !DILocation(line: 0, scope: !829)
!879 = !DILocation(line: 264, column: 3, scope: !829)
!880 = !DILocation(line: 264, column: 21, scope: !829)
!881 = !DILocation(line: 273, column: 3, scope: !829)
!882 = !DILocation(line: 273, column: 22, scope: !829)
!883 = !DILocation(line: 0, scope: !860)
!884 = !DILocation(line: 0, scope: !862)
!885 = !DILocation(line: 289, column: 24, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 288, column: 9)
!887 = distinct !DILexicalBlock(scope: !862, file: !3, line: 287, column: 7)
!888 = !DILocation(line: 289, column: 11, scope: !886)
!889 = !DILocation(line: 290, column: 11, scope: !886)
!890 = !DILocation(line: 290, column: 26, scope: !886)
!891 = !DILocation(line: 295, column: 28, scope: !863)
!892 = !DILocation(line: 0, scope: !560, inlinedAt: !893)
!893 = distinct !DILocation(line: 295, column: 21, scope: !863)
!894 = !DILocation(line: 1361, column: 11, scope: !560, inlinedAt: !893)
!895 = !DILocation(line: 1361, column: 10, scope: !560, inlinedAt: !893)
!896 = !DILocation(line: 295, column: 21, scope: !863)
!897 = !DILocation(line: 295, column: 47, scope: !863)
!898 = !DILocation(line: 295, column: 55, scope: !863)
!899 = !DILocation(line: 296, column: 12, scope: !900)
!900 = distinct !DILexicalBlock(scope: !863, file: !3, line: 296, column: 11)
!901 = !DILocation(line: 296, column: 11, scope: !863)
!902 = !DILocation(line: 297, column: 9, scope: !900)
!903 = !DILocation(line: 299, column: 7, scope: !863)
!904 = !DILocation(line: 302, column: 43, scope: !863)
!905 = !DILocation(line: 301, column: 21, scope: !863)
!906 = !DILocalVariable(name: "__stream", arg: 1, scope: !907, file: !908, line: 135, type: !92)
!907 = distinct !DISubprogram(name: "ferror_unlocked", scope: !908, file: !908, line: 135, type: !909, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!908 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!909 = !DISubroutineType(types: !910)
!910 = !{!53, !92}
!911 = !{!906}
!912 = !DILocation(line: 0, scope: !907, inlinedAt: !913)
!913 = distinct !DILocation(line: 303, column: 11, scope: !914)
!914 = distinct !DILexicalBlock(scope: !863, file: !3, line: 303, column: 11)
!915 = !DILocation(line: 137, column: 10, scope: !907, inlinedAt: !913)
!916 = !{!917, !612, i64 0}
!917 = !{!"_IO_FILE", !612, i64 0, !514, i64 8, !514, i64 16, !514, i64 24, !514, i64 32, !514, i64 40, !514, i64 48, !514, i64 56, !514, i64 64, !514, i64 72, !514, i64 80, !514, i64 88, !514, i64 96, !514, i64 104, !612, i64 112, !612, i64 116, !768, i64 120, !646, i64 128, !515, i64 130, !515, i64 131, !514, i64 136, !768, i64 144, !514, i64 152, !514, i64 160, !514, i64 168, !514, i64 176, !768, i64 184, !612, i64 192, !515, i64 196}
!918 = !DILocation(line: 303, column: 11, scope: !914)
!919 = !DILocation(line: 303, column: 11, scope: !863)
!920 = !DILocation(line: 304, column: 9, scope: !914)
!921 = !DILocation(line: 307, column: 10, scope: !829)
!922 = !DILocation(line: 307, column: 22, scope: !829)
!923 = !DILocation(line: 307, column: 3, scope: !829)
!924 = !DILocation(line: 282, column: 13, scope: !829)
!925 = !DILocation(line: 0, scope: !877)
!926 = !DILocation(line: 392, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 392, column: 9)
!928 = distinct !DILexicalBlock(scope: !877, file: !3, line: 391, column: 3)
!929 = !DILocation(line: 392, column: 29, scope: !927)
!930 = !DILocation(line: 392, column: 9, scope: !928)
!931 = !DILocation(line: 293, column: 17, scope: !863)
!932 = !DILocation(line: 292, column: 17, scope: !863)
!933 = !DILocation(line: 301, column: 19, scope: !863)
!934 = !DILocation(line: 310, column: 12, scope: !866)
!935 = !DILocation(line: 314, column: 12, scope: !873)
!936 = !DILocation(line: 314, column: 11, scope: !866)
!937 = !DILocation(line: 341, column: 27, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 340, column: 9)
!939 = distinct !DILexicalBlock(scope: !866, file: !3, line: 333, column: 11)
!940 = !DILocation(line: 342, column: 15, scope: !938)
!941 = !DILocation(line: 316, column: 17, scope: !872)
!942 = !DILocation(line: 316, column: 16, scope: !873)
!943 = !DILocation(line: 320, column: 15, scope: !870)
!944 = !{i8 0, i8 2}
!945 = !DILocation(line: 320, column: 15, scope: !871)
!946 = !DILocation(line: 321, column: 44, scope: !870)
!947 = !{!948, !514, i64 16}
!948 = !{!"linebuffer", !768, i64 0, !768, i64 8, !514, i64 16}
!949 = !DILocation(line: 321, column: 65, scope: !870)
!950 = !{!948, !768, i64 8}
!951 = !DILocation(line: 321, column: 72, scope: !870)
!952 = !DILocation(line: 322, column: 44, scope: !870)
!953 = !DILocation(line: 322, column: 65, scope: !870)
!954 = !DILocation(line: 322, column: 72, scope: !870)
!955 = !DILocation(line: 321, column: 21, scope: !870)
!956 = !DILocation(line: 0, scope: !866)
!957 = !DILocation(line: 321, column: 13, scope: !870)
!958 = !DILocation(line: 325, column: 28, scope: !869)
!959 = !DILocation(line: 325, column: 75, scope: !869)
!960 = !DILocation(line: 0, scope: !869)
!961 = !DILocation(line: 326, column: 44, scope: !869)
!962 = !DILocation(line: 326, column: 65, scope: !869)
!963 = !DILocation(line: 326, column: 23, scope: !869)
!964 = !DILocation(line: 327, column: 25, scope: !965)
!965 = distinct !DILexicalBlock(scope: !869, file: !3, line: 327, column: 19)
!966 = !DILocation(line: 327, column: 19, scope: !869)
!967 = !DILocation(line: 328, column: 25, scope: !965)
!968 = !DILocation(line: 328, column: 17, scope: !965)
!969 = !DILocation(line: 0, scope: !873)
!970 = !DILocation(line: 333, column: 17, scope: !939)
!971 = !DILocation(line: 333, column: 11, scope: !866)
!972 = !DILocation(line: 336, column: 19, scope: !973)
!973 = distinct !DILexicalBlock(scope: !939, file: !3, line: 334, column: 9)
!974 = !DILocation(line: 337, column: 11, scope: !973)
!975 = !DILocation(line: 360, column: 11, scope: !866)
!976 = !DILocation(line: 342, column: 21, scope: !977)
!977 = distinct !DILexicalBlock(scope: !938, file: !3, line: 342, column: 15)
!978 = !DILocation(line: 345, column: 23, scope: !979)
!979 = distinct !DILexicalBlock(scope: !977, file: !3, line: 343, column: 13)
!980 = !DILocation(line: 346, column: 15, scope: !979)
!981 = !DILocation(line: 351, column: 23, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 349, column: 13)
!983 = !DILocation(line: 352, column: 15, scope: !982)
!984 = !DILocation(line: 0, scope: !875)
!985 = !DILocation(line: 364, column: 13, scope: !986)
!986 = distinct !DILexicalBlock(scope: !875, file: !3, line: 363, column: 7)
!987 = !DILocation(line: 369, column: 36, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 365, column: 11)
!989 = distinct !DILexicalBlock(scope: !986, file: !3, line: 364, column: 13)
!990 = !DILocation(line: 369, column: 41, scope: !988)
!991 = !DILocation(line: 371, column: 49, scope: !988)
!992 = !DILocation(line: 372, column: 61, scope: !988)
!993 = !DILocation(line: 371, column: 27, scope: !988)
!994 = !DILocation(line: 374, column: 17, scope: !995)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 374, column: 17)
!996 = !DILocation(line: 374, column: 17, scope: !988)
!997 = !DILocation(line: 375, column: 28, scope: !995)
!998 = !DILocation(line: 375, column: 15, scope: !995)
!999 = !DILocation(line: 380, column: 22, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !3, line: 380, column: 22)
!1001 = !DILocation(line: 380, column: 46, scope: !1000)
!1002 = !DILocation(line: 380, column: 22, scope: !995)
!1003 = !DILocation(line: 382, column: 28, scope: !1000)
!1004 = !DILocation(line: 381, column: 15, scope: !1000)
!1005 = !DILocation(line: 0, scope: !907, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 384, column: 17, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !988, file: !3, line: 384, column: 17)
!1008 = !DILocation(line: 137, column: 10, scope: !907, inlinedAt: !1006)
!1009 = !DILocation(line: 384, column: 17, scope: !1007)
!1010 = !DILocation(line: 384, column: 17, scope: !988)
!1011 = !DILocation(line: 385, column: 15, scope: !1007)
!1012 = distinct !{!1012, !923, !1013, !577}
!1013 = !DILocation(line: 389, column: 5, scope: !829)
!1014 = !DILocation(line: 393, column: 7, scope: !927)
!1015 = !DILocation(line: 395, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !829, file: !3, line: 395, column: 7)
!1017 = !DILocation(line: 395, column: 7, scope: !829)
!1018 = !DILocation(line: 398, column: 11, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 398, column: 11)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 396, column: 5)
!1021 = !DILocation(line: 398, column: 23, scope: !1019)
!1022 = !DILocation(line: 0, scope: !1019)
!1023 = !DILocation(line: 398, column: 11, scope: !1020)
!1024 = !DILocation(line: 400, column: 11, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 399, column: 9)
!1026 = !DILocation(line: 405, column: 9, scope: !1025)
!1027 = !DILocation(line: 408, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 407, column: 9)
!1029 = !DILocation(line: 416, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !829, file: !3, line: 416, column: 7)
!1031 = !DILocation(line: 416, column: 34, scope: !1030)
!1032 = !DILocation(line: 417, column: 5, scope: !1030)
!1033 = !DILocation(line: 420, column: 3, scope: !829)
!1034 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 177, type: !1035, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1039)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1037, !53}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!1039 = !{!1040, !1041, !1042, !1046, !1047, !1048, !1051, !1052, !1053, !1056, !1057, !1058, !1060, !1061}
!1040 = !DILocalVariable(name: "line", arg: 1, scope: !1034, file: !3, line: 177, type: !1037)
!1041 = !DILocalVariable(name: "class", arg: 2, scope: !1034, file: !3, line: 177, type: !53)
!1042 = !DILocalVariable(name: "__ptr", scope: !1043, file: !3, line: 190, type: !58)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 190, column: 9)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 189, column: 11)
!1045 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 180, column: 5)
!1046 = !DILocalVariable(name: "__stream", scope: !1043, file: !3, line: 190, type: !92)
!1047 = !DILocalVariable(name: "__cnt", scope: !1043, file: !3, line: 190, type: !55)
!1048 = !DILocalVariable(name: "__ptr", scope: !1049, file: !3, line: 197, type: !58)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 197, column: 9)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 196, column: 11)
!1051 = !DILocalVariable(name: "__stream", scope: !1049, file: !3, line: 197, type: !92)
!1052 = !DILocalVariable(name: "__cnt", scope: !1049, file: !3, line: 197, type: !55)
!1053 = !DILocalVariable(name: "__ptr", scope: !1054, file: !3, line: 199, type: !58)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 199, column: 9)
!1055 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 198, column: 11)
!1056 = !DILocalVariable(name: "__stream", scope: !1054, file: !3, line: 199, type: !92)
!1057 = !DILocalVariable(name: "__cnt", scope: !1054, file: !3, line: 199, type: !55)
!1058 = !DILocalVariable(name: "__ptr", scope: !1059, file: !3, line: 203, type: !58)
!1059 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 203, column: 3)
!1060 = !DILocalVariable(name: "__stream", scope: !1059, file: !3, line: 203, type: !92)
!1061 = !DILocalVariable(name: "__cnt", scope: !1059, file: !3, line: 203, type: !55)
!1062 = !DILocation(line: 0, scope: !1034)
!1063 = !DILocation(line: 179, column: 3, scope: !1034)
!1064 = !DILocation(line: 182, column: 12, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 182, column: 11)
!1066 = !DILocation(line: 182, column: 11, scope: !1045)
!1067 = !DILocation(line: 187, column: 12, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 187, column: 11)
!1069 = !DILocation(line: 187, column: 11, scope: !1045)
!1070 = !DILocation(line: 189, column: 11, scope: !1044)
!1071 = !DILocation(line: 189, column: 11, scope: !1045)
!1072 = !DILocation(line: 194, column: 12, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 194, column: 11)
!1074 = !DILocation(line: 194, column: 11, scope: !1045)
!1075 = !DILocation(line: 196, column: 11, scope: !1050)
!1076 = !DILocation(line: 196, column: 11, scope: !1045)
!1077 = !DILocation(line: 197, column: 9, scope: !1050)
!1078 = !DILocation(line: 198, column: 11, scope: !1055)
!1079 = !DILocation(line: 198, column: 11, scope: !1045)
!1080 = !DILocation(line: 0, scope: !1045)
!1081 = !DILocation(line: 203, column: 3, scope: !1034)
!1082 = !DILocation(line: 205, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 205, column: 7)
!1084 = !DILocation(line: 0, scope: !907, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 205, column: 7, scope: !1083)
!1086 = !DILocation(line: 137, column: 10, scope: !907, inlinedAt: !1085)
!1087 = !DILocation(line: 205, column: 7, scope: !1034)
!1088 = !DILocation(line: 948, column: 21, scope: !1089, inlinedAt: !1092)
!1089 = distinct !DISubprogram(name: "write_error", scope: !70, file: !70, line: 946, type: !243, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1090)
!1090 = !{!1091}
!1091 = !DILocalVariable(name: "saved_errno", scope: !1089, file: !70, line: 948, type: !53)
!1092 = distinct !DILocation(line: 206, column: 5, scope: !1083)
!1093 = !DILocation(line: 0, scope: !1089, inlinedAt: !1092)
!1094 = !DILocation(line: 949, column: 3, scope: !1089, inlinedAt: !1092)
!1095 = !DILocation(line: 950, column: 11, scope: !1089, inlinedAt: !1092)
!1096 = !DILocation(line: 950, column: 3, scope: !1089, inlinedAt: !1092)
!1097 = !DILocation(line: 951, column: 3, scope: !1089, inlinedAt: !1092)
!1098 = !DILocation(line: 952, column: 3, scope: !1089, inlinedAt: !1092)
!1099 = !DILocation(line: 207, column: 1, scope: !1034)
!1100 = distinct !DISubprogram(name: "check_order", scope: !3, file: !3, line: 221, type: !1101, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !1037, !1037, !53}
!1103 = !{!1104, !1105, !1106, !1107, !1112}
!1104 = !DILocalVariable(name: "prev", arg: 1, scope: !1100, file: !3, line: 221, type: !1037)
!1105 = !DILocalVariable(name: "current", arg: 2, scope: !1100, file: !3, line: 222, type: !1037)
!1106 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1100, file: !3, line: 223, type: !53)
!1107 = !DILocalVariable(name: "order", scope: !1108, file: !3, line: 231, type: !53)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 230, column: 9)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 229, column: 11)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 228, column: 5)
!1111 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 226, column: 7)
!1112 = !DILocalVariable(name: "__errstatus", scope: !1113, file: !3, line: 242, type: !1116)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 242, column: 15)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 241, column: 13)
!1115 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 240, column: 15)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!1117 = !DILocation(line: 0, scope: !1100)
!1118 = !DILocation(line: 226, column: 7, scope: !1111)
!1119 = !DILocation(line: 227, column: 7, scope: !1111)
!1120 = !DILocation(line: 227, column: 57, scope: !1111)
!1121 = !DILocation(line: 226, column: 7, scope: !1100)
!1122 = !DILocation(line: 229, column: 45, scope: !1109)
!1123 = !DILocation(line: 229, column: 12, scope: !1109)
!1124 = !DILocation(line: 229, column: 11, scope: !1110)
!1125 = !DILocation(line: 233, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 233, column: 15)
!1127 = !DILocation(line: 0, scope: !1126)
!1128 = !DILocation(line: 233, column: 15, scope: !1108)
!1129 = !DILocation(line: 234, column: 21, scope: !1126)
!1130 = !DILocation(line: 0, scope: !1108)
!1131 = !DILocation(line: 234, column: 13, scope: !1126)
!1132 = !DILocation(line: 237, column: 21, scope: !1126)
!1133 = !DILocation(line: 240, column: 17, scope: !1115)
!1134 = !DILocation(line: 240, column: 15, scope: !1108)
!1135 = !DILocation(line: 242, column: 15, scope: !1114)
!1136 = !DILocation(line: 0, scope: !1114)
!1137 = !DILocation(line: 0, scope: !1113)
!1138 = !DILocation(line: 242, column: 15, scope: !1113)
!1139 = !DILocation(line: 248, column: 53, scope: !1114)
!1140 = !DILocation(line: 249, column: 13, scope: !1114)
!1141 = !DILocation(line: 252, column: 1, scope: !1100)
!1142 = !DISubprogram(name: "fflush_unlocked", scope: !216, file: !216, line: 239, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1143 = !DISubprogram(name: "clearerr_unlocked", scope: !216, file: !216, line: 794, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !92}
!1146 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !200, file: !200, line: 50, type: !536, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1147)
!1147 = !{!1148}
!1148 = !DILocalVariable(name: "file", arg: 1, scope: !1146, file: !200, line: 50, type: !58)
!1149 = !DILocation(line: 0, scope: !1146)
!1150 = !DILocation(line: 52, column: 13, scope: !1146)
!1151 = !DILocation(line: 53, column: 1, scope: !1146)
!1152 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !200, file: !200, line: 87, type: !1153, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !64}
!1155 = !{!1156}
!1156 = !DILocalVariable(name: "ignore", arg: 1, scope: !1152, file: !200, line: 87, type: !64)
!1157 = !DILocation(line: 0, scope: !1152)
!1158 = !DILocation(line: 89, column: 16, scope: !1152)
!1159 = !DILocation(line: 90, column: 1, scope: !1152)
!1160 = distinct !DISubprogram(name: "close_stdout", scope: !200, file: !200, line: 116, type: !243, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1161)
!1161 = !{!1162}
!1162 = !DILocalVariable(name: "write_error", scope: !1163, file: !200, line: 121, type: !58)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !200, line: 120, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !200, line: 118, column: 7)
!1165 = !DILocation(line: 118, column: 21, scope: !1164)
!1166 = !DILocation(line: 118, column: 7, scope: !1164)
!1167 = !DILocation(line: 118, column: 29, scope: !1164)
!1168 = !DILocation(line: 119, column: 7, scope: !1164)
!1169 = !DILocation(line: 119, column: 12, scope: !1164)
!1170 = !DILocation(line: 119, column: 25, scope: !1164)
!1171 = !DILocation(line: 119, column: 28, scope: !1164)
!1172 = !DILocation(line: 119, column: 34, scope: !1164)
!1173 = !DILocation(line: 118, column: 7, scope: !1160)
!1174 = !DILocation(line: 121, column: 33, scope: !1163)
!1175 = !DILocation(line: 0, scope: !1163)
!1176 = !DILocation(line: 122, column: 11, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1163, file: !200, line: 122, column: 11)
!1178 = !DILocation(line: 0, scope: !1177)
!1179 = !DILocation(line: 122, column: 11, scope: !1163)
!1180 = !DILocation(line: 123, column: 9, scope: !1177)
!1181 = !DILocation(line: 126, column: 9, scope: !1177)
!1182 = !DILocation(line: 128, column: 14, scope: !1163)
!1183 = !DILocation(line: 128, column: 7, scope: !1163)
!1184 = !DILocation(line: 133, column: 42, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1160, file: !200, line: 133, column: 7)
!1186 = !DILocation(line: 133, column: 28, scope: !1185)
!1187 = !DILocation(line: 133, column: 50, scope: !1185)
!1188 = !DILocation(line: 133, column: 7, scope: !1160)
!1189 = !DILocation(line: 134, column: 12, scope: !1185)
!1190 = !DILocation(line: 134, column: 5, scope: !1185)
!1191 = !DILocation(line: 135, column: 1, scope: !1160)
!1192 = distinct !DISubprogram(name: "verror", scope: !207, file: !207, line: 251, type: !1193, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !53, !53, !58, !215}
!1195 = !{!1196, !1197, !1198, !1199}
!1196 = !DILocalVariable(name: "status", arg: 1, scope: !1192, file: !207, line: 251, type: !53)
!1197 = !DILocalVariable(name: "errnum", arg: 2, scope: !1192, file: !207, line: 251, type: !53)
!1198 = !DILocalVariable(name: "message", arg: 3, scope: !1192, file: !207, line: 251, type: !58)
!1199 = !DILocalVariable(name: "args", arg: 4, scope: !1192, file: !207, line: 251, type: !215)
!1200 = !DILocation(line: 0, scope: !1192)
!1201 = !DILocation(line: 251, column: 1, scope: !1192)
!1202 = !DILocation(line: 261, column: 3, scope: !1192)
!1203 = !DILocation(line: 265, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1192, file: !207, line: 265, column: 7)
!1205 = !DILocation(line: 265, column: 7, scope: !1192)
!1206 = !DILocation(line: 266, column: 5, scope: !1204)
!1207 = !DILocation(line: 272, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !207, line: 268, column: 5)
!1209 = !DILocation(line: 276, column: 3, scope: !1192)
!1210 = !{i64 0, i64 8, !513, i64 8, i64 8, !513, i64 16, i64 8, !513, i64 24, i64 4, !611, i64 28, i64 4, !611}
!1211 = !DILocation(line: 282, column: 1, scope: !1192)
!1212 = distinct !DISubprogram(name: "flush_stdout", scope: !207, file: !207, line: 163, type: !243, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1213)
!1213 = !{!1214}
!1214 = !DILocalVariable(name: "stdout_fd", scope: !1212, file: !207, line: 166, type: !53)
!1215 = !DILocation(line: 0, scope: !1212)
!1216 = !DILocalVariable(name: "fd", arg: 1, scope: !1217, file: !207, line: 145, type: !53)
!1217 = distinct !DISubprogram(name: "is_open", scope: !207, file: !207, line: 145, type: !1218, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!53, !53}
!1220 = !{!1216}
!1221 = !DILocation(line: 0, scope: !1217, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 182, column: 25, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1212, file: !207, line: 182, column: 7)
!1224 = !DILocation(line: 157, column: 15, scope: !1217, inlinedAt: !1222)
!1225 = !DILocation(line: 182, column: 25, scope: !1223)
!1226 = !DILocation(line: 182, column: 7, scope: !1212)
!1227 = !DILocation(line: 184, column: 5, scope: !1223)
!1228 = !DILocation(line: 185, column: 1, scope: !1212)
!1229 = distinct !DISubprogram(name: "error_tail", scope: !207, file: !207, line: 219, type: !1193, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1230)
!1230 = !{!1231, !1232, !1233, !1234}
!1231 = !DILocalVariable(name: "status", arg: 1, scope: !1229, file: !207, line: 219, type: !53)
!1232 = !DILocalVariable(name: "errnum", arg: 2, scope: !1229, file: !207, line: 219, type: !53)
!1233 = !DILocalVariable(name: "message", arg: 3, scope: !1229, file: !207, line: 219, type: !58)
!1234 = !DILocalVariable(name: "args", arg: 4, scope: !1229, file: !207, line: 219, type: !215)
!1235 = !DILocation(line: 0, scope: !1229)
!1236 = !DILocation(line: 219, column: 1, scope: !1229)
!1237 = !DILocation(line: 229, column: 13, scope: !1229)
!1238 = !DILocation(line: 229, column: 3, scope: !1229)
!1239 = !DILocalVariable(name: "__stream", arg: 1, scope: !1240, file: !1241, line: 132, type: !1244)
!1240 = distinct !DISubprogram(name: "vfprintf", scope: !1241, file: !1241, line: 132, type: !1242, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1279)
!1241 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!53, !1244, !607, !217}
!1244 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1247, file: !96, line: 51, baseType: !53, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1247, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1247, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1247, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1247, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1247, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1247, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1247, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1247, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1247, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1247, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1247, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1247, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1247, file: !96, line: 70, baseType: !1263, size: 64, offset: 832)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1247, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1247, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1247, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1247, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1247, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1247, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1247, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1247, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1247, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1247, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1247, file: !96, line: 93, baseType: !1263, size: 64, offset: 1344)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1247, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1247, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1247, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1247, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1279 = !{!1239, !1280, !1281}
!1280 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1240, file: !1241, line: 133, type: !607)
!1281 = !DILocalVariable(name: "__ap", arg: 3, scope: !1240, file: !1241, line: 133, type: !217)
!1282 = !DILocation(line: 0, scope: !1240, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 229, column: 3, scope: !1229)
!1284 = !DILocation(line: 135, column: 10, scope: !1240, inlinedAt: !1283)
!1285 = !{!1286, !1288}
!1286 = distinct !{!1286, !1287, !"vfprintf.inline: argument 0"}
!1287 = distinct !{!1287, !"vfprintf.inline"}
!1288 = distinct !{!1288, !1287, !"vfprintf.inline: argument 1"}
!1289 = !DILocation(line: 232, column: 3, scope: !1229)
!1290 = !DILocation(line: 233, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1229, file: !207, line: 233, column: 7)
!1292 = !DILocation(line: 233, column: 7, scope: !1229)
!1293 = !DILocalVariable(name: "errnum", arg: 1, scope: !1294, file: !207, line: 188, type: !53)
!1294 = distinct !DISubprogram(name: "print_errno_message", scope: !207, file: !207, line: 188, type: !503, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1295)
!1295 = !{!1293, !1296, !1297}
!1296 = !DILocalVariable(name: "s", scope: !1294, file: !207, line: 190, type: !58)
!1297 = !DILocalVariable(name: "errbuf", scope: !1294, file: !207, line: 193, type: !1298)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8192, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 1024)
!1301 = !DILocation(line: 0, scope: !1294, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 234, column: 5, scope: !1291)
!1303 = !DILocation(line: 193, column: 3, scope: !1294, inlinedAt: !1302)
!1304 = !DILocation(line: 193, column: 8, scope: !1294, inlinedAt: !1302)
!1305 = !DILocation(line: 195, column: 7, scope: !1294, inlinedAt: !1302)
!1306 = !DILocation(line: 207, column: 9, scope: !1307, inlinedAt: !1302)
!1307 = distinct !DILexicalBlock(scope: !1294, file: !207, line: 207, column: 7)
!1308 = !DILocation(line: 207, column: 7, scope: !1294, inlinedAt: !1302)
!1309 = !DILocation(line: 208, column: 9, scope: !1307, inlinedAt: !1302)
!1310 = !DILocation(line: 208, column: 5, scope: !1307, inlinedAt: !1302)
!1311 = !DILocation(line: 214, column: 3, scope: !1294, inlinedAt: !1302)
!1312 = !DILocation(line: 216, column: 1, scope: !1294, inlinedAt: !1302)
!1313 = !DILocation(line: 234, column: 5, scope: !1291)
!1314 = !DILocation(line: 238, column: 3, scope: !1229)
!1315 = !DILocalVariable(name: "__c", arg: 1, scope: !1316, file: !908, line: 101, type: !53)
!1316 = distinct !DISubprogram(name: "putc_unlocked", scope: !908, file: !908, line: 101, type: !1317, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!53, !53, !1245}
!1319 = !{!1315, !1320}
!1320 = !DILocalVariable(name: "__stream", arg: 2, scope: !1316, file: !908, line: 101, type: !1245)
!1321 = !DILocation(line: 0, scope: !1316, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 238, column: 3, scope: !1229)
!1323 = !DILocation(line: 103, column: 10, scope: !1316, inlinedAt: !1322)
!1324 = !{!917, !514, i64 40}
!1325 = !{!917, !514, i64 48}
!1326 = !{!"branch_weights", i32 2000, i32 1}
!1327 = !DILocation(line: 240, column: 3, scope: !1229)
!1328 = !DILocation(line: 241, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1229, file: !207, line: 241, column: 7)
!1330 = !DILocation(line: 241, column: 7, scope: !1229)
!1331 = !DILocation(line: 242, column: 5, scope: !1329)
!1332 = !DILocation(line: 243, column: 1, scope: !1229)
!1333 = !DISubprogram(name: "strerror_r", scope: !1334, file: !1334, line: 444, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1334 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!50, !53, !50, !55}
!1337 = !DISubprogram(name: "fcntl", scope: !1338, file: !1338, line: 149, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1338 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!53, !53, !53, null}
!1341 = distinct !DISubprogram(name: "error", scope: !207, file: !207, line: 285, type: !1342, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !53, !53, !58, null}
!1344 = !{!1345, !1346, !1347, !1348}
!1345 = !DILocalVariable(name: "status", arg: 1, scope: !1341, file: !207, line: 285, type: !53)
!1346 = !DILocalVariable(name: "errnum", arg: 2, scope: !1341, file: !207, line: 285, type: !53)
!1347 = !DILocalVariable(name: "message", arg: 3, scope: !1341, file: !207, line: 285, type: !58)
!1348 = !DILocalVariable(name: "ap", scope: !1341, file: !207, line: 287, type: !215)
!1349 = !DILocation(line: 0, scope: !1341)
!1350 = !DILocation(line: 287, column: 3, scope: !1341)
!1351 = !DILocation(line: 287, column: 11, scope: !1341)
!1352 = !DILocation(line: 288, column: 3, scope: !1341)
!1353 = !DILocation(line: 289, column: 3, scope: !1341)
!1354 = !DILocation(line: 290, column: 3, scope: !1341)
!1355 = !DILocation(line: 291, column: 1, scope: !1341)
!1356 = !DILocation(line: 0, scope: !212)
!1357 = !DILocation(line: 298, column: 1, scope: !212)
!1358 = !DILocation(line: 302, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !212, file: !207, line: 302, column: 7)
!1360 = !DILocation(line: 302, column: 7, scope: !212)
!1361 = !DILocation(line: 307, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !207, line: 307, column: 11)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !207, line: 303, column: 5)
!1364 = !DILocation(line: 307, column: 27, scope: !1362)
!1365 = !DILocation(line: 308, column: 11, scope: !1362)
!1366 = !DILocation(line: 308, column: 28, scope: !1362)
!1367 = !DILocation(line: 308, column: 25, scope: !1362)
!1368 = !DILocation(line: 309, column: 15, scope: !1362)
!1369 = !DILocation(line: 309, column: 33, scope: !1362)
!1370 = !DILocation(line: 310, column: 19, scope: !1362)
!1371 = !DILocation(line: 311, column: 22, scope: !1362)
!1372 = !DILocation(line: 311, column: 56, scope: !1362)
!1373 = !DILocation(line: 307, column: 11, scope: !1363)
!1374 = !DILocation(line: 316, column: 21, scope: !1363)
!1375 = !DILocation(line: 317, column: 23, scope: !1363)
!1376 = !DILocation(line: 318, column: 5, scope: !1363)
!1377 = !DILocation(line: 327, column: 3, scope: !212)
!1378 = !DILocation(line: 331, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !212, file: !207, line: 331, column: 7)
!1380 = !DILocation(line: 331, column: 7, scope: !212)
!1381 = !DILocation(line: 332, column: 5, scope: !1379)
!1382 = !DILocation(line: 338, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !207, line: 334, column: 5)
!1384 = !DILocation(line: 346, column: 3, scope: !212)
!1385 = !DILocation(line: 350, column: 3, scope: !212)
!1386 = !DILocation(line: 356, column: 1, scope: !212)
!1387 = distinct !DISubprogram(name: "error_at_line", scope: !207, file: !207, line: 359, type: !1388, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !53, !53, !58, !6, !58, null}
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396}
!1391 = !DILocalVariable(name: "status", arg: 1, scope: !1387, file: !207, line: 359, type: !53)
!1392 = !DILocalVariable(name: "errnum", arg: 2, scope: !1387, file: !207, line: 359, type: !53)
!1393 = !DILocalVariable(name: "file_name", arg: 3, scope: !1387, file: !207, line: 359, type: !58)
!1394 = !DILocalVariable(name: "line_number", arg: 4, scope: !1387, file: !207, line: 360, type: !6)
!1395 = !DILocalVariable(name: "message", arg: 5, scope: !1387, file: !207, line: 360, type: !58)
!1396 = !DILocalVariable(name: "ap", scope: !1387, file: !207, line: 362, type: !215)
!1397 = !DILocation(line: 0, scope: !1387)
!1398 = !DILocation(line: 362, column: 3, scope: !1387)
!1399 = !DILocation(line: 362, column: 11, scope: !1387)
!1400 = !DILocation(line: 363, column: 3, scope: !1387)
!1401 = !DILocation(line: 364, column: 3, scope: !1387)
!1402 = !DILocation(line: 366, column: 3, scope: !1387)
!1403 = !DILocation(line: 367, column: 1, scope: !1387)
!1404 = distinct !DISubprogram(name: "fdadvise", scope: !407, file: !407, line: 25, type: !1405, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1409)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !53, !1407, !1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !216, line: 63, baseType: !118)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !41, line: 51, baseType: !40)
!1409 = !{!1410, !1411, !1412, !1413}
!1410 = !DILocalVariable(name: "fd", arg: 1, scope: !1404, file: !407, line: 25, type: !53)
!1411 = !DILocalVariable(name: "offset", arg: 2, scope: !1404, file: !407, line: 25, type: !1407)
!1412 = !DILocalVariable(name: "len", arg: 3, scope: !1404, file: !407, line: 25, type: !1407)
!1413 = !DILocalVariable(name: "advice", arg: 4, scope: !1404, file: !407, line: 25, type: !1408)
!1414 = !DILocation(line: 0, scope: !1404)
!1415 = !DILocation(line: 28, column: 3, scope: !1404)
!1416 = !DILocation(line: 30, column: 1, scope: !1404)
!1417 = !DISubprogram(name: "posix_fadvise", scope: !1338, file: !1338, line: 273, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!53, !53, !1407, !1407, !53}
!1420 = distinct !DISubprogram(name: "fadvise", scope: !407, file: !407, line: 33, type: !1421, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1457)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !1423, !1408}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1425, file: !96, line: 51, baseType: !53, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1425, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1425, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1425, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1425, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1425, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1425, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1425, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1425, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1425, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1425, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1425, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1425, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1425, file: !96, line: 70, baseType: !1441, size: 64, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1425, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1425, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1425, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1425, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1425, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1425, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1425, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1425, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1425, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1425, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1425, file: !96, line: 93, baseType: !1441, size: 64, offset: 1344)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1425, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1425, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1425, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1425, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1457 = !{!1458, !1459}
!1458 = !DILocalVariable(name: "fp", arg: 1, scope: !1420, file: !407, line: 33, type: !1423)
!1459 = !DILocalVariable(name: "advice", arg: 2, scope: !1420, file: !407, line: 33, type: !1408)
!1460 = !DILocation(line: 0, scope: !1420)
!1461 = !DILocation(line: 35, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1420, file: !407, line: 35, column: 7)
!1463 = !DILocation(line: 35, column: 7, scope: !1420)
!1464 = !DILocation(line: 36, column: 15, scope: !1462)
!1465 = !DILocation(line: 0, scope: !1404, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 36, column: 5, scope: !1462)
!1467 = !DILocation(line: 28, column: 3, scope: !1404, inlinedAt: !1466)
!1468 = !DILocation(line: 36, column: 5, scope: !1462)
!1469 = !DILocation(line: 37, column: 1, scope: !1420)
!1470 = !DISubprogram(name: "fileno", scope: !216, file: !216, line: 809, type: !1471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!53, !1423}
!1473 = distinct !DISubprogram(name: "rpl_fclose", scope: !410, file: !410, line: 58, type: !1474, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1510)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!53, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1478, file: !96, line: 51, baseType: !53, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1478, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1478, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1478, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1478, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1478, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1478, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1478, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1478, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1478, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1478, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1478, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1478, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1478, file: !96, line: 70, baseType: !1494, size: 64, offset: 832)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1478, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1478, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1478, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1478, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1478, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1478, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1478, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1478, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1478, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1478, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1478, file: !96, line: 93, baseType: !1494, size: 64, offset: 1344)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1478, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1478, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1478, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1478, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1510 = !{!1511, !1512, !1513, !1514}
!1511 = !DILocalVariable(name: "fp", arg: 1, scope: !1473, file: !410, line: 58, type: !1476)
!1512 = !DILocalVariable(name: "saved_errno", scope: !1473, file: !410, line: 60, type: !53)
!1513 = !DILocalVariable(name: "fd", scope: !1473, file: !410, line: 63, type: !53)
!1514 = !DILocalVariable(name: "result", scope: !1473, file: !410, line: 74, type: !53)
!1515 = !DILocation(line: 0, scope: !1473)
!1516 = !DILocation(line: 63, column: 12, scope: !1473)
!1517 = !DILocation(line: 64, column: 10, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1473, file: !410, line: 64, column: 7)
!1519 = !DILocation(line: 64, column: 7, scope: !1473)
!1520 = !DILocation(line: 65, column: 12, scope: !1518)
!1521 = !DILocation(line: 65, column: 5, scope: !1518)
!1522 = !DILocation(line: 70, column: 9, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1473, file: !410, line: 70, column: 7)
!1524 = !DILocation(line: 70, column: 23, scope: !1523)
!1525 = !DILocation(line: 70, column: 33, scope: !1523)
!1526 = !DILocation(line: 70, column: 26, scope: !1523)
!1527 = !DILocation(line: 70, column: 59, scope: !1523)
!1528 = !DILocation(line: 71, column: 7, scope: !1523)
!1529 = !DILocation(line: 71, column: 10, scope: !1523)
!1530 = !DILocation(line: 70, column: 7, scope: !1473)
!1531 = !DILocation(line: 100, column: 12, scope: !1473)
!1532 = !DILocation(line: 105, column: 7, scope: !1473)
!1533 = !DILocation(line: 72, column: 19, scope: !1523)
!1534 = !DILocation(line: 105, column: 19, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1473, file: !410, line: 105, column: 7)
!1536 = !DILocation(line: 107, column: 13, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1535, file: !410, line: 106, column: 5)
!1538 = !DILocation(line: 109, column: 5, scope: !1537)
!1539 = !DILocation(line: 112, column: 1, scope: !1473)
!1540 = !DISubprogram(name: "fclose", scope: !216, file: !216, line: 178, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1541 = !DISubprogram(name: "lseek", scope: !1542, file: !1542, line: 339, type: !1543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1542 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!118, !53, !118, !53}
!1545 = distinct !DISubprogram(name: "rpl_fflush", scope: !412, file: !412, line: 130, type: !1546, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !1582)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!53, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1550)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1550, file: !96, line: 51, baseType: !53, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1550, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1550, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1550, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1550, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1550, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1550, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1550, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1550, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1550, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1550, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1550, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1550, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1550, file: !96, line: 70, baseType: !1566, size: 64, offset: 832)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1550, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1550, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1550, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1550, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1550, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1550, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1550, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1550, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1550, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1550, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1550, file: !96, line: 93, baseType: !1566, size: 64, offset: 1344)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1550, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1550, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1550, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1550, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1582 = !{!1583}
!1583 = !DILocalVariable(name: "stream", arg: 1, scope: !1545, file: !412, line: 130, type: !1548)
!1584 = !DILocation(line: 0, scope: !1545)
!1585 = !DILocation(line: 151, column: 14, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1545, file: !412, line: 151, column: 7)
!1587 = !DILocation(line: 151, column: 22, scope: !1586)
!1588 = !DILocation(line: 151, column: 27, scope: !1586)
!1589 = !DILocation(line: 151, column: 7, scope: !1545)
!1590 = !DILocation(line: 152, column: 12, scope: !1586)
!1591 = !DILocation(line: 152, column: 5, scope: !1586)
!1592 = !DILocalVariable(name: "fp", arg: 1, scope: !1593, file: !412, line: 42, type: !1548)
!1593 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !412, file: !412, line: 42, type: !1594, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !1596)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !1548}
!1596 = !{!1592}
!1597 = !DILocation(line: 0, scope: !1593, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 157, column: 3, scope: !1545)
!1599 = !DILocation(line: 44, column: 12, scope: !1600, inlinedAt: !1598)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !412, line: 44, column: 7)
!1601 = !DILocation(line: 44, column: 19, scope: !1600, inlinedAt: !1598)
!1602 = !DILocation(line: 44, column: 7, scope: !1593, inlinedAt: !1598)
!1603 = !DILocation(line: 46, column: 5, scope: !1600, inlinedAt: !1598)
!1604 = !DILocation(line: 159, column: 10, scope: !1545)
!1605 = !DILocation(line: 159, column: 3, scope: !1545)
!1606 = !DILocation(line: 236, column: 1, scope: !1545)
!1607 = !DISubprogram(name: "fflush", scope: !216, file: !216, line: 230, type: !1546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1608 = distinct !DISubprogram(name: "fopen_safer", scope: !415, file: !415, line: 31, type: !1609, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1645)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1611, !58, !58}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1613, file: !96, line: 51, baseType: !53, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1613, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1613, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1613, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1613, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1613, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1613, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1613, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1613, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1613, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1613, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1613, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1613, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1613, file: !96, line: 70, baseType: !1629, size: 64, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1613, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1613, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1613, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1613, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1613, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1613, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1613, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1613, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1613, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1613, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1613, file: !96, line: 93, baseType: !1629, size: 64, offset: 1344)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1613, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1613, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1613, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1613, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1645 = !{!1646, !1647, !1648, !1649, !1652, !1655, !1658}
!1646 = !DILocalVariable(name: "file", arg: 1, scope: !1608, file: !415, line: 31, type: !58)
!1647 = !DILocalVariable(name: "mode", arg: 2, scope: !1608, file: !415, line: 31, type: !58)
!1648 = !DILocalVariable(name: "fp", scope: !1608, file: !415, line: 33, type: !1611)
!1649 = !DILocalVariable(name: "fd", scope: !1650, file: !415, line: 37, type: !53)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !415, line: 36, column: 5)
!1651 = distinct !DILexicalBlock(scope: !1608, file: !415, line: 35, column: 7)
!1652 = !DILocalVariable(name: "f", scope: !1653, file: !415, line: 41, type: !53)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !415, line: 40, column: 9)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !415, line: 39, column: 11)
!1655 = !DILocalVariable(name: "saved_errno", scope: !1656, file: !415, line: 45, type: !53)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !415, line: 44, column: 13)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !415, line: 43, column: 15)
!1658 = !DILocalVariable(name: "saved_errno", scope: !1659, file: !415, line: 54, type: !53)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !415, line: 53, column: 13)
!1660 = distinct !DILexicalBlock(scope: !1653, file: !415, line: 51, column: 15)
!1661 = !DILocation(line: 0, scope: !1608)
!1662 = !DILocation(line: 33, column: 14, scope: !1608)
!1663 = !DILocation(line: 35, column: 7, scope: !1651)
!1664 = !DILocation(line: 35, column: 7, scope: !1608)
!1665 = !DILocation(line: 37, column: 16, scope: !1650)
!1666 = !DILocation(line: 0, scope: !1650)
!1667 = !DILocation(line: 39, column: 19, scope: !1654)
!1668 = !DILocation(line: 41, column: 19, scope: !1653)
!1669 = !DILocation(line: 0, scope: !1653)
!1670 = !DILocation(line: 43, column: 17, scope: !1657)
!1671 = !DILocation(line: 43, column: 15, scope: !1653)
!1672 = !DILocation(line: 45, column: 33, scope: !1656)
!1673 = !DILocation(line: 0, scope: !1656)
!1674 = !DILocation(line: 46, column: 15, scope: !1656)
!1675 = !DILocation(line: 47, column: 21, scope: !1656)
!1676 = !DILocation(line: 51, column: 15, scope: !1660)
!1677 = !DILocation(line: 51, column: 27, scope: !1660)
!1678 = !DILocation(line: 52, column: 15, scope: !1660)
!1679 = !DILocation(line: 52, column: 26, scope: !1660)
!1680 = !DILocation(line: 52, column: 24, scope: !1660)
!1681 = !DILocation(line: 51, column: 15, scope: !1653)
!1682 = !DILocation(line: 54, column: 33, scope: !1659)
!1683 = !DILocation(line: 0, scope: !1659)
!1684 = !DILocation(line: 55, column: 15, scope: !1659)
!1685 = !DILocation(line: 56, column: 21, scope: !1659)
!1686 = !DILocation(line: 63, column: 1, scope: !1608)
!1687 = !DISubprogram(name: "fdopen", scope: !216, file: !216, line: 293, type: !1688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!1611, !53, !58}
!1690 = !DISubprogram(name: "close", scope: !1542, file: !1542, line: 358, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1691 = distinct !DISubprogram(name: "fpurge", scope: !417, file: !417, line: 32, type: !1692, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1728)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!53, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1696, file: !96, line: 51, baseType: !53, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1696, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1696, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1696, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1696, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1696, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1696, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1696, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1696, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1696, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1696, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1696, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1696, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1696, file: !96, line: 70, baseType: !1712, size: 64, offset: 832)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1696, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1696, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1696, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1696, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1696, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1696, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1696, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1696, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1696, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1696, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1696, file: !96, line: 93, baseType: !1712, size: 64, offset: 1344)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1696, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1696, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1696, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1696, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1728 = !{!1729}
!1729 = !DILocalVariable(name: "fp", arg: 1, scope: !1691, file: !417, line: 32, type: !1694)
!1730 = !DILocation(line: 0, scope: !1691)
!1731 = !DILocation(line: 36, column: 3, scope: !1691)
!1732 = !DILocation(line: 38, column: 3, scope: !1691)
!1733 = distinct !DISubprogram(name: "rpl_fseeko", scope: !419, file: !419, line: 28, type: !1734, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !1770)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!53, !1736, !1407, !53}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1738)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1738, file: !96, line: 51, baseType: !53, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1738, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1738, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1738, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1738, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1738, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1738, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1738, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1738, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1738, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1738, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1738, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1738, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1738, file: !96, line: 70, baseType: !1754, size: 64, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1738, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1738, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1738, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1738, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1738, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1738, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1738, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1738, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1738, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1738, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1738, file: !96, line: 93, baseType: !1754, size: 64, offset: 1344)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1738, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1738, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1738, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1738, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1770 = !{!1771, !1772, !1773, !1774}
!1771 = !DILocalVariable(name: "fp", arg: 1, scope: !1733, file: !419, line: 28, type: !1736)
!1772 = !DILocalVariable(name: "offset", arg: 2, scope: !1733, file: !419, line: 28, type: !1407)
!1773 = !DILocalVariable(name: "whence", arg: 3, scope: !1733, file: !419, line: 28, type: !53)
!1774 = !DILocalVariable(name: "pos", scope: !1775, file: !419, line: 123, type: !1407)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !419, line: 119, column: 5)
!1776 = distinct !DILexicalBlock(scope: !1733, file: !419, line: 55, column: 7)
!1777 = !DILocation(line: 0, scope: !1733)
!1778 = !DILocation(line: 55, column: 12, scope: !1776)
!1779 = !{!917, !514, i64 16}
!1780 = !DILocation(line: 55, column: 33, scope: !1776)
!1781 = !{!917, !514, i64 8}
!1782 = !DILocation(line: 55, column: 25, scope: !1776)
!1783 = !DILocation(line: 56, column: 7, scope: !1776)
!1784 = !DILocation(line: 56, column: 15, scope: !1776)
!1785 = !DILocation(line: 56, column: 37, scope: !1776)
!1786 = !{!917, !514, i64 32}
!1787 = !DILocation(line: 56, column: 29, scope: !1776)
!1788 = !DILocation(line: 57, column: 7, scope: !1776)
!1789 = !DILocation(line: 57, column: 15, scope: !1776)
!1790 = !{!917, !514, i64 72}
!1791 = !DILocation(line: 57, column: 29, scope: !1776)
!1792 = !DILocation(line: 55, column: 7, scope: !1733)
!1793 = !DILocation(line: 123, column: 26, scope: !1775)
!1794 = !DILocation(line: 123, column: 19, scope: !1775)
!1795 = !DILocation(line: 0, scope: !1775)
!1796 = !DILocation(line: 124, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1775, file: !419, line: 124, column: 11)
!1798 = !DILocation(line: 124, column: 11, scope: !1775)
!1799 = !DILocation(line: 135, column: 12, scope: !1775)
!1800 = !DILocation(line: 135, column: 19, scope: !1775)
!1801 = !DILocation(line: 136, column: 12, scope: !1775)
!1802 = !DILocation(line: 136, column: 20, scope: !1775)
!1803 = !{!917, !768, i64 144}
!1804 = !DILocation(line: 167, column: 7, scope: !1775)
!1805 = !DILocation(line: 169, column: 10, scope: !1733)
!1806 = !DILocation(line: 169, column: 3, scope: !1733)
!1807 = !DILocation(line: 170, column: 1, scope: !1733)
!1808 = !DISubprogram(name: "fseeko", scope: !216, file: !216, line: 736, type: !1809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!53, !1736, !118, !53}
!1811 = distinct !DISubprogram(name: "getprogname", scope: !421, file: !421, line: 54, type: !1812, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !603)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!58}
!1814 = !DILocation(line: 58, column: 10, scope: !1811)
!1815 = !DILocation(line: 58, column: 3, scope: !1811)
!1816 = distinct !DISubprogram(name: "hard_locale", scope: !423, file: !423, line: 28, type: !1817, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!64, !53}
!1819 = !{!1820, !1821}
!1820 = !DILocalVariable(name: "category", arg: 1, scope: !1816, file: !423, line: 28, type: !53)
!1821 = !DILocalVariable(name: "locale", scope: !1816, file: !423, line: 30, type: !1822)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2056, elements: !1823)
!1823 = !{!1824}
!1824 = !DISubrange(count: 257)
!1825 = !DILocation(line: 0, scope: !1816)
!1826 = !DILocation(line: 30, column: 3, scope: !1816)
!1827 = !DILocation(line: 30, column: 8, scope: !1816)
!1828 = !DILocation(line: 32, column: 7, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1816, file: !423, line: 32, column: 7)
!1830 = !DILocation(line: 32, column: 7, scope: !1816)
!1831 = !DILocalVariable(name: "__s1", arg: 1, scope: !1832, file: !561, line: 1359, type: !58)
!1832 = distinct !DISubprogram(name: "streq", scope: !561, file: !561, line: 1359, type: !562, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1833)
!1833 = !{!1831, !1834}
!1834 = !DILocalVariable(name: "__s2", arg: 2, scope: !1832, file: !561, line: 1359, type: !58)
!1835 = !DILocation(line: 0, scope: !1832, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 35, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1816, file: !423, line: 35, column: 7)
!1838 = !DILocation(line: 1361, column: 11, scope: !1832, inlinedAt: !1836)
!1839 = !DILocation(line: 1361, column: 10, scope: !1832, inlinedAt: !1836)
!1840 = !DILocation(line: 35, column: 29, scope: !1837)
!1841 = !DILocation(line: 0, scope: !1832, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 35, column: 32, scope: !1837)
!1843 = !DILocation(line: 1361, column: 11, scope: !1832, inlinedAt: !1842)
!1844 = !DILocation(line: 1361, column: 10, scope: !1832, inlinedAt: !1842)
!1845 = !DILocation(line: 35, column: 7, scope: !1816)
!1846 = !DILocation(line: 46, column: 3, scope: !1816)
!1847 = !DILocation(line: 47, column: 1, scope: !1816)
!1848 = distinct !DISubprogram(name: "initbuffer", scope: !425, file: !425, line: 37, type: !1849, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1857)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !837, line: 32, size: 192, elements: !1853)
!1853 = !{!1854, !1855, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1852, file: !837, line: 34, baseType: !462, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1852, file: !837, line: 35, baseType: !462, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1852, file: !837, line: 36, baseType: !50, size: 64, offset: 128)
!1857 = !{!1858}
!1858 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1848, file: !425, line: 37, type: !1851)
!1859 = !DILocation(line: 0, scope: !1848)
!1860 = !DILocation(line: 39, column: 11, scope: !1848)
!1861 = !DILocalVariable(name: "__dest", arg: 1, scope: !1862, file: !1863, line: 57, type: !52)
!1862 = distinct !DISubprogram(name: "memset", scope: !1863, file: !1863, line: 57, type: !1864, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1866)
!1863 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!52, !52, !53, !55}
!1866 = !{!1861, !1867, !1868}
!1867 = !DILocalVariable(name: "__ch", arg: 2, scope: !1862, file: !1863, line: 57, type: !53)
!1868 = !DILocalVariable(name: "__len", arg: 3, scope: !1862, file: !1863, line: 57, type: !55)
!1869 = !DILocation(line: 0, scope: !1862, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 39, column: 3, scope: !1848)
!1871 = !DILocation(line: 59, column: 10, scope: !1862, inlinedAt: !1870)
!1872 = !DILocation(line: 40, column: 1, scope: !1848)
!1873 = distinct !DISubprogram(name: "readlinebuffer", scope: !425, file: !425, line: 43, type: !1874, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1910)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1851, !1851, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1878, file: !96, line: 51, baseType: !53, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1878, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1878, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1878, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1878, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1878, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1878, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1878, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1878, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1878, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1878, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1878, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1878, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1878, file: !96, line: 70, baseType: !1894, size: 64, offset: 832)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1878, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1878, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1878, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1878, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1878, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1878, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1878, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1878, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1878, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1878, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1878, file: !96, line: 93, baseType: !1894, size: 64, offset: 1344)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1878, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1878, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1878, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1878, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1910 = !{!1911, !1912}
!1911 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1873, file: !425, line: 43, type: !1851)
!1912 = !DILocalVariable(name: "stream", arg: 2, scope: !1873, file: !425, line: 43, type: !1876)
!1913 = !DILocation(line: 0, scope: !1873)
!1914 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1915, file: !425, line: 59, type: !1851)
!1915 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !425, file: !425, line: 59, type: !1916, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!1851, !1851, !1876, !51}
!1918 = !{!1914, !1919, !1920, !1921, !1922, !1923, !1924, !1925}
!1919 = !DILocalVariable(name: "stream", arg: 2, scope: !1915, file: !425, line: 59, type: !1876)
!1920 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1915, file: !425, line: 60, type: !51)
!1921 = !DILocalVariable(name: "buffer", scope: !1915, file: !425, line: 65, type: !50)
!1922 = !DILocalVariable(name: "p", scope: !1915, file: !425, line: 66, type: !50)
!1923 = !DILocalVariable(name: "end", scope: !1915, file: !425, line: 67, type: !50)
!1924 = !DILocalVariable(name: "c", scope: !1915, file: !425, line: 68, type: !53)
!1925 = !DILocalVariable(name: "oldsize", scope: !1926, file: !425, line: 83, type: !462)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !425, line: 82, column: 9)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !425, line: 81, column: 11)
!1928 = distinct !DILexicalBlock(scope: !1915, file: !425, line: 71, column: 5)
!1929 = !DILocation(line: 0, scope: !1915, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 45, column: 10, scope: !1873)
!1931 = !DILocalVariable(name: "__stream", arg: 1, scope: !1932, file: !908, line: 128, type: !1876)
!1932 = distinct !DISubprogram(name: "feof_unlocked", scope: !908, file: !908, line: 128, type: !1933, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!53, !1876}
!1935 = !{!1931}
!1936 = !DILocation(line: 0, scope: !1932, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 62, column: 7, scope: !1938, inlinedAt: !1930)
!1938 = distinct !DILexicalBlock(scope: !1915, file: !425, line: 62, column: 7)
!1939 = !DILocation(line: 130, column: 10, scope: !1932, inlinedAt: !1937)
!1940 = !DILocation(line: 62, column: 7, scope: !1938, inlinedAt: !1930)
!1941 = !DILocation(line: 62, column: 7, scope: !1915, inlinedAt: !1930)
!1942 = !DILocation(line: 65, column: 30, scope: !1915, inlinedAt: !1930)
!1943 = !DILocation(line: 67, column: 36, scope: !1915, inlinedAt: !1930)
!1944 = !{!948, !768, i64 0}
!1945 = !DILocation(line: 67, column: 22, scope: !1915, inlinedAt: !1930)
!1946 = !DILocation(line: 70, column: 3, scope: !1915, inlinedAt: !1930)
!1947 = !DILocalVariable(name: "__fp", arg: 1, scope: !1948, file: !908, line: 66, type: !1876)
!1948 = distinct !DISubprogram(name: "getc_unlocked", scope: !908, file: !908, line: 66, type: !1933, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1949)
!1949 = !{!1947}
!1950 = !DILocation(line: 0, scope: !1948, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 72, column: 11, scope: !1928, inlinedAt: !1930)
!1952 = !DILocation(line: 68, column: 10, scope: !1948, inlinedAt: !1951)
!1953 = !DILocation(line: 73, column: 11, scope: !1928, inlinedAt: !1930)
!1954 = !DILocation(line: 73, column: 13, scope: !1955, inlinedAt: !1930)
!1955 = distinct !DILexicalBlock(scope: !1928, file: !425, line: 73, column: 11)
!1956 = !DILocation(line: 75, column: 17, scope: !1957, inlinedAt: !1930)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !425, line: 75, column: 15)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !425, line: 74, column: 9)
!1959 = !DILocation(line: 75, column: 27, scope: !1957, inlinedAt: !1930)
!1960 = !DILocalVariable(name: "__stream", arg: 1, scope: !1961, file: !908, line: 135, type: !1876)
!1961 = distinct !DISubprogram(name: "ferror_unlocked", scope: !908, file: !908, line: 135, type: !1933, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1962)
!1962 = !{!1960}
!1963 = !DILocation(line: 0, scope: !1961, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 75, column: 30, scope: !1957, inlinedAt: !1930)
!1965 = !DILocation(line: 137, column: 10, scope: !1961, inlinedAt: !1964)
!1966 = !DILocation(line: 75, column: 30, scope: !1957, inlinedAt: !1930)
!1967 = !DILocation(line: 75, column: 15, scope: !1958, inlinedAt: !1930)
!1968 = !DILocation(line: 77, column: 15, scope: !1969, inlinedAt: !1930)
!1969 = distinct !DILexicalBlock(scope: !1958, file: !425, line: 77, column: 15)
!1970 = !DILocation(line: 77, column: 21, scope: !1969, inlinedAt: !1930)
!1971 = !DILocation(line: 77, column: 15, scope: !1958, inlinedAt: !1930)
!1972 = !DILocation(line: 0, scope: !1928, inlinedAt: !1930)
!1973 = !DILocation(line: 81, column: 13, scope: !1927, inlinedAt: !1930)
!1974 = !DILocation(line: 81, column: 11, scope: !1928, inlinedAt: !1930)
!1975 = !DILocation(line: 83, column: 39, scope: !1926, inlinedAt: !1930)
!1976 = !DILocation(line: 0, scope: !1926, inlinedAt: !1930)
!1977 = !DILocation(line: 84, column: 20, scope: !1926, inlinedAt: !1930)
!1978 = !DILocation(line: 85, column: 22, scope: !1926, inlinedAt: !1930)
!1979 = !DILocation(line: 86, column: 30, scope: !1926, inlinedAt: !1930)
!1980 = !DILocation(line: 87, column: 38, scope: !1926, inlinedAt: !1930)
!1981 = !DILocation(line: 87, column: 24, scope: !1926, inlinedAt: !1930)
!1982 = !DILocation(line: 88, column: 9, scope: !1926, inlinedAt: !1930)
!1983 = !DILocation(line: 89, column: 14, scope: !1928, inlinedAt: !1930)
!1984 = !DILocation(line: 89, column: 9, scope: !1928, inlinedAt: !1930)
!1985 = !DILocation(line: 89, column: 12, scope: !1928, inlinedAt: !1930)
!1986 = !DILocation(line: 91, column: 12, scope: !1915, inlinedAt: !1930)
!1987 = !DILocation(line: 90, column: 5, scope: !1928, inlinedAt: !1930)
!1988 = distinct !{!1988, !1946, !1989, !577}
!1989 = !DILocation(line: 91, column: 24, scope: !1915, inlinedAt: !1930)
!1990 = !DILocation(line: 93, column: 26, scope: !1915, inlinedAt: !1930)
!1991 = !DILocation(line: 93, column: 15, scope: !1915, inlinedAt: !1930)
!1992 = !DILocation(line: 93, column: 22, scope: !1915, inlinedAt: !1930)
!1993 = !DILocation(line: 94, column: 3, scope: !1915, inlinedAt: !1930)
!1994 = !DILocation(line: 45, column: 3, scope: !1873)
!1995 = !DILocation(line: 0, scope: !1915)
!1996 = !DILocation(line: 0, scope: !1932, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 62, column: 7, scope: !1938)
!1998 = !DILocation(line: 130, column: 10, scope: !1932, inlinedAt: !1997)
!1999 = !DILocation(line: 62, column: 7, scope: !1938)
!2000 = !DILocation(line: 62, column: 7, scope: !1915)
!2001 = !DILocation(line: 65, column: 30, scope: !1915)
!2002 = !DILocation(line: 67, column: 36, scope: !1915)
!2003 = !DILocation(line: 67, column: 22, scope: !1915)
!2004 = !DILocation(line: 70, column: 3, scope: !1915)
!2005 = !DILocation(line: 0, scope: !1948, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 72, column: 11, scope: !1928)
!2007 = !DILocation(line: 68, column: 10, scope: !1948, inlinedAt: !2006)
!2008 = !DILocation(line: 73, column: 11, scope: !1928)
!2009 = !DILocation(line: 73, column: 13, scope: !1955)
!2010 = !DILocation(line: 75, column: 17, scope: !1957)
!2011 = !DILocation(line: 75, column: 27, scope: !1957)
!2012 = !DILocation(line: 0, scope: !1961, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 75, column: 30, scope: !1957)
!2014 = !DILocation(line: 137, column: 10, scope: !1961, inlinedAt: !2013)
!2015 = !DILocation(line: 75, column: 30, scope: !1957)
!2016 = !DILocation(line: 75, column: 15, scope: !1958)
!2017 = !DILocation(line: 77, column: 15, scope: !1969)
!2018 = !DILocation(line: 77, column: 21, scope: !1969)
!2019 = !DILocation(line: 77, column: 15, scope: !1958)
!2020 = !DILocation(line: 0, scope: !1928)
!2021 = !DILocation(line: 81, column: 13, scope: !1927)
!2022 = !DILocation(line: 81, column: 11, scope: !1928)
!2023 = !DILocation(line: 83, column: 39, scope: !1926)
!2024 = !DILocation(line: 0, scope: !1926)
!2025 = !DILocation(line: 84, column: 20, scope: !1926)
!2026 = !DILocation(line: 85, column: 22, scope: !1926)
!2027 = !DILocation(line: 86, column: 30, scope: !1926)
!2028 = !DILocation(line: 87, column: 38, scope: !1926)
!2029 = !DILocation(line: 87, column: 24, scope: !1926)
!2030 = !DILocation(line: 88, column: 9, scope: !1926)
!2031 = !DILocation(line: 89, column: 14, scope: !1928)
!2032 = !DILocation(line: 89, column: 9, scope: !1928)
!2033 = !DILocation(line: 89, column: 12, scope: !1928)
!2034 = !DILocation(line: 91, column: 12, scope: !1915)
!2035 = !DILocation(line: 90, column: 5, scope: !1928)
!2036 = distinct !{!2036, !2004, !2037, !577}
!2037 = !DILocation(line: 91, column: 24, scope: !1915)
!2038 = !DILocation(line: 93, column: 26, scope: !1915)
!2039 = !DILocation(line: 93, column: 15, scope: !1915)
!2040 = !DILocation(line: 93, column: 22, scope: !1915)
!2041 = !DILocation(line: 94, column: 3, scope: !1915)
!2042 = !DILocation(line: 95, column: 1, scope: !1915)
!2043 = distinct !DISubprogram(name: "freebuffer", scope: !425, file: !425, line: 100, type: !1849, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !2044)
!2044 = !{!2045}
!2045 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2043, file: !425, line: 100, type: !1851)
!2046 = !DILocation(line: 0, scope: !2043)
!2047 = !DILocation(line: 102, column: 21, scope: !2043)
!2048 = !DILocation(line: 102, column: 3, scope: !2043)
!2049 = !DILocation(line: 103, column: 1, scope: !2043)
!2050 = distinct !DISubprogram(name: "memcmp2", scope: !429, file: !429, line: 25, type: !2051, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!53, !58, !55, !58, !55}
!2053 = !{!2054, !2055, !2056, !2057, !2058}
!2054 = !DILocalVariable(name: "s1", arg: 1, scope: !2050, file: !429, line: 25, type: !58)
!2055 = !DILocalVariable(name: "n1", arg: 2, scope: !2050, file: !429, line: 25, type: !55)
!2056 = !DILocalVariable(name: "s2", arg: 3, scope: !2050, file: !429, line: 25, type: !58)
!2057 = !DILocalVariable(name: "n2", arg: 4, scope: !2050, file: !429, line: 25, type: !55)
!2058 = !DILocalVariable(name: "cmp", scope: !2050, file: !429, line: 27, type: !53)
!2059 = !DILocation(line: 0, scope: !2050)
!2060 = !DILocation(line: 27, column: 32, scope: !2050)
!2061 = !DILocation(line: 27, column: 29, scope: !2050)
!2062 = !DILocation(line: 27, column: 13, scope: !2050)
!2063 = !DILocation(line: 28, column: 11, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2050, file: !429, line: 28, column: 7)
!2065 = !DILocation(line: 28, column: 7, scope: !2050)
!2066 = !DILocation(line: 30, column: 3, scope: !2050)
!2067 = distinct !DISubprogram(name: "set_program_name", scope: !248, file: !248, line: 37, type: !536, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2068)
!2068 = !{!2069, !2070, !2071}
!2069 = !DILocalVariable(name: "argv0", arg: 1, scope: !2067, file: !248, line: 37, type: !58)
!2070 = !DILocalVariable(name: "slash", scope: !2067, file: !248, line: 44, type: !58)
!2071 = !DILocalVariable(name: "base", scope: !2067, file: !248, line: 45, type: !58)
!2072 = !DILocation(line: 0, scope: !2067)
!2073 = !DILocation(line: 44, column: 23, scope: !2067)
!2074 = !DILocation(line: 45, column: 22, scope: !2067)
!2075 = !DILocation(line: 46, column: 17, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2067, file: !248, line: 46, column: 7)
!2077 = !DILocation(line: 46, column: 9, scope: !2076)
!2078 = !DILocation(line: 46, column: 25, scope: !2076)
!2079 = !DILocation(line: 46, column: 40, scope: !2076)
!2080 = !DILocalVariable(name: "__s1", arg: 1, scope: !2081, file: !561, line: 974, type: !729)
!2081 = distinct !DISubprogram(name: "memeq", scope: !561, file: !561, line: 974, type: !2082, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!64, !729, !729, !55}
!2084 = !{!2080, !2085, !2086}
!2085 = !DILocalVariable(name: "__s2", arg: 2, scope: !2081, file: !561, line: 974, type: !729)
!2086 = !DILocalVariable(name: "__n", arg: 3, scope: !2081, file: !561, line: 974, type: !55)
!2087 = !DILocation(line: 0, scope: !2081, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 46, column: 28, scope: !2076)
!2089 = !DILocation(line: 976, column: 11, scope: !2081, inlinedAt: !2088)
!2090 = !DILocation(line: 976, column: 10, scope: !2081, inlinedAt: !2088)
!2091 = !DILocation(line: 46, column: 7, scope: !2067)
!2092 = !DILocation(line: 49, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !248, line: 49, column: 11)
!2094 = distinct !DILexicalBlock(scope: !2076, file: !248, line: 47, column: 5)
!2095 = !DILocation(line: 49, column: 36, scope: !2093)
!2096 = !DILocation(line: 49, column: 11, scope: !2094)
!2097 = !DILocation(line: 65, column: 16, scope: !2067)
!2098 = !DILocation(line: 71, column: 27, scope: !2067)
!2099 = !DILocation(line: 74, column: 33, scope: !2067)
!2100 = !DILocation(line: 76, column: 1, scope: !2067)
!2101 = !DILocation(line: 0, scope: !253)
!2102 = !DILocation(line: 40, column: 29, scope: !253)
!2103 = !DILocation(line: 41, column: 19, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !253, file: !254, line: 41, column: 7)
!2105 = !DILocation(line: 41, column: 7, scope: !253)
!2106 = !DILocation(line: 47, column: 3, scope: !253)
!2107 = !DILocation(line: 48, column: 3, scope: !253)
!2108 = !DILocation(line: 48, column: 13, scope: !253)
!2109 = !DILocalVariable(name: "ps", arg: 1, scope: !2110, file: !2111, line: 1135, type: !2114)
!2110 = distinct !DISubprogram(name: "mbszero", scope: !2111, file: !2111, line: 1135, type: !2112, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !2115)
!2111 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!2115 = !{!2109}
!2116 = !DILocation(line: 0, scope: !2110, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 48, column: 18, scope: !253)
!2118 = !DILocalVariable(name: "__dest", arg: 1, scope: !2119, file: !1863, line: 57, type: !52)
!2119 = distinct !DISubprogram(name: "memset", scope: !1863, file: !1863, line: 57, type: !1864, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !2120)
!2120 = !{!2118, !2121, !2122}
!2121 = !DILocalVariable(name: "__ch", arg: 2, scope: !2119, file: !1863, line: 57, type: !53)
!2122 = !DILocalVariable(name: "__len", arg: 3, scope: !2119, file: !1863, line: 57, type: !55)
!2123 = !DILocation(line: 0, scope: !2119, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 1137, column: 3, scope: !2110, inlinedAt: !2117)
!2125 = !DILocation(line: 59, column: 10, scope: !2119, inlinedAt: !2124)
!2126 = !DILocation(line: 49, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !253, file: !254, line: 49, column: 7)
!2128 = !DILocation(line: 49, column: 39, scope: !2127)
!2129 = !DILocation(line: 49, column: 44, scope: !2127)
!2130 = !DILocation(line: 54, column: 1, scope: !253)
!2131 = !DISubprogram(name: "mbrtoc32", scope: !265, file: !265, line: 57, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!55, !2134, !607, !55, !2136}
!2134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2135)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2114)
!2137 = distinct !DISubprogram(name: "clone_quoting_options", scope: !288, file: !288, line: 113, type: !2138, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2141)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!2140, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!2141 = !{!2142, !2143, !2144}
!2142 = !DILocalVariable(name: "o", arg: 1, scope: !2137, file: !288, line: 113, type: !2140)
!2143 = !DILocalVariable(name: "saved_errno", scope: !2137, file: !288, line: 115, type: !53)
!2144 = !DILocalVariable(name: "p", scope: !2137, file: !288, line: 116, type: !2140)
!2145 = !DILocation(line: 0, scope: !2137)
!2146 = !DILocation(line: 115, column: 21, scope: !2137)
!2147 = !DILocation(line: 116, column: 40, scope: !2137)
!2148 = !DILocation(line: 116, column: 31, scope: !2137)
!2149 = !DILocation(line: 118, column: 9, scope: !2137)
!2150 = !DILocation(line: 119, column: 3, scope: !2137)
!2151 = distinct !DISubprogram(name: "get_quoting_style", scope: !288, file: !288, line: 124, type: !2152, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2156)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!26, !2154}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!2156 = !{!2157}
!2157 = !DILocalVariable(name: "o", arg: 1, scope: !2151, file: !288, line: 124, type: !2154)
!2158 = !DILocation(line: 0, scope: !2151)
!2159 = !DILocation(line: 126, column: 11, scope: !2151)
!2160 = !DILocation(line: 126, column: 46, scope: !2151)
!2161 = !{!2162, !515, i64 0}
!2162 = !{!"quoting_options", !515, i64 0, !612, i64 4, !515, i64 8, !514, i64 40, !514, i64 48}
!2163 = !DILocation(line: 126, column: 3, scope: !2151)
!2164 = distinct !DISubprogram(name: "set_quoting_style", scope: !288, file: !288, line: 132, type: !2165, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2140, !26}
!2167 = !{!2168, !2169}
!2168 = !DILocalVariable(name: "o", arg: 1, scope: !2164, file: !288, line: 132, type: !2140)
!2169 = !DILocalVariable(name: "s", arg: 2, scope: !2164, file: !288, line: 132, type: !26)
!2170 = !DILocation(line: 0, scope: !2164)
!2171 = !DILocation(line: 134, column: 4, scope: !2164)
!2172 = !DILocation(line: 134, column: 39, scope: !2164)
!2173 = !DILocation(line: 134, column: 45, scope: !2164)
!2174 = !DILocation(line: 135, column: 1, scope: !2164)
!2175 = distinct !DISubprogram(name: "set_char_quoting", scope: !288, file: !288, line: 143, type: !2176, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!53, !2140, !51, !53}
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2185, !2186}
!2179 = !DILocalVariable(name: "o", arg: 1, scope: !2175, file: !288, line: 143, type: !2140)
!2180 = !DILocalVariable(name: "c", arg: 2, scope: !2175, file: !288, line: 143, type: !51)
!2181 = !DILocalVariable(name: "i", arg: 3, scope: !2175, file: !288, line: 143, type: !53)
!2182 = !DILocalVariable(name: "uc", scope: !2175, file: !288, line: 145, type: !60)
!2183 = !DILocalVariable(name: "p", scope: !2175, file: !288, line: 146, type: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2185 = !DILocalVariable(name: "shift", scope: !2175, file: !288, line: 148, type: !53)
!2186 = !DILocalVariable(name: "r", scope: !2175, file: !288, line: 149, type: !6)
!2187 = !DILocation(line: 0, scope: !2175)
!2188 = !DILocation(line: 147, column: 6, scope: !2175)
!2189 = !DILocation(line: 147, column: 62, scope: !2175)
!2190 = !DILocation(line: 147, column: 57, scope: !2175)
!2191 = !DILocation(line: 148, column: 15, scope: !2175)
!2192 = !DILocation(line: 149, column: 21, scope: !2175)
!2193 = !DILocation(line: 149, column: 24, scope: !2175)
!2194 = !DILocation(line: 149, column: 34, scope: !2175)
!2195 = !DILocation(line: 150, column: 13, scope: !2175)
!2196 = !DILocation(line: 150, column: 19, scope: !2175)
!2197 = !DILocation(line: 150, column: 24, scope: !2175)
!2198 = !DILocation(line: 150, column: 6, scope: !2175)
!2199 = !DILocation(line: 151, column: 3, scope: !2175)
!2200 = distinct !DISubprogram(name: "set_quoting_flags", scope: !288, file: !288, line: 159, type: !2201, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!53, !2140, !53}
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "o", arg: 1, scope: !2200, file: !288, line: 159, type: !2140)
!2205 = !DILocalVariable(name: "i", arg: 2, scope: !2200, file: !288, line: 159, type: !53)
!2206 = !DILocalVariable(name: "r", scope: !2200, file: !288, line: 163, type: !53)
!2207 = !DILocation(line: 0, scope: !2200)
!2208 = !DILocation(line: 161, column: 8, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2200, file: !288, line: 161, column: 7)
!2210 = !DILocation(line: 161, column: 7, scope: !2200)
!2211 = !DILocation(line: 163, column: 14, scope: !2200)
!2212 = !{!2162, !612, i64 4}
!2213 = !DILocation(line: 164, column: 12, scope: !2200)
!2214 = !DILocation(line: 165, column: 3, scope: !2200)
!2215 = distinct !DISubprogram(name: "set_custom_quoting", scope: !288, file: !288, line: 169, type: !2216, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !2140, !58, !58}
!2218 = !{!2219, !2220, !2221}
!2219 = !DILocalVariable(name: "o", arg: 1, scope: !2215, file: !288, line: 169, type: !2140)
!2220 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2215, file: !288, line: 170, type: !58)
!2221 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2215, file: !288, line: 170, type: !58)
!2222 = !DILocation(line: 0, scope: !2215)
!2223 = !DILocation(line: 172, column: 8, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2215, file: !288, line: 172, column: 7)
!2225 = !DILocation(line: 172, column: 7, scope: !2215)
!2226 = !DILocation(line: 174, column: 6, scope: !2215)
!2227 = !DILocation(line: 174, column: 12, scope: !2215)
!2228 = !DILocation(line: 175, column: 8, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2215, file: !288, line: 175, column: 7)
!2230 = !DILocation(line: 175, column: 19, scope: !2229)
!2231 = !DILocation(line: 176, column: 5, scope: !2229)
!2232 = !DILocation(line: 177, column: 6, scope: !2215)
!2233 = !DILocation(line: 177, column: 17, scope: !2215)
!2234 = !{!2162, !514, i64 40}
!2235 = !DILocation(line: 178, column: 6, scope: !2215)
!2236 = !DILocation(line: 178, column: 18, scope: !2215)
!2237 = !{!2162, !514, i64 48}
!2238 = !DILocation(line: 179, column: 1, scope: !2215)
!2239 = distinct !DISubprogram(name: "quotearg_buffer", scope: !288, file: !288, line: 774, type: !2240, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!55, !50, !55, !58, !55, !2154}
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2243 = !DILocalVariable(name: "buffer", arg: 1, scope: !2239, file: !288, line: 774, type: !50)
!2244 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2239, file: !288, line: 774, type: !55)
!2245 = !DILocalVariable(name: "arg", arg: 3, scope: !2239, file: !288, line: 775, type: !58)
!2246 = !DILocalVariable(name: "argsize", arg: 4, scope: !2239, file: !288, line: 775, type: !55)
!2247 = !DILocalVariable(name: "o", arg: 5, scope: !2239, file: !288, line: 776, type: !2154)
!2248 = !DILocalVariable(name: "p", scope: !2239, file: !288, line: 778, type: !2154)
!2249 = !DILocalVariable(name: "saved_errno", scope: !2239, file: !288, line: 779, type: !53)
!2250 = !DILocalVariable(name: "r", scope: !2239, file: !288, line: 780, type: !55)
!2251 = !DILocation(line: 0, scope: !2239)
!2252 = !DILocation(line: 778, column: 37, scope: !2239)
!2253 = !DILocation(line: 779, column: 21, scope: !2239)
!2254 = !DILocation(line: 781, column: 43, scope: !2239)
!2255 = !DILocation(line: 781, column: 53, scope: !2239)
!2256 = !DILocation(line: 781, column: 60, scope: !2239)
!2257 = !DILocation(line: 782, column: 43, scope: !2239)
!2258 = !DILocation(line: 782, column: 58, scope: !2239)
!2259 = !DILocation(line: 780, column: 14, scope: !2239)
!2260 = !DILocation(line: 783, column: 9, scope: !2239)
!2261 = !DILocation(line: 784, column: 3, scope: !2239)
!2262 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !288, file: !288, line: 251, type: !2263, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2267)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!55, !50, !55, !58, !55, !26, !53, !2265, !58, !58}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2292, !2294, !2297, !2298, !2299, !2300, !2303, !2304, !2307, !2311, !2312, !2320, !2323, !2324, !2326, !2327, !2328, !2329}
!2268 = !DILocalVariable(name: "buffer", arg: 1, scope: !2262, file: !288, line: 251, type: !50)
!2269 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2262, file: !288, line: 251, type: !55)
!2270 = !DILocalVariable(name: "arg", arg: 3, scope: !2262, file: !288, line: 252, type: !58)
!2271 = !DILocalVariable(name: "argsize", arg: 4, scope: !2262, file: !288, line: 252, type: !55)
!2272 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2262, file: !288, line: 253, type: !26)
!2273 = !DILocalVariable(name: "flags", arg: 6, scope: !2262, file: !288, line: 253, type: !53)
!2274 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2262, file: !288, line: 254, type: !2265)
!2275 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2262, file: !288, line: 255, type: !58)
!2276 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2262, file: !288, line: 256, type: !58)
!2277 = !DILocalVariable(name: "unibyte_locale", scope: !2262, file: !288, line: 258, type: !64)
!2278 = !DILocalVariable(name: "len", scope: !2262, file: !288, line: 260, type: !55)
!2279 = !DILocalVariable(name: "orig_buffersize", scope: !2262, file: !288, line: 261, type: !55)
!2280 = !DILocalVariable(name: "quote_string", scope: !2262, file: !288, line: 262, type: !58)
!2281 = !DILocalVariable(name: "quote_string_len", scope: !2262, file: !288, line: 263, type: !55)
!2282 = !DILocalVariable(name: "backslash_escapes", scope: !2262, file: !288, line: 264, type: !64)
!2283 = !DILocalVariable(name: "elide_outer_quotes", scope: !2262, file: !288, line: 265, type: !64)
!2284 = !DILocalVariable(name: "encountered_single_quote", scope: !2262, file: !288, line: 266, type: !64)
!2285 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2262, file: !288, line: 267, type: !64)
!2286 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2262, file: !288, line: 309, type: !64)
!2287 = !DILocalVariable(name: "lq", scope: !2288, file: !288, line: 361, type: !58)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !288, line: 361, column: 11)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !288, line: 360, column: 13)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !288, line: 333, column: 7)
!2291 = distinct !DILexicalBlock(scope: !2262, file: !288, line: 312, column: 5)
!2292 = !DILocalVariable(name: "i", scope: !2293, file: !288, line: 395, type: !55)
!2293 = distinct !DILexicalBlock(scope: !2262, file: !288, line: 395, column: 3)
!2294 = !DILocalVariable(name: "is_right_quote", scope: !2295, file: !288, line: 397, type: !64)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !288, line: 396, column: 5)
!2296 = distinct !DILexicalBlock(scope: !2293, file: !288, line: 395, column: 3)
!2297 = !DILocalVariable(name: "escaping", scope: !2295, file: !288, line: 398, type: !64)
!2298 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2295, file: !288, line: 399, type: !64)
!2299 = !DILocalVariable(name: "c", scope: !2295, file: !288, line: 417, type: !60)
!2300 = !DILocalVariable(name: "m", scope: !2301, file: !288, line: 598, type: !55)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !288, line: 596, column: 11)
!2302 = distinct !DILexicalBlock(scope: !2295, file: !288, line: 419, column: 9)
!2303 = !DILocalVariable(name: "printable", scope: !2301, file: !288, line: 600, type: !64)
!2304 = !DILocalVariable(name: "mbs", scope: !2305, file: !288, line: 609, type: !331)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !288, line: 608, column: 15)
!2306 = distinct !DILexicalBlock(scope: !2301, file: !288, line: 602, column: 17)
!2307 = !DILocalVariable(name: "w", scope: !2308, file: !288, line: 618, type: !264)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !288, line: 617, column: 19)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !288, line: 616, column: 17)
!2310 = distinct !DILexicalBlock(scope: !2305, file: !288, line: 616, column: 17)
!2311 = !DILocalVariable(name: "bytes", scope: !2308, file: !288, line: 619, type: !55)
!2312 = !DILocalVariable(name: "j", scope: !2313, file: !288, line: 648, type: !55)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !288, line: 648, column: 29)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !288, line: 647, column: 27)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !288, line: 645, column: 29)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !288, line: 636, column: 23)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !288, line: 628, column: 30)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !288, line: 623, column: 30)
!2319 = distinct !DILexicalBlock(scope: !2308, file: !288, line: 621, column: 25)
!2320 = !DILocalVariable(name: "ilim", scope: !2321, file: !288, line: 674, type: !55)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !288, line: 671, column: 15)
!2322 = distinct !DILexicalBlock(scope: !2301, file: !288, line: 670, column: 17)
!2323 = !DILabel(scope: !2262, name: "process_input", file: !288, line: 308)
!2324 = !DILabel(scope: !2325, name: "c_and_shell_escape", file: !288, line: 502)
!2325 = distinct !DILexicalBlock(scope: !2302, file: !288, line: 478, column: 9)
!2326 = !DILabel(scope: !2325, name: "c_escape", file: !288, line: 507)
!2327 = !DILabel(scope: !2295, name: "store_escape", file: !288, line: 709)
!2328 = !DILabel(scope: !2295, name: "store_c", file: !288, line: 712)
!2329 = !DILabel(scope: !2262, name: "force_outer_quoting_style", file: !288, line: 753)
!2330 = !DILocation(line: 0, scope: !2262)
!2331 = !DILocation(line: 258, column: 25, scope: !2262)
!2332 = !DILocation(line: 258, column: 36, scope: !2262)
!2333 = !DILocation(line: 267, column: 3, scope: !2262)
!2334 = !DILocation(line: 261, column: 10, scope: !2262)
!2335 = !DILocation(line: 262, column: 15, scope: !2262)
!2336 = !DILocation(line: 263, column: 10, scope: !2262)
!2337 = !DILocation(line: 308, column: 2, scope: !2262)
!2338 = !DILocation(line: 311, column: 3, scope: !2262)
!2339 = !DILocation(line: 318, column: 11, scope: !2291)
!2340 = !DILocation(line: 319, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !288, line: 319, column: 9)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !288, line: 319, column: 9)
!2343 = distinct !DILexicalBlock(scope: !2291, file: !288, line: 318, column: 11)
!2344 = !DILocation(line: 319, column: 9, scope: !2342)
!2345 = !DILocation(line: 0, scope: !322, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 357, column: 26, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !288, line: 335, column: 11)
!2348 = distinct !DILexicalBlock(scope: !2290, file: !288, line: 334, column: 13)
!2349 = !DILocation(line: 199, column: 29, scope: !322, inlinedAt: !2346)
!2350 = !DILocation(line: 201, column: 19, scope: !2351, inlinedAt: !2346)
!2351 = distinct !DILexicalBlock(scope: !322, file: !288, line: 201, column: 7)
!2352 = !DILocation(line: 201, column: 7, scope: !322, inlinedAt: !2346)
!2353 = !DILocation(line: 229, column: 3, scope: !322, inlinedAt: !2346)
!2354 = !DILocation(line: 230, column: 3, scope: !322, inlinedAt: !2346)
!2355 = !DILocation(line: 230, column: 13, scope: !322, inlinedAt: !2346)
!2356 = !DILocalVariable(name: "ps", arg: 1, scope: !2357, file: !2111, line: 1135, type: !2360)
!2357 = distinct !DISubprogram(name: "mbszero", scope: !2111, file: !2111, line: 1135, type: !2358, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2361)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!2361 = !{!2356}
!2362 = !DILocation(line: 0, scope: !2357, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 230, column: 18, scope: !322, inlinedAt: !2346)
!2364 = !DILocalVariable(name: "__dest", arg: 1, scope: !2365, file: !1863, line: 57, type: !52)
!2365 = distinct !DISubprogram(name: "memset", scope: !1863, file: !1863, line: 57, type: !1864, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2366)
!2366 = !{!2364, !2367, !2368}
!2367 = !DILocalVariable(name: "__ch", arg: 2, scope: !2365, file: !1863, line: 57, type: !53)
!2368 = !DILocalVariable(name: "__len", arg: 3, scope: !2365, file: !1863, line: 57, type: !55)
!2369 = !DILocation(line: 0, scope: !2365, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 1137, column: 3, scope: !2357, inlinedAt: !2363)
!2371 = !DILocation(line: 59, column: 10, scope: !2365, inlinedAt: !2370)
!2372 = !DILocation(line: 231, column: 7, scope: !2373, inlinedAt: !2346)
!2373 = distinct !DILexicalBlock(scope: !322, file: !288, line: 231, column: 7)
!2374 = !DILocation(line: 231, column: 40, scope: !2373, inlinedAt: !2346)
!2375 = !DILocation(line: 231, column: 45, scope: !2373, inlinedAt: !2346)
!2376 = !DILocation(line: 235, column: 1, scope: !322, inlinedAt: !2346)
!2377 = !DILocation(line: 0, scope: !322, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 358, column: 27, scope: !2347)
!2379 = !DILocation(line: 199, column: 29, scope: !322, inlinedAt: !2378)
!2380 = !DILocation(line: 201, column: 19, scope: !2351, inlinedAt: !2378)
!2381 = !DILocation(line: 201, column: 7, scope: !322, inlinedAt: !2378)
!2382 = !DILocation(line: 229, column: 3, scope: !322, inlinedAt: !2378)
!2383 = !DILocation(line: 230, column: 3, scope: !322, inlinedAt: !2378)
!2384 = !DILocation(line: 230, column: 13, scope: !322, inlinedAt: !2378)
!2385 = !DILocation(line: 0, scope: !2357, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 230, column: 18, scope: !322, inlinedAt: !2378)
!2387 = !DILocation(line: 0, scope: !2365, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 1137, column: 3, scope: !2357, inlinedAt: !2386)
!2389 = !DILocation(line: 59, column: 10, scope: !2365, inlinedAt: !2388)
!2390 = !DILocation(line: 231, column: 7, scope: !2373, inlinedAt: !2378)
!2391 = !DILocation(line: 231, column: 40, scope: !2373, inlinedAt: !2378)
!2392 = !DILocation(line: 231, column: 45, scope: !2373, inlinedAt: !2378)
!2393 = !DILocation(line: 235, column: 1, scope: !322, inlinedAt: !2378)
!2394 = !DILocation(line: 360, column: 13, scope: !2290)
!2395 = !DILocation(line: 0, scope: !2288)
!2396 = !DILocation(line: 361, column: 45, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2288, file: !288, line: 361, column: 11)
!2398 = !DILocation(line: 361, column: 11, scope: !2288)
!2399 = !DILocation(line: 362, column: 13, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !288, line: 362, column: 13)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !288, line: 362, column: 13)
!2402 = !DILocation(line: 362, column: 13, scope: !2401)
!2403 = !DILocation(line: 361, column: 52, scope: !2397)
!2404 = distinct !{!2404, !2398, !2405, !577}
!2405 = !DILocation(line: 362, column: 13, scope: !2288)
!2406 = !DILocation(line: 260, column: 10, scope: !2262)
!2407 = !DILocation(line: 365, column: 28, scope: !2290)
!2408 = !DILocation(line: 367, column: 7, scope: !2291)
!2409 = !DILocation(line: 370, column: 7, scope: !2291)
!2410 = !DILocation(line: 376, column: 11, scope: !2291)
!2411 = !DILocation(line: 381, column: 11, scope: !2291)
!2412 = !DILocation(line: 382, column: 9, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !288, line: 382, column: 9)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !288, line: 382, column: 9)
!2415 = distinct !DILexicalBlock(scope: !2291, file: !288, line: 381, column: 11)
!2416 = !DILocation(line: 382, column: 9, scope: !2414)
!2417 = !DILocation(line: 389, column: 7, scope: !2291)
!2418 = !DILocation(line: 392, column: 7, scope: !2291)
!2419 = !DILocation(line: 0, scope: !2293)
!2420 = !DILocation(line: 395, column: 8, scope: !2293)
!2421 = !DILocation(line: 395, column: 34, scope: !2296)
!2422 = !DILocation(line: 395, column: 26, scope: !2296)
!2423 = !DILocation(line: 395, column: 48, scope: !2296)
!2424 = !DILocation(line: 395, column: 55, scope: !2296)
!2425 = !DILocation(line: 395, column: 3, scope: !2293)
!2426 = !DILocation(line: 395, column: 67, scope: !2296)
!2427 = !DILocation(line: 0, scope: !2295)
!2428 = !DILocation(line: 402, column: 11, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2295, file: !288, line: 401, column: 11)
!2430 = !DILocation(line: 404, column: 17, scope: !2429)
!2431 = !DILocation(line: 405, column: 39, scope: !2429)
!2432 = !DILocation(line: 409, column: 32, scope: !2429)
!2433 = !DILocation(line: 405, column: 19, scope: !2429)
!2434 = !DILocation(line: 405, column: 15, scope: !2429)
!2435 = !DILocation(line: 410, column: 11, scope: !2429)
!2436 = !DILocation(line: 410, column: 25, scope: !2429)
!2437 = !DILocalVariable(name: "__s1", arg: 1, scope: !2438, file: !561, line: 974, type: !729)
!2438 = distinct !DISubprogram(name: "memeq", scope: !561, file: !561, line: 974, type: !2082, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2439)
!2439 = !{!2437, !2440, !2441}
!2440 = !DILocalVariable(name: "__s2", arg: 2, scope: !2438, file: !561, line: 974, type: !729)
!2441 = !DILocalVariable(name: "__n", arg: 3, scope: !2438, file: !561, line: 974, type: !55)
!2442 = !DILocation(line: 0, scope: !2438, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 410, column: 14, scope: !2429)
!2444 = !DILocation(line: 976, column: 11, scope: !2438, inlinedAt: !2443)
!2445 = !DILocation(line: 976, column: 10, scope: !2438, inlinedAt: !2443)
!2446 = !DILocation(line: 401, column: 11, scope: !2295)
!2447 = !DILocation(line: 417, column: 25, scope: !2295)
!2448 = !DILocation(line: 418, column: 7, scope: !2295)
!2449 = !DILocation(line: 421, column: 15, scope: !2302)
!2450 = !DILocation(line: 423, column: 15, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !288, line: 423, column: 15)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !288, line: 422, column: 13)
!2453 = distinct !DILexicalBlock(scope: !2302, file: !288, line: 421, column: 15)
!2454 = !DILocation(line: 423, column: 15, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !288, line: 423, column: 15)
!2456 = !DILocation(line: 423, column: 15, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !288, line: 423, column: 15)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !288, line: 423, column: 15)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !288, line: 423, column: 15)
!2460 = !DILocation(line: 423, column: 15, scope: !2458)
!2461 = !DILocation(line: 423, column: 15, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !288, line: 423, column: 15)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !288, line: 423, column: 15)
!2464 = !DILocation(line: 423, column: 15, scope: !2463)
!2465 = !DILocation(line: 423, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !288, line: 423, column: 15)
!2467 = distinct !DILexicalBlock(scope: !2459, file: !288, line: 423, column: 15)
!2468 = !DILocation(line: 423, column: 15, scope: !2467)
!2469 = !DILocation(line: 423, column: 15, scope: !2459)
!2470 = !DILocation(line: 423, column: 15, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !288, line: 423, column: 15)
!2472 = distinct !DILexicalBlock(scope: !2451, file: !288, line: 423, column: 15)
!2473 = !DILocation(line: 423, column: 15, scope: !2472)
!2474 = !DILocation(line: 431, column: 19, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2452, file: !288, line: 430, column: 19)
!2476 = !DILocation(line: 431, column: 24, scope: !2475)
!2477 = !DILocation(line: 431, column: 28, scope: !2475)
!2478 = !DILocation(line: 431, column: 38, scope: !2475)
!2479 = !DILocation(line: 431, column: 48, scope: !2475)
!2480 = !DILocation(line: 431, column: 59, scope: !2475)
!2481 = !DILocation(line: 433, column: 19, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !288, line: 433, column: 19)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !288, line: 433, column: 19)
!2484 = distinct !DILexicalBlock(scope: !2475, file: !288, line: 432, column: 17)
!2485 = !DILocation(line: 433, column: 19, scope: !2483)
!2486 = !DILocation(line: 434, column: 19, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !288, line: 434, column: 19)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !288, line: 434, column: 19)
!2489 = !DILocation(line: 434, column: 19, scope: !2488)
!2490 = !DILocation(line: 435, column: 17, scope: !2484)
!2491 = !DILocation(line: 442, column: 20, scope: !2453)
!2492 = !DILocation(line: 447, column: 11, scope: !2302)
!2493 = !DILocation(line: 450, column: 19, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2302, file: !288, line: 448, column: 13)
!2495 = !DILocation(line: 456, column: 19, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2494, file: !288, line: 455, column: 19)
!2497 = !DILocation(line: 456, column: 24, scope: !2496)
!2498 = !DILocation(line: 456, column: 28, scope: !2496)
!2499 = !DILocation(line: 456, column: 38, scope: !2496)
!2500 = !DILocation(line: 456, column: 47, scope: !2496)
!2501 = !DILocation(line: 456, column: 41, scope: !2496)
!2502 = !DILocation(line: 456, column: 52, scope: !2496)
!2503 = !DILocation(line: 455, column: 19, scope: !2494)
!2504 = !DILocation(line: 457, column: 25, scope: !2496)
!2505 = !DILocation(line: 457, column: 17, scope: !2496)
!2506 = !DILocation(line: 464, column: 25, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2496, file: !288, line: 458, column: 19)
!2508 = !DILocation(line: 468, column: 21, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !288, line: 468, column: 21)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !288, line: 468, column: 21)
!2511 = !DILocation(line: 468, column: 21, scope: !2510)
!2512 = !DILocation(line: 469, column: 21, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !288, line: 469, column: 21)
!2514 = distinct !DILexicalBlock(scope: !2507, file: !288, line: 469, column: 21)
!2515 = !DILocation(line: 469, column: 21, scope: !2514)
!2516 = !DILocation(line: 470, column: 21, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !288, line: 470, column: 21)
!2518 = distinct !DILexicalBlock(scope: !2507, file: !288, line: 470, column: 21)
!2519 = !DILocation(line: 470, column: 21, scope: !2518)
!2520 = !DILocation(line: 471, column: 21, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !288, line: 471, column: 21)
!2522 = distinct !DILexicalBlock(scope: !2507, file: !288, line: 471, column: 21)
!2523 = !DILocation(line: 471, column: 21, scope: !2522)
!2524 = !DILocation(line: 472, column: 21, scope: !2507)
!2525 = !DILocation(line: 482, column: 33, scope: !2325)
!2526 = !DILocation(line: 483, column: 33, scope: !2325)
!2527 = !DILocation(line: 485, column: 33, scope: !2325)
!2528 = !DILocation(line: 486, column: 33, scope: !2325)
!2529 = !DILocation(line: 487, column: 33, scope: !2325)
!2530 = !DILocation(line: 490, column: 17, scope: !2325)
!2531 = !DILocation(line: 492, column: 21, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !288, line: 491, column: 15)
!2533 = distinct !DILexicalBlock(scope: !2325, file: !288, line: 490, column: 17)
!2534 = !DILocation(line: 499, column: 35, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2325, file: !288, line: 499, column: 17)
!2536 = !DILocation(line: 499, column: 57, scope: !2535)
!2537 = !DILocation(line: 0, scope: !2325)
!2538 = !DILocation(line: 502, column: 11, scope: !2325)
!2539 = !DILocation(line: 504, column: 17, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2325, file: !288, line: 503, column: 17)
!2541 = !DILocation(line: 507, column: 11, scope: !2325)
!2542 = !DILocation(line: 508, column: 17, scope: !2325)
!2543 = !DILocation(line: 517, column: 15, scope: !2302)
!2544 = !DILocation(line: 517, column: 40, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2302, file: !288, line: 517, column: 15)
!2546 = !DILocation(line: 517, column: 47, scope: !2545)
!2547 = !DILocation(line: 517, column: 18, scope: !2545)
!2548 = !DILocation(line: 521, column: 17, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2302, file: !288, line: 521, column: 15)
!2550 = !DILocation(line: 521, column: 15, scope: !2302)
!2551 = !DILocation(line: 525, column: 11, scope: !2302)
!2552 = !DILocation(line: 537, column: 15, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2302, file: !288, line: 536, column: 15)
!2554 = !DILocation(line: 536, column: 15, scope: !2302)
!2555 = !DILocation(line: 544, column: 15, scope: !2302)
!2556 = !DILocation(line: 546, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !288, line: 545, column: 13)
!2558 = distinct !DILexicalBlock(scope: !2302, file: !288, line: 544, column: 15)
!2559 = !DILocation(line: 549, column: 19, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !288, line: 549, column: 19)
!2561 = !DILocation(line: 549, column: 30, scope: !2560)
!2562 = !DILocation(line: 558, column: 15, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !288, line: 558, column: 15)
!2564 = distinct !DILexicalBlock(scope: !2557, file: !288, line: 558, column: 15)
!2565 = !DILocation(line: 558, column: 15, scope: !2564)
!2566 = !DILocation(line: 559, column: 15, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !288, line: 559, column: 15)
!2568 = distinct !DILexicalBlock(scope: !2557, file: !288, line: 559, column: 15)
!2569 = !DILocation(line: 559, column: 15, scope: !2568)
!2570 = !DILocation(line: 560, column: 15, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !288, line: 560, column: 15)
!2572 = distinct !DILexicalBlock(scope: !2557, file: !288, line: 560, column: 15)
!2573 = !DILocation(line: 560, column: 15, scope: !2572)
!2574 = !DILocation(line: 562, column: 13, scope: !2557)
!2575 = !DILocation(line: 602, column: 17, scope: !2301)
!2576 = !DILocation(line: 0, scope: !2301)
!2577 = !DILocation(line: 605, column: 29, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2306, file: !288, line: 603, column: 15)
!2579 = !DILocation(line: 605, column: 41, scope: !2578)
!2580 = !DILocation(line: 670, column: 23, scope: !2322)
!2581 = !DILocation(line: 609, column: 17, scope: !2305)
!2582 = !DILocation(line: 609, column: 27, scope: !2305)
!2583 = !DILocation(line: 0, scope: !2357, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 609, column: 32, scope: !2305)
!2585 = !DILocation(line: 0, scope: !2365, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 1137, column: 3, scope: !2357, inlinedAt: !2584)
!2587 = !DILocation(line: 59, column: 10, scope: !2365, inlinedAt: !2586)
!2588 = !DILocation(line: 613, column: 29, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2305, file: !288, line: 613, column: 21)
!2590 = !DILocation(line: 613, column: 21, scope: !2305)
!2591 = !DILocation(line: 614, column: 29, scope: !2589)
!2592 = !DILocation(line: 614, column: 19, scope: !2589)
!2593 = !DILocation(line: 618, column: 21, scope: !2308)
!2594 = !DILocation(line: 620, column: 54, scope: !2308)
!2595 = !DILocation(line: 0, scope: !2308)
!2596 = !DILocation(line: 619, column: 36, scope: !2308)
!2597 = !DILocation(line: 621, column: 25, scope: !2308)
!2598 = !DILocation(line: 631, column: 38, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2317, file: !288, line: 629, column: 23)
!2600 = !DILocation(line: 631, column: 48, scope: !2599)
!2601 = !DILocation(line: 665, column: 19, scope: !2309)
!2602 = !DILocation(line: 666, column: 15, scope: !2306)
!2603 = !DILocation(line: 626, column: 25, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2318, file: !288, line: 624, column: 23)
!2605 = !DILocation(line: 631, column: 51, scope: !2599)
!2606 = !DILocation(line: 631, column: 25, scope: !2599)
!2607 = !DILocation(line: 632, column: 28, scope: !2599)
!2608 = !DILocation(line: 631, column: 34, scope: !2599)
!2609 = distinct !{!2609, !2606, !2607, !577}
!2610 = !DILocation(line: 646, column: 29, scope: !2315)
!2611 = !DILocation(line: 0, scope: !2313)
!2612 = !DILocation(line: 649, column: 49, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2313, file: !288, line: 648, column: 29)
!2614 = !DILocation(line: 649, column: 39, scope: !2613)
!2615 = !DILocation(line: 649, column: 31, scope: !2613)
!2616 = !DILocation(line: 648, column: 60, scope: !2613)
!2617 = !DILocation(line: 648, column: 50, scope: !2613)
!2618 = !DILocation(line: 648, column: 29, scope: !2313)
!2619 = distinct !{!2619, !2618, !2620, !577}
!2620 = !DILocation(line: 654, column: 33, scope: !2313)
!2621 = !DILocation(line: 657, column: 43, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2316, file: !288, line: 657, column: 29)
!2623 = !DILocalVariable(name: "wc", arg: 1, scope: !2624, file: !2625, line: 865, type: !2628)
!2624 = distinct !DISubprogram(name: "c32isprint", scope: !2625, file: !2625, line: 865, type: !2626, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2630)
!2625 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!53, !2628}
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2629, line: 20, baseType: !6)
!2629 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2630 = !{!2623}
!2631 = !DILocation(line: 0, scope: !2624, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 657, column: 31, scope: !2622)
!2633 = !DILocation(line: 871, column: 10, scope: !2624, inlinedAt: !2632)
!2634 = !DILocation(line: 657, column: 31, scope: !2622)
!2635 = !DILocation(line: 664, column: 23, scope: !2308)
!2636 = !DILocation(line: 753, column: 2, scope: !2262)
!2637 = !DILocation(line: 756, column: 51, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2262, file: !288, line: 756, column: 7)
!2639 = !DILocation(line: 670, column: 19, scope: !2322)
!2640 = !DILocation(line: 670, column: 45, scope: !2322)
!2641 = !DILocation(line: 674, column: 33, scope: !2321)
!2642 = !DILocation(line: 0, scope: !2321)
!2643 = !DILocation(line: 676, column: 17, scope: !2321)
!2644 = !DILocation(line: 398, column: 12, scope: !2295)
!2645 = !DILocation(line: 678, column: 43, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !288, line: 678, column: 25)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !288, line: 677, column: 19)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !288, line: 676, column: 17)
!2649 = distinct !DILexicalBlock(scope: !2321, file: !288, line: 676, column: 17)
!2650 = !DILocation(line: 680, column: 25, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !288, line: 680, column: 25)
!2652 = distinct !DILexicalBlock(scope: !2646, file: !288, line: 679, column: 23)
!2653 = !DILocation(line: 680, column: 25, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !288, line: 680, column: 25)
!2655 = !DILocation(line: 680, column: 25, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !288, line: 680, column: 25)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !288, line: 680, column: 25)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !288, line: 680, column: 25)
!2659 = !DILocation(line: 680, column: 25, scope: !2657)
!2660 = !DILocation(line: 680, column: 25, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !288, line: 680, column: 25)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !288, line: 680, column: 25)
!2663 = !DILocation(line: 680, column: 25, scope: !2662)
!2664 = !DILocation(line: 680, column: 25, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !288, line: 680, column: 25)
!2666 = distinct !DILexicalBlock(scope: !2658, file: !288, line: 680, column: 25)
!2667 = !DILocation(line: 680, column: 25, scope: !2666)
!2668 = !DILocation(line: 680, column: 25, scope: !2658)
!2669 = !DILocation(line: 680, column: 25, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !288, line: 680, column: 25)
!2671 = distinct !DILexicalBlock(scope: !2651, file: !288, line: 680, column: 25)
!2672 = !DILocation(line: 680, column: 25, scope: !2671)
!2673 = !DILocation(line: 681, column: 25, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !288, line: 681, column: 25)
!2675 = distinct !DILexicalBlock(scope: !2652, file: !288, line: 681, column: 25)
!2676 = !DILocation(line: 681, column: 25, scope: !2675)
!2677 = !DILocation(line: 682, column: 25, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !288, line: 682, column: 25)
!2679 = distinct !DILexicalBlock(scope: !2652, file: !288, line: 682, column: 25)
!2680 = !DILocation(line: 682, column: 25, scope: !2679)
!2681 = !DILocation(line: 683, column: 38, scope: !2652)
!2682 = !DILocation(line: 683, column: 33, scope: !2652)
!2683 = !DILocation(line: 684, column: 23, scope: !2652)
!2684 = !DILocation(line: 685, column: 30, scope: !2646)
!2685 = !DILocation(line: 687, column: 25, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !288, line: 687, column: 25)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !288, line: 687, column: 25)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !288, line: 686, column: 23)
!2689 = distinct !DILexicalBlock(scope: !2646, file: !288, line: 685, column: 30)
!2690 = !DILocation(line: 687, column: 25, scope: !2687)
!2691 = !DILocation(line: 689, column: 23, scope: !2688)
!2692 = !DILocation(line: 690, column: 35, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2647, file: !288, line: 690, column: 25)
!2694 = !DILocation(line: 690, column: 30, scope: !2693)
!2695 = !DILocation(line: 690, column: 25, scope: !2647)
!2696 = !DILocation(line: 692, column: 21, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !288, line: 692, column: 21)
!2698 = distinct !DILexicalBlock(scope: !2647, file: !288, line: 692, column: 21)
!2699 = !DILocation(line: 692, column: 21, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !288, line: 692, column: 21)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !288, line: 692, column: 21)
!2702 = distinct !DILexicalBlock(scope: !2697, file: !288, line: 692, column: 21)
!2703 = !DILocation(line: 692, column: 21, scope: !2701)
!2704 = !DILocation(line: 692, column: 21, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !288, line: 692, column: 21)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !288, line: 692, column: 21)
!2707 = !DILocation(line: 692, column: 21, scope: !2706)
!2708 = !DILocation(line: 692, column: 21, scope: !2702)
!2709 = !DILocation(line: 0, scope: !2647)
!2710 = !DILocation(line: 693, column: 21, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !288, line: 693, column: 21)
!2712 = distinct !DILexicalBlock(scope: !2647, file: !288, line: 693, column: 21)
!2713 = !DILocation(line: 693, column: 21, scope: !2712)
!2714 = !DILocation(line: 694, column: 25, scope: !2647)
!2715 = !DILocation(line: 676, column: 17, scope: !2648)
!2716 = distinct !{!2716, !2717, !2718}
!2717 = !DILocation(line: 676, column: 17, scope: !2649)
!2718 = !DILocation(line: 695, column: 19, scope: !2649)
!2719 = !DILocation(line: 409, column: 30, scope: !2429)
!2720 = !DILocation(line: 702, column: 34, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2295, file: !288, line: 702, column: 11)
!2722 = !DILocation(line: 704, column: 14, scope: !2721)
!2723 = !DILocation(line: 705, column: 14, scope: !2721)
!2724 = !DILocation(line: 705, column: 35, scope: !2721)
!2725 = !DILocation(line: 705, column: 17, scope: !2721)
!2726 = !DILocation(line: 705, column: 47, scope: !2721)
!2727 = !DILocation(line: 705, column: 65, scope: !2721)
!2728 = !DILocation(line: 706, column: 11, scope: !2721)
!2729 = !DILocation(line: 702, column: 11, scope: !2295)
!2730 = !DILocation(line: 395, column: 15, scope: !2293)
!2731 = !DILocation(line: 709, column: 5, scope: !2295)
!2732 = !DILocation(line: 710, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2295, file: !288, line: 710, column: 7)
!2734 = !DILocation(line: 710, column: 7, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2733, file: !288, line: 710, column: 7)
!2736 = !DILocation(line: 710, column: 7, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !288, line: 710, column: 7)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !288, line: 710, column: 7)
!2739 = distinct !DILexicalBlock(scope: !2735, file: !288, line: 710, column: 7)
!2740 = !DILocation(line: 710, column: 7, scope: !2738)
!2741 = !DILocation(line: 710, column: 7, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !288, line: 710, column: 7)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !288, line: 710, column: 7)
!2744 = !DILocation(line: 710, column: 7, scope: !2743)
!2745 = !DILocation(line: 710, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !288, line: 710, column: 7)
!2747 = distinct !DILexicalBlock(scope: !2739, file: !288, line: 710, column: 7)
!2748 = !DILocation(line: 710, column: 7, scope: !2747)
!2749 = !DILocation(line: 710, column: 7, scope: !2739)
!2750 = !DILocation(line: 710, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !288, line: 710, column: 7)
!2752 = distinct !DILexicalBlock(scope: !2733, file: !288, line: 710, column: 7)
!2753 = !DILocation(line: 710, column: 7, scope: !2752)
!2754 = !DILocation(line: 712, column: 5, scope: !2295)
!2755 = !DILocation(line: 713, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !288, line: 713, column: 7)
!2757 = distinct !DILexicalBlock(scope: !2295, file: !288, line: 713, column: 7)
!2758 = !DILocation(line: 417, column: 21, scope: !2295)
!2759 = !DILocation(line: 713, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !288, line: 713, column: 7)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !288, line: 713, column: 7)
!2762 = distinct !DILexicalBlock(scope: !2756, file: !288, line: 713, column: 7)
!2763 = !DILocation(line: 713, column: 7, scope: !2761)
!2764 = !DILocation(line: 713, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !288, line: 713, column: 7)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !288, line: 713, column: 7)
!2767 = !DILocation(line: 713, column: 7, scope: !2766)
!2768 = !DILocation(line: 713, column: 7, scope: !2762)
!2769 = !DILocation(line: 714, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !288, line: 714, column: 7)
!2771 = distinct !DILexicalBlock(scope: !2295, file: !288, line: 714, column: 7)
!2772 = !DILocation(line: 714, column: 7, scope: !2771)
!2773 = !DILocation(line: 716, column: 11, scope: !2295)
!2774 = !DILocation(line: 718, column: 5, scope: !2296)
!2775 = !DILocation(line: 395, column: 82, scope: !2296)
!2776 = !DILocation(line: 395, column: 3, scope: !2296)
!2777 = distinct !{!2777, !2425, !2778, !577}
!2778 = !DILocation(line: 718, column: 5, scope: !2293)
!2779 = !DILocation(line: 720, column: 11, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2262, file: !288, line: 720, column: 7)
!2781 = !DILocation(line: 720, column: 16, scope: !2780)
!2782 = !DILocation(line: 728, column: 51, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2262, file: !288, line: 728, column: 7)
!2784 = !DILocation(line: 731, column: 11, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2783, file: !288, line: 730, column: 5)
!2786 = !DILocation(line: 732, column: 16, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2785, file: !288, line: 731, column: 11)
!2788 = !DILocation(line: 732, column: 9, scope: !2787)
!2789 = !DILocation(line: 736, column: 18, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2787, file: !288, line: 736, column: 16)
!2791 = !DILocation(line: 736, column: 29, scope: !2790)
!2792 = !DILocation(line: 745, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2262, file: !288, line: 745, column: 7)
!2794 = !DILocation(line: 745, column: 20, scope: !2793)
!2795 = !DILocation(line: 746, column: 12, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !288, line: 746, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2793, file: !288, line: 746, column: 5)
!2798 = !DILocation(line: 746, column: 5, scope: !2797)
!2799 = !DILocation(line: 747, column: 7, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !288, line: 747, column: 7)
!2801 = distinct !DILexicalBlock(scope: !2796, file: !288, line: 747, column: 7)
!2802 = !DILocation(line: 747, column: 7, scope: !2801)
!2803 = !DILocation(line: 746, column: 39, scope: !2796)
!2804 = distinct !{!2804, !2798, !2805, !577}
!2805 = !DILocation(line: 747, column: 7, scope: !2797)
!2806 = !DILocation(line: 749, column: 11, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2262, file: !288, line: 749, column: 7)
!2808 = !DILocation(line: 749, column: 7, scope: !2262)
!2809 = !DILocation(line: 750, column: 5, scope: !2807)
!2810 = !DILocation(line: 750, column: 17, scope: !2807)
!2811 = !DILocation(line: 756, column: 21, scope: !2638)
!2812 = !DILocation(line: 760, column: 42, scope: !2262)
!2813 = !DILocation(line: 758, column: 10, scope: !2262)
!2814 = !DILocation(line: 758, column: 3, scope: !2262)
!2815 = !DILocation(line: 762, column: 1, scope: !2262)
!2816 = !DISubprogram(name: "iswprint", scope: !2817, file: !2817, line: 120, type: !2626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!2817 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2818 = distinct !DISubprogram(name: "quotearg_alloc", scope: !288, file: !288, line: 788, type: !2819, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!50, !58, !55, !2154}
!2821 = !{!2822, !2823, !2824}
!2822 = !DILocalVariable(name: "arg", arg: 1, scope: !2818, file: !288, line: 788, type: !58)
!2823 = !DILocalVariable(name: "argsize", arg: 2, scope: !2818, file: !288, line: 788, type: !55)
!2824 = !DILocalVariable(name: "o", arg: 3, scope: !2818, file: !288, line: 789, type: !2154)
!2825 = !DILocation(line: 0, scope: !2818)
!2826 = !DILocalVariable(name: "arg", arg: 1, scope: !2827, file: !288, line: 801, type: !58)
!2827 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !288, file: !288, line: 801, type: !2828, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!50, !58, !55, !449, !2154}
!2830 = !{!2826, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838}
!2831 = !DILocalVariable(name: "argsize", arg: 2, scope: !2827, file: !288, line: 801, type: !55)
!2832 = !DILocalVariable(name: "size", arg: 3, scope: !2827, file: !288, line: 801, type: !449)
!2833 = !DILocalVariable(name: "o", arg: 4, scope: !2827, file: !288, line: 802, type: !2154)
!2834 = !DILocalVariable(name: "p", scope: !2827, file: !288, line: 804, type: !2154)
!2835 = !DILocalVariable(name: "saved_errno", scope: !2827, file: !288, line: 805, type: !53)
!2836 = !DILocalVariable(name: "flags", scope: !2827, file: !288, line: 807, type: !53)
!2837 = !DILocalVariable(name: "bufsize", scope: !2827, file: !288, line: 808, type: !55)
!2838 = !DILocalVariable(name: "buf", scope: !2827, file: !288, line: 812, type: !50)
!2839 = !DILocation(line: 0, scope: !2827, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 791, column: 10, scope: !2818)
!2841 = !DILocation(line: 804, column: 37, scope: !2827, inlinedAt: !2840)
!2842 = !DILocation(line: 805, column: 21, scope: !2827, inlinedAt: !2840)
!2843 = !DILocation(line: 807, column: 18, scope: !2827, inlinedAt: !2840)
!2844 = !DILocation(line: 807, column: 24, scope: !2827, inlinedAt: !2840)
!2845 = !DILocation(line: 808, column: 72, scope: !2827, inlinedAt: !2840)
!2846 = !DILocation(line: 809, column: 53, scope: !2827, inlinedAt: !2840)
!2847 = !DILocation(line: 810, column: 49, scope: !2827, inlinedAt: !2840)
!2848 = !DILocation(line: 811, column: 49, scope: !2827, inlinedAt: !2840)
!2849 = !DILocation(line: 808, column: 20, scope: !2827, inlinedAt: !2840)
!2850 = !DILocation(line: 811, column: 62, scope: !2827, inlinedAt: !2840)
!2851 = !DILocation(line: 812, column: 15, scope: !2827, inlinedAt: !2840)
!2852 = !DILocation(line: 813, column: 60, scope: !2827, inlinedAt: !2840)
!2853 = !DILocation(line: 815, column: 32, scope: !2827, inlinedAt: !2840)
!2854 = !DILocation(line: 815, column: 47, scope: !2827, inlinedAt: !2840)
!2855 = !DILocation(line: 813, column: 3, scope: !2827, inlinedAt: !2840)
!2856 = !DILocation(line: 816, column: 9, scope: !2827, inlinedAt: !2840)
!2857 = !DILocation(line: 791, column: 3, scope: !2818)
!2858 = !DILocation(line: 0, scope: !2827)
!2859 = !DILocation(line: 804, column: 37, scope: !2827)
!2860 = !DILocation(line: 805, column: 21, scope: !2827)
!2861 = !DILocation(line: 807, column: 18, scope: !2827)
!2862 = !DILocation(line: 807, column: 27, scope: !2827)
!2863 = !DILocation(line: 807, column: 24, scope: !2827)
!2864 = !DILocation(line: 808, column: 72, scope: !2827)
!2865 = !DILocation(line: 809, column: 53, scope: !2827)
!2866 = !DILocation(line: 810, column: 49, scope: !2827)
!2867 = !DILocation(line: 811, column: 49, scope: !2827)
!2868 = !DILocation(line: 808, column: 20, scope: !2827)
!2869 = !DILocation(line: 811, column: 62, scope: !2827)
!2870 = !DILocation(line: 812, column: 15, scope: !2827)
!2871 = !DILocation(line: 813, column: 60, scope: !2827)
!2872 = !DILocation(line: 815, column: 32, scope: !2827)
!2873 = !DILocation(line: 815, column: 47, scope: !2827)
!2874 = !DILocation(line: 813, column: 3, scope: !2827)
!2875 = !DILocation(line: 816, column: 9, scope: !2827)
!2876 = !DILocation(line: 817, column: 7, scope: !2827)
!2877 = !DILocation(line: 818, column: 11, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2827, file: !288, line: 817, column: 7)
!2879 = !DILocation(line: 818, column: 5, scope: !2878)
!2880 = !DILocation(line: 819, column: 3, scope: !2827)
!2881 = distinct !DISubprogram(name: "quotearg_free", scope: !288, file: !288, line: 837, type: !243, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2882)
!2882 = !{!2883, !2884}
!2883 = !DILocalVariable(name: "sv", scope: !2881, file: !288, line: 839, type: !345)
!2884 = !DILocalVariable(name: "i", scope: !2885, file: !288, line: 840, type: !53)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !288, line: 840, column: 3)
!2886 = !DILocation(line: 839, column: 24, scope: !2881)
!2887 = !DILocation(line: 0, scope: !2881)
!2888 = !DILocation(line: 0, scope: !2885)
!2889 = !DILocation(line: 840, column: 21, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2885, file: !288, line: 840, column: 3)
!2891 = !DILocation(line: 840, column: 3, scope: !2885)
!2892 = !DILocation(line: 842, column: 13, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2881, file: !288, line: 842, column: 7)
!2894 = !{!2895, !514, i64 8}
!2895 = !{!"slotvec", !768, i64 0, !514, i64 8}
!2896 = !DILocation(line: 842, column: 17, scope: !2893)
!2897 = !DILocation(line: 842, column: 7, scope: !2881)
!2898 = !DILocation(line: 841, column: 17, scope: !2890)
!2899 = !DILocation(line: 841, column: 5, scope: !2890)
!2900 = !DILocation(line: 840, column: 32, scope: !2890)
!2901 = distinct !{!2901, !2891, !2902, !577}
!2902 = !DILocation(line: 841, column: 20, scope: !2885)
!2903 = !DILocation(line: 844, column: 7, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2893, file: !288, line: 843, column: 5)
!2905 = !DILocation(line: 845, column: 21, scope: !2904)
!2906 = !{!2895, !768, i64 0}
!2907 = !DILocation(line: 846, column: 20, scope: !2904)
!2908 = !DILocation(line: 847, column: 5, scope: !2904)
!2909 = !DILocation(line: 848, column: 10, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2881, file: !288, line: 848, column: 7)
!2911 = !DILocation(line: 848, column: 7, scope: !2881)
!2912 = !DILocation(line: 850, column: 13, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !288, line: 849, column: 5)
!2914 = !DILocation(line: 850, column: 7, scope: !2913)
!2915 = !DILocation(line: 851, column: 15, scope: !2913)
!2916 = !DILocation(line: 852, column: 5, scope: !2913)
!2917 = !DILocation(line: 853, column: 10, scope: !2881)
!2918 = !DILocation(line: 854, column: 1, scope: !2881)
!2919 = distinct !DISubprogram(name: "quotearg_n", scope: !288, file: !288, line: 919, type: !719, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2920)
!2920 = !{!2921, !2922}
!2921 = !DILocalVariable(name: "n", arg: 1, scope: !2919, file: !288, line: 919, type: !53)
!2922 = !DILocalVariable(name: "arg", arg: 2, scope: !2919, file: !288, line: 919, type: !58)
!2923 = !DILocation(line: 0, scope: !2919)
!2924 = !DILocation(line: 921, column: 10, scope: !2919)
!2925 = !DILocation(line: 921, column: 3, scope: !2919)
!2926 = distinct !DISubprogram(name: "quotearg_n_options", scope: !288, file: !288, line: 866, type: !2927, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!50, !53, !58, !55, !2154}
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2940, !2941, !2943, !2944, !2945}
!2930 = !DILocalVariable(name: "n", arg: 1, scope: !2926, file: !288, line: 866, type: !53)
!2931 = !DILocalVariable(name: "arg", arg: 2, scope: !2926, file: !288, line: 866, type: !58)
!2932 = !DILocalVariable(name: "argsize", arg: 3, scope: !2926, file: !288, line: 866, type: !55)
!2933 = !DILocalVariable(name: "options", arg: 4, scope: !2926, file: !288, line: 867, type: !2154)
!2934 = !DILocalVariable(name: "saved_errno", scope: !2926, file: !288, line: 869, type: !53)
!2935 = !DILocalVariable(name: "sv", scope: !2926, file: !288, line: 871, type: !345)
!2936 = !DILocalVariable(name: "nslots_max", scope: !2926, file: !288, line: 873, type: !53)
!2937 = !DILocalVariable(name: "preallocated", scope: !2938, file: !288, line: 879, type: !64)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !288, line: 878, column: 5)
!2939 = distinct !DILexicalBlock(scope: !2926, file: !288, line: 877, column: 7)
!2940 = !DILocalVariable(name: "new_nslots", scope: !2938, file: !288, line: 880, type: !462)
!2941 = !DILocalVariable(name: "size", scope: !2942, file: !288, line: 891, type: !55)
!2942 = distinct !DILexicalBlock(scope: !2926, file: !288, line: 890, column: 3)
!2943 = !DILocalVariable(name: "val", scope: !2942, file: !288, line: 892, type: !50)
!2944 = !DILocalVariable(name: "flags", scope: !2942, file: !288, line: 894, type: !53)
!2945 = !DILocalVariable(name: "qsize", scope: !2942, file: !288, line: 895, type: !55)
!2946 = !DILocation(line: 0, scope: !2926)
!2947 = !DILocation(line: 869, column: 21, scope: !2926)
!2948 = !DILocation(line: 871, column: 24, scope: !2926)
!2949 = !DILocation(line: 874, column: 17, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2926, file: !288, line: 874, column: 7)
!2951 = !DILocation(line: 875, column: 5, scope: !2950)
!2952 = !DILocation(line: 877, column: 7, scope: !2939)
!2953 = !DILocation(line: 877, column: 14, scope: !2939)
!2954 = !DILocation(line: 877, column: 7, scope: !2926)
!2955 = !DILocation(line: 879, column: 31, scope: !2938)
!2956 = !DILocation(line: 0, scope: !2938)
!2957 = !DILocation(line: 880, column: 7, scope: !2938)
!2958 = !DILocation(line: 880, column: 26, scope: !2938)
!2959 = !DILocation(line: 880, column: 13, scope: !2938)
!2960 = !DILocation(line: 882, column: 31, scope: !2938)
!2961 = !DILocation(line: 883, column: 33, scope: !2938)
!2962 = !DILocation(line: 883, column: 42, scope: !2938)
!2963 = !DILocation(line: 883, column: 31, scope: !2938)
!2964 = !DILocation(line: 882, column: 22, scope: !2938)
!2965 = !DILocation(line: 882, column: 15, scope: !2938)
!2966 = !DILocation(line: 884, column: 11, scope: !2938)
!2967 = !DILocation(line: 885, column: 15, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2938, file: !288, line: 884, column: 11)
!2969 = !{i64 0, i64 8, !767, i64 8, i64 8, !513}
!2970 = !DILocation(line: 885, column: 9, scope: !2968)
!2971 = !DILocation(line: 886, column: 20, scope: !2938)
!2972 = !DILocation(line: 886, column: 18, scope: !2938)
!2973 = !DILocation(line: 886, column: 15, scope: !2938)
!2974 = !DILocation(line: 886, column: 32, scope: !2938)
!2975 = !DILocation(line: 886, column: 43, scope: !2938)
!2976 = !DILocation(line: 886, column: 53, scope: !2938)
!2977 = !DILocation(line: 0, scope: !2365, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 886, column: 7, scope: !2938)
!2979 = !DILocation(line: 59, column: 10, scope: !2365, inlinedAt: !2978)
!2980 = !DILocation(line: 887, column: 16, scope: !2938)
!2981 = !DILocation(line: 887, column: 14, scope: !2938)
!2982 = !DILocation(line: 888, column: 5, scope: !2939)
!2983 = !DILocation(line: 888, column: 5, scope: !2938)
!2984 = !DILocation(line: 891, column: 19, scope: !2942)
!2985 = !DILocation(line: 891, column: 25, scope: !2942)
!2986 = !DILocation(line: 0, scope: !2942)
!2987 = !DILocation(line: 892, column: 23, scope: !2942)
!2988 = !DILocation(line: 894, column: 26, scope: !2942)
!2989 = !DILocation(line: 894, column: 32, scope: !2942)
!2990 = !DILocation(line: 896, column: 55, scope: !2942)
!2991 = !DILocation(line: 897, column: 46, scope: !2942)
!2992 = !DILocation(line: 898, column: 55, scope: !2942)
!2993 = !DILocation(line: 899, column: 55, scope: !2942)
!2994 = !DILocation(line: 895, column: 20, scope: !2942)
!2995 = !DILocation(line: 901, column: 14, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2942, file: !288, line: 901, column: 9)
!2997 = !DILocation(line: 901, column: 9, scope: !2942)
!2998 = !DILocation(line: 903, column: 35, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2996, file: !288, line: 902, column: 7)
!3000 = !DILocation(line: 903, column: 20, scope: !2999)
!3001 = !DILocation(line: 904, column: 17, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !288, line: 904, column: 13)
!3003 = !DILocation(line: 904, column: 13, scope: !2999)
!3004 = !DILocation(line: 905, column: 11, scope: !3002)
!3005 = !DILocation(line: 906, column: 27, scope: !2999)
!3006 = !DILocation(line: 906, column: 19, scope: !2999)
!3007 = !DILocation(line: 907, column: 69, scope: !2999)
!3008 = !DILocation(line: 909, column: 44, scope: !2999)
!3009 = !DILocation(line: 910, column: 44, scope: !2999)
!3010 = !DILocation(line: 907, column: 9, scope: !2999)
!3011 = !DILocation(line: 911, column: 7, scope: !2999)
!3012 = !DILocation(line: 913, column: 11, scope: !2942)
!3013 = !DILocation(line: 914, column: 5, scope: !2942)
!3014 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !288, file: !288, line: 925, type: !3015, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!50, !53, !58, !55}
!3017 = !{!3018, !3019, !3020}
!3018 = !DILocalVariable(name: "n", arg: 1, scope: !3014, file: !288, line: 925, type: !53)
!3019 = !DILocalVariable(name: "arg", arg: 2, scope: !3014, file: !288, line: 925, type: !58)
!3020 = !DILocalVariable(name: "argsize", arg: 3, scope: !3014, file: !288, line: 925, type: !55)
!3021 = !DILocation(line: 0, scope: !3014)
!3022 = !DILocation(line: 927, column: 10, scope: !3014)
!3023 = !DILocation(line: 927, column: 3, scope: !3014)
!3024 = distinct !DISubprogram(name: "quotearg", scope: !288, file: !288, line: 931, type: !723, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3025)
!3025 = !{!3026}
!3026 = !DILocalVariable(name: "arg", arg: 1, scope: !3024, file: !288, line: 931, type: !58)
!3027 = !DILocation(line: 0, scope: !3024)
!3028 = !DILocation(line: 0, scope: !2919, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 933, column: 10, scope: !3024)
!3030 = !DILocation(line: 921, column: 10, scope: !2919, inlinedAt: !3029)
!3031 = !DILocation(line: 933, column: 3, scope: !3024)
!3032 = distinct !DISubprogram(name: "quotearg_mem", scope: !288, file: !288, line: 937, type: !3033, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!50, !58, !55}
!3035 = !{!3036, !3037}
!3036 = !DILocalVariable(name: "arg", arg: 1, scope: !3032, file: !288, line: 937, type: !58)
!3037 = !DILocalVariable(name: "argsize", arg: 2, scope: !3032, file: !288, line: 937, type: !55)
!3038 = !DILocation(line: 0, scope: !3032)
!3039 = !DILocation(line: 0, scope: !3014, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 939, column: 10, scope: !3032)
!3041 = !DILocation(line: 927, column: 10, scope: !3014, inlinedAt: !3040)
!3042 = !DILocation(line: 939, column: 3, scope: !3032)
!3043 = distinct !DISubprogram(name: "quotearg_n_style", scope: !288, file: !288, line: 943, type: !3044, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!50, !53, !26, !58}
!3046 = !{!3047, !3048, !3049, !3050}
!3047 = !DILocalVariable(name: "n", arg: 1, scope: !3043, file: !288, line: 943, type: !53)
!3048 = !DILocalVariable(name: "s", arg: 2, scope: !3043, file: !288, line: 943, type: !26)
!3049 = !DILocalVariable(name: "arg", arg: 3, scope: !3043, file: !288, line: 943, type: !58)
!3050 = !DILocalVariable(name: "o", scope: !3043, file: !288, line: 945, type: !2155)
!3051 = !DILocation(line: 0, scope: !3043)
!3052 = !DILocation(line: 945, column: 3, scope: !3043)
!3053 = !DILocation(line: 945, column: 32, scope: !3043)
!3054 = !{!3055}
!3055 = distinct !{!3055, !3056, !"quoting_options_from_style: argument 0"}
!3056 = distinct !{!3056, !"quoting_options_from_style"}
!3057 = !DILocation(line: 945, column: 36, scope: !3043)
!3058 = !DILocalVariable(name: "style", arg: 1, scope: !3059, file: !288, line: 183, type: !26)
!3059 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !288, file: !288, line: 183, type: !3060, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!305, !26}
!3062 = !{!3058, !3063}
!3063 = !DILocalVariable(name: "o", scope: !3059, file: !288, line: 185, type: !305)
!3064 = !DILocation(line: 0, scope: !3059, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 945, column: 36, scope: !3043)
!3066 = !DILocation(line: 185, column: 26, scope: !3059, inlinedAt: !3065)
!3067 = !DILocation(line: 186, column: 13, scope: !3068, inlinedAt: !3065)
!3068 = distinct !DILexicalBlock(scope: !3059, file: !288, line: 186, column: 7)
!3069 = !DILocation(line: 186, column: 7, scope: !3059, inlinedAt: !3065)
!3070 = !DILocation(line: 187, column: 5, scope: !3068, inlinedAt: !3065)
!3071 = !DILocation(line: 188, column: 5, scope: !3059, inlinedAt: !3065)
!3072 = !DILocation(line: 188, column: 11, scope: !3059, inlinedAt: !3065)
!3073 = !DILocation(line: 946, column: 10, scope: !3043)
!3074 = !DILocation(line: 947, column: 1, scope: !3043)
!3075 = !DILocation(line: 946, column: 3, scope: !3043)
!3076 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !288, file: !288, line: 950, type: !3077, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!50, !53, !26, !58, !55}
!3079 = !{!3080, !3081, !3082, !3083, !3084}
!3080 = !DILocalVariable(name: "n", arg: 1, scope: !3076, file: !288, line: 950, type: !53)
!3081 = !DILocalVariable(name: "s", arg: 2, scope: !3076, file: !288, line: 950, type: !26)
!3082 = !DILocalVariable(name: "arg", arg: 3, scope: !3076, file: !288, line: 951, type: !58)
!3083 = !DILocalVariable(name: "argsize", arg: 4, scope: !3076, file: !288, line: 951, type: !55)
!3084 = !DILocalVariable(name: "o", scope: !3076, file: !288, line: 953, type: !2155)
!3085 = !DILocation(line: 0, scope: !3076)
!3086 = !DILocation(line: 953, column: 3, scope: !3076)
!3087 = !DILocation(line: 953, column: 32, scope: !3076)
!3088 = !{!3089}
!3089 = distinct !{!3089, !3090, !"quoting_options_from_style: argument 0"}
!3090 = distinct !{!3090, !"quoting_options_from_style"}
!3091 = !DILocation(line: 953, column: 36, scope: !3076)
!3092 = !DILocation(line: 0, scope: !3059, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 953, column: 36, scope: !3076)
!3094 = !DILocation(line: 185, column: 26, scope: !3059, inlinedAt: !3093)
!3095 = !DILocation(line: 186, column: 13, scope: !3068, inlinedAt: !3093)
!3096 = !DILocation(line: 186, column: 7, scope: !3059, inlinedAt: !3093)
!3097 = !DILocation(line: 187, column: 5, scope: !3068, inlinedAt: !3093)
!3098 = !DILocation(line: 188, column: 5, scope: !3059, inlinedAt: !3093)
!3099 = !DILocation(line: 188, column: 11, scope: !3059, inlinedAt: !3093)
!3100 = !DILocation(line: 954, column: 10, scope: !3076)
!3101 = !DILocation(line: 955, column: 1, scope: !3076)
!3102 = !DILocation(line: 954, column: 3, scope: !3076)
!3103 = distinct !DISubprogram(name: "quotearg_style", scope: !288, file: !288, line: 958, type: !3104, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!50, !26, !58}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "s", arg: 1, scope: !3103, file: !288, line: 958, type: !26)
!3108 = !DILocalVariable(name: "arg", arg: 2, scope: !3103, file: !288, line: 958, type: !58)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 0, scope: !3043, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 960, column: 10, scope: !3103)
!3112 = !DILocation(line: 945, column: 3, scope: !3043, inlinedAt: !3111)
!3113 = !DILocation(line: 945, column: 32, scope: !3043, inlinedAt: !3111)
!3114 = !{!3115}
!3115 = distinct !{!3115, !3116, !"quoting_options_from_style: argument 0"}
!3116 = distinct !{!3116, !"quoting_options_from_style"}
!3117 = !DILocation(line: 945, column: 36, scope: !3043, inlinedAt: !3111)
!3118 = !DILocation(line: 0, scope: !3059, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 945, column: 36, scope: !3043, inlinedAt: !3111)
!3120 = !DILocation(line: 185, column: 26, scope: !3059, inlinedAt: !3119)
!3121 = !DILocation(line: 186, column: 13, scope: !3068, inlinedAt: !3119)
!3122 = !DILocation(line: 186, column: 7, scope: !3059, inlinedAt: !3119)
!3123 = !DILocation(line: 187, column: 5, scope: !3068, inlinedAt: !3119)
!3124 = !DILocation(line: 188, column: 5, scope: !3059, inlinedAt: !3119)
!3125 = !DILocation(line: 188, column: 11, scope: !3059, inlinedAt: !3119)
!3126 = !DILocation(line: 946, column: 10, scope: !3043, inlinedAt: !3111)
!3127 = !DILocation(line: 947, column: 1, scope: !3043, inlinedAt: !3111)
!3128 = !DILocation(line: 960, column: 3, scope: !3103)
!3129 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !288, file: !288, line: 964, type: !3130, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!50, !26, !58, !55}
!3132 = !{!3133, !3134, !3135}
!3133 = !DILocalVariable(name: "s", arg: 1, scope: !3129, file: !288, line: 964, type: !26)
!3134 = !DILocalVariable(name: "arg", arg: 2, scope: !3129, file: !288, line: 964, type: !58)
!3135 = !DILocalVariable(name: "argsize", arg: 3, scope: !3129, file: !288, line: 964, type: !55)
!3136 = !DILocation(line: 0, scope: !3129)
!3137 = !DILocation(line: 0, scope: !3076, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 966, column: 10, scope: !3129)
!3139 = !DILocation(line: 953, column: 3, scope: !3076, inlinedAt: !3138)
!3140 = !DILocation(line: 953, column: 32, scope: !3076, inlinedAt: !3138)
!3141 = !{!3142}
!3142 = distinct !{!3142, !3143, !"quoting_options_from_style: argument 0"}
!3143 = distinct !{!3143, !"quoting_options_from_style"}
!3144 = !DILocation(line: 953, column: 36, scope: !3076, inlinedAt: !3138)
!3145 = !DILocation(line: 0, scope: !3059, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 953, column: 36, scope: !3076, inlinedAt: !3138)
!3147 = !DILocation(line: 185, column: 26, scope: !3059, inlinedAt: !3146)
!3148 = !DILocation(line: 186, column: 13, scope: !3068, inlinedAt: !3146)
!3149 = !DILocation(line: 186, column: 7, scope: !3059, inlinedAt: !3146)
!3150 = !DILocation(line: 187, column: 5, scope: !3068, inlinedAt: !3146)
!3151 = !DILocation(line: 188, column: 5, scope: !3059, inlinedAt: !3146)
!3152 = !DILocation(line: 188, column: 11, scope: !3059, inlinedAt: !3146)
!3153 = !DILocation(line: 954, column: 10, scope: !3076, inlinedAt: !3138)
!3154 = !DILocation(line: 955, column: 1, scope: !3076, inlinedAt: !3138)
!3155 = !DILocation(line: 966, column: 3, scope: !3129)
!3156 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !288, file: !288, line: 970, type: !3157, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!50, !58, !55, !51}
!3159 = !{!3160, !3161, !3162, !3163}
!3160 = !DILocalVariable(name: "arg", arg: 1, scope: !3156, file: !288, line: 970, type: !58)
!3161 = !DILocalVariable(name: "argsize", arg: 2, scope: !3156, file: !288, line: 970, type: !55)
!3162 = !DILocalVariable(name: "ch", arg: 3, scope: !3156, file: !288, line: 970, type: !51)
!3163 = !DILocalVariable(name: "options", scope: !3156, file: !288, line: 972, type: !305)
!3164 = !DILocation(line: 0, scope: !3156)
!3165 = !DILocation(line: 972, column: 3, scope: !3156)
!3166 = !DILocation(line: 972, column: 26, scope: !3156)
!3167 = !DILocation(line: 973, column: 13, scope: !3156)
!3168 = !{i64 0, i64 4, !620, i64 4, i64 4, !611, i64 8, i64 32, !620, i64 40, i64 8, !513, i64 48, i64 8, !513}
!3169 = !DILocation(line: 0, scope: !2175, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 974, column: 3, scope: !3156)
!3171 = !DILocation(line: 147, column: 62, scope: !2175, inlinedAt: !3170)
!3172 = !DILocation(line: 147, column: 57, scope: !2175, inlinedAt: !3170)
!3173 = !DILocation(line: 148, column: 15, scope: !2175, inlinedAt: !3170)
!3174 = !DILocation(line: 149, column: 21, scope: !2175, inlinedAt: !3170)
!3175 = !DILocation(line: 149, column: 24, scope: !2175, inlinedAt: !3170)
!3176 = !DILocation(line: 149, column: 34, scope: !2175, inlinedAt: !3170)
!3177 = !DILocation(line: 150, column: 19, scope: !2175, inlinedAt: !3170)
!3178 = !DILocation(line: 150, column: 24, scope: !2175, inlinedAt: !3170)
!3179 = !DILocation(line: 150, column: 6, scope: !2175, inlinedAt: !3170)
!3180 = !DILocation(line: 975, column: 10, scope: !3156)
!3181 = !DILocation(line: 976, column: 1, scope: !3156)
!3182 = !DILocation(line: 975, column: 3, scope: !3156)
!3183 = distinct !DISubprogram(name: "quotearg_char", scope: !288, file: !288, line: 979, type: !3184, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!50, !58, !51}
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "arg", arg: 1, scope: !3183, file: !288, line: 979, type: !58)
!3188 = !DILocalVariable(name: "ch", arg: 2, scope: !3183, file: !288, line: 979, type: !51)
!3189 = !DILocation(line: 0, scope: !3183)
!3190 = !DILocation(line: 0, scope: !3156, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 981, column: 10, scope: !3183)
!3192 = !DILocation(line: 972, column: 3, scope: !3156, inlinedAt: !3191)
!3193 = !DILocation(line: 972, column: 26, scope: !3156, inlinedAt: !3191)
!3194 = !DILocation(line: 973, column: 13, scope: !3156, inlinedAt: !3191)
!3195 = !DILocation(line: 0, scope: !2175, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 974, column: 3, scope: !3156, inlinedAt: !3191)
!3197 = !DILocation(line: 147, column: 62, scope: !2175, inlinedAt: !3196)
!3198 = !DILocation(line: 147, column: 57, scope: !2175, inlinedAt: !3196)
!3199 = !DILocation(line: 148, column: 15, scope: !2175, inlinedAt: !3196)
!3200 = !DILocation(line: 149, column: 21, scope: !2175, inlinedAt: !3196)
!3201 = !DILocation(line: 149, column: 24, scope: !2175, inlinedAt: !3196)
!3202 = !DILocation(line: 149, column: 34, scope: !2175, inlinedAt: !3196)
!3203 = !DILocation(line: 150, column: 19, scope: !2175, inlinedAt: !3196)
!3204 = !DILocation(line: 150, column: 24, scope: !2175, inlinedAt: !3196)
!3205 = !DILocation(line: 150, column: 6, scope: !2175, inlinedAt: !3196)
!3206 = !DILocation(line: 975, column: 10, scope: !3156, inlinedAt: !3191)
!3207 = !DILocation(line: 976, column: 1, scope: !3156, inlinedAt: !3191)
!3208 = !DILocation(line: 981, column: 3, scope: !3183)
!3209 = distinct !DISubprogram(name: "quotearg_colon", scope: !288, file: !288, line: 985, type: !723, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3210)
!3210 = !{!3211}
!3211 = !DILocalVariable(name: "arg", arg: 1, scope: !3209, file: !288, line: 985, type: !58)
!3212 = !DILocation(line: 0, scope: !3209)
!3213 = !DILocation(line: 0, scope: !3183, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 987, column: 10, scope: !3209)
!3215 = !DILocation(line: 0, scope: !3156, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 981, column: 10, scope: !3183, inlinedAt: !3214)
!3217 = !DILocation(line: 972, column: 3, scope: !3156, inlinedAt: !3216)
!3218 = !DILocation(line: 972, column: 26, scope: !3156, inlinedAt: !3216)
!3219 = !DILocation(line: 973, column: 13, scope: !3156, inlinedAt: !3216)
!3220 = !DILocation(line: 0, scope: !2175, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 974, column: 3, scope: !3156, inlinedAt: !3216)
!3222 = !DILocation(line: 147, column: 57, scope: !2175, inlinedAt: !3221)
!3223 = !DILocation(line: 149, column: 21, scope: !2175, inlinedAt: !3221)
!3224 = !DILocation(line: 150, column: 6, scope: !2175, inlinedAt: !3221)
!3225 = !DILocation(line: 975, column: 10, scope: !3156, inlinedAt: !3216)
!3226 = !DILocation(line: 976, column: 1, scope: !3156, inlinedAt: !3216)
!3227 = !DILocation(line: 987, column: 3, scope: !3209)
!3228 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !288, file: !288, line: 991, type: !3033, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3229)
!3229 = !{!3230, !3231}
!3230 = !DILocalVariable(name: "arg", arg: 1, scope: !3228, file: !288, line: 991, type: !58)
!3231 = !DILocalVariable(name: "argsize", arg: 2, scope: !3228, file: !288, line: 991, type: !55)
!3232 = !DILocation(line: 0, scope: !3228)
!3233 = !DILocation(line: 0, scope: !3156, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 993, column: 10, scope: !3228)
!3235 = !DILocation(line: 972, column: 3, scope: !3156, inlinedAt: !3234)
!3236 = !DILocation(line: 972, column: 26, scope: !3156, inlinedAt: !3234)
!3237 = !DILocation(line: 973, column: 13, scope: !3156, inlinedAt: !3234)
!3238 = !DILocation(line: 0, scope: !2175, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 974, column: 3, scope: !3156, inlinedAt: !3234)
!3240 = !DILocation(line: 147, column: 57, scope: !2175, inlinedAt: !3239)
!3241 = !DILocation(line: 149, column: 21, scope: !2175, inlinedAt: !3239)
!3242 = !DILocation(line: 150, column: 6, scope: !2175, inlinedAt: !3239)
!3243 = !DILocation(line: 975, column: 10, scope: !3156, inlinedAt: !3234)
!3244 = !DILocation(line: 976, column: 1, scope: !3156, inlinedAt: !3234)
!3245 = !DILocation(line: 993, column: 3, scope: !3228)
!3246 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !288, file: !288, line: 997, type: !3044, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3247)
!3247 = !{!3248, !3249, !3250, !3251}
!3248 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !288, line: 997, type: !53)
!3249 = !DILocalVariable(name: "s", arg: 2, scope: !3246, file: !288, line: 997, type: !26)
!3250 = !DILocalVariable(name: "arg", arg: 3, scope: !3246, file: !288, line: 997, type: !58)
!3251 = !DILocalVariable(name: "options", scope: !3246, file: !288, line: 999, type: !305)
!3252 = !DILocation(line: 0, scope: !3246)
!3253 = !DILocation(line: 999, column: 3, scope: !3246)
!3254 = !DILocation(line: 999, column: 26, scope: !3246)
!3255 = !DILocation(line: 0, scope: !3059, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 1000, column: 13, scope: !3246)
!3257 = !DILocation(line: 186, column: 13, scope: !3068, inlinedAt: !3256)
!3258 = !DILocation(line: 186, column: 7, scope: !3059, inlinedAt: !3256)
!3259 = !DILocation(line: 187, column: 5, scope: !3068, inlinedAt: !3256)
!3260 = !{!3261}
!3261 = distinct !{!3261, !3262, !"quoting_options_from_style: argument 0"}
!3262 = distinct !{!3262, !"quoting_options_from_style"}
!3263 = !DILocation(line: 1000, column: 13, scope: !3246)
!3264 = !DILocation(line: 0, scope: !2175, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 1001, column: 3, scope: !3246)
!3266 = !DILocation(line: 147, column: 57, scope: !2175, inlinedAt: !3265)
!3267 = !DILocation(line: 149, column: 21, scope: !2175, inlinedAt: !3265)
!3268 = !DILocation(line: 150, column: 6, scope: !2175, inlinedAt: !3265)
!3269 = !DILocation(line: 1002, column: 10, scope: !3246)
!3270 = !DILocation(line: 1003, column: 1, scope: !3246)
!3271 = !DILocation(line: 1002, column: 3, scope: !3246)
!3272 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !288, file: !288, line: 1006, type: !3273, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!50, !53, !58, !58, !58}
!3275 = !{!3276, !3277, !3278, !3279}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !288, line: 1006, type: !53)
!3277 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3272, file: !288, line: 1006, type: !58)
!3278 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3272, file: !288, line: 1007, type: !58)
!3279 = !DILocalVariable(name: "arg", arg: 4, scope: !3272, file: !288, line: 1007, type: !58)
!3280 = !DILocation(line: 0, scope: !3272)
!3281 = !DILocalVariable(name: "n", arg: 1, scope: !3282, file: !288, line: 1014, type: !53)
!3282 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !288, file: !288, line: 1014, type: !3283, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!50, !53, !58, !58, !58, !55}
!3285 = !{!3281, !3286, !3287, !3288, !3289, !3290}
!3286 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3282, file: !288, line: 1014, type: !58)
!3287 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3282, file: !288, line: 1015, type: !58)
!3288 = !DILocalVariable(name: "arg", arg: 4, scope: !3282, file: !288, line: 1016, type: !58)
!3289 = !DILocalVariable(name: "argsize", arg: 5, scope: !3282, file: !288, line: 1016, type: !55)
!3290 = !DILocalVariable(name: "o", scope: !3282, file: !288, line: 1018, type: !305)
!3291 = !DILocation(line: 0, scope: !3282, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1009, column: 10, scope: !3272)
!3293 = !DILocation(line: 1018, column: 3, scope: !3282, inlinedAt: !3292)
!3294 = !DILocation(line: 1018, column: 26, scope: !3282, inlinedAt: !3292)
!3295 = !DILocation(line: 1018, column: 30, scope: !3282, inlinedAt: !3292)
!3296 = !DILocation(line: 0, scope: !2215, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 1019, column: 3, scope: !3282, inlinedAt: !3292)
!3298 = !DILocation(line: 174, column: 6, scope: !2215, inlinedAt: !3297)
!3299 = !DILocation(line: 174, column: 12, scope: !2215, inlinedAt: !3297)
!3300 = !DILocation(line: 175, column: 8, scope: !2229, inlinedAt: !3297)
!3301 = !DILocation(line: 175, column: 19, scope: !2229, inlinedAt: !3297)
!3302 = !DILocation(line: 176, column: 5, scope: !2229, inlinedAt: !3297)
!3303 = !DILocation(line: 177, column: 6, scope: !2215, inlinedAt: !3297)
!3304 = !DILocation(line: 177, column: 17, scope: !2215, inlinedAt: !3297)
!3305 = !DILocation(line: 178, column: 6, scope: !2215, inlinedAt: !3297)
!3306 = !DILocation(line: 178, column: 18, scope: !2215, inlinedAt: !3297)
!3307 = !DILocation(line: 1020, column: 10, scope: !3282, inlinedAt: !3292)
!3308 = !DILocation(line: 1021, column: 1, scope: !3282, inlinedAt: !3292)
!3309 = !DILocation(line: 1009, column: 3, scope: !3272)
!3310 = !DILocation(line: 0, scope: !3282)
!3311 = !DILocation(line: 1018, column: 3, scope: !3282)
!3312 = !DILocation(line: 1018, column: 26, scope: !3282)
!3313 = !DILocation(line: 1018, column: 30, scope: !3282)
!3314 = !DILocation(line: 0, scope: !2215, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 1019, column: 3, scope: !3282)
!3316 = !DILocation(line: 174, column: 6, scope: !2215, inlinedAt: !3315)
!3317 = !DILocation(line: 174, column: 12, scope: !2215, inlinedAt: !3315)
!3318 = !DILocation(line: 175, column: 8, scope: !2229, inlinedAt: !3315)
!3319 = !DILocation(line: 175, column: 19, scope: !2229, inlinedAt: !3315)
!3320 = !DILocation(line: 176, column: 5, scope: !2229, inlinedAt: !3315)
!3321 = !DILocation(line: 177, column: 6, scope: !2215, inlinedAt: !3315)
!3322 = !DILocation(line: 177, column: 17, scope: !2215, inlinedAt: !3315)
!3323 = !DILocation(line: 178, column: 6, scope: !2215, inlinedAt: !3315)
!3324 = !DILocation(line: 178, column: 18, scope: !2215, inlinedAt: !3315)
!3325 = !DILocation(line: 1020, column: 10, scope: !3282)
!3326 = !DILocation(line: 1021, column: 1, scope: !3282)
!3327 = !DILocation(line: 1020, column: 3, scope: !3282)
!3328 = distinct !DISubprogram(name: "quotearg_custom", scope: !288, file: !288, line: 1024, type: !3329, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!50, !58, !58, !58}
!3331 = !{!3332, !3333, !3334}
!3332 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3328, file: !288, line: 1024, type: !58)
!3333 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3328, file: !288, line: 1024, type: !58)
!3334 = !DILocalVariable(name: "arg", arg: 3, scope: !3328, file: !288, line: 1025, type: !58)
!3335 = !DILocation(line: 0, scope: !3328)
!3336 = !DILocation(line: 0, scope: !3272, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 1027, column: 10, scope: !3328)
!3338 = !DILocation(line: 0, scope: !3282, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 1009, column: 10, scope: !3272, inlinedAt: !3337)
!3340 = !DILocation(line: 1018, column: 3, scope: !3282, inlinedAt: !3339)
!3341 = !DILocation(line: 1018, column: 26, scope: !3282, inlinedAt: !3339)
!3342 = !DILocation(line: 1018, column: 30, scope: !3282, inlinedAt: !3339)
!3343 = !DILocation(line: 0, scope: !2215, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 1019, column: 3, scope: !3282, inlinedAt: !3339)
!3345 = !DILocation(line: 174, column: 6, scope: !2215, inlinedAt: !3344)
!3346 = !DILocation(line: 174, column: 12, scope: !2215, inlinedAt: !3344)
!3347 = !DILocation(line: 175, column: 8, scope: !2229, inlinedAt: !3344)
!3348 = !DILocation(line: 175, column: 19, scope: !2229, inlinedAt: !3344)
!3349 = !DILocation(line: 176, column: 5, scope: !2229, inlinedAt: !3344)
!3350 = !DILocation(line: 177, column: 6, scope: !2215, inlinedAt: !3344)
!3351 = !DILocation(line: 177, column: 17, scope: !2215, inlinedAt: !3344)
!3352 = !DILocation(line: 178, column: 6, scope: !2215, inlinedAt: !3344)
!3353 = !DILocation(line: 178, column: 18, scope: !2215, inlinedAt: !3344)
!3354 = !DILocation(line: 1020, column: 10, scope: !3282, inlinedAt: !3339)
!3355 = !DILocation(line: 1021, column: 1, scope: !3282, inlinedAt: !3339)
!3356 = !DILocation(line: 1027, column: 3, scope: !3328)
!3357 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !288, file: !288, line: 1031, type: !3358, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!50, !58, !58, !58, !55}
!3360 = !{!3361, !3362, !3363, !3364}
!3361 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3357, file: !288, line: 1031, type: !58)
!3362 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3357, file: !288, line: 1031, type: !58)
!3363 = !DILocalVariable(name: "arg", arg: 3, scope: !3357, file: !288, line: 1032, type: !58)
!3364 = !DILocalVariable(name: "argsize", arg: 4, scope: !3357, file: !288, line: 1032, type: !55)
!3365 = !DILocation(line: 0, scope: !3357)
!3366 = !DILocation(line: 0, scope: !3282, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 1034, column: 10, scope: !3357)
!3368 = !DILocation(line: 1018, column: 3, scope: !3282, inlinedAt: !3367)
!3369 = !DILocation(line: 1018, column: 26, scope: !3282, inlinedAt: !3367)
!3370 = !DILocation(line: 1018, column: 30, scope: !3282, inlinedAt: !3367)
!3371 = !DILocation(line: 0, scope: !2215, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1019, column: 3, scope: !3282, inlinedAt: !3367)
!3373 = !DILocation(line: 174, column: 6, scope: !2215, inlinedAt: !3372)
!3374 = !DILocation(line: 174, column: 12, scope: !2215, inlinedAt: !3372)
!3375 = !DILocation(line: 175, column: 8, scope: !2229, inlinedAt: !3372)
!3376 = !DILocation(line: 175, column: 19, scope: !2229, inlinedAt: !3372)
!3377 = !DILocation(line: 176, column: 5, scope: !2229, inlinedAt: !3372)
!3378 = !DILocation(line: 177, column: 6, scope: !2215, inlinedAt: !3372)
!3379 = !DILocation(line: 177, column: 17, scope: !2215, inlinedAt: !3372)
!3380 = !DILocation(line: 178, column: 6, scope: !2215, inlinedAt: !3372)
!3381 = !DILocation(line: 178, column: 18, scope: !2215, inlinedAt: !3372)
!3382 = !DILocation(line: 1020, column: 10, scope: !3282, inlinedAt: !3367)
!3383 = !DILocation(line: 1021, column: 1, scope: !3282, inlinedAt: !3367)
!3384 = !DILocation(line: 1034, column: 3, scope: !3357)
!3385 = distinct !DISubprogram(name: "quote_n_mem", scope: !288, file: !288, line: 1049, type: !3386, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!58, !53, !58, !55}
!3388 = !{!3389, !3390, !3391}
!3389 = !DILocalVariable(name: "n", arg: 1, scope: !3385, file: !288, line: 1049, type: !53)
!3390 = !DILocalVariable(name: "arg", arg: 2, scope: !3385, file: !288, line: 1049, type: !58)
!3391 = !DILocalVariable(name: "argsize", arg: 3, scope: !3385, file: !288, line: 1049, type: !55)
!3392 = !DILocation(line: 0, scope: !3385)
!3393 = !DILocation(line: 1051, column: 10, scope: !3385)
!3394 = !DILocation(line: 1051, column: 3, scope: !3385)
!3395 = distinct !DISubprogram(name: "quote_mem", scope: !288, file: !288, line: 1055, type: !3396, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!58, !58, !55}
!3398 = !{!3399, !3400}
!3399 = !DILocalVariable(name: "arg", arg: 1, scope: !3395, file: !288, line: 1055, type: !58)
!3400 = !DILocalVariable(name: "argsize", arg: 2, scope: !3395, file: !288, line: 1055, type: !55)
!3401 = !DILocation(line: 0, scope: !3395)
!3402 = !DILocation(line: 0, scope: !3385, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 1057, column: 10, scope: !3395)
!3404 = !DILocation(line: 1051, column: 10, scope: !3385, inlinedAt: !3403)
!3405 = !DILocation(line: 1057, column: 3, scope: !3395)
!3406 = distinct !DISubprogram(name: "quote_n", scope: !288, file: !288, line: 1061, type: !3407, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!58, !53, !58}
!3409 = !{!3410, !3411}
!3410 = !DILocalVariable(name: "n", arg: 1, scope: !3406, file: !288, line: 1061, type: !53)
!3411 = !DILocalVariable(name: "arg", arg: 2, scope: !3406, file: !288, line: 1061, type: !58)
!3412 = !DILocation(line: 0, scope: !3406)
!3413 = !DILocation(line: 0, scope: !3385, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 1063, column: 10, scope: !3406)
!3415 = !DILocation(line: 1051, column: 10, scope: !3385, inlinedAt: !3414)
!3416 = !DILocation(line: 1063, column: 3, scope: !3406)
!3417 = distinct !DISubprogram(name: "quote", scope: !288, file: !288, line: 1067, type: !3418, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!58, !58}
!3420 = !{!3421}
!3421 = !DILocalVariable(name: "arg", arg: 1, scope: !3417, file: !288, line: 1067, type: !58)
!3422 = !DILocation(line: 0, scope: !3417)
!3423 = !DILocation(line: 0, scope: !3406, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 1069, column: 10, scope: !3417)
!3425 = !DILocation(line: 0, scope: !3385, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 1063, column: 10, scope: !3406, inlinedAt: !3424)
!3427 = !DILocation(line: 1051, column: 10, scope: !3385, inlinedAt: !3426)
!3428 = !DILocation(line: 1069, column: 3, scope: !3417)
!3429 = distinct !DISubprogram(name: "setlocale_null_r", scope: !431, file: !431, line: 154, type: !3430, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!53, !53, !50, !55}
!3432 = !{!3433, !3434, !3435}
!3433 = !DILocalVariable(name: "category", arg: 1, scope: !3429, file: !431, line: 154, type: !53)
!3434 = !DILocalVariable(name: "buf", arg: 2, scope: !3429, file: !431, line: 154, type: !50)
!3435 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3429, file: !431, line: 154, type: !55)
!3436 = !DILocation(line: 0, scope: !3429)
!3437 = !DILocation(line: 159, column: 10, scope: !3429)
!3438 = !DILocation(line: 159, column: 3, scope: !3429)
!3439 = distinct !DISubprogram(name: "setlocale_null", scope: !431, file: !431, line: 186, type: !3440, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!58, !53}
!3442 = !{!3443}
!3443 = !DILocalVariable(name: "category", arg: 1, scope: !3439, file: !431, line: 186, type: !53)
!3444 = !DILocation(line: 0, scope: !3439)
!3445 = !DILocation(line: 189, column: 10, scope: !3439)
!3446 = !DILocation(line: 189, column: 3, scope: !3439)
!3447 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !433, file: !433, line: 35, type: !3440, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3448)
!3448 = !{!3449, !3450}
!3449 = !DILocalVariable(name: "category", arg: 1, scope: !3447, file: !433, line: 35, type: !53)
!3450 = !DILocalVariable(name: "result", scope: !3447, file: !433, line: 37, type: !58)
!3451 = !DILocation(line: 0, scope: !3447)
!3452 = !DILocation(line: 37, column: 24, scope: !3447)
!3453 = !DILocation(line: 62, column: 3, scope: !3447)
!3454 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !433, file: !433, line: 66, type: !3430, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460}
!3456 = !DILocalVariable(name: "category", arg: 1, scope: !3454, file: !433, line: 66, type: !53)
!3457 = !DILocalVariable(name: "buf", arg: 2, scope: !3454, file: !433, line: 66, type: !50)
!3458 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3454, file: !433, line: 66, type: !55)
!3459 = !DILocalVariable(name: "result", scope: !3454, file: !433, line: 111, type: !58)
!3460 = !DILocalVariable(name: "length", scope: !3461, file: !433, line: 125, type: !55)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !433, line: 124, column: 5)
!3462 = distinct !DILexicalBlock(scope: !3454, file: !433, line: 113, column: 7)
!3463 = !DILocation(line: 0, scope: !3454)
!3464 = !DILocation(line: 0, scope: !3447, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 111, column: 24, scope: !3454)
!3466 = !DILocation(line: 37, column: 24, scope: !3447, inlinedAt: !3465)
!3467 = !DILocation(line: 113, column: 14, scope: !3462)
!3468 = !DILocation(line: 113, column: 7, scope: !3454)
!3469 = !DILocation(line: 116, column: 19, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !433, line: 116, column: 11)
!3471 = distinct !DILexicalBlock(scope: !3462, file: !433, line: 114, column: 5)
!3472 = !DILocation(line: 116, column: 11, scope: !3471)
!3473 = !DILocation(line: 120, column: 16, scope: !3470)
!3474 = !DILocation(line: 120, column: 9, scope: !3470)
!3475 = !DILocation(line: 125, column: 23, scope: !3461)
!3476 = !DILocation(line: 0, scope: !3461)
!3477 = !DILocation(line: 126, column: 18, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3461, file: !433, line: 126, column: 11)
!3479 = !DILocation(line: 126, column: 11, scope: !3461)
!3480 = !DILocation(line: 128, column: 39, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3478, file: !433, line: 127, column: 9)
!3482 = !DILocalVariable(name: "__dest", arg: 1, scope: !3483, file: !1863, line: 26, type: !3486)
!3483 = distinct !DISubprogram(name: "memcpy", scope: !1863, file: !1863, line: 26, type: !3484, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3487)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!52, !3486, !728, !55}
!3486 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!3487 = !{!3482, !3488, !3489}
!3488 = !DILocalVariable(name: "__src", arg: 2, scope: !3483, file: !1863, line: 26, type: !728)
!3489 = !DILocalVariable(name: "__len", arg: 3, scope: !3483, file: !1863, line: 26, type: !55)
!3490 = !DILocation(line: 0, scope: !3483, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 128, column: 11, scope: !3481)
!3492 = !DILocation(line: 29, column: 10, scope: !3483, inlinedAt: !3491)
!3493 = !DILocation(line: 129, column: 11, scope: !3481)
!3494 = !DILocation(line: 133, column: 23, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !433, line: 133, column: 15)
!3496 = distinct !DILexicalBlock(scope: !3478, file: !433, line: 132, column: 9)
!3497 = !DILocation(line: 133, column: 15, scope: !3496)
!3498 = !DILocation(line: 138, column: 44, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3495, file: !433, line: 134, column: 13)
!3500 = !DILocation(line: 0, scope: !3483, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 138, column: 15, scope: !3499)
!3502 = !DILocation(line: 29, column: 10, scope: !3483, inlinedAt: !3501)
!3503 = !DILocation(line: 139, column: 15, scope: !3499)
!3504 = !DILocation(line: 139, column: 32, scope: !3499)
!3505 = !DILocation(line: 140, column: 13, scope: !3499)
!3506 = !DILocation(line: 0, scope: !3462)
!3507 = !DILocation(line: 145, column: 1, scope: !3454)
!3508 = distinct !DISubprogram(name: "dup_safer", scope: !435, file: !435, line: 31, type: !1218, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3509)
!3509 = !{!3510}
!3510 = !DILocalVariable(name: "fd", arg: 1, scope: !3508, file: !435, line: 31, type: !53)
!3511 = !DILocation(line: 0, scope: !3508)
!3512 = !DILocation(line: 33, column: 10, scope: !3508)
!3513 = !DILocation(line: 33, column: 3, scope: !3508)
!3514 = distinct !DISubprogram(name: "version_etc_arn", scope: !437, file: !437, line: 61, type: !3515, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !3552)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{null, !3517, !58, !58, !58, !3551, !55}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !3519)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3519, file: !96, line: 51, baseType: !53, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3519, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3519, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3519, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3519, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3519, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3519, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3519, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3519, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3519, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3519, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3519, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3519, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3519, file: !96, line: 70, baseType: !3535, size: 64, offset: 832)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3519, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3519, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3519, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3519, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3519, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3519, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3519, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3519, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3519, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3519, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3519, file: !96, line: 93, baseType: !3535, size: 64, offset: 1344)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3519, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3519, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3519, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3519, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558}
!3553 = !DILocalVariable(name: "stream", arg: 1, scope: !3514, file: !437, line: 61, type: !3517)
!3554 = !DILocalVariable(name: "command_name", arg: 2, scope: !3514, file: !437, line: 62, type: !58)
!3555 = !DILocalVariable(name: "package", arg: 3, scope: !3514, file: !437, line: 62, type: !58)
!3556 = !DILocalVariable(name: "version", arg: 4, scope: !3514, file: !437, line: 63, type: !58)
!3557 = !DILocalVariable(name: "authors", arg: 5, scope: !3514, file: !437, line: 64, type: !3551)
!3558 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3514, file: !437, line: 64, type: !55)
!3559 = !DILocation(line: 0, scope: !3514)
!3560 = !DILocation(line: 66, column: 7, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3514, file: !437, line: 66, column: 7)
!3562 = !DILocation(line: 66, column: 7, scope: !3514)
!3563 = !DILocation(line: 67, column: 5, scope: !3561)
!3564 = !DILocation(line: 69, column: 5, scope: !3561)
!3565 = !DILocation(line: 83, column: 3, scope: !3514)
!3566 = !DILocation(line: 85, column: 3, scope: !3514)
!3567 = !DILocation(line: 88, column: 3, scope: !3514)
!3568 = !DILocation(line: 95, column: 3, scope: !3514)
!3569 = !DILocation(line: 97, column: 3, scope: !3514)
!3570 = !DILocation(line: 105, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3514, file: !437, line: 98, column: 5)
!3572 = !DILocation(line: 106, column: 7, scope: !3571)
!3573 = !DILocation(line: 109, column: 7, scope: !3571)
!3574 = !DILocation(line: 110, column: 7, scope: !3571)
!3575 = !DILocation(line: 113, column: 7, scope: !3571)
!3576 = !DILocation(line: 115, column: 7, scope: !3571)
!3577 = !DILocation(line: 120, column: 7, scope: !3571)
!3578 = !DILocation(line: 122, column: 7, scope: !3571)
!3579 = !DILocation(line: 127, column: 7, scope: !3571)
!3580 = !DILocation(line: 129, column: 7, scope: !3571)
!3581 = !DILocation(line: 134, column: 7, scope: !3571)
!3582 = !DILocation(line: 137, column: 7, scope: !3571)
!3583 = !DILocation(line: 142, column: 7, scope: !3571)
!3584 = !DILocation(line: 145, column: 7, scope: !3571)
!3585 = !DILocation(line: 150, column: 7, scope: !3571)
!3586 = !DILocation(line: 154, column: 7, scope: !3571)
!3587 = !DILocation(line: 159, column: 7, scope: !3571)
!3588 = !DILocation(line: 163, column: 7, scope: !3571)
!3589 = !DILocation(line: 170, column: 7, scope: !3571)
!3590 = !DILocation(line: 174, column: 7, scope: !3571)
!3591 = !DILocation(line: 176, column: 1, scope: !3514)
!3592 = distinct !DISubprogram(name: "version_etc_ar", scope: !437, file: !437, line: 183, type: !3593, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{null, !3517, !58, !58, !58, !3551}
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601}
!3596 = !DILocalVariable(name: "stream", arg: 1, scope: !3592, file: !437, line: 183, type: !3517)
!3597 = !DILocalVariable(name: "command_name", arg: 2, scope: !3592, file: !437, line: 184, type: !58)
!3598 = !DILocalVariable(name: "package", arg: 3, scope: !3592, file: !437, line: 184, type: !58)
!3599 = !DILocalVariable(name: "version", arg: 4, scope: !3592, file: !437, line: 185, type: !58)
!3600 = !DILocalVariable(name: "authors", arg: 5, scope: !3592, file: !437, line: 185, type: !3551)
!3601 = !DILocalVariable(name: "n_authors", scope: !3592, file: !437, line: 187, type: !55)
!3602 = !DILocation(line: 0, scope: !3592)
!3603 = !DILocation(line: 189, column: 8, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3592, file: !437, line: 189, column: 3)
!3605 = !DILocation(line: 0, scope: !3604)
!3606 = !DILocation(line: 189, column: 23, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !437, line: 189, column: 3)
!3608 = !DILocation(line: 189, column: 3, scope: !3604)
!3609 = !DILocation(line: 189, column: 52, scope: !3607)
!3610 = distinct !{!3610, !3608, !3611, !577}
!3611 = !DILocation(line: 190, column: 5, scope: !3604)
!3612 = !DILocation(line: 191, column: 3, scope: !3592)
!3613 = !DILocation(line: 192, column: 1, scope: !3592)
!3614 = distinct !DISubprogram(name: "version_etc_va", scope: !437, file: !437, line: 199, type: !3615, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !3628)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{null, !3517, !58, !58, !58, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !216, line: 52, baseType: !3618)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !218, line: 32, baseType: !3619)
!3619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3620, baseType: !3621)
!3620 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !222, size: 256, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3626, !3627}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3621, file: !3620, line: 192, baseType: !52, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3621, file: !3620, line: 192, baseType: !52, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3621, file: !3620, line: 192, baseType: !52, size: 64, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3621, file: !3620, line: 192, baseType: !53, size: 32, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3621, file: !3620, line: 192, baseType: !53, size: 32, offset: 224)
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3629 = !DILocalVariable(name: "stream", arg: 1, scope: !3614, file: !437, line: 199, type: !3517)
!3630 = !DILocalVariable(name: "command_name", arg: 2, scope: !3614, file: !437, line: 200, type: !58)
!3631 = !DILocalVariable(name: "package", arg: 3, scope: !3614, file: !437, line: 200, type: !58)
!3632 = !DILocalVariable(name: "version", arg: 4, scope: !3614, file: !437, line: 201, type: !58)
!3633 = !DILocalVariable(name: "authors", arg: 5, scope: !3614, file: !437, line: 201, type: !3617)
!3634 = !DILocalVariable(name: "n_authors", scope: !3614, file: !437, line: 203, type: !55)
!3635 = !DILocalVariable(name: "authtab", scope: !3614, file: !437, line: 204, type: !3636)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !301)
!3637 = !DILocation(line: 0, scope: !3614)
!3638 = !DILocation(line: 201, column: 46, scope: !3614)
!3639 = !DILocation(line: 204, column: 3, scope: !3614)
!3640 = !DILocation(line: 204, column: 15, scope: !3614)
!3641 = !DILocation(line: 208, column: 35, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !437, line: 206, column: 3)
!3643 = distinct !DILexicalBlock(scope: !3614, file: !437, line: 206, column: 3)
!3644 = !DILocation(line: 208, column: 14, scope: !3642)
!3645 = !DILocation(line: 208, column: 33, scope: !3642)
!3646 = !DILocation(line: 208, column: 67, scope: !3642)
!3647 = !DILocation(line: 206, column: 3, scope: !3643)
!3648 = !DILocation(line: 0, scope: !3643)
!3649 = !DILocation(line: 211, column: 3, scope: !3614)
!3650 = !DILocation(line: 213, column: 1, scope: !3614)
!3651 = distinct !DISubprogram(name: "version_etc", scope: !437, file: !437, line: 230, type: !3652, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !3517, !58, !58, !58, null}
!3654 = !{!3655, !3656, !3657, !3658, !3659}
!3655 = !DILocalVariable(name: "stream", arg: 1, scope: !3651, file: !437, line: 230, type: !3517)
!3656 = !DILocalVariable(name: "command_name", arg: 2, scope: !3651, file: !437, line: 231, type: !58)
!3657 = !DILocalVariable(name: "package", arg: 3, scope: !3651, file: !437, line: 231, type: !58)
!3658 = !DILocalVariable(name: "version", arg: 4, scope: !3651, file: !437, line: 232, type: !58)
!3659 = !DILocalVariable(name: "authors", scope: !3651, file: !437, line: 234, type: !3617)
!3660 = !DILocation(line: 0, scope: !3651)
!3661 = !DILocation(line: 234, column: 3, scope: !3651)
!3662 = !DILocation(line: 234, column: 11, scope: !3651)
!3663 = !DILocation(line: 235, column: 3, scope: !3651)
!3664 = !DILocation(line: 236, column: 3, scope: !3651)
!3665 = !DILocation(line: 237, column: 3, scope: !3651)
!3666 = !DILocation(line: 238, column: 1, scope: !3651)
!3667 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !437, file: !437, line: 241, type: !243, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !603)
!3668 = !DILocation(line: 243, column: 3, scope: !3667)
!3669 = !DILocation(line: 248, column: 3, scope: !3667)
!3670 = !DILocation(line: 254, column: 3, scope: !3667)
!3671 = !DILocation(line: 259, column: 3, scope: !3667)
!3672 = !DILocation(line: 261, column: 1, scope: !3667)
!3673 = distinct !DISubprogram(name: "xnrealloc", scope: !3674, file: !3674, line: 147, type: !3675, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3677)
!3674 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!52, !52, !55, !55}
!3677 = !{!3678, !3679, !3680}
!3678 = !DILocalVariable(name: "p", arg: 1, scope: !3673, file: !3674, line: 147, type: !52)
!3679 = !DILocalVariable(name: "n", arg: 2, scope: !3673, file: !3674, line: 147, type: !55)
!3680 = !DILocalVariable(name: "s", arg: 3, scope: !3673, file: !3674, line: 147, type: !55)
!3681 = !DILocation(line: 0, scope: !3673)
!3682 = !DILocalVariable(name: "p", arg: 1, scope: !3683, file: !443, line: 83, type: !52)
!3683 = distinct !DISubprogram(name: "xreallocarray", scope: !443, file: !443, line: 83, type: !3675, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3684)
!3684 = !{!3682, !3685, !3686}
!3685 = !DILocalVariable(name: "n", arg: 2, scope: !3683, file: !443, line: 83, type: !55)
!3686 = !DILocalVariable(name: "s", arg: 3, scope: !3683, file: !443, line: 83, type: !55)
!3687 = !DILocation(line: 0, scope: !3683, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 149, column: 10, scope: !3673)
!3689 = !DILocation(line: 85, column: 25, scope: !3683, inlinedAt: !3688)
!3690 = !DILocalVariable(name: "p", arg: 1, scope: !3691, file: !443, line: 37, type: !52)
!3691 = distinct !DISubprogram(name: "check_nonnull", scope: !443, file: !443, line: 37, type: !3692, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!52, !52}
!3694 = !{!3690}
!3695 = !DILocation(line: 0, scope: !3691, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 85, column: 10, scope: !3683, inlinedAt: !3688)
!3697 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3696)
!3698 = distinct !DILexicalBlock(scope: !3691, file: !443, line: 39, column: 7)
!3699 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3696)
!3700 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3696)
!3701 = !DILocation(line: 149, column: 3, scope: !3673)
!3702 = !DILocation(line: 0, scope: !3683)
!3703 = !DILocation(line: 85, column: 25, scope: !3683)
!3704 = !DILocation(line: 0, scope: !3691, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 85, column: 10, scope: !3683)
!3706 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3705)
!3707 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3705)
!3708 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3705)
!3709 = !DILocation(line: 85, column: 3, scope: !3683)
!3710 = distinct !DISubprogram(name: "xmalloc", scope: !443, file: !443, line: 47, type: !3711, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!52, !55}
!3713 = !{!3714}
!3714 = !DILocalVariable(name: "s", arg: 1, scope: !3710, file: !443, line: 47, type: !55)
!3715 = !DILocation(line: 0, scope: !3710)
!3716 = !DILocation(line: 49, column: 25, scope: !3710)
!3717 = !DILocation(line: 0, scope: !3691, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 49, column: 10, scope: !3710)
!3719 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3718)
!3720 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3718)
!3721 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3718)
!3722 = !DILocation(line: 49, column: 3, scope: !3710)
!3723 = distinct !DISubprogram(name: "ximalloc", scope: !443, file: !443, line: 53, type: !3724, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!52, !462}
!3726 = !{!3727}
!3727 = !DILocalVariable(name: "s", arg: 1, scope: !3723, file: !443, line: 53, type: !462)
!3728 = !DILocation(line: 0, scope: !3723)
!3729 = !DILocalVariable(name: "s", arg: 1, scope: !3730, file: !3731, line: 55, type: !462)
!3730 = distinct !DISubprogram(name: "imalloc", scope: !3731, file: !3731, line: 55, type: !3724, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3732)
!3731 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3732 = !{!3729}
!3733 = !DILocation(line: 0, scope: !3730, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 55, column: 25, scope: !3723)
!3735 = !DILocation(line: 57, column: 26, scope: !3730, inlinedAt: !3734)
!3736 = !DILocation(line: 0, scope: !3691, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 55, column: 10, scope: !3723)
!3738 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3737)
!3739 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3737)
!3740 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3737)
!3741 = !DILocation(line: 55, column: 3, scope: !3723)
!3742 = distinct !DISubprogram(name: "xcharalloc", scope: !443, file: !443, line: 59, type: !3743, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!50, !55}
!3745 = !{!3746}
!3746 = !DILocalVariable(name: "n", arg: 1, scope: !3742, file: !443, line: 59, type: !55)
!3747 = !DILocation(line: 0, scope: !3742)
!3748 = !DILocation(line: 0, scope: !3710, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 61, column: 10, scope: !3742)
!3750 = !DILocation(line: 49, column: 25, scope: !3710, inlinedAt: !3749)
!3751 = !DILocation(line: 0, scope: !3691, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 49, column: 10, scope: !3710, inlinedAt: !3749)
!3753 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3752)
!3754 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3752)
!3755 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3752)
!3756 = !DILocation(line: 61, column: 3, scope: !3742)
!3757 = distinct !DISubprogram(name: "xrealloc", scope: !443, file: !443, line: 68, type: !3758, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!52, !52, !55}
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "p", arg: 1, scope: !3757, file: !443, line: 68, type: !52)
!3762 = !DILocalVariable(name: "s", arg: 2, scope: !3757, file: !443, line: 68, type: !55)
!3763 = !DILocation(line: 0, scope: !3757)
!3764 = !DILocalVariable(name: "ptr", arg: 1, scope: !3765, file: !3766, line: 2057, type: !52)
!3765 = distinct !DISubprogram(name: "rpl_realloc", scope: !3766, file: !3766, line: 2057, type: !3758, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3767)
!3766 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3767 = !{!3764, !3768}
!3768 = !DILocalVariable(name: "size", arg: 2, scope: !3765, file: !3766, line: 2057, type: !55)
!3769 = !DILocation(line: 0, scope: !3765, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 70, column: 25, scope: !3757)
!3771 = !DILocation(line: 2059, column: 24, scope: !3765, inlinedAt: !3770)
!3772 = !DILocation(line: 2059, column: 10, scope: !3765, inlinedAt: !3770)
!3773 = !DILocation(line: 0, scope: !3691, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 70, column: 10, scope: !3757)
!3775 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3774)
!3776 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3774)
!3777 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3774)
!3778 = !DILocation(line: 70, column: 3, scope: !3757)
!3779 = distinct !DISubprogram(name: "xirealloc", scope: !443, file: !443, line: 74, type: !3780, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3782)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!52, !52, !462}
!3782 = !{!3783, !3784}
!3783 = !DILocalVariable(name: "p", arg: 1, scope: !3779, file: !443, line: 74, type: !52)
!3784 = !DILocalVariable(name: "s", arg: 2, scope: !3779, file: !443, line: 74, type: !462)
!3785 = !DILocation(line: 0, scope: !3779)
!3786 = !DILocalVariable(name: "p", arg: 1, scope: !3787, file: !3731, line: 66, type: !52)
!3787 = distinct !DISubprogram(name: "irealloc", scope: !3731, file: !3731, line: 66, type: !3780, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3788)
!3788 = !{!3786, !3789}
!3789 = !DILocalVariable(name: "s", arg: 2, scope: !3787, file: !3731, line: 66, type: !462)
!3790 = !DILocation(line: 0, scope: !3787, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 76, column: 25, scope: !3779)
!3792 = !DILocation(line: 0, scope: !3765, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 68, column: 26, scope: !3787, inlinedAt: !3791)
!3794 = !DILocation(line: 2059, column: 24, scope: !3765, inlinedAt: !3793)
!3795 = !DILocation(line: 2059, column: 10, scope: !3765, inlinedAt: !3793)
!3796 = !DILocation(line: 0, scope: !3691, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 76, column: 10, scope: !3779)
!3798 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3797)
!3799 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3797)
!3800 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3797)
!3801 = !DILocation(line: 76, column: 3, scope: !3779)
!3802 = distinct !DISubprogram(name: "xireallocarray", scope: !443, file: !443, line: 89, type: !3803, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!52, !52, !462, !462}
!3805 = !{!3806, !3807, !3808}
!3806 = !DILocalVariable(name: "p", arg: 1, scope: !3802, file: !443, line: 89, type: !52)
!3807 = !DILocalVariable(name: "n", arg: 2, scope: !3802, file: !443, line: 89, type: !462)
!3808 = !DILocalVariable(name: "s", arg: 3, scope: !3802, file: !443, line: 89, type: !462)
!3809 = !DILocation(line: 0, scope: !3802)
!3810 = !DILocalVariable(name: "p", arg: 1, scope: !3811, file: !3731, line: 98, type: !52)
!3811 = distinct !DISubprogram(name: "ireallocarray", scope: !3731, file: !3731, line: 98, type: !3803, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3812)
!3812 = !{!3810, !3813, !3814}
!3813 = !DILocalVariable(name: "n", arg: 2, scope: !3811, file: !3731, line: 98, type: !462)
!3814 = !DILocalVariable(name: "s", arg: 3, scope: !3811, file: !3731, line: 98, type: !462)
!3815 = !DILocation(line: 0, scope: !3811, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 91, column: 25, scope: !3802)
!3817 = !DILocation(line: 101, column: 13, scope: !3811, inlinedAt: !3816)
!3818 = !DILocation(line: 0, scope: !3691, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 91, column: 10, scope: !3802)
!3820 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3819)
!3821 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3819)
!3822 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3819)
!3823 = !DILocation(line: 91, column: 3, scope: !3802)
!3824 = distinct !DISubprogram(name: "xnmalloc", scope: !443, file: !443, line: 98, type: !3825, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!52, !55, !55}
!3827 = !{!3828, !3829}
!3828 = !DILocalVariable(name: "n", arg: 1, scope: !3824, file: !443, line: 98, type: !55)
!3829 = !DILocalVariable(name: "s", arg: 2, scope: !3824, file: !443, line: 98, type: !55)
!3830 = !DILocation(line: 0, scope: !3824)
!3831 = !DILocation(line: 0, scope: !3683, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 100, column: 10, scope: !3824)
!3833 = !DILocation(line: 85, column: 25, scope: !3683, inlinedAt: !3832)
!3834 = !DILocation(line: 0, scope: !3691, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 85, column: 10, scope: !3683, inlinedAt: !3832)
!3836 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3835)
!3837 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3835)
!3838 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3835)
!3839 = !DILocation(line: 100, column: 3, scope: !3824)
!3840 = distinct !DISubprogram(name: "xinmalloc", scope: !443, file: !443, line: 104, type: !3841, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!52, !462, !462}
!3843 = !{!3844, !3845}
!3844 = !DILocalVariable(name: "n", arg: 1, scope: !3840, file: !443, line: 104, type: !462)
!3845 = !DILocalVariable(name: "s", arg: 2, scope: !3840, file: !443, line: 104, type: !462)
!3846 = !DILocation(line: 0, scope: !3840)
!3847 = !DILocation(line: 0, scope: !3802, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 106, column: 10, scope: !3840)
!3849 = !DILocation(line: 0, scope: !3811, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 91, column: 25, scope: !3802, inlinedAt: !3848)
!3851 = !DILocation(line: 101, column: 13, scope: !3811, inlinedAt: !3850)
!3852 = !DILocation(line: 0, scope: !3691, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 91, column: 10, scope: !3802, inlinedAt: !3848)
!3854 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3853)
!3855 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3853)
!3856 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3853)
!3857 = !DILocation(line: 106, column: 3, scope: !3840)
!3858 = distinct !DISubprogram(name: "x2realloc", scope: !443, file: !443, line: 116, type: !3859, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!52, !52, !449}
!3861 = !{!3862, !3863}
!3862 = !DILocalVariable(name: "p", arg: 1, scope: !3858, file: !443, line: 116, type: !52)
!3863 = !DILocalVariable(name: "ps", arg: 2, scope: !3858, file: !443, line: 116, type: !449)
!3864 = !DILocation(line: 0, scope: !3858)
!3865 = !DILocation(line: 0, scope: !446, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 118, column: 10, scope: !3858)
!3867 = !DILocation(line: 178, column: 14, scope: !446, inlinedAt: !3866)
!3868 = !DILocation(line: 180, column: 9, scope: !3869, inlinedAt: !3866)
!3869 = distinct !DILexicalBlock(scope: !446, file: !443, line: 180, column: 7)
!3870 = !DILocation(line: 180, column: 7, scope: !446, inlinedAt: !3866)
!3871 = !DILocation(line: 182, column: 13, scope: !3872, inlinedAt: !3866)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !443, line: 182, column: 11)
!3873 = distinct !DILexicalBlock(scope: !3869, file: !443, line: 181, column: 5)
!3874 = !DILocation(line: 182, column: 11, scope: !3873, inlinedAt: !3866)
!3875 = !DILocation(line: 197, column: 11, scope: !3876, inlinedAt: !3866)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !443, line: 197, column: 11)
!3877 = distinct !DILexicalBlock(scope: !3869, file: !443, line: 195, column: 5)
!3878 = !DILocation(line: 197, column: 11, scope: !3877, inlinedAt: !3866)
!3879 = !DILocation(line: 198, column: 9, scope: !3876, inlinedAt: !3866)
!3880 = !DILocation(line: 0, scope: !3683, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 201, column: 7, scope: !446, inlinedAt: !3866)
!3882 = !DILocation(line: 85, column: 25, scope: !3683, inlinedAt: !3881)
!3883 = !DILocation(line: 0, scope: !3691, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 85, column: 10, scope: !3683, inlinedAt: !3881)
!3885 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3884)
!3886 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3884)
!3887 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3884)
!3888 = !DILocation(line: 202, column: 7, scope: !446, inlinedAt: !3866)
!3889 = !DILocation(line: 118, column: 3, scope: !3858)
!3890 = !DILocation(line: 0, scope: !446)
!3891 = !DILocation(line: 178, column: 14, scope: !446)
!3892 = !DILocation(line: 180, column: 9, scope: !3869)
!3893 = !DILocation(line: 180, column: 7, scope: !446)
!3894 = !DILocation(line: 182, column: 13, scope: !3872)
!3895 = !DILocation(line: 182, column: 11, scope: !3873)
!3896 = !DILocation(line: 190, column: 30, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3872, file: !443, line: 183, column: 9)
!3898 = !DILocation(line: 191, column: 16, scope: !3897)
!3899 = !DILocation(line: 191, column: 13, scope: !3897)
!3900 = !DILocation(line: 192, column: 9, scope: !3897)
!3901 = !DILocation(line: 197, column: 11, scope: !3876)
!3902 = !DILocation(line: 197, column: 11, scope: !3877)
!3903 = !DILocation(line: 198, column: 9, scope: !3876)
!3904 = !DILocation(line: 0, scope: !3683, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 201, column: 7, scope: !446)
!3906 = !DILocation(line: 85, column: 25, scope: !3683, inlinedAt: !3905)
!3907 = !DILocation(line: 0, scope: !3691, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 85, column: 10, scope: !3683, inlinedAt: !3905)
!3909 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3908)
!3910 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3908)
!3911 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3908)
!3912 = !DILocation(line: 202, column: 7, scope: !446)
!3913 = !DILocation(line: 203, column: 3, scope: !446)
!3914 = !DILocation(line: 0, scope: !458)
!3915 = !DILocation(line: 230, column: 14, scope: !458)
!3916 = !DILocation(line: 238, column: 7, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !458, file: !443, line: 238, column: 7)
!3918 = !DILocation(line: 238, column: 7, scope: !458)
!3919 = !DILocation(line: 240, column: 9, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !458, file: !443, line: 240, column: 7)
!3921 = !DILocation(line: 240, column: 18, scope: !3920)
!3922 = !DILocation(line: 253, column: 8, scope: !458)
!3923 = !DILocation(line: 258, column: 27, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !443, line: 257, column: 5)
!3925 = distinct !DILexicalBlock(scope: !458, file: !443, line: 256, column: 7)
!3926 = !DILocation(line: 259, column: 32, scope: !3924)
!3927 = !DILocation(line: 260, column: 5, scope: !3924)
!3928 = !DILocation(line: 262, column: 9, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !458, file: !443, line: 262, column: 7)
!3930 = !DILocation(line: 262, column: 7, scope: !458)
!3931 = !DILocation(line: 263, column: 9, scope: !3929)
!3932 = !DILocation(line: 263, column: 5, scope: !3929)
!3933 = !DILocation(line: 264, column: 9, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !458, file: !443, line: 264, column: 7)
!3935 = !DILocation(line: 264, column: 14, scope: !3934)
!3936 = !DILocation(line: 265, column: 7, scope: !3934)
!3937 = !DILocation(line: 265, column: 11, scope: !3934)
!3938 = !DILocation(line: 266, column: 11, scope: !3934)
!3939 = !DILocation(line: 266, column: 26, scope: !3934)
!3940 = !DILocation(line: 267, column: 14, scope: !3934)
!3941 = !DILocation(line: 264, column: 7, scope: !458)
!3942 = !DILocation(line: 268, column: 5, scope: !3934)
!3943 = !DILocation(line: 0, scope: !3757, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 269, column: 8, scope: !458)
!3945 = !DILocation(line: 0, scope: !3765, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 70, column: 25, scope: !3757, inlinedAt: !3944)
!3947 = !DILocation(line: 2059, column: 24, scope: !3765, inlinedAt: !3946)
!3948 = !DILocation(line: 2059, column: 10, scope: !3765, inlinedAt: !3946)
!3949 = !DILocation(line: 0, scope: !3691, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 70, column: 10, scope: !3757, inlinedAt: !3944)
!3951 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3950)
!3952 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3950)
!3953 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3950)
!3954 = !DILocation(line: 270, column: 7, scope: !458)
!3955 = !DILocation(line: 271, column: 3, scope: !458)
!3956 = distinct !DISubprogram(name: "xzalloc", scope: !443, file: !443, line: 279, type: !3711, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3957)
!3957 = !{!3958}
!3958 = !DILocalVariable(name: "s", arg: 1, scope: !3956, file: !443, line: 279, type: !55)
!3959 = !DILocation(line: 0, scope: !3956)
!3960 = !DILocalVariable(name: "n", arg: 1, scope: !3961, file: !443, line: 294, type: !55)
!3961 = distinct !DISubprogram(name: "xcalloc", scope: !443, file: !443, line: 294, type: !3825, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3962)
!3962 = !{!3960, !3963}
!3963 = !DILocalVariable(name: "s", arg: 2, scope: !3961, file: !443, line: 294, type: !55)
!3964 = !DILocation(line: 0, scope: !3961, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 281, column: 10, scope: !3956)
!3966 = !DILocation(line: 296, column: 25, scope: !3961, inlinedAt: !3965)
!3967 = !DILocation(line: 0, scope: !3691, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 296, column: 10, scope: !3961, inlinedAt: !3965)
!3969 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3968)
!3970 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3968)
!3971 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3968)
!3972 = !DILocation(line: 281, column: 3, scope: !3956)
!3973 = !DILocation(line: 0, scope: !3961)
!3974 = !DILocation(line: 296, column: 25, scope: !3961)
!3975 = !DILocation(line: 0, scope: !3691, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 296, column: 10, scope: !3961)
!3977 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3976)
!3978 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3976)
!3979 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3976)
!3980 = !DILocation(line: 296, column: 3, scope: !3961)
!3981 = distinct !DISubprogram(name: "xizalloc", scope: !443, file: !443, line: 285, type: !3724, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3982)
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "s", arg: 1, scope: !3981, file: !443, line: 285, type: !462)
!3984 = !DILocation(line: 0, scope: !3981)
!3985 = !DILocalVariable(name: "n", arg: 1, scope: !3986, file: !443, line: 300, type: !462)
!3986 = distinct !DISubprogram(name: "xicalloc", scope: !443, file: !443, line: 300, type: !3841, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3987)
!3987 = !{!3985, !3988}
!3988 = !DILocalVariable(name: "s", arg: 2, scope: !3986, file: !443, line: 300, type: !462)
!3989 = !DILocation(line: 0, scope: !3986, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 287, column: 10, scope: !3981)
!3991 = !DILocalVariable(name: "n", arg: 1, scope: !3992, file: !3731, line: 77, type: !462)
!3992 = distinct !DISubprogram(name: "icalloc", scope: !3731, file: !3731, line: 77, type: !3841, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3993)
!3993 = !{!3991, !3994}
!3994 = !DILocalVariable(name: "s", arg: 2, scope: !3992, file: !3731, line: 77, type: !462)
!3995 = !DILocation(line: 0, scope: !3992, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 302, column: 25, scope: !3986, inlinedAt: !3990)
!3997 = !DILocation(line: 91, column: 10, scope: !3992, inlinedAt: !3996)
!3998 = !DILocation(line: 0, scope: !3691, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 302, column: 10, scope: !3986, inlinedAt: !3990)
!4000 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !3999)
!4001 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !3999)
!4002 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !3999)
!4003 = !DILocation(line: 287, column: 3, scope: !3981)
!4004 = !DILocation(line: 0, scope: !3986)
!4005 = !DILocation(line: 0, scope: !3992, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 302, column: 25, scope: !3986)
!4007 = !DILocation(line: 91, column: 10, scope: !3992, inlinedAt: !4006)
!4008 = !DILocation(line: 0, scope: !3691, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 302, column: 10, scope: !3986)
!4010 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !4009)
!4011 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !4009)
!4012 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !4009)
!4013 = !DILocation(line: 302, column: 3, scope: !3986)
!4014 = distinct !DISubprogram(name: "xmemdup", scope: !443, file: !443, line: 310, type: !4015, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4017)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!52, !729, !55}
!4017 = !{!4018, !4019}
!4018 = !DILocalVariable(name: "p", arg: 1, scope: !4014, file: !443, line: 310, type: !729)
!4019 = !DILocalVariable(name: "s", arg: 2, scope: !4014, file: !443, line: 310, type: !55)
!4020 = !DILocation(line: 0, scope: !4014)
!4021 = !DILocation(line: 0, scope: !3710, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 312, column: 18, scope: !4014)
!4023 = !DILocation(line: 49, column: 25, scope: !3710, inlinedAt: !4022)
!4024 = !DILocation(line: 0, scope: !3691, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 49, column: 10, scope: !3710, inlinedAt: !4022)
!4026 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !4025)
!4027 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !4025)
!4028 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !4025)
!4029 = !DILocalVariable(name: "__dest", arg: 1, scope: !4030, file: !1863, line: 26, type: !3486)
!4030 = distinct !DISubprogram(name: "memcpy", scope: !1863, file: !1863, line: 26, type: !3484, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4031)
!4031 = !{!4029, !4032, !4033}
!4032 = !DILocalVariable(name: "__src", arg: 2, scope: !4030, file: !1863, line: 26, type: !728)
!4033 = !DILocalVariable(name: "__len", arg: 3, scope: !4030, file: !1863, line: 26, type: !55)
!4034 = !DILocation(line: 0, scope: !4030, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 312, column: 10, scope: !4014)
!4036 = !DILocation(line: 29, column: 10, scope: !4030, inlinedAt: !4035)
!4037 = !DILocation(line: 312, column: 3, scope: !4014)
!4038 = distinct !DISubprogram(name: "ximemdup", scope: !443, file: !443, line: 316, type: !4039, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4041)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!52, !729, !462}
!4041 = !{!4042, !4043}
!4042 = !DILocalVariable(name: "p", arg: 1, scope: !4038, file: !443, line: 316, type: !729)
!4043 = !DILocalVariable(name: "s", arg: 2, scope: !4038, file: !443, line: 316, type: !462)
!4044 = !DILocation(line: 0, scope: !4038)
!4045 = !DILocation(line: 0, scope: !3723, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 318, column: 18, scope: !4038)
!4047 = !DILocation(line: 0, scope: !3730, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 55, column: 25, scope: !3723, inlinedAt: !4046)
!4049 = !DILocation(line: 57, column: 26, scope: !3730, inlinedAt: !4048)
!4050 = !DILocation(line: 0, scope: !3691, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 55, column: 10, scope: !3723, inlinedAt: !4046)
!4052 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !4051)
!4053 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !4051)
!4054 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !4051)
!4055 = !DILocation(line: 0, scope: !4030, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 318, column: 10, scope: !4038)
!4057 = !DILocation(line: 29, column: 10, scope: !4030, inlinedAt: !4056)
!4058 = !DILocation(line: 318, column: 3, scope: !4038)
!4059 = distinct !DISubprogram(name: "ximemdup0", scope: !443, file: !443, line: 325, type: !4060, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!50, !729, !462}
!4062 = !{!4063, !4064, !4065}
!4063 = !DILocalVariable(name: "p", arg: 1, scope: !4059, file: !443, line: 325, type: !729)
!4064 = !DILocalVariable(name: "s", arg: 2, scope: !4059, file: !443, line: 325, type: !462)
!4065 = !DILocalVariable(name: "result", scope: !4059, file: !443, line: 327, type: !50)
!4066 = !DILocation(line: 0, scope: !4059)
!4067 = !DILocation(line: 327, column: 30, scope: !4059)
!4068 = !DILocation(line: 0, scope: !3723, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 327, column: 18, scope: !4059)
!4070 = !DILocation(line: 0, scope: !3730, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 55, column: 25, scope: !3723, inlinedAt: !4069)
!4072 = !DILocation(line: 57, column: 26, scope: !3730, inlinedAt: !4071)
!4073 = !DILocation(line: 0, scope: !3691, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 55, column: 10, scope: !3723, inlinedAt: !4069)
!4075 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !4074)
!4076 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !4074)
!4077 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !4074)
!4078 = !DILocation(line: 328, column: 3, scope: !4059)
!4079 = !DILocation(line: 328, column: 13, scope: !4059)
!4080 = !DILocation(line: 0, scope: !4030, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 329, column: 10, scope: !4059)
!4082 = !DILocation(line: 29, column: 10, scope: !4030, inlinedAt: !4081)
!4083 = !DILocation(line: 329, column: 3, scope: !4059)
!4084 = distinct !DISubprogram(name: "xstrdup", scope: !443, file: !443, line: 335, type: !723, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4085)
!4085 = !{!4086}
!4086 = !DILocalVariable(name: "string", arg: 1, scope: !4084, file: !443, line: 335, type: !58)
!4087 = !DILocation(line: 0, scope: !4084)
!4088 = !DILocation(line: 337, column: 27, scope: !4084)
!4089 = !DILocation(line: 337, column: 43, scope: !4084)
!4090 = !DILocation(line: 0, scope: !4014, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 337, column: 10, scope: !4084)
!4092 = !DILocation(line: 0, scope: !3710, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 312, column: 18, scope: !4014, inlinedAt: !4091)
!4094 = !DILocation(line: 49, column: 25, scope: !3710, inlinedAt: !4093)
!4095 = !DILocation(line: 0, scope: !3691, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 49, column: 10, scope: !3710, inlinedAt: !4093)
!4097 = !DILocation(line: 39, column: 8, scope: !3698, inlinedAt: !4096)
!4098 = !DILocation(line: 39, column: 7, scope: !3691, inlinedAt: !4096)
!4099 = !DILocation(line: 40, column: 5, scope: !3698, inlinedAt: !4096)
!4100 = !DILocation(line: 0, scope: !4030, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 312, column: 10, scope: !4014, inlinedAt: !4091)
!4102 = !DILocation(line: 29, column: 10, scope: !4030, inlinedAt: !4101)
!4103 = !DILocation(line: 337, column: 3, scope: !4084)
!4104 = distinct !DISubprogram(name: "xalloc_die", scope: !477, file: !477, line: 32, type: !243, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4105)
!4105 = !{!4106}
!4106 = !DILocalVariable(name: "__errstatus", scope: !4107, file: !477, line: 34, type: !1116)
!4107 = distinct !DILexicalBlock(scope: !4104, file: !477, line: 34, column: 3)
!4108 = !DILocation(line: 34, column: 3, scope: !4107)
!4109 = !DILocation(line: 0, scope: !4107)
!4110 = !DILocation(line: 40, column: 3, scope: !4104)
!4111 = distinct !DISubprogram(name: "xmemcoll", scope: !479, file: !479, line: 54, type: !4112, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!53, !50, !55, !50, !55}
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4120}
!4115 = !DILocalVariable(name: "s1", arg: 1, scope: !4111, file: !479, line: 54, type: !50)
!4116 = !DILocalVariable(name: "s1len", arg: 2, scope: !4111, file: !479, line: 54, type: !55)
!4117 = !DILocalVariable(name: "s2", arg: 3, scope: !4111, file: !479, line: 54, type: !50)
!4118 = !DILocalVariable(name: "s2len", arg: 4, scope: !4111, file: !479, line: 54, type: !55)
!4119 = !DILocalVariable(name: "diff", scope: !4111, file: !479, line: 56, type: !53)
!4120 = !DILocalVariable(name: "collation_errno", scope: !4111, file: !479, line: 57, type: !53)
!4121 = !DILocation(line: 0, scope: !4111)
!4122 = !DILocation(line: 56, column: 14, scope: !4111)
!4123 = !DILocation(line: 57, column: 25, scope: !4111)
!4124 = !DILocation(line: 58, column: 7, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4111, file: !479, line: 58, column: 7)
!4126 = !DILocation(line: 58, column: 7, scope: !4111)
!4127 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4128, file: !479, line: 35, type: !53)
!4128 = distinct !DISubprogram(name: "collate_error", scope: !479, file: !479, line: 35, type: !4129, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4131)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !53, !58, !55, !58, !55}
!4131 = !{!4127, !4132, !4133, !4134, !4135, !4136}
!4132 = !DILocalVariable(name: "s1", arg: 2, scope: !4128, file: !479, line: 36, type: !58)
!4133 = !DILocalVariable(name: "s1len", arg: 3, scope: !4128, file: !479, line: 36, type: !55)
!4134 = !DILocalVariable(name: "s2", arg: 4, scope: !4128, file: !479, line: 37, type: !58)
!4135 = !DILocalVariable(name: "s2len", arg: 5, scope: !4128, file: !479, line: 37, type: !55)
!4136 = !DILocalVariable(name: "__errstatus", scope: !4137, file: !479, line: 41, type: !1116)
!4137 = distinct !DILexicalBlock(scope: !4128, file: !479, line: 41, column: 3)
!4138 = !DILocation(line: 0, scope: !4128, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 59, column: 5, scope: !4125)
!4140 = !DILocation(line: 39, column: 3, scope: !4128, inlinedAt: !4139)
!4141 = !DILocation(line: 40, column: 3, scope: !4128, inlinedAt: !4139)
!4142 = !DILocation(line: 41, column: 3, scope: !4137, inlinedAt: !4139)
!4143 = !DILocation(line: 0, scope: !4137, inlinedAt: !4139)
!4144 = !DILocation(line: 59, column: 5, scope: !4125)
!4145 = !DILocation(line: 60, column: 3, scope: !4111)
!4146 = distinct !DISubprogram(name: "xmemcoll0", scope: !479, file: !479, line: 69, type: !2051, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4147)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153}
!4148 = !DILocalVariable(name: "s1", arg: 1, scope: !4146, file: !479, line: 69, type: !58)
!4149 = !DILocalVariable(name: "s1size", arg: 2, scope: !4146, file: !479, line: 69, type: !55)
!4150 = !DILocalVariable(name: "s2", arg: 3, scope: !4146, file: !479, line: 69, type: !58)
!4151 = !DILocalVariable(name: "s2size", arg: 4, scope: !4146, file: !479, line: 69, type: !55)
!4152 = !DILocalVariable(name: "diff", scope: !4146, file: !479, line: 71, type: !53)
!4153 = !DILocalVariable(name: "collation_errno", scope: !4146, file: !479, line: 72, type: !53)
!4154 = !DILocation(line: 0, scope: !4146)
!4155 = !DILocation(line: 71, column: 14, scope: !4146)
!4156 = !DILocation(line: 72, column: 25, scope: !4146)
!4157 = !DILocation(line: 73, column: 7, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4146, file: !479, line: 73, column: 7)
!4159 = !DILocation(line: 73, column: 7, scope: !4146)
!4160 = !DILocation(line: 74, column: 48, scope: !4158)
!4161 = !DILocation(line: 74, column: 64, scope: !4158)
!4162 = !DILocation(line: 0, scope: !4128, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 74, column: 5, scope: !4158)
!4164 = !DILocation(line: 39, column: 3, scope: !4128, inlinedAt: !4163)
!4165 = !DILocation(line: 40, column: 3, scope: !4128, inlinedAt: !4163)
!4166 = !DILocation(line: 41, column: 3, scope: !4137, inlinedAt: !4163)
!4167 = !DILocation(line: 0, scope: !4137, inlinedAt: !4163)
!4168 = !DILocation(line: 74, column: 5, scope: !4158)
!4169 = !DILocation(line: 75, column: 3, scope: !4146)
!4170 = distinct !DISubprogram(name: "rpl_fopen", scope: !482, file: !482, line: 46, type: !4171, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !4207)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!4173, !58, !58}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !4175)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !4176)
!4176 = !{!4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4175, file: !96, line: 51, baseType: !53, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4175, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4175, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4175, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4175, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4175, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4175, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4175, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4175, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4175, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4175, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4175, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4175, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4175, file: !96, line: 70, baseType: !4191, size: 64, offset: 832)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4175, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4175, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4175, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4175, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4175, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4175, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4175, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4175, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4175, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4175, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4175, file: !96, line: 93, baseType: !4191, size: 64, offset: 1344)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4175, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4175, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4175, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4175, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4217, !4219, !4220, !4225, !4228, !4229}
!4208 = !DILocalVariable(name: "filename", arg: 1, scope: !4170, file: !482, line: 46, type: !58)
!4209 = !DILocalVariable(name: "mode", arg: 2, scope: !4170, file: !482, line: 46, type: !58)
!4210 = !DILocalVariable(name: "open_direction", scope: !4170, file: !482, line: 54, type: !53)
!4211 = !DILocalVariable(name: "open_flags", scope: !4170, file: !482, line: 55, type: !53)
!4212 = !DILocalVariable(name: "open_flags_gnu", scope: !4170, file: !482, line: 57, type: !64)
!4213 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4170, file: !482, line: 59, type: !4214)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 648, elements: !4215)
!4215 = !{!4216}
!4216 = !DISubrange(count: 81)
!4217 = !DILocalVariable(name: "p", scope: !4218, file: !482, line: 62, type: !58)
!4218 = distinct !DILexicalBlock(scope: !4170, file: !482, line: 61, column: 3)
!4219 = !DILocalVariable(name: "q", scope: !4218, file: !482, line: 64, type: !50)
!4220 = !DILocalVariable(name: "len", scope: !4221, file: !482, line: 128, type: !55)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !482, line: 127, column: 9)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !482, line: 68, column: 7)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !482, line: 67, column: 5)
!4224 = distinct !DILexicalBlock(scope: !4218, file: !482, line: 67, column: 5)
!4225 = !DILocalVariable(name: "fd", scope: !4226, file: !482, line: 199, type: !53)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !482, line: 198, column: 5)
!4227 = distinct !DILexicalBlock(scope: !4170, file: !482, line: 197, column: 7)
!4228 = !DILocalVariable(name: "fp", scope: !4226, file: !482, line: 204, type: !4173)
!4229 = !DILocalVariable(name: "saved_errno", scope: !4230, file: !482, line: 207, type: !53)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !482, line: 206, column: 9)
!4231 = distinct !DILexicalBlock(scope: !4226, file: !482, line: 205, column: 11)
!4232 = !DILocation(line: 0, scope: !4170)
!4233 = !DILocation(line: 59, column: 3, scope: !4170)
!4234 = !DILocation(line: 59, column: 8, scope: !4170)
!4235 = !DILocation(line: 0, scope: !4218)
!4236 = !DILocation(line: 67, column: 5, scope: !4218)
!4237 = !DILocation(line: 64, column: 11, scope: !4218)
!4238 = !DILocation(line: 54, column: 7, scope: !4170)
!4239 = !DILocation(line: 67, column: 12, scope: !4223)
!4240 = !DILocation(line: 67, column: 5, scope: !4224)
!4241 = !DILocation(line: 74, column: 19, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !482, line: 74, column: 17)
!4243 = distinct !DILexicalBlock(scope: !4222, file: !482, line: 70, column: 11)
!4244 = !DILocation(line: 74, column: 17, scope: !4243)
!4245 = !DILocation(line: 75, column: 17, scope: !4242)
!4246 = !DILocation(line: 75, column: 20, scope: !4242)
!4247 = !DILocation(line: 75, column: 15, scope: !4242)
!4248 = !DILocation(line: 80, column: 24, scope: !4243)
!4249 = !DILocation(line: 82, column: 19, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4243, file: !482, line: 82, column: 17)
!4251 = !DILocation(line: 82, column: 17, scope: !4243)
!4252 = !DILocation(line: 83, column: 17, scope: !4250)
!4253 = !DILocation(line: 83, column: 20, scope: !4250)
!4254 = !DILocation(line: 83, column: 15, scope: !4250)
!4255 = !DILocation(line: 88, column: 24, scope: !4243)
!4256 = !DILocation(line: 90, column: 19, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4243, file: !482, line: 90, column: 17)
!4258 = !DILocation(line: 90, column: 17, scope: !4243)
!4259 = !DILocation(line: 91, column: 17, scope: !4257)
!4260 = !DILocation(line: 91, column: 20, scope: !4257)
!4261 = !DILocation(line: 91, column: 15, scope: !4257)
!4262 = !DILocation(line: 100, column: 19, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4243, file: !482, line: 100, column: 17)
!4264 = !DILocation(line: 100, column: 17, scope: !4243)
!4265 = !DILocation(line: 101, column: 17, scope: !4263)
!4266 = !DILocation(line: 101, column: 20, scope: !4263)
!4267 = !DILocation(line: 101, column: 15, scope: !4263)
!4268 = !DILocation(line: 107, column: 19, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4243, file: !482, line: 107, column: 17)
!4270 = !DILocation(line: 107, column: 17, scope: !4243)
!4271 = !DILocation(line: 108, column: 17, scope: !4269)
!4272 = !DILocation(line: 108, column: 20, scope: !4269)
!4273 = !DILocation(line: 108, column: 15, scope: !4269)
!4274 = !DILocation(line: 113, column: 24, scope: !4243)
!4275 = !DILocation(line: 115, column: 13, scope: !4243)
!4276 = !DILocation(line: 117, column: 24, scope: !4243)
!4277 = !DILocation(line: 119, column: 13, scope: !4243)
!4278 = !DILocation(line: 128, column: 24, scope: !4221)
!4279 = !DILocation(line: 0, scope: !4221)
!4280 = !DILocation(line: 129, column: 48, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4221, file: !482, line: 129, column: 15)
!4282 = !DILocation(line: 129, column: 19, scope: !4281)
!4283 = !DILocation(line: 129, column: 15, scope: !4221)
!4284 = !DILocalVariable(name: "__dest", arg: 1, scope: !4285, file: !1863, line: 26, type: !3486)
!4285 = distinct !DISubprogram(name: "memcpy", scope: !1863, file: !1863, line: 26, type: !3484, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !4286)
!4286 = !{!4284, !4287, !4288}
!4287 = !DILocalVariable(name: "__src", arg: 2, scope: !4285, file: !1863, line: 26, type: !728)
!4288 = !DILocalVariable(name: "__len", arg: 3, scope: !4285, file: !1863, line: 26, type: !55)
!4289 = !DILocation(line: 0, scope: !4285, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 131, column: 11, scope: !4221)
!4291 = !DILocation(line: 29, column: 10, scope: !4285, inlinedAt: !4290)
!4292 = !DILocation(line: 132, column: 13, scope: !4221)
!4293 = !DILocation(line: 135, column: 9, scope: !4222)
!4294 = !DILocation(line: 67, column: 25, scope: !4223)
!4295 = !DILocation(line: 67, column: 5, scope: !4223)
!4296 = distinct !{!4296, !4240, !4297, !577}
!4297 = !DILocation(line: 136, column: 7, scope: !4224)
!4298 = !DILocation(line: 138, column: 8, scope: !4218)
!4299 = !DILocation(line: 197, column: 7, scope: !4170)
!4300 = !DILocation(line: 199, column: 47, scope: !4226)
!4301 = !DILocation(line: 199, column: 16, scope: !4226)
!4302 = !DILocation(line: 0, scope: !4226)
!4303 = !DILocation(line: 201, column: 14, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4226, file: !482, line: 201, column: 11)
!4305 = !DILocation(line: 201, column: 11, scope: !4226)
!4306 = !DILocation(line: 204, column: 18, scope: !4226)
!4307 = !DILocation(line: 205, column: 14, scope: !4231)
!4308 = !DILocation(line: 205, column: 11, scope: !4226)
!4309 = !DILocation(line: 207, column: 29, scope: !4230)
!4310 = !DILocation(line: 0, scope: !4230)
!4311 = !DILocation(line: 208, column: 11, scope: !4230)
!4312 = !DILocation(line: 209, column: 17, scope: !4230)
!4313 = !DILocation(line: 210, column: 9, scope: !4230)
!4314 = !DILocalVariable(name: "filename", arg: 1, scope: !4315, file: !482, line: 30, type: !58)
!4315 = distinct !DISubprogram(name: "orig_fopen", scope: !482, file: !482, line: 30, type: !4171, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !4316)
!4316 = !{!4314, !4317}
!4317 = !DILocalVariable(name: "mode", arg: 2, scope: !4315, file: !482, line: 30, type: !58)
!4318 = !DILocation(line: 0, scope: !4315, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 219, column: 10, scope: !4170)
!4320 = !DILocation(line: 32, column: 10, scope: !4315, inlinedAt: !4319)
!4321 = !DILocation(line: 219, column: 3, scope: !4170)
!4322 = !DILocation(line: 220, column: 1, scope: !4170)
!4323 = !DISubprogram(name: "open", scope: !1338, file: !1338, line: 181, type: !4324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!53, !58, !53, null}
!4326 = distinct !DISubprogram(name: "close_stream", scope: !484, file: !484, line: 55, type: !4327, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !4363)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!53, !4329}
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !4331)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !4332)
!4332 = !{!4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4331, file: !96, line: 51, baseType: !53, size: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4331, file: !96, line: 54, baseType: !50, size: 64, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4331, file: !96, line: 55, baseType: !50, size: 64, offset: 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4331, file: !96, line: 56, baseType: !50, size: 64, offset: 192)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4331, file: !96, line: 57, baseType: !50, size: 64, offset: 256)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4331, file: !96, line: 58, baseType: !50, size: 64, offset: 320)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4331, file: !96, line: 59, baseType: !50, size: 64, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4331, file: !96, line: 60, baseType: !50, size: 64, offset: 448)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4331, file: !96, line: 61, baseType: !50, size: 64, offset: 512)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4331, file: !96, line: 64, baseType: !50, size: 64, offset: 576)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4331, file: !96, line: 65, baseType: !50, size: 64, offset: 640)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4331, file: !96, line: 66, baseType: !50, size: 64, offset: 704)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4331, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4331, file: !96, line: 70, baseType: !4347, size: 64, offset: 832)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4331, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4331, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4331, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4331, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4331, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4331, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4331, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4331, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4331, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4331, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4331, file: !96, line: 93, baseType: !4347, size: 64, offset: 1344)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4331, file: !96, line: 94, baseType: !52, size: 64, offset: 1408)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4331, file: !96, line: 95, baseType: !55, size: 64, offset: 1472)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4331, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4331, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!4363 = !{!4364, !4365, !4367, !4368}
!4364 = !DILocalVariable(name: "stream", arg: 1, scope: !4326, file: !484, line: 55, type: !4329)
!4365 = !DILocalVariable(name: "some_pending", scope: !4326, file: !484, line: 57, type: !4366)
!4366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!4367 = !DILocalVariable(name: "prev_fail", scope: !4326, file: !484, line: 58, type: !4366)
!4368 = !DILocalVariable(name: "fclose_fail", scope: !4326, file: !484, line: 59, type: !4366)
!4369 = !DILocation(line: 0, scope: !4326)
!4370 = !DILocation(line: 57, column: 30, scope: !4326)
!4371 = !DILocalVariable(name: "__stream", arg: 1, scope: !4372, file: !908, line: 135, type: !4329)
!4372 = distinct !DISubprogram(name: "ferror_unlocked", scope: !908, file: !908, line: 135, type: !4327, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !4373)
!4373 = !{!4371}
!4374 = !DILocation(line: 0, scope: !4372, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 58, column: 27, scope: !4326)
!4376 = !DILocation(line: 137, column: 10, scope: !4372, inlinedAt: !4375)
!4377 = !DILocation(line: 58, column: 43, scope: !4326)
!4378 = !DILocation(line: 59, column: 29, scope: !4326)
!4379 = !DILocation(line: 59, column: 45, scope: !4326)
!4380 = !DILocation(line: 69, column: 17, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4326, file: !484, line: 69, column: 7)
!4382 = !DILocation(line: 57, column: 50, scope: !4326)
!4383 = !DILocation(line: 69, column: 33, scope: !4381)
!4384 = !DILocation(line: 69, column: 53, scope: !4381)
!4385 = !DILocation(line: 69, column: 59, scope: !4381)
!4386 = !DILocation(line: 69, column: 7, scope: !4326)
!4387 = !DILocation(line: 71, column: 11, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4381, file: !484, line: 70, column: 5)
!4389 = !DILocation(line: 72, column: 9, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4388, file: !484, line: 71, column: 11)
!4391 = !DILocation(line: 72, column: 15, scope: !4390)
!4392 = !DILocation(line: 77, column: 1, scope: !4326)
!4393 = distinct !DISubprogram(name: "rpl_fcntl", scope: !375, file: !375, line: 202, type: !1339, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !4394)
!4394 = !{!4395, !4396, !4397, !4408, !4409, !4412, !4414, !4418}
!4395 = !DILocalVariable(name: "fd", arg: 1, scope: !4393, file: !375, line: 202, type: !53)
!4396 = !DILocalVariable(name: "action", arg: 2, scope: !4393, file: !375, line: 202, type: !53)
!4397 = !DILocalVariable(name: "arg", scope: !4393, file: !375, line: 208, type: !4398)
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !218, line: 14, baseType: !4399)
!4399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4400, baseType: !4401)
!4400 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !222, size: 256, elements: !4402)
!4402 = !{!4403, !4404, !4405, !4406, !4407}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4401, file: !4400, line: 208, baseType: !52, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4401, file: !4400, line: 208, baseType: !52, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4401, file: !4400, line: 208, baseType: !52, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4401, file: !4400, line: 208, baseType: !53, size: 32, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4401, file: !4400, line: 208, baseType: !53, size: 32, offset: 224)
!4408 = !DILocalVariable(name: "result", scope: !4393, file: !375, line: 211, type: !53)
!4409 = !DILocalVariable(name: "target", scope: !4410, file: !375, line: 216, type: !53)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !375, line: 215, column: 7)
!4411 = distinct !DILexicalBlock(scope: !4393, file: !375, line: 213, column: 5)
!4412 = !DILocalVariable(name: "target", scope: !4413, file: !375, line: 223, type: !53)
!4413 = distinct !DILexicalBlock(scope: !4411, file: !375, line: 222, column: 7)
!4414 = !DILocalVariable(name: "x", scope: !4415, file: !375, line: 418, type: !53)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !375, line: 417, column: 13)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !375, line: 261, column: 11)
!4417 = distinct !DILexicalBlock(scope: !4411, file: !375, line: 258, column: 7)
!4418 = !DILocalVariable(name: "p", scope: !4419, file: !375, line: 426, type: !52)
!4419 = distinct !DILexicalBlock(scope: !4416, file: !375, line: 425, column: 13)
!4420 = !DILocation(line: 0, scope: !4393)
!4421 = !DILocation(line: 208, column: 3, scope: !4393)
!4422 = !DILocation(line: 208, column: 11, scope: !4393)
!4423 = !DILocation(line: 209, column: 3, scope: !4393)
!4424 = !DILocation(line: 212, column: 3, scope: !4393)
!4425 = !DILocation(line: 216, column: 22, scope: !4410)
!4426 = !DILocation(line: 0, scope: !4410)
!4427 = !DILocalVariable(name: "fd", arg: 1, scope: !4428, file: !375, line: 444, type: !53)
!4428 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !375, file: !375, line: 444, type: !376, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !4429)
!4429 = !{!4427, !4430, !4431}
!4430 = !DILocalVariable(name: "target", arg: 2, scope: !4428, file: !375, line: 444, type: !53)
!4431 = !DILocalVariable(name: "result", scope: !4428, file: !375, line: 446, type: !53)
!4432 = !DILocation(line: 0, scope: !4428, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 217, column: 18, scope: !4410)
!4434 = !DILocation(line: 479, column: 12, scope: !4428, inlinedAt: !4433)
!4435 = !DILocation(line: 223, column: 22, scope: !4413)
!4436 = !DILocation(line: 0, scope: !4413)
!4437 = !DILocation(line: 0, scope: !374, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 224, column: 18, scope: !4413)
!4439 = !DILocation(line: 507, column: 12, scope: !4440, inlinedAt: !4438)
!4440 = distinct !DILexicalBlock(scope: !374, file: !375, line: 507, column: 7)
!4441 = !DILocation(line: 507, column: 9, scope: !4440, inlinedAt: !4438)
!4442 = !DILocation(line: 507, column: 7, scope: !374, inlinedAt: !4438)
!4443 = !DILocation(line: 509, column: 16, scope: !4444, inlinedAt: !4438)
!4444 = distinct !DILexicalBlock(scope: !4440, file: !375, line: 508, column: 5)
!4445 = !DILocation(line: 510, column: 13, scope: !4446, inlinedAt: !4438)
!4446 = distinct !DILexicalBlock(scope: !4444, file: !375, line: 510, column: 11)
!4447 = !DILocation(line: 510, column: 23, scope: !4446, inlinedAt: !4438)
!4448 = !DILocation(line: 510, column: 26, scope: !4446, inlinedAt: !4438)
!4449 = !DILocation(line: 510, column: 32, scope: !4446, inlinedAt: !4438)
!4450 = !DILocation(line: 510, column: 11, scope: !4444, inlinedAt: !4438)
!4451 = !DILocation(line: 512, column: 30, scope: !4452, inlinedAt: !4438)
!4452 = distinct !DILexicalBlock(scope: !4446, file: !375, line: 511, column: 9)
!4453 = !DILocation(line: 528, column: 19, scope: !386, inlinedAt: !4438)
!4454 = !DILocation(line: 0, scope: !4428, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 520, column: 20, scope: !4456, inlinedAt: !4438)
!4456 = distinct !DILexicalBlock(scope: !4446, file: !375, line: 519, column: 9)
!4457 = !DILocation(line: 479, column: 12, scope: !4428, inlinedAt: !4455)
!4458 = !DILocation(line: 521, column: 22, scope: !4459, inlinedAt: !4438)
!4459 = distinct !DILexicalBlock(scope: !4456, file: !375, line: 521, column: 15)
!4460 = !DILocation(line: 521, column: 15, scope: !4456, inlinedAt: !4438)
!4461 = !DILocation(line: 522, column: 32, scope: !4459, inlinedAt: !4438)
!4462 = !DILocation(line: 522, column: 13, scope: !4459, inlinedAt: !4438)
!4463 = !DILocation(line: 0, scope: !4428, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 527, column: 14, scope: !4440, inlinedAt: !4438)
!4465 = !DILocation(line: 479, column: 12, scope: !4428, inlinedAt: !4464)
!4466 = !DILocation(line: 0, scope: !4440, inlinedAt: !4438)
!4467 = !DILocation(line: 528, column: 9, scope: !386, inlinedAt: !4438)
!4468 = !DILocation(line: 530, column: 19, scope: !385, inlinedAt: !4438)
!4469 = !DILocation(line: 0, scope: !385, inlinedAt: !4438)
!4470 = !DILocation(line: 531, column: 17, scope: !389, inlinedAt: !4438)
!4471 = !DILocation(line: 531, column: 21, scope: !389, inlinedAt: !4438)
!4472 = !DILocation(line: 531, column: 54, scope: !389, inlinedAt: !4438)
!4473 = !DILocation(line: 531, column: 24, scope: !389, inlinedAt: !4438)
!4474 = !DILocation(line: 531, column: 68, scope: !389, inlinedAt: !4438)
!4475 = !DILocation(line: 531, column: 11, scope: !385, inlinedAt: !4438)
!4476 = !DILocation(line: 533, column: 29, scope: !388, inlinedAt: !4438)
!4477 = !DILocation(line: 0, scope: !388, inlinedAt: !4438)
!4478 = !DILocation(line: 534, column: 11, scope: !388, inlinedAt: !4438)
!4479 = !DILocation(line: 535, column: 17, scope: !388, inlinedAt: !4438)
!4480 = !DILocation(line: 537, column: 9, scope: !388, inlinedAt: !4438)
!4481 = !DILocation(line: 329, column: 22, scope: !4416)
!4482 = !DILocation(line: 330, column: 13, scope: !4416)
!4483 = !DILocation(line: 418, column: 23, scope: !4415)
!4484 = !DILocation(line: 0, scope: !4415)
!4485 = !DILocation(line: 419, column: 24, scope: !4415)
!4486 = !DILocation(line: 421, column: 13, scope: !4416)
!4487 = !DILocation(line: 426, column: 25, scope: !4419)
!4488 = !DILocation(line: 0, scope: !4419)
!4489 = !DILocation(line: 427, column: 24, scope: !4419)
!4490 = !DILocation(line: 429, column: 13, scope: !4416)
!4491 = !DILocation(line: 0, scope: !4411)
!4492 = !DILocation(line: 438, column: 3, scope: !4393)
!4493 = !DILocation(line: 441, column: 1, scope: !4393)
!4494 = !DILocation(line: 440, column: 3, scope: !4393)
!4495 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !393, file: !393, line: 100, type: !4496, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !4499)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!55, !2135, !58, !55, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!4499 = !{!4500, !4501, !4502, !4503, !4504}
!4500 = !DILocalVariable(name: "pwc", arg: 1, scope: !4495, file: !393, line: 100, type: !2135)
!4501 = !DILocalVariable(name: "s", arg: 2, scope: !4495, file: !393, line: 100, type: !58)
!4502 = !DILocalVariable(name: "n", arg: 3, scope: !4495, file: !393, line: 100, type: !55)
!4503 = !DILocalVariable(name: "ps", arg: 4, scope: !4495, file: !393, line: 100, type: !4498)
!4504 = !DILocalVariable(name: "ret", scope: !4495, file: !393, line: 130, type: !55)
!4505 = !DILocation(line: 0, scope: !4495)
!4506 = !DILocation(line: 105, column: 9, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4495, file: !393, line: 105, column: 7)
!4508 = !DILocation(line: 105, column: 7, scope: !4495)
!4509 = !DILocation(line: 117, column: 10, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4495, file: !393, line: 117, column: 7)
!4511 = !DILocation(line: 117, column: 7, scope: !4495)
!4512 = !DILocation(line: 130, column: 16, scope: !4495)
!4513 = !DILocation(line: 135, column: 11, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4495, file: !393, line: 135, column: 7)
!4515 = !DILocation(line: 135, column: 25, scope: !4514)
!4516 = !DILocation(line: 135, column: 30, scope: !4514)
!4517 = !DILocation(line: 135, column: 7, scope: !4495)
!4518 = !DILocalVariable(name: "ps", arg: 1, scope: !4519, file: !2111, line: 1135, type: !4498)
!4519 = distinct !DISubprogram(name: "mbszero", scope: !2111, file: !2111, line: 1135, type: !4520, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !4522)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{null, !4498}
!4522 = !{!4518}
!4523 = !DILocation(line: 0, scope: !4519, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 137, column: 5, scope: !4514)
!4525 = !DILocalVariable(name: "__dest", arg: 1, scope: !4526, file: !1863, line: 57, type: !52)
!4526 = distinct !DISubprogram(name: "memset", scope: !1863, file: !1863, line: 57, type: !1864, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !4527)
!4527 = !{!4525, !4528, !4529}
!4528 = !DILocalVariable(name: "__ch", arg: 2, scope: !4526, file: !1863, line: 57, type: !53)
!4529 = !DILocalVariable(name: "__len", arg: 3, scope: !4526, file: !1863, line: 57, type: !55)
!4530 = !DILocation(line: 0, scope: !4526, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 1137, column: 3, scope: !4519, inlinedAt: !4524)
!4532 = !DILocation(line: 59, column: 10, scope: !4526, inlinedAt: !4531)
!4533 = !DILocation(line: 137, column: 5, scope: !4514)
!4534 = !DILocation(line: 138, column: 11, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4495, file: !393, line: 138, column: 7)
!4536 = !DILocation(line: 138, column: 7, scope: !4495)
!4537 = !DILocation(line: 139, column: 5, scope: !4535)
!4538 = !DILocation(line: 143, column: 26, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4495, file: !393, line: 143, column: 7)
!4540 = !DILocation(line: 143, column: 41, scope: !4539)
!4541 = !DILocation(line: 143, column: 7, scope: !4495)
!4542 = !DILocation(line: 145, column: 15, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !393, line: 145, column: 11)
!4544 = distinct !DILexicalBlock(scope: !4539, file: !393, line: 144, column: 5)
!4545 = !DILocation(line: 145, column: 11, scope: !4544)
!4546 = !DILocation(line: 146, column: 32, scope: !4543)
!4547 = !DILocation(line: 146, column: 16, scope: !4543)
!4548 = !DILocation(line: 146, column: 14, scope: !4543)
!4549 = !DILocation(line: 146, column: 9, scope: !4543)
!4550 = !DILocation(line: 286, column: 1, scope: !4495)
!4551 = !DISubprogram(name: "mbsinit", scope: !4552, file: !4552, line: 293, type: !4553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!4552 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!53, !4555}
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!4557 = distinct !DISubprogram(name: "memcoll", scope: !486, file: !486, line: 66, type: !4112, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !4558)
!4558 = !{!4559, !4560, !4561, !4562, !4563, !4564, !4567}
!4559 = !DILocalVariable(name: "s1", arg: 1, scope: !4557, file: !486, line: 66, type: !50)
!4560 = !DILocalVariable(name: "s1len", arg: 2, scope: !4557, file: !486, line: 66, type: !55)
!4561 = !DILocalVariable(name: "s2", arg: 3, scope: !4557, file: !486, line: 66, type: !50)
!4562 = !DILocalVariable(name: "s2len", arg: 4, scope: !4557, file: !486, line: 66, type: !55)
!4563 = !DILocalVariable(name: "diff", scope: !4557, file: !486, line: 68, type: !53)
!4564 = !DILocalVariable(name: "n1", scope: !4565, file: !486, line: 81, type: !51)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !486, line: 80, column: 5)
!4566 = distinct !DILexicalBlock(scope: !4557, file: !486, line: 74, column: 7)
!4567 = !DILocalVariable(name: "n2", scope: !4565, file: !486, line: 82, type: !51)
!4568 = !DILocation(line: 0, scope: !4557)
!4569 = !DILocation(line: 74, column: 13, scope: !4566)
!4570 = !DILocation(line: 74, column: 22, scope: !4566)
!4571 = !DILocalVariable(name: "__s1", arg: 1, scope: !4572, file: !561, line: 974, type: !729)
!4572 = distinct !DISubprogram(name: "memeq", scope: !561, file: !561, line: 974, type: !2082, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !4573)
!4573 = !{!4571, !4574, !4575}
!4574 = !DILocalVariable(name: "__s2", arg: 2, scope: !4572, file: !561, line: 974, type: !729)
!4575 = !DILocalVariable(name: "__n", arg: 3, scope: !4572, file: !561, line: 974, type: !55)
!4576 = !DILocation(line: 0, scope: !4572, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 74, column: 25, scope: !4566)
!4578 = !DILocation(line: 976, column: 11, scope: !4572, inlinedAt: !4577)
!4579 = !DILocation(line: 976, column: 10, scope: !4572, inlinedAt: !4577)
!4580 = !DILocation(line: 74, column: 7, scope: !4557)
!4581 = !DILocation(line: 76, column: 7, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4566, file: !486, line: 75, column: 5)
!4583 = !DILocation(line: 76, column: 13, scope: !4582)
!4584 = !DILocation(line: 78, column: 5, scope: !4582)
!4585 = !DILocation(line: 81, column: 17, scope: !4565)
!4586 = !DILocation(line: 0, scope: !4565)
!4587 = !DILocation(line: 82, column: 17, scope: !4565)
!4588 = !DILocation(line: 84, column: 17, scope: !4565)
!4589 = !DILocation(line: 85, column: 17, scope: !4565)
!4590 = !DILocation(line: 87, column: 38, scope: !4565)
!4591 = !DILocation(line: 87, column: 53, scope: !4565)
!4592 = !DILocalVariable(name: "s1", arg: 1, scope: !4593, file: !486, line: 35, type: !58)
!4593 = distinct !DISubprogram(name: "strcoll_loop", scope: !486, file: !486, line: 35, type: !2051, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !4594)
!4594 = !{!4592, !4595, !4596, !4597, !4598, !4599, !4601}
!4595 = !DILocalVariable(name: "s1size", arg: 2, scope: !4593, file: !486, line: 35, type: !55)
!4596 = !DILocalVariable(name: "s2", arg: 3, scope: !4593, file: !486, line: 35, type: !58)
!4597 = !DILocalVariable(name: "s2size", arg: 4, scope: !4593, file: !486, line: 35, type: !55)
!4598 = !DILocalVariable(name: "diff", scope: !4593, file: !486, line: 37, type: !53)
!4599 = !DILocalVariable(name: "size1", scope: !4600, file: !486, line: 44, type: !55)
!4600 = distinct !DILexicalBlock(scope: !4593, file: !486, line: 40, column: 5)
!4601 = !DILocalVariable(name: "size2", scope: !4600, file: !486, line: 45, type: !55)
!4602 = !DILocation(line: 0, scope: !4593, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 87, column: 14, scope: !4565)
!4604 = !DILocation(line: 39, column: 3, scope: !4593, inlinedAt: !4603)
!4605 = !DILocation(line: 39, column: 19, scope: !4593, inlinedAt: !4603)
!4606 = !DILocation(line: 39, column: 32, scope: !4593, inlinedAt: !4603)
!4607 = !DILocation(line: 39, column: 30, scope: !4593, inlinedAt: !4603)
!4608 = !DILocation(line: 44, column: 22, scope: !4600, inlinedAt: !4603)
!4609 = !DILocation(line: 44, column: 34, scope: !4600, inlinedAt: !4603)
!4610 = !DILocation(line: 0, scope: !4600, inlinedAt: !4603)
!4611 = !DILocation(line: 45, column: 22, scope: !4600, inlinedAt: !4603)
!4612 = !DILocation(line: 45, column: 34, scope: !4600, inlinedAt: !4603)
!4613 = !DILocation(line: 48, column: 14, scope: !4600, inlinedAt: !4603)
!4614 = !DILocation(line: 49, column: 14, scope: !4600, inlinedAt: !4603)
!4615 = !DILocation(line: 51, column: 18, scope: !4616, inlinedAt: !4603)
!4616 = distinct !DILexicalBlock(scope: !4600, file: !486, line: 51, column: 11)
!4617 = !DILocation(line: 51, column: 11, scope: !4600, inlinedAt: !4603)
!4618 = !DILocation(line: 52, column: 26, scope: !4616, inlinedAt: !4603)
!4619 = !DILocation(line: 47, column: 10, scope: !4600, inlinedAt: !4603)
!4620 = !DILocation(line: 46, column: 10, scope: !4600, inlinedAt: !4603)
!4621 = !DILocation(line: 53, column: 18, scope: !4622, inlinedAt: !4603)
!4622 = distinct !DILexicalBlock(scope: !4600, file: !486, line: 53, column: 11)
!4623 = distinct !{!4623, !4604, !4624, !577}
!4624 = !DILocation(line: 55, column: 5, scope: !4593, inlinedAt: !4603)
!4625 = !DILocation(line: 89, column: 17, scope: !4565)
!4626 = !DILocation(line: 90, column: 17, scope: !4565)
!4627 = !DILocation(line: 0, scope: !4566)
!4628 = !DILocation(line: 93, column: 3, scope: !4557)
!4629 = !DISubprogram(name: "strcoll", scope: !1334, file: !1334, line: 163, type: !4630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !603)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!53, !58, !58}
!4632 = distinct !DISubprogram(name: "memcoll0", scope: !486, file: !486, line: 102, type: !2051, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !4633)
!4633 = !{!4634, !4635, !4636, !4637}
!4634 = !DILocalVariable(name: "s1", arg: 1, scope: !4632, file: !486, line: 102, type: !58)
!4635 = !DILocalVariable(name: "s1size", arg: 2, scope: !4632, file: !486, line: 102, type: !55)
!4636 = !DILocalVariable(name: "s2", arg: 3, scope: !4632, file: !486, line: 102, type: !58)
!4637 = !DILocalVariable(name: "s2size", arg: 4, scope: !4632, file: !486, line: 102, type: !55)
!4638 = !DILocation(line: 0, scope: !4632)
!4639 = !DILocation(line: 104, column: 14, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4632, file: !486, line: 104, column: 7)
!4641 = !DILocation(line: 104, column: 24, scope: !4640)
!4642 = !DILocation(line: 0, scope: !4572, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 104, column: 27, scope: !4640)
!4644 = !DILocation(line: 976, column: 11, scope: !4572, inlinedAt: !4643)
!4645 = !DILocation(line: 976, column: 10, scope: !4572, inlinedAt: !4643)
!4646 = !DILocation(line: 104, column: 7, scope: !4632)
!4647 = !DILocation(line: 106, column: 7, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4640, file: !486, line: 105, column: 5)
!4649 = !DILocation(line: 106, column: 13, scope: !4648)
!4650 = !DILocation(line: 107, column: 7, scope: !4648)
!4651 = !DILocation(line: 0, scope: !4593, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 110, column: 12, scope: !4640)
!4653 = !DILocation(line: 39, column: 3, scope: !4593, inlinedAt: !4652)
!4654 = !DILocation(line: 39, column: 19, scope: !4593, inlinedAt: !4652)
!4655 = !DILocation(line: 39, column: 32, scope: !4593, inlinedAt: !4652)
!4656 = !DILocation(line: 39, column: 30, scope: !4593, inlinedAt: !4652)
!4657 = !DILocation(line: 44, column: 22, scope: !4600, inlinedAt: !4652)
!4658 = !DILocation(line: 44, column: 34, scope: !4600, inlinedAt: !4652)
!4659 = !DILocation(line: 0, scope: !4600, inlinedAt: !4652)
!4660 = !DILocation(line: 45, column: 22, scope: !4600, inlinedAt: !4652)
!4661 = !DILocation(line: 45, column: 34, scope: !4600, inlinedAt: !4652)
!4662 = !DILocation(line: 48, column: 14, scope: !4600, inlinedAt: !4652)
!4663 = !DILocation(line: 49, column: 14, scope: !4600, inlinedAt: !4652)
!4664 = !DILocation(line: 51, column: 18, scope: !4616, inlinedAt: !4652)
!4665 = !DILocation(line: 51, column: 11, scope: !4600, inlinedAt: !4652)
!4666 = !DILocation(line: 52, column: 26, scope: !4616, inlinedAt: !4652)
!4667 = !DILocation(line: 47, column: 10, scope: !4600, inlinedAt: !4652)
!4668 = !DILocation(line: 46, column: 10, scope: !4600, inlinedAt: !4652)
!4669 = !DILocation(line: 53, column: 18, scope: !4622, inlinedAt: !4652)
!4670 = distinct !{!4670, !4653, !4671, !577}
!4671 = !DILocation(line: 55, column: 5, scope: !4593, inlinedAt: !4652)
!4672 = !DILocation(line: 0, scope: !4640)
!4673 = !DILocation(line: 111, column: 1, scope: !4632)
!4674 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !488, file: !488, line: 27, type: !3675, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4675)
!4675 = !{!4676, !4677, !4678, !4679}
!4676 = !DILocalVariable(name: "ptr", arg: 1, scope: !4674, file: !488, line: 27, type: !52)
!4677 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4674, file: !488, line: 27, type: !55)
!4678 = !DILocalVariable(name: "size", arg: 3, scope: !4674, file: !488, line: 27, type: !55)
!4679 = !DILocalVariable(name: "nbytes", scope: !4674, file: !488, line: 29, type: !55)
!4680 = !DILocation(line: 0, scope: !4674)
!4681 = !DILocation(line: 30, column: 7, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4674, file: !488, line: 30, column: 7)
!4683 = !DILocalVariable(name: "ptr", arg: 1, scope: !4684, file: !3766, line: 2057, type: !52)
!4684 = distinct !DISubprogram(name: "rpl_realloc", scope: !3766, file: !3766, line: 2057, type: !3758, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4685)
!4685 = !{!4683, !4686}
!4686 = !DILocalVariable(name: "size", arg: 2, scope: !4684, file: !3766, line: 2057, type: !55)
!4687 = !DILocation(line: 0, scope: !4684, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 37, column: 10, scope: !4674)
!4689 = !DILocation(line: 2059, column: 24, scope: !4684, inlinedAt: !4688)
!4690 = !DILocation(line: 2059, column: 10, scope: !4684, inlinedAt: !4688)
!4691 = !DILocation(line: 37, column: 3, scope: !4674)
!4692 = !DILocation(line: 32, column: 7, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4682, file: !488, line: 31, column: 5)
!4694 = !DILocation(line: 32, column: 13, scope: !4693)
!4695 = !DILocation(line: 33, column: 7, scope: !4693)
!4696 = !DILocation(line: 38, column: 1, scope: !4674)
